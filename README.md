
## Campeonato de Ajedrez

## Modelo

## 

para ver todo el grafo:

```
MATCH (n) RETURN n;  
```

## Modelo

## Consultas cypher posibles 
### Básicas
1. **¿A qué federación pertenece un jugador?**  
   ```
      MATCH (j:Jugador {nombre: "Carlsen, Magnus"})-[:PERTENECE_A_UNA]->(f:Federacion)
      RETURN f.nombre AS federacion
   ```

2. **¿Qué campeonatos jugó un jugador?**
   ```
   MATCH (j:Jugador {nombre: "Carlsen, Magnus"})-[:JUGO_PARTIDA_COMO]->(p:Partida)<-[:INCLUYE_PARTIDA]-(c:Campeonato)
   RETURN DISTINCT c.nombre AS campeonato
   ```

4. **¿Qué partidas pertenecen a un campeonato determinado?**
   ```
   MATCH (c:Campeonato {nombre: "World Chess Championship 2021"})-[:INCLUYE_PARTIDA]->(p:Partida)
   RETURN p.nombre AS partida, p.fecha, p.ronda
   ```

5. **¿Qué jugadores pertenecen a una federacion en especifico?**
   ```
   MATCH (j:Jugador)-[:PERTENECE_A_UNA]->(f:Federacion {nombre: "China"})
   RETURN j.nombre AS jugador, j.titulo, j.eloClasico
   ```


## Consultas avanzadas 
6. **¿Qué partidas jugó un jugador, con qué color y qué apertura usó?**
   ```
   MATCH (j:Jugador {nombre: "Carlsen, Magnus"})-[rel:JUGO_PARTIDA_COMO]->(p:Partida)-[:TIENE_APERTURA]->(a:Apertura)
   RETURN p.nombre AS partida, rel.color AS color, a.nombre AS apertura, p.fecha
   ORDER BY p.fecha
   ```

7. **¿Cantidad total de partidas con su tasa de victoria?**
   ```
   MATCH (j:Jugador {nombre: "Carlsen, Magnus"})-[:JUGO_PARTIDA_COMO]->(p:Partida)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
   WITH j, count(p) AS total,
      count(CASE WHEN (r.nombre = "blancas" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p)))
                  OR (r.nombre = "negras" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p)))
            THEN 1 END) AS victorias
   RETURN j.nombre AS jugador, total, victorias, toFloat(victorias)/total * 100 AS tasa_victoria
   ```

8. **¿Que aperturas son mas frecuentes para determinado jugador?**
   ```
   MATCH (j:Jugador {nombre: "Carlsen, Magnus"})-[:JUGO_PARTIDA_COMO]->(p:Partida)-[:TIENE_APERTURA]->(a:Apertura)
   RETURN a.nombre AS apertura, count(*) AS veces
   ORDER BY veces DESC

   ```

9. **¿Tasa de victoria frente a determinado (Jugador/Federacion)?**
   ```
   MATCH (j1:Jugador {nombre: "Carlsen, Magnus"})-[:JUGO_PARTIDA_COMO]->(p:Partida)<-[:JUGO_PARTIDA_COMO]-(j2:Jugador {nombre: "Nepomniachtchi, Ian"}),
      (p)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
   WITH j1, j2, count(p) AS total,
      count(CASE WHEN (r.nombre = "blancas" AND EXISTS((j1)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p)))
                  OR (r.nombre = "negras" AND EXISTS((j1)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p)))
            THEN 1 END) AS victorias
   RETURN j1.nombre AS jugador, j2.nombre AS contra, total, victorias, toFloat(victorias)/total * 100 AS tasa_victoria

   MATCH (j1:Jugador {nombre: "Carlsen, Magnus"})-[:JUGO_PARTIDA_COMO]->(p:Partida)<-[:JUGO_PARTIDA_COMO]-(j2:Jugador)-[:PERTENECE_A_UNA]->(f:Federacion {nombre: "Russian Federation"}),
      (p)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
   WITH j1, f, count(p) AS total,
      count(CASE WHEN (r.nombre = "blancas" AND EXISTS((j1)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p)))
                  OR (r.nombre = "negras" AND EXISTS((j1)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p)))
            THEN 1 END) AS victorias
   RETURN j1.nombre AS jugador, f.nombre AS contra_federacion, total, victorias, toFloat(victorias)/total * 100 AS tasa_victoria

   ```

10. **¿Quien fue el rival mas frecuente de un jugador?**
   ```
   MATCH (j1:Jugador {nombre: "Carlsen, Magnus"})-[:JUGO_PARTIDA_COMO]->(p:Partida)<-[:JUGO_PARTIDA_COMO]-(j2:Jugador)
   WHERE j1 <> j2
   WITH j2.nombre AS rival, count(p) AS veces
   ORDER BY veces DESC
   LIMIT 1
   RETURN rival, veces
   
   ```
11. **Que apertura tuvo mas exito en determinado a;o?** 
   ```
   MATCH (p:Partida)-[:TIENE_APERTURA]->(a:Apertura)
   MATCH (p)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
   WHERE p.fecha STARTS WITH "2023"
   WITH a.nombre AS apertura,
      count(p) AS total,
      count(CASE WHEN r.nombre IN ["blancas", "negras"] THEN 1 END) AS victorias
   RETURN apertura, total, victorias,
         toFloat(victorias) / total * 100 AS tasa_exito
   ORDER BY tasa_exito DESC
   ```
12. ****


### Federaciones
¿Qué jugadores jóvenes (< 20 años) tienen más victorias?
```
   MATCH (j:Jugador)-[:JUGO_PARTIDA_COMO]->(p:Partida)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
   WHERE toInteger(p.fecha[0..4]) - toInteger(j.nacimiento) < 20
   AND (
      (r.nombre = "blancas" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p))) OR
      (r.nombre = "negras" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p)))
   )
   RETURN j.nombre AS jugador, count(*) AS victorias
   ORDER BY victorias DESC
```
¿Qué federación tiene mayor número de partidas ganadas en torneos internacionales?
```
MATCH (f:Federacion)<-[:PERTENECE_A_UNA]-(j:Jugador)-[:JUGO_PARTIDA_COMO]->(p:Partida)-[:RESULTADO_DE_PARTIDA]->(r:Resultado),
      (c:Campeonato)-[:INCLUYE_PARTIDA]->(p)
WHERE c.formato = "internacional"
  AND (
    (r.nombre = "blancas" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p))) OR
    (r.nombre = "negras" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p)))
  )
RETURN f.nombre AS federacion, count(*) AS victorias
ORDER BY victorias DESC
```

¿Qué jugadores de la federación usan más una apertura específica?
```
```
¿Cómo rinde la federación en torneos por país?
```
```
### Entrenadores

¿Qué aperturas usa más un rival?
```
   MATCH (j:Jugador {nombre: "Hikaru Nakamura"})-[:JUGO_PARTIDA_COMO]->(p:Partida)-[:TIENE_APERTURA]->(a:Apertura)
   RETURN a.nombre AS apertura, count(*) AS veces
   ORDER BY veces DESC
```
¿Qué respuestas juega contra la Siciliana? #Corregir
```
   MATCH (j:Jugador)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p:Partida)<-[:JUGO_PARTIDA_COMO {color: "blanca"}]-(oponente:Jugador),
         (p)-[:TIENE_APERTURA]->(a:Apertura)
   WHERE a.nombre CONTAINS "Sicilian"
   RETURN j.nombre AS jugador, count(*) AS veces
   ORDER BY veces DESC
```
¿Con qué color gana más?
```
   MATCH (j:Jugador {nombre: "Carlsen, Magnus"})-[:JUGO_PARTIDA_COMO]->(p:Partida)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
   WITH j, r, 
      CASE 
         WHEN r.nombre = "blancas" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p)) THEN "blanca"
         WHEN r.nombre = "negras" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p)) THEN "negra"
         ELSE null
      END AS color
   WHERE color IS NOT null
   RETURN color, count(*) AS victorias
   ORDER BY victorias DESC
```
¿Cuáles son sus rivales frecuentes y resultados? # Arreglar
```
   MATCH (j1:Jugador {nombre: "Carlsen, Magnus"})-[:JUGO_PARTIDA_COMO]->(p:Partida)<-[:JUGO_PARTIDA_COMO]-(j2:Jugador),
         (p)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
   WHERE j1 <> j2
   RETURN j2.nombre AS rival, count(*) AS encuentros
   ORDER BY encuentros DESC
```

¿Qué partidas perdió más rápido ,con menor cantidad de movimientos?

```
   MATCH (j:Jugador {nombre: "Carlsen, Magnus"})-[:JUGO_PARTIDA_COMO]->(p:Partida)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
   WHERE (r.nombre = "blancas" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p)))
      OR (r.nombre = "negras" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p)))
   RETURN p.nombre AS partida, p.cantidad_movimientos AS movimientos
   ORDER BY toInteger(p.cantidad_movimientos) ASC
   LIMIT 5
```

### Organizadores
¿Qué apertura fue más popular en el torneo?
```
MATCH (c:Campeonato {nombre: "Freestyle Chess Grand Slam Paris Knockout"})-[:INCLUYE_PARTIDA]->(p:Partida)-[:TIENE_APERTURA]->(a:Apertura)
RETURN a.nombre AS apertura, count(*) AS veces
ORDER BY veces DESC
```
¿Qué federaciones participaron?
```
MATCH (c:Campeonato {nombre: "Freestyle Chess Grand Slam Paris Knockout"})-[:INCLUYE_PARTIDA]->(p:Partida)<-[:JUGO_PARTIDA_COMO]-(j:Jugador)-[:PERTENECE_A_UNA]->(f:Federacion)
RETURN DISTINCT f.nombre AS federacion
```
¿Quién fue el mejor jugador del torneo?
```
   MATCH (c:Campeonato {nombre: "Freestyle Chess Grand Slam Paris Knockout"})-[:INCLUYE_PARTIDA]->(p:Partida),
         (j:Jugador)-[:JUGO_PARTIDA_COMO]->(p)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
   WHERE 
   (r.nombre = "blancas" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p))) OR
   (r.nombre = "negras" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p)))
   RETURN j.nombre AS jugador, count(*) AS victorias
   ORDER BY victorias DESC
   LIMIT 1
```

¿Cuál fue la tasa de empate en el campeonato?
```
   MATCH (c:Campeonato {nombre: "Freestyle Chess Grand Slam Paris Knockout"})-[:INCLUYE_PARTIDA]->(p:Partida)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
   WITH count(p) AS total,
      count(CASE WHEN r.nombre = "tablas" THEN 1 END) AS empates
   RETURN total, empates, toFloat(empates)/total * 100 AS tasa_empates

```
¿En qué país se realizan más torneos al año? ##Posible implementacion

```
MATCH (c:Campeonato)-[:SE_REALIZA_EN]->(pais:Pais)
WHERE c.fechaInicio STARTS WITH "2023"
RETURN pais.nombre AS pais, count(*) AS torneos
ORDER BY torneos DESC
```




## Buena Consulta
🧩 2. Evaluar desempeño por tipo de apertura y color
🟢 ¿Qué resuelve?

    Saber si un jugador obtiene mejores resultados con blancas o negras, y contra qué aperturas obtiene más victorias o sufre más derrotas.
    
MATCH (j:Jugador {nombre: "Nepomniachtchi, Ian"})-[rel:JUGO_PARTIDA_COMO]->(p:Partida)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
WITH 
  rel.color AS color,
  CASE
    WHEN (rel.color = "blanca" AND r.nombre = "blancas") OR 
         (rel.color = "negra" AND r.nombre = "negras") THEN "victoria"
    WHEN r.nombre = "tablas" THEN "empate"
    ELSE "derrota"
  END AS resultado
RETURN color, resultado, count(*) AS partidas
ORDER BY color, resultado


## tsv con las aperturas
extraido del repo: https://github.com/lichess-org/chess-openings/


###

MATCH (j:Jugador)-[:JUGO_PARTIDA_COMO]->(p:Partida)-[:RESULTADO_DE_PARTIDA]->(r:Resultado)
WITH j, p, r,
     toInteger(SUBSTRING(p.fecha, 0, 4)) AS anio_partida
WHERE anio_partida - toInteger(j.nacimiento) < 20
  AND (
    (r.nombre = "blancas" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p))) OR
    (r.nombre = "negras" AND EXISTS((j)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p)))
  )
RETURN j.nombre AS jugador, count(*) AS victorias
ORDER BY victorias DESC
