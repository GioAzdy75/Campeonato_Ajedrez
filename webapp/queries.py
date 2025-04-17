def rival_mas_frecuente(conn):
    query = """
    MATCH (j1:Jugador)-[:JUGO_PARTIDA_COMO]->(p:Partida)<-[:JUGO_PARTIDA_COMO]-(j2:Jugador)
    WHERE j1 <> j2
    WITH j1, j2, count(p) AS veces
    ORDER BY j1.nombre, veces DESC
    WITH j1.nombre AS jugador, collect({rival: j2.nombre, veces: veces}) AS rivales
    RETURN jugador, rivales[0].rival AS rival, rivales[0].veces AS veces
    ORDER BY jugador
    """
    return conn.query(query)

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

def tasa_victoria_frente_jugador(conn, anio: str, apertura: str = None):
    query = """
    
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
