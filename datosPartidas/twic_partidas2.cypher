MERGE (c1:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p1:Partida {
                id: "Astana, Kazakhstan-1",
                fecha: "2023.04.09",
                ronda: "1.1",
                nombre: "Nepomniachtchi, Ian vs Ding, Liren",
                cantidad_movimientos: "49"
            })

            MERGE (a1:Apertura {
                nombre: "C85"
            })

            MERGE (r1:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_1:Jugador {nombre: "Nepomniachtchi, Ian"})
            MERGE (j2_1:Jugador {nombre: "Ding, Liren"})

            MERGE (j1_1)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p1)
            MERGE (j2_1)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p1)
            
            
                        
            MERGE (p1)-[:TIENE_APERTURA]->(a1)

            MERGE (p1)-[:RESULTADO_DE_PARTIDA]->(r1)  
            MERGE (c1)-[:INCLUYE_PARTIDA]->(p1);

MERGE (c2:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p2:Partida {
                id: "Astana, Kazakhstan-2",
                fecha: "2023.04.10",
                ronda: "2.1",
                nombre: "Ding, Liren vs Nepomniachtchi, Ian",
                cantidad_movimientos: "30"
            })

            MERGE (a2:Apertura {
                nombre: "E10"
            })

            MERGE (r2:Resultado {
                nombre: "negras"
            })

            MERGE (j1_2:Jugador {nombre: "Ding, Liren"})
            MERGE (j2_2:Jugador {nombre: "Nepomniachtchi, Ian"})

            MERGE (j1_2)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p2)
            MERGE (j2_2)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p2)
            
            
                        
            MERGE (p2)-[:TIENE_APERTURA]->(a2)

            MERGE (p2)-[:RESULTADO_DE_PARTIDA]->(r2)  
            MERGE (c2)-[:INCLUYE_PARTIDA]->(p2);

MERGE (c3:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p3:Partida {
                id: "Astana, Kazakhstan-3",
                fecha: "2023.04.12",
                ronda: "3.1",
                nombre: "Nepomniachtchi, Ian vs Ding, Liren",
                cantidad_movimientos: "31"
            })

            MERGE (a3:Apertura {
                nombre: "D35"
            })

            MERGE (r3:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_3:Jugador {nombre: "Nepomniachtchi, Ian"})
            MERGE (j2_3:Jugador {nombre: "Ding, Liren"})

            MERGE (j1_3)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p3)
            MERGE (j2_3)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p3)
            
            
                        
            MERGE (p3)-[:TIENE_APERTURA]->(a3)

            MERGE (p3)-[:RESULTADO_DE_PARTIDA]->(r3)  
            MERGE (c3)-[:INCLUYE_PARTIDA]->(p3);

MERGE (c4:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p4:Partida {
                id: "Astana, Kazakhstan-4",
                fecha: "2023.04.13",
                ronda: "4.1",
                nombre: "Ding, Liren vs Nepomniachtchi, Ian",
                cantidad_movimientos: "47"
            })

            MERGE (a4:Apertura {
                nombre: "A28"
            })

            MERGE (r4:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_4:Jugador {nombre: "Ding, Liren"})
            MERGE (j2_4:Jugador {nombre: "Nepomniachtchi, Ian"})

            MERGE (j1_4)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p4)
            MERGE (j2_4)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p4)
            
            
                        
            MERGE (p4)-[:TIENE_APERTURA]->(a4)

            MERGE (p4)-[:RESULTADO_DE_PARTIDA]->(r4)  
            MERGE (c4)-[:INCLUYE_PARTIDA]->(p4);

MERGE (c5:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p5:Partida {
                id: "Astana, Kazakhstan-5",
                fecha: "2023.04.15",
                ronda: "5.1",
                nombre: "Nepomniachtchi, Ian vs Ding, Liren",
                cantidad_movimientos: "48"
            })

            MERGE (a5:Apertura {
                nombre: "C84"
            })

            MERGE (r5:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_5:Jugador {nombre: "Nepomniachtchi, Ian"})
            MERGE (j2_5:Jugador {nombre: "Ding, Liren"})

            MERGE (j1_5)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p5)
            MERGE (j2_5)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p5)
            
            
                        
            MERGE (p5)-[:TIENE_APERTURA]->(a5)

            MERGE (p5)-[:RESULTADO_DE_PARTIDA]->(r5)  
            MERGE (c5)-[:INCLUYE_PARTIDA]->(p5);

MERGE (c6:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p6:Partida {
                id: "Astana, Kazakhstan-6",
                fecha: "2023.04.16",
                ronda: "6.1",
                nombre: "Ding, Liren vs Nepomniachtchi, Ian",
                cantidad_movimientos: "44"
            })

            MERGE (a6:Apertura {
                nombre: "D02"
            })

            MERGE (r6:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_6:Jugador {nombre: "Ding, Liren"})
            MERGE (j2_6:Jugador {nombre: "Nepomniachtchi, Ian"})

            MERGE (j1_6)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p6)
            MERGE (j2_6)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p6)
            
            
                        
            MERGE (p6)-[:TIENE_APERTURA]->(a6)

            MERGE (p6)-[:RESULTADO_DE_PARTIDA]->(r6)  
            MERGE (c6)-[:INCLUYE_PARTIDA]->(p6);

MERGE (c7:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p7:Partida {
                id: "Astana, Kazakhstan-7",
                fecha: "2023.04.18",
                ronda: "7.1",
                nombre: "Nepomniachtchi, Ian vs Ding, Liren",
                cantidad_movimientos: "38"
            })

            MERGE (a7:Apertura {
                nombre: "C07"
            })

            MERGE (r7:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_7:Jugador {nombre: "Nepomniachtchi, Ian"})
            MERGE (j2_7:Jugador {nombre: "Ding, Liren"})

            MERGE (j1_7)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p7)
            MERGE (j2_7)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p7)
            
            
                        
            MERGE (p7)-[:TIENE_APERTURA]->(a7)

            MERGE (p7)-[:RESULTADO_DE_PARTIDA]->(r7)  
            MERGE (c7)-[:INCLUYE_PARTIDA]->(p7);

MERGE (c8:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p8:Partida {
                id: "Astana, Kazakhstan-8",
                fecha: "2023.04.20",
                ronda: "8.1",
                nombre: "Ding, Liren vs Nepomniachtchi, Ian",
                cantidad_movimientos: "45"
            })

            MERGE (a8:Apertura {
                nombre: "E28"
            })

            MERGE (r8:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_8:Jugador {nombre: "Ding, Liren"})
            MERGE (j2_8:Jugador {nombre: "Nepomniachtchi, Ian"})

            MERGE (j1_8)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p8)
            MERGE (j2_8)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p8)
            
            
                        
            MERGE (p8)-[:TIENE_APERTURA]->(a8)

            MERGE (p8)-[:RESULTADO_DE_PARTIDA]->(r8)  
            MERGE (c8)-[:INCLUYE_PARTIDA]->(p8);

MERGE (c9:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p9:Partida {
                id: "Astana, Kazakhstan-9",
                fecha: "2023.04.21",
                ronda: "9.1",
                nombre: "Nepomniachtchi, Ian vs Ding, Liren",
                cantidad_movimientos: "82"
            })

            MERGE (a9:Apertura {
                nombre: "C65"
            })

            MERGE (r9:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_9:Jugador {nombre: "Nepomniachtchi, Ian"})
            MERGE (j2_9:Jugador {nombre: "Ding, Liren"})

            MERGE (j1_9)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p9)
            MERGE (j2_9)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p9)
            
            
                        
            MERGE (p9)-[:TIENE_APERTURA]->(a9)

            MERGE (p9)-[:RESULTADO_DE_PARTIDA]->(r9)  
            MERGE (c9)-[:INCLUYE_PARTIDA]->(p9);

MERGE (c10:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p10:Partida {
                id: "Astana, Kazakhstan-10",
                fecha: "2023.04.23",
                ronda: "10.1",
                nombre: "Ding, Liren vs Nepomniachtchi, Ian",
                cantidad_movimientos: "46"
            })

            MERGE (a10:Apertura {
                nombre: "A28"
            })

            MERGE (r10:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_10:Jugador {nombre: "Ding, Liren"})
            MERGE (j2_10:Jugador {nombre: "Nepomniachtchi, Ian"})

            MERGE (j1_10)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p10)
            MERGE (j2_10)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p10)
            
            
                        
            MERGE (p10)-[:TIENE_APERTURA]->(a10)

            MERGE (p10)-[:RESULTADO_DE_PARTIDA]->(r10)  
            MERGE (c10)-[:INCLUYE_PARTIDA]->(p10);

MERGE (c11:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p11:Partida {
                id: "Astana, Kazakhstan-11",
                fecha: "2023.04.24",
                ronda: "11",
                nombre: "Nepomniachtchi, Ian vs Ding, Liren",
                cantidad_movimientos: "39"
            })

            MERGE (a11:Apertura {
                nombre: "C84"
            })

            MERGE (r11:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_11:Jugador {nombre: "Nepomniachtchi, Ian"})
            MERGE (j2_11:Jugador {nombre: "Ding, Liren"})

            MERGE (j1_11)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p11)
            MERGE (j2_11)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p11)
            
            
                        
            MERGE (p11)-[:TIENE_APERTURA]->(a11)

            MERGE (p11)-[:RESULTADO_DE_PARTIDA]->(r11)  
            MERGE (c11)-[:INCLUYE_PARTIDA]->(p11);

MERGE (c12:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p12:Partida {
                id: "Astana, Kazakhstan-12",
                fecha: "2023.04.26",
                ronda: "12.1",
                nombre: "Ding, Liren vs Nepomniachtchi, Ian",
                cantidad_movimientos: "38"
            })

            MERGE (a12:Apertura {
                nombre: "D04"
            })

            MERGE (r12:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_12:Jugador {nombre: "Ding, Liren"})
            MERGE (j2_12:Jugador {nombre: "Nepomniachtchi, Ian"})

            MERGE (j1_12)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p12)
            MERGE (j2_12)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p12)
            
            
                        
            MERGE (p12)-[:TIENE_APERTURA]->(a12)

            MERGE (p12)-[:RESULTADO_DE_PARTIDA]->(r12)  
            MERGE (c12)-[:INCLUYE_PARTIDA]->(p12);

MERGE (c13:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p13:Partida {
                id: "Astana, Kazakhstan-13",
                fecha: "2023.04.27",
                ronda: "13.1",
                nombre: "Nepomniachtchi, Ian vs Ding, Liren",
                cantidad_movimientos: "40"
            })

            MERGE (a13:Apertura {
                nombre: "C84"
            })

            MERGE (r13:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_13:Jugador {nombre: "Nepomniachtchi, Ian"})
            MERGE (j2_13:Jugador {nombre: "Ding, Liren"})

            MERGE (j1_13)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p13)
            MERGE (j2_13)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p13)
            
            
                        
            MERGE (p13)-[:TIENE_APERTURA]->(a13)

            MERGE (p13)-[:RESULTADO_DE_PARTIDA]->(r13)  
            MERGE (c13)-[:INCLUYE_PARTIDA]->(p13);

MERGE (c14:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p14:Partida {
                id: "Astana, Kazakhstan-14",
                fecha: "2023.04.29",
                ronda: "14.1",
                nombre: "Ding, Liren vs Nepomniachtchi, Ian",
                cantidad_movimientos: "91"
            })

            MERGE (a14:Apertura {
                nombre: "E46"
            })

            MERGE (r14:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_14:Jugador {nombre: "Ding, Liren"})
            MERGE (j2_14:Jugador {nombre: "Nepomniachtchi, Ian"})

            MERGE (j1_14)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p14)
            MERGE (j2_14)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p14)
            
            
                        
            MERGE (p14)-[:TIENE_APERTURA]->(a14)

            MERGE (p14)-[:RESULTADO_DE_PARTIDA]->(r14)  
            MERGE (c14)-[:INCLUYE_PARTIDA]->(p14);

MERGE (c15:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p15:Partida {
                id: "Astana, Kazakhstan-15",
                fecha: "2023.04.30",
                ronda: "1.2",
                nombre: "Ding, Liren vs Nepomniachtchi, Ian",
                cantidad_movimientos: "35"
            })

            MERGE (a15:Apertura {
                nombre: "D02"
            })

            MERGE (r15:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_15:Jugador {nombre: "Ding, Liren"})
            MERGE (j2_15:Jugador {nombre: "Nepomniachtchi, Ian"})

            MERGE (j1_15)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p15)
            MERGE (j2_15)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p15)
            
            
                        
            MERGE (p15)-[:TIENE_APERTURA]->(a15)

            MERGE (p15)-[:RESULTADO_DE_PARTIDA]->(r15)  
            MERGE (c15)-[:INCLUYE_PARTIDA]->(p15);

MERGE (c16:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p16:Partida {
                id: "Astana, Kazakhstan-16",
                fecha: "2023.04.30",
                ronda: "2.2",
                nombre: "Nepomniachtchi, Ian vs Ding, Liren",
                cantidad_movimientos: "48"
            })

            MERGE (a16:Apertura {
                nombre: "C84"
            })

            MERGE (r16:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_16:Jugador {nombre: "Nepomniachtchi, Ian"})
            MERGE (j2_16:Jugador {nombre: "Ding, Liren"})

            MERGE (j1_16)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p16)
            MERGE (j2_16)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p16)
            
            
                        
            MERGE (p16)-[:TIENE_APERTURA]->(a16)

            MERGE (p16)-[:RESULTADO_DE_PARTIDA]->(r16)  
            MERGE (c16)-[:INCLUYE_PARTIDA]->(p16);

MERGE (c17:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p17:Partida {
                id: "Astana, Kazakhstan-17",
                fecha: "2023.04.30",
                ronda: "3.2",
                nombre: "Ding, Liren vs Nepomniachtchi, Ian",
                cantidad_movimientos: "33"
            })

            MERGE (a17:Apertura {
                nombre: "A14"
            })

            MERGE (r17:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_17:Jugador {nombre: "Ding, Liren"})
            MERGE (j2_17:Jugador {nombre: "Nepomniachtchi, Ian"})

            MERGE (j1_17)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p17)
            MERGE (j2_17)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p17)
            
            
                        
            MERGE (p17)-[:TIENE_APERTURA]->(a17)

            MERGE (p17)-[:RESULTADO_DE_PARTIDA]->(r17)  
            MERGE (c17)-[:INCLUYE_PARTIDA]->(p17);

MERGE (c18:Campeonato {
                nombre: "FIDE World Championship 2023",
                ubicacion: "Astana, Kazakhstan"
            })
            MERGE (p18:Partida {
                id: "Astana, Kazakhstan-18",
                fecha: "2023.04.30",
                ronda: "4.2",
                nombre: "Nepomniachtchi, Ian vs Ding, Liren",
                cantidad_movimientos: "69"
            })

            MERGE (a18:Apertura {
                nombre: "C84"
            })

            MERGE (r18:Resultado {
                nombre: "negras"
            })

            MERGE (j1_18:Jugador {nombre: "Nepomniachtchi, Ian"})
            MERGE (j2_18:Jugador {nombre: "Ding, Liren"})

            MERGE (j1_18)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p18)
            MERGE (j2_18)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p18)
            
            
                        
            MERGE (p18)-[:TIENE_APERTURA]->(a18)

            MERGE (p18)-[:RESULTADO_DE_PARTIDA]->(r18)  
            MERGE (c18)-[:INCLUYE_PARTIDA]->(p18);