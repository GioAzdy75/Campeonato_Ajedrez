MERGE (c1:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p1:Partida {
                id: "Wijk aan Zee NED-1",
                fecha: "2022.01.25",
                ronda: "9.1",
                nombre: "Carlsen,M vs Mamedyarov,S",
                cantidad_movimientos: "27"
            })

            MERGE (a1:Apertura {
                nombre: "E04"
            })

            MERGE (r1:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_1:Jugador {nombre: "Carlsen,M"})
            MERGE (j2_1:Jugador {nombre: "Mamedyarov,S"})

            MERGE (j1_1)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p1)
            MERGE (j2_1)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p1)
            
            
                        
            MERGE (p1)-[:TIENE_APERTURA]->(a1)

            MERGE (p1)-[:RESULTADO_DE_PARTIDA]->(r1)  
            MERGE (c1)-[:INCLUYE_PARTIDA]->(p1);

MERGE (c2:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p2:Partida {
                id: "Wijk aan Zee NED-2",
                fecha: "2022.01.25",
                ronda: "9.2",
                nombre: "Rapport,R vs Vidit,S",
                cantidad_movimientos: "59"
            })

            MERGE (a2:Apertura {
                nombre: "A45"
            })

            MERGE (r2:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_2:Jugador {nombre: "Rapport,R"})
            MERGE (j2_2:Jugador {nombre: "Vidit,S"})

            MERGE (j1_2)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p2)
            MERGE (j2_2)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p2)
            
            
                        
            MERGE (p2)-[:TIENE_APERTURA]->(a2)

            MERGE (p2)-[:RESULTADO_DE_PARTIDA]->(r2)  
            MERGE (c2)-[:INCLUYE_PARTIDA]->(p2);

MERGE (c3:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p3:Partida {
                id: "Wijk aan Zee NED-3",
                fecha: "2022.01.25",
                ronda: "9.3",
                nombre: "Giri,A vs Shankland,S",
                cantidad_movimientos: "34"
            })

            MERGE (a3:Apertura {
                nombre: "A07"
            })

            MERGE (r3:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_3:Jugador {nombre: "Giri,A"})
            MERGE (j2_3:Jugador {nombre: "Shankland,S"})

            MERGE (j1_3)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p3)
            MERGE (j2_3)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p3)
            
            
                        
            MERGE (p3)-[:TIENE_APERTURA]->(a3)

            MERGE (p3)-[:RESULTADO_DE_PARTIDA]->(r3)  
            MERGE (c3)-[:INCLUYE_PARTIDA]->(p3);

MERGE (c4:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p4:Partida {
                id: "Wijk aan Zee NED-4",
                fecha: "2022.01.25",
                ronda: "9.4",
                nombre: "Duda,J vs Esipenko,Andrey",
                cantidad_movimientos: "43"
            })

            MERGE (a4:Apertura {
                nombre: "E00"
            })

            MERGE (r4:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_4:Jugador {nombre: "Duda,J"})
            MERGE (j2_4:Jugador {nombre: "Esipenko,Andrey"})

            MERGE (j1_4)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p4)
            MERGE (j2_4)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p4)
            
            
                        
            MERGE (p4)-[:TIENE_APERTURA]->(a4)

            MERGE (p4)-[:RESULTADO_DE_PARTIDA]->(r4)  
            MERGE (c4)-[:INCLUYE_PARTIDA]->(p4);

MERGE (c5:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p5:Partida {
                id: "Wijk aan Zee NED-5",
                fecha: "2022.01.25",
                ronda: "9.5",
                nombre: "Van Foreest,Jorden vs Dubov,Daniil",
                cantidad_movimientos: "35"
            })

            MERGE (a5:Apertura {
                nombre: "C90"
            })

            MERGE (r5:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_5:Jugador {nombre: "Van Foreest,Jorden"})
            MERGE (j2_5:Jugador {nombre: "Dubov,Daniil"})

            MERGE (j1_5)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p5)
            MERGE (j2_5)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p5)
            
            
                        
            MERGE (p5)-[:TIENE_APERTURA]->(a5)

            MERGE (p5)-[:RESULTADO_DE_PARTIDA]->(r5)  
            MERGE (c5)-[:INCLUYE_PARTIDA]->(p5);

MERGE (c6:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p6:Partida {
                id: "Wijk aan Zee NED-6",
                fecha: "2022.01.25",
                ronda: "9.6",
                nombre: "Praggnanandhaa,R vs Karjakin,Sergey",
                cantidad_movimientos: "54"
            })

            MERGE (a6:Apertura {
                nombre: "D02"
            })

            MERGE (r6:Resultado {
                nombre: "negras"
            })

            MERGE (j1_6:Jugador {nombre: "Praggnanandhaa,R"})
            MERGE (j2_6:Jugador {nombre: "Karjakin,Sergey"})

            MERGE (j1_6)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p6)
            MERGE (j2_6)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p6)
            
            
                        
            MERGE (p6)-[:TIENE_APERTURA]->(a6)

            MERGE (p6)-[:RESULTADO_DE_PARTIDA]->(r6)  
            MERGE (c6)-[:INCLUYE_PARTIDA]->(p6);

MERGE (c7:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p7:Partida {
                id: "Wijk aan Zee NED-7",
                fecha: "2022.01.25",
                ronda: "9.7",
                nombre: "Grandelius,N vs Caruana,F",
                cantidad_movimientos: "45"
            })

            MERGE (a7:Apertura {
                nombre: "C02"
            })

            MERGE (r7:Resultado {
                nombre: "negras"
            })

            MERGE (j1_7:Jugador {nombre: "Grandelius,N"})
            MERGE (j2_7:Jugador {nombre: "Caruana,F"})

            MERGE (j1_7)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p7)
            MERGE (j2_7)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p7)
            
            
                        
            MERGE (p7)-[:TIENE_APERTURA]->(a7)

            MERGE (p7)-[:RESULTADO_DE_PARTIDA]->(r7)  
            MERGE (c7)-[:INCLUYE_PARTIDA]->(p7);

MERGE (c8:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p8:Partida {
                id: "Wijk aan Zee NED-8",
                fecha: "2022.01.26",
                ronda: "10.1",
                nombre: "Karjakin,Sergey vs Carlsen,M",
                cantidad_movimientos: "17"
            })

            MERGE (a8:Apertura {
                nombre: "C67"
            })

            MERGE (r8:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_8:Jugador {nombre: "Karjakin,Sergey"})
            MERGE (j2_8:Jugador {nombre: "Carlsen,M"})

            MERGE (j1_8)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p8)
            MERGE (j2_8)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p8)
            
            
                        
            MERGE (p8)-[:TIENE_APERTURA]->(a8)

            MERGE (p8)-[:RESULTADO_DE_PARTIDA]->(r8)  
            MERGE (c8)-[:INCLUYE_PARTIDA]->(p8);

MERGE (c9:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p9:Partida {
                id: "Wijk aan Zee NED-9",
                fecha: "2022.01.26",
                ronda: "10.2",
                nombre: "Giri,A vs Duda,J",
                cantidad_movimientos: "39"
            })

            MERGE (a9:Apertura {
                nombre: "A18"
            })

            MERGE (r9:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_9:Jugador {nombre: "Giri,A"})
            MERGE (j2_9:Jugador {nombre: "Duda,J"})

            MERGE (j1_9)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p9)
            MERGE (j2_9)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p9)
            
            
                        
            MERGE (p9)-[:TIENE_APERTURA]->(a9)

            MERGE (p9)-[:RESULTADO_DE_PARTIDA]->(r9)  
            MERGE (c9)-[:INCLUYE_PARTIDA]->(p9);

MERGE (c10:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p10:Partida {
                id: "Wijk aan Zee NED-10",
                fecha: "2022.01.26",
                ronda: "10.3",
                nombre: "Shankland,S vs Mamedyarov,S",
                cantidad_movimientos: "30"
            })

            MERGE (a10:Apertura {
                nombre: "E04"
            })

            MERGE (r10:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_10:Jugador {nombre: "Shankland,S"})
            MERGE (j2_10:Jugador {nombre: "Mamedyarov,S"})

            MERGE (j1_10)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p10)
            MERGE (j2_10)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p10)
            
            
                        
            MERGE (p10)-[:TIENE_APERTURA]->(a10)

            MERGE (p10)-[:RESULTADO_DE_PARTIDA]->(r10)  
            MERGE (c10)-[:INCLUYE_PARTIDA]->(p10);

MERGE (c11:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p11:Partida {
                id: "Wijk aan Zee NED-11",
                fecha: "2022.01.26",
                ronda: "10.4",
                nombre: "Vidit,S vs Praggnanandhaa,R",
                cantidad_movimientos: "79"
            })

            MERGE (a11:Apertura {
                nombre: "E32"
            })

            MERGE (r11:Resultado {
                nombre: "negras"
            })

            MERGE (j1_11:Jugador {nombre: "Vidit,S"})
            MERGE (j2_11:Jugador {nombre: "Praggnanandhaa,R"})

            MERGE (j1_11)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p11)
            MERGE (j2_11)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p11)
            
            
                        
            MERGE (p11)-[:TIENE_APERTURA]->(a11)

            MERGE (p11)-[:RESULTADO_DE_PARTIDA]->(r11)  
            MERGE (c11)-[:INCLUYE_PARTIDA]->(p11);

MERGE (c12:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p12:Partida {
                id: "Wijk aan Zee NED-12",
                fecha: "2022.01.26",
                ronda: "10.5",
                nombre: "Caruana,F vs Rapport,R",
                cantidad_movimientos: "43"
            })

            MERGE (a12:Apertura {
                nombre: "A19"
            })

            MERGE (r12:Resultado {
                nombre: "negras"
            })

            MERGE (j1_12:Jugador {nombre: "Caruana,F"})
            MERGE (j2_12:Jugador {nombre: "Rapport,R"})

            MERGE (j1_12)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p12)
            MERGE (j2_12)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p12)
            
            
                        
            MERGE (p12)-[:TIENE_APERTURA]->(a12)

            MERGE (p12)-[:RESULTADO_DE_PARTIDA]->(r12)  
            MERGE (c12)-[:INCLUYE_PARTIDA]->(p12);

MERGE (c13:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p13:Partida {
                id: "Wijk aan Zee NED-13",
                fecha: "2022.01.26",
                ronda: "10.6",
                nombre: "Esipenko,Andrey vs Van Foreest,Jorden",
                cantidad_movimientos: "60"
            })

            MERGE (a13:Apertura {
                nombre: "C50"
            })

            MERGE (r13:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_13:Jugador {nombre: "Esipenko,Andrey"})
            MERGE (j2_13:Jugador {nombre: "Van Foreest,Jorden"})

            MERGE (j1_13)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p13)
            MERGE (j2_13)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p13)
            
            
                        
            MERGE (p13)-[:TIENE_APERTURA]->(a13)

            MERGE (p13)-[:RESULTADO_DE_PARTIDA]->(r13)  
            MERGE (c13)-[:INCLUYE_PARTIDA]->(p13);

MERGE (c14:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p14:Partida {
                id: "Wijk aan Zee NED-14",
                fecha: "2022.01.26",
                ronda: "10.7",
                nombre: "Dubov,Daniil vs Grandelius,N",
                cantidad_movimientos: "83"
            })

            MERGE (a14:Apertura {
                nombre: "B52"
            })

            MERGE (r14:Resultado {
                nombre: "negras"
            })

            MERGE (j1_14:Jugador {nombre: "Dubov,Daniil"})
            MERGE (j2_14:Jugador {nombre: "Grandelius,N"})

            MERGE (j1_14)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p14)
            MERGE (j2_14)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p14)
            
            
                        
            MERGE (p14)-[:TIENE_APERTURA]->(a14)

            MERGE (p14)-[:RESULTADO_DE_PARTIDA]->(r14)  
            MERGE (c14)-[:INCLUYE_PARTIDA]->(p14);

MERGE (c15:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p15:Partida {
                id: "Wijk aan Zee NED-15",
                fecha: "2022.01.28",
                ronda: "11.1",
                nombre: "Carlsen,M vs Vidit,S",
                cantidad_movimientos: "52"
            })

            MERGE (a15:Apertura {
                nombre: "C50"
            })

            MERGE (r15:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_15:Jugador {nombre: "Carlsen,M"})
            MERGE (j2_15:Jugador {nombre: "Vidit,S"})

            MERGE (j1_15)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p15)
            MERGE (j2_15)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p15)
            
            
                        
            MERGE (p15)-[:TIENE_APERTURA]->(a15)

            MERGE (p15)-[:RESULTADO_DE_PARTIDA]->(r15)  
            MERGE (c15)-[:INCLUYE_PARTIDA]->(p15);

MERGE (c16:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p16:Partida {
                id: "Wijk aan Zee NED-16",
                fecha: "2022.01.28",
                ronda: "11.2",
                nombre: "Van Foreest,Jorden vs Giri,A",
                cantidad_movimientos: "42"
            })

            MERGE (a16:Apertura {
                nombre: "E24"
            })

            MERGE (r16:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_16:Jugador {nombre: "Van Foreest,Jorden"})
            MERGE (j2_16:Jugador {nombre: "Giri,A"})

            MERGE (j1_16)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p16)
            MERGE (j2_16)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p16)
            
            
                        
            MERGE (p16)-[:TIENE_APERTURA]->(a16)

            MERGE (p16)-[:RESULTADO_DE_PARTIDA]->(r16)  
            MERGE (c16)-[:INCLUYE_PARTIDA]->(p16);

MERGE (c17:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p17:Partida {
                id: "Wijk aan Zee NED-17",
                fecha: "2022.01.28",
                ronda: "11.3",
                nombre: "Mamedyarov,S vs Karjakin,Sergey",
                cantidad_movimientos: "24"
            })

            MERGE (a17:Apertura {
                nombre: "C53"
            })

            MERGE (r17:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_17:Jugador {nombre: "Mamedyarov,S"})
            MERGE (j2_17:Jugador {nombre: "Karjakin,Sergey"})

            MERGE (j1_17)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p17)
            MERGE (j2_17)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p17)
            
            
                        
            MERGE (p17)-[:TIENE_APERTURA]->(a17)

            MERGE (p17)-[:RESULTADO_DE_PARTIDA]->(r17)  
            MERGE (c17)-[:INCLUYE_PARTIDA]->(p17);

MERGE (c18:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p18:Partida {
                id: "Wijk aan Zee NED-18",
                fecha: "2022.01.28",
                ronda: "11.4",
                nombre: "Grandelius,N vs Esipenko,Andrey",
                cantidad_movimientos: "38"
            })

            MERGE (a18:Apertura {
                nombre: "C84"
            })

            MERGE (r18:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_18:Jugador {nombre: "Grandelius,N"})
            MERGE (j2_18:Jugador {nombre: "Esipenko,Andrey"})

            MERGE (j1_18)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p18)
            MERGE (j2_18)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p18)
            
            
                        
            MERGE (p18)-[:TIENE_APERTURA]->(a18)

            MERGE (p18)-[:RESULTADO_DE_PARTIDA]->(r18)  
            MERGE (c18)-[:INCLUYE_PARTIDA]->(p18);

MERGE (c19:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p19:Partida {
                id: "Wijk aan Zee NED-19",
                fecha: "2022.01.28",
                ronda: "11.5",
                nombre: "Praggnanandhaa,R vs Caruana,F",
                cantidad_movimientos: "47"
            })

            MERGE (a19:Apertura {
                nombre: "D45"
            })

            MERGE (r19:Resultado {
                nombre: "negras"
            })

            MERGE (j1_19:Jugador {nombre: "Praggnanandhaa,R"})
            MERGE (j2_19:Jugador {nombre: "Caruana,F"})

            MERGE (j1_19)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p19)
            MERGE (j2_19)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p19)
            
            
                        
            MERGE (p19)-[:TIENE_APERTURA]->(a19)

            MERGE (p19)-[:RESULTADO_DE_PARTIDA]->(r19)  
            MERGE (c19)-[:INCLUYE_PARTIDA]->(p19);

MERGE (c20:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p20:Partida {
                id: "Wijk aan Zee NED-20",
                fecha: "2022.01.28",
                ronda: "11.6",
                nombre: "Duda,J vs Shankland,S",
                cantidad_movimientos: "10"
            })

            MERGE (a20:Apertura {
                nombre: "D02"
            })

            MERGE (r20:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_20:Jugador {nombre: "Duda,J"})
            MERGE (j2_20:Jugador {nombre: "Shankland,S"})

            MERGE (j1_20)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p20)
            MERGE (j2_20)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p20)
            
            
                        
            MERGE (p20)-[:TIENE_APERTURA]->(a20)

            MERGE (p20)-[:RESULTADO_DE_PARTIDA]->(r20)  
            MERGE (c20)-[:INCLUYE_PARTIDA]->(p20);

MERGE (c21:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p21:Partida {
                id: "Wijk aan Zee NED-21",
                fecha: "2022.01.28",
                ronda: "11.7",
                nombre: "Rapport,R vs Dubov,Daniil",
                cantidad_movimientos: "1"
            })

            MERGE (a21:Apertura {
                nombre: ""
            })

            MERGE (r21:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_21:Jugador {nombre: "Rapport,R"})
            MERGE (j2_21:Jugador {nombre: "Dubov,Daniil"})

            MERGE (j1_21)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p21)
            MERGE (j2_21)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p21)
            
            
                        
            MERGE (p21)-[:TIENE_APERTURA]->(a21)

            MERGE (p21)-[:RESULTADO_DE_PARTIDA]->(r21)  
            MERGE (c21)-[:INCLUYE_PARTIDA]->(p21);

MERGE (c22:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p22:Partida {
                id: "Wijk aan Zee NED-22",
                fecha: "2022.01.29",
                ronda: "12.1",
                nombre: "Caruana,F vs Carlsen,M",
                cantidad_movimientos: "50"
            })

            MERGE (a22:Apertura {
                nombre: "B31"
            })

            MERGE (r22:Resultado {
                nombre: "negras"
            })

            MERGE (j1_22:Jugador {nombre: "Caruana,F"})
            MERGE (j2_22:Jugador {nombre: "Carlsen,M"})

            MERGE (j1_22)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p22)
            MERGE (j2_22)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p22)
            
            
                        
            MERGE (p22)-[:TIENE_APERTURA]->(a22)

            MERGE (p22)-[:RESULTADO_DE_PARTIDA]->(r22)  
            MERGE (c22)-[:INCLUYE_PARTIDA]->(p22);

MERGE (c23:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p23:Partida {
                id: "Wijk aan Zee NED-23",
                fecha: "2022.01.29",
                ronda: "12.2",
                nombre: "Esipenko,Andrey vs Rapport,R",
                cantidad_movimientos: "36"
            })

            MERGE (a23:Apertura {
                nombre: "C65"
            })

            MERGE (r23:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_23:Jugador {nombre: "Esipenko,Andrey"})
            MERGE (j2_23:Jugador {nombre: "Rapport,R"})

            MERGE (j1_23)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p23)
            MERGE (j2_23)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p23)
            
            
                        
            MERGE (p23)-[:TIENE_APERTURA]->(a23)

            MERGE (p23)-[:RESULTADO_DE_PARTIDA]->(r23)  
            MERGE (c23)-[:INCLUYE_PARTIDA]->(p23);

MERGE (c24:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p24:Partida {
                id: "Wijk aan Zee NED-24",
                fecha: "2022.01.29",
                ronda: "12.3",
                nombre: "Vidit,S vs Mamedyarov,S",
                cantidad_movimientos: "39"
            })

            MERGE (a24:Apertura {
                nombre: "C53"
            })

            MERGE (r24:Resultado {
                nombre: "negras"
            })

            MERGE (j1_24:Jugador {nombre: "Vidit,S"})
            MERGE (j2_24:Jugador {nombre: "Mamedyarov,S"})

            MERGE (j1_24)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p24)
            MERGE (j2_24)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p24)
            
            
                        
            MERGE (p24)-[:TIENE_APERTURA]->(a24)

            MERGE (p24)-[:RESULTADO_DE_PARTIDA]->(r24)  
            MERGE (c24)-[:INCLUYE_PARTIDA]->(p24);

MERGE (c25:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p25:Partida {
                id: "Wijk aan Zee NED-25",
                fecha: "2022.01.29",
                ronda: "12.4",
                nombre: "Giri,A vs Grandelius,N",
                cantidad_movimientos: "25"
            })

            MERGE (a25:Apertura {
                nombre: "E60"
            })

            MERGE (r25:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_25:Jugador {nombre: "Giri,A"})
            MERGE (j2_25:Jugador {nombre: "Grandelius,N"})

            MERGE (j1_25)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p25)
            MERGE (j2_25)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p25)
            
            
                        
            MERGE (p25)-[:TIENE_APERTURA]->(a25)

            MERGE (p25)-[:RESULTADO_DE_PARTIDA]->(r25)  
            MERGE (c25)-[:INCLUYE_PARTIDA]->(p25);

MERGE (c26:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p26:Partida {
                id: "Wijk aan Zee NED-26",
                fecha: "2022.01.29",
                ronda: "12.5",
                nombre: "Shankland,S vs Karjakin,Sergey",
                cantidad_movimientos: "26"
            })

            MERGE (a26:Apertura {
                nombre: "E20"
            })

            MERGE (r26:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_26:Jugador {nombre: "Shankland,S"})
            MERGE (j2_26:Jugador {nombre: "Karjakin,Sergey"})

            MERGE (j1_26)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p26)
            MERGE (j2_26)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p26)
            
            
                        
            MERGE (p26)-[:TIENE_APERTURA]->(a26)

            MERGE (p26)-[:RESULTADO_DE_PARTIDA]->(r26)  
            MERGE (c26)-[:INCLUYE_PARTIDA]->(p26);

MERGE (c27:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p27:Partida {
                id: "Wijk aan Zee NED-27",
                fecha: "2022.01.29",
                ronda: "12.6",
                nombre: "Duda,J vs Van Foreest,Jorden",
                cantidad_movimientos: "44"
            })

            MERGE (a27:Apertura {
                nombre: "D43"
            })

            MERGE (r27:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_27:Jugador {nombre: "Duda,J"})
            MERGE (j2_27:Jugador {nombre: "Van Foreest,Jorden"})

            MERGE (j1_27)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p27)
            MERGE (j2_27)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p27)
            
            
                        
            MERGE (p27)-[:TIENE_APERTURA]->(a27)

            MERGE (p27)-[:RESULTADO_DE_PARTIDA]->(r27)  
            MERGE (c27)-[:INCLUYE_PARTIDA]->(p27);

MERGE (c28:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p28:Partida {
                id: "Wijk aan Zee NED-28",
                fecha: "2022.01.29",
                ronda: "12.7",
                nombre: "Dubov,Daniil vs Praggnanandhaa,R",
                cantidad_movimientos: "1"
            })

            MERGE (a28:Apertura {
                nombre: ""
            })

            MERGE (r28:Resultado {
                nombre: "negras"
            })

            MERGE (j1_28:Jugador {nombre: "Dubov,Daniil"})
            MERGE (j2_28:Jugador {nombre: "Praggnanandhaa,R"})

            MERGE (j1_28)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p28)
            MERGE (j2_28)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p28)
            
            
                        
            MERGE (p28)-[:TIENE_APERTURA]->(a28)

            MERGE (p28)-[:RESULTADO_DE_PARTIDA]->(r28)  
            MERGE (c28)-[:INCLUYE_PARTIDA]->(p28);

MERGE (c29:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p29:Partida {
                id: "Wijk aan Zee NED-29",
                fecha: "2022.01.30",
                ronda: "13.1",
                nombre: "Rapport,R vs Giri,A",
                cantidad_movimientos: "14"
            })

            MERGE (a29:Apertura {
                nombre: "D85"
            })

            MERGE (r29:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_29:Jugador {nombre: "Rapport,R"})
            MERGE (j2_29:Jugador {nombre: "Giri,A"})

            MERGE (j1_29)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p29)
            MERGE (j2_29)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p29)
            
            
                        
            MERGE (p29)-[:TIENE_APERTURA]->(a29)

            MERGE (p29)-[:RESULTADO_DE_PARTIDA]->(r29)  
            MERGE (c29)-[:INCLUYE_PARTIDA]->(p29);

MERGE (c30:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p30:Partida {
                id: "Wijk aan Zee NED-30",
                fecha: "2022.01.30",
                ronda: "13.2",
                nombre: "Mamedyarov,S vs Caruana,F",
                cantidad_movimientos: "13"
            })

            MERGE (a30:Apertura {
                nombre: "D37"
            })

            MERGE (r30:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_30:Jugador {nombre: "Mamedyarov,S"})
            MERGE (j2_30:Jugador {nombre: "Caruana,F"})

            MERGE (j1_30)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p30)
            MERGE (j2_30)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p30)
            
            
                        
            MERGE (p30)-[:TIENE_APERTURA]->(a30)

            MERGE (p30)-[:RESULTADO_DE_PARTIDA]->(r30)  
            MERGE (c30)-[:INCLUYE_PARTIDA]->(p30);

MERGE (c31:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p31:Partida {
                id: "Wijk aan Zee NED-31",
                fecha: "2022.01.30",
                ronda: "13.3",
                nombre: "Praggnanandhaa,R vs Esipenko,Andrey",
                cantidad_movimientos: "59"
            })

            MERGE (a31:Apertura {
                nombre: "E29"
            })

            MERGE (r31:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_31:Jugador {nombre: "Praggnanandhaa,R"})
            MERGE (j2_31:Jugador {nombre: "Esipenko,Andrey"})

            MERGE (j1_31)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p31)
            MERGE (j2_31)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p31)
            
            
                        
            MERGE (p31)-[:TIENE_APERTURA]->(a31)

            MERGE (p31)-[:RESULTADO_DE_PARTIDA]->(r31)  
            MERGE (c31)-[:INCLUYE_PARTIDA]->(p31);

MERGE (c32:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p32:Partida {
                id: "Wijk aan Zee NED-32",
                fecha: "2022.01.30",
                ronda: "13.4",
                nombre: "Karjakin,Sergey vs Vidit,S",
                cantidad_movimientos: "64"
            })

            MERGE (a32:Apertura {
                nombre: "C47"
            })

            MERGE (r32:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_32:Jugador {nombre: "Karjakin,Sergey"})
            MERGE (j2_32:Jugador {nombre: "Vidit,S"})

            MERGE (j1_32)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p32)
            MERGE (j2_32)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p32)
            
            
                        
            MERGE (p32)-[:TIENE_APERTURA]->(a32)

            MERGE (p32)-[:RESULTADO_DE_PARTIDA]->(r32)  
            MERGE (c32)-[:INCLUYE_PARTIDA]->(p32);

MERGE (c33:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p33:Partida {
                id: "Wijk aan Zee NED-33",
                fecha: "2022.01.30",
                ronda: "13.5",
                nombre: "Van Foreest,Jorden vs Shankland,S",
                cantidad_movimientos: "69"
            })

            MERGE (a33:Apertura {
                nombre: "D02"
            })

            MERGE (r33:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_33:Jugador {nombre: "Van Foreest,Jorden"})
            MERGE (j2_33:Jugador {nombre: "Shankland,S"})

            MERGE (j1_33)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p33)
            MERGE (j2_33)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p33)
            
            
                        
            MERGE (p33)-[:TIENE_APERTURA]->(a33)

            MERGE (p33)-[:RESULTADO_DE_PARTIDA]->(r33)  
            MERGE (c33)-[:INCLUYE_PARTIDA]->(p33);

MERGE (c34:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p34:Partida {
                id: "Wijk aan Zee NED-34",
                fecha: "2022.01.30",
                ronda: "13.6",
                nombre: "Grandelius,N vs Duda,J",
                cantidad_movimientos: "41"
            })

            MERGE (a34:Apertura {
                nombre: "B66"
            })

            MERGE (r34:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_34:Jugador {nombre: "Grandelius,N"})
            MERGE (j2_34:Jugador {nombre: "Duda,J"})

            MERGE (j1_34)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p34)
            MERGE (j2_34)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p34)
            
            
                        
            MERGE (p34)-[:TIENE_APERTURA]->(a34)

            MERGE (p34)-[:RESULTADO_DE_PARTIDA]->(r34)  
            MERGE (c34)-[:INCLUYE_PARTIDA]->(p34);

MERGE (c35:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p35:Partida {
                id: "Wijk aan Zee NED-35",
                fecha: "2022.01.30",
                ronda: "13.7",
                nombre: "Carlsen,M vs Dubov,Daniil",
                cantidad_movimientos: "1"
            })

            MERGE (a35:Apertura {
                nombre: ""
            })

            MERGE (r35:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_35:Jugador {nombre: "Carlsen,M"})
            MERGE (j2_35:Jugador {nombre: "Dubov,Daniil"})

            MERGE (j1_35)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p35)
            MERGE (j2_35)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p35)
            
            
                        
            MERGE (p35)-[:TIENE_APERTURA]->(a35)

            MERGE (p35)-[:RESULTADO_DE_PARTIDA]->(r35)  
            MERGE (c35)-[:INCLUYE_PARTIDA]->(p35);

MERGE (c36:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p36:Partida {
                id: "Wijk aan Zee NED-36",
                fecha: "2022.01.25",
                ronda: "9.1",
                nombre: "Zhu,Jiner vs Erigaisi,Arjun",
                cantidad_movimientos: "53"
            })

            MERGE (a36:Apertura {
                nombre: "C70"
            })

            MERGE (r36:Resultado {
                nombre: "negras"
            })

            MERGE (j1_36:Jugador {nombre: "Zhu,Jiner"})
            MERGE (j2_36:Jugador {nombre: "Erigaisi,Arjun"})

            MERGE (j1_36)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p36)
            MERGE (j2_36)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p36)
            
            
                        
            MERGE (p36)-[:TIENE_APERTURA]->(a36)

            MERGE (p36)-[:RESULTADO_DE_PARTIDA]->(r36)  
            MERGE (c36)-[:INCLUYE_PARTIDA]->(p36);

MERGE (c37:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p37:Partida {
                id: "Wijk aan Zee NED-37",
                fecha: "2022.01.25",
                ronda: "9.2",
                nombre: "Nguyen,Thai Dai Van vs Warmerdam,Max",
                cantidad_movimientos: "28"
            })

            MERGE (a37:Apertura {
                nombre: "B51"
            })

            MERGE (r37:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_37:Jugador {nombre: "Nguyen,Thai Dai Van"})
            MERGE (j2_37:Jugador {nombre: "Warmerdam,Max"})

            MERGE (j1_37)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p37)
            MERGE (j2_37)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p37)
            
            
                        
            MERGE (p37)-[:TIENE_APERTURA]->(a37)

            MERGE (p37)-[:RESULTADO_DE_PARTIDA]->(r37)  
            MERGE (c37)-[:INCLUYE_PARTIDA]->(p37);

MERGE (c38:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p38:Partida {
                id: "Wijk aan Zee NED-38",
                fecha: "2022.01.25",
                ronda: "9.3",
                nombre: "Jumabayev,R vs Murzin,Volodar",
                cantidad_movimientos: "41"
            })

            MERGE (a38:Apertura {
                nombre: "D11"
            })

            MERGE (r38:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_38:Jugador {nombre: "Jumabayev,R"})
            MERGE (j2_38:Jugador {nombre: "Murzin,Volodar"})

            MERGE (j1_38)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p38)
            MERGE (j2_38)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p38)
            
            
                        
            MERGE (p38)-[:TIENE_APERTURA]->(a38)

            MERGE (p38)-[:RESULTADO_DE_PARTIDA]->(r38)  
            MERGE (c38)-[:INCLUYE_PARTIDA]->(p38);

MERGE (c39:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p39:Partida {
                id: "Wijk aan Zee NED-39",
                fecha: "2022.01.25",
                ronda: "9.4",
                nombre: "Bjerre,Jonas Buhl vs Ganguly,S",
                cantidad_movimientos: "61"
            })

            MERGE (a39:Apertura {
                nombre: "D40"
            })

            MERGE (r39:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_39:Jugador {nombre: "Bjerre,Jonas Buhl"})
            MERGE (j2_39:Jugador {nombre: "Ganguly,S"})

            MERGE (j1_39)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p39)
            MERGE (j2_39)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p39)
            
            
                        
            MERGE (p39)-[:TIENE_APERTURA]->(a39)

            MERGE (p39)-[:RESULTADO_DE_PARTIDA]->(r39)  
            MERGE (c39)-[:INCLUYE_PARTIDA]->(p39);

MERGE (c40:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p40:Partida {
                id: "Wijk aan Zee NED-40",
                fecha: "2022.01.25",
                ronda: "9.5",
                nombre: "Maurizzi,Marc'Andria vs Van Foreest,Lucas",
                cantidad_movimientos: "27"
            })

            MERGE (a40:Apertura {
                nombre: "D27"
            })

            MERGE (r40:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_40:Jugador {nombre: "Maurizzi,Marc'Andria"})
            MERGE (j2_40:Jugador {nombre: "Van Foreest,Lucas"})

            MERGE (j1_40)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p40)
            MERGE (j2_40)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p40)
            
            
                        
            MERGE (p40)-[:TIENE_APERTURA]->(a40)

            MERGE (p40)-[:RESULTADO_DE_PARTIDA]->(r40)  
            MERGE (c40)-[:INCLUYE_PARTIDA]->(p40);

MERGE (c41:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p41:Partida {
                id: "Wijk aan Zee NED-41",
                fecha: "2022.01.25",
                ronda: "9.6",
                nombre: "L'Ami,E vs Dardha,Daniel",
                cantidad_movimientos: "95"
            })

            MERGE (a41:Apertura {
                nombre: "D37"
            })

            MERGE (r41:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_41:Jugador {nombre: "L'Ami,E"})
            MERGE (j2_41:Jugador {nombre: "Dardha,Daniel"})

            MERGE (j1_41)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p41)
            MERGE (j2_41)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p41)
            
            
                        
            MERGE (p41)-[:TIENE_APERTURA]->(a41)

            MERGE (p41)-[:RESULTADO_DE_PARTIDA]->(r41)  
            MERGE (c41)-[:INCLUYE_PARTIDA]->(p41);

MERGE (c42:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p42:Partida {
                id: "Wijk aan Zee NED-42",
                fecha: "2022.01.25",
                ronda: "9.7",
                nombre: "Shuvalova,Polina vs Vogel,Roven",
                cantidad_movimientos: "28"
            })

            MERGE (a42:Apertura {
                nombre: "C67"
            })

            MERGE (r42:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_42:Jugador {nombre: "Shuvalova,Polina"})
            MERGE (j2_42:Jugador {nombre: "Vogel,Roven"})

            MERGE (j1_42)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p42)
            MERGE (j2_42)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p42)
            
            
                        
            MERGE (p42)-[:TIENE_APERTURA]->(a42)

            MERGE (p42)-[:RESULTADO_DE_PARTIDA]->(r42)  
            MERGE (c42)-[:INCLUYE_PARTIDA]->(p42);

MERGE (c43:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p43:Partida {
                id: "Wijk aan Zee NED-43",
                fecha: "2022.01.26",
                ronda: "10.1",
                nombre: "Erigaisi,Arjun vs Shuvalova,Polina",
                cantidad_movimientos: "31"
            })

            MERGE (a43:Apertura {
                nombre: "D50"
            })

            MERGE (r43:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_43:Jugador {nombre: "Erigaisi,Arjun"})
            MERGE (j2_43:Jugador {nombre: "Shuvalova,Polina"})

            MERGE (j1_43)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p43)
            MERGE (j2_43)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p43)
            
            
                        
            MERGE (p43)-[:TIENE_APERTURA]->(a43)

            MERGE (p43)-[:RESULTADO_DE_PARTIDA]->(r43)  
            MERGE (c43)-[:INCLUYE_PARTIDA]->(p43);

MERGE (c44:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p44:Partida {
                id: "Wijk aan Zee NED-44",
                fecha: "2022.01.26",
                ronda: "10.2",
                nombre: "Jumabayev,R vs Bjerre,Jonas Buhl",
                cantidad_movimientos: "58"
            })

            MERGE (a44:Apertura {
                nombre: "E04"
            })

            MERGE (r44:Resultado {
                nombre: "negras"
            })

            MERGE (j1_44:Jugador {nombre: "Jumabayev,R"})
            MERGE (j2_44:Jugador {nombre: "Bjerre,Jonas Buhl"})

            MERGE (j1_44)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p44)
            MERGE (j2_44)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p44)
            
            
                        
            MERGE (p44)-[:TIENE_APERTURA]->(a44)

            MERGE (p44)-[:RESULTADO_DE_PARTIDA]->(r44)  
            MERGE (c44)-[:INCLUYE_PARTIDA]->(p44);

MERGE (c45:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p45:Partida {
                id: "Wijk aan Zee NED-45",
                fecha: "2022.01.26",
                ronda: "10.3",
                nombre: "Dardha,Daniel vs Nguyen,Thai Dai Van",
                cantidad_movimientos: "18"
            })

            MERGE (a45:Apertura {
                nombre: "E06"
            })

            MERGE (r45:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_45:Jugador {nombre: "Dardha,Daniel"})
            MERGE (j2_45:Jugador {nombre: "Nguyen,Thai Dai Van"})

            MERGE (j1_45)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p45)
            MERGE (j2_45)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p45)
            
            
                        
            MERGE (p45)-[:TIENE_APERTURA]->(a45)

            MERGE (p45)-[:RESULTADO_DE_PARTIDA]->(r45)  
            MERGE (c45)-[:INCLUYE_PARTIDA]->(p45);

MERGE (c46:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p46:Partida {
                id: "Wijk aan Zee NED-46",
                fecha: "2022.01.26",
                ronda: "10.4",
                nombre: "Murzin,Volodar vs Van Foreest,Lucas",
                cantidad_movimientos: "43"
            })

            MERGE (a46:Apertura {
                nombre: "C78"
            })

            MERGE (r46:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_46:Jugador {nombre: "Murzin,Volodar"})
            MERGE (j2_46:Jugador {nombre: "Van Foreest,Lucas"})

            MERGE (j1_46)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p46)
            MERGE (j2_46)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p46)
            
            
                        
            MERGE (p46)-[:TIENE_APERTURA]->(a46)

            MERGE (p46)-[:RESULTADO_DE_PARTIDA]->(r46)  
            MERGE (c46)-[:INCLUYE_PARTIDA]->(p46);

MERGE (c47:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p47:Partida {
                id: "Wijk aan Zee NED-47",
                fecha: "2022.01.26",
                ronda: "10.5",
                nombre: "Warmerdam,Max vs Maurizzi,Marc'Andria",
                cantidad_movimientos: "47"
            })

            MERGE (a47:Apertura {
                nombre: "E06"
            })

            MERGE (r47:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_47:Jugador {nombre: "Warmerdam,Max"})
            MERGE (j2_47:Jugador {nombre: "Maurizzi,Marc'Andria"})

            MERGE (j1_47)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p47)
            MERGE (j2_47)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p47)
            
            
                        
            MERGE (p47)-[:TIENE_APERTURA]->(a47)

            MERGE (p47)-[:RESULTADO_DE_PARTIDA]->(r47)  
            MERGE (c47)-[:INCLUYE_PARTIDA]->(p47);

MERGE (c48:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p48:Partida {
                id: "Wijk aan Zee NED-48",
                fecha: "2022.01.26",
                ronda: "10.6",
                nombre: "Vogel,Roven vs L'Ami,E",
                cantidad_movimientos: "64"
            })

            MERGE (a48:Apertura {
                nombre: "D37"
            })

            MERGE (r48:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_48:Jugador {nombre: "Vogel,Roven"})
            MERGE (j2_48:Jugador {nombre: "L'Ami,E"})

            MERGE (j1_48)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p48)
            MERGE (j2_48)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p48)
            
            
                        
            MERGE (p48)-[:TIENE_APERTURA]->(a48)

            MERGE (p48)-[:RESULTADO_DE_PARTIDA]->(r48)  
            MERGE (c48)-[:INCLUYE_PARTIDA]->(p48);

MERGE (c49:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p49:Partida {
                id: "Wijk aan Zee NED-49",
                fecha: "2022.01.26",
                ronda: "10.7",
                nombre: "Ganguly,S vs Zhu,Jiner",
                cantidad_movimientos: "36"
            })

            MERGE (a49:Apertura {
                nombre: "A16"
            })

            MERGE (r49:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_49:Jugador {nombre: "Ganguly,S"})
            MERGE (j2_49:Jugador {nombre: "Zhu,Jiner"})

            MERGE (j1_49)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p49)
            MERGE (j2_49)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p49)
            
            
                        
            MERGE (p49)-[:TIENE_APERTURA]->(a49)

            MERGE (p49)-[:RESULTADO_DE_PARTIDA]->(r49)  
            MERGE (c49)-[:INCLUYE_PARTIDA]->(p49);

MERGE (c50:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p50:Partida {
                id: "Wijk aan Zee NED-50",
                fecha: "2022.01.28",
                ronda: "11.1",
                nombre: "L'Ami,E vs Erigaisi,Arjun",
                cantidad_movimientos: "24"
            })

            MERGE (a50:Apertura {
                nombre: "E04"
            })

            MERGE (r50:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_50:Jugador {nombre: "L'Ami,E"})
            MERGE (j2_50:Jugador {nombre: "Erigaisi,Arjun"})

            MERGE (j1_50)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p50)
            MERGE (j2_50)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p50)
            
            
                        
            MERGE (p50)-[:TIENE_APERTURA]->(a50)

            MERGE (p50)-[:RESULTADO_DE_PARTIDA]->(r50)  
            MERGE (c50)-[:INCLUYE_PARTIDA]->(p50);

MERGE (c51:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p51:Partida {
                id: "Wijk aan Zee NED-51",
                fecha: "2022.01.28",
                ronda: "11.2",
                nombre: "Bjerre,Jonas Buhl vs Murzin,Volodar",
                cantidad_movimientos: "48"
            })

            MERGE (a51:Apertura {
                nombre: "D12"
            })

            MERGE (r51:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_51:Jugador {nombre: "Bjerre,Jonas Buhl"})
            MERGE (j2_51:Jugador {nombre: "Murzin,Volodar"})

            MERGE (j1_51)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p51)
            MERGE (j2_51)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p51)
            
            
                        
            MERGE (p51)-[:TIENE_APERTURA]->(a51)

            MERGE (p51)-[:RESULTADO_DE_PARTIDA]->(r51)  
            MERGE (c51)-[:INCLUYE_PARTIDA]->(p51);

MERGE (c52:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p52:Partida {
                id: "Wijk aan Zee NED-52",
                fecha: "2022.01.28",
                ronda: "11.3",
                nombre: "Nguyen,Thai Dai Van vs Vogel,Roven",
                cantidad_movimientos: "85"
            })

            MERGE (a52:Apertura {
                nombre: "D17"
            })

            MERGE (r52:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_52:Jugador {nombre: "Nguyen,Thai Dai Van"})
            MERGE (j2_52:Jugador {nombre: "Vogel,Roven"})

            MERGE (j1_52)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p52)
            MERGE (j2_52)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p52)
            
            
                        
            MERGE (p52)-[:TIENE_APERTURA]->(a52)

            MERGE (p52)-[:RESULTADO_DE_PARTIDA]->(r52)  
            MERGE (c52)-[:INCLUYE_PARTIDA]->(p52);

MERGE (c53:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p53:Partida {
                id: "Wijk aan Zee NED-53",
                fecha: "2022.01.28",
                ronda: "11.4",
                nombre: "Zhu,Jiner vs Jumabayev,R",
                cantidad_movimientos: "58"
            })

            MERGE (a53:Apertura {
                nombre: "B90"
            })

            MERGE (r53:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_53:Jugador {nombre: "Zhu,Jiner"})
            MERGE (j2_53:Jugador {nombre: "Jumabayev,R"})

            MERGE (j1_53)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p53)
            MERGE (j2_53)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p53)
            
            
                        
            MERGE (p53)-[:TIENE_APERTURA]->(a53)

            MERGE (p53)-[:RESULTADO_DE_PARTIDA]->(r53)  
            MERGE (c53)-[:INCLUYE_PARTIDA]->(p53);

MERGE (c54:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p54:Partida {
                id: "Wijk aan Zee NED-54",
                fecha: "2022.01.28",
                ronda: "11.5",
                nombre: "Van Foreest,Lucas vs Warmerdam,Max",
                cantidad_movimientos: "22"
            })

            MERGE (a54:Apertura {
                nombre: "E04"
            })

            MERGE (r54:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_54:Jugador {nombre: "Van Foreest,Lucas"})
            MERGE (j2_54:Jugador {nombre: "Warmerdam,Max"})

            MERGE (j1_54)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p54)
            MERGE (j2_54)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p54)
            
            
                        
            MERGE (p54)-[:TIENE_APERTURA]->(a54)

            MERGE (p54)-[:RESULTADO_DE_PARTIDA]->(r54)  
            MERGE (c54)-[:INCLUYE_PARTIDA]->(p54);

MERGE (c55:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p55:Partida {
                id: "Wijk aan Zee NED-55",
                fecha: "2022.01.28",
                ronda: "11.6",
                nombre: "Shuvalova,Polina vs Ganguly,S",
                cantidad_movimientos: "63"
            })

            MERGE (a55:Apertura {
                nombre: "E21"
            })

            MERGE (r55:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_55:Jugador {nombre: "Shuvalova,Polina"})
            MERGE (j2_55:Jugador {nombre: "Ganguly,S"})

            MERGE (j1_55)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p55)
            MERGE (j2_55)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p55)
            
            
                        
            MERGE (p55)-[:TIENE_APERTURA]->(a55)

            MERGE (p55)-[:RESULTADO_DE_PARTIDA]->(r55)  
            MERGE (c55)-[:INCLUYE_PARTIDA]->(p55);

MERGE (c56:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p56:Partida {
                id: "Wijk aan Zee NED-56",
                fecha: "2022.01.28",
                ronda: "11.7",
                nombre: "Maurizzi,Marc'Andria vs Dardha,Daniel",
                cantidad_movimientos: "26"
            })

            MERGE (a56:Apertura {
                nombre: "E21"
            })

            MERGE (r56:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_56:Jugador {nombre: "Maurizzi,Marc'Andria"})
            MERGE (j2_56:Jugador {nombre: "Dardha,Daniel"})

            MERGE (j1_56)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p56)
            MERGE (j2_56)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p56)
            
            
                        
            MERGE (p56)-[:TIENE_APERTURA]->(a56)

            MERGE (p56)-[:RESULTADO_DE_PARTIDA]->(r56)  
            MERGE (c56)-[:INCLUYE_PARTIDA]->(p56);

MERGE (c57:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p57:Partida {
                id: "Wijk aan Zee NED-57",
                fecha: "2022.01.29",
                ronda: "12.1",
                nombre: "Erigaisi,Arjun vs Nguyen,Thai Dai Van",
                cantidad_movimientos: "16"
            })

            MERGE (a57:Apertura {
                nombre: "D37"
            })

            MERGE (r57:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_57:Jugador {nombre: "Erigaisi,Arjun"})
            MERGE (j2_57:Jugador {nombre: "Nguyen,Thai Dai Van"})

            MERGE (j1_57)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p57)
            MERGE (j2_57)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p57)
            
            
                        
            MERGE (p57)-[:TIENE_APERTURA]->(a57)

            MERGE (p57)-[:RESULTADO_DE_PARTIDA]->(r57)  
            MERGE (c57)-[:INCLUYE_PARTIDA]->(p57);

MERGE (c58:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p58:Partida {
                id: "Wijk aan Zee NED-58",
                fecha: "2022.01.29",
                ronda: "12.2",
                nombre: "Bjerre,Jonas Buhl vs Zhu,Jiner",
                cantidad_movimientos: "44"
            })

            MERGE (a58:Apertura {
                nombre: "D41"
            })

            MERGE (r58:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_58:Jugador {nombre: "Bjerre,Jonas Buhl"})
            MERGE (j2_58:Jugador {nombre: "Zhu,Jiner"})

            MERGE (j1_58)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p58)
            MERGE (j2_58)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p58)
            
            
                        
            MERGE (p58)-[:TIENE_APERTURA]->(a58)

            MERGE (p58)-[:RESULTADO_DE_PARTIDA]->(r58)  
            MERGE (c58)-[:INCLUYE_PARTIDA]->(p58);

MERGE (c59:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p59:Partida {
                id: "Wijk aan Zee NED-59",
                fecha: "2022.01.29",
                ronda: "12.3",
                nombre: "Jumabayev,R vs Shuvalova,Polina",
                cantidad_movimientos: "40"
            })

            MERGE (a59:Apertura {
                nombre: "C53"
            })

            MERGE (r59:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_59:Jugador {nombre: "Jumabayev,R"})
            MERGE (j2_59:Jugador {nombre: "Shuvalova,Polina"})

            MERGE (j1_59)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p59)
            MERGE (j2_59)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p59)
            
            
                        
            MERGE (p59)-[:TIENE_APERTURA]->(a59)

            MERGE (p59)-[:RESULTADO_DE_PARTIDA]->(r59)  
            MERGE (c59)-[:INCLUYE_PARTIDA]->(p59);

MERGE (c60:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p60:Partida {
                id: "Wijk aan Zee NED-60",
                fecha: "2022.01.29",
                ronda: "12.4",
                nombre: "Murzin,Volodar vs Warmerdam,Max",
                cantidad_movimientos: "38"
            })

            MERGE (a60:Apertura {
                nombre: "B33"
            })

            MERGE (r60:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_60:Jugador {nombre: "Murzin,Volodar"})
            MERGE (j2_60:Jugador {nombre: "Warmerdam,Max"})

            MERGE (j1_60)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p60)
            MERGE (j2_60)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p60)
            
            
                        
            MERGE (p60)-[:TIENE_APERTURA]->(a60)

            MERGE (p60)-[:RESULTADO_DE_PARTIDA]->(r60)  
            MERGE (c60)-[:INCLUYE_PARTIDA]->(p60);

MERGE (c61:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p61:Partida {
                id: "Wijk aan Zee NED-61",
                fecha: "2022.01.29",
                ronda: "12.5",
                nombre: "Dardha,Daniel vs Van Foreest,Lucas",
                cantidad_movimientos: "54"
            })

            MERGE (a61:Apertura {
                nombre: "A20"
            })

            MERGE (r61:Resultado {
                nombre: "negras"
            })

            MERGE (j1_61:Jugador {nombre: "Dardha,Daniel"})
            MERGE (j2_61:Jugador {nombre: "Van Foreest,Lucas"})

            MERGE (j1_61)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p61)
            MERGE (j2_61)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p61)
            
            
                        
            MERGE (p61)-[:TIENE_APERTURA]->(a61)

            MERGE (p61)-[:RESULTADO_DE_PARTIDA]->(r61)  
            MERGE (c61)-[:INCLUYE_PARTIDA]->(p61);

MERGE (c62:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p62:Partida {
                id: "Wijk aan Zee NED-62",
                fecha: "2022.01.29",
                ronda: "12.6",
                nombre: "Ganguly,S vs L'Ami,E",
                cantidad_movimientos: "52"
            })

            MERGE (a62:Apertura {
                nombre: "C50"
            })

            MERGE (r62:Resultado {
                nombre: "negras"
            })

            MERGE (j1_62:Jugador {nombre: "Ganguly,S"})
            MERGE (j2_62:Jugador {nombre: "L'Ami,E"})

            MERGE (j1_62)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p62)
            MERGE (j2_62)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p62)
            
            
                        
            MERGE (p62)-[:TIENE_APERTURA]->(a62)

            MERGE (p62)-[:RESULTADO_DE_PARTIDA]->(r62)  
            MERGE (c62)-[:INCLUYE_PARTIDA]->(p62);

MERGE (c63:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p63:Partida {
                id: "Wijk aan Zee NED-63",
                fecha: "2022.01.29",
                ronda: "12.7",
                nombre: "Vogel,Roven vs Maurizzi,Marc'Andria",
                cantidad_movimientos: "49"
            })

            MERGE (a63:Apertura {
                nombre: "D31"
            })

            MERGE (r63:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_63:Jugador {nombre: "Vogel,Roven"})
            MERGE (j2_63:Jugador {nombre: "Maurizzi,Marc'Andria"})

            MERGE (j1_63)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p63)
            MERGE (j2_63)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p63)
            
            
                        
            MERGE (p63)-[:TIENE_APERTURA]->(a63)

            MERGE (p63)-[:RESULTADO_DE_PARTIDA]->(r63)  
            MERGE (c63)-[:INCLUYE_PARTIDA]->(p63);

MERGE (c64:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p64:Partida {
                id: "Wijk aan Zee NED-64",
                fecha: "2022.01.30",
                ronda: "13.1",
                nombre: "Maurizzi,Marc'Andria vs Erigaisi,Arjun",
                cantidad_movimientos: "63"
            })

            MERGE (a64:Apertura {
                nombre: "E21"
            })

            MERGE (r64:Resultado {
                nombre: "negras"
            })

            MERGE (j1_64:Jugador {nombre: "Maurizzi,Marc'Andria"})
            MERGE (j2_64:Jugador {nombre: "Erigaisi,Arjun"})

            MERGE (j1_64)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p64)
            MERGE (j2_64)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p64)
            
            
                        
            MERGE (p64)-[:TIENE_APERTURA]->(a64)

            MERGE (p64)-[:RESULTADO_DE_PARTIDA]->(r64)  
            MERGE (c64)-[:INCLUYE_PARTIDA]->(p64);

MERGE (c65:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p65:Partida {
                id: "Wijk aan Zee NED-65",
                fecha: "2022.01.30",
                ronda: "13.2",
                nombre: "Nguyen,Thai Dai Van vs Ganguly,S",
                cantidad_movimientos: "18"
            })

            MERGE (a65:Apertura {
                nombre: "D39"
            })

            MERGE (r65:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_65:Jugador {nombre: "Nguyen,Thai Dai Van"})
            MERGE (j2_65:Jugador {nombre: "Ganguly,S"})

            MERGE (j1_65)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p65)
            MERGE (j2_65)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p65)
            
            
                        
            MERGE (p65)-[:TIENE_APERTURA]->(a65)

            MERGE (p65)-[:RESULTADO_DE_PARTIDA]->(r65)  
            MERGE (c65)-[:INCLUYE_PARTIDA]->(p65);

MERGE (c66:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p66:Partida {
                id: "Wijk aan Zee NED-66",
                fecha: "2022.01.30",
                ronda: "13.3",
                nombre: "Shuvalova,Polina vs Bjerre,Jonas Buhl",
                cantidad_movimientos: "17"
            })

            MERGE (a66:Apertura {
                nombre: "B40"
            })

            MERGE (r66:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_66:Jugador {nombre: "Shuvalova,Polina"})
            MERGE (j2_66:Jugador {nombre: "Bjerre,Jonas Buhl"})

            MERGE (j1_66)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p66)
            MERGE (j2_66)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p66)
            
            
                        
            MERGE (p66)-[:TIENE_APERTURA]->(a66)

            MERGE (p66)-[:RESULTADO_DE_PARTIDA]->(r66)  
            MERGE (c66)-[:INCLUYE_PARTIDA]->(p66);

MERGE (c67:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p67:Partida {
                id: "Wijk aan Zee NED-67",
                fecha: "2022.01.30",
                ronda: "13.4",
                nombre: "L'Ami,E vs Jumabayev,R",
                cantidad_movimientos: "39"
            })

            MERGE (a67:Apertura {
                nombre: "E06"
            })

            MERGE (r67:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_67:Jugador {nombre: "L'Ami,E"})
            MERGE (j2_67:Jugador {nombre: "Jumabayev,R"})

            MERGE (j1_67)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p67)
            MERGE (j2_67)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p67)
            
            
                        
            MERGE (p67)-[:TIENE_APERTURA]->(a67)

            MERGE (p67)-[:RESULTADO_DE_PARTIDA]->(r67)  
            MERGE (c67)-[:INCLUYE_PARTIDA]->(p67);

MERGE (c68:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p68:Partida {
                id: "Wijk aan Zee NED-68",
                fecha: "2022.01.30",
                ronda: "13.5",
                nombre: "Warmerdam,Max vs Dardha,Daniel",
                cantidad_movimientos: "49"
            })

            MERGE (a68:Apertura {
                nombre: "C24"
            })

            MERGE (r68:Resultado {
                nombre: "negras"
            })

            MERGE (j1_68:Jugador {nombre: "Warmerdam,Max"})
            MERGE (j2_68:Jugador {nombre: "Dardha,Daniel"})

            MERGE (j1_68)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p68)
            MERGE (j2_68)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p68)
            
            
                        
            MERGE (p68)-[:TIENE_APERTURA]->(a68)

            MERGE (p68)-[:RESULTADO_DE_PARTIDA]->(r68)  
            MERGE (c68)-[:INCLUYE_PARTIDA]->(p68);

MERGE (c69:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p69:Partida {
                id: "Wijk aan Zee NED-69",
                fecha: "2022.01.30",
                ronda: "13.6",
                nombre: "Van Foreest,Lucas vs Vogel,Roven",
                cantidad_movimientos: "32"
            })

            MERGE (a69:Apertura {
                nombre: "D13"
            })

            MERGE (r69:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_69:Jugador {nombre: "Van Foreest,Lucas"})
            MERGE (j2_69:Jugador {nombre: "Vogel,Roven"})

            MERGE (j1_69)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p69)
            MERGE (j2_69)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p69)
            
            
                        
            MERGE (p69)-[:TIENE_APERTURA]->(a69)

            MERGE (p69)-[:RESULTADO_DE_PARTIDA]->(r69)  
            MERGE (c69)-[:INCLUYE_PARTIDA]->(p69);

MERGE (c70:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p70:Partida {
                id: "Wijk aan Zee NED-70",
                fecha: "2022.01.30",
                ronda: "13.7",
                nombre: "Zhu,Jiner vs Murzin,Volodar",
                cantidad_movimientos: "60"
            })

            MERGE (a70:Apertura {
                nombre: "B90"
            })

            MERGE (r70:Resultado {
                nombre: "negras"
            })

            MERGE (j1_70:Jugador {nombre: "Zhu,Jiner"})
            MERGE (j2_70:Jugador {nombre: "Murzin,Volodar"})

            MERGE (j1_70)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p70)
            MERGE (j2_70)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p70)
            
            
                        
            MERGE (p70)-[:TIENE_APERTURA]->(a70)

            MERGE (p70)-[:RESULTADO_DE_PARTIDA]->(r70)  
            MERGE (c70)-[:INCLUYE_PARTIDA]->(p70);

MERGE (c71:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p71:Partida {
                id: "Gibraltar ENG-71",
                fecha: "2022.01.25",
                ronda: "2.1",
                nombre: "Cheng,Bo vs Girya,O",
                cantidad_movimientos: "32"
            })

            MERGE (a71:Apertura {
                nombre: "E06"
            })

            MERGE (r71:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_71:Jugador {nombre: "Cheng,Bo"})
            MERGE (j2_71:Jugador {nombre: "Girya,O"})

            MERGE (j1_71)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p71)
            MERGE (j2_71)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p71)
            
            
                        
            MERGE (p71)-[:TIENE_APERTURA]->(a71)

            MERGE (p71)-[:RESULTADO_DE_PARTIDA]->(r71)  
            MERGE (c71)-[:INCLUYE_PARTIDA]->(p71);

MERGE (c72:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p72:Partida {
                id: "Gibraltar ENG-72",
                fecha: "2022.01.25",
                ronda: "2.2",
                nombre: "Brunello,S vs Efroimski,M",
                cantidad_movimientos: "52"
            })

            MERGE (a72:Apertura {
                nombre: "D00"
            })

            MERGE (r72:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_72:Jugador {nombre: "Brunello,S"})
            MERGE (j2_72:Jugador {nombre: "Efroimski,M"})

            MERGE (j1_72)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p72)
            MERGE (j2_72)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p72)
            
            
                        
            MERGE (p72)-[:TIENE_APERTURA]->(a72)

            MERGE (p72)-[:RESULTADO_DE_PARTIDA]->(r72)  
            MERGE (c72)-[:INCLUYE_PARTIDA]->(p72);

MERGE (c73:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p73:Partida {
                id: "Gibraltar ENG-73",
                fecha: "2022.01.25",
                ronda: "2.3",
                nombre: "Krysa,L vs Cramling,P",
                cantidad_movimientos: "30"
            })

            MERGE (a73:Apertura {
                nombre: "E11"
            })

            MERGE (r73:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_73:Jugador {nombre: "Krysa,L"})
            MERGE (j2_73:Jugador {nombre: "Cramling,P"})

            MERGE (j1_73)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p73)
            MERGE (j2_73)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p73)
            
            
                        
            MERGE (p73)-[:TIENE_APERTURA]->(a73)

            MERGE (p73)-[:RESULTADO_DE_PARTIDA]->(r73)  
            MERGE (c73)-[:INCLUYE_PARTIDA]->(p73);

MERGE (c74:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p74:Partida {
                id: "Gibraltar ENG-74",
                fecha: "2022.01.25",
                ronda: "2.4",
                nombre: "Rosen,E vs Houska,Jo",
                cantidad_movimientos: "57"
            })

            MERGE (a74:Apertura {
                nombre: "B10"
            })

            MERGE (r74:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_74:Jugador {nombre: "Rosen,E"})
            MERGE (j2_74:Jugador {nombre: "Houska,Jo"})

            MERGE (j1_74)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p74)
            MERGE (j2_74)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p74)
            
            
                        
            MERGE (p74)-[:TIENE_APERTURA]->(a74)

            MERGE (p74)-[:RESULTADO_DE_PARTIDA]->(r74)  
            MERGE (c74)-[:INCLUYE_PARTIDA]->(p74);

MERGE (c75:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p75:Partida {
                id: "Gibraltar ENG-75",
                fecha: "2022.01.25",
                ronda: "2.5",
                nombre: "Bwalya,Gillan vs Sukandar,I",
                cantidad_movimientos: "35"
            })

            MERGE (a75:Apertura {
                nombre: "E48"
            })

            MERGE (r75:Resultado {
                nombre: "negras"
            })

            MERGE (j1_75:Jugador {nombre: "Bwalya,Gillan"})
            MERGE (j2_75:Jugador {nombre: "Sukandar,I"})

            MERGE (j1_75)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p75)
            MERGE (j2_75)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p75)
            
            
                        
            MERGE (p75)-[:TIENE_APERTURA]->(a75)

            MERGE (p75)-[:RESULTADO_DE_PARTIDA]->(r75)  
            MERGE (c75)-[:INCLUYE_PARTIDA]->(p75);

MERGE (c76:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p76:Partida {
                id: "Gibraltar ENG-76",
                fecha: "2022.01.25",
                ronda: "2.6",
                nombre: "Csonka,B vs Batsiashvili,N",
                cantidad_movimientos: "27"
            })

            MERGE (a76:Apertura {
                nombre: "C50"
            })

            MERGE (r76:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_76:Jugador {nombre: "Csonka,B"})
            MERGE (j2_76:Jugador {nombre: "Batsiashvili,N"})

            MERGE (j1_76)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p76)
            MERGE (j2_76)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p76)
            
            
                        
            MERGE (p76)-[:TIENE_APERTURA]->(a76)

            MERGE (p76)-[:RESULTADO_DE_PARTIDA]->(r76)  
            MERGE (c76)-[:INCLUYE_PARTIDA]->(p76);

MERGE (c77:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p77:Partida {
                id: "Gibraltar ENG-77",
                fecha: "2022.01.25",
                ronda: "2.7",
                nombre: "Aziz,Husain vs Abdumalik,Z",
                cantidad_movimientos: "61"
            })

            MERGE (a77:Apertura {
                nombre: "A48"
            })

            MERGE (r77:Resultado {
                nombre: "negras"
            })

            MERGE (j1_77:Jugador {nombre: "Aziz,Husain"})
            MERGE (j2_77:Jugador {nombre: "Abdumalik,Z"})

            MERGE (j1_77)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p77)
            MERGE (j2_77)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p77)
            
            
                        
            MERGE (p77)-[:TIENE_APERTURA]->(a77)

            MERGE (p77)-[:RESULTADO_DE_PARTIDA]->(r77)  
            MERGE (c77)-[:INCLUYE_PARTIDA]->(p77);

MERGE (c78:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p78:Partida {
                id: "Gibraltar ENG-78",
                fecha: "2022.01.25",
                ronda: "2.8",
                nombre: "Gallagher,Jo vs Muzychuk,M",
                cantidad_movimientos: "69"
            })

            MERGE (a78:Apertura {
                nombre: "B40"
            })

            MERGE (r78:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_78:Jugador {nombre: "Gallagher,Jo"})
            MERGE (j2_78:Jugador {nombre: "Muzychuk,M"})

            MERGE (j1_78)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p78)
            MERGE (j2_78)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p78)
            
            
                        
            MERGE (p78)-[:TIENE_APERTURA]->(a78)

            MERGE (p78)-[:RESULTADO_DE_PARTIDA]->(r78)  
            MERGE (c78)-[:INCLUYE_PARTIDA]->(p78);

MERGE (c79:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p79:Partida {
                id: "Gibraltar ENG-79",
                fecha: "2022.01.25",
                ronda: "2.9",
                nombre: "Bellahcene,B vs Mammadzada,G",
                cantidad_movimientos: "52"
            })

            MERGE (a79:Apertura {
                nombre: "B92"
            })

            MERGE (r79:Resultado {
                nombre: "negras"
            })

            MERGE (j1_79:Jugador {nombre: "Bellahcene,B"})
            MERGE (j2_79:Jugador {nombre: "Mammadzada,G"})

            MERGE (j1_79)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p79)
            MERGE (j2_79)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p79)
            
            
                        
            MERGE (p79)-[:TIENE_APERTURA]->(a79)

            MERGE (p79)-[:RESULTADO_DE_PARTIDA]->(r79)  
            MERGE (c79)-[:INCLUYE_PARTIDA]->(p79);

MERGE (c80:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p80:Partida {
                id: "Gibraltar ENG-80",
                fecha: "2022.01.25",
                ronda: "2.10",
                nombre: "Haria,R vs Sebag,M",
                cantidad_movimientos: "27"
            })

            MERGE (a80:Apertura {
                nombre: "B52"
            })

            MERGE (r80:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_80:Jugador {nombre: "Haria,R"})
            MERGE (j2_80:Jugador {nombre: "Sebag,M"})

            MERGE (j1_80)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p80)
            MERGE (j2_80)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p80)
            
            
                        
            MERGE (p80)-[:TIENE_APERTURA]->(a80)

            MERGE (p80)-[:RESULTADO_DE_PARTIDA]->(r80)  
            MERGE (c80)-[:INCLUYE_PARTIDA]->(p80);

MERGE (c81:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p81:Partida {
                id: "Gibraltar ENG-81",
                fecha: "2022.01.26",
                ronda: "3.1",
                nombre: "Houska,Jo vs Brunello,S",
                cantidad_movimientos: "33"
            })

            MERGE (a81:Apertura {
                nombre: "D45"
            })

            MERGE (r81:Resultado {
                nombre: "negras"
            })

            MERGE (j1_81:Jugador {nombre: "Houska,Jo"})
            MERGE (j2_81:Jugador {nombre: "Brunello,S"})

            MERGE (j1_81)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p81)
            MERGE (j2_81)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p81)
            
            
                        
            MERGE (p81)-[:TIENE_APERTURA]->(a81)

            MERGE (p81)-[:RESULTADO_DE_PARTIDA]->(r81)  
            MERGE (c81)-[:INCLUYE_PARTIDA]->(p81);

MERGE (c82:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p82:Partida {
                id: "Gibraltar ENG-82",
                fecha: "2022.01.26",
                ronda: "3.2",
                nombre: "Cramling,P vs Haria,R",
                cantidad_movimientos: "45"
            })

            MERGE (a82:Apertura {
                nombre: "D38"
            })

            MERGE (r82:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_82:Jugador {nombre: "Cramling,P"})
            MERGE (j2_82:Jugador {nombre: "Haria,R"})

            MERGE (j1_82)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p82)
            MERGE (j2_82)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p82)
            
            
                        
            MERGE (p82)-[:TIENE_APERTURA]->(a82)

            MERGE (p82)-[:RESULTADO_DE_PARTIDA]->(r82)  
            MERGE (c82)-[:INCLUYE_PARTIDA]->(p82);

MERGE (c83:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p83:Partida {
                id: "Gibraltar ENG-83",
                fecha: "2022.01.26",
                ronda: "3.3",
                nombre: "Abdumalik,Z vs Bellahcene,B",
                cantidad_movimientos: "42"
            })

            MERGE (a83:Apertura {
                nombre: "C18"
            })

            MERGE (r83:Resultado {
                nombre: "negras"
            })

            MERGE (j1_83:Jugador {nombre: "Abdumalik,Z"})
            MERGE (j2_83:Jugador {nombre: "Bellahcene,B"})

            MERGE (j1_83)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p83)
            MERGE (j2_83)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p83)
            
            
                        
            MERGE (p83)-[:TIENE_APERTURA]->(a83)

            MERGE (p83)-[:RESULTADO_DE_PARTIDA]->(r83)  
            MERGE (c83)-[:INCLUYE_PARTIDA]->(p83);

MERGE (c84:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p84:Partida {
                id: "Gibraltar ENG-84",
                fecha: "2022.01.26",
                ronda: "3.4",
                nombre: "Sukandar,I vs Aziz,Husain",
                cantidad_movimientos: "34"
            })

            MERGE (a84:Apertura {
                nombre: "C67"
            })

            MERGE (r84:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_84:Jugador {nombre: "Sukandar,I"})
            MERGE (j2_84:Jugador {nombre: "Aziz,Husain"})

            MERGE (j1_84)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p84)
            MERGE (j2_84)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p84)
            
            
                        
            MERGE (p84)-[:TIENE_APERTURA]->(a84)

            MERGE (p84)-[:RESULTADO_DE_PARTIDA]->(r84)  
            MERGE (c84)-[:INCLUYE_PARTIDA]->(p84);

MERGE (c85:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p85:Partida {
                id: "Gibraltar ENG-85",
                fecha: "2022.01.26",
                ronda: "3.5",
                nombre: "Girya,O vs Csonka,B",
                cantidad_movimientos: "20"
            })

            MERGE (a85:Apertura {
                nombre: "D20"
            })

            MERGE (r85:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_85:Jugador {nombre: "Girya,O"})
            MERGE (j2_85:Jugador {nombre: "Csonka,B"})

            MERGE (j1_85)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p85)
            MERGE (j2_85)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p85)
            
            
                        
            MERGE (p85)-[:TIENE_APERTURA]->(a85)

            MERGE (p85)-[:RESULTADO_DE_PARTIDA]->(r85)  
            MERGE (c85)-[:INCLUYE_PARTIDA]->(p85);

MERGE (c86:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p86:Partida {
                id: "Gibraltar ENG-86",
                fecha: "2022.01.26",
                ronda: "3.6",
                nombre: "Muzychuk,M vs Cheng,Bo",
                cantidad_movimientos: "53"
            })

            MERGE (a86:Apertura {
                nombre: "B51"
            })

            MERGE (r86:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_86:Jugador {nombre: "Muzychuk,M"})
            MERGE (j2_86:Jugador {nombre: "Cheng,Bo"})

            MERGE (j1_86)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p86)
            MERGE (j2_86)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p86)
            
            
                        
            MERGE (p86)-[:TIENE_APERTURA]->(a86)

            MERGE (p86)-[:RESULTADO_DE_PARTIDA]->(r86)  
            MERGE (c86)-[:INCLUYE_PARTIDA]->(p86);

MERGE (c87:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p87:Partida {
                id: "Gibraltar ENG-87",
                fecha: "2022.01.26",
                ronda: "3.7",
                nombre: "Batsiashvili,N vs Rosen,E",
                cantidad_movimientos: "42"
            })

            MERGE (a87:Apertura {
                nombre: "E21"
            })

            MERGE (r87:Resultado {
                nombre: "negras"
            })

            MERGE (j1_87:Jugador {nombre: "Batsiashvili,N"})
            MERGE (j2_87:Jugador {nombre: "Rosen,E"})

            MERGE (j1_87)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p87)
            MERGE (j2_87)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p87)
            
            
                        
            MERGE (p87)-[:TIENE_APERTURA]->(a87)

            MERGE (p87)-[:RESULTADO_DE_PARTIDA]->(r87)  
            MERGE (c87)-[:INCLUYE_PARTIDA]->(p87);

MERGE (c88:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p88:Partida {
                id: "Gibraltar ENG-88",
                fecha: "2022.01.26",
                ronda: "3.8",
                nombre: "Efroimski,M vs Bwalya,Gillan",
                cantidad_movimientos: "39"
            })

            MERGE (a88:Apertura {
                nombre: "B43"
            })

            MERGE (r88:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_88:Jugador {nombre: "Efroimski,M"})
            MERGE (j2_88:Jugador {nombre: "Bwalya,Gillan"})

            MERGE (j1_88)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p88)
            MERGE (j2_88)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p88)
            
            
                        
            MERGE (p88)-[:TIENE_APERTURA]->(a88)

            MERGE (p88)-[:RESULTADO_DE_PARTIDA]->(r88)  
            MERGE (c88)-[:INCLUYE_PARTIDA]->(p88);

MERGE (c89:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p89:Partida {
                id: "Gibraltar ENG-89",
                fecha: "2022.01.26",
                ronda: "3.9",
                nombre: "Sebag,M vs Gallagher,Jo",
                cantidad_movimientos: "16"
            })

            MERGE (a89:Apertura {
                nombre: "B52"
            })

            MERGE (r89:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_89:Jugador {nombre: "Sebag,M"})
            MERGE (j2_89:Jugador {nombre: "Gallagher,Jo"})

            MERGE (j1_89)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p89)
            MERGE (j2_89)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p89)
            
            
                        
            MERGE (p89)-[:TIENE_APERTURA]->(a89)

            MERGE (p89)-[:RESULTADO_DE_PARTIDA]->(r89)  
            MERGE (c89)-[:INCLUYE_PARTIDA]->(p89);

MERGE (c90:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p90:Partida {
                id: "Gibraltar ENG-90",
                fecha: "2022.01.26",
                ronda: "3.10",
                nombre: "Mammadzada,G vs Krysa,L",
                cantidad_movimientos: "40"
            })

            MERGE (a90:Apertura {
                nombre: "B15"
            })

            MERGE (r90:Resultado {
                nombre: "negras"
            })

            MERGE (j1_90:Jugador {nombre: "Mammadzada,G"})
            MERGE (j2_90:Jugador {nombre: "Krysa,L"})

            MERGE (j1_90)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p90)
            MERGE (j2_90)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p90)
            
            
                        
            MERGE (p90)-[:TIENE_APERTURA]->(a90)

            MERGE (p90)-[:RESULTADO_DE_PARTIDA]->(r90)  
            MERGE (c90)-[:INCLUYE_PARTIDA]->(p90);

MERGE (c91:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p91:Partida {
                id: "Gibraltar ENG-91",
                fecha: "2022.01.27",
                ronda: "4.1",
                nombre: "Csonka,B vs Muzychuk,M",
                cantidad_movimientos: "14"
            })

            MERGE (a91:Apertura {
                nombre: "B11"
            })

            MERGE (r91:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_91:Jugador {nombre: "Csonka,B"})
            MERGE (j2_91:Jugador {nombre: "Muzychuk,M"})

            MERGE (j1_91)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p91)
            MERGE (j2_91)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p91)
            
            
                        
            MERGE (p91)-[:TIENE_APERTURA]->(a91)

            MERGE (p91)-[:RESULTADO_DE_PARTIDA]->(r91)  
            MERGE (c91)-[:INCLUYE_PARTIDA]->(p91);

MERGE (c92:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p92:Partida {
                id: "Gibraltar ENG-92",
                fecha: "2022.01.27",
                ronda: "4.2",
                nombre: "Krysa,L vs Abdumalik,Z",
                cantidad_movimientos: "25"
            })

            MERGE (a92:Apertura {
                nombre: "D90"
            })

            MERGE (r92:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_92:Jugador {nombre: "Krysa,L"})
            MERGE (j2_92:Jugador {nombre: "Abdumalik,Z"})

            MERGE (j1_92)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p92)
            MERGE (j2_92)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p92)
            
            
                        
            MERGE (p92)-[:TIENE_APERTURA]->(a92)

            MERGE (p92)-[:RESULTADO_DE_PARTIDA]->(r92)  
            MERGE (c92)-[:INCLUYE_PARTIDA]->(p92);

MERGE (c93:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p93:Partida {
                id: "Gibraltar ENG-93",
                fecha: "2022.01.27",
                ronda: "4.3",
                nombre: "Brunello,S vs Batsiashvili,N",
                cantidad_movimientos: "61"
            })

            MERGE (a93:Apertura {
                nombre: "D31"
            })

            MERGE (r93:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_93:Jugador {nombre: "Brunello,S"})
            MERGE (j2_93:Jugador {nombre: "Batsiashvili,N"})

            MERGE (j1_93)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p93)
            MERGE (j2_93)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p93)
            
            
                        
            MERGE (p93)-[:TIENE_APERTURA]->(a93)

            MERGE (p93)-[:RESULTADO_DE_PARTIDA]->(r93)  
            MERGE (c93)-[:INCLUYE_PARTIDA]->(p93);

MERGE (c94:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p94:Partida {
                id: "Gibraltar ENG-94",
                fecha: "2022.01.27",
                ronda: "4.4",
                nombre: "Gallagher,Jo vs Cramling,P",
                cantidad_movimientos: "59"
            })

            MERGE (a94:Apertura {
                nombre: "B46"
            })

            MERGE (r94:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_94:Jugador {nombre: "Gallagher,Jo"})
            MERGE (j2_94:Jugador {nombre: "Cramling,P"})

            MERGE (j1_94)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p94)
            MERGE (j2_94)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p94)
            
            
                        
            MERGE (p94)-[:TIENE_APERTURA]->(a94)

            MERGE (p94)-[:RESULTADO_DE_PARTIDA]->(r94)  
            MERGE (c94)-[:INCLUYE_PARTIDA]->(p94);

MERGE (c95:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p95:Partida {
                id: "Gibraltar ENG-95",
                fecha: "2022.01.27",
                ronda: "4.5",
                nombre: "Bellahcene,B vs Sukandar,I",
                cantidad_movimientos: "61"
            })

            MERGE (a95:Apertura {
                nombre: "E20"
            })

            MERGE (r95:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_95:Jugador {nombre: "Bellahcene,B"})
            MERGE (j2_95:Jugador {nombre: "Sukandar,I"})

            MERGE (j1_95)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p95)
            MERGE (j2_95)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p95)
            
            
                        
            MERGE (p95)-[:TIENE_APERTURA]->(a95)

            MERGE (p95)-[:RESULTADO_DE_PARTIDA]->(r95)  
            MERGE (c95)-[:INCLUYE_PARTIDA]->(p95);

MERGE (c96:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p96:Partida {
                id: "Gibraltar ENG-96",
                fecha: "2022.01.27",
                ronda: "4.6",
                nombre: "Rosen,E vs Girya,O",
                cantidad_movimientos: "35"
            })

            MERGE (a96:Apertura {
                nombre: "C53"
            })

            MERGE (r96:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_96:Jugador {nombre: "Rosen,E"})
            MERGE (j2_96:Jugador {nombre: "Girya,O"})

            MERGE (j1_96)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p96)
            MERGE (j2_96)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p96)
            
            
                        
            MERGE (p96)-[:TIENE_APERTURA]->(a96)

            MERGE (p96)-[:RESULTADO_DE_PARTIDA]->(r96)  
            MERGE (c96)-[:INCLUYE_PARTIDA]->(p96);

MERGE (c97:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p97:Partida {
                id: "Gibraltar ENG-97",
                fecha: "2022.01.27",
                ronda: "4.7",
                nombre: "Cheng,Bo vs Sebag,M",
                cantidad_movimientos: "26"
            })

            MERGE (a97:Apertura {
                nombre: "D45"
            })

            MERGE (r97:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_97:Jugador {nombre: "Cheng,Bo"})
            MERGE (j2_97:Jugador {nombre: "Sebag,M"})

            MERGE (j1_97)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p97)
            MERGE (j2_97)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p97)
            
            
                        
            MERGE (p97)-[:TIENE_APERTURA]->(a97)

            MERGE (p97)-[:RESULTADO_DE_PARTIDA]->(r97)  
            MERGE (c97)-[:INCLUYE_PARTIDA]->(p97);

MERGE (c98:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p98:Partida {
                id: "Gibraltar ENG-98",
                fecha: "2022.01.27",
                ronda: "4.8",
                nombre: "Haria,R vs Mammadzada,G",
                cantidad_movimientos: "61"
            })

            MERGE (a98:Apertura {
                nombre: "B23"
            })

            MERGE (r98:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_98:Jugador {nombre: "Haria,R"})
            MERGE (j2_98:Jugador {nombre: "Mammadzada,G"})

            MERGE (j1_98)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p98)
            MERGE (j2_98)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p98)
            
            
                        
            MERGE (p98)-[:TIENE_APERTURA]->(a98)

            MERGE (p98)-[:RESULTADO_DE_PARTIDA]->(r98)  
            MERGE (c98)-[:INCLUYE_PARTIDA]->(p98);

MERGE (c99:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p99:Partida {
                id: "Gibraltar ENG-99",
                fecha: "2022.01.27",
                ronda: "4.9",
                nombre: "Bwalya,Gillan vs Houska,Jo",
                cantidad_movimientos: "48"
            })

            MERGE (a99:Apertura {
                nombre: "B12"
            })

            MERGE (r99:Resultado {
                nombre: "negras"
            })

            MERGE (j1_99:Jugador {nombre: "Bwalya,Gillan"})
            MERGE (j2_99:Jugador {nombre: "Houska,Jo"})

            MERGE (j1_99)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p99)
            MERGE (j2_99)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p99)
            
            
                        
            MERGE (p99)-[:TIENE_APERTURA]->(a99)

            MERGE (p99)-[:RESULTADO_DE_PARTIDA]->(r99)  
            MERGE (c99)-[:INCLUYE_PARTIDA]->(p99);

MERGE (c100:Campeonato {
                nombre: "Battle of the Sexes 2022",
                ubicacion: "Gibraltar ENG"
            })
            MERGE (p100:Partida {
                id: "Gibraltar ENG-100",
                fecha: "2022.01.27",
                ronda: "4.10",
                nombre: "Aziz,Husain vs Efroimski,M",
                cantidad_movimientos: "36"
            })

            MERGE (a100:Apertura {
                nombre: "D41"
            })

            MERGE (r100:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_100:Jugador {nombre: "Aziz,Husain"})
            MERGE (j2_100:Jugador {nombre: "Efroimski,M"})

            MERGE (j1_100)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p100)
            MERGE (j2_100)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p100)
            
            
                        
            MERGE (p100)-[:TIENE_APERTURA]->(a100)

            MERGE (p100)-[:RESULTADO_DE_PARTIDA]->(r100)  
            MERGE (c100)-[:INCLUYE_PARTIDA]->(p100);