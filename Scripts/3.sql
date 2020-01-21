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

CREATE OR REPLACE PROCEDURE agregar_division(
    codigo IN DIVISION.codigo %type,
    nombre IN DIVISION.nombre %type,
    descripcion IN DIVISION.descripcion %type)
is BEGIN
    INSERT INTO DIVISION VALUES (codigo, nombre, descripcion);
    dbms_output.put_line ('INSERCION EXITOSA');
END agregar_division;
/