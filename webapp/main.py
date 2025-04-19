from fastapi import FastAPI,HTTPException
from neo4j_connection import conn
from queries import evolucion_jugador, federacion_de_jugador, rival_mas_frecuente,estadisticas_aperturas_por_anio,tasa_color_por_jugador,apertura_mas_popular,federaciones_participantes,mejor_jugador_torneo,tasa_empates_torneo,tasa_victoria_vs,aperturas_frecuentes_jugador,resumen_base

from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()



app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # o ["http://localhost:5500"]
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


#Resumen
@app.get("/resumen-base")
def api_resumen_base():
    resultado = resumen_base(conn)
    if resultado:
        return resultado[0]
    raise HTTPException(status_code=500, detail="No se pudo obtener el resumen de la base")

#Basicas
@app.get("/jugador/federacion")
def api_federacion_de_jugador(jugador: str):
    result = federacion_de_jugador(conn,jugador)
    return result[0] if result else {"federacion": None}

@app.get("/jugador/campeonatos")
def campeonatos_de_jugador(jugador: str):
    query = """
    MATCH (j:Jugador {nombre: $jugador})-[:JUGO_PARTIDA_COMO]->(p:Partida)<-[:INCLUYE_PARTIDA]-(c:Campeonato)
    RETURN DISTINCT c.nombre AS campeonato
    ORDER BY campeonato
    """
    return conn.query(query, {"jugador": jugador})

@app.get("/campeonato/partidas")
def partidas_del_campeonato(campeonato: str):
    query = """
    MATCH (c:Campeonato {nombre: $campeonato})-[:INCLUYE_PARTIDA]->(p:Partida)
    RETURN p.nombre AS partida, p.fecha AS fecha, p.ronda AS ronda
    ORDER BY p.fecha
    """
    return conn.query(query, {"campeonato": campeonato})

@app.get("/federacion/jugadores")
def jugadores_de_federacion(federacion: str):
    query = """
    MATCH (j:Jugador)-[:PERTENECE_A_UNA]->(f:Federacion {nombre: $federacion})
    RETURN j.nombre AS jugador, j.titulo AS titulo, j.eloClasico AS eloClasico
    ORDER BY j.nombre
    """
    return conn.query(query, {"federacion": federacion})


#
@app.get("/jugador/aperturas-estadisticas")
def aperturas_estadisticas(jugador: str):
    query = """
    MATCH (j:Jugador {nombre: $jugador})-[r:JUGO_PARTIDA_COMO]->(p:Partida)-[:TIENE_APERTURA]->(a:Apertura)
    MATCH (p)-[:RESULTADO_DE_PARTIDA]->(res:Resultado)
    WITH a.nombre AS apertura, r.color AS color, res.nombre AS resultado
    WITH apertura, color,
         count(*) AS veces,
         count(CASE WHEN (resultado = "blancas" AND color = "blanca") OR (resultado = "negras" AND color = "negra") THEN 1 END) AS victorias,
         count(CASE WHEN resultado = "tablas" THEN 1 END) AS empates,
         count(CASE WHEN (resultado = "blancas" AND color = "negra") OR (resultado = "negras" AND color = "blanca") THEN 1 END) AS derrotas
    RETURN apertura, color, veces, victorias, empates, derrotas,
           toFloat(victorias) / veces * 100 AS porcentaje_victoria,
           toFloat(empates) / veces * 100 AS porcentaje_empate,
           toFloat(derrotas) / veces * 100 AS porcentaje_derrota
    ORDER BY veces DESC LIMIT 5
    """
    return conn.query(query, {"jugador": jugador})


#
@app.get("/jugadores/partidas-entre")
def partidas_entre_jugadores(jugador1: str, jugador2: str):
    query = """
    MATCH (j1:Jugador {nombre: $jugador1})-[:JUGO_PARTIDA_COMO]->(p:Partida)<-[:JUGO_PARTIDA_COMO]-(j2:Jugador {nombre: $jugador2})
    MATCH (p)-[:TIENE_APERTURA]->(a:Apertura)
    MATCH (p)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
    OPTIONAL MATCH (blanco:Jugador)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p)
    OPTIONAL MATCH (negro:Jugador)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p)
    OPTIONAL MATCH (c:Campeonato)-[:INCLUYE_PARTIDA]->(p)
    RETURN
      a.nombre AS apertura,
      p.nombre AS partida,
      p.fecha AS fecha,
      p.ronda AS ronda,
      r.nombre AS resultado,
      blanco.nombre AS blancas,
      negro.nombre AS negras,
      c.nombre AS campeonato
    ORDER BY a.nombre, p.fecha
    """
    return conn.query(query, {"jugador1": jugador1, "jugador2": jugador2})

#
@app.get("/jugador/evolucion")
def api_evolucion_jugador(jugador: str,limite: int):
    
    resultados = evolucion_jugador(conn,jugador,limite)
    return [r["evento"] for r in resultados]


#
@app.get("/rival-mas-frecuente")
def get_rivales():
    return rival_mas_frecuente(conn)


@app.get("/aperturas")
def get_aperturas(anio: str = "2023", apertura: str = None):
    return estadisticas_aperturas_por_anio(conn, anio, apertura)



@app.get("/jugador/tasa-color")
def api_tasa_color(nombre: str):
    return tasa_color_por_jugador(conn, nombre)

#organizadores
@app.get("/torneo/apertura-popular")
def api_apertura_popular(campeonato: str):
    resultados = apertura_mas_popular(conn, campeonato)
    if not resultados:
        raise HTTPException(status_code=404, detail="Campeonato no encontrado o sin partidas registradas")
    return resultados

@app.get("/torneo/federaciones")
def api_federaciones_participantes(campeonato: str):
    resultados = federaciones_participantes(conn, campeonato)
    if not resultados:
        raise HTTPException(status_code=404, detail="Campeonato no encontrado o sin federaciones registradas")
    return {
        "cantidad": len(resultados),
        "federaciones": resultados
    }

@app.get("/torneo/mejor-jugador")
def api_mejor_jugador(campeonato: str):
    resultados = mejor_jugador_torneo(conn, campeonato)
    if not resultados:
        raise HTTPException(status_code=404, detail="Campeonato no encontrado o sin victorias registradas")
    return resultados

@app.get("/torneo/tasa-empates")
def api_tasa_empates(campeonato: str):
    resultados = tasa_empates_torneo(conn, campeonato)
    if not resultados:
        raise HTTPException(status_code=404, detail="Campeonato no encontrado o sin partidas registradas")
    for row in resultados:
        row["tasa_empates"] = round(row["tasa_empates"], 2)
    return resultados

##
@app.get("/jugador/tasa-vs")
def api_tasa_vs(jugador: str, vs: str):
    resultados = tasa_victoria_vs(conn, jugador, vs)
    if not resultados:
        raise HTTPException(status_code=404, detail="No se encontraron partidas entre los jugadores o con esa federación")
    return resultados

@app.get("/jugador/rival-frecuente")
def api_rival_frecuente(jugador: str):
    resultados = rival_mas_frecuente(conn, jugador)
    if not resultados:
        raise HTTPException(status_code=404, detail="No se encontraron rivales frecuentes para el jugador")
    return resultados



#Analisis de jugador
@app.get("/jugador/aperturas-frecuentes")
def aperturas_frecuentes(jugador: str):
    resultados = aperturas_frecuentes_jugador(conn,jugador)
    if not resultados:
        raise HTTPException(status_code=404, detail="No se encontraron aperturas para el jugador")
    return resultados

