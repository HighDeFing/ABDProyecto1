--Ejecutar como SYSTEM	
--Instrucciones para eliminar los tablespaces
--Si no estan creados, arrojará un error.
DROP TABLESPACE repositorio_tablas INCLUDING CONTENTS AND DATAFILES;
DROP TABLESPACE repositorio_indices INCLUDING CONTENTS AND DATAFILES;
--Instrucciones para crear los tablespaces
CREATE TABLESPACE repositorio_tablas DATAFILE 'df_tablas.DBF' SIZE 50M;
CREATE TABLESPACE repositorio_indices DATAFILE 'df_indices.DBF' SIZE 50M;

--Instrucciones para eliminar al usuario TRYNDAMERE y todo su contenido
--usar si tienen algun error al eliminar el usuario:
	--alter session set “_oracle_script“=true;
DROP USER TRYNDAMERE CASCADE;

--Instrucciones para crear al usuario TRYNDAMERE y otorgarle los permisos necesarios
--ejecutar si encuentra un problema al crear el usuario: alter session set "_ORACLE_SCRIPT"=true;  
CREATE USER TRYNDAMERE IDENTIFIED BY a1234; --contraseña de su preferencia--
GRANT CREATE SESSION, CREATE TABLE, ALTER SESSION, CREATE TRIGGER, CREATE PROCEDURE to TRYNDAMERE;
ALTER USER TRYNDAMERE QUOTA UNLIMITED ON repositorio_tablas;
ALTER USER TRYNDAMERE QUOTA UNLIMITED ON repositorio_indices;

--Instrucciones para conectarse como el usuario creado e importar los scripts necesarios para crear la base de datos
CONNECT TRYNDAMERE/--contraseña de su preferencia--;
--Ruta de los scripts en caso de que no desee importarlos manualmente.
--ej. @C:\xxxxx\...\xxxxx\Escritorio\Proyecto1\Scripts\1.sql (Pruebe con comillas dobles o simples si no funciona la instrucción)
@C:\"ruta"\2.sql
@C:\"ruta"\3.sql
@C:\"ruta"\4.sql
@C:\"ruta"\5.sql