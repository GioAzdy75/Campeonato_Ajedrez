CREATE
  (campeonato:Campeonato {
    nombre: "", ubicacion: "", cantidadParticipantes: "",
    fechaInicio: "", fechaFin: "", organizador: "",
    premio: "", formato: ""
  }),
  
  (pais:Pais {nombre: ""}),
  
  (federacion:Federacion {nombre: ""}),
  
  (jugador:Jugador {
    nombre: "", maximoElo: "", fechaNacimiento: ""
  }),
  
  (partida:Partida {
    cantidadMovimientos: "", resultado: "", fecha: "",
    ronda: "", duracion: "", nombre: "", id: ""
  }),

  // Relaciones con nombres descriptivos
  (campeonato)-[:INCLUYE_PARTIDA]->(partida),
  (jugador)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(partida),
  (jugador)-[:USO_APERTURA]->(partida),
  (jugador)-[:PARTICIPO_EN_CAMPEONATO]->(campeonato),
  (campeonato)-[:SE_REALIZA_EN]->(pais),
  (jugador)-[:TIENE_NACIONALIDAD]->(pais),
  (jugador)-[:PERTENECE_A_FEDERACION]->(federacion),
  (federacion)-[:TIENE_SEDE_EN]->(pais)
