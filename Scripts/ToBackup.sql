-- Asegurarse de que la BD esta en modo ARCHIVELOG, con el fin de poder hacer una copia de la BD mientras esta se encuentre abierta
SHUTDOWN IMMEDIATE;

STARTUP MOUNT;

ALTER DATABASE ARCHIVELOG;

ALTER DATABASE OPEN;

-- Crear copia completa de la BD, abriendo una ventada CMD y conectandose a la BD usando RMAN
RMAN

BACKBACKUP DATABASE PLUS ARCHIVELOG;
