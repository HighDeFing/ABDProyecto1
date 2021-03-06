CREATE TABLE tryndamere.batalla (
    id              VARCHAR2(30 BYTE) NOT NULL,
    usuario1        VARCHAR2(30 BYTE) NOT NULL,
    servidor1       VARCHAR2(4 BYTE) NOT NULL,
    mazo1           VARCHAR2(30 BYTE) NOT NULL,
    carta1          VARCHAR2(30 BYTE) NOT NULL,
    usuario2        VARCHAR2(30 BYTE) NOT NULL,
    servidor2       VARCHAR2(4 BYTE) NOT NULL,
    mazo2           VARCHAR2(30 BYTE) NOT NULL,
    carta2          VARCHAR2(30 BYTE) NOT NULL,
    ganador         VARCHAR2(30 BYTE),
    puntos          NUMBER(3)
)
PCTFREE 10 PCTUSED 40 TABLESPACE repositorio_tablas LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX tryndamere.batalla_id_ind ON
    tryndamere.batalla (
        id
    ASC )
        TABLESPACE repositorio_indices PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;


ALTER TABLE tryndamere.batalla
    ADD CONSTRAINT id_batalla_pk PRIMARY KEY ( id )
        USING INDEX tryndamere.batalla_id_ind;

CREATE TABLE tryndamere.carta (
    id             VARCHAR2(30 BYTE) NOT NULL,
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
PCTFREE 10 PCTUSED 40 TABLESPACE repositorio_tablas LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX tryndamere.carta_id_ind ON
    tryndamere.carta (
        id
    ASC )
        TABLESPACE repositorio_indices PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

CREATE INDEX tryndamere.carta_nombre_costo_ind ON
    tryndamere.carta (
        nombre
    ASC,
        costo
    ASC )
        TABLESPACE repositorio_indices PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE tryndamere.carta
    ADD CONSTRAINT id_carta_pk PRIMARY KEY ( id )
        USING INDEX tryndamere.carta_id_ind;

CREATE TABLE tryndamere.division (
    codigo       VARCHAR2(5 BYTE) NOT NULL,
    nombre       VARCHAR2(50 BYTE),
    descripcion  VARCHAR2(50 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE repositorio_tablas LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX tryndamere.division_codigo_ind ON
    tryndamere.division (
        codigo
    ASC )
        TABLESPACE repositorio_indices PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

CREATE INDEX tryndamere.ind_nombre_division ON
    tryndamere.division (
        nombre
    ASC )
        TABLESPACE repositorio_indices PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;


ALTER TABLE tryndamere.division
    ADD CONSTRAINT codigo_division_pk PRIMARY KEY ( codigo )
        USING INDEX tryndamere.division_codigo_ind;

CREATE TABLE tryndamere.invocador (
    usuario           VARCHAR2(30 BYTE) NOT NULL,
    servidor          VARCHAR2(4 BYTE) NOT NULL,
    nombre_invocador  VARCHAR2(50 BYTE),
    fecha_creacion    DATE
)
PCTFREE 10 PCTUSED 40 TABLESPACE repositorio_tablas LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT )
NO INMEMORY;

CREATE INDEX tryndamere.invocador_nombre_invocador_ind ON
    tryndamere.invocador (
        nombre_invocador
    ASC )
        TABLESPACE repositorio_indices PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

CREATE UNIQUE INDEX tryndamere.invocador_usuario_servidor_ind ON
    tryndamere.invocador (
        usuario
    ASC,
        servidor
    ASC )
        TABLESPACE repositorio_indices PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;


ALTER TABLE tryndamere.invocador
    ADD CONSTRAINT usuario_servidor_invocador_pk PRIMARY KEY ( usuario,
                                                               servidor )
        USING INDEX tryndamere.invocador_usuario_servidor_ind;

ALTER TABLE tryndamere.invocador ADD CONSTRAINT invocador__un UNIQUE ( nombre_invocador );

CREATE TABLE tryndamere.mazo (
    id        VARCHAR2(30 BYTE) NOT NULL,
    usuario   VARCHAR2(30 BYTE) NOT NULL,
    servidor  VARCHAR2(4 BYTE) NOT NULL,
    carta     VARCHAR2(30 BYTE) NOT NULL,
    nombre    VARCHAR2(50 BYTE),
    cantidad  NUMBER(1)
)
PCTFREE 10 PCTUSED 40 TABLESPACE repositorio_tablas LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX tryndamere.mazo_id_usuario_carta_ind ON
    tryndamere.mazo (
        id
    ASC,
        usuario
    ASC,
        carta
    ASC,
        servidor
    ASC )
        TABLESPACE repositorio_indices PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;


ALTER TABLE tryndamere.mazo
    ADD CONSTRAINT id_usuario_carta_mazo_pk PRIMARY KEY ( id,
                                                          usuario,
                                                          carta,
                                                          servidor )
        USING INDEX tryndamere.mazo_id_usuario_carta_ind;

CREATE TABLE tryndamere.region (
    nombre                 VARCHAR2(30 BYTE) NOT NULL,
    tipo_de_gobierno       VARCHAR2(50 BYTE),
    nivel_de_tecnologia    VARCHAR2(50 BYTE),
    tolerancia_a_la_magia  VARCHAR2(50 BYTE),
    descripcion_ambiente   VARCHAR2(50 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE repositorio_tablas LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT )
NO INMEMORY;

CREATE INDEX tryndamere.ind_tipo_de_gobierno_region ON
    tryndamere.region (
        tipo_de_gobierno
    ASC )
        TABLESPACE repositorio_indices PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

CREATE UNIQUE INDEX tryndamere.region_nombre_ind ON
    tryndamere.region (
        nombre
    ASC )
        TABLESPACE repositorio_indices PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;


ALTER TABLE tryndamere.region
    ADD CONSTRAINT nombre_region_pk PRIMARY KEY ( nombre )
        USING INDEX tryndamere.region_nombre_ind;

CREATE TABLE tryndamere.rioter (
    usuario                VARCHAR2(30 BYTE) NOT NULL,
    servidor               VARCHAR2(4 BYTE) NOT NULL,
    nombre_invocador       VARCHAR2(50 BYTE),
    fecha_contrato_inicio  DATE,
    fecha_contrato_fin     DATE,
    salario                NUMBER
)
PCTFREE 10 PCTUSED 40 TABLESPACE repositorio_tablas LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX tryndamere.rioter_usuario_servidor_ind ON
    tryndamere.rioter (
        usuario
    ASC,
        servidor
    ASC )
        TABLESPACE repositorio_indices PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;


ALTER TABLE tryndamere.rioter
    ADD CONSTRAINT usuario_servidor_rioter_pk PRIMARY KEY ( usuario,
                                                            servidor )
        USING INDEX tryndamere.rioter_usuario_servidor_ind;

CREATE TABLE tryndamere.servidor (
    id            VARCHAR2(4 BYTE) NOT NULL,
    nombre        VARCHAR2(30 BYTE),
    inauguracion  DATE,
    idiomas       VARCHAR2(100 BYTE),
    ubicacion     VARCHAR2(50 BYTE),
    ip            VARCHAR2(50 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE repositorio_tablas LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX tryndamere.servidor_id_ind ON
    tryndamere.servidor (
        id
    ASC )
        TABLESPACE repositorio_indices PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;


ALTER TABLE tryndamere.servidor
    ADD CONSTRAINT id_servidor_pk PRIMARY KEY ( id )
        USING INDEX tryndamere.servidor_id_ind;

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
PCTFREE 10 PCTUSED 40 TABLESPACE repositorio_tablas LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT )
NO INMEMORY;

CREATE INDEX tryndamere.ind_nombre_usuario ON
    tryndamere.usuario (
        nombre
    ASC )
        TABLESPACE repositorio_indices PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

CREATE UNIQUE INDEX tryndamere.usuario_id_ind ON
    tryndamere.usuario (
        id
    ASC,
        servidor
    ASC )
        TABLESPACE repositorio_indices PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;


ALTER TABLE tryndamere.usuario
    ADD CONSTRAINT id_servidor_usuario_pk PRIMARY KEY ( id,
                                                        servidor )
        USING INDEX tryndamere.usuario_id_ind;

ALTER TABLE tryndamere.batalla
    ADD CONSTRAINT batalla_mazo_fk FOREIGN KEY ( mazo1,
                                                 usuario1,
                                                 carta1,
                                                 servidor1 )
        REFERENCES tryndamere.mazo ( id,
                                     usuario,
                                     carta,
                                     servidor )
    NOT DEFERRABLE;

ALTER TABLE tryndamere.batalla
    ADD CONSTRAINT batalla_mazo_fkv1 FOREIGN KEY ( mazo2,
                                                   usuario2,
                                                   carta2,
                                                   servidor2 )
        REFERENCES tryndamere.mazo ( id,
                                     usuario,
                                     carta,
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