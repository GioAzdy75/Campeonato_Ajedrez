MERGE (c1:Campeonato {
                nombre: "World Chess Championship 2021",
                ubicacion: "Dubai UAE"
            })
            MERGE (p1:Partida {
                id: "Dubai UAE-1",
                fecha: "2021.11.26",
                ronda: "1",
                nombre: "Nepomniachtchi, Ian vs Carlsen, Magnus",
                cantidad_movimientos: "45"
            })

            MERGE (a1:Apertura {
                nombre: "C88"
            })

            MERGE (r1:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_1:Jugador {nombre: "Nepomniachtchi, Ian"})
            MERGE (j2_1:Jugador {nombre: "Carlsen, Magnus"})

            MERGE (j1_1)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p1)
            MERGE (j2_1)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p1)
            
            
                        
            MERGE (p1)-[:TIENE_APERTURA]->(a1)

            MERGE (p1)-[:RESULTADO_DE_PARTIDA]->(r1)  
            MERGE (c1)-[:INCLUYE_PARTIDA]->(p1);

MERGE (c2:Campeonato {
                nombre: "World Chess Championship 2021",
                ubicacion: "Dubai UAE"
            })
            MERGE (p2:Partida {
                id: "Dubai UAE-2",
                fecha: "2021.11.27",
                ronda: "2",
                nombre: "Carlsen, Magnus vs Nepomniachtchi, Ian",
                cantidad_movimientos: "59"
            })

            MERGE (a2:Apertura {
                nombre: "E06"
            })

            MERGE (r2:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_2:Jugador {nombre: "Carlsen, Magnus"})
            MERGE (j2_2:Jugador {nombre: "Nepomniachtchi, Ian"})

            MERGE (j1_2)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p2)
            MERGE (j2_2)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p2)
            
            
                        
            MERGE (p2)-[:TIENE_APERTURA]->(a2)

            MERGE (p2)-[:RESULTADO_DE_PARTIDA]->(r2)  
            MERGE (c2)-[:INCLUYE_PARTIDA]->(p2);

MERGE (c3:Campeonato {
                nombre: "World Chess Championship 2021",
                ubicacion: "Dubai UAE"
            })
            MERGE (p3:Partida {
                id: "Dubai UAE-3",
                fecha: "2021.11.28",
                ronda: "3",
                nombre: "Nepomniachtchi, Ian vs Carlsen, Magnus",
                cantidad_movimientos: "41"
            })

            MERGE (a3:Apertura {
                nombre: "C88"
            })

            MERGE (r3:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_3:Jugador {nombre: "Nepomniachtchi, Ian"})
            MERGE (j2_3:Jugador {nombre: "Carlsen, Magnus"})

            MERGE (j1_3)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p3)
            MERGE (j2_3)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p3)
            
            
                        
            MERGE (p3)-[:TIENE_APERTURA]->(a3)

            MERGE (p3)-[:RESULTADO_DE_PARTIDA]->(r3)  
            MERGE (c3)-[:INCLUYE_PARTIDA]->(p3);

MERGE (c4:Campeonato {
                nombre: "World Chess Championship 2021",
                ubicacion: "Dubai UAE"
            })
            MERGE (p4:Partida {
                id: "Dubai UAE-4",
                fecha: "2021.11.30",
                ronda: "4",
                nombre: "Carlsen, Magnus vs Nepomniachtchi, Ian",
                cantidad_movimientos: "33"
            })

            MERGE (a4:Apertura {
                nombre: "C42"
            })

            MERGE (r4:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_4:Jugador {nombre: "Carlsen, Magnus"})
            MERGE (j2_4:Jugador {nombre: "Nepomniachtchi, Ian"})

            MERGE (j1_4)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p4)
            MERGE (j2_4)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p4)
            
            
                        
            MERGE (p4)-[:TIENE_APERTURA]->(a4)

            MERGE (p4)-[:RESULTADO_DE_PARTIDA]->(r4)  
            MERGE (c4)-[:INCLUYE_PARTIDA]->(p4);

MERGE (c5:Campeonato {
                nombre: "World Chess Championship 2021",
                ubicacion: "Dubai UAE"
            })
            MERGE (p5:Partida {
                id: "Dubai UAE-5",
                fecha: "2021.12.01",
                ronda: "5",
                nombre: "Nepomniachtchi, Ian vs Carlsen, Magnus",
                cantidad_movimientos: "43"
            })

            MERGE (a5:Apertura {
                nombre: "C88"
            })

            MERGE (r5:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_5:Jugador {nombre: "Nepomniachtchi, Ian"})
            MERGE (j2_5:Jugador {nombre: "Carlsen, Magnus"})

            MERGE (j1_5)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p5)
            MERGE (j2_5)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p5)
            
            
                        
            MERGE (p5)-[:TIENE_APERTURA]->(a5)

            MERGE (p5)-[:RESULTADO_DE_PARTIDA]->(r5)  
            MERGE (c5)-[:INCLUYE_PARTIDA]->(p5);

MERGE (c6:Campeonato {
                nombre: "World Chess Championship 2021",
                ubicacion: "Dubai UAE"
            })
            MERGE (p6:Partida {
                id: "Dubai UAE-6",
                fecha: "2021.12.03",
                ronda: "6",
                nombre: "Carlsen, Magnus vs Nepomniachtchi, Ian",
                cantidad_movimientos: "136"
            })

            MERGE (a6:Apertura {
                nombre: "D02"
            })

            MERGE (r6:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_6:Jugador {nombre: "Carlsen, Magnus"})
            MERGE (j2_6:Jugador {nombre: "Nepomniachtchi, Ian"})

            MERGE (j1_6)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p6)
            MERGE (j2_6)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p6)
            
            
                        
            MERGE (p6)-[:TIENE_APERTURA]->(a6)

            MERGE (p6)-[:RESULTADO_DE_PARTIDA]->(r6)  
            MERGE (c6)-[:INCLUYE_PARTIDA]->(p6);

MERGE (c7:Campeonato {
                nombre: "World Chess Championship 2021",
                ubicacion: "Dubai UAE"
            })
            MERGE (p7:Partida {
                id: "Dubai UAE-7",
                fecha: "2021.12.04",
                ronda: "7",
                nombre: "Nepomniachtchi, Ian vs Carlsen, Magnus",
                cantidad_movimientos: "41"
            })

            MERGE (a7:Apertura {
                nombre: "C88"
            })

            MERGE (r7:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_7:Jugador {nombre: "Nepomniachtchi, Ian"})
            MERGE (j2_7:Jugador {nombre: "Carlsen, Magnus"})

            MERGE (j1_7)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p7)
            MERGE (j2_7)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p7)
            
            
                        
            MERGE (p7)-[:TIENE_APERTURA]->(a7)

            MERGE (p7)-[:RESULTADO_DE_PARTIDA]->(r7)  
            MERGE (c7)-[:INCLUYE_PARTIDA]->(p7);

MERGE (c8:Campeonato {
                nombre: "World Chess Championship 2021",
                ubicacion: "Dubai UAE"
            })
            MERGE (p8:Partida {
                id: "Dubai UAE-8",
                fecha: "2021.12.05",
                ronda: "8",
                nombre: "Carlsen, Magnus vs Nepomniachtchi, Ian",
                cantidad_movimientos: "46"
            })

            MERGE (a8:Apertura {
                nombre: "C43"
            })

            MERGE (r8:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_8:Jugador {nombre: "Carlsen, Magnus"})
            MERGE (j2_8:Jugador {nombre: "Nepomniachtchi, Ian"})

            MERGE (j1_8)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p8)
            MERGE (j2_8)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p8)
            
            
                        
            MERGE (p8)-[:TIENE_APERTURA]->(a8)

            MERGE (p8)-[:RESULTADO_DE_PARTIDA]->(r8)  
            MERGE (c8)-[:INCLUYE_PARTIDA]->(p8);

MERGE (c9:Campeonato {
                nombre: "World Chess Championship 2021",
                ubicacion: "Dubai UAE"
            })
            MERGE (p9:Partida {
                id: "Dubai UAE-9",
                fecha: "2021.12.07",
                ronda: "9",
                nombre: "Nepomniachtchi, Ian vs Carlsen, Magnus",
                cantidad_movimientos: "40"
            })

            MERGE (a9:Apertura {
                nombre: "A13"
            })

            MERGE (r9:Resultado {
                nombre: "negras"
            })

            MERGE (j1_9:Jugador {nombre: "Nepomniachtchi, Ian"})
            MERGE (j2_9:Jugador {nombre: "Carlsen, Magnus"})

            MERGE (j1_9)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p9)
            MERGE (j2_9)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p9)
            
            
                        
            MERGE (p9)-[:TIENE_APERTURA]->(a9)

            MERGE (p9)-[:RESULTADO_DE_PARTIDA]->(r9)  
            MERGE (c9)-[:INCLUYE_PARTIDA]->(p9);

MERGE (c10:Campeonato {
                nombre: "World Chess Championship 2021",
                ubicacion: "Dubai UAE"
            })
            MERGE (p10:Partida {
                id: "Dubai UAE-10",
                fecha: "2021.12.08",
                ronda: "10",
                nombre: "Carlsen, Magnus vs Nepomniachtchi, Ian",
                cantidad_movimientos: "41"
            })

            MERGE (a10:Apertura {
                nombre: "C42"
            })

            MERGE (r10:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_10:Jugador {nombre: "Carlsen, Magnus"})
            MERGE (j2_10:Jugador {nombre: "Nepomniachtchi, Ian"})

            MERGE (j1_10)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p10)
            MERGE (j2_10)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p10)
            
            
                        
            MERGE (p10)-[:TIENE_APERTURA]->(a10)

            MERGE (p10)-[:RESULTADO_DE_PARTIDA]->(r10)  
            MERGE (c10)-[:INCLUYE_PARTIDA]->(p10);

MERGE (c11:Campeonato {
                nombre: "World Chess Championship 2021",
                ubicacion: "Dubai UAE"
            })
            MERGE (p11:Partida {
                id: "Dubai UAE-11",
                fecha: "2021.12.10",
                ronda: "11",
                nombre: "Nepomniachtchi, Ian vs Carlsen, Magnus",
                cantidad_movimientos: "50"
            })

            MERGE (a11:Apertura {
                nombre: "C50"
            })

            MERGE (r11:Resultado {
                nombre: "negras"
            })

            MERGE (j1_11:Jugador {nombre: "Nepomniachtchi, Ian"})
            MERGE (j2_11:Jugador {nombre: "Carlsen, Magnus"})

            MERGE (j1_11)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p11)
            MERGE (j2_11)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p11)
            
            
                        
            MERGE (p11)-[:TIENE_APERTURA]->(a11)

            MERGE (p11)-[:RESULTADO_DE_PARTIDA]->(r11)  
            MERGE (c11)-[:INCLUYE_PARTIDA]->(p11);