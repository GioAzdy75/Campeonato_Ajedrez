MERGE (c1:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p1:Partida {
                id: "Wijk aan Zee NED-1",
                fecha: "2022.01.25",
                resultado: "1-0",
                ronda: "9.1",
                apertura: "Catalan",
                nombre: "Carlsen,M vs Mamedyarov,S"
            })
            MERGE (j1_1:Jugador {nombre: "Carlsen, Magnus"})
            MERGE (j2_1:Jugador {nombre: "Mamedyarov,S"})
            MERGE (j1_1)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p1)
            MERGE (j2_1)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p1)
            MERGE (j1_1)-[:USO_APERTURA_EN]->(p1)
            MERGE (c1)-[:INCLUYE_PARTIDA]->(p1);

MERGE (c2:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p2:Partida {
                id: "Wijk aan Zee NED-2",
                fecha: "2022.01.25",
                resultado: "1/2-1/2",
                ronda: "9.2",
                apertura: "Queen's pawn game",
                nombre: "Rapport,R vs Vidit,S"
            })
            MERGE (j1_2:Jugador {nombre: "Rapport,R"})
            MERGE (j2_2:Jugador {nombre: "Vidit,S"})
            MERGE (j1_2)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p2)
            MERGE (j2_2)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p2)
            MERGE (j1_2)-[:USO_APERTURA_EN]->(p2)
            MERGE (c2)-[:INCLUYE_PARTIDA]->(p2);

MERGE (c3:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p3:Partida {
                id: "Wijk aan Zee NED-3",
                fecha: "2022.01.25",
                resultado: "1-0",
                ronda: "9.3",
                apertura: "Reti",
                nombre: "Giri,A vs Shankland,S"
            })
            MERGE (j1_3:Jugador {nombre: "Giri,A"})
            MERGE (j2_3:Jugador {nombre: "Shankland,S"})
            MERGE (j1_3)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p3)
            MERGE (j2_3)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p3)
            MERGE (j1_3)-[:USO_APERTURA_EN]->(p3)
            MERGE (c3)-[:INCLUYE_PARTIDA]->(p3);

MERGE (c4:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p4:Partida {
                id: "Wijk aan Zee NED-4",
                fecha: "2022.01.25",
                resultado: "1/2-1/2",
                ronda: "9.4",
                apertura: "Queen's pawn game",
                nombre: "Duda,J vs Esipenko,Andrey"
            })
            MERGE (j1_4:Jugador {nombre: "Duda,J"})
            MERGE (j2_4:Jugador {nombre: "Esipenko,Andrey"})
            MERGE (j1_4)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p4)
            MERGE (j2_4)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p4)
            MERGE (j1_4)-[:USO_APERTURA_EN]->(p4)
            MERGE (c4)-[:INCLUYE_PARTIDA]->(p4);

MERGE (c5:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p5:Partida {
                id: "Wijk aan Zee NED-5",
                fecha: "2022.01.25",
                resultado: "1/2-1/2",
                ronda: "9.5",
                apertura: "Ruy Lopez",
                nombre: "Van Foreest,Jorden vs Dubov,Daniil"
            })
            MERGE (j1_5:Jugador {nombre: "Van Foreest,Jorden"})
            MERGE (j2_5:Jugador {nombre: "Dubov,Daniil"})
            MERGE (j1_5)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p5)
            MERGE (j2_5)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p5)
            MERGE (j1_5)-[:USO_APERTURA_EN]->(p5)
            MERGE (c5)-[:INCLUYE_PARTIDA]->(p5);

MERGE (c6:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p6:Partida {
                id: "Wijk aan Zee NED-6",
                fecha: "2022.01.25",
                resultado: "0-1",
                ronda: "9.6",
                apertura: "Queen's bishop game",
                nombre: "Praggnanandhaa,R vs Karjakin,Sergey"
            })
            MERGE (j1_6:Jugador {nombre: "Praggnanandhaa,R"})
            MERGE (j2_6:Jugador {nombre: "Karjakin,Sergey"})
            MERGE (j1_6)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p6)
            MERGE (j2_6)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p6)
            MERGE (j1_6)-[:USO_APERTURA_EN]->(p6)
            MERGE (c6)-[:INCLUYE_PARTIDA]->(p6);

MERGE (c7:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p7:Partida {
                id: "Wijk aan Zee NED-7",
                fecha: "2022.01.25",
                resultado: "0-1",
                ronda: "9.7",
                apertura: "French",
                nombre: "Grandelius,N vs Caruana,F"
            })
            MERGE (j1_7:Jugador {nombre: "Grandelius,N"})
            MERGE (j2_7:Jugador {nombre: "Caruana,F"})
            MERGE (j1_7)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p7)
            MERGE (j2_7)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p7)
            MERGE (j1_7)-[:USO_APERTURA_EN]->(p7)
            MERGE (c7)-[:INCLUYE_PARTIDA]->(p7);

MERGE (c8:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p8:Partida {
                id: "Wijk aan Zee NED-8",
                fecha: "2022.01.26",
                resultado: "1/2-1/2",
                ronda: "10.1",
                apertura: "Ruy Lopez",
                nombre: "Karjakin,Sergey vs Carlsen,M"
            })
            MERGE (j1_8:Jugador {nombre: "Karjakin,Sergey"})
            MERGE (j2_8:Jugador {nombre: "Carlsen, Magnus"})
            MERGE (j1_8)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p8)
            MERGE (j2_8)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p8)
            MERGE (j1_8)-[:USO_APERTURA_EN]->(p8)
            MERGE (c8)-[:INCLUYE_PARTIDA]->(p8);

MERGE (c9:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p9:Partida {
                id: "Wijk aan Zee NED-9",
                fecha: "2022.01.26",
                resultado: "1/2-1/2",
                ronda: "10.2",
                apertura: "English",
                nombre: "Giri,A vs Duda,J"
            })
            MERGE (j1_9:Jugador {nombre: "Giri,A"})
            MERGE (j2_9:Jugador {nombre: "Duda,J"})
            MERGE (j1_9)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p9)
            MERGE (j2_9)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p9)
            MERGE (j1_9)-[:USO_APERTURA_EN]->(p9)
            MERGE (c9)-[:INCLUYE_PARTIDA]->(p9);

MERGE (c10:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p10:Partida {
                id: "Wijk aan Zee NED-10",
                fecha: "2022.01.26",
                resultado: "1/2-1/2",
                ronda: "10.3",
                apertura: "Catalan",
                nombre: "Shankland,S vs Mamedyarov,S"
            })
            MERGE (j1_10:Jugador {nombre: "Shankland,S"})
            MERGE (j2_10:Jugador {nombre: "Mamedyarov,S"})
            MERGE (j1_10)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p10)
            MERGE (j2_10)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p10)
            MERGE (j1_10)-[:USO_APERTURA_EN]->(p10)
            MERGE (c10)-[:INCLUYE_PARTIDA]->(p10);

MERGE (c11:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p11:Partida {
                id: "Wijk aan Zee NED-11",
                fecha: "2022.01.26",
                resultado: "0-1",
                ronda: "10.4",
                apertura: "Nimzo-Indian",
                nombre: "Vidit,S vs Praggnanandhaa,R"
            })
            MERGE (j1_11:Jugador {nombre: "Vidit,S"})
            MERGE (j2_11:Jugador {nombre: "Praggnanandhaa,R"})
            MERGE (j1_11)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p11)
            MERGE (j2_11)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p11)
            MERGE (j1_11)-[:USO_APERTURA_EN]->(p11)
            MERGE (c11)-[:INCLUYE_PARTIDA]->(p11);

MERGE (c12:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p12:Partida {
                id: "Wijk aan Zee NED-12",
                fecha: "2022.01.26",
                resultado: "0-1",
                ronda: "10.5",
                apertura: "English",
                nombre: "Caruana,F vs Rapport,R"
            })
            MERGE (j1_12:Jugador {nombre: "Caruana,F"})
            MERGE (j2_12:Jugador {nombre: "Rapport,R"})
            MERGE (j1_12)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p12)
            MERGE (j2_12)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p12)
            MERGE (j1_12)-[:USO_APERTURA_EN]->(p12)
            MERGE (c12)-[:INCLUYE_PARTIDA]->(p12);

MERGE (c13:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p13:Partida {
                id: "Wijk aan Zee NED-13",
                fecha: "2022.01.26",
                resultado: "1-0",
                ronda: "10.6",
                apertura: "Giuoco Pianissimo",
                nombre: "Esipenko,Andrey vs Van Foreest,Jorden"
            })
            MERGE (j1_13:Jugador {nombre: "Esipenko,Andrey"})
            MERGE (j2_13:Jugador {nombre: "Van Foreest,Jorden"})
            MERGE (j1_13)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p13)
            MERGE (j2_13)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p13)
            MERGE (j1_13)-[:USO_APERTURA_EN]->(p13)
            MERGE (c13)-[:INCLUYE_PARTIDA]->(p13);

MERGE (c14:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p14:Partida {
                id: "Wijk aan Zee NED-14",
                fecha: "2022.01.26",
                resultado: "0-1",
                ronda: "10.7",
                apertura: "Sicilian",
                nombre: "Dubov,Daniil vs Grandelius,N"
            })
            MERGE (j1_14:Jugador {nombre: "Dubov,Daniil"})
            MERGE (j2_14:Jugador {nombre: "Grandelius,N"})
            MERGE (j1_14)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p14)
            MERGE (j2_14)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p14)
            MERGE (j1_14)-[:USO_APERTURA_EN]->(p14)
            MERGE (c14)-[:INCLUYE_PARTIDA]->(p14);

MERGE (c15:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p15:Partida {
                id: "Wijk aan Zee NED-15",
                fecha: "2022.01.28",
                resultado: "1/2-1/2",
                ronda: "11.1",
                apertura: "Giuoco Pianissimo",
                nombre: "Carlsen,M vs Vidit,S"
            })
            MERGE (j1_15:Jugador {nombre: "Carlsen, Magnus"})
            MERGE (j2_15:Jugador {nombre: "Vidit,S"})
            MERGE (j1_15)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p15)
            MERGE (j2_15)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p15)
            MERGE (j1_15)-[:USO_APERTURA_EN]->(p15)
            MERGE (c15)-[:INCLUYE_PARTIDA]->(p15);

MERGE (c16:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p16:Partida {
                id: "Wijk aan Zee NED-16",
                fecha: "2022.01.28",
                resultado: "1-0",
                ronda: "11.2",
                apertura: "Nimzo-Indian",
                nombre: "Van Foreest,Jorden vs Giri,A"
            })
            MERGE (j1_16:Jugador {nombre: "Van Foreest,Jorden"})
            MERGE (j2_16:Jugador {nombre: "Giri,A"})
            MERGE (j1_16)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p16)
            MERGE (j2_16)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p16)
            MERGE (j1_16)-[:USO_APERTURA_EN]->(p16)
            MERGE (c16)-[:INCLUYE_PARTIDA]->(p16);

MERGE (c17:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p17:Partida {
                id: "Wijk aan Zee NED-17",
                fecha: "2022.01.28",
                resultado: "1/2-1/2",
                ronda: "11.3",
                apertura: "Giuoco Piano",
                nombre: "Mamedyarov,S vs Karjakin,Sergey"
            })
            MERGE (j1_17:Jugador {nombre: "Mamedyarov,S"})
            MERGE (j2_17:Jugador {nombre: "Karjakin,Sergey"})
            MERGE (j1_17)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p17)
            MERGE (j2_17)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p17)
            MERGE (j1_17)-[:USO_APERTURA_EN]->(p17)
            MERGE (c17)-[:INCLUYE_PARTIDA]->(p17);

MERGE (c18:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p18:Partida {
                id: "Wijk aan Zee NED-18",
                fecha: "2022.01.28",
                resultado: "1/2-1/2",
                ronda: "11.4",
                apertura: "Ruy Lopez",
                nombre: "Grandelius,N vs Esipenko,Andrey"
            })
            MERGE (j1_18:Jugador {nombre: "Grandelius,N"})
            MERGE (j2_18:Jugador {nombre: "Esipenko,Andrey"})
            MERGE (j1_18)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p18)
            MERGE (j2_18)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p18)
            MERGE (j1_18)-[:USO_APERTURA_EN]->(p18)
            MERGE (c18)-[:INCLUYE_PARTIDA]->(p18);

MERGE (c19:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p19:Partida {
                id: "Wijk aan Zee NED-19",
                fecha: "2022.01.28",
                resultado: "0-1",
                ronda: "11.5",
                apertura: "QGD semi-Slav",
                nombre: "Praggnanandhaa,R vs Caruana,F"
            })
            MERGE (j1_19:Jugador {nombre: "Praggnanandhaa,R"})
            MERGE (j2_19:Jugador {nombre: "Caruana,F"})
            MERGE (j1_19)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p19)
            MERGE (j2_19)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p19)
            MERGE (j1_19)-[:USO_APERTURA_EN]->(p19)
            MERGE (c19)-[:INCLUYE_PARTIDA]->(p19);

MERGE (c20:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p20:Partida {
                id: "Wijk aan Zee NED-20",
                fecha: "2022.01.28",
                resultado: "1/2-1/2",
                ronda: "11.6",
                apertura: "Queen's bishop game",
                nombre: "Duda,J vs Shankland,S"
            })
            MERGE (j1_20:Jugador {nombre: "Duda,J"})
            MERGE (j2_20:Jugador {nombre: "Shankland,S"})
            MERGE (j1_20)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p20)
            MERGE (j2_20)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p20)
            MERGE (j1_20)-[:USO_APERTURA_EN]->(p20)
            MERGE (c20)-[:INCLUYE_PARTIDA]->(p20);

MERGE (c21:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p21:Partida {
                id: "Wijk aan Zee NED-21",
                fecha: "2022.01.28",
                resultado: "1-0",
                ronda: "11.7",
                apertura: "",
                nombre: "Rapport,R vs Dubov,Daniil"
            })
            MERGE (j1_21:Jugador {nombre: "Rapport,R"})
            MERGE (j2_21:Jugador {nombre: "Dubov,Daniil"})
            MERGE (j1_21)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p21)
            MERGE (j2_21)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p21)
            MERGE (j1_21)-[:USO_APERTURA_EN]->(p21)
            MERGE (c21)-[:INCLUYE_PARTIDA]->(p21);

MERGE (c22:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p22:Partida {
                id: "Wijk aan Zee NED-22",
                fecha: "2022.01.29",
                resultado: "0-1",
                ronda: "12.1",
                apertura: "Sicilian",
                nombre: "Caruana,F vs Carlsen,M"
            })
            MERGE (j1_22:Jugador {nombre: "Caruana,F"})
            MERGE (j2_22:Jugador {nombre: "Carlsen, Magnus"})
            MERGE (j1_22)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p22)
            MERGE (j2_22)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p22)
            MERGE (j1_22)-[:USO_APERTURA_EN]->(p22)
            MERGE (c22)-[:INCLUYE_PARTIDA]->(p22);

MERGE (c23:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p23:Partida {
                id: "Wijk aan Zee NED-23",
                fecha: "2022.01.29",
                resultado: "1/2-1/2",
                ronda: "12.2",
                apertura: "Ruy Lopez",
                nombre: "Esipenko,Andrey vs Rapport,R"
            })
            MERGE (j1_23:Jugador {nombre: "Esipenko,Andrey"})
            MERGE (j2_23:Jugador {nombre: "Rapport,R"})
            MERGE (j1_23)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p23)
            MERGE (j2_23)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p23)
            MERGE (j1_23)-[:USO_APERTURA_EN]->(p23)
            MERGE (c23)-[:INCLUYE_PARTIDA]->(p23);

MERGE (c24:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p24:Partida {
                id: "Wijk aan Zee NED-24",
                fecha: "2022.01.29",
                resultado: "0-1",
                ronda: "12.3",
                apertura: "Giuoco Piano",
                nombre: "Vidit,S vs Mamedyarov,S"
            })
            MERGE (j1_24:Jugador {nombre: "Vidit,S"})
            MERGE (j2_24:Jugador {nombre: "Mamedyarov,S"})
            MERGE (j1_24)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p24)
            MERGE (j2_24)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p24)
            MERGE (j1_24)-[:USO_APERTURA_EN]->(p24)
            MERGE (c24)-[:INCLUYE_PARTIDA]->(p24);

MERGE (c25:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p25:Partida {
                id: "Wijk aan Zee NED-25",
                fecha: "2022.01.29",
                resultado: "1/2-1/2",
                ronda: "12.4",
                apertura: "King's Indian, 3.Nf3",
                nombre: "Giri,A vs Grandelius,N"
            })
            MERGE (j1_25:Jugador {nombre: "Giri,A"})
            MERGE (j2_25:Jugador {nombre: "Grandelius,N"})
            MERGE (j1_25)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p25)
            MERGE (j2_25)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p25)
            MERGE (j1_25)-[:USO_APERTURA_EN]->(p25)
            MERGE (c25)-[:INCLUYE_PARTIDA]->(p25);

MERGE (c26:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p26:Partida {
                id: "Wijk aan Zee NED-26",
                fecha: "2022.01.29",
                resultado: "1-0",
                ronda: "12.5",
                apertura: "Nimzo-Indian",
                nombre: "Shankland,S vs Karjakin,Sergey"
            })
            MERGE (j1_26:Jugador {nombre: "Shankland,S"})
            MERGE (j2_26:Jugador {nombre: "Karjakin,Sergey"})
            MERGE (j1_26)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p26)
            MERGE (j2_26)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p26)
            MERGE (j1_26)-[:USO_APERTURA_EN]->(p26)
            MERGE (c26)-[:INCLUYE_PARTIDA]->(p26);

MERGE (c27:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p27:Partida {
                id: "Wijk aan Zee NED-27",
                fecha: "2022.01.29",
                resultado: "1/2-1/2",
                ronda: "12.6",
                apertura: "QGD semi-Slav",
                nombre: "Duda,J vs Van Foreest,Jorden"
            })
            MERGE (j1_27:Jugador {nombre: "Duda,J"})
            MERGE (j2_27:Jugador {nombre: "Van Foreest,Jorden"})
            MERGE (j1_27)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p27)
            MERGE (j2_27)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p27)
            MERGE (j1_27)-[:USO_APERTURA_EN]->(p27)
            MERGE (c27)-[:INCLUYE_PARTIDA]->(p27);

MERGE (c28:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p28:Partida {
                id: "Wijk aan Zee NED-28",
                fecha: "2022.01.29",
                resultado: "0-1",
                ronda: "12.7",
                apertura: "",
                nombre: "Dubov,Daniil vs Praggnanandhaa,R"
            })
            MERGE (j1_28:Jugador {nombre: "Dubov,Daniil"})
            MERGE (j2_28:Jugador {nombre: "Praggnanandhaa,R"})
            MERGE (j1_28)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p28)
            MERGE (j2_28)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p28)
            MERGE (j1_28)-[:USO_APERTURA_EN]->(p28)
            MERGE (c28)-[:INCLUYE_PARTIDA]->(p28);

MERGE (c29:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p29:Partida {
                id: "Wijk aan Zee NED-29",
                fecha: "2022.01.30",
                resultado: "1/2-1/2",
                ronda: "13.1",
                apertura: "Gruenfeld",
                nombre: "Rapport,R vs Giri,A"
            })
            MERGE (j1_29:Jugador {nombre: "Rapport,R"})
            MERGE (j2_29:Jugador {nombre: "Giri,A"})
            MERGE (j1_29)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p29)
            MERGE (j2_29)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p29)
            MERGE (j1_29)-[:USO_APERTURA_EN]->(p29)
            MERGE (c29)-[:INCLUYE_PARTIDA]->(p29);

MERGE (c30:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p30:Partida {
                id: "Wijk aan Zee NED-30",
                fecha: "2022.01.30",
                resultado: "1/2-1/2",
                ronda: "13.2",
                apertura: "QGD",
                nombre: "Mamedyarov,S vs Caruana,F"
            })
            MERGE (j1_30:Jugador {nombre: "Mamedyarov,S"})
            MERGE (j2_30:Jugador {nombre: "Caruana,F"})
            MERGE (j1_30)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p30)
            MERGE (j2_30)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p30)
            MERGE (j1_30)-[:USO_APERTURA_EN]->(p30)
            MERGE (c30)-[:INCLUYE_PARTIDA]->(p30);

MERGE (c31:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p31:Partida {
                id: "Wijk aan Zee NED-31",
                fecha: "2022.01.30",
                resultado: "1-0",
                ronda: "13.3",
                apertura: "Nimzo-Indian",
                nombre: "Praggnanandhaa,R vs Esipenko,Andrey"
            })
            MERGE (j1_31:Jugador {nombre: "Praggnanandhaa,R"})
            MERGE (j2_31:Jugador {nombre: "Esipenko,Andrey"})
            MERGE (j1_31)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p31)
            MERGE (j2_31)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p31)
            MERGE (j1_31)-[:USO_APERTURA_EN]->(p31)
            MERGE (c31)-[:INCLUYE_PARTIDA]->(p31);

MERGE (c32:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p32:Partida {
                id: "Wijk aan Zee NED-32",
                fecha: "2022.01.30",
                resultado: "1-0",
                ronda: "13.4",
                apertura: "Four knights",
                nombre: "Karjakin,Sergey vs Vidit,S"
            })
            MERGE (j1_32:Jugador {nombre: "Karjakin,Sergey"})
            MERGE (j2_32:Jugador {nombre: "Vidit,S"})
            MERGE (j1_32)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p32)
            MERGE (j2_32)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p32)
            MERGE (j1_32)-[:USO_APERTURA_EN]->(p32)
            MERGE (c32)-[:INCLUYE_PARTIDA]->(p32);

MERGE (c33:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p33:Partida {
                id: "Wijk aan Zee NED-33",
                fecha: "2022.01.30",
                resultado: "1-0",
                ronda: "13.5",
                apertura: "Queen's bishop game",
                nombre: "Van Foreest,Jorden vs Shankland,S"
            })
            MERGE (j1_33:Jugador {nombre: "Van Foreest,Jorden"})
            MERGE (j2_33:Jugador {nombre: "Shankland,S"})
            MERGE (j1_33)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p33)
            MERGE (j2_33)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p33)
            MERGE (j1_33)-[:USO_APERTURA_EN]->(p33)
            MERGE (c33)-[:INCLUYE_PARTIDA]->(p33);

MERGE (c34:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p34:Partida {
                id: "Wijk aan Zee NED-34",
                fecha: "2022.01.30",
                resultado: "1/2-1/2",
                ronda: "13.6",
                apertura: "Sicilian",
                nombre: "Grandelius,N vs Duda,J"
            })
            MERGE (j1_34:Jugador {nombre: "Grandelius,N"})
            MERGE (j2_34:Jugador {nombre: "Duda,J"})
            MERGE (j1_34)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p34)
            MERGE (j2_34)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p34)
            MERGE (j1_34)-[:USO_APERTURA_EN]->(p34)
            MERGE (c34)-[:INCLUYE_PARTIDA]->(p34);

MERGE (c35:Campeonato {
                nombre: "84th Tata Steel Masters",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p35:Partida {
                id: "Wijk aan Zee NED-35",
                fecha: "2022.01.30",
                resultado: "1-0",
                ronda: "13.7",
                apertura: "",
                nombre: "Carlsen,M vs Dubov,Daniil"
            })
            MERGE (j1_35:Jugador {nombre: "Carlsen, Magnus"})
            MERGE (j2_35:Jugador {nombre: "Dubov,Daniil"})
            MERGE (j1_35)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p35)
            MERGE (j2_35)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p35)
            MERGE (j1_35)-[:USO_APERTURA_EN]->(p35)
            MERGE (c35)-[:INCLUYE_PARTIDA]->(p35);

MERGE (c36:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p36:Partida {
                id: "Wijk aan Zee NED-36",
                fecha: "2022.01.25",
                resultado: "0-1",
                ronda: "9.1",
                apertura: "Ruy Lopez",
                nombre: "Zhu,Jiner vs Erigaisi,Arjun"
            })
            MERGE (j1_36:Jugador {nombre: "Zhu,Jiner"})
            MERGE (j2_36:Jugador {nombre: "Erigaisi,Arjun"})
            MERGE (j1_36)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p36)
            MERGE (j2_36)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p36)
            MERGE (j1_36)-[:USO_APERTURA_EN]->(p36)
            MERGE (c36)-[:INCLUYE_PARTIDA]->(p36);

MERGE (c37:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p37:Partida {
                id: "Wijk aan Zee NED-37",
                fecha: "2022.01.25",
                resultado: "1/2-1/2",
                ronda: "9.2",
                apertura: "Sicilian",
                nombre: "Nguyen,Thai Dai Van vs Warmerdam,Max"
            })
            MERGE (j1_37:Jugador {nombre: "Nguyen,Thai Dai Van"})
            MERGE (j2_37:Jugador {nombre: "Warmerdam,Max"})
            MERGE (j1_37)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p37)
            MERGE (j2_37)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p37)
            MERGE (j1_37)-[:USO_APERTURA_EN]->(p37)
            MERGE (c37)-[:INCLUYE_PARTIDA]->(p37);

MERGE (c38:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p38:Partida {
                id: "Wijk aan Zee NED-38",
                fecha: "2022.01.25",
                resultado: "1/2-1/2",
                ronda: "9.3",
                apertura: "QGD Slav",
                nombre: "Jumabayev,R vs Murzin,Volodar"
            })
            MERGE (j1_38:Jugador {nombre: "Jumabayev,R"})
            MERGE (j2_38:Jugador {nombre: "Murzin,Volodar"})
            MERGE (j1_38)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p38)
            MERGE (j2_38)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p38)
            MERGE (j1_38)-[:USO_APERTURA_EN]->(p38)
            MERGE (c38)-[:INCLUYE_PARTIDA]->(p38);

MERGE (c39:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p39:Partida {
                id: "Wijk aan Zee NED-39",
                fecha: "2022.01.25",
                resultado: "1-0",
                ronda: "9.4",
                apertura: "QGD",
                nombre: "Bjerre,Jonas Buhl vs Ganguly,S"
            })
            MERGE (j1_39:Jugador {nombre: "Bjerre,Jonas Buhl"})
            MERGE (j2_39:Jugador {nombre: "Ganguly,S"})
            MERGE (j1_39)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p39)
            MERGE (j2_39)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p39)
            MERGE (j1_39)-[:USO_APERTURA_EN]->(p39)
            MERGE (c39)-[:INCLUYE_PARTIDA]->(p39);

MERGE (c40:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p40:Partida {
                id: "Wijk aan Zee NED-40",
                fecha: "2022.01.25",
                resultado: "1-0",
                ronda: "9.5",
                apertura: "QGA",
                nombre: "Maurizzi,Marc'Andria vs Van Foreest,Lucas"
            })
            MERGE (j1_40:Jugador {nombre: "Maurizzi,Marc'Andria"})
            MERGE (j2_40:Jugador {nombre: "Van Foreest,Lucas"})
            MERGE (j1_40)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p40)
            MERGE (j2_40)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p40)
            MERGE (j1_40)-[:USO_APERTURA_EN]->(p40)
            MERGE (c40)-[:INCLUYE_PARTIDA]->(p40);

MERGE (c41:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p41:Partida {
                id: "Wijk aan Zee NED-41",
                fecha: "2022.01.25",
                resultado: "1/2-1/2",
                ronda: "9.6",
                apertura: "QGD",
                nombre: "L'Ami,E vs Dardha,Daniel"
            })
            MERGE (j1_41:Jugador {nombre: "L'Ami,E"})
            MERGE (j2_41:Jugador {nombre: "Dardha,Daniel"})
            MERGE (j1_41)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p41)
            MERGE (j2_41)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p41)
            MERGE (j1_41)-[:USO_APERTURA_EN]->(p41)
            MERGE (c41)-[:INCLUYE_PARTIDA]->(p41);

MERGE (c42:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p42:Partida {
                id: "Wijk aan Zee NED-42",
                fecha: "2022.01.25",
                resultado: "1/2-1/2",
                ronda: "9.7",
                apertura: "Ruy Lopez",
                nombre: "Shuvalova,Polina vs Vogel,Roven"
            })
            MERGE (j1_42:Jugador {nombre: "Shuvalova,Polina"})
            MERGE (j2_42:Jugador {nombre: "Vogel,Roven"})
            MERGE (j1_42)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p42)
            MERGE (j2_42)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p42)
            MERGE (j1_42)-[:USO_APERTURA_EN]->(p42)
            MERGE (c42)-[:INCLUYE_PARTIDA]->(p42);

MERGE (c43:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p43:Partida {
                id: "Wijk aan Zee NED-43",
                fecha: "2022.01.26",
                resultado: "1/2-1/2",
                ronda: "10.1",
                apertura: "QGD",
                nombre: "Erigaisi,Arjun vs Shuvalova,Polina"
            })
            MERGE (j1_43:Jugador {nombre: "Erigaisi,Arjun"})
            MERGE (j2_43:Jugador {nombre: "Shuvalova,Polina"})
            MERGE (j1_43)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p43)
            MERGE (j2_43)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p43)
            MERGE (j1_43)-[:USO_APERTURA_EN]->(p43)
            MERGE (c43)-[:INCLUYE_PARTIDA]->(p43);

MERGE (c44:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p44:Partida {
                id: "Wijk aan Zee NED-44",
                fecha: "2022.01.26",
                resultado: "0-1",
                ronda: "10.2",
                apertura: "Catalan",
                nombre: "Jumabayev,R vs Bjerre,Jonas Buhl"
            })
            MERGE (j1_44:Jugador {nombre: "Jumabayev,R"})
            MERGE (j2_44:Jugador {nombre: "Bjerre,Jonas Buhl"})
            MERGE (j1_44)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p44)
            MERGE (j2_44)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p44)
            MERGE (j1_44)-[:USO_APERTURA_EN]->(p44)
            MERGE (c44)-[:INCLUYE_PARTIDA]->(p44);

MERGE (c45:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p45:Partida {
                id: "Wijk aan Zee NED-45",
                fecha: "2022.01.26",
                resultado: "1/2-1/2",
                ronda: "10.3",
                apertura: "Catalan",
                nombre: "Dardha,Daniel vs Nguyen,Thai Dai Van"
            })
            MERGE (j1_45:Jugador {nombre: "Dardha,Daniel"})
            MERGE (j2_45:Jugador {nombre: "Nguyen,Thai Dai Van"})
            MERGE (j1_45)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p45)
            MERGE (j2_45)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p45)
            MERGE (j1_45)-[:USO_APERTURA_EN]->(p45)
            MERGE (c45)-[:INCLUYE_PARTIDA]->(p45);

MERGE (c46:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p46:Partida {
                id: "Wijk aan Zee NED-46",
                fecha: "2022.01.26",
                resultado: "1/2-1/2",
                ronda: "10.4",
                apertura: "Ruy Lopez",
                nombre: "Murzin,Volodar vs Van Foreest,Lucas"
            })
            MERGE (j1_46:Jugador {nombre: "Murzin,Volodar"})
            MERGE (j2_46:Jugador {nombre: "Van Foreest,Lucas"})
            MERGE (j1_46)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p46)
            MERGE (j2_46)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p46)
            MERGE (j1_46)-[:USO_APERTURA_EN]->(p46)
            MERGE (c46)-[:INCLUYE_PARTIDA]->(p46);

MERGE (c47:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p47:Partida {
                id: "Wijk aan Zee NED-47",
                fecha: "2022.01.26",
                resultado: "1/2-1/2",
                ronda: "10.5",
                apertura: "Catalan",
                nombre: "Warmerdam,Max vs Maurizzi,Marc'Andria"
            })
            MERGE (j1_47:Jugador {nombre: "Warmerdam,Max"})
            MERGE (j2_47:Jugador {nombre: "Maurizzi,Marc'Andria"})
            MERGE (j1_47)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p47)
            MERGE (j2_47)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p47)
            MERGE (j1_47)-[:USO_APERTURA_EN]->(p47)
            MERGE (c47)-[:INCLUYE_PARTIDA]->(p47);

MERGE (c48:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p48:Partida {
                id: "Wijk aan Zee NED-48",
                fecha: "2022.01.26",
                resultado: "1/2-1/2",
                ronda: "10.6",
                apertura: "QGD",
                nombre: "Vogel,Roven vs L'Ami,E"
            })
            MERGE (j1_48:Jugador {nombre: "Vogel,Roven"})
            MERGE (j2_48:Jugador {nombre: "L'Ami,E"})
            MERGE (j1_48)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p48)
            MERGE (j2_48)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p48)
            MERGE (j1_48)-[:USO_APERTURA_EN]->(p48)
            MERGE (c48)-[:INCLUYE_PARTIDA]->(p48);

MERGE (c49:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p49:Partida {
                id: "Wijk aan Zee NED-49",
                fecha: "2022.01.26",
                resultado: "1-0",
                ronda: "10.7",
                apertura: "English",
                nombre: "Ganguly,S vs Zhu,Jiner"
            })
            MERGE (j1_49:Jugador {nombre: "Ganguly,S"})
            MERGE (j2_49:Jugador {nombre: "Zhu,Jiner"})
            MERGE (j1_49)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p49)
            MERGE (j2_49)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p49)
            MERGE (j1_49)-[:USO_APERTURA_EN]->(p49)
            MERGE (c49)-[:INCLUYE_PARTIDA]->(p49);

MERGE (c50:Campeonato {
                nombre: "Tata Steel Challengers",
                ubicacion: "Wijk aan Zee NED"
            })
            MERGE (p50:Partida {
                id: "Wijk aan Zee NED-50",
                fecha: "2022.01.28",
                resultado: "1/2-1/2",
                ronda: "11.1",
                apertura: "Catalan",
                nombre: "L'Ami,E vs Erigaisi,Arjun"
            })
            MERGE (j1_50:Jugador {nombre: "L'Ami,E"})
            MERGE (j2_50:Jugador {nombre: "Erigaisi,Arjun"})
            MERGE (j1_50)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p50)
            MERGE (j2_50)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p50)
            MERGE (j1_50)-[:USO_APERTURA_EN]->(p50)
            MERGE (c50)-[:INCLUYE_PARTIDA]->(p50);