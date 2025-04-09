import requests
import json
from neo4j import GraphDatabase

#Conexión a Neo4j
uri = "bolt://localhost:7687"
user = "neo4j"
password = "chess12345"  #Cambialo si configuraste otro

driver = GraphDatabase.driver(uri, auth=(user, password))

#Función para insertar todo
def cargar_info(tx, partida, jugador_info):
    white = partida["players"]["white"]["user"]["name"] if "user" in partida["players"]["white"] else "Anon"
    black = partida["players"]["black"]["user"]["name"] if "user" in partida["players"]["black"] else "Anon"
    #print(partida)
    game_id = partida["id"]
    result = partida["winner"]
    opening_name = partida.get("opening", {}).get("name", "Desconocida")
    eco = partida.get("opening", {}).get("eco", "N/A")
    moves = len(partida["moves"].split())
    date = partida.get("createdAt", None)
    print(jugador_info)

    jugador = jugador_info.get("username", white)
    jugador = jugador_info.get("username", black)
    titulo = jugador_info.get("title", "")
    url = jugador_info.get("url", "")
    nombre = jugador_info["profile"]["realName"]
    pais = jugador_info.get("profile", {}).get("flag", "Desconocido")
    federacion = f"Federación de {pais}" if pais != "Desconocido" else "Desconocida"

    ultraBullet = jugador_info["perfs"]["ultraBullet"]
    bullet = jugador_info["perfs"]["bullet"]
    blitz = jugador_info["perfs"]["blitz"]
    rapid = jugador_info["perfs"]["rapid"]
    classical = jugador_info["perfs"]["classical"]
    print(ultraBullet)

    tx.run("""
    MERGE (j:Jugador {nombre: $nombre})
    SET j.titulo = $titulo, j.url = $url, j.username = $jugador

    MERGE (p:Pais {codigoISO: $codigoPais})
    MERGE (f:Federacion {nombre: $federacion})
    MERGE (a:Apertura {eco: $eco})
    SET a.nombre = $opening_name
    MERGE (partida:Partida {id: $game_id})
    SET partida.resultado = $result, partida.cantidadMovimientos = $moves, partida.fecha = $date

    MERGE (j)-[:NACIO_EN]->(p)
    MERGE (j)-[:PERTENECE_A_FEDERACION]->(f)
    MERGE (f)-[:TIENE_SEDE_EN]->(p)

    MERGE (j)-[:JUGO_PARTIDA_COMO {color: "blanco"}]->(partida)
    MERGE (partida)-[:APERTURA_USADA]->(a)
    """, nombre=nombre, jugador=jugador, titulo=titulo, url=url, codigoPais=pais,
        federacion=federacion, eco=eco, opening_name=opening_name,
        game_id=game_id, result=result, moves=moves, date=date)

# Inicio del programa
if __name__ == "__main__":
    username = input("🔍 Ingresá el nombre de usuario de Lichess: ").strip()

    #Datos del jugador
    user_response = requests.get(f"https://lichess.org/api/user/{username}")
    if user_response.status_code != 200:
        print("Usuario no encontrado.")
        exit()

    jugador_info = user_response.json()

    #Partidas recientes
    headers = {"Accept": "application/x-ndjson"}
    partidas_url = f"https://lichess.org/api/games/user/{username}?max=5&opening=true"
    partidas_response = requests.get(partidas_url, headers=headers)

    if partidas_response.status_code != 200:
        print("Error al obtener partidas.")
        exit()

    partidas = [json.loads(line) for line in partidas_response.text.strip().split("\n")]

    with driver.session() as session:
        for partida in partidas:
            session.execute_write(cargar_info, partida, jugador_info)

    print("Partidas importadas correctamente a Neo4j.")
