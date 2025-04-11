// Crear países
MERGE (noruega:Pais {nombre: "Noruega"})
MERGE (eeuu:Pais {nombre: "Estados Unidos"})
MERGE (india:Pais {nombre: "India"})
MERGE (china:Pais {nombre: "China"})
MERGE (uzbekistan:Pais {nombre: "Uzbekistán"})
MERGE (rusia:Pais {nombre: "Rusia"})
MERGE (francia:Pais {nombre: "Francia"})

// Crear federaciones
MERGE (fide:Federacion {nombre: "FIDE"})
MERGE (federacion_usa:Federacion {nombre: "US Chess Federation"})
MERGE (federacion_india:Federacion {nombre: "All India Chess Federation"})
MERGE (federacion_china:Federacion {nombre: "Chinese Chess Association"})
MERGE (federacion_uzbek:Federacion {nombre: "Uzbekistan Chess Federation"})
MERGE (federacion_rusa:Federacion {nombre: "Russian Chess Federation"})
MERGE (federacion_francia:Federacion {nombre: "Fédération Française des Échecs"})

// Relaciones federación ↔ país
MERGE (federacion_usa)-[:TIENE_SEDE_EN]->(eeuu)
MERGE (federacion_india)-[:TIENE_SEDE_EN]->(india)
MERGE (federacion_china)-[:TIENE_SEDE_EN]->(china)
MERGE (federacion_uzbek)-[:TIENE_SEDE_EN]->(uzbekistan)
MERGE (federacion_rusa)-[:TIENE_SEDE_EN]->(rusia)
MERGE (federacion_francia)-[:TIENE_SEDE_EN]->(francia)

WITH *
MATCH (carlsen:Jugador {nombre: "Carlsen, Magnus"})
MERGE (carlsen)-[:TIENE_NACIONALIDAD]->(noruega)
MERGE (carlsen)-[:PERTENECE_A_FEDERACION]->(fide)

WITH *
MATCH (nakamura:Jugador {nombre: "Nakamura, Hikaru"})
MERGE (nakamura)-[:TIENE_NACIONALIDAD]->(eeuu)
MERGE (nakamura)-[:PERTENECE_A_FEDERACION]->(federacion_usa)

WITH *
MATCH (gukesh:Jugador {nombre: "Gukesh D"})
MERGE (gukesh)-[:TIENE_NACIONALIDAD]->(india)
MERGE (gukesh)-[:PERTENECE_A_FEDERACION]->(federacion_india)

WITH *
MATCH (arjun:Jugador {nombre: "Erigaisi Arjun"})
MERGE (arjun)-[:TIENE_NACIONALIDAD]->(india)
MERGE (arjun)-[:PERTENECE_A_FEDERACION]->(federacion_india)

WITH *
MATCH (caruana:Jugador {nombre: "Caruana, Fabiano"})
MERGE (caruana)-[:TIENE_NACIONALIDAD]->(eeuu)
MERGE (caruana)-[:PERTENECE_A_FEDERACION]->(federacion_usa)

WITH *
MATCH (nodirbek:Jugador {nombre: "Abdusattorov, Nodirbek"})
MERGE (nodirbek)-[:TIENE_NACIONALIDAD]->(uzbekistan)
MERGE (nodirbek)-[:PERTENECE_A_FEDERACION]->(federacion_uzbek)

WITH *
MATCH (pragg:Jugador {nombre: "Praggnanandhaa R"})
MERGE (pragg)-[:TIENE_NACIONALIDAD]->(india)
MERGE (pragg)-[:PERTENECE_A_FEDERACION]->(federacion_india)

WITH *
MATCH (wei:Jugador {nombre: "Wei, Yi"})
MERGE (wei)-[:TIENE_NACIONALIDAD]->(china)
MERGE (wei)-[:PERTENECE_A_FEDERACION]->(federacion_china)

WITH *
MATCH (nepo:Jugador {nombre: "Nepomniachtchi, Ian"})
MERGE (nepo)-[:TIENE_NACIONALIDAD]->(rusia)
MERGE (nepo)-[:PERTENECE_A_FEDERACION]->(federacion_rusa)

WITH *
MATCH (firouzja:Jugador {nombre: "Firouzja, Alireza"})
MERGE (firouzja)-[:TIENE_NACIONALIDAD]->(francia)
MERGE (firouzja)-[:PERTENECE_A_FEDERACION]->(federacion_francia)
