from fastapi import FastAPI
from neo4j_connection import conn
from queries import rival_mas_frecuente,estadisticas_aperturas_por_anio,tasa_color_por_jugador

from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()



app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # o ["http://localhost:5500"]
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.get("/rival-mas-frecuente")
def get_rivales():
    return rival_mas_frecuente(conn)


@app.get("/aperturas")
def get_aperturas(anio: str = "2023", apertura: str = None):
    return estadisticas_aperturas_por_anio(conn, anio, apertura)

@app.get("/jugador/tasa-color")
def api_tasa_color(nombre: str):
    return tasa_color_por_jugador(conn, nombre)
