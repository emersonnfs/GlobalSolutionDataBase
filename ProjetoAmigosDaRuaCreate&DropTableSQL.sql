----PARTICIPANTES------------------------------

--- Abner Rodrigues Ferreira - RM: 93576
--- Davi Oliveira Da Silva - RM: 95535
--- Emerson Nascimento Figueredo Silva - RM:95199
--- Guilherme De Jesus Ferreira - RM: 95542
--- João Victor Oliveira Da Silva - RM: 94231

-----------------------------------------------

-- Gerado por Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   em:        2023-06-02 18:22:59 BRT
--   site:      Oracle Database 12c
--   tipo:      Oracle Database 12c



DROP TABLE rm95199.tb_ar_evento CASCADE CONSTRAINTS;

DROP TABLE rm95199.tb_ar_local CASCADE CONSTRAINTS;

DROP TABLE rm95199.tb_ar_parceria CASCADE CONSTRAINTS;

DROP TABLE rm95199.tb_ar_patrocinador CASCADE CONSTRAINTS;

DROP TABLE rm95199.tb_ar_pessoa_fisica CASCADE CONSTRAINTS;

DROP TABLE rm95199.tb_ar_pessoa_juridica CASCADE CONSTRAINTS;

DROP TABLE rm95199.tb_ar_responsavel CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE rm95199.tb_ar_evento (
    id_evento      NUMBER(19) NOT NULL,
    hora_fim       TIMESTAMP,
    hora_inicio    TIMESTAMP,
    nm_evento      VARCHAR2(255 CHAR),
    tp_evento      NUMBER(5),
    id_local       NUMBER(19),
    id_responsavel NUMBER(19)
);

ALTER TABLE rm95199.tb_ar_evento ADD CONSTRAINT tb_ar_evento_pk PRIMARY KEY ( id_evento );

CREATE TABLE rm95199.tb_ar_local (
    id_local     NUMBER(19) NOT NULL,
    nr_latitude  NUMBER(11, 8),
    nr_longitude NUMBER(11, 8),
    nm_local     VARCHAR2(255 CHAR)
);

ALTER TABLE rm95199.tb_ar_local ADD CONSTRAINT tb_ar_local_pk PRIMARY KEY ( id_local );

CREATE TABLE rm95199.tb_ar_parceria (
    id_parceria     NUMBER(19) NOT NULL,
    id_evento       NUMBER(19),
    id_patrocinador NUMBER(19)
);

ALTER TABLE rm95199.tb_ar_parceria ADD CONSTRAINT tb_ar_parceria_pk PRIMARY KEY ( id_parceria );

CREATE TABLE rm95199.tb_ar_patrocinador (
    id_patrocinador NUMBER(19) NOT NULL,
    nm_patrocinador VARCHAR2(255 CHAR),
    tp_patrocinador NUMBER(5)
);

ALTER TABLE rm95199.tb_ar_patrocinador ADD CONSTRAINT tb_ar_patrocinador_pk PRIMARY KEY ( id_patrocinador );

CREATE TABLE rm95199.tb_ar_pessoa_fisica (
    id_pessoa_fisica NUMBER(19) NOT NULL,
    nr_cpf           NUMBER(11),
    dt_nascimento    DATE,
    nr_rg            NUMBER(9),
    id_responsavel   NUMBER(19)
);

ALTER TABLE rm95199.tb_ar_pessoa_fisica ADD CONSTRAINT tb_ar_pessoa_fisica_pk PRIMARY KEY ( id_pessoa_fisica );

CREATE TABLE rm95199.tb_ar_pessoa_juridica (
    id_pessoa_juridica NUMBER(19) NOT NULL,
    nr_cnpj            NUMBER(14),
    nr_insc_estadual   NUMBER(14),
    nm_fantasia        VARCHAR2(255 CHAR),
    ds_ramo_atividade  VARCHAR2(255 CHAR),
    id_responsavel     NUMBER(19)
);

ALTER TABLE rm95199.tb_ar_pessoa_juridica ADD CONSTRAINT tb_ar_pessoa_juridica_pk PRIMARY KEY ( id_pessoa_juridica );

CREATE TABLE rm95199.tb_ar_responsavel (
    id_responsavel NUMBER(19) NOT NULL,
    ds_email       VARCHAR2(255 CHAR),
    nm_responsavel VARCHAR2(255 CHAR),
    ds_senha       VARCHAR2(255 CHAR),
    nr_telefone    NUMBER(14)
);

CREATE UNIQUE INDEX rm95199.uk_ds_email ON
    rm95199.tb_ar_responsavel (
        ds_email
    ASC );

ALTER TABLE rm95199.tb_ar_responsavel ADD CONSTRAINT tb_ar_responsavel_pk PRIMARY KEY ( id_responsavel );

ALTER TABLE rm95199.tb_ar_responsavel ADD CONSTRAINT uk_ds_email UNIQUE ( ds_email );

ALTER TABLE rm95199.tb_ar_parceria
    ADD CONSTRAINT fk_evento_parceria FOREIGN KEY ( id_evento )
        REFERENCES rm95199.tb_ar_evento ( id_evento );

ALTER TABLE rm95199.tb_ar_evento
    ADD CONSTRAINT fk_local_evento FOREIGN KEY ( id_local )
        REFERENCES rm95199.tb_ar_local ( id_local );

ALTER TABLE rm95199.tb_ar_parceria
    ADD CONSTRAINT fk_patrocinador_parceria FOREIGN KEY ( id_patrocinador )
        REFERENCES rm95199.tb_ar_patrocinador ( id_patrocinador );

ALTER TABLE rm95199.tb_ar_evento
    ADD CONSTRAINT fk_responsavel_evento FOREIGN KEY ( id_responsavel )
        REFERENCES rm95199.tb_ar_responsavel ( id_responsavel );

ALTER TABLE rm95199.tb_ar_pessoa_fisica
    ADD CONSTRAINT fk_responsavel_fisica FOREIGN KEY ( id_responsavel )
        REFERENCES rm95199.tb_ar_responsavel ( id_responsavel );

ALTER TABLE rm95199.tb_ar_pessoa_juridica
    ADD CONSTRAINT fk_responsavel_juridica FOREIGN KEY ( id_responsavel )
        REFERENCES rm95199.tb_ar_responsavel ( id_responsavel );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             1
-- ALTER TABLE                             14
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
