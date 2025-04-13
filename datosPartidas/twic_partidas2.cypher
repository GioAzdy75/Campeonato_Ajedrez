MERGE (c1:Campeonato {
                nombre: "WCh Women 2025",
                ubicacion: "Shanghai Chongqing CHN"
            })
            MERGE (p1:Partida {
                id: "Shanghai Chongqing CHN-1",
                fecha: "2025.04.03",
                ronda: "1.1",
                nombre: "Ju,Wenjun vs Tan,Zhongyi",
                cantidad_movimientos: "39"
            })

            MERGE (a1:Apertura {
                nombre: "B40"
            })

            MERGE (r1:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_1:Jugador {nombre: "Ju,Wenjun"})
            MERGE (j2_1:Jugador {nombre: "Tan,Zhongyi"})

            MERGE (j1_1)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p1)
            MERGE (j2_1)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p1)
            
            
                        
            MERGE (p1)-[:TIENE_APERTURA]->(a1)

            MERGE (p1)-[:RESULTADO_DE_PARTIDA]->(r1)  
            MERGE (c1)-[:INCLUYE_PARTIDA]->(p1);

MERGE (c2:Campeonato {
                nombre: "WCh Women 2025",
                ubicacion: "Shanghai Chongqing CHN"
            })
            MERGE (p2:Partida {
                id: "Shanghai Chongqing CHN-2",
                fecha: "2025.04.04",
                ronda: "2.1",
                nombre: "Tan,Zhongyi vs Ju,Wenjun",
                cantidad_movimientos: "62"
            })

            MERGE (a2:Apertura {
                nombre: "A29"
            })

            MERGE (r2:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_2:Jugador {nombre: "Tan,Zhongyi"})
            MERGE (j2_2:Jugador {nombre: "Ju,Wenjun"})

            MERGE (j1_2)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p2)
            MERGE (j2_2)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p2)
            
            
                        
            MERGE (p2)-[:TIENE_APERTURA]->(a2)

            MERGE (p2)-[:RESULTADO_DE_PARTIDA]->(r2)  
            MERGE (c2)-[:INCLUYE_PARTIDA]->(p2);

MERGE (c3:Campeonato {
                nombre: "WCh Women 2025",
                ubicacion: "Shanghai Chongqing CHN"
            })
            MERGE (p3:Partida {
                id: "Shanghai Chongqing CHN-3",
                fecha: "2025.04.06",
                ronda: "3.1",
                nombre: "Ju,Wenjun vs Tan,Zhongyi",
                cantidad_movimientos: "87"
            })

            MERGE (a3:Apertura {
                nombre: "B40"
            })

            MERGE (r3:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_3:Jugador {nombre: "Ju,Wenjun"})
            MERGE (j2_3:Jugador {nombre: "Tan,Zhongyi"})

            MERGE (j1_3)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p3)
            MERGE (j2_3)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p3)
            
            
                        
            MERGE (p3)-[:TIENE_APERTURA]->(a3)

            MERGE (p3)-[:RESULTADO_DE_PARTIDA]->(r3)  
            MERGE (c3)-[:INCLUYE_PARTIDA]->(p3);

MERGE (c4:Campeonato {
                nombre: "WCh Women 2025",
                ubicacion: "Shanghai Chongqing CHN"
            })
            MERGE (p4:Partida {
                id: "Shanghai Chongqing CHN-4",
                fecha: "2025.04.07",
                ronda: "4.1",
                nombre: "Tan,Zhongyi vs Ju,Wenjun",
                cantidad_movimientos: "81"
            })

            MERGE (a4:Apertura {
                nombre: "A13"
            })

            MERGE (r4:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_4:Jugador {nombre: "Tan,Zhongyi"})
            MERGE (j2_4:Jugador {nombre: "Ju,Wenjun"})

            MERGE (j1_4)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p4)
            MERGE (j2_4)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p4)
            
            
                        
            MERGE (p4)-[:TIENE_APERTURA]->(a4)

            MERGE (p4)-[:RESULTADO_DE_PARTIDA]->(r4)  
            MERGE (c4)-[:INCLUYE_PARTIDA]->(p4);

MERGE (c5:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p5:Partida {
                id: "Rhodes GRE-5",
                fecha: "2025.04.01",
                ronda: "2.1",
                nombre: "Mkrtchyan,Mariam vs Batsiashvili,N",
                cantidad_movimientos: "25"
            })

            MERGE (a5:Apertura {
                nombre: "B42"
            })

            MERGE (r5:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_5:Jugador {nombre: "Mkrtchyan,Mariam"})
            MERGE (j2_5:Jugador {nombre: "Batsiashvili,N"})

            MERGE (j1_5)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p5)
            MERGE (j2_5)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p5)
            
            
                        
            MERGE (p5)-[:TIENE_APERTURA]->(a5)

            MERGE (p5)-[:RESULTADO_DE_PARTIDA]->(r5)  
            MERGE (c5)-[:INCLUYE_PARTIDA]->(p5);

MERGE (c6:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p6:Partida {
                id: "Rhodes GRE-6",
                fecha: "2025.04.01",
                ronda: "2.2",
                nombre: "Avramidou,Anastasia vs Arabidze,M",
                cantidad_movimientos: "26"
            })

            MERGE (a6:Apertura {
                nombre: "C45"
            })

            MERGE (r6:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_6:Jugador {nombre: "Avramidou,Anastasia"})
            MERGE (j2_6:Jugador {nombre: "Arabidze,M"})

            MERGE (j1_6)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p6)
            MERGE (j2_6)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p6)
            
            
                        
            MERGE (p6)-[:TIENE_APERTURA]->(a6)

            MERGE (p6)-[:RESULTADO_DE_PARTIDA]->(r6)  
            MERGE (c6)-[:INCLUYE_PARTIDA]->(p6);

MERGE (c7:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p7:Partida {
                id: "Rhodes GRE-7",
                fecha: "2025.04.01",
                ronda: "2.3",
                nombre: "Allahverdiyeva,Ayan vs Ushenina,A",
                cantidad_movimientos: "39"
            })

            MERGE (a7:Apertura {
                nombre: "B29"
            })

            MERGE (r7:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_7:Jugador {nombre: "Allahverdiyeva,Ayan"})
            MERGE (j2_7:Jugador {nombre: "Ushenina,A"})

            MERGE (j1_7)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p7)
            MERGE (j2_7)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p7)
            
            
                        
            MERGE (p7)-[:TIENE_APERTURA]->(a7)

            MERGE (p7)-[:RESULTADO_DE_PARTIDA]->(r7)  
            MERGE (c7)-[:INCLUYE_PARTIDA]->(p7);

MERGE (c8:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p8:Partida {
                id: "Rhodes GRE-8",
                fecha: "2025.04.01",
                ronda: "2.4",
                nombre: "Smietanska,Wiktoria vs Khotenashvili,B",
                cantidad_movimientos: "56"
            })

            MERGE (a8:Apertura {
                nombre: "B19"
            })

            MERGE (r8:Resultado {
                nombre: "negras"
            })

            MERGE (j1_8:Jugador {nombre: "Smietanska,Wiktoria"})
            MERGE (j2_8:Jugador {nombre: "Khotenashvili,B"})

            MERGE (j1_8)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p8)
            MERGE (j2_8)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p8)
            
            
                        
            MERGE (p8)-[:TIENE_APERTURA]->(a8)

            MERGE (p8)-[:RESULTADO_DE_PARTIDA]->(r8)  
            MERGE (c8)-[:INCLUYE_PARTIDA]->(p8);

MERGE (c9:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p9:Partida {
                id: "Rhodes GRE-9",
                fecha: "2025.04.01",
                ronda: "2.5",
                nombre: "Schneider,Jana vs Beydullayeva,Govhar",
                cantidad_movimientos: "43"
            })

            MERGE (a9:Apertura {
                nombre: "B90"
            })

            MERGE (r9:Resultado {
                nombre: "negras"
            })

            MERGE (j1_9:Jugador {nombre: "Schneider,Jana"})
            MERGE (j2_9:Jugador {nombre: "Beydullayeva,Govhar"})

            MERGE (j1_9)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p9)
            MERGE (j2_9)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p9)
            
            
                        
            MERGE (p9)-[:TIENE_APERTURA]->(a9)

            MERGE (p9)-[:RESULTADO_DE_PARTIDA]->(r9)  
            MERGE (c9)-[:INCLUYE_PARTIDA]->(p9);

MERGE (c10:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p10:Partida {
                id: "Rhodes GRE-10",
                fecha: "2025.04.01",
                ronda: "2.6",
                nombre: "Danielian,E vs Wikar,Martyna",
                cantidad_movimientos: "39"
            })

            MERGE (a10:Apertura {
                nombre: "D37"
            })

            MERGE (r10:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_10:Jugador {nombre: "Danielian,E"})
            MERGE (j2_10:Jugador {nombre: "Wikar,Martyna"})

            MERGE (j1_10)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p10)
            MERGE (j2_10)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p10)
            
            
                        
            MERGE (p10)-[:TIENE_APERTURA]->(a10)

            MERGE (p10)-[:RESULTADO_DE_PARTIDA]->(r10)  
            MERGE (c10)-[:INCLUYE_PARTIDA]->(p10);

MERGE (c11:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p11:Partida {
                id: "Rhodes GRE-11",
                fecha: "2025.04.01",
                ronda: "2.7",
                nombre: "Mkrtchian,L vs Jarocka,Liwia",
                cantidad_movimientos: "10"
            })

            MERGE (a11:Apertura {
                nombre: "A06"
            })

            MERGE (r11:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_11:Jugador {nombre: "Mkrtchian,L"})
            MERGE (j2_11:Jugador {nombre: "Jarocka,Liwia"})

            MERGE (j1_11)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p11)
            MERGE (j2_11)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p11)
            
            
                        
            MERGE (p11)-[:TIENE_APERTURA]->(a11)

            MERGE (p11)-[:RESULTADO_DE_PARTIDA]->(r11)  
            MERGE (c11)-[:INCLUYE_PARTIDA]->(p11);

MERGE (c12:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p12:Partida {
                id: "Rhodes GRE-12",
                fecha: "2025.04.01",
                ronda: "2.8",
                nombre: "Urh,Zala vs Fataliyeva,U",
                cantidad_movimientos: "58"
            })

            MERGE (a12:Apertura {
                nombre: "E10"
            })

            MERGE (r12:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_12:Jugador {nombre: "Urh,Zala"})
            MERGE (j2_12:Jugador {nombre: "Fataliyeva,U"})

            MERGE (j1_12)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p12)
            MERGE (j2_12)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p12)
            
            
                        
            MERGE (p12)-[:TIENE_APERTURA]->(a12)

            MERGE (p12)-[:RESULTADO_DE_PARTIDA]->(r12)  
            MERGE (c12)-[:INCLUYE_PARTIDA]->(p12);

MERGE (c13:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p13:Partida {
                id: "Rhodes GRE-13",
                fecha: "2025.04.01",
                ronda: "2.9",
                nombre: "Narva,M vs Velikic,A",
                cantidad_movimientos: "37"
            })

            MERGE (a13:Apertura {
                nombre: "B12"
            })

            MERGE (r13:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_13:Jugador {nombre: "Narva,M"})
            MERGE (j2_13:Jugador {nombre: "Velikic,A"})

            MERGE (j1_13)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p13)
            MERGE (j2_13)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p13)
            
            
                        
            MERGE (p13)-[:TIENE_APERTURA]->(a13)

            MERGE (p13)-[:RESULTADO_DE_PARTIDA]->(r13)  
            MERGE (c13)-[:INCLUYE_PARTIDA]->(p13);

MERGE (c14:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p14:Partida {
                id: "Rhodes GRE-14",
                fecha: "2025.04.01",
                ronda: "2.10",
                nombre: "Gevorgyan,M vs Vega Gutierrez,S",
                cantidad_movimientos: "82"
            })

            MERGE (a14:Apertura {
                nombre: "B46"
            })

            MERGE (r14:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_14:Jugador {nombre: "Gevorgyan,M"})
            MERGE (j2_14:Jugador {nombre: "Vega Gutierrez,S"})

            MERGE (j1_14)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p14)
            MERGE (j2_14)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p14)
            
            
                        
            MERGE (p14)-[:TIENE_APERTURA]->(a14)

            MERGE (p14)-[:RESULTADO_DE_PARTIDA]->(r14)  
            MERGE (c14)-[:INCLUYE_PARTIDA]->(p14);

MERGE (c15:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p15:Partida {
                id: "Rhodes GRE-15",
                fecha: "2025.04.01",
                ronda: "2.11",
                nombre: "Maltsevskaya,Aleksandra vs Dwilewicz,K",
                cantidad_movimientos: "102"
            })

            MERGE (a15:Apertura {
                nombre: "C50"
            })

            MERGE (r15:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_15:Jugador {nombre: "Maltsevskaya,Aleksandra"})
            MERGE (j2_15:Jugador {nombre: "Dwilewicz,K"})

            MERGE (j1_15)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p15)
            MERGE (j2_15)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p15)
            
            
                        
            MERGE (p15)-[:TIENE_APERTURA]->(a15)

            MERGE (p15)-[:RESULTADO_DE_PARTIDA]->(r15)  
            MERGE (c15)-[:INCLUYE_PARTIDA]->(p15);

MERGE (c16:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p16:Partida {
                id: "Rhodes GRE-16",
                fecha: "2025.04.01",
                ronda: "2.12",
                nombre: "Zherebtsova,A vs Atalik,E",
                cantidad_movimientos: "46"
            })

            MERGE (a16:Apertura {
                nombre: "D21"
            })

            MERGE (r16:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_16:Jugador {nombre: "Zherebtsova,A"})
            MERGE (j2_16:Jugador {nombre: "Atalik,E"})

            MERGE (j1_16)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p16)
            MERGE (j2_16)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p16)
            
            
                        
            MERGE (p16)-[:TIENE_APERTURA]->(a16)

            MERGE (p16)-[:RESULTADO_DE_PARTIDA]->(r16)  
            MERGE (c16)-[:INCLUYE_PARTIDA]->(p16);

MERGE (c17:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p17:Partida {
                id: "Rhodes GRE-17",
                fecha: "2025.04.01",
                ronda: "2.13",
                nombre: "Rudzinska,Michalina vs Socko,M",
                cantidad_movimientos: "49"
            })

            MERGE (a17:Apertura {
                nombre: "C07"
            })

            MERGE (r17:Resultado {
                nombre: "negras"
            })

            MERGE (j1_17:Jugador {nombre: "Rudzinska,Michalina"})
            MERGE (j2_17:Jugador {nombre: "Socko,M"})

            MERGE (j1_17)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p17)
            MERGE (j2_17)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p17)
            
            
                        
            MERGE (p17)-[:TIENE_APERTURA]->(a17)

            MERGE (p17)-[:RESULTADO_DE_PARTIDA]->(r17)  
            MERGE (c17)-[:INCLUYE_PARTIDA]->(p17);

MERGE (c18:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p18:Partida {
                id: "Rhodes GRE-18",
                fecha: "2025.04.01",
                ronda: "2.14",
                nombre: "Roebers,Eline vs Mgeladze,Kesaria",
                cantidad_movimientos: "33"
            })

            MERGE (a18:Apertura {
                nombre: "E73"
            })

            MERGE (r18:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_18:Jugador {nombre: "Roebers,Eline"})
            MERGE (j2_18:Jugador {nombre: "Mgeladze,Kesaria"})

            MERGE (j1_18)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p18)
            MERGE (j2_18)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p18)
            
            
                        
            MERGE (p18)-[:TIENE_APERTURA]->(a18)

            MERGE (p18)-[:RESULTADO_DE_PARTIDA]->(r18)  
            MERGE (c18)-[:INCLUYE_PARTIDA]->(p18);

MERGE (c19:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p19:Partida {
                id: "Rhodes GRE-19",
                fecha: "2025.04.01",
                ronda: "2.15",
                nombre: "Lehaci,Miruna-Daria vs Bulmaga,I",
                cantidad_movimientos: "76"
            })

            MERGE (a19:Apertura {
                nombre: "B11"
            })

            MERGE (r19:Resultado {
                nombre: "negras"
            })

            MERGE (j1_19:Jugador {nombre: "Lehaci,Miruna-Daria"})
            MERGE (j2_19:Jugador {nombre: "Bulmaga,I"})

            MERGE (j1_19)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p19)
            MERGE (j2_19)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p19)
            
            
                        
            MERGE (p19)-[:TIENE_APERTURA]->(a19)

            MERGE (p19)-[:RESULTADO_DE_PARTIDA]->(r19)  
            MERGE (c19)-[:INCLUYE_PARTIDA]->(p19);

MERGE (c20:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p20:Partida {
                id: "Rhodes GRE-20",
                fecha: "2025.04.01",
                ronda: "2.16",
                nombre: "Mamedjarova,T vs Savina,A",
                cantidad_movimientos: "19"
            })

            MERGE (a20:Apertura {
                nombre: "C21"
            })

            MERGE (r20:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_20:Jugador {nombre: "Mamedjarova,T"})
            MERGE (j2_20:Jugador {nombre: "Savina,A"})

            MERGE (j1_20)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p20)
            MERGE (j2_20)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p20)
            
            
                        
            MERGE (p20)-[:TIENE_APERTURA]->(a20)

            MERGE (p20)-[:RESULTADO_DE_PARTIDA]->(r20)  
            MERGE (c20)-[:INCLUYE_PARTIDA]->(p20);

MERGE (c21:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p21:Partida {
                id: "Rhodes GRE-21",
                fecha: "2025.04.01",
                ronda: "2.17",
                nombre: "Brunello,M vs Prado Acebo,Ines",
                cantidad_movimientos: "23"
            })

            MERGE (a21:Apertura {
                nombre: "A14"
            })

            MERGE (r21:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_21:Jugador {nombre: "Brunello,M"})
            MERGE (j2_21:Jugador {nombre: "Prado Acebo,Ines"})

            MERGE (j1_21)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p21)
            MERGE (j2_21)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p21)
            
            
                        
            MERGE (p21)-[:TIENE_APERTURA]->(a21)

            MERGE (p21)-[:RESULTADO_DE_PARTIDA]->(r21)  
            MERGE (c21)-[:INCLUYE_PARTIDA]->(p21);

MERGE (c22:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p22:Partida {
                id: "Rhodes GRE-22",
                fecha: "2025.04.01",
                ronda: "2.18",
                nombre: "Gaboyan,S vs Toncheva,Nadya",
                cantidad_movimientos: "27"
            })

            MERGE (a22:Apertura {
                nombre: "B30"
            })

            MERGE (r22:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_22:Jugador {nombre: "Gaboyan,S"})
            MERGE (j2_22:Jugador {nombre: "Toncheva,Nadya"})

            MERGE (j1_22)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p22)
            MERGE (j2_22)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p22)
            
            
                        
            MERGE (p22)-[:TIENE_APERTURA]->(a22)

            MERGE (p22)-[:RESULTADO_DE_PARTIDA]->(r22)  
            MERGE (c22)-[:INCLUYE_PARTIDA]->(p22);

MERGE (c23:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p23:Partida {
                id: "Rhodes GRE-23",
                fecha: "2025.04.01",
                ronda: "2.19",
                nombre: "Zawadzka,J vs Kirtadze,Anastasia",
                cantidad_movimientos: "40"
            })

            MERGE (a23:Apertura {
                nombre: "B40"
            })

            MERGE (r23:Resultado {
                nombre: "negras"
            })

            MERGE (j1_23:Jugador {nombre: "Zawadzka,J"})
            MERGE (j2_23:Jugador {nombre: "Kirtadze,Anastasia"})

            MERGE (j1_23)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p23)
            MERGE (j2_23)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p23)
            
            
                        
            MERGE (p23)-[:TIENE_APERTURA]->(a23)

            MERGE (p23)-[:RESULTADO_DE_PARTIDA]->(r23)  
            MERGE (c23)-[:INCLUYE_PARTIDA]->(p23);

MERGE (c24:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p24:Partida {
                id: "Rhodes GRE-24",
                fecha: "2025.04.01",
                ronda: "2.20",
                nombre: "Ibrahimova,S vs Antolak,Julia",
                cantidad_movimientos: "47"
            })

            MERGE (a24:Apertura {
                nombre: "D31"
            })

            MERGE (r24:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_24:Jugador {nombre: "Ibrahimova,S"})
            MERGE (j2_24:Jugador {nombre: "Antolak,Julia"})

            MERGE (j1_24)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p24)
            MERGE (j2_24)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p24)
            
            
                        
            MERGE (p24)-[:TIENE_APERTURA]->(a24)

            MERGE (p24)-[:RESULTADO_DE_PARTIDA]->(r24)  
            MERGE (c24)-[:INCLUYE_PARTIDA]->(p24);

MERGE (c25:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p25:Partida {
                id: "Rhodes GRE-25",
                fecha: "2025.04.01",
                ronda: "2.21",
                nombre: "Karacsonyi,Kata vs Unuk,Laura",
                cantidad_movimientos: "49"
            })

            MERGE (a25:Apertura {
                nombre: "C55"
            })

            MERGE (r25:Resultado {
                nombre: "negras"
            })

            MERGE (j1_25:Jugador {nombre: "Karacsonyi,Kata"})
            MERGE (j2_25:Jugador {nombre: "Unuk,Laura"})

            MERGE (j1_25)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p25)
            MERGE (j2_25)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p25)
            
            
                        
            MERGE (p25)-[:TIENE_APERTURA]->(a25)

            MERGE (p25)-[:RESULTADO_DE_PARTIDA]->(r25)  
            MERGE (c25)-[:INCLUYE_PARTIDA]->(p25);

MERGE (c26:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p26:Partida {
                id: "Rhodes GRE-26",
                fecha: "2025.04.01",
                ronda: "2.22",
                nombre: "Piddubna,Bozhena vs Heinemann,Josefine",
                cantidad_movimientos: "73"
            })

            MERGE (a26:Apertura {
                nombre: "D11"
            })

            MERGE (r26:Resultado {
                nombre: "negras"
            })

            MERGE (j1_26:Jugador {nombre: "Piddubna,Bozhena"})
            MERGE (j2_26:Jugador {nombre: "Heinemann,Josefine"})

            MERGE (j1_26)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p26)
            MERGE (j2_26)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p26)
            
            
                        
            MERGE (p26)-[:TIENE_APERTURA]->(a26)

            MERGE (p26)-[:RESULTADO_DE_PARTIDA]->(r26)  
            MERGE (c26)-[:INCLUYE_PARTIDA]->(p26);

MERGE (c27:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p27:Partida {
                id: "Rhodes GRE-27",
                fecha: "2025.04.01",
                ronda: "2.23",
                nombre: "Radeva,Viktoria vs Bochnickova,A",
                cantidad_movimientos: "37"
            })

            MERGE (a27:Apertura {
                nombre: "B33"
            })

            MERGE (r27:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_27:Jugador {nombre: "Radeva,Viktoria"})
            MERGE (j2_27:Jugador {nombre: "Bochnickova,A"})

            MERGE (j1_27)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p27)
            MERGE (j2_27)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p27)
            
            
                        
            MERGE (p27)-[:TIENE_APERTURA]->(a27)

            MERGE (p27)-[:RESULTADO_DE_PARTIDA]->(r27)  
            MERGE (c27)-[:INCLUYE_PARTIDA]->(p27);

MERGE (c28:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p28:Partida {
                id: "Rhodes GRE-28",
                fecha: "2025.04.01",
                ronda: "2.24",
                nombre: "Golsta,Madara vs Yao,Lan",
                cantidad_movimientos: "36"
            })

            MERGE (a28:Apertura {
                nombre: "B92"
            })

            MERGE (r28:Resultado {
                nombre: "negras"
            })

            MERGE (j1_28:Jugador {nombre: "Golsta,Madara"})
            MERGE (j2_28:Jugador {nombre: "Yao,Lan"})

            MERGE (j1_28)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p28)
            MERGE (j2_28)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p28)
            
            
                        
            MERGE (p28)-[:TIENE_APERTURA]->(a28)

            MERGE (p28)-[:RESULTADO_DE_PARTIDA]->(r28)  
            MERGE (c28)-[:INCLUYE_PARTIDA]->(p28);

MERGE (c29:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p29:Partida {
                id: "Rhodes GRE-29",
                fecha: "2025.04.01",
                ronda: "2.25",
                nombre: "Zimina,O vs Korenova,M",
                cantidad_movimientos: "61"
            })

            MERGE (a29:Apertura {
                nombre: "A48"
            })

            MERGE (r29:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_29:Jugador {nombre: "Zimina,O"})
            MERGE (j2_29:Jugador {nombre: "Korenova,M"})

            MERGE (j1_29)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p29)
            MERGE (j2_29)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p29)
            
            
                        
            MERGE (p29)-[:TIENE_APERTURA]->(a29)

            MERGE (p29)-[:RESULTADO_DE_PARTIDA]->(r29)  
            MERGE (c29)-[:INCLUYE_PARTIDA]->(p29);

MERGE (c30:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p30:Partida {
                id: "Rhodes GRE-30",
                fecha: "2025.04.01",
                ronda: "2.26",
                nombre: "Tsolakidou,Stavroula vs Kosma,Maria",
                cantidad_movimientos: "30"
            })

            MERGE (a30:Apertura {
                nombre: "A14"
            })

            MERGE (r30:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_30:Jugador {nombre: "Tsolakidou,Stavroula"})
            MERGE (j2_30:Jugador {nombre: "Kosma,Maria"})

            MERGE (j1_30)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p30)
            MERGE (j2_30)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p30)
            
            
                        
            MERGE (p30)-[:TIENE_APERTURA]->(a30)

            MERGE (p30)-[:RESULTADO_DE_PARTIDA]->(r30)  
            MERGE (c30)-[:INCLUYE_PARTIDA]->(p30);

MERGE (c31:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p31:Partida {
                id: "Rhodes GRE-31",
                fecha: "2025.04.01",
                ronda: "2.27",
                nombre: "Chelushkina,I vs Wagner,Dinara",
                cantidad_movimientos: "63"
            })

            MERGE (a31:Apertura {
                nombre: "A13"
            })

            MERGE (r31:Resultado {
                nombre: "negras"
            })

            MERGE (j1_31:Jugador {nombre: "Chelushkina,I"})
            MERGE (j2_31:Jugador {nombre: "Wagner,Dinara"})

            MERGE (j1_31)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p31)
            MERGE (j2_31)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p31)
            
            
                        
            MERGE (p31)-[:TIENE_APERTURA]->(a31)

            MERGE (p31)-[:RESULTADO_DE_PARTIDA]->(r31)  
            MERGE (c31)-[:INCLUYE_PARTIDA]->(p31);

MERGE (c32:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p32:Partida {
                id: "Rhodes GRE-32",
                fecha: "2025.04.01",
                ronda: "2.28",
                nombre: "Javakhishvili,L vs Rodshtein,Tereza",
                cantidad_movimientos: "50"
            })

            MERGE (a32:Apertura {
                nombre: "A04"
            })

            MERGE (r32:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_32:Jugador {nombre: "Javakhishvili,L"})
            MERGE (j2_32:Jugador {nombre: "Rodshtein,Tereza"})

            MERGE (j1_32)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p32)
            MERGE (j2_32)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p32)
            
            
                        
            MERGE (p32)-[:TIENE_APERTURA]->(a32)

            MERGE (p32)-[:RESULTADO_DE_PARTIDA]->(r32)  
            MERGE (c32)-[:INCLUYE_PARTIDA]->(p32);

MERGE (c33:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p33:Partida {
                id: "Rhodes GRE-33",
                fecha: "2025.04.01",
                ronda: "2.29",
                nombre: "Stefanova,A vs Abdinova,Narmin",
                cantidad_movimientos: "37"
            })

            MERGE (a33:Apertura {
                nombre: "A08"
            })

            MERGE (r33:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_33:Jugador {nombre: "Stefanova,A"})
            MERGE (j2_33:Jugador {nombre: "Abdinova,Narmin"})

            MERGE (j1_33)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p33)
            MERGE (j2_33)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p33)
            
            
                        
            MERGE (p33)-[:TIENE_APERTURA]->(a33)

            MERGE (p33)-[:RESULTADO_DE_PARTIDA]->(r33)  
            MERGE (c33)-[:INCLUYE_PARTIDA]->(p33);

MERGE (c34:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p34:Partida {
                id: "Rhodes GRE-34",
                fecha: "2025.04.01",
                ronda: "2.30",
                nombre: "Bochnickova,Simona vs Daulyte-Cornette,Deimante",
                cantidad_movimientos: "52"
            })

            MERGE (a34:Apertura {
                nombre: "C41"
            })

            MERGE (r34:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_34:Jugador {nombre: "Bochnickova,Simona"})
            MERGE (j2_34:Jugador {nombre: "Daulyte-Cornette,Deimante"})

            MERGE (j1_34)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p34)
            MERGE (j2_34)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p34)
            
            
                        
            MERGE (p34)-[:TIENE_APERTURA]->(a34)

            MERGE (p34)-[:RESULTADO_DE_PARTIDA]->(r34)  
            MERGE (c34)-[:INCLUYE_PARTIDA]->(p34);

MERGE (c35:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p35:Partida {
                id: "Rhodes GRE-35",
                fecha: "2025.04.01",
                ronda: "2.31",
                nombre: "Milliet,S vs Yildiz,Elif Zeren",
                cantidad_movimientos: "59"
            })

            MERGE (a35:Apertura {
                nombre: "E06"
            })

            MERGE (r35:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_35:Jugador {nombre: "Milliet,S"})
            MERGE (j2_35:Jugador {nombre: "Yildiz,Elif Zeren"})

            MERGE (j1_35)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p35)
            MERGE (j2_35)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p35)
            
            
                        
            MERGE (p35)-[:TIENE_APERTURA]->(a35)

            MERGE (p35)-[:RESULTADO_DE_PARTIDA]->(r35)  
            MERGE (c35)-[:INCLUYE_PARTIDA]->(p35);

MERGE (c36:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p36:Partida {
                id: "Rhodes GRE-36",
                fecha: "2025.04.01",
                ronda: "2.32",
                nombre: "Kiolbasa,Oliwia vs Heinatz,G",
                cantidad_movimientos: "41"
            })

            MERGE (a36:Apertura {
                nombre: "B27"
            })

            MERGE (r36:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_36:Jugador {nombre: "Kiolbasa,Oliwia"})
            MERGE (j2_36:Jugador {nombre: "Heinatz,G"})

            MERGE (j1_36)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p36)
            MERGE (j2_36)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p36)
            
            
                        
            MERGE (p36)-[:TIENE_APERTURA]->(a36)

            MERGE (p36)-[:RESULTADO_DE_PARTIDA]->(r36)  
            MERGE (c36)-[:INCLUYE_PARTIDA]->(p36);

MERGE (c37:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p37:Partida {
                id: "Rhodes GRE-37",
                fecha: "2025.04.01",
                ronda: "2.33",
                nombre: "Khachatryan,Anna vs Guichard,P",
                cantidad_movimientos: "76"
            })

            MERGE (a37:Apertura {
                nombre: "A34"
            })

            MERGE (r37:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_37:Jugador {nombre: "Khachatryan,Anna"})
            MERGE (j2_37:Jugador {nombre: "Guichard,P"})

            MERGE (j1_37)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p37)
            MERGE (j2_37)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p37)
            
            
                        
            MERGE (p37)-[:TIENE_APERTURA]->(a37)

            MERGE (p37)-[:RESULTADO_DE_PARTIDA]->(r37)  
            MERGE (c37)-[:INCLUYE_PARTIDA]->(p37);

MERGE (c38:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p38:Partida {
                id: "Rhodes GRE-38",
                fecha: "2025.04.01",
                ronda: "2.34",
                nombre: "Gaponenko,I vs Vidic,Teja",
                cantidad_movimientos: "51"
            })

            MERGE (a38:Apertura {
                nombre: "C69"
            })

            MERGE (r38:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_38:Jugador {nombre: "Gaponenko,I"})
            MERGE (j2_38:Jugador {nombre: "Vidic,Teja"})

            MERGE (j1_38)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p38)
            MERGE (j2_38)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p38)
            
            
                        
            MERGE (p38)-[:TIENE_APERTURA]->(a38)

            MERGE (p38)-[:RESULTADO_DE_PARTIDA]->(r38)  
            MERGE (c38)-[:INCLUYE_PARTIDA]->(p38);

MERGE (c39:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p39:Partida {
                id: "Rhodes GRE-39",
                fecha: "2025.04.01",
                ronda: "2.35",
                nombre: "Ter-Avetisjana,Agnesa Stepania vs Mammadova,G",
                cantidad_movimientos: "53"
            })

            MERGE (a39:Apertura {
                nombre: "B51"
            })

            MERGE (r39:Resultado {
                nombre: "negras"
            })

            MERGE (j1_39:Jugador {nombre: "Ter-Avetisjana,Agnesa Stepania"})
            MERGE (j2_39:Jugador {nombre: "Mammadova,G"})

            MERGE (j1_39)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p39)
            MERGE (j2_39)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p39)
            
            
                        
            MERGE (p39)-[:TIENE_APERTURA]->(a39)

            MERGE (p39)-[:RESULTADO_DE_PARTIDA]->(r39)  
            MERGE (c39)-[:INCLUYE_PARTIDA]->(p39);

MERGE (c40:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p40:Partida {
                id: "Rhodes GRE-40",
                fecha: "2025.04.01",
                ronda: "2.36",
                nombre: "Sliwicka,Alicja vs Hapala,L",
                cantidad_movimientos: "61"
            })

            MERGE (a40:Apertura {
                nombre: "B44"
            })

            MERGE (r40:Resultado {
                nombre: "negras"
            })

            MERGE (j1_40:Jugador {nombre: "Sliwicka,Alicja"})
            MERGE (j2_40:Jugador {nombre: "Hapala,L"})

            MERGE (j1_40)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p40)
            MERGE (j2_40)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p40)
            
            
                        
            MERGE (p40)-[:TIENE_APERTURA]->(a40)

            MERGE (p40)-[:RESULTADO_DE_PARTIDA]->(r40)  
            MERGE (c40)-[:INCLUYE_PARTIDA]->(p40);

MERGE (c41:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p41:Partida {
                id: "Rhodes GRE-41",
                fecha: "2025.04.01",
                ronda: "2.37",
                nombre: "Bhatia,Kanishka vs Doluhanova,E",
                cantidad_movimientos: "61"
            })

            MERGE (a41:Apertura {
                nombre: "C53"
            })

            MERGE (r41:Resultado {
                nombre: "negras"
            })

            MERGE (j1_41:Jugador {nombre: "Bhatia,Kanishka"})
            MERGE (j2_41:Jugador {nombre: "Doluhanova,E"})

            MERGE (j1_41)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p41)
            MERGE (j2_41)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p41)
            
            
                        
            MERGE (p41)-[:TIENE_APERTURA]->(a41)

            MERGE (p41)-[:RESULTADO_DE_PARTIDA]->(r41)  
            MERGE (c41)-[:INCLUYE_PARTIDA]->(p41);

MERGE (c42:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p42:Partida {
                id: "Rhodes GRE-42",
                fecha: "2025.04.01",
                ronda: "2.38",
                nombre: "Donghvani,Nia vs Sieber,Fiona",
                cantidad_movimientos: "84"
            })

            MERGE (a42:Apertura {
                nombre: "E51"
            })

            MERGE (r42:Resultado {
                nombre: "negras"
            })

            MERGE (j1_42:Jugador {nombre: "Donghvani,Nia"})
            MERGE (j2_42:Jugador {nombre: "Sieber,Fiona"})

            MERGE (j1_42)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p42)
            MERGE (j2_42)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p42)
            
            
                        
            MERGE (p42)-[:TIENE_APERTURA]->(a42)

            MERGE (p42)-[:RESULTADO_DE_PARTIDA]->(r42)  
            MERGE (c42)-[:INCLUYE_PARTIDA]->(p42);

MERGE (c43:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p43:Partida {
                id: "Rhodes GRE-43",
                fecha: "2025.04.01",
                ronda: "2.39",
                nombre: "Krasteva,Beloslava vs Szente Varga,F",
                cantidad_movimientos: "43"
            })

            MERGE (a43:Apertura {
                nombre: "E73"
            })

            MERGE (r43:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_43:Jugador {nombre: "Krasteva,Beloslava"})
            MERGE (j2_43:Jugador {nombre: "Szente Varga,F"})

            MERGE (j1_43)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p43)
            MERGE (j2_43)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p43)
            
            
                        
            MERGE (p43)-[:TIENE_APERTURA]->(a43)

            MERGE (p43)-[:RESULTADO_DE_PARTIDA]->(r43)  
            MERGE (c43)-[:INCLUYE_PARTIDA]->(p43);

MERGE (c44:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p44:Partida {
                id: "Rhodes GRE-44",
                fecha: "2025.04.01",
                ronda: "2.40",
                nombre: "Calzetta Ruiz,M vs Tirpan,Ceren",
                cantidad_movimientos: "42"
            })

            MERGE (a44:Apertura {
                nombre: "B41"
            })

            MERGE (r44:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_44:Jugador {nombre: "Calzetta Ruiz,M"})
            MERGE (j2_44:Jugador {nombre: "Tirpan,Ceren"})

            MERGE (j1_44)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p44)
            MERGE (j2_44)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p44)
            
            
                        
            MERGE (p44)-[:TIENE_APERTURA]->(a44)

            MERGE (p44)-[:RESULTADO_DE_PARTIDA]->(r44)  
            MERGE (c44)-[:INCLUYE_PARTIDA]->(p44);

MERGE (c45:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p45:Partida {
                id: "Rhodes GRE-45",
                fecha: "2025.04.01",
                ronda: "2.41",
                nombre: "Harutyunyan,Gabriela vs Sandu,Mi",
                cantidad_movimientos: "61"
            })

            MERGE (a45:Apertura {
                nombre: "C85"
            })

            MERGE (r45:Resultado {
                nombre: "negras"
            })

            MERGE (j1_45:Jugador {nombre: "Harutyunyan,Gabriela"})
            MERGE (j2_45:Jugador {nombre: "Sandu,Mi"})

            MERGE (j1_45)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p45)
            MERGE (j2_45)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p45)
            
            
                        
            MERGE (p45)-[:TIENE_APERTURA]->(a45)

            MERGE (p45)-[:RESULTADO_DE_PARTIDA]->(r45)  
            MERGE (c45)-[:INCLUYE_PARTIDA]->(p45);

MERGE (c46:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p46:Partida {
                id: "Rhodes GRE-46",
                fecha: "2025.04.01",
                ronda: "2.42",
                nombre: "Nahapetyan,Ani vs Lach,A",
                cantidad_movimientos: "35"
            })

            MERGE (a46:Apertura {
                nombre: "C10"
            })

            MERGE (r46:Resultado {
                nombre: "negras"
            })

            MERGE (j1_46:Jugador {nombre: "Nahapetyan,Ani"})
            MERGE (j2_46:Jugador {nombre: "Lach,A"})

            MERGE (j1_46)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p46)
            MERGE (j2_46)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p46)
            
            
                        
            MERGE (p46)-[:TIENE_APERTURA]->(a46)

            MERGE (p46)-[:RESULTADO_DE_PARTIDA]->(r46)  
            MERGE (c46)-[:INCLUYE_PARTIDA]->(p46);

MERGE (c47:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p47:Partida {
                id: "Rhodes GRE-47",
                fecha: "2025.04.01",
                ronda: "2.43",
                nombre: "Injac,Teodora vs Silva,Ana Ines Teixeira Da",
                cantidad_movimientos: "27"
            })

            MERGE (a47:Apertura {
                nombre: "A13"
            })

            MERGE (r47:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_47:Jugador {nombre: "Injac,Teodora"})
            MERGE (j2_47:Jugador {nombre: "Silva,Ana Ines Teixeira Da"})

            MERGE (j1_47)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p47)
            MERGE (j2_47)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p47)
            
            
                        
            MERGE (p47)-[:TIENE_APERTURA]->(a47)

            MERGE (p47)-[:RESULTADO_DE_PARTIDA]->(r47)  
            MERGE (c47)-[:INCLUYE_PARTIDA]->(p47);

MERGE (c48:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p48:Partida {
                id: "Rhodes GRE-48",
                fecha: "2025.04.01",
                ronda: "2.44",
                nombre: "Kulon,K vs Shuqja,Klean",
                cantidad_movimientos: "36"
            })

            MERGE (a48:Apertura {
                nombre: "B21"
            })

            MERGE (r48:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_48:Jugador {nombre: "Kulon,K"})
            MERGE (j2_48:Jugador {nombre: "Shuqja,Klean"})

            MERGE (j1_48)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p48)
            MERGE (j2_48)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p48)
            
            
                        
            MERGE (p48)-[:TIENE_APERTURA]->(a48)

            MERGE (p48)-[:RESULTADO_DE_PARTIDA]->(r48)  
            MERGE (c48)-[:INCLUYE_PARTIDA]->(p48);

MERGE (c49:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p49:Partida {
                id: "Rhodes GRE-49",
                fecha: "2025.04.01",
                ronda: "2.45",
                nombre: "Zhukova,N vs Mihaljevic,Eva",
                cantidad_movimientos: "53"
            })

            MERGE (a49:Apertura {
                nombre: "A06"
            })

            MERGE (r49:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_49:Jugador {nombre: "Zhukova,N"})
            MERGE (j2_49:Jugador {nombre: "Mihaljevic,Eva"})

            MERGE (j1_49)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p49)
            MERGE (j2_49)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p49)
            
            
                        
            MERGE (p49)-[:TIENE_APERTURA]->(a49)

            MERGE (p49)-[:RESULTADO_DE_PARTIDA]->(r49)  
            MERGE (c49)-[:INCLUYE_PARTIDA]->(p49);

MERGE (c50:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p50:Partida {
                id: "Rhodes GRE-50",
                fecha: "2025.04.01",
                ronda: "2.46",
                nombre: "Kochavi,Dana vs Caku,Kler",
                cantidad_movimientos: "38"
            })

            MERGE (a50:Apertura {
                nombre: "C97"
            })

            MERGE (r50:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_50:Jugador {nombre: "Kochavi,Dana"})
            MERGE (j2_50:Jugador {nombre: "Caku,Kler"})

            MERGE (j1_50)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p50)
            MERGE (j2_50)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p50)
            
            
                        
            MERGE (p50)-[:TIENE_APERTURA]->(a50)

            MERGE (p50)-[:RESULTADO_DE_PARTIDA]->(r50)  
            MERGE (c50)-[:INCLUYE_PARTIDA]->(p50);

MERGE (c51:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p51:Partida {
                id: "Rhodes GRE-51",
                fecha: "2025.04.01",
                ronda: "2.47",
                nombre: "Zvereva,M vs Schippke,Manon",
                cantidad_movimientos: "36"
            })

            MERGE (a51:Apertura {
                nombre: "A13"
            })

            MERGE (r51:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_51:Jugador {nombre: "Zvereva,M"})
            MERGE (j2_51:Jugador {nombre: "Schippke,Manon"})

            MERGE (j1_51)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p51)
            MERGE (j2_51)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p51)
            
            
                        
            MERGE (p51)-[:TIENE_APERTURA]->(a51)

            MERGE (p51)-[:RESULTADO_DE_PARTIDA]->(r51)  
            MERGE (c51)-[:INCLUYE_PARTIDA]->(p51);

MERGE (c52:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p52:Partida {
                id: "Rhodes GRE-52",
                fecha: "2025.04.01",
                ronda: "2.48",
                nombre: "Khurtsilava,I vs Subramanian,Anusha",
                cantidad_movimientos: "45"
            })

            MERGE (a52:Apertura {
                nombre: "A47"
            })

            MERGE (r52:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_52:Jugador {nombre: "Khurtsilava,I"})
            MERGE (j2_52:Jugador {nombre: "Subramanian,Anusha"})

            MERGE (j1_52)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p52)
            MERGE (j2_52)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p52)
            
            
                        
            MERGE (p52)-[:TIENE_APERTURA]->(a52)

            MERGE (p52)-[:RESULTADO_DE_PARTIDA]->(r52)  
            MERGE (c52)-[:INCLUYE_PARTIDA]->(p52);

MERGE (c53:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p53:Partida {
                id: "Rhodes GRE-53",
                fecha: "2025.04.01",
                ronda: "2.49",
                nombre: "Schloffer,Jasmin-Denise vs Hariharan,Shambavi",
                cantidad_movimientos: "29"
            })

            MERGE (a53:Apertura {
                nombre: "D38"
            })

            MERGE (r53:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_53:Jugador {nombre: "Schloffer,Jasmin-Denise"})
            MERGE (j2_53:Jugador {nombre: "Hariharan,Shambavi"})

            MERGE (j1_53)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p53)
            MERGE (j2_53)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p53)
            
            
                        
            MERGE (p53)-[:TIENE_APERTURA]->(a53)

            MERGE (p53)-[:RESULTADO_DE_PARTIDA]->(r53)  
            MERGE (c53)-[:INCLUYE_PARTIDA]->(p53);

MERGE (c54:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p54:Partida {
                id: "Rhodes GRE-54",
                fecha: "2025.04.01",
                ronda: "2.50",
                nombre: "Terbe,Z vs Valkova,Angelika",
                cantidad_movimientos: "35"
            })

            MERGE (a54:Apertura {
                nombre: "D31"
            })

            MERGE (r54:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_54:Jugador {nombre: "Terbe,Z"})
            MERGE (j2_54:Jugador {nombre: "Valkova,Angelika"})

            MERGE (j1_54)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p54)
            MERGE (j2_54)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p54)
            
            
                        
            MERGE (p54)-[:TIENE_APERTURA]->(a54)

            MERGE (p54)-[:RESULTADO_DE_PARTIDA]->(r54)  
            MERGE (c54)-[:INCLUYE_PARTIDA]->(p54);

MERGE (c55:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p55:Partida {
                id: "Rhodes GRE-55",
                fecha: "2025.04.01",
                ronda: "2.51",
                nombre: "Pavlidou,E vs Kiousi,Panagiota",
                cantidad_movimientos: "46"
            })

            MERGE (a55:Apertura {
                nombre: "E24"
            })

            MERGE (r55:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_55:Jugador {nombre: "Pavlidou,E"})
            MERGE (j2_55:Jugador {nombre: "Kiousi,Panagiota"})

            MERGE (j1_55)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p55)
            MERGE (j2_55)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p55)
            
            
                        
            MERGE (p55)-[:TIENE_APERTURA]->(a55)

            MERGE (p55)-[:RESULTADO_DE_PARTIDA]->(r55)  
            MERGE (c55)-[:INCLUYE_PARTIDA]->(p55);

MERGE (c56:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p56:Partida {
                id: "Rhodes GRE-56",
                fecha: "2025.04.01",
                ronda: "2.52",
                nombre: "Eric,J vs Krkyasharyan,Sona",
                cantidad_movimientos: "40"
            })

            MERGE (a56:Apertura {
                nombre: "B90"
            })

            MERGE (r56:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_56:Jugador {nombre: "Eric,J"})
            MERGE (j2_56:Jugador {nombre: "Krkyasharyan,Sona"})

            MERGE (j1_56)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p56)
            MERGE (j2_56)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p56)
            
            
                        
            MERGE (p56)-[:TIENE_APERTURA]->(a56)

            MERGE (p56)-[:RESULTADO_DE_PARTIDA]->(r56)  
            MERGE (c56)-[:INCLUYE_PARTIDA]->(p56);

MERGE (c57:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p57:Partida {
                id: "Rhodes GRE-57",
                fecha: "2025.04.01",
                ronda: "2.53",
                nombre: "Zaksaite,S vs Golsta,Ramona",
                cantidad_movimientos: "38"
            })

            MERGE (a57:Apertura {
                nombre: "B30"
            })

            MERGE (r57:Resultado {
                nombre: "negras"
            })

            MERGE (j1_57:Jugador {nombre: "Zaksaite,S"})
            MERGE (j2_57:Jugador {nombre: "Golsta,Ramona"})

            MERGE (j1_57)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p57)
            MERGE (j2_57)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p57)
            
            
                        
            MERGE (p57)-[:TIENE_APERTURA]->(a57)

            MERGE (p57)-[:RESULTADO_DE_PARTIDA]->(r57)  
            MERGE (c57)-[:INCLUYE_PARTIDA]->(p57);

MERGE (c58:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p58:Partida {
                id: "Rhodes GRE-58",
                fecha: "2025.04.01",
                ronda: "2.54",
                nombre: "Alexandri,Dimitra vs Ciolacu,Alessia-Mihaela",
                cantidad_movimientos: "32"
            })

            MERGE (a58:Apertura {
                nombre: "D35"
            })

            MERGE (r58:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_58:Jugador {nombre: "Alexandri,Dimitra"})
            MERGE (j2_58:Jugador {nombre: "Ciolacu,Alessia-Mihaela"})

            MERGE (j1_58)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p58)
            MERGE (j2_58)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p58)
            
            
                        
            MERGE (p58)-[:TIENE_APERTURA]->(a58)

            MERGE (p58)-[:RESULTADO_DE_PARTIDA]->(r58)  
            MERGE (c58)-[:INCLUYE_PARTIDA]->(p58);

MERGE (c59:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p59:Partida {
                id: "Rhodes GRE-59",
                fecha: "2025.04.01",
                ronda: "2.55",
                nombre: "Karadas,Hena vs Cornileau,Juliette",
                cantidad_movimientos: "33"
            })

            MERGE (a59:Apertura {
                nombre: "C28"
            })

            MERGE (r59:Resultado {
                nombre: "negras"
            })

            MERGE (j1_59:Jugador {nombre: "Karadas,Hena"})
            MERGE (j2_59:Jugador {nombre: "Cornileau,Juliette"})

            MERGE (j1_59)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p59)
            MERGE (j2_59)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p59)
            
            
                        
            MERGE (p59)-[:TIENE_APERTURA]->(a59)

            MERGE (p59)-[:RESULTADO_DE_PARTIDA]->(r59)  
            MERGE (c59)-[:INCLUYE_PARTIDA]->(p59);

MERGE (c60:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p60:Partida {
                id: "Rhodes GRE-60",
                fecha: "2025.04.01",
                ronda: "2.56",
                nombre: "Dicen,Elis Denele vs Alexandri,Vasiliki",
                cantidad_movimientos: "40"
            })

            MERGE (a60:Apertura {
                nombre: "A62"
            })

            MERGE (r60:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_60:Jugador {nombre: "Dicen,Elis Denele"})
            MERGE (j2_60:Jugador {nombre: "Alexandri,Vasiliki"})

            MERGE (j1_60)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p60)
            MERGE (j2_60)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p60)
            
            
                        
            MERGE (p60)-[:TIENE_APERTURA]->(a60)

            MERGE (p60)-[:RESULTADO_DE_PARTIDA]->(r60)  
            MERGE (c60)-[:INCLUYE_PARTIDA]->(p60);

MERGE (c61:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p61:Partida {
                id: "Rhodes GRE-61",
                fecha: "2025.04.01",
                ronda: "2.57",
                nombre: "Nenova,Andzhelika vs Nadzamova,Viktoria",
                cantidad_movimientos: "47"
            })

            MERGE (a61:Apertura {
                nombre: "B30"
            })

            MERGE (r61:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_61:Jugador {nombre: "Nenova,Andzhelika"})
            MERGE (j2_61:Jugador {nombre: "Nadzamova,Viktoria"})

            MERGE (j1_61)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p61)
            MERGE (j2_61)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p61)
            
            
                        
            MERGE (p61)-[:TIENE_APERTURA]->(a61)

            MERGE (p61)-[:RESULTADO_DE_PARTIDA]->(r61)  
            MERGE (c61)-[:INCLUYE_PARTIDA]->(p61);

MERGE (c62:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p62:Partida {
                id: "Rhodes GRE-62",
                fecha: "2025.04.01",
                ronda: "2.58",
                nombre: "Berke,A vs Kalyva,Kyriaki",
                cantidad_movimientos: "27"
            })

            MERGE (a62:Apertura {
                nombre: "B30"
            })

            MERGE (r62:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_62:Jugador {nombre: "Berke,A"})
            MERGE (j2_62:Jugador {nombre: "Kalyva,Kyriaki"})

            MERGE (j1_62)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p62)
            MERGE (j2_62)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p62)
            
            
                        
            MERGE (p62)-[:TIENE_APERTURA]->(a62)

            MERGE (p62)-[:RESULTADO_DE_PARTIDA]->(r62)  
            MERGE (c62)-[:INCLUYE_PARTIDA]->(p62);

MERGE (c63:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p63:Partida {
                id: "Rhodes GRE-63",
                fecha: "2025.04.01",
                ronda: "2.59",
                nombre: "Mitraka,Chrysoula-Paraskevi vs Koridze,Lile",
                cantidad_movimientos: "33"
            })

            MERGE (a63:Apertura {
                nombre: "E35"
            })

            MERGE (r63:Resultado {
                nombre: "negras"
            })

            MERGE (j1_63:Jugador {nombre: "Mitraka,Chrysoula-Paraskevi"})
            MERGE (j2_63:Jugador {nombre: "Koridze,Lile"})

            MERGE (j1_63)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p63)
            MERGE (j2_63)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p63)
            
            
                        
            MERGE (p63)-[:TIENE_APERTURA]->(a63)

            MERGE (p63)-[:RESULTADO_DE_PARTIDA]->(r63)  
            MERGE (c63)-[:INCLUYE_PARTIDA]->(p63);

MERGE (c64:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p64:Partida {
                id: "Rhodes GRE-64",
                fecha: "2025.04.01",
                ronda: "2.60",
                nombre: "Deak-Sala,Emilia vs Chasouraki,Chrysi",
                cantidad_movimientos: "1"
            })

            MERGE (a64:Apertura {
                nombre: ""
            })

            MERGE (r64:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_64:Jugador {nombre: "Deak-Sala,Emilia"})
            MERGE (j2_64:Jugador {nombre: "Chasouraki,Chrysi"})

            MERGE (j1_64)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p64)
            MERGE (j2_64)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p64)
            
            
                        
            MERGE (p64)-[:TIENE_APERTURA]->(a64)

            MERGE (p64)-[:RESULTADO_DE_PARTIDA]->(r64)  
            MERGE (c64)-[:INCLUYE_PARTIDA]->(p64);

MERGE (c65:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p65:Partida {
                id: "Rhodes GRE-65",
                fecha: "2025.04.01",
                ronda: "2.61",
                nombre: "Paasikangas,J vs Bania,Eleni",
                cantidad_movimientos: "33"
            })

            MERGE (a65:Apertura {
                nombre: "B40"
            })

            MERGE (r65:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_65:Jugador {nombre: "Paasikangas,J"})
            MERGE (j2_65:Jugador {nombre: "Bania,Eleni"})

            MERGE (j1_65)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p65)
            MERGE (j2_65)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p65)
            
            
                        
            MERGE (p65)-[:TIENE_APERTURA]->(a65)

            MERGE (p65)-[:RESULTADO_DE_PARTIDA]->(r65)  
            MERGE (c65)-[:INCLUYE_PARTIDA]->(p65);

MERGE (c66:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p66:Partida {
                id: "Rhodes GRE-66",
                fecha: "2025.04.01",
                ronda: "2.62",
                nombre: "Saraci,Ndriqona vs Zagorac,Lara",
                cantidad_movimientos: "46"
            })

            MERGE (a66:Apertura {
                nombre: "C69"
            })

            MERGE (r66:Resultado {
                nombre: "negras"
            })

            MERGE (j1_66:Jugador {nombre: "Saraci,Ndriqona"})
            MERGE (j2_66:Jugador {nombre: "Zagorac,Lara"})

            MERGE (j1_66)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p66)
            MERGE (j2_66)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p66)
            
            
                        
            MERGE (p66)-[:TIENE_APERTURA]->(a66)

            MERGE (p66)-[:RESULTADO_DE_PARTIDA]->(r66)  
            MERGE (c66)-[:INCLUYE_PARTIDA]->(p66);

MERGE (c67:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p67:Partida {
                id: "Rhodes GRE-67",
                fecha: "2025.04.01",
                ronda: "2.63",
                nombre: "Tsetskhladze,Mariam vs Recica,Jona",
                cantidad_movimientos: "50"
            })

            MERGE (a67:Apertura {
                nombre: "C78"
            })

            MERGE (r67:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_67:Jugador {nombre: "Tsetskhladze,Mariam"})
            MERGE (j2_67:Jugador {nombre: "Recica,Jona"})

            MERGE (j1_67)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p67)
            MERGE (j2_67)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p67)
            
            
                        
            MERGE (p67)-[:TIENE_APERTURA]->(a67)

            MERGE (p67)-[:RESULTADO_DE_PARTIDA]->(r67)  
            MERGE (c67)-[:INCLUYE_PARTIDA]->(p67);

MERGE (c68:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p68:Partida {
                id: "Rhodes GRE-68",
                fecha: "2025.04.01",
                ronda: "2.64",
                nombre: "Sivanandan,Bodhana vs Korinioti,Myrto",
                cantidad_movimientos: "45"
            })

            MERGE (a68:Apertura {
                nombre: "B31"
            })

            MERGE (r68:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_68:Jugador {nombre: "Sivanandan,Bodhana"})
            MERGE (j2_68:Jugador {nombre: "Korinioti,Myrto"})

            MERGE (j1_68)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p68)
            MERGE (j2_68)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p68)
            
            
                        
            MERGE (p68)-[:TIENE_APERTURA]->(a68)

            MERGE (p68)-[:RESULTADO_DE_PARTIDA]->(r68)  
            MERGE (c68)-[:INCLUYE_PARTIDA]->(p68);

MERGE (c69:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p69:Partida {
                id: "Rhodes GRE-69",
                fecha: "2025.04.01",
                ronda: "2.65",
                nombre: "Kaka,Rengina Tsampika vs Grapsa,G",
                cantidad_movimientos: "59"
            })

            MERGE (a69:Apertura {
                nombre: "A45"
            })

            MERGE (r69:Resultado {
                nombre: "negras"
            })

            MERGE (j1_69:Jugador {nombre: "Kaka,Rengina Tsampika"})
            MERGE (j2_69:Jugador {nombre: "Grapsa,G"})

            MERGE (j1_69)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p69)
            MERGE (j2_69)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p69)
            
            
                        
            MERGE (p69)-[:TIENE_APERTURA]->(a69)

            MERGE (p69)-[:RESULTADO_DE_PARTIDA]->(r69)  
            MERGE (c69)-[:INCLUYE_PARTIDA]->(p69);

MERGE (c70:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p70:Partida {
                id: "Rhodes GRE-70",
                fecha: "2025.04.01",
                ronda: "2.66",
                nombre: "Rida,Ruqayyah vs Lamprianou,Marianna",
                cantidad_movimientos: "47"
            })

            MERGE (a70:Apertura {
                nombre: "C53"
            })

            MERGE (r70:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_70:Jugador {nombre: "Rida,Ruqayyah"})
            MERGE (j2_70:Jugador {nombre: "Lamprianou,Marianna"})

            MERGE (j1_70)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p70)
            MERGE (j2_70)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p70)
            
            
                        
            MERGE (p70)-[:TIENE_APERTURA]->(a70)

            MERGE (p70)-[:RESULTADO_DE_PARTIDA]->(r70)  
            MERGE (c70)-[:INCLUYE_PARTIDA]->(p70);

MERGE (c71:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p71:Partida {
                id: "Rhodes GRE-71",
                fecha: "2025.04.01",
                ronda: "2.67",
                nombre: "Revelioti,Eleni Nefeli vs Huseynova,Lala",
                cantidad_movimientos: "35"
            })

            MERGE (a71:Apertura {
                nombre: "B92"
            })

            MERGE (r71:Resultado {
                nombre: "negras"
            })

            MERGE (j1_71:Jugador {nombre: "Revelioti,Eleni Nefeli"})
            MERGE (j2_71:Jugador {nombre: "Huseynova,Lala"})

            MERGE (j1_71)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p71)
            MERGE (j2_71)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p71)
            
            
                        
            MERGE (p71)-[:TIENE_APERTURA]->(a71)

            MERGE (p71)-[:RESULTADO_DE_PARTIDA]->(r71)  
            MERGE (c71)-[:INCLUYE_PARTIDA]->(p71);

MERGE (c72:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p72:Partida {
                id: "Rhodes GRE-72",
                fecha: "2025.04.01",
                ronda: "2.68",
                nombre: "Acarbay,Al vs Lamprianou,Despoina",
                cantidad_movimientos: "29"
            })

            MERGE (a72:Apertura {
                nombre: "D02"
            })

            MERGE (r72:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_72:Jugador {nombre: "Acarbay,Al"})
            MERGE (j2_72:Jugador {nombre: "Lamprianou,Despoina"})

            MERGE (j1_72)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p72)
            MERGE (j2_72)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p72)
            
            
                        
            MERGE (p72)-[:TIENE_APERTURA]->(a72)

            MERGE (p72)-[:RESULTADO_DE_PARTIDA]->(r72)  
            MERGE (c72)-[:INCLUYE_PARTIDA]->(p72);

MERGE (c73:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p73:Partida {
                id: "Rhodes GRE-73",
                fecha: "2025.04.02",
                ronda: "3.1",
                nombre: "Khotenashvili,B vs Brunello,M",
                cantidad_movimientos: "31"
            })

            MERGE (a73:Apertura {
                nombre: "E17"
            })

            MERGE (r73:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_73:Jugador {nombre: "Khotenashvili,B"})
            MERGE (j2_73:Jugador {nombre: "Brunello,M"})

            MERGE (j1_73)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p73)
            MERGE (j2_73)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p73)
            
            
                        
            MERGE (p73)-[:TIENE_APERTURA]->(a73)

            MERGE (p73)-[:RESULTADO_DE_PARTIDA]->(r73)  
            MERGE (c73)-[:INCLUYE_PARTIDA]->(p73);

MERGE (c74:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p74:Partida {
                id: "Rhodes GRE-74",
                fecha: "2025.04.02",
                ronda: "3.2",
                nombre: "Beydullayeva,Govhar vs Radeva,Viktoria",
                cantidad_movimientos: "25"
            })

            MERGE (a74:Apertura {
                nombre: "D38"
            })

            MERGE (r74:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_74:Jugador {nombre: "Beydullayeva,Govhar"})
            MERGE (j2_74:Jugador {nombre: "Radeva,Viktoria"})

            MERGE (j1_74)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p74)
            MERGE (j2_74)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p74)
            
            
                        
            MERGE (p74)-[:TIENE_APERTURA]->(a74)

            MERGE (p74)-[:RESULTADO_DE_PARTIDA]->(r74)  
            MERGE (c74)-[:INCLUYE_PARTIDA]->(p74);

MERGE (c75:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p75:Partida {
                id: "Rhodes GRE-75",
                fecha: "2025.04.02",
                ronda: "3.3",
                nombre: "Unuk,Laura vs Danielian,E",
                cantidad_movimientos: "45"
            })

            MERGE (a75:Apertura {
                nombre: "A46"
            })

            MERGE (r75:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_75:Jugador {nombre: "Unuk,Laura"})
            MERGE (j2_75:Jugador {nombre: "Danielian,E"})

            MERGE (j1_75)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p75)
            MERGE (j2_75)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p75)
            
            
                        
            MERGE (p75)-[:TIENE_APERTURA]->(a75)

            MERGE (p75)-[:RESULTADO_DE_PARTIDA]->(r75)  
            MERGE (c75)-[:INCLUYE_PARTIDA]->(p75);

MERGE (c76:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p76:Partida {
                id: "Rhodes GRE-76",
                fecha: "2025.04.02",
                ronda: "3.4",
                nombre: "Heinemann,Josefine vs Narva,M",
                cantidad_movimientos: "58"
            })

            MERGE (a76:Apertura {
                nombre: "B52"
            })

            MERGE (r76:Resultado {
                nombre: "negras"
            })

            MERGE (j1_76:Jugador {nombre: "Heinemann,Josefine"})
            MERGE (j2_76:Jugador {nombre: "Narva,M"})

            MERGE (j1_76)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p76)
            MERGE (j2_76)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p76)
            
            
                        
            MERGE (p76)-[:TIENE_APERTURA]->(a76)

            MERGE (p76)-[:RESULTADO_DE_PARTIDA]->(r76)  
            MERGE (c76)-[:INCLUYE_PARTIDA]->(p76);

MERGE (c77:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p77:Partida {
                id: "Rhodes GRE-77",
                fecha: "2025.04.02",
                ronda: "3.5",
                nombre: "Socko,M vs Urh,Zala",
                cantidad_movimientos: "51"
            })

            MERGE (a77:Apertura {
                nombre: "A16"
            })

            MERGE (r77:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_77:Jugador {nombre: "Socko,M"})
            MERGE (j2_77:Jugador {nombre: "Urh,Zala"})

            MERGE (j1_77)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p77)
            MERGE (j2_77)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p77)
            
            
                        
            MERGE (p77)-[:TIENE_APERTURA]->(a77)

            MERGE (p77)-[:RESULTADO_DE_PARTIDA]->(r77)  
            MERGE (c77)-[:INCLUYE_PARTIDA]->(p77);

MERGE (c78:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p78:Partida {
                id: "Rhodes GRE-78",
                fecha: "2025.04.02",
                ronda: "3.6",
                nombre: "Yao,Lan vs Roebers,Eline",
                cantidad_movimientos: "52"
            })

            MERGE (a78:Apertura {
                nombre: "C02"
            })

            MERGE (r78:Resultado {
                nombre: "negras"
            })

            MERGE (j1_78:Jugador {nombre: "Yao,Lan"})
            MERGE (j2_78:Jugador {nombre: "Roebers,Eline"})

            MERGE (j1_78)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p78)
            MERGE (j2_78)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p78)
            
            
                        
            MERGE (p78)-[:TIENE_APERTURA]->(a78)

            MERGE (p78)-[:RESULTADO_DE_PARTIDA]->(r78)  
            MERGE (c78)-[:INCLUYE_PARTIDA]->(p78);

MERGE (c79:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p79:Partida {
                id: "Rhodes GRE-79",
                fecha: "2025.04.02",
                ronda: "3.7",
                nombre: "Bulmaga,I vs Zherebtsova,A",
                cantidad_movimientos: "78"
            })

            MERGE (a79:Apertura {
                nombre: "C88"
            })

            MERGE (r79:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_79:Jugador {nombre: "Bulmaga,I"})
            MERGE (j2_79:Jugador {nombre: "Zherebtsova,A"})

            MERGE (j1_79)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p79)
            MERGE (j2_79)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p79)
            
            
                        
            MERGE (p79)-[:TIENE_APERTURA]->(a79)

            MERGE (p79)-[:RESULTADO_DE_PARTIDA]->(r79)  
            MERGE (c79)-[:INCLUYE_PARTIDA]->(p79);

MERGE (c80:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p80:Partida {
                id: "Rhodes GRE-80",
                fecha: "2025.04.02",
                ronda: "3.8",
                nombre: "Kirtadze,Anastasia vs Javakhishvili,L",
                cantidad_movimientos: "31"
            })

            MERGE (a80:Apertura {
                nombre: "B32"
            })

            MERGE (r80:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_80:Jugador {nombre: "Kirtadze,Anastasia"})
            MERGE (j2_80:Jugador {nombre: "Javakhishvili,L"})

            MERGE (j1_80)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p80)
            MERGE (j2_80)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p80)
            
            
                        
            MERGE (p80)-[:TIENE_APERTURA]->(a80)

            MERGE (p80)-[:RESULTADO_DE_PARTIDA]->(r80)  
            MERGE (c80)-[:INCLUYE_PARTIDA]->(p80);

MERGE (c81:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p81:Partida {
                id: "Rhodes GRE-81",
                fecha: "2025.04.02",
                ronda: "3.9",
                nombre: "Batsiashvili,N vs Avramidou,Anastasia",
                cantidad_movimientos: "65"
            })

            MERGE (a81:Apertura {
                nombre: "A15"
            })

            MERGE (r81:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_81:Jugador {nombre: "Batsiashvili,N"})
            MERGE (j2_81:Jugador {nombre: "Avramidou,Anastasia"})

            MERGE (j1_81)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p81)
            MERGE (j2_81)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p81)
            
            
                        
            MERGE (p81)-[:TIENE_APERTURA]->(a81)

            MERGE (p81)-[:RESULTADO_DE_PARTIDA]->(r81)  
            MERGE (c81)-[:INCLUYE_PARTIDA]->(p81);

MERGE (c82:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p82:Partida {
                id: "Rhodes GRE-82",
                fecha: "2025.04.02",
                ronda: "3.10",
                nombre: "Arabidze,M vs Mkrtchyan,Mariam",
                cantidad_movimientos: "27"
            })

            MERGE (a82:Apertura {
                nombre: "D78"
            })

            MERGE (r82:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_82:Jugador {nombre: "Arabidze,M"})
            MERGE (j2_82:Jugador {nombre: "Mkrtchyan,Mariam"})

            MERGE (j1_82)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p82)
            MERGE (j2_82)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p82)
            
            
                        
            MERGE (p82)-[:TIENE_APERTURA]->(a82)

            MERGE (p82)-[:RESULTADO_DE_PARTIDA]->(r82)  
            MERGE (c82)-[:INCLUYE_PARTIDA]->(p82);

MERGE (c83:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p83:Partida {
                id: "Rhodes GRE-83",
                fecha: "2025.04.02",
                ronda: "3.11",
                nombre: "Sieber,Fiona vs Tsolakidou,Stavroula",
                cantidad_movimientos: "39"
            })

            MERGE (a83:Apertura {
                nombre: "B48"
            })

            MERGE (r83:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_83:Jugador {nombre: "Sieber,Fiona"})
            MERGE (j2_83:Jugador {nombre: "Tsolakidou,Stavroula"})

            MERGE (j1_83)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p83)
            MERGE (j2_83)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p83)
            
            
                        
            MERGE (p83)-[:TIENE_APERTURA]->(a83)

            MERGE (p83)-[:RESULTADO_DE_PARTIDA]->(r83)  
            MERGE (c83)-[:INCLUYE_PARTIDA]->(p83);

MERGE (c84:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p84:Partida {
                id: "Rhodes GRE-84",
                fecha: "2025.04.02",
                ronda: "3.12",
                nombre: "Wagner,Dinara vs Allahverdiyeva,Ayan",
                cantidad_movimientos: "43"
            })

            MERGE (a84:Apertura {
                nombre: "E32"
            })

            MERGE (r84:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_84:Jugador {nombre: "Wagner,Dinara"})
            MERGE (j2_84:Jugador {nombre: "Allahverdiyeva,Ayan"})

            MERGE (j1_84)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p84)
            MERGE (j2_84)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p84)
            
            
                        
            MERGE (p84)-[:TIENE_APERTURA]->(a84)

            MERGE (p84)-[:RESULTADO_DE_PARTIDA]->(r84)  
            MERGE (c84)-[:INCLUYE_PARTIDA]->(p84);

MERGE (c85:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p85:Partida {
                id: "Rhodes GRE-85",
                fecha: "2025.04.02",
                ronda: "3.13",
                nombre: "Ushenina,A vs Krasteva,Beloslava",
                cantidad_movimientos: "38"
            })

            MERGE (a85:Apertura {
                nombre: "A41"
            })

            MERGE (r85:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_85:Jugador {nombre: "Ushenina,A"})
            MERGE (j2_85:Jugador {nombre: "Krasteva,Beloslava"})

            MERGE (j1_85)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p85)
            MERGE (j2_85)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p85)
            
            
                        
            MERGE (p85)-[:TIENE_APERTURA]->(a85)

            MERGE (p85)-[:RESULTADO_DE_PARTIDA]->(r85)  
            MERGE (c85)-[:INCLUYE_PARTIDA]->(p85);

MERGE (c86:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p86:Partida {
                id: "Rhodes GRE-86",
                fecha: "2025.04.02",
                ronda: "3.14",
                nombre: "Jarocka,Liwia vs Stefanova,A",
                cantidad_movimientos: "52"
            })

            MERGE (a86:Apertura {
                nombre: "C41"
            })

            MERGE (r86:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_86:Jugador {nombre: "Jarocka,Liwia"})
            MERGE (j2_86:Jugador {nombre: "Stefanova,A"})

            MERGE (j1_86)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p86)
            MERGE (j2_86)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p86)
            
            
                        
            MERGE (p86)-[:TIENE_APERTURA]->(a86)

            MERGE (p86)-[:RESULTADO_DE_PARTIDA]->(r86)  
            MERGE (c86)-[:INCLUYE_PARTIDA]->(p86);

MERGE (c87:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p87:Partida {
                id: "Rhodes GRE-87",
                fecha: "2025.04.02",
                ronda: "3.15",
                nombre: "Sandu,Mi vs Mkrtchian,L",
                cantidad_movimientos: "34"
            })

            MERGE (a87:Apertura {
                nombre: "C02"
            })

            MERGE (r87:Resultado {
                nombre: "negras"
            })

            MERGE (j1_87:Jugador {nombre: "Sandu,Mi"})
            MERGE (j2_87:Jugador {nombre: "Mkrtchian,L"})

            MERGE (j1_87)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p87)
            MERGE (j2_87)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p87)
            
            
                        
            MERGE (p87)-[:TIENE_APERTURA]->(a87)

            MERGE (p87)-[:RESULTADO_DE_PARTIDA]->(r87)  
            MERGE (c87)-[:INCLUYE_PARTIDA]->(p87);

MERGE (c88:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p88:Partida {
                id: "Rhodes GRE-88",
                fecha: "2025.04.02",
                ronda: "3.16",
                nombre: "Vega Gutierrez,S vs Calzetta Ruiz,M",
                cantidad_movimientos: "70"
            })

            MERGE (a88:Apertura {
                nombre: "B72"
            })

            MERGE (r88:Resultado {
                nombre: "negras"
            })

            MERGE (j1_88:Jugador {nombre: "Vega Gutierrez,S"})
            MERGE (j2_88:Jugador {nombre: "Calzetta Ruiz,M"})

            MERGE (j1_88)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p88)
            MERGE (j2_88)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p88)
            
            
                        
            MERGE (p88)-[:TIENE_APERTURA]->(a88)

            MERGE (p88)-[:RESULTADO_DE_PARTIDA]->(r88)  
            MERGE (c88)-[:INCLUYE_PARTIDA]->(p88);

MERGE (c89:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p89:Partida {
                id: "Rhodes GRE-89",
                fecha: "2025.04.02",
                ronda: "3.17",
                nombre: "Lach,A vs Maltsevskaya,Aleksandra",
                cantidad_movimientos: "41"
            })

            MERGE (a89:Apertura {
                nombre: "A47"
            })

            MERGE (r89:Resultado {
                nombre: "negras"
            })

            MERGE (j1_89:Jugador {nombre: "Lach,A"})
            MERGE (j2_89:Jugador {nombre: "Maltsevskaya,Aleksandra"})

            MERGE (j1_89)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p89)
            MERGE (j2_89)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p89)
            
            
                        
            MERGE (p89)-[:TIENE_APERTURA]->(a89)

            MERGE (p89)-[:RESULTADO_DE_PARTIDA]->(r89)  
            MERGE (c89)-[:INCLUYE_PARTIDA]->(p89);

MERGE (c90:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p90:Partida {
                id: "Rhodes GRE-90",
                fecha: "2025.04.02",
                ronda: "3.18",
                nombre: "Dwilewicz,K vs Milliet,S",
                cantidad_movimientos: "35"
            })

            MERGE (a90:Apertura {
                nombre: "B28"
            })

            MERGE (r90:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_90:Jugador {nombre: "Dwilewicz,K"})
            MERGE (j2_90:Jugador {nombre: "Milliet,S"})

            MERGE (j1_90)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p90)
            MERGE (j2_90)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p90)
            
            
                        
            MERGE (p90)-[:TIENE_APERTURA]->(a90)

            MERGE (p90)-[:RESULTADO_DE_PARTIDA]->(r90)  
            MERGE (c90)-[:INCLUYE_PARTIDA]->(p90);

MERGE (c91:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p91:Partida {
                id: "Rhodes GRE-91",
                fecha: "2025.04.02",
                ronda: "3.19",
                nombre: "Korenova,M vs Kiolbasa,Oliwia",
                cantidad_movimientos: "64"
            })

            MERGE (a91:Apertura {
                nombre: "C69"
            })

            MERGE (r91:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_91:Jugador {nombre: "Korenova,M"})
            MERGE (j2_91:Jugador {nombre: "Kiolbasa,Oliwia"})

            MERGE (j1_91)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p91)
            MERGE (j2_91)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p91)
            
            
                        
            MERGE (p91)-[:TIENE_APERTURA]->(a91)

            MERGE (p91)-[:RESULTADO_DE_PARTIDA]->(r91)  
            MERGE (c91)-[:INCLUYE_PARTIDA]->(p91);

MERGE (c92:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p92:Partida {
                id: "Rhodes GRE-92",
                fecha: "2025.04.02",
                ronda: "3.20",
                nombre: "Mammadova,G vs Gevorgyan,M",
                cantidad_movimientos: "14"
            })

            MERGE (a92:Apertura {
                nombre: "C77"
            })

            MERGE (r92:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_92:Jugador {nombre: "Mammadova,G"})
            MERGE (j2_92:Jugador {nombre: "Gevorgyan,M"})

            MERGE (j1_92)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p92)
            MERGE (j2_92)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p92)
            
            
                        
            MERGE (p92)-[:TIENE_APERTURA]->(a92)

            MERGE (p92)-[:RESULTADO_DE_PARTIDA]->(r92)  
            MERGE (c92)-[:INCLUYE_PARTIDA]->(p92);

MERGE (c93:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p93:Partida {
                id: "Rhodes GRE-93",
                fecha: "2025.04.02",
                ronda: "3.21",
                nombre: "Savina,A vs Gaboyan,S",
                cantidad_movimientos: "61"
            })

            MERGE (a93:Apertura {
                nombre: "D61"
            })

            MERGE (r93:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_93:Jugador {nombre: "Savina,A"})
            MERGE (j2_93:Jugador {nombre: "Gaboyan,S"})

            MERGE (j1_93)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p93)
            MERGE (j2_93)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p93)
            
            
                        
            MERGE (p93)-[:TIENE_APERTURA]->(a93)

            MERGE (p93)-[:RESULTADO_DE_PARTIDA]->(r93)  
            MERGE (c93)-[:INCLUYE_PARTIDA]->(p93);

MERGE (c94:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p94:Partida {
                id: "Rhodes GRE-94",
                fecha: "2025.04.02",
                ronda: "3.22",
                nombre: "Toncheva,Nadya vs Mamedjarova,T",
                cantidad_movimientos: "79"
            })

            MERGE (a94:Apertura {
                nombre: "D35"
            })

            MERGE (r94:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_94:Jugador {nombre: "Toncheva,Nadya"})
            MERGE (j2_94:Jugador {nombre: "Mamedjarova,T"})

            MERGE (j1_94)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p94)
            MERGE (j2_94)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p94)
            
            
                        
            MERGE (p94)-[:TIENE_APERTURA]->(a94)

            MERGE (p94)-[:RESULTADO_DE_PARTIDA]->(r94)  
            MERGE (c94)-[:INCLUYE_PARTIDA]->(p94);

MERGE (c95:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p95:Partida {
                id: "Rhodes GRE-95",
                fecha: "2025.04.02",
                ronda: "3.23",
                nombre: "Antolak,Julia vs Khachatryan,Anna",
                cantidad_movimientos: "28"
            })

            MERGE (a95:Apertura {
                nombre: "B22"
            })

            MERGE (r95:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_95:Jugador {nombre: "Antolak,Julia"})
            MERGE (j2_95:Jugador {nombre: "Khachatryan,Anna"})

            MERGE (j1_95)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p95)
            MERGE (j2_95)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p95)
            
            
                        
            MERGE (p95)-[:TIENE_APERTURA]->(a95)

            MERGE (p95)-[:RESULTADO_DE_PARTIDA]->(r95)  
            MERGE (c95)-[:INCLUYE_PARTIDA]->(p95);

MERGE (c96:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p96:Partida {
                id: "Rhodes GRE-96",
                fecha: "2025.04.02",
                ronda: "3.24",
                nombre: "Hapala,L vs Zimina,O",
                cantidad_movimientos: "53"
            })

            MERGE (a96:Apertura {
                nombre: "C65"
            })

            MERGE (r96:Resultado {
                nombre: "tablas"
            })

            MERGE (j1_96:Jugador {nombre: "Hapala,L"})
            MERGE (j2_96:Jugador {nombre: "Zimina,O"})

            MERGE (j1_96)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p96)
            MERGE (j2_96)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p96)
            
            
                        
            MERGE (p96)-[:TIENE_APERTURA]->(a96)

            MERGE (p96)-[:RESULTADO_DE_PARTIDA]->(r96)  
            MERGE (c96)-[:INCLUYE_PARTIDA]->(p96);

MERGE (c97:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p97:Partida {
                id: "Rhodes GRE-97",
                fecha: "2025.04.02",
                ronda: "3.25",
                nombre: "Doluhanova,E vs Ibrahimova,S",
                cantidad_movimientos: "32"
            })

            MERGE (a97:Apertura {
                nombre: "D00"
            })

            MERGE (r97:Resultado {
                nombre: "negras"
            })

            MERGE (j1_97:Jugador {nombre: "Doluhanova,E"})
            MERGE (j2_97:Jugador {nombre: "Ibrahimova,S"})

            MERGE (j1_97)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p97)
            MERGE (j2_97)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p97)
            
            
                        
            MERGE (p97)-[:TIENE_APERTURA]->(a97)

            MERGE (p97)-[:RESULTADO_DE_PARTIDA]->(r97)  
            MERGE (c97)-[:INCLUYE_PARTIDA]->(p97);

MERGE (c98:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p98:Partida {
                id: "Rhodes GRE-98",
                fecha: "2025.04.02",
                ronda: "3.26",
                nombre: "Injac,Teodora vs Piddubna,Bozhena",
                cantidad_movimientos: "53"
            })

            MERGE (a98:Apertura {
                nombre: "A45"
            })

            MERGE (r98:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_98:Jugador {nombre: "Injac,Teodora"})
            MERGE (j2_98:Jugador {nombre: "Piddubna,Bozhena"})

            MERGE (j1_98)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p98)
            MERGE (j2_98)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p98)
            
            
                        
            MERGE (p98)-[:TIENE_APERTURA]->(a98)

            MERGE (p98)-[:RESULTADO_DE_PARTIDA]->(r98)  
            MERGE (c98)-[:INCLUYE_PARTIDA]->(p98);

MERGE (c99:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p99:Partida {
                id: "Rhodes GRE-99",
                fecha: "2025.04.02",
                ronda: "3.27",
                nombre: "Cornileau,Juliette vs Kulon,K",
                cantidad_movimientos: "37"
            })

            MERGE (a99:Apertura {
                nombre: "D35"
            })

            MERGE (r99:Resultado {
                nombre: "negras"
            })

            MERGE (j1_99:Jugador {nombre: "Cornileau,Juliette"})
            MERGE (j2_99:Jugador {nombre: "Kulon,K"})

            MERGE (j1_99)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p99)
            MERGE (j2_99)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p99)
            
            
                        
            MERGE (p99)-[:TIENE_APERTURA]->(a99)

            MERGE (p99)-[:RESULTADO_DE_PARTIDA]->(r99)  
            MERGE (c99)-[:INCLUYE_PARTIDA]->(p99);

MERGE (c100:Campeonato {
                nombre: "25th ch-EUR Indiv w 2025",
                ubicacion: "Rhodes GRE"
            })
            MERGE (p100:Partida {
                id: "Rhodes GRE-100",
                fecha: "2025.04.02",
                ronda: "3.28",
                nombre: "Daulyte-Cornette,Deimante vs Berke,A",
                cantidad_movimientos: "23"
            })

            MERGE (a100:Apertura {
                nombre: "B30"
            })

            MERGE (r100:Resultado {
                nombre: "blancas"
            })

            MERGE (j1_100:Jugador {nombre: "Daulyte-Cornette,Deimante"})
            MERGE (j2_100:Jugador {nombre: "Berke,A"})

            MERGE (j1_100)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p100)
            MERGE (j2_100)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p100)
            
            
                        
            MERGE (p100)-[:TIENE_APERTURA]->(a100)

            MERGE (p100)-[:RESULTADO_DE_PARTIDA]->(r100)  
            MERGE (c100)-[:INCLUYE_PARTIDA]->(p100);