MERGE (p1:Partida {
                    id: "cUr8yNMv",
                    fecha: "1540586154729",
                    cantidadMovimientos: "24",
                    resultado: "resign",
                    nombre: "alireza2003 vs DrDrunkenstein",
                    ronda: "B10",
                    apertura: "Caro-Kann Defense: Two Knights Attack"
                })
                MERGE (j1_1:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_1:Jugador {username_lichess: "DrDrunkenstein"})
                MERGE (j1_1)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p1)
                MERGE (j2_1)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p1)
                MERGE (j1_1)-[:USO_APERTURA_EN]->(p1);

MERGE (p2:Partida {
                    id: "Q6MJVH6P",
                    fecha: "1525464257396",
                    cantidadMovimientos: "117",
                    resultado: "resign",
                    nombre: "DrDrunkenstein vs alireza2003",
                    ronda: "A01",
                    apertura: "Nimzo-Larsen Attack: Indian Variation"
                })
                MERGE (j1_2:Jugador {username_lichess: "DrDrunkenstein"})
                MERGE (j2_2:Jugador {username_lichess: "alireza2003"})
                MERGE (j1_2)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p2)
                MERGE (j2_2)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p2)
                MERGE (j1_2)-[:USO_APERTURA_EN]->(p2);

MERGE (p3:Partida {
                    id: "H4cVDkwO",
                    fecha: "1523565735556",
                    cantidadMovimientos: "108",
                    resultado: "outoftime",
                    nombre: "alireza2003 vs DrDrunkenstein",
                    ronda: "A05",
                    apertura: "King's Indian Attack: Symmetrical Defense"
                })
                MERGE (j1_3:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_3:Jugador {username_lichess: "DrDrunkenstein"})
                MERGE (j1_3)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p3)
                MERGE (j2_3)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p3)
                MERGE (j1_3)-[:USO_APERTURA_EN]->(p3);

MERGE (p4:Partida {
                    id: "iYagvTTP",
                    fecha: "1523564712328",
                    cantidadMovimientos: "50",
                    resultado: "resign",
                    nombre: "alireza2003 vs DrDrunkenstein",
                    ronda: "A05",
                    apertura: "King's Indian Attack: Symmetrical Defense"
                })
                MERGE (j1_4:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_4:Jugador {username_lichess: "DrDrunkenstein"})
                MERGE (j1_4)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p4)
                MERGE (j2_4)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p4)
                MERGE (j1_4)-[:USO_APERTURA_EN]->(p4);

MERGE (p5:Partida {
                    id: "w3CSLfgW",
                    fecha: "1523564423724",
                    cantidadMovimientos: "127",
                    resultado: "draw",
                    nombre: "alireza2003 vs DrDrunkenstein",
                    ronda: "A01",
                    apertura: "Nimzo-Larsen Attack: English Variation"
                })
                MERGE (j1_5:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_5:Jugador {username_lichess: "DrDrunkenstein"})
                MERGE (j1_5)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p5)
                MERGE (j2_5)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p5)
                MERGE (j1_5)-[:USO_APERTURA_EN]->(p5);

MERGE (p6:Partida {
                    id: "Vxn101UY",
                    fecha: "1523563805882",
                    cantidadMovimientos: "73",
                    resultado: "resign",
                    nombre: "alireza2003 vs DrDrunkenstein",
                    ronda: "A43",
                    apertura: "Benoni Defense: Old Benoni"
                })
                MERGE (j1_6:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_6:Jugador {username_lichess: "DrDrunkenstein"})
                MERGE (j1_6)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p6)
                MERGE (j2_6)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p6)
                MERGE (j1_6)-[:USO_APERTURA_EN]->(p6);

MERGE (p7:Partida {
                    id: "IRWfyqdN",
                    fecha: "1523563387125",
                    cantidadMovimientos: "117",
                    resultado: "outoftime",
                    nombre: "DrDrunkenstein vs alireza2003",
                    ronda: "B07",
                    apertura: "Pirc Defense"
                })
                MERGE (j1_7:Jugador {username_lichess: "DrDrunkenstein"})
                MERGE (j2_7:Jugador {username_lichess: "alireza2003"})
                MERGE (j1_7)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p7)
                MERGE (j2_7)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p7)
                MERGE (j1_7)-[:USO_APERTURA_EN]->(p7);

MERGE (p8:Partida {
                    id: "jsV4KVTk",
                    fecha: "1523562602840",
                    cantidadMovimientos: "161",
                    resultado: "outoftime",
                    nombre: "DrDrunkenstein vs alireza2003",
                    ronda: "A16",
                    apertura: "English Opening: Anglo-Indian Defense, Queen's Knight Variation"
                })
                MERGE (j1_8:Jugador {username_lichess: "DrDrunkenstein"})
                MERGE (j2_8:Jugador {username_lichess: "alireza2003"})
                MERGE (j1_8)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p8)
                MERGE (j2_8)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p8)
                MERGE (j1_8)-[:USO_APERTURA_EN]->(p8);

MERGE (p9:Partida {
                    id: "SYj9tb83",
                    fecha: "1516314661756",
                    cantidadMovimientos: "168",
                    resultado: "outoftime",
                    nombre: "DrDrunkenstein vs alireza2003",
                    ronda: "B21",
                    apertura: "Sicilian Defense: Smith-Morra Gambit Declined, Push Variation"
                })
                MERGE (j1_9:Jugador {username_lichess: "DrDrunkenstein"})
                MERGE (j2_9:Jugador {username_lichess: "alireza2003"})
                MERGE (j1_9)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p9)
                MERGE (j2_9)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p9)
                MERGE (j1_9)-[:USO_APERTURA_EN]->(p9);

MERGE (p10:Partida {
                    id: "WoWjtpek",
                    fecha: "1516313260637",
                    cantidadMovimientos: "194",
                    resultado: "stalemate",
                    nombre: "DrDrunkenstein vs alireza2003",
                    ronda: "A46",
                    apertura: "Indian Defense: Spielmann-Indian"
                })
                MERGE (j1_10:Jugador {username_lichess: "DrDrunkenstein"})
                MERGE (j2_10:Jugador {username_lichess: "alireza2003"})
                MERGE (j1_10)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p10)
                MERGE (j2_10)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p10)
                MERGE (j1_10)-[:USO_APERTURA_EN]->(p10);

MERGE (p11:Partida {
                    id: "wxO8xZIT",
                    fecha: "1641931268898",
                    cantidadMovimientos: "149",
                    resultado: "stalemate",
                    nombre: "alireza2003 vs TSMFTXH",
                    ronda: "C65",
                    apertura: "Ruy Lopez: Berlin Defense"
                })
                MERGE (j1_11:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_11:Jugador {username_lichess: "TSMFTXH"})
                MERGE (j1_11)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p11)
                MERGE (j2_11)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p11)
                MERGE (j1_11)-[:USO_APERTURA_EN]->(p11);

MERGE (p12:Partida {
                    id: "JV0YoNFL",
                    fecha: "1641929231429",
                    cantidadMovimientos: "144",
                    resultado: "resign",
                    nombre: "TSMFTXH vs alireza2003",
                    ronda: "C26",
                    apertura: "Vienna Game: Mieses Variation"
                })
                MERGE (j1_12:Jugador {username_lichess: "TSMFTXH"})
                MERGE (j2_12:Jugador {username_lichess: "alireza2003"})
                MERGE (j1_12)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p12)
                MERGE (j2_12)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p12)
                MERGE (j1_12)-[:USO_APERTURA_EN]->(p12);

MERGE (p13:Partida {
                    id: "7wSphb7G",
                    fecha: "1641927928566",
                    cantidadMovimientos: "90",
                    resultado: "draw",
                    nombre: "alireza2003 vs TSMFTXH",
                    ronda: "C67",
                    apertura: "Ruy Lopez: Berlin Defense, Rio Gambit Accepted"
                })
                MERGE (j1_13:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_13:Jugador {username_lichess: "TSMFTXH"})
                MERGE (j1_13)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p13)
                MERGE (j2_13)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p13)
                MERGE (j1_13)-[:USO_APERTURA_EN]->(p13);

MERGE (p14:Partida {
                    id: "PNmvZj5L",
                    fecha: "1641927602300",
                    cantidadMovimientos: "202",
                    resultado: "draw",
                    nombre: "alireza2003 vs TSMFTXH",
                    ronda: "A45",
                    apertura: "Trompowsky Attack: Poisoned Pawn Variation"
                })
                MERGE (j1_14:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_14:Jugador {username_lichess: "TSMFTXH"})
                MERGE (j1_14)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p14)
                MERGE (j2_14)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p14)
                MERGE (j1_14)-[:USO_APERTURA_EN]->(p14);

MERGE (p15:Partida {
                    id: "cQTsyg07",
                    fecha: "1640115591077",
                    cantidadMovimientos: "42",
                    resultado: "draw",
                    nombre: "alireza2003 vs TSMFTXH",
                    ronda: "B06",
                    apertura: "Modern Defense: Standard Line"
                })
                MERGE (j1_15:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_15:Jugador {username_lichess: "TSMFTXH"})
                MERGE (j1_15)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p15)
                MERGE (j2_15)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p15)
                MERGE (j1_15)-[:USO_APERTURA_EN]->(p15);

MERGE (p16:Partida {
                    id: "kVe9mTIy",
                    fecha: "1596922071310",
                    cantidadMovimientos: "85",
                    resultado: "resign",
                    nombre: "guki1124 vs Inventing_Invention",
                    ronda: "A40",
                    apertura: "Benoni Defense: Franco-Sicilian Hybrid"
                })
                MERGE (j1_16:Jugador {username_lichess: "guki1124"})
                MERGE (j2_16:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j1_16)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p16)
                MERGE (j2_16)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p16)
                MERGE (j1_16)-[:USO_APERTURA_EN]->(p16);

MERGE (p17:Partida {
                    id: "EeRWtdMf",
                    fecha: "1593965146578",
                    cantidadMovimientos: "65",
                    resultado: "resign",
                    nombre: "Inventing_Invention vs guki1124",
                    ronda: "A13",
                    apertura: "English Opening: Agincourt Defense, Catalan Defense Accepted"
                })
                MERGE (j1_17:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j2_17:Jugador {username_lichess: "guki1124"})
                MERGE (j1_17)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p17)
                MERGE (j2_17)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p17)
                MERGE (j1_17)-[:USO_APERTURA_EN]->(p17);

MERGE (p18:Partida {
                    id: "CXZU2J3Z",
                    fecha: "1591545733300",
                    cantidadMovimientos: "55",
                    resultado: "resign",
                    nombre: "Inventing_Invention vs guki1124",
                    ronda: "B33",
                    apertura: "Sicilian Defense: Lasker-Pelikan Variation, Sveshnikov Variation, Chelyabinsk Variation"
                })
                MERGE (j1_18:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j2_18:Jugador {username_lichess: "guki1124"})
                MERGE (j1_18)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p18)
                MERGE (j2_18)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p18)
                MERGE (j1_18)-[:USO_APERTURA_EN]->(p18);

MERGE (p19:Partida {
                    id: "KPw5TmNJ",
                    fecha: "1595705845770",
                    cantidadMovimientos: "129",
                    resultado: "resign",
                    nombre: "Praggnanandhaachess vs guki1124",
                    ronda: "D11",
                    apertura: "Slav Defense: Quiet Variation"
                })
                MERGE (j1_19:Jugador {username_lichess: "Praggnanandhaachess"})
                MERGE (j2_19:Jugador {username_lichess: "guki1124"})
                MERGE (j1_19)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p19)
                MERGE (j2_19)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p19)
                MERGE (j1_19)-[:USO_APERTURA_EN]->(p19);

MERGE (p20:Partida {
                    id: "wHb33Yv6",
                    fecha: "1595177038902",
                    cantidadMovimientos: "105",
                    resultado: "resign",
                    nombre: "Praggnanandhaachess vs guki1124",
                    ronda: "B30",
                    apertura: "Sicilian Defense: Closed, Anti-Sveshnikov Variation, with d6"
                })
                MERGE (j1_20:Jugador {username_lichess: "Praggnanandhaachess"})
                MERGE (j2_20:Jugador {username_lichess: "guki1124"})
                MERGE (j1_20)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p20)
                MERGE (j2_20)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p20)
                MERGE (j1_20)-[:USO_APERTURA_EN]->(p20);

MERGE (p21:Partida {
                    id: "VPiwRoMS",
                    fecha: "1603645414602",
                    cantidadMovimientos: "113",
                    resultado: "resign",
                    nombre: "alireza2003 vs guki1124",
                    ronda: "B15",
                    apertura: "Caro-Kann Defense: Tartakower Variation"
                })
                MERGE (j1_21:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_21:Jugador {username_lichess: "guki1124"})
                MERGE (j1_21)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p21)
                MERGE (j2_21)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p21)
                MERGE (j1_21)-[:USO_APERTURA_EN]->(p21);

MERGE (p22:Partida {
                    id: "Es8VIdBI",
                    fecha: "1624220077831",
                    cantidadMovimientos: "175",
                    resultado: "outoftime",
                    nombre: "Praggnanandhaachess vs Inventing_Invention",
                    ronda: "B02",
                    apertura: "Alekhine Defense"
                })
                MERGE (j1_22:Jugador {username_lichess: "Praggnanandhaachess"})
                MERGE (j2_22:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j1_22)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p22)
                MERGE (j2_22)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p22)
                MERGE (j1_22)-[:USO_APERTURA_EN]->(p22);

MERGE (p23:Partida {
                    id: "J0jkt8QP",
                    fecha: "1624217441092",
                    cantidadMovimientos: "103",
                    resultado: "resign",
                    nombre: "Inventing_Invention vs Praggnanandhaachess",
                    ronda: "E68",
                    apertura: "King's Indian Defense: Fianchetto Variation, Classical Variation"
                })
                MERGE (j1_23:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j2_23:Jugador {username_lichess: "Praggnanandhaachess"})
                MERGE (j1_23)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p23)
                MERGE (j2_23)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p23)
                MERGE (j1_23)-[:USO_APERTURA_EN]->(p23);

MERGE (p24:Partida {
                    id: "sBbUAc4J",
                    fecha: "1624134097274",
                    cantidadMovimientos: "117",
                    resultado: "resign",
                    nombre: "Inventing_Invention vs Praggnanandhaachess",
                    ronda: "A05",
                    apertura: "Zukertort Opening"
                })
                MERGE (j1_24:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j2_24:Jugador {username_lichess: "Praggnanandhaachess"})
                MERGE (j1_24)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p24)
                MERGE (j2_24)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p24)
                MERGE (j1_24)-[:USO_APERTURA_EN]->(p24);

MERGE (p25:Partida {
                    id: "WOQ6UooT",
                    fecha: "1621716895972",
                    cantidadMovimientos: "82",
                    resultado: "resign",
                    nombre: "Inventing_Invention vs Praggnanandhaachess",
                    ronda: "A00",
                    apertura: "Saragossa Opening"
                })
                MERGE (j1_25:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j2_25:Jugador {username_lichess: "Praggnanandhaachess"})
                MERGE (j1_25)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p25)
                MERGE (j2_25)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p25)
                MERGE (j1_25)-[:USO_APERTURA_EN]->(p25);

MERGE (p26:Partida {
                    id: "VWfccufH",
                    fecha: "1595709261225",
                    cantidadMovimientos: "83",
                    resultado: "resign",
                    nombre: "Inventing_Invention vs Praggnanandhaachess",
                    ronda: "E68",
                    apertura: "King's Indian Defense: Fianchetto Variation, Classical Variation"
                })
                MERGE (j1_26:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j2_26:Jugador {username_lichess: "Praggnanandhaachess"})
                MERGE (j1_26)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p26)
                MERGE (j2_26)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p26)
                MERGE (j1_26)-[:USO_APERTURA_EN]->(p26);

MERGE (p27:Partida {
                    id: "PqWNAOl2",
                    fecha: "1594571908053",
                    cantidadMovimientos: "92",
                    resultado: "draw",
                    nombre: "Inventing_Invention vs Praggnanandhaachess",
                    ronda: "A20",
                    apertura: "English Opening: King's English Variation, Nimzowitsch-Flohr Variation"
                })
                MERGE (j1_27:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j2_27:Jugador {username_lichess: "Praggnanandhaachess"})
                MERGE (j1_27)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p27)
                MERGE (j2_27)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p27)
                MERGE (j1_27)-[:USO_APERTURA_EN]->(p27);

MERGE (p28:Partida {
                    id: "4NIm3PHx",
                    fecha: "1695497919036",
                    cantidadMovimientos: "64",
                    resultado: "resign",
                    nombre: "Inventing_Invention vs alireza2003",
                    ronda: "A04",
                    apertura: "Zukertort Opening: Kingside Fianchetto"
                })
                MERGE (j1_28:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j2_28:Jugador {username_lichess: "alireza2003"})
                MERGE (j1_28)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p28)
                MERGE (j2_28)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p28)
                MERGE (j1_28)-[:USO_APERTURA_EN]->(p28);

MERGE (p29:Partida {
                    id: "kfjIb0oJ",
                    fecha: "1677964909881",
                    cantidadMovimientos: "61",
                    resultado: "resign",
                    nombre: "alireza2003 vs Inventing_Invention",
                    ronda: "C00",
                    apertura: "French Defense: Two Knights Variation"
                })
                MERGE (j1_29:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_29:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j1_29)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p29)
                MERGE (j2_29)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p29)
                MERGE (j1_29)-[:USO_APERTURA_EN]->(p29);

MERGE (p30:Partida {
                    id: "vaCtexhj",
                    fecha: "1677412076015",
                    cantidadMovimientos: "108",
                    resultado: "outoftime",
                    nombre: "alireza2003 vs Inventing_Invention",
                    ronda: "C02",
                    apertura: "French Defense: Advance Variation, Main Line"
                })
                MERGE (j1_30:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_30:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j1_30)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p30)
                MERGE (j2_30)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p30)
                MERGE (j1_30)-[:USO_APERTURA_EN]->(p30);

MERGE (p31:Partida {
                    id: "HZsugQCW",
                    fecha: "1677412036460",
                    cantidadMovimientos: "58",
                    resultado: "resign",
                    nombre: "Inventing_Invention vs alireza2003",
                    ronda: "A04",
                    apertura: "Zukertort Opening: Sicilian Invitation"
                })
                MERGE (j1_31:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j2_31:Jugador {username_lichess: "alireza2003"})
                MERGE (j1_31)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p31)
                MERGE (j2_31)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p31)
                MERGE (j1_31)-[:USO_APERTURA_EN]->(p31);

MERGE (p32:Partida {
                    id: "eR4zi2aq",
                    fecha: "1677411983337",
                    cantidadMovimientos: "64",
                    resultado: "resign",
                    nombre: "alireza2003 vs Inventing_Invention",
                    ronda: "D05",
                    apertura: "Queen's Pawn Game: Colle System"
                })
                MERGE (j1_32:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_32:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j1_32)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p32)
                MERGE (j2_32)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p32)
                MERGE (j1_32)-[:USO_APERTURA_EN]->(p32);

MERGE (p33:Partida {
                    id: "fwPmzxnK",
                    fecha: "1677411896778",
                    cantidadMovimientos: "134",
                    resultado: "outoftime",
                    nombre: "Inventing_Invention vs alireza2003",
                    ronda: "D45",
                    apertura: "Semi-Slav Defense: Normal Variation"
                })
                MERGE (j1_33:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j2_33:Jugador {username_lichess: "alireza2003"})
                MERGE (j1_33)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p33)
                MERGE (j2_33)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p33)
                MERGE (j1_33)-[:USO_APERTURA_EN]->(p33);

MERGE (p34:Partida {
                    id: "Z9LzOczj",
                    fecha: "1676751430868",
                    cantidadMovimientos: "76",
                    resultado: "draw",
                    nombre: "Inventing_Invention vs alireza2003",
                    ronda: "E05",
                    apertura: "Catalan Opening: Open Defense, Classical Line"
                })
                MERGE (j1_34:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j2_34:Jugador {username_lichess: "alireza2003"})
                MERGE (j1_34)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p34)
                MERGE (j2_34)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p34)
                MERGE (j1_34)-[:USO_APERTURA_EN]->(p34);

MERGE (p35:Partida {
                    id: "DffemKza",
                    fecha: "1676750579626",
                    cantidadMovimientos: "14",
                    resultado: "resign",
                    nombre: "alireza2003 vs Inventing_Invention",
                    ronda: "D37",
                    apertura: "Queen's Gambit Declined: Three Knights Variation"
                })
                MERGE (j1_35:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_35:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j1_35)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p35)
                MERGE (j2_35)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p35)
                MERGE (j1_35)-[:USO_APERTURA_EN]->(p35);

MERGE (p36:Partida {
                    id: "BLVoc22k",
                    fecha: "1613851593629",
                    cantidadMovimientos: "161",
                    resultado: "outoftime",
                    nombre: "alireza2003 vs Inventing_Invention",
                    ronda: "D35",
                    apertura: "Queen's Gambit Declined: Exchange Variation"
                })
                MERGE (j1_36:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_36:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j1_36)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p36)
                MERGE (j2_36)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p36)
                MERGE (j1_36)-[:USO_APERTURA_EN]->(p36);

MERGE (p37:Partida {
                    id: "z1X8qrWJ",
                    fecha: "1613850667393",
                    cantidadMovimientos: "77",
                    resultado: "resign",
                    nombre: "Inventing_Invention vs alireza2003",
                    ronda: "B70",
                    apertura: "Sicilian Defense: Dragon Variation"
                })
                MERGE (j1_37:Jugador {username_lichess: "Inventing_Invention"})
                MERGE (j2_37:Jugador {username_lichess: "alireza2003"})
                MERGE (j1_37)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p37)
                MERGE (j2_37)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p37)
                MERGE (j1_37)-[:USO_APERTURA_EN]->(p37);

MERGE (p38:Partida {
                    id: "utiic4AQ",
                    fecha: "1641929964687",
                    cantidadMovimientos: "53",
                    resultado: "resign",
                    nombre: "alireza2003 vs Praggnanandhaachess",
                    ronda: "B68",
                    apertura: "Sicilian Defense: Richter-Rauzer Variation, Neo-Modern Variation"
                })
                MERGE (j1_38:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_38:Jugador {username_lichess: "Praggnanandhaachess"})
                MERGE (j1_38)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p38)
                MERGE (j2_38)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p38)
                MERGE (j1_38)-[:USO_APERTURA_EN]->(p38);

MERGE (p39:Partida {
                    id: "JogpS22k",
                    fecha: "1595708426497",
                    cantidadMovimientos: "89",
                    resultado: "draw",
                    nombre: "Praggnanandhaachess vs alireza2003",
                    ronda: "B50",
                    apertura: "Sicilian Defense: Delayed Alapin Variation, with d6"
                })
                MERGE (j1_39:Jugador {username_lichess: "Praggnanandhaachess"})
                MERGE (j2_39:Jugador {username_lichess: "alireza2003"})
                MERGE (j1_39)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p39)
                MERGE (j2_39)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p39)
                MERGE (j1_39)-[:USO_APERTURA_EN]->(p39);

MERGE (p40:Partida {
                    id: "N2OGV86j",
                    fecha: "1595707778900",
                    cantidadMovimientos: "121",
                    resultado: "outoftime",
                    nombre: "Praggnanandhaachess vs alireza2003",
                    ronda: "C02",
                    apertura: "French Defense: Advance Variation, Main Line"
                })
                MERGE (j1_40:Jugador {username_lichess: "Praggnanandhaachess"})
                MERGE (j2_40:Jugador {username_lichess: "alireza2003"})
                MERGE (j1_40)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p40)
                MERGE (j2_40)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p40)
                MERGE (j1_40)-[:USO_APERTURA_EN]->(p40);

MERGE (p41:Partida {
                    id: "syKpsAC4",
                    fecha: "1561235800942",
                    cantidadMovimientos: "92",
                    resultado: "resign",
                    nombre: "Praggnanandhaachess vs alireza2003",
                    ronda: "B23",
                    apertura: "Sicilian Defense: Closed"
                })
                MERGE (j1_41:Jugador {username_lichess: "Praggnanandhaachess"})
                MERGE (j2_41:Jugador {username_lichess: "alireza2003"})
                MERGE (j1_41)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p41)
                MERGE (j2_41)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p41)
                MERGE (j1_41)-[:USO_APERTURA_EN]->(p41);

MERGE (p42:Partida {
                    id: "sZKv1Fal",
                    fecha: "1561231402293",
                    cantidadMovimientos: "68",
                    resultado: "resign",
                    nombre: "alireza2003 vs Praggnanandhaachess",
                    ronda: "E94",
                    apertura: "King's Indian Defense: Orthodox Variation, Positional Defense"
                })
                MERGE (j1_42:Jugador {username_lichess: "alireza2003"})
                MERGE (j2_42:Jugador {username_lichess: "Praggnanandhaachess"})
                MERGE (j1_42)-[:JUGO_PARTIDA_COMO {color: "blanca"}]->(p42)
                MERGE (j2_42)-[:JUGO_PARTIDA_COMO {color: "negra"}]->(p42)
                MERGE (j1_42)-[:USO_APERTURA_EN]->(p42);