-- Asegurarse de que la BD esta en modo ARCHIVELOG, con el fin de poder hacer una copia de la BD mientras esta se encuentre abierta
SHUTDOWN IMMEDIATE;

STARTUP MOUNT;

ALTER DATABASE ARCHIVELOG;

ALTER DATABASE OPEN;

-- Crear copia completa de la BD, abriendo una ventada CMD y conectandose a la BD usando RMAN
RMAN

CONNECT TARGET /

BACKBACKUP DATABASE PLUS ARCHIVELOG;

-- Restaurar y recuperar la BD, abriendo una ventana CMD y conectandose a la BD usando RMAN
RMAN

CONNECT TARGET /

SHUTDOWN IMMEDIATE;

STARTUP MOUNT;

RESTORE DATABASE;

RECOVER DATABASE;

ALTER DATABASE OPEN;
