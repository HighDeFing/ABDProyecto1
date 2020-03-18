--Roles
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

--rol para los select
DROP ROLE TRYNDAMERE_select;
CREATE ROLE TRYNDAMERE_select;

REVOKE SELECT ON tryndamere.batalla FROM TRYNDAMERE_select;
REVOKE SELECT ON tryndamere.carta FROM TRYNDAMERE_select;
REVOKE SELECT ON tryndamere.division FROM TRYNDAMERE_select;
REVOKE SELECT ON tryndamere.invocador FROM TRYNDAMERE_select;
REVOKE SELECT ON tryndamere.mazo FROM TRYNDAMERE_select;
REVOKE SELECT ON tryndamere.region FROM TRYNDAMERE_select;
REVOKE SELECT ON tryndamere.rioter FROM TRYNDAMERE_select;
REVOKE SELECT ON tryndamere.servidor FROM TRYNDAMERE_select;
REVOKE SELECT ON tryndamere.usuario FROM TRYNDAMERE_select;

GRANT SELECT ON tryndamere.batalla TO TRYNDAMERE_select;
GRANT SELECT ON tryndamere.carta TO TRYNDAMERE_select;
GRANT SELECT ON tryndamere.division TO TRYNDAMERE_select;
GRANT SELECT ON tryndamere.invocador TO TRYNDAMERE_select;
GRANT SELECT ON tryndamere.mazo TO TRYNDAMERE_select;
GRANT SELECT ON tryndamere.region TO TRYNDAMERE_select;
GRANT SELECT ON tryndamere.rioter TO TRYNDAMERE_select;
GRANT SELECT ON tryndamere.servidor TO TRYNDAMERE_select;
GRANT SELECT ON tryndamere.usuario TO TRYNDAMERE_select;

--usuario para los select
DROP USER TRYNDAMERE_externo_select CASCADE;
CREATE USER TRYNDAMERE_externo_select IDENTIFIED BY a1234;
GRANT CONNECT, CREATE SESSION TO TRYNDAMERE_externo_select;
GRANT TRYNDAMERE_select to TRYNDAMERE_externo_select;

ALTER USER TRYNDAMERE_externo_select DEFAULT ROLE TRYNDAMERE_select;

--connect TRYNDAMERE_externo_select/a1234;

--DROP ROLE TRYNDAMERE_insert;
--CREATE ROLE TRYNDAMERE_insert;
