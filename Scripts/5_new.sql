--Para evitar problema con las fechas, el siguiente comando modifica el formato del tipo de dato date
ALTER SESSION SET nls_date_format = 'dd-mm-yyyy';
--agregar servidores
EXECUTE tryndamere.agregar_servidor ('BR', 'Brazil', '13-09-2012', 'Portuguese', 'Sao Paulo, SP, Brazil', '104.160.152.3');
EXECUTE tryndamere.agregar_servidor ('EUNE', 'Europe Nordic and East', '13-07-2010', 'Czech, English, Greek, Hungarian, Polish, Romanian', 'Frankfurt, Germany', '104.160.142.3');
EXECUTE tryndamere.agregar_servidor ('LAN', 'Latin America North', '05-06-2013', 'Spanish', 'Miami, FL, United States', '104.160.136.3');
EXECUTE tryndamere.agregar_servidor ('LAS', 'Latin America South', '05-06-2013', 'Spanish', 'Santiago, Chile', '104.160.137.3');
EXECUTE tryndamere.agregar_servidor ('PH', 'The Philippines', '17-07-2010', 'English/Filipino', 'Taguig City, Philippines', '122.11.128.127');
--agregar division
EXECUTE tryndamere.agregar_division ('SR', 'Sin Ranking', 'Aguila no caza mosca');
EXECUTE tryndamere.agregar_division ('PROV', 'Provisional', 'Provisional');
EXECUTE tryndamere.agregar_division ('HIV', 'Hierro 4', 'Hierro cuatro');
EXECUTE tryndamere.agregar_division ('HIII', 'Hierro 3', 'Hierro tres');
EXECUTE tryndamere.agregar_division ('HII', 'Hierro 2', 'Hierro dos');
EXECUTE tryndamere.agregar_division ('HI', 'Hierro 1', 'Hierro uno');
EXECUTE tryndamere.agregar_division ('BIV', 'Bronce 4', 'Bronce cuatro');
EXECUTE tryndamere.agregar_division ('BIII', 'Bronce 3', 'Bronce tres');
EXECUTE tryndamere.agregar_division ('BII', 'Bronce 2', 'Bronce dos');
EXECUTE tryndamere.agregar_division ('BI', 'Bronce 1', 'Bronce uno');
EXECUTE tryndamere.agregar_division ('PIV', 'Plata 4', 'Plata cuatro');
EXECUTE tryndamere.agregar_division ('PIII', 'Plata 3', 'Plata tres');
EXECUTE tryndamere.agregar_division ('PII', 'Plata 2', 'Plata dos');
EXECUTE tryndamere.agregar_division ('PI', 'Plata 1', 'Plata uno');
EXECUTE tryndamere.agregar_division ('OIV', 'Oro 4', 'Oro cuatro');
EXECUTE tryndamere.agregar_division ('OIII', 'Oro 3', 'Oro tres');
EXECUTE tryndamere.agregar_division ('OII', 'Oro 2', 'Oro dos');
EXECUTE tryndamere.agregar_division ('OI', 'Oro 1', 'Oro uno');
EXECUTE tryndamere.agregar_division ('PLIV', 'Platino 4', 'Platino cuatro');
EXECUTE tryndamere.agregar_division ('PLIII', 'Platino 3', 'Platino tres');
EXECUTE tryndamere.agregar_division ('PLII', 'Platino 2', 'Platino dos');
EXECUTE tryndamere.agregar_division ('PLI', 'Platino 1', 'Platino uno');
EXECUTE tryndamere.agregar_division ('DIV', 'Diamante 4', 'Diamante cuatro');
EXECUTE tryndamere.agregar_division ('DIII', 'Diamante 3', 'Diamante tres');
EXECUTE tryndamere.agregar_division ('DII', 'Diamante 2', 'Diamante dos');
EXECUTE tryndamere.agregar_division ('DI', 'Diamante 1', 'Diamante uno');
EXECUTE tryndamere.agregar_division ('MIV', 'Master 4', 'Master cuatro');
EXECUTE tryndamere.agregar_division ('MIII', 'Master 3', 'Master tres');
EXECUTE tryndamere.agregar_division ('MII', 'Master 2', 'Master dos');
EXECUTE tryndamere.agregar_division ('MI', 'Master 1', 'Master uno');
EXECUTE tryndamere.agregar_division ('GMIV', 'Grandmaster 4', 'Grandmaster cuatro');
EXECUTE tryndamere.agregar_division ('GMIII', 'Grandmaster 3', 'Grandmaster tres');
EXECUTE tryndamere.agregar_division ('GMII', 'Grandmaster 2', 'Grandmaster dos');
EXECUTE tryndamere.agregar_division ('GMI', 'Grandmaster 1', 'Grandmaster uno');
EXECUTE tryndamere.agregar_division ('CIV', 'Challenger 4', 'Challenger cuatro');
EXECUTE tryndamere.agregar_division ('CIII', 'Challenger 3', 'Challenger tres');
EXECUTE tryndamere.agregar_division ('CII', 'Challenger 2', 'Challenger dos');
EXECUTE tryndamere.agregar_division ('CI', 'Challenger 1', 'Challenger uno');
--agergar region
EXECUTE tryndamere.agregar_region ('Demacia', 'Monarquia Feudal', 'Mediano', 'Prohibida', 'Campos Fertiles');
EXECUTE tryndamere.agregar_region ('Freljord', 'Tribu Matrialcal', 'Bajo', 'Venerada', 'Tundra Helada');
EXECUTE tryndamere.agregar_region ('Noxus', 'Imperio Expansionista', 'Mediano', 'Alta, con fines belicos', 'Estepa Inhospita');
EXECUTE tryndamere.agregar_region ('Ionia', 'Provincias Regionales', 'Bajo', 'Alta', 'Magico (Variado)');
EXECUTE tryndamere.agregar_region ('Shadow Isles', 'Ninguno', 'Bajo', 'Alta, orientada al sufrimiento', 'Archipielago Maldito');
EXECUTE tryndamere.agregar_region ('Piltover/Zaun', 'Oligarquia', 'Alto', 'Alta, orientada al beneficio propio', 'Ciudad');
--agregar carta
EXECUTE tryndamere.agregar_carta ('0000', 'Heroe', 'Lucian', 'Lucian', 'He visto morir a 4 aliados o mas o a Senna, Centinela de la Luz.', 'Demacia', 2, 3, 2, 'Campeon', 'Campeon', 'Ataque Rapido');
EXECUTE tryndamere.agregar_carta ('0001', 'Heroe', 'Fiora', 'Fiora', 'He matado a 2 enemigos', 'Demacia', 3, 3, 3, 'Campeon', 'Campeon', 'Aspirante');
EXECUTE tryndamere.agregar_carta ('0002', 'Hechizo', 'Chaleco de Cadenas', 'Chaleco de Cadenas', 'Otorga Aguante a un aliado', 'Demacia', 1, 0, 0, 'Comun', 'Otorga Aguante a un aliado', 'Rafaga');
EXECUTE tryndamere.agregar_carta ('0003', 'Hechizo', 'Barrera Prismatica', 'Barrera Prismatica', 'Concede Barrera a un aliado esta ronda', 'Demacia', 3, 0, 0, 'Comun', 'Concede Barrera a un aliado esta ronda', 'Rafaga');
EXECUTE tryndamere.agregar_carta ('0004', 'Hechizo', 'Sucesion', 'Sucesion', 'Invoca Vanguardia Imperterrita', 'Demacia', 3, 0, 0, 'Comun', 'Invoca Vanguardia Imperterrita', 'Lento');
EXECUTE tryndamere.agregar_carta ('0005', 'Hechizo', 'Espalda con Espalda', 'Espalda con Espalda', 'Concede a dos aliados +3/+3 esta ronda', 'Demacia', 5, 0, 0, 'Rara', 'Concede a dos aliados +3/+3 esta ronda', 'Rafaga');
EXECUTE tryndamere.agregar_carta ('0006', 'Adepto', 'Poro Intrepido', 'Poro Intrepido', 'Poro Intrepido', 'Demacia', 1, 1, 1, 'Comun', 'Poro Intrepido', 'Aguante');
EXECUTE tryndamere.agregar_carta ('0007', 'Adepto', 'Chefs de Guerra', 'Chefs de Guerra', 'Apoyo: Concede +1/+1 al aliado al que apoye esta ronda', 'Demacia', 2, 2, 3, 'Comun', 'Apoyo: Concede +1/+1 al aliado al que apoye esta ronda', 'Apoyo');
EXECUTE tryndamere.agregar_carta ('0008', 'Adepto', 'Caballeria de la Vanguardia', 'Caballeria de la Vanguardia', 'Caballeria de la Vanguardia', 'Demacia', 5, 5, 5, 'Comun', 'Caballeria de la Vanguardia', 'Aguante');
EXECUTE tryndamere.agregar_carta ('0009', 'Adepto', 'Tianna Crownguard', 'Tianna Crownguard', 'Cuando se me invoca, se prepara el ataque', 'Demacia', 8, 7, 7, 'Epica', 'Cuando se me invoca, se prepara el ataque', 'Aguante');
--agregar usuario
EXECUTE tryndamere.agregar_usuario ('UID_00', 'LAN', 'fabianziffzer@gmail.com', '...', 'Fabian', 'Ziffzer', '+58 414 760 9562', '31-07-1996', 'M', 'DIV', 0);
EXECUTE tryndamere.agregar_usuario ('UID_01', 'LAN', 'mercyospina@gmail.com', '...', 'Mercy', 'Ospina', '+58 414 760 9563', '30-07-1996', 'F', 'CI', 0);
EXECUTE tryndamere.agregar_usuario ('UID_00', 'LAS', 'fabianziffzer@gmail.com', '...', 'Fabian', 'Ziffzer', '+58 414 760 9562', '31-07-1996', 'M', 'PI', 0);
EXECUTE tryndamere.agregar_usuario ('UID_01', 'LAS', 'mercyospina@gmail.com', '...', 'Mercy', 'Ospina', '+58 414 760 9563', '30-07-1996', 'F', 'CI', 0);
EXECUTE tryndamere.agregar_usuario ('UID_03', 'LAS', 'soy-yo@gmail.com', '...', 'Soy', 'Yo', '+58 414 443 3444', '12-12-1997', 'M', 'PLI', 0);
--agregar rioter
EXECUTE tryndamere.agregar_rioter ('UID_01', 'LAN', 'Riot Mercy4No1', '12-12-2014', '07-01-2024', 999999);
EXECUTE tryndamere.agregar_rioter ('UID_01', 'LAS', 'Riot Mercy4No1', '12-12-2014', '07-01-2024', 999999);
EXECUTE tryndamere.agregar_rioter ('UID_03', 'LAS', 'Sam-I-Am1', '12-12-2014', '07-01-2024', 999999);
EXECUTE tryndamere.agregar_rioter ('UID_00', 'LAN', 'FZ06', '12-12-2014', '07-01-2024', 999999);
EXECUTE tryndamere.agregar_rioter ('UID_00', 'LAS', 'FZ06', '12-12-2014', '07-01-2024', 999999);
--agregar invocador
EXECUTE tryndamere.agregar_invocador ('UID_01', 'LAN', 'Alekxanderz', '12-11-2014');
EXECUTE tryndamere.agregar_invocador ('UID_01', 'LAS', 'Alekxinderz', '12-11-2014');
EXECUTE tryndamere.agregar_invocador ('UID_03', 'LAS', 'Shamuel', '12-12-2014');
EXECUTE tryndamere.agregar_invocador ('UID_00', 'LAN', 'Rataz', '12-12-2014');
EXECUTE tryndamere.agregar_invocador ('UID_00', 'LAS', 'Rataz', '12-12-2014');
--agregar mazo
EXECUTE tryndamere.agregar_mazo ('00', 'UID_00', 'LAN', '0000', 'Con el Mazo Dando', 3);
EXECUTE tryndamere.agregar_mazo ('00', 'UID_00', 'LAN', '0001', 'Con el Mazo Dando', 3);
EXECUTE tryndamere.agregar_mazo ('00', 'UID_00', 'LAN', '0002', 'Con el Mazo Dando', 3);
EXECUTE tryndamere.agregar_mazo ('00', 'UID_00', 'LAN', '0003', 'Con el Mazo Dando', 3);
EXECUTE tryndamere.agregar_mazo ('00', 'UID_00', 'LAN', '0004', 'Con el Mazo Dando', 3);
EXECUTE tryndamere.agregar_mazo ('00', 'UID_00', 'LAN', '0005', 'Con el Mazo Dando', 3);
EXECUTE tryndamere.agregar_mazo ('00', 'UID_00', 'LAN', '0006', 'Con el Mazo Dando', 3);
EXECUTE tryndamere.agregar_mazo ('00', 'UID_00', 'LAN', '0007', 'Con el Mazo Dando', 3);
EXECUTE tryndamere.agregar_mazo ('00', 'UID_00', 'LAN', '0008', 'Con el Mazo Dando', 3);
EXECUTE tryndamere.agregar_mazo  ('00', 'UID_00', 'LAN', '0009', 'Con el Mazo Dando', 3);
EXECUTE tryndamere.agregar_mazo ('01', 'UID_01', 'LAN', '0000', 'Sin piedad', 3);
EXECUTE tryndamere.agregar_mazo ('01', 'UID_01', 'LAN', '0001', 'Sin piedad', 3);
EXECUTE tryndamere.agregar_mazo ('01', 'UID_01', 'LAN', '0002', 'Sin piedad', 3);
EXECUTE tryndamere.agregar_mazo ('01', 'UID_01', 'LAN', '0003', 'Sin piedad', 3);
EXECUTE tryndamere.agregar_mazo ('01', 'UID_01', 'LAN', '0004', 'Sin piedad', 3);
EXECUTE tryndamere.agregar_mazo ('01', 'UID_01', 'LAN', '0005', 'Sin piedad', 3);
EXECUTE tryndamere.agregar_mazo ('01', 'UID_01', 'LAN', '0006', 'Sin piedad', 3);
EXECUTE tryndamere.agregar_mazo ('01', 'UID_01', 'LAN', '0007', 'Sin piedad', 3);
EXECUTE tryndamere.agregar_mazo ('01', 'UID_01', 'LAN', '0008', 'Sin piedad', 3);
EXECUTE tryndamere.agregar_mazo ('01', 'UID_01', 'LAN', '0009', 'Sin piedad', 3);
--agregar batalla
EXECUTE tryndamere.agregar_batalla ('A00000','UID_00', 'LAN', '00', '0000', 'UID_01','LAN', '01','0000', 'UID_00', 50);
EXECUTE tryndamere.agregar_batalla ('A00000','UID_00', 'LAS', '00', '0000', 'UID_01','LAS', '01','0000', 'UID_00', 50);
EXECUTE tryndamere.agregar_batalla ('A00000','UID_00', 'LAN', '00', '0000', 'UID_01','LAS', '01','0000', 'UID_00', 50);
EXECUTE tryndamere.agregar_batalla ('A00000','UID_00', 'LAS', '00', '0000', 'UID_01','LAN', '01','0000', 'UID_00', 50);
EXECUTE tryndamere.agregar_batalla ('A00000','UID_01', 'LAN', '00', '0000', 'UID_00','LAN', '01','0000', 'UID_01', 50);

--EXECUTE tryndamere.agregar_usuario ('UID_03', 'LAS', 'mercyospina@gmail.com', '...', 'Mercy', 'Ospina', '+58 414 760 9563', '30-07-1996', 'F', 'CI', 0);
