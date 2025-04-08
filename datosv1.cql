CREATE
  // Países
  (noruega:Pais {nombre: "Noruega"}),
  (francia:Pais {nombre: "Francia"}),
  (china:Pais {nombre: "China"}),
  (india:Pais {nombre: "India"}),
  (paisesBajos:Pais {nombre: "Países Bajos"}),
  (suiza:Pais {nombre: "Suiza"}),

  // Federaciones
  (fide:Federacion {nombre: "FIDE"}),
  (ffej:Federacion {nombre: "Federación Francesa de Ajedrez"}),
  (caa:Federacion {nombre: "Chinese Chess Association"}),
  (aicf:Federacion {nombre: "All India Chess Federation"}),

  // Relaciones de federaciones con países
  (fide)-[:TIENE_SEDE_EN]->(suiza),
  (ffej)-[:TIENE_SEDE_EN]->(francia),
  (caa)-[:TIENE_SEDE_EN]->(china),
  (aicf)-[:TIENE_SEDE_EN]->(india),

  // Jugadores
  (magnus:Jugador {
    nombre: "Magnus Carlsen",
    maximoElo: "2882",
    fechaNacimiento: "1990-11-30"
  }),
  (firouzja:Jugador {
    nombre: "Alireza Firouzja",
    maximoElo: "2804",
    fechaNacimiento: "2003-06-18"
  }),
  (ding:Jugador {
    nombre: "Ding Liren",
    maximoElo: "2816",
    fechaNacimiento: "1992-10-24"
  }),
  (gukesh:Jugador {
    nombre: "Dommaraju Gukesh",
    maximoElo: "2758",
    fechaNacimiento: "2006-05-29"
  }),

  // Relaciones de jugadores
  (magnus)-[:TIENE_NACIONALIDAD]->(noruega),
  (magnus)-[:PERTENECE_A_FEDERACION]->(fide),
  (firouzja)-[:TIENE_NACIONALIDAD]->(francia),
  (firouzja)-[:PERTENECE_A_FEDERACION]->(ffej),
  (ding)-[:TIENE_NACIONALIDAD]->(china),
  (ding)-[:PERTENECE_A_FEDERACION]->(caa),
  (gukesh)-[:TIENE_NACIONALIDAD]->(india),
  (gukesh)-[:PERTENECE_A_FEDERACION]->(aicf),

  // Campeonato
  (tata:Campeonato {
    nombre: "Tata Steel Chess 2024",
    ubicacion: "Wijk aan Zee",
    cantidadParticipantes: "14",
    fechaInicio: "2024-01-13",
    fechaFin: "2024-01-28",
    organizador: "Tata Steel",
    premio: "EUR 75000",
    formato: "Round Robin"
  }),
  (tata)-[:SE_REALIZA_EN]->(paisesBajos),

  // Participación de jugadores en campeonato
  (magnus)-[:PARTICIPO_EN_CAMPEONATO]->(tata),
  (firouzja)-[:PARTICIPO_EN_CAMPEONATO]->(tata),
  (ding)-[:PARTICIPO_EN_CAMPEONATO]->(tata),
  (gukesh)-[:PARTICIPO_EN_CAMPEONATO]->(tata),

  // Partida ejemplo
  (p1:Partida {
    cantidadMovimientos: "35",
    resultado: "1-0",
    fecha: "2024-01-20",
    ronda: "7",
    duracion: "2h30m",
    nombre: "Carlsen vs Ding",
    id: "TSC2024-R7"
  }),
  (tata)-[:INCLUYE_PARTIDA]->(p1),
  (magnus)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p1),
  (ding)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p1);
