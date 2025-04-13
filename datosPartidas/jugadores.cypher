MERGE (f1:Federacion {nombre: "Russian Federation"})
            
        MERGE (j_0:Jugador {
            nombre: "Nepomniachtchi, Ian",
            titulo: "Grand Master",
            eloClasico: "2757",
            nacimiento: "1990"
        })
        
        // Relación del jugador con la federación
        MERGE (j_0)-[:PERTENECE_A_UNA]->(f1)
        
            MERGE (f2:Federacion {nombre: "China"})
            
        MERGE (j_1:Jugador {
            nombre: "Ding, Liren",
            titulo: "Grand Master",
            eloClasico: "2734",
            nacimiento: "1992"
        })
        
        // Relación del jugador con la federación
        MERGE (j_1)-[:PERTENECE_A_UNA]->(f2)
        
            MERGE (f3:Federacion {nombre: "Norway"})
            
        MERGE (j_2:Jugador {
            nombre: "Carlsen, Magnus",
            titulo: "Grand Master",
            eloClasico: "2837",
            nacimiento: "1990"
        })
        
        // Relación del jugador con la federación
        MERGE (j_2)-[:PERTENECE_A_UNA]->(f3)