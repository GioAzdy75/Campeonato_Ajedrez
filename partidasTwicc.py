import chess.pgn


jugadoresDicNombres = {"Carlsen,M": "Carlsen, Magnus"}


def normalizarNombres(name, hash):
    return hash.get(name, name)

def extraer_datos_partida(pgn_game, idx):
    headers = pgn_game.headers

    torneo = headers.get("Event", "Torneo desconocido")
    lugar = headers.get("Site", "") 
    fecha = headers.get("Date", "")
    resultado = headers.get("Result", "")
    blanca = headers.get("White", "")
    negra = headers.get("Black", "")
    ronda = headers.get("Round", "")
    apertura = headers.get("Opening", "")
    id_partida = headers.get("Site", f"pgn-{idx}").split("/")[-1] + f"-{idx}"

    p = f"p{idx}"
    j1 = f"j1_{idx}"
    j2 = f"j2_{idx}"
    c = f"c{idx}"

    return f"""
            MERGE ({c}:Campeonato {{
                nombre: "{torneo}",
                ubicacion: "{lugar}"
            }})
            MERGE ({p}:Partida {{
                id: "{id_partida}",
                fecha: "{fecha}",
                resultado: "{resultado}",
                ronda: "{ronda}",
                apertura: "{apertura}",
                nombre: "{blanca} vs {negra}"
            }})
            MERGE ({j1}:Jugador {{nombre: "{normalizarNombres(blanca,jugadoresDicNombres)}"}})
            MERGE ({j2}:Jugador {{nombre: "{normalizarNombres(negra,jugadoresDicNombres)}"}})
            MERGE ({j1})-[:JUGO_PARTIDA_COMO {{color: "blanca"}}]->({p})
            MERGE ({j2})-[:JUGO_PARTIDA_COMO {{color: "negra"}}]->({p})
            MERGE ({j1})-[:USO_APERTURA_EN]->({p})
            MERGE ({c})-[:INCLUYE_PARTIDA]->({p});
            """.strip()

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

    print("Archivo 'twic_partidas.cypher' generado correctamente.")


procesar_pgn_twic("datosPartidas/pgnTorneos/twic1421.pgn", max_partidas=50) 