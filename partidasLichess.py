import os
import json
import requests
import time

os.makedirs("datosPartidas", exist_ok=True)

def descargar_partidas_vs(jugador, oponente, cantidad=10):
    '''Descarga la partida jugador vs opoenente , return JSON'''
    url = f"https://lichess.org/api/games/user/{jugador}"
    headers = { "Accept": "application/x-ndjson" }
    params = {
        "vs": oponente,
        "max": cantidad,
        "opening": "true",
        "pgnInJson": "true",
        "clocks": "true",
        "rated": "true"
    }

    response = requests.get(url, headers=headers, params=params, stream=True)

    partidas = []
    if response.status_code == 200:
        for line in response.iter_lines():
            if line:
                partidas.append(json.loads(line.decode("utf-8")))
    return partidas


def descargar_partidas_lichess():
    '''Itera sobre una lista de jugadores descargando todas sus partidas de lichess'''
    jugadores_con_username = [
    {"nombre": "Carlsen, Magnus", "username": "DrDrunkenstein"},
    {"nombre": "Nakamura, Hikaru", "username": "TSMFTXH"},
    {"nombre": "Gukesh D", "username": "guki1124"},
    {"nombre": "Erigaisi Arjun", "username": "Inventing_Invention"},
    {"nombre": "Praggnanandhaa R", "username": "Praggnanandhaachess"},
    {"nombre": "Firouzja, Alireza", "username": "alireza2003"}
    ]
    os.makedirs("datosPartidas/partidasLichess/partidasjson", exist_ok=True) # Crea la carpeta

    for i in range(len(jugadores_con_username)):
        for j in range(i + 1, len(jugadores_con_username)):
            jugador1 = jugadores_con_username[i]
            jugador2 = jugadores_con_username[j]
            time.sleep(2)
            print(f"Descargando partidas entre {jugador1['username']} y {jugador2['username']}")
            partidas = descargar_partidas_vs(jugador1["username"], jugador2["username"], cantidad=10)

            if partidas:
                archivo = f"datosPartidas/partidasLichess/partidasjson/{jugador1['username']}_vs_{jugador2['username']}.json"
                with open(archivo, "w", encoding="utf-8") as f:
                    json.dump(partidas, f, ensure_ascii=False, indent=2)
                print(f"{len(partidas)} partidas guardadas en {archivo}")
            else:
                print(f"No se encontraron partidas entre {jugador1['username']} y {jugador2['username']}")

def convertir_partida_a_cypher_con_username(partida, idx):
    '''A las partidas las convirte a codigo cypher formato STRING'''
    id_partida = partida.get("id", "")
    fecha = partida.get("createdAt", "")
    resultado = partida.get("status", "")
    apertura = partida.get("opening", {}).get("name", "")
    eco = partida.get("opening", {}).get("eco", "")
    movimientos = partida.get("moves", "").count(" ") + 1

    blanca_username = partida["players"].get("white", {}).get("user", {}).get("name")
    negra_username = partida["players"].get("black", {}).get("user", {}).get("name")

    if not blanca_username or not negra_username:
        return ""  # saltear partidas sin usernames válidos

    nombre_partida = f"{blanca_username} vs {negra_username}"

    p = f"p{idx}"
    j1 = f"j1_{idx}"
    j2 = f"j2_{idx}"

    cypher = f'''
                MERGE ({p}:Partida {{
                    id: "{id_partida}",
                    fecha: "{fecha}",
                    cantidadMovimientos: "{movimientos}",
                    resultado: "{resultado}",
                    nombre: "{nombre_partida}",
                    ronda: "{eco}",
                    apertura: "{apertura}"
                }})
                MERGE ({j1}:Jugador {{username_lichess: "{blanca_username}"}})
                MERGE ({j2}:Jugador {{username_lichess: "{negra_username}"}})
                MERGE ({j1})-[:JUGO_PARTIDA_COMO {{color: "blanca"}}]->({p})
                MERGE ({j2})-[:JUGO_PARTIDA_COMO {{color: "negra"}}]->({p})
                MERGE ({j1})-[:USO_APERTURA_EN]->({p});
                '''.strip()

    return cypher

def procesar_archivos_json(numero,directorio="datosPartidas/partidasLichess"):
    cypher_lines = []
    idx = 1
    directorio_lectura = directorio + "/partidasjson"
    for archivo in os.listdir(directorio_lectura):
        if archivo.endswith(".json"):
            path = os.path.join(directorio_lectura, archivo)
            with open(path, "r", encoding="utf-8") as f:
                partidas = json.load(f)
                for partida in partidas:
                    cypher = convertir_partida_a_cypher_con_username(partida, idx)
                    cypher_lines.append(cypher)
                    idx += 1

    with open(f"{directorio}/datosLichess{numero}.cypher", "w", encoding="utf-8") as f:
        f.write("\n\n".join(cypher_lines))

    print(f"Archivo generado: datosLichess{numero}.cypher")

if __name__ == "__main__":
    #descargar_partidas_lichess()
    procesar_archivos_json(0)