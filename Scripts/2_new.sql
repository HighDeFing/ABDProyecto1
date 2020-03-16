CREATE TABLE tryndamere.batalla (
    id         VARCHAR2(30) NOT NULL,
    usuario1   VARCHAR2(30 BYTE) NOT NULL,
    servido1   VARCHAR2(4) NOT NULL,
    mazo1      VARCHAR2(30) NOT NULL,
    carta1     VARCHAR2(30) NOT NULL,
    usuario2   VARCHAR2(30) NOT NULL,
    servidor2  VARCHAR2(4) NOT NULL,
    mazo2      VARCHAR2(30) NOT NULL,
    carta2     VARCHAR2(30) NOT NULL,
    ganador    VARCHAR2(30 BYTE),
    puntos     NUMBER(3)
)
TABLESPACE repositorio_tablas LOGGING NO INMEMORY;

CREATE UNIQUE INDEX tryndamere.ind_id_batalla_pk ON
    tryndamere.batalla (
        id
    ASC )
        TABLESPACE repositorio_indices LOGGING;

ALTER TABLE tryndamere.batalla
    ADD CONSTRAINT id_batalla_pk PRIMARY KEY ( id )
        USING INDEX tryndamere.ind_id_batalla_pk;

CREATE TABLE tryndamere.carta (
    id             VARCHAR2(30) NOT NULL,
    tipo           VARCHAR2(50 BYTE),
    nombre         VARCHAR2(50 BYTE),
    descripcion    VARCHAR2(100 BYTE),
    mejora         VARCHAR2(100 BYTE),
    region         VARCHAR2(30 BYTE) NOT NULL,
    costo          NUMBER(2),
    ataque         NUMBER(3),
    vida           NUMBER(3),
    rareza         VARCHAR2(30 BYTE),
    efecto         VARCHAR2(100 BYTE),
    palabra_clave  VARCHAR2(30 BYTE)
)
TABLESPACE repositorio_tablas LOGGING NO INMEMORY;

CREATE UNIQUE INDEX tryndamere.ind_id_carta_pk ON
    tryndamere.carta (
        id
    ASC )
        TABLESPACE repositorio_indices LOGGING;

CREATE INDEX tryndamere.ind_nombre_costo_carta ON
    tryndamere.carta (
        nombre
    ASC,
        costo
    ASC )
        TABLESPACE repositorio_indices LOGGING;

ALTER TABLE tryndamere.carta
    ADD CONSTRAINT id_carta_pk PRIMARY KEY ( id )
        USING INDEX tryndamere.ind_id_carta_pk;

CREATE TABLE tryndamere.division (
    codigo       VARCHAR2(5 BYTE) NOT NULL,
    nombre       VARCHAR2(50 BYTE),
    descripcion  VARCHAR2(50 BYTE)
)
TABLESPACE repositorio_tablas LOGGING NO INMEMORY;

CREATE UNIQUE INDEX tryndamere.ind_codigo_division_pk ON
    tryndamere.division (
        codigo
    ASC )
        TABLESPACE repositorio_indices LOGGING;

CREATE INDEX tryndamere.ind_nombre_division ON
    tryndamere.division (
        nombre
    ASC )
        TABLESPACE repositorio_indices LOGGING;

ALTER TABLE tryndamere.division
    ADD CONSTRAINT codigo_division_pk PRIMARY KEY ( codigo )
        USING INDEX tryndamere.ind_codigo_division_pk;

CREATE TABLE tryndamere.invocador (
    usuario           VARCHAR2(30 BYTE) NOT NULL,
    servidor          VARCHAR2(4 BYTE) NOT NULL,
    nombre_invocador  VARCHAR2(50 BYTE),
    fecha_creacion    DATE
)
TABLESPACE repositorio_tablas LOGGING NO INMEMORY;

CREATE INDEX tryndamere.ind_nombre_invocador_invocador ON
    tryndamere.invocador (
        nombre_invocador
    ASC )
        TABLESPACE repositorio_indices LOGGING;

--  ERROR: Index name length exceeds maximum allowed length(30)

CREATE UNIQUE INDEX tryndamere.ind_usuario_servidor_invocador_pk ON
    tryndamere.invocador (
        usuario
    ASC,
        servidor
    ASC )
        TABLESPACE repositorio_indices LOGGING;

ALTER TABLE tryndamere.invocador
    ADD CONSTRAINT usuario_servidor_invocador_pk PRIMARY KEY ( usuario,
                                                               servidor )
        USING INDEX tryndamere.ind_usuario_servidor_invocador_pk;

CREATE TABLE tryndamere.mazo (
    id        VARCHAR2(30) NOT NULL,
    usuario   VARCHAR2(30 BYTE) NOT NULL,
    servidor  VARCHAR2(4 BYTE) NOT NULL,
    carta     VARCHAR2(30) NOT NULL,
    nombre    VARCHAR2(50),
    cantidad  NUMBER(1)
)
TABLESPACE repositorio_tablas LOGGING NO INMEMORY;

CREATE UNIQUE INDEX tryndamere.ind_id_usuario_carta_mazo_pk ON
    tryndamere.mazo (
        id
    ASC,
        usuario
    ASC,
        carta
    ASC )
        TABLESPACE repositorio_indices LOGGING;

ALTER TABLE tryndamere.mazo
    ADD CONSTRAINT id_usuario_carta_mazo_pk PRIMARY KEY ( id,
                                                          usuario,
                                                          carta )
        USING INDEX tryndamere.ind_id_usuario_carta_mazo_pk;

CREATE TABLE tryndamere.region (
    nombre                 VARCHAR2(30 BYTE) NOT NULL,
    tipo_de_gobierno       VARCHAR2(50 BYTE),
    nivel_de_tecnologia    VARCHAR2(50 BYTE),
    tolerancia_a_la_magia  VARCHAR2(50 BYTE),
    descripcion_ambiente   VARCHAR2(50 BYTE)
)
TABLESPACE repositorio_tablas LOGGING NO INMEMORY;

CREATE UNIQUE INDEX tryndamere.ind_nombre_region_pk ON
    tryndamere.region (
        nombre
    ASC )
        TABLESPACE repositorio_indices LOGGING;

CREATE INDEX tryndamere.ind_tipo_de_gobierno_region ON
    tryndamere.region (
        tipo_de_gobierno
    ASC )
        TABLESPACE repositorio_indices LOGGING;

ALTER TABLE tryndamere.region
    ADD CONSTRAINT nombre_region_pk PRIMARY KEY ( nombre )
        USING INDEX tryndamere.ind_nombre_region_pk;

CREATE TABLE tryndamere.rioter (
    usuario                VARCHAR2(30 BYTE) NOT NULL,
    servidor               VARCHAR2(4 BYTE) NOT NULL,
    nombre_invocador       VARCHAR2(50 BYTE),
    fecha_contrato_inicio  DATE,
    fecha_contrato_fin     DATE,
    salario                NUMBER
)
TABLESPACE repositorio_tablas LOGGING NO INMEMORY;

CREATE UNIQUE INDEX tryndamere.ind_usuario_servidor_rioter_pk ON
    tryndamere.rioter (
        usuario
    ASC,
        servidor
    ASC )
        TABLESPACE repositorio_indices LOGGING;

ALTER TABLE tryndamere.rioter
    ADD CONSTRAINT usuario_servidor_rioter_pk PRIMARY KEY ( usuario,
                                                            servidor )
        USING INDEX tryndamere.ind_usuario_servidor_rioter_pk;

CREATE TABLE tryndamere.servidor (
    id            VARCHAR2(4 BYTE) NOT NULL,
    nombre        VARCHAR2(30 BYTE),
    inauguracion  DATE,
    idiomas       VARCHAR2(100 BYTE),
    ubicacion     VARCHAR2(50 BYTE),
    ip            VARCHAR2(50 BYTE)
)
TABLESPACE repositorio_tablas LOGGING NO INMEMORY;

CREATE UNIQUE INDEX tryndamere.ind_id_servidor_pk ON
    tryndamere.servidor (
        id
    ASC )
        TABLESPACE repositorio_indices LOGGING;

ALTER TABLE tryndamere.servidor
    ADD CONSTRAINT id_servidor_pk PRIMARY KEY ( id )
        USING INDEX tryndamere.ind_id_servidor_pk;

CREATE TABLE tryndamere.usuario (
    id                VARCHAR2(30 BYTE) NOT NULL,
    servidor          VARCHAR2(4 BYTE) NOT NULL,
    correo            VARCHAR2(50 BYTE),
    contrasena        VARCHAR2(100 BYTE),
    nombre            VARCHAR2(50 BYTE),
    apellido          VARCHAR2(50 BYTE),
    telefono          VARCHAR2(30 BYTE),
    fecha_nacimiento  DATE,
    sexo              CHAR(1 BYTE),
    division          VARCHAR2(5 BYTE) NOT NULL,
    puntos            NUMBER(3)
)
TABLESPACE repositorio_tablas LOGGING NO INMEMORY;

CREATE UNIQUE INDEX tryndamere.ind_id_usuario_pk ON
    tryndamere.usuario (
        id
    ASC,
        servidor
    ASC )
        TABLESPACE repositorio_indices LOGGING;

CREATE INDEX tryndamere.ind_nombre_usuario ON
    tryndamere.usuario (
        nombre
    ASC )
        TABLESPACE repositorio_indices LOGGING;

ALTER TABLE tryndamere.usuario
    ADD CONSTRAINT id_servidor_usuario_pk PRIMARY KEY ( id,
                                                        servidor )
        USING INDEX tryndamere.ind_id_usuario_pk;

ALTER TABLE tryndamere.batalla
    ADD CONSTRAINT batalla_mazo_fk FOREIGN KEY ( mazo1,
                                                 usuario1,
                                                 carta1 )
        REFERENCES tryndamere.mazo ( id,
                                     usuario,
                                     carta )
    NOT DEFERRABLE;

ALTER TABLE tryndamere.batalla
    ADD CONSTRAINT batalla_mazo_fkv1 FOREIGN KEY ( mazo2,
                                                   usuario2,
                                                   carta2 )
        REFERENCES tryndamere.mazo ( id,
                                     usuario,
                                     carta )
    NOT DEFERRABLE;

ALTER TABLE tryndamere.batalla
    ADD CONSTRAINT batalla_usuario_fk FOREIGN KEY ( usuario1,
                                                    servido1 )
        REFERENCES tryndamere.usuario ( id,
                                        servidor )
    NOT DEFERRABLE;

ALTER TABLE tryndamere.batalla
    ADD CONSTRAINT batalla_usuario_fkv1 FOREIGN KEY ( usuario2,
                                                      servidor2 )
        REFERENCES tryndamere.usuario ( id,
                                        servidor )
    NOT DEFERRABLE;

ALTER TABLE tryndamere.carta
    ADD CONSTRAINT carta_region_fk FOREIGN KEY ( region )
        REFERENCES tryndamere.region ( nombre )
    NOT DEFERRABLE;

ALTER TABLE tryndamere.invocador
    ADD CONSTRAINT invocador_rioter_fk FOREIGN KEY ( usuario,
                                                     servidor )
        REFERENCES tryndamere.rioter ( usuario,
                                       servidor )
    NOT DEFERRABLE;

ALTER TABLE tryndamere.mazo
    ADD CONSTRAINT mazo_carta_fk FOREIGN KEY ( carta )
        REFERENCES tryndamere.carta ( id )
    NOT DEFERRABLE;

ALTER TABLE tryndamere.mazo
    ADD CONSTRAINT mazo_usuario_fk FOREIGN KEY ( usuario,
                                                 servidor )
        REFERENCES tryndamere.usuario ( id,
                                        servidor )
    NOT DEFERRABLE;

ALTER TABLE tryndamere.rioter
    ADD CONSTRAINT rioter_usuario_fk FOREIGN KEY ( usuario,
                                                   servidor )
        REFERENCES tryndamere.usuario ( id,
                                        servidor )
    NOT DEFERRABLE;

ALTER TABLE tryndamere.usuario
    ADD CONSTRAINT usuario_division_fk FOREIGN KEY ( division )
        REFERENCES tryndamere.division ( codigo )
    NOT DEFERRABLE;

ALTER TABLE tryndamere.usuario
    ADD CONSTRAINT usuario_servidor_fk FOREIGN KEY ( servidor )
        REFERENCES tryndamere.servidor ( id )
    NOT DEFERRABLE;
