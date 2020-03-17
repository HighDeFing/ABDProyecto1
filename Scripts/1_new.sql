--Ejecutar como SYSTEM
--Instrucciones para eliminar los tablespaces
--Si no estan creados, arrojará un error.
DROP TABLESPACE repositorio_tablas INCLUDING CONTENTS AND DATAFILES;
DROP TABLESPACE repositorio_indices INCLUDING CONTENTS AND DATAFILES;
--Instrucciones para crear los tablespaces
--CREATE TABLESPACE repositorio_tablas DATAFILE 'df_tablas_aux.DBF' SIZE 50M;
--ALTER TABLESPACE repositorio_tablas ADD DATAFILE 'df_tablas.DBF';
--DROP TABLESPACE repositorio_tablas INCLUDING CONTENTS AND DATAFILES;
--CREATE TABLESPACE repositorio_indices DATAFILE 'df_tablas_aux.DBF' SIZE 50M;
--ALTER TABLESPACE repositorio_indices ADD DATAFILE 'df_indices.DBF';
--DROP TABLESPACE repositorio_indices INCLUDING CONTENTS AND DATAFILES;
CREATE TABLESPACE repositorio_tablas DATAFILE 'df_tablas.DBF' SIZE 50M;
CREATE TABLESPACE repositorio_indices DATAFILE 'df_indices.DBF' SIZE 50M;

--Instrucciones para eliminar al usuario TRYNDAMERE y todo su contenido
--usar si tienen algun error al eliminar el usuario:
alter session set "_oracle_script"=true;
DROP USER TRYNDAMERE CASCADE;
CREATE USER TRYNDAMERE IDENTIFIED BY a1234;

--USER SCHEMA
--Se tiene que hacer grant create role antes de conectase sino algo explota....
GRANT CREATE SESSION, CONNECT TO TRYNDAMERE WITH ADMIN OPTION;
GRANT GRANT ANY OBJECT PRIVILEGE, SELECT ANY DICTIONARY, INHERIT ANY PRIVILEGES TO TRYNDAMERE WITH ADMIN OPTION;
GRANT CREATE TABLE, ALTER SESSION, CREATE TRIGGER, CREATE PROCEDURE to TRYNDAMERE WITH ADMIN OPTION;
GRANT CREATE ROLE, DROP ANY ROLE TO TRYNDAMERE WITH ADMIN OPTION;
GRANT CREATE USER, ALTER USER, DROP USER TO TRYNDAMERE WITH ADMIN OPTION;

ALTER USER TRYNDAMERE QUOTA UNLIMITED ON repositorio_tablas;
ALTER USER TRYNDAMERE QUOTA UNLIMITED ON repositorio_indices;

CONNECT TRYNDAMERE/a1234;

