import chess.pgn
import os


jugadoresDicNombres = {"Carlsen,M": "Carlsen, Magnus"}


def normalizarNombres(name, hash):
    '''Vemos realmente si vamos a implementar esta, creeria que no'''
    return hash.get(name, name) 

def normalizarAperturas(key):
    '''convierte la key  de las aperturas en su nombre exacto, ej C88 = Ruy Lopez '''
    pass

def normalizarResultado(key):
    if "1-0" == key:
        return "blancas"
    elif "0-1" == key:
        return "negras"
    else:
        return "tablas"

def extraer_datos_partida(pgn_game, idx):
    headers = pgn_game.headers
    torneo = headers.get("Event", "Torneo desconocido")
    lugar = headers.get("Site", "") 
    fecha = headers.get("Date", "")
    resultado = headers.get("Result", "")
    blanca = headers.get("White", "")
    negra = headers.get("Black", "")
    ronda = headers.get("Round", "")
    apertura = headers.get("ECO", "")
    id_partida = headers.get("Site", f"pgn-{idx}").split("/")[-1] + f"-{idx}"
    cantidad_movimientos = pgn_game.end().board().fullmove_number
    
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
                nombre: "{apertura}"
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
    cypher_lines = []
    with open(pgn_path, encoding="utf-8") as f:
        for idx in range(max_partidas):
            game = chess.pgn.read_game(f)
            if game is None:
                break
            cypher = extraer_datos_partida(game, idx+1)
            cypher_lines.append(cypher)
            
    with open(f"datosPartidas/twic_partidas{index}.cypher", "w", encoding="utf-8") as f:
        f.write("\n\n".join(cypher_lines))

    print(f"Archivo '{pgn_path.split('/')[-1]}' procesado correctamente.")


#procesar_pgn_twic("datosPartidas/pgnTorneos/twic1421.pgn", 100) 




def procesar_archivos_en_carpeta(carpeta_pgn, max_partidas=30):
    index = 1
    # Listar todos los archivos en el directorio
    for archivo in os.listdir(carpeta_pgn):
        if archivo.endswith(".pgn"):  # Solo procesar archivos .pgn
            archivo_path = os.path.join(carpeta_pgn, archivo)
            procesar_pgn_twic(archivo_path, max_partidas, index)
            index += 1

# Llamar a la función para procesar todos los archivos en la carpeta "datosPartidas/pgnTorneos"
procesar_archivos_en_carpeta("datosPartidas/pgnTorneos", 100)