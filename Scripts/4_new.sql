--1
CREATE OR REPLACE PROCEDURE agregar_servidor(
    id IN SERVIDOR.id %type,
    nombre IN SERVIDOR.nombre %type,
    inauguracion IN SERVIDOR.inauguracion %type,
    idiomas IN SERVIDOR.idiomas %type,
    ubicacion IN SERVIDOR.ubicacion %type,
    ip IN SERVIDOR.ip %type)
is BEGIN
    INSERT INTO SERVIDOR VALUES (id, nombre, inauguracion, idiomas, ubicacion, ip);
    dbms_output.put_line ('INSERCION EXITOSA');
END agregar_servidor;
/
--2
CREATE OR REPLACE PROCEDURE agregar_division(
    codigo IN DIVISION.codigo %type,
    nombre IN DIVISION.nombre %type,
    descripcion IN DIVISION.descripcion %type
    )
IS BEGIN
    INSERT INTO DIVISION VALUES (codigo, nombre, descripcion);
    dbms_output.put_line ('INSERCION EXITOSA');
END agregar_division;
/
--3
CREATE OR REPLACE PROCEDURE agregar_region(
    nombre IN REGION.nombre %type,
    tipo_de_gobierno IN REGION.tipo_de_gobierno %type,
    nivel_de_tecnologia IN REGION.nivel_de_tecnologia %type,
    tolerancia_a_la_magia IN REGION.tolerancia_a_la_magia %type,
    descripcion_ambiente IN REGION.descripcion_ambiente %type
)
IS BEGIN
    INSERT INTO REGION VALUES (nombre, tipo_de_gobierno, nivel_de_tecnologia, tolerancia_a_la_magia,
    descripcion_ambiente);
    dbms_output.put_line ('INSERCION EXITOSA');
END agregar_region;
/
--4
CREATE OR REPLACE PROCEDURE agregar_carta(
    id IN CARTA.id %type,
    tipo IN CARTA.tipo %type,
    nombre IN CARTA.nombre %type,
    descripcion IN CARTA.descripcion %type,
    mejora IN CARTA.mejora %type,
    region IN CARTA.region %type,
    costo IN CARTA.costo %type,
    ataque IN CARTA.ataque %type,
    vida IN CARTA.vida %type,
    rareza IN CARTA.rareza %type,
    efecto IN CARTA.efecto %type,
    palabra_clave IN CARTA.palabra_clave %type
)
IS BEGIN
    INSERT INTO CARTA VALUES (id, tipo, nombre, descripcion, mejora, region, costo, ataque, vida,
    rareza, efecto, palabra_clave);
    dbms_output.put_line ('INSERCION EXITOSA');
END agregar_carta;
/
--5
CREATE OR REPLACE PROCEDURE agregar_usuario(
    id IN USUARIO.id %type,
    servidor IN USUARIO.servidor %type,
    correo IN USUARIO.correo %type,
    contrasena IN USUARIO.contrasena %type,
    nombre IN USUARIO.nombre %type,
    apellido IN USUARIO.apellido %type,
    telefono IN USUARIO.telefono %type,
    fecha_nacimiento IN USUARIO.fecha_nacimiento %type,
    sexo IN USUARIO.sexo %type,
    division IN USUARIO.division %type,
    puntos IN USUARIO.puntos %type
)
IS BEGIN
    INSERT INTO USUARIO VALUES (id, servidor, correo, contrasena, nombre, apellido, telefono,
    TO_DATE(fecha_nacimiento, 'dd-mm-yyyy'), sexo, division, puntos);
    dbms_output.put_line ('INSERCION EXITOSA');
END agregar_usuario;
/
--6
CREATE OR REPLACE PROCEDURE agregar_rioter(
    usuario IN RIOTER.usuario %type,
    servidor IN RIOTER.servidor %type,
    nombre_invocador IN RIOTER.nombre_invocador %type,
    fecha_contrato_inicio IN RIOTER.fecha_contrato_inicio %type,
    fecha_contrato_fin IN RIOTER.fecha_contrato_fin %type,
    salario IN RIOTER.salario %type
)
IS BEGIN
    INSERT INTO RIOTER VALUES (usuario, servidor, nombre_invocador, TO_DATE(fecha_contrato_inicio, 'dd-mm-yyyy'),
    TO_DATE(fecha_contrato_fin, 'dd-mm-yyyy'), salario);
    dbms_output.put_line ('INSERCION EXITOSA');
END agregar_rioter;
/
--7
CREATE OR REPLACE PROCEDURE agregar_invocador(
    usuario IN INVOCADOR.usuario %type,
    servidor IN INVOCADOR.servidor %type,
    nombre_invocador IN INVOCADOR.nombre_invocador %type,
    fecha_creacion IN INVOCADOR.fecha_creacion %type
)
IS BEGIN
    INSERT INTO INVOCADOR VALUES (usuario, servidor, nombre_invocador, TO_DATE(fecha_creacion, 'dd-mm-yyyy'));
    dbms_output.put_line ('INSERCION EXITOSA');
END agregar_invocador;
/
--8
CREATE OR REPLACE PROCEDURE agregar_mazo(
    id IN MAZO.id %type,
    usuario IN MAZO.usuario %type,
    servidor IN MAZO.servidor %type,
    carta IN MAZO.carta %type,
    nombre IN MAZO.nombre %type,
    cantidad IN MAZO.cantidad %type
)
IS BEGIN
    INSERT INTO MAZO VALUES (id, usuario, servidor, carta, nombre, cantidad);
    dbms_output.put_line ('INSERCION EXITOSA');
END agregar_mazo;
/
--9
CREATE OR REPLACE PROCEDURE agregar_batalla(
    id IN BATALLA.id %type,
    usuario1 IN BATALLA.usuario1 %type,
    servidor1 IN BATALLA.servidor1 %type,
    mazo1 IN BATALLA.mazo1 %type,
    carta1 IN BATALLA.carta1 %type,
    usuario2 IN BATALLA.usuario2 %type,
    servidor2 IN BATALLA.servidor2 %type,
    mazo2 IN BATALLA.mazo2 %type,
    carta2 IN BATALLA.carta2 %type,
    ganador IN BATALLA.ganador %type,
    puntos IN BATALLA.puntos %type
)
IS BEGIN
    INSERT INTO BATALLA VALUES (id, usuario1, servidor1, mazo1, carta1,
    usuario2, servidor2, mazo2, carta2, ganador, puntos);
    dbms_output.put_line ('INSERCION EXITOSA');
END agregar_batalla;
/

