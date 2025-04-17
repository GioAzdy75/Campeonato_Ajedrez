import csv
import chess.pgn
import os

# Función para cargar las aperturas desde archivos TSV
def cargar_aperturas_tsv(file_paths):
    aperturas_dict = {}
    
    # Iterar sobre cada archivo en la lista de rutas
    for file_path in file_paths:
        if os.path.exists(file_path):
            with open(file_path, newline='', encoding='utf-8') as file:
                reader = csv.reader(file, delimiter='\t')
                
                # Iterar sobre cada fila y agregarla al diccionario
                for row in reader:
                    eco = row[0].strip()  # Código ECO (clave)
                    apertura = row[1].strip()  # Nombre de la apertura (valor)
                    movimientos = row[2].strip()  # Movimientos (ej: 1. d4 g6 2. c4 Bg7 3. Nc3 d6)
                    # Almacenamos el nombre de la apertura por su secuencia de movimientos
                    aperturas_dict[movimientos] = (eco, apertura)
        else:
            print(f"El archivo {file_path} no se encontró.")
    
    return aperturas_dict

def cargar_aperturas():
    # Lista de archivos TSV que contienen las aperturas
    tsv = ['a.tsv', 'b.tsv', 'c.tsv', 'd.tsv', 'e.tsv']
    archivos_tsv = list(map(lambda x: "aperturas/" + x, tsv))
    # Cargar las aperturas de los archivos TSV
    aperturas_eco = cargar_aperturas_tsv(archivos_tsv)
    return aperturas_eco


def obtener_apertura_de_partida(pgn_game, aperturas_dict):
    board = pgn_game.board()
    movimientos = []
    apertura_encontrada = None

    # Construimos secuencia de movimientos en notación algebraica
    for i, move in enumerate(pgn_game.mainline_moves(), start=1):
        san = board.san(move)
        board.push(move)
        movimientos.append(san)
        
        # Generamos secuencia tipo PGN: "1. e4 e5 2. Nf3 Nc6 ..."
        secuencia = ""
        for j in range(0, len(movimientos), 2):
            num_jugada = j // 2 + 1
            blanca = movimientos[j]
            negra = movimientos[j + 1] if j + 1 < len(movimientos) else ""
            secuencia += f"{num_jugada}. {blanca} {negra} ".strip()

        secuencia = secuencia.strip()

        if secuencia in aperturas_dict:
            apertura_encontrada = aperturas_dict[secuencia]

    return apertura_encontrada[1] if apertura_encontrada else "Apertura desconocida"
