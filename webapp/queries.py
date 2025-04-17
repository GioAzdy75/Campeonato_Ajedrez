##



def tasa_victoria_vs(conn, jugador: str, vs: str):
    query = """
    MATCH (j1:Jugador {nombre: $jugador})-[:JUGO_PARTIDA_COMO]->(p:Partida)<-[:JUGO_PARTIDA_COMO]-(j2:Jugador {nombre: $vs}),
          (p)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
    WITH j1, j2, count(p) AS total,
         count(CASE 
             WHEN (r.nombre = "blancas" AND EXISTS((j1)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p))) OR 
                  (r.nombre = "negras" AND EXISTS((j1)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p)))
             THEN 1 
         END) AS victorias,
         count(CASE 
             WHEN r.nombre = "tablas" 
             THEN 1 
         END) AS empates,
         count(CASE 
             WHEN (r.nombre = "blancas" AND EXISTS((j1)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p))) OR 
                  (r.nombre = "negras" AND EXISTS((j1)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p)))
             THEN 1 
         END) AS derrotas
    RETURN 
        j1.nombre AS jugador, 
        j2.nombre AS contra, 
        total, 
        victorias, 
        empates, 
        derrotas,
        toFloat(victorias) / total * 100 AS tasa_victoria,
        toFloat(empates) / total * 100 AS tasa_empate,
        toFloat(derrotas) / total * 100 AS tasa_derrota
    """
    return conn.query(query, {"jugador": jugador, "vs": vs})

def rival_mas_frecuente(conn, jugador: str):
    query = """
    MATCH (j1:Jugador {nombre: $jugador})-[:JUGO_PARTIDA_COMO]->(p:Partida)<-[:JUGO_PARTIDA_COMO]-(j2:Jugador)
    WHERE j1 <> j2
    WITH j2.nombre AS rival, count(p) AS veces
    ORDER BY veces DESC
    RETURN rival, veces LIMIT 1
    """
    return conn.query(query, {"jugador": jugador})


##
def estadisticas_aperturas_por_anio(conn, anio: str, apertura: str = None):
    filtro_fecha = f'p.fecha STARTS WITH "{anio}"'
    filtro_apertura = f'AND a.nombre CONTAINS "{apertura}"' if apertura else ""

    query = f"""
    MATCH (p:Partida)-[:TIENE_APERTURA]->(a:Apertura)
    MATCH (p)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
    WHERE {filtro_fecha} {filtro_apertura}
    WITH a.nombre AS apertura, 
         count(p) AS total_partidas,
         count(CASE WHEN r.nombre = "blancas" THEN 1 END) AS victorias_blancas,
         count(CASE WHEN r.nombre = "negras" THEN 1 END) AS victorias_negras,
         count(CASE WHEN r.nombre = "tablas" THEN 1 END) AS tablas
    RETURN 
      apertura,
      total_partidas,
      victorias_blancas,
      victorias_negras,
      tablas,
      toFloat(victorias_blancas + victorias_negras) / total_partidas * 100 AS porcentaje_victoria_total
    ORDER BY total_partidas DESC
    """
    return conn.query(query)

def tasa_color_por_jugador(conn, nombre: str):
    query = """
    MATCH (j:Jugador {nombre: $nombre})-[rel:JUGO_PARTIDA_COMO]->(p:Partida)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
    WITH 
      rel.color AS color,
      COUNT(*) AS total,
      COUNT(CASE 
        WHEN (rel.color = "blanca" AND r.nombre = "blancas") OR 
             (rel.color = "negra" AND r.nombre = "negras") THEN 1
      END) AS victorias,
      COUNT(CASE WHEN r.nombre = "tablas" THEN 1 END) AS empates,
      COUNT(CASE 
        WHEN (rel.color = "blanca" AND r.nombre = "negras") OR 
             (rel.color = "negra" AND r.nombre = "blancas") THEN 1
      END) AS derrotas
    RETURN 
      color,
      total,
      victorias,
      empates,
      derrotas,
      toFloat(victorias) / total * 100 AS tasa_victoria,
      toFloat(empates) / total * 100 AS tasa_empate,
      toFloat(derrotas) / total * 100 AS tasa_derrota
    ORDER BY color
    """
    return conn.query(query, {"nombre": nombre})



##Organizadores
def apertura_mas_popular(conn, campeonato: str):
    query = """
    MATCH (c:Campeonato {nombre: $campeonato})-[:INCLUYE_PARTIDA]->(p:Partida)-[:TIENE_APERTURA]->(a:Apertura)
    RETURN a.nombre AS apertura, count(*) AS veces
    ORDER BY veces DESC
    """
    return conn.query(query, {"campeonato": campeonato})

def federaciones_participantes(conn, campeonato: str):
    query = """
    MATCH (c:Campeonato {nombre: $campeonato})-[:INCLUYE_PARTIDA]->(p:Partida)<-[:JUGO_PARTIDA_COMO]-(j:Jugador)-[:PERTENECE_A_UNA]->(f:Federacion)
    RETURN DISTINCT f.nombre AS federacion
    """
    return conn.query(query, {"campeonato": campeonato})

def mejor_jugador_torneo(conn, campeonato: str):
    query = """
    MATCH (c:Campeonato {nombre: $campeonato})-[:INCLUYE_PARTIDA]->(p:Partida),
          (j:Jugador)-[:JUGO_PARTIDA_COMO]->(p)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
    WHERE
      (r.nombre = "blancas" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p))) OR
      (r.nombre = "negras" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p)))
    RETURN j.nombre AS jugador, count(*) AS victorias
    ORDER BY victorias DESC
    LIMIT 3
    """
    return conn.query(query, {"campeonato": campeonato})

def tasa_empates_torneo(conn, campeonato: str):
    query = """
    MATCH (c:Campeonato {nombre: $campeonato})-[:INCLUYE_PARTIDA]->(p:Partida)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
    WITH count(p) AS total,
         count(CASE WHEN r.nombre = "tablas" THEN 1 END) AS empates
    RETURN total, empates, toFloat(empates)/total * 100 AS tasa_empates
    """
    return conn.query(query, {"campeonato": campeonato})


##
def aperturas_frecuentes_jugador(conn,jugador):
    query = """
    MATCH (j:Jugador {nombre: $jugador})-[:JUGO_PARTIDA_COMO]->(p:Partida)-[:TIENE_APERTURA]->(a:Apertura)
    WITH a.nombre AS apertura, p, j
    MATCH (j)-[rel:JUGO_PARTIDA_COMO]->(p)
    RETURN apertura, rel.color AS color, count(*) AS veces
    ORDER BY veces DESC
    """
    return conn.query(query, {"jugador": jugador})


##
def resumen_base(conn):
    query = """
    CALL {
      MATCH (p:Partida)
      RETURN count(p) AS partidas
    }
    CALL {
      MATCH (j:Jugador)
      RETURN count(j) AS jugadores
    }
    CALL {
      MATCH (c:Campeonato)
      RETURN count(c) AS campeonatos
    }
    RETURN partidas, jugadores, campeonatos
    """
    return conn.query(query)

##

def evolucion_jugador(conn,jugador:str,limite:int = 30):
    query = f"""
    MATCH (j:Jugador {{nombre: $jugador}})-[r:JUGO_PARTIDA_COMO]->(p:Partida)
    MATCH (p)-[:RESULTADO_DE_PARTIDA]->(res:Resultado)
    WITH p.fecha AS fecha, r.color AS color, res.nombre AS resultado
    ORDER BY fecha DESC
    LIMIT {limite}
    RETURN {{
      fecha: fecha,
      resultado: 
        CASE 
          WHEN resultado = "blancas" AND color = "blanca" THEN "victoria"
          WHEN resultado = "negras" AND color = "negra" THEN "victoria"
          WHEN resultado = "tablas" THEN "empate"
          ELSE "derrota"
        END
    }} AS evento
    """
    return conn.query(query, {"jugador": jugador})



#Basicas
def federacion_de_jugador(conn,jugador):
    query = """
    MATCH (j:Jugador {nombre: $jugador})-[:PERTENECE_A_UNA]->(f:Federacion)
    RETURN f.nombre AS federacion
    """
    return conn.query(query, {"jugador": jugador})