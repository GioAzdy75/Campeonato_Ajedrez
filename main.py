from neo4j import GraphDatabase
import os
import partidasTwicc
from config import URI, USERNAME, PASSWORD

# Establecer la conexión con Neo4j
uri = URI
username = USERNAME
password = PASSWORD

# Crear una instancia del controlador de Neo4j
driver = GraphDatabase.driver(uri, auth=(username, password))

# Función para leer el archivo Cypher y ejecutarlo
def ejecutar_archivo_cypher(archivo_cypher):
    try:
        # Abrir y leer el contenido del archivo cypher
        with open(archivo_cypher, 'r') as file:
            cql_queries = file.read()

        # Dividir el archivo en múltiples consultas cypher (si están separadas por punto y coma)
        queries = [query.strip() for query in cql_queries.split(';') if query.strip()]  # Limpiar y dividir

        # Ejecutar cada consulta cypher
        with driver.session() as session:
            for query in queries:
                try:
                    session.run(query)  # Ejecutar la consulta
                    print(f"Ejecutado correctamente: {query}")
                except Exception as e:
                    print(f"Error al ejecutar la consulta: {query}\nError: {e}")

    except FileNotFoundError:
        print(f"El archivo {archivo_cypher} no se encontró.")
    except Exception as e:
        print(f"Error inesperado al leer o procesar el archivo: {e}")

def procesar_archivos_en_carpeta(carpeta, max_partidas=30):
    # Listar todos los archivos en el directorio
    for archivo in os.listdir(carpeta):
        if archivo.endswith(".cypher"):  # Solo procesar archivos .pgn
            archivo_path = os.path.join(carpeta, archivo)
            ejecutar_archivo_cypher(archivo_path)

print("-Inicio programa-")
partidasTwicc.ejecucionScript()
ejecutar_archivo_cypher('datosPartidas/jugadores.cypher')
procesar_archivos_en_carpeta('datosPartidas/cypherCode/')
print('-Fin-')