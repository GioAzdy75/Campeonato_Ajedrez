import requests
from bs4 import BeautifulSoup
import json
import time

def obtener_datos_jugador(nombre_jugador):
    j = nombre_jugador.split(",")
    j = j[1][1:] + " " +  j[0]
    
    nombre_url = j.strip().replace(" ", "_")
    
    url = f"https://www.365chess.com/players/{nombre_url}"
    
    response = requests.get(url)
    if response.status_code != 200:
        print(f"Error al acceder a la página: {url}")
        return None
    
    soup = BeautifulSoup(response.text, 'html.parser')
    
    try:
        info = {
            'Nombre': nombre_jugador,
            'Federación': soup.find(text="Federation:").find_next().text.strip(),
            'Título': soup.find(text="Title:").find_next().text.strip(),
            'ELO Clásico': soup.find(text="ELO Classic:").find_next().text.strip(),
            'Nacimiento': soup.find(text="Born:").find_next().text.strip()     #👈 nuevo
            #'ELO Rápido': soup.find(text="ELO Rapid:").find_next().text.strip(),
            #'ELO Blitz': soup.find(text="ELO Blitz:").find_next().text.strip(),
        }
        return info
    except Exception as e:
        print(f"⚠️ Error al extraer datos de {nombre_jugador}: {e}")
        return None

def guardar_en_json(lista_datos, nombre_archivo="jugadores.json"):
    with open(nombre_archivo, "w", encoding="utf-8") as f:
        json.dump(lista_datos, f, ensure_ascii=False, indent=4)
    print(f"\n✅ Datos guardados en {nombre_archivo}")

# Set de nombres de jugadores

# Obtener datos de todos los jugadores

def extraerDatosJugadores(jugadores):
    datos_completos = []
    for nombre in jugadores:
        print(f"Buscando datos de: {nombre}")
        datos = obtener_datos_jugador(nombre)
        if datos:
            datos_completos.append(datos)
        time.sleep(1.5)

    # Guardar todos los datos en un solo JSON
    guardar_en_json(datos_completos)

