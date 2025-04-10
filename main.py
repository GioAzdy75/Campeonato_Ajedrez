import requests
import json
from datetime import datetime
from neo4j import GraphDatabase
import time


#Conexión a Neo4j
uri = "bolt://localhost:7687"
user = "neo4j"
password = "chess12345"  #Cambialo si configuraste otro

driver = GraphDatabase.driver(uri, auth=(user, password))

#Función para insertar todo
def cargar_info(tx, partida, jugador_info):
    time.sleep(1)  # Retraso de 1 segundo
    white = partida["players"]["white"]["user"]["name"] if "user" in partida["players"]["white"] else "Anon"
    black = partida["players"]["black"]["user"]["name"] if "user" in partida["players"]["black"] else "Anon"

    #print(partida)
    print("")

    if "winner" in partida:
        result = f"Ganador: {partida["winner"]}"
    else:
        result = "Tablas/Empate"

    opening_name = partida.get("opening", {}).get("name", "Desconocida")
    eco = partida.get("opening", {}).get("eco", "N/A")

    moves = partida.get("moves", "N/A")
    cant_moves = len(partida["moves"].split())

    fecha_en_milisegundos = partida.get("createdAt", None)
    fecha = datetime.fromtimestamp(fecha_en_milisegundos / 1000)  # Convertir de ms a segundos
    fecha_str = fecha.strftime("%d/%m/%Y") 

    
    id_jugador = jugador_info.get("id", "Desconocido")

    jugador = jugador_info.get("username")
    
    if jugador == white:
        color = "blanco"
    else:
        color = "negro"


    if "realName" in jugador_info["profile"]:
        nombre = jugador_info["profile"]["realName"]
    else:
        nombre = jugador

    pais = jugador_info.get("profile", {}).get("flag", "Desconocido")
    federacion = f"Federación de {pais}" if pais != "Desconocido" else "Desconocida"

    #Historial en diferentes velocidades de partidas
    ultraBullet = jugador_info["perfs"]["ultraBullet"]
    bullet = jugador_info["perfs"]["bullet"]
    blitz = jugador_info["perfs"]["blitz"]
    rapid = jugador_info["perfs"]["rapid"]
    classical = jugador_info["perfs"]["classical"]

    #Crear partidas y jugadores
    tx.run("""
    MERGE (j:Jugador {nombre: $nombre})
    SET j.id = $id_jugador, j.titulo = $titulo, j.url = $url, j.username = $jugador
    
    MERGE (h:Historial {id: $id_jugador})
    SET h.nombre = $historial_name, h.totalDePartidas = $total, h.victorias = $victorias, h.derrotas = $derrotas, h.tablas = $tablas, h.Elo = $puntos

    MERGE (p:Pais {codigoISO: $codigoPais})
    SET p.nombre = $pais
    
    MERGE (f:Federacion {nombre: $federacion})
    
    MERGE (partida:Partida {id: $game_id})
    SET  partida.nombre = $game_name ,partida.velocidad = $game_speed, partida.resultado = $result, partida.cantidadMovimientos = $cant_moves, partida.fecha = $fecha,
    partida.jugadorBlanco = $white, partida.jugadorNegro = $black, partida.movimientos = $moves
    

    MERGE (j)-[:HISTORIAL_DE_JUGADOR]->(h)
    MERGE (j)-[:NACIO_EN]->(p)
    MERGE (j)-[:PERTENECE_A_FEDERACION]->(f)
    MERGE (f)-[:TIENE_SEDE_EN]->(p)

    MERGE (j)-[r:JUGO_PARTIDA_COMO {color: $color}]->(partida)
    MERGE (j)-[a:APERTURA_USADA {nombreApertura : $opening_name}]->(partida)
    
    MERGE (j)-[:JUGO]->(ub:UltraBullet {id: $id_jugador})
    SET ub.nombre = $nombre_ub, ub.Elo = $puntos_ub, ub.totalDePartidas = $total_ub
    
    MERGE (j)-[:JUGO]->(bu:Bullet {id: $id_jugador})
    SET bu.nombre = $nombre_bu, bu.Elo = $puntos_bu, bu.totalDePartidas = $total_bu
    
    MERGE (j)-[:JUGO]->(bl:Blitz {id: $id_jugador})
    SET bl.nombre = $nombre_bl, bl.Elo = $puntos_bl, bl.totalDePartidas = $total_bl
    
    MERGE (j)-[:JUGO]->(ra:Rapid {id: $id_jugador})
    SET ra.nombre = $nombre_ra, ra.Elo = $puntos_ra, ra.totalDePartidas = $total_ra
    
    MERGE (j)-[:JUGO]->(cl:Classical {id: $id_jugador})
    SET cl.nombre = $nombre_cl, cl.Elo = $puntos_cl, cl.totalDePartidas = $total_cl
    """, 
    nombre=nombre, id_jugador=id_jugador ,jugador=jugador, titulo=jugador_info.get("title", "No tiene"), url=jugador_info.get("url"), codigoPais=pais,
    federacion=federacion, eco=eco, opening_name=opening_name,
    game_id=partida["id"], result=result, moves=moves ,cant_moves=cant_moves, fecha=fecha_str, white=white, black=black, game_name=f"{white} vs {black}", pais=pais, 
    game_speed=partida["speed"], color=color, historial_name="Historial General", total=jugador_info["count"]["all"],victorias=jugador_info["count"]["win"], derrotas=jugador_info["count"]["loss"], 
    tablas=jugador_info["count"]["draw"], puntos=jugador_info["count"]["rated"], 
    nombre_ub="UltraBullet", puntos_ub=ultraBullet["rating"], total_ub=ultraBullet["games"],
    nombre_bu="Bullet", puntos_bu=bullet["rating"], total_bu=bullet["games"],
    nombre_bl="Blitz", puntos_bl=blitz["rating"], total_bl=blitz["games"],
    nombre_ra="Rapid", puntos_ra=rapid["rating"], total_ra=rapid["games"],
    nombre_cl="Classical", puntos_cl=classical["rating"], total_cl=classical["games"])        


# Inicio del programa
if __name__ == "__main__":
    username = input("Ingrese el nombre de usuario de Lichess: ").strip()

    #Datos del jugador
    user_response = requests.get(f"https://lichess.org/api/user/{username}")
    if user_response.status_code != 200:
        print("Usuario no encontrado.")
        exit()

    jugador_info = user_response.json()
    #print(jugador_info)

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
    driver.close()
