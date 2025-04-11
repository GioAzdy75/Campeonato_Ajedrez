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
