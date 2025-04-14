import chess.pgn
import os
import webscrapper
import json
import requests

jugadoresDicNombres = {"Carlsen,M": "Carlsen, Magnus"}

setJugadores = set()

def procesar_nombre(nombre):
    if nombre not in setJugadores:
        setJugadores.add(nombre)

def normalizarNombres(name, hash):
    '''Vemos realmente si vamos a implementar esta, creeria que no'''
    return hash.get(name, name) 

def normalizarAperturas(moves):
    # Convertir movimientos a una lista de UCI
    movimientos_uci = [move.uci() for move in moves]
    # Unir los movimientos en una cadena separada por comas
    cadena_uci = ",".join(movimientos_uci)
    # Obtener la apertura en formato Lichess
    url = f"https://explorer.lichess.ovh/masters?play={cadena_uci}"
    # Obtener el nombre de la apertura desde la API de Lichess
    try:
        response = requests.get(url)
        if response.status_code == 200:
            data = response.json()
            # Verificar si hay resultados
            if data['opening']:
                apertura = data['opening']['name']
                return apertura
            else:
                return "Apertura desconocida"
        else:
            return "Error en la API de Lichess"
    except requests.RequestException as e:
        return f"Error de conexión: {e}"


def normalizarResultado(key):
    if "1-0" == key:
        return "blancas"
    elif "0-1" == key:
        return "negras"
    else:
        return "tablas"

def extraer_datos_partida(pgn_game, idx):
    '''Extrae los datos del pgn y lo traduce a codigo cypher'''
    headers = pgn_game.headers
    torneo = headers.get("Event", "Torneo desconocido")
    lugar = headers.get("Site", "") 
    fecha = headers.get("Date", "")
    resultado = headers.get("Result", "")
    blanca = headers.get("White", "")
    negra = headers.get("Black", "")
    ronda = headers.get("Round", "")
    ECO = headers.get("ECO", "")
    id_partida = headers.get("Site", f"pgn-{idx}").split("/")[-1] + f"-{idx}"
    cantidad_movimientos = pgn_game.end().board().fullmove_number
    movimientos = pgn_game.mainline_moves()
    
    procesar_nombre(blanca)
    procesar_nombre(negra)

    p = f"p{idx}"
    j1 = f"j1_{idx}"
    j2 = f"j2_{idx}"
    c = f"c{idx}"
    a = f"a{idx}"
    r = f"r{idx}"
    
    return f"""
            MERGE ({c}:Campeonato {{
                nombre: "{torneo}",
                ubicacion: "{lugar}"
            }})
            MERGE ({p}:Partida {{
                id: "{id_partida}",
                fecha: "{fecha}",
                ronda: "{ronda}",
                nombre: "{blanca} vs {negra}",
                cantidad_movimientos: "{cantidad_movimientos}"
            }})

            MERGE ({a}:Apertura {{
                nombre: "{normalizarAperturas(movimientos)}"
            }})

            MERGE ({r}:Resultado {{
                nombre: "{normalizarResultado(resultado)}"
            }})

            MERGE ({j1}:Jugador {{nombre: "{normalizarNombres(blanca,jugadoresDicNombres)}"}})
            MERGE ({j2}:Jugador {{nombre: "{normalizarNombres(negra,jugadoresDicNombres)}"}})

            MERGE ({j1})-[:JUGO_PARTIDA_COMO {{color: "blanca"}}]->({p})
            MERGE ({j2})-[:JUGO_PARTIDA_COMO {{color: "negra"}}]->({p})
            
            
                        
            MERGE ({p})-[:TIENE_APERTURA]->({a})

            MERGE ({p})-[:RESULTADO_DE_PARTIDA]->({r})  
            MERGE ({c})-[:INCLUYE_PARTIDA]->({p});
            """.strip()


'''
def procesar_pgn_twic(pgn_path, max_partidas=30):
    cypher_lines = []
    with open(pgn_path, encoding="utf-8") as f:
        for idx in range(max_partidas):
            game = chess.pgn.read_game(f)
            if game is None:
                break
            cypher = extraer_datos_partida(game, idx+1)
            cypher_lines.append(cypher)
            
    with open("datosPartidas/twic_partidas.cypher", "w", encoding="utf-8") as f:
        f.write("\n\n".join(cypher_lines))

    print("Archivo 'twic_partidas3.cypher' generado correctamente.")

'''
def procesar_pgn_twic(pgn_path, max_partidas=30 , index = ''):
    '''abre el archivo pgn y ejecuta la traduccion guardando los archivos'''
    cypher_lines = []
    with open(pgn_path, encoding="utf-8") as f:
        for idx in range(max_partidas):
            game = chess.pgn.read_game(f)
            if game is None:
                break
            cypher = extraer_datos_partida(game, idx+1)
            cypher_lines.append(cypher)
            
    with open(f"datosPartidas/cypherCode/data{index}.cypher", "w", encoding="utf-8") as f:
        f.write("\n\n".join(cypher_lines))

    print(f"Archivo '{pgn_path.split('/')[-1]}' procesado correctamente.")


def procesar_archivos_en_carpeta(carpeta_pgn, max_partidas=30):
    '''Traduce todos los archivos .pgn que existen dentro de una carpeta'''
    index = 1
    # Listar todos los archivos en el directorio
    for archivo in os.listdir(carpeta_pgn):
        if archivo.endswith(".pgn"):  # Solo procesar archivos .pgn
            archivo_path = os.path.join(carpeta_pgn, archivo)
            procesar_pgn_twic(archivo_path, max_partidas, index)
            index += 1


def generar_codigo_cypher_jugadores_y_federaciones(jugadores_json):
    cypher_code = ""
    
    # Creamos los nodos de Federación y Jugadores
    federaciones = {}
    
    index = 0
    for jugador in jugadores_json:
        federacion = jugador["Federación"]
        nombre_jugador = jugador["Nombre"]
        elo_clasico = jugador["ELO Clásico"]
        #elo_rapido = jugador["ELO Rápido"]
        #elo_blitz = jugador["ELO Blitz"]
        titulo = jugador["Título"]
        nacimiento = jugador["Nacimiento"]
        
        # Crear el nodo para la federación si no existe
        if federacion not in federaciones:
            federaciones[federacion] = f"f{len(federaciones) + 1}"
            cypher_code += f"""
            MERGE ({federaciones[federacion]}:Federacion {{nombre: "{federacion}"}})
            """
        
        # Crear el nodo del jugador
        cypher_code += f"""
        MERGE (j_{index}:Jugador {{
            nombre: "{nombre_jugador}",
            titulo: "{titulo}",
            eloClasico: "{elo_clasico}",
            nacimiento: "{nacimiento}"
        }})

        // Relación del jugador con la federación
        MERGE (j_{index})-[:PERTENECE_A_UNA]->({federaciones[federacion]})
        """
        index += 1
    return cypher_code.strip()

# Función para leer el archivo JSON
def leer_json(ruta_json):
    with open(ruta_json, 'r', encoding='utf-8') as f:
        return json.load(f)

def procesarjugadores(json_path, index = ''):
    jugadores_json = leer_json(json_path)
    cypher_lines = []
    cypher = generar_codigo_cypher_jugadores_y_federaciones(jugadores_json)
    cypher_lines.append(cypher)
            
    with open(f"datosPartidas/jugadores{index}.cypher", "w", encoding="utf-8") as f:
        f.write("\n\n".join(cypher_lines))

    print(f"Archivo '{json_path.split('/')[-1]}' procesado correctamente.")


def ejecucionScript():
    # Llamar a la función para procesar todos los archivos en la carpeta "datosPartidas/pgnTorneos"
    print("Extraccion datos pgn to Cypher")
    procesar_archivos_en_carpeta("datosPartidas/pgnTorneos", 100)
    print("-Terminado-")
    print("Extraccion datos jugadores de la pagina")
    webscrapper.extraerDatosJugadores(setJugadores)
    print("-Terminado-")
    print("Jugadores to Cypher")
    procesarjugadores("jugadores.json")
    print("-Terminado-")