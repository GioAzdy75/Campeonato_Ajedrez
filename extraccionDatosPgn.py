import chess.pgn
import json

# Ruta a tu archivo PGN
archivo_pgn = "datosPartidas/pgnTorneos/FIDE World Championship 2023.pgn"

# Abrir el archivo PGN
with open(archivo_pgn, encoding='utf-8') as pgn:
    partidas = []
    partida_num = 0

    while True:
        partida = chess.pgn.read_game(pgn)
        
        # Si no hay más partidas, salimos del ciclo
        if partida is None:
            break

        partida_num += 1

        # Datos generales (encabezados PGN)
        headers = partida.headers
        
        partida_info = {
            "partida_numero": partida_num,
            "evento": headers.get("Event", ""),
            "ubicacion": headers.get("Site", ""),
            "fecha": headers.get("Date", ""),
            "ronda": headers.get("Round", ""),
            "resultado": headers.get("Result", ""),
            "jugadores": {
                "blancas": {
                    "nombre": headers.get("White", ""),
                    "elo": headers.get("WhiteElo", ""),
                    "titulo": headers.get("WhiteTitle", ""),
                    "color": "blanca"
                },
                "negras": {
                    "nombre": headers.get("Black", ""),
                    "elo": headers.get("BlackElo", ""),
                    "titulo": headers.get("BlackTitle", ""),
                    "color": "negra"
                }
            },
            "apertura": {
                "nombre": headers.get("Opening", ""),
                "codigo_ECO": headers.get("ECO", "")
            },
            "control_tiempo": headers.get("TimeControl", ""),
            "movimientos": [],
        }

        # Duración (contar movimientos)
        partida_info["cantidad_movimientos"] = partida.end().board().fullmove_number

        # Listar los movimientos completos de la partida
        nodo = partida
        while nodo.variations:
            siguiente_nodo = nodo.variation(0)
            movimiento_san = nodo.board().san(siguiente_nodo.move)
            partida_info["movimientos"].append(movimiento_san)
            nodo = siguiente_nodo

        # Agregar la partida completa a la lista
        partidas.append(partida_info)

# Guardar resultados en un archivo JSON para revisión cómoda
with open("resultado_partidas.json", "w", encoding='utf-8') as archivo_salida:
    json.dump(partidas, archivo_salida, ensure_ascii=False, indent=4)

# Mostrar en consola un resumen del análisis
for partida in partidas:
    print(f"\n📌 Partida #{partida['partida_numero']}")
    print(f"Evento: {partida['evento']}")
    print(f"Lugar: {partida['ubicacion']} - Fecha: {partida['fecha']} - Ronda: {partida['ronda']}")
    print(f"Resultado: {partida['resultado']}")
    print(f"Blancas: {partida['jugadores']['blancas']['nombre']} (ELO: {partida['jugadores']['blancas']['elo']}, Título: {partida['jugadores']['blancas']['titulo']})")
    print(f"Negras: {partida['jugadores']['negras']['nombre']} (ELO: {partida['jugadores']['negras']['elo']}, Título: {partida['jugadores']['negras']['titulo']})")
    print(f"Apertura: {partida['apertura']['nombre']} (ECO: {partida['apertura']['codigo_ECO']})")
    print(f"Control de Tiempo: {partida['control_tiempo']}")
    print(f"Cantidad de Movimientos: {partida['cantidad_movimientos']}")

print("\n🎉 ¡Terminado! Los datos completos se guardaron en 'resultado_partidas.json'")
