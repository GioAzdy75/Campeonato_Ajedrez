from neo4j import GraphDatabase
import os

# Establecer la conexión con Neo4j
uri = "bolt://localhost:7687"  # Cambia la URL según sea necesario
username = "neo4j"  # Nombre de usuario por defecto
password = "chess12345"  # Reemplaza con tu contraseña

# Crear una instancia del controlador de Neo4j
driver = GraphDatabase.driver(uri, auth=(username, password))

# Función para leer el archivo CQL y ejecutarlo
def ejecutar_archivo_cql(archivo_cql):
    try:
        # Abrir y leer el contenido del archivo CQL
        with open(archivo_cql, 'r') as file:
            cql_queries = file.read()

        # Dividir el archivo en múltiples consultas CQL (si están separadas por punto y coma)
        queries = [query.strip() for query in cql_queries.split(';') if query.strip()]  # Limpiar y dividir

        # Ejecutar cada consulta CQL
        with driver.session() as session:
            for query in queries:
                try:
                    session.run(query)  # Ejecutar la consulta
                    print(f"Ejecutado correctamente: {query}")
                except Exception as e:
                    print(f"Error al ejecutar la consulta: {query}\nError: {e}")

    except FileNotFoundError:
        print(f"El archivo {archivo_cql} no se encontró.")
    except Exception as e:
        print(f"Error inesperado al leer o procesar el archivo: {e}")

# Llamar a la función para ejecutar el archivo CQL
#archivo_cql = 'datosPartidas/partidasLichess/datosLichess0.cypher'  # Reemplaza con la ruta a tu archivo .cql


def procesar_archivos_en_carpeta(carpeta, max_partidas=30):
    # Listar todos los archivos en el directorio
    for archivo in os.listdir(carpeta):
        if archivo.endswith(".cypher"):  # Solo procesar archivos .pgn
            archivo_path = os.path.join(carpeta, archivo)
            ejecutar_archivo_cql(archivo_path)

print("-Inicio programa-")
archivo_cypher = 'datosPartidas/'  # Reemplaza con la ruta a tu archivo .cql
procesar_archivos_en_carpeta(archivo_cypher)

print('-Fin-')