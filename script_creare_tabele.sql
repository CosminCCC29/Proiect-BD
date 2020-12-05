-- Generated by Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   at:        2020-12-05 17:24:37 EET
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE administratori (
    id_admin           NUMBER(2) NOT NULL,
    nume_prenume_cont  VARCHAR2(30) NOT NULL,
    parola_cont        NUMBER(30) NOT NULL
);

ALTER TABLE administratori ADD CONSTRAINT administratori_pk PRIMARY KEY ( id_admin );

CREATE TABLE categorii (
    nr_categorie      NUMBER NOT NULL,
    nume_categorie    VARCHAR2(30) NOT NULL,
    meniuri_nr_meniu  NUMBER(2) NOT NULL,
    tip_categorie     VARCHAR2(10) NOT NULL
);

ALTER TABLE categorii
    ADD CHECK ( tip_categorie IN ( 'bauturi', 'preparate' ) );

ALTER TABLE categorii ADD CONSTRAINT categorii_pk PRIMARY KEY ( nr_categorie );

ALTER TABLE categorii
    ADD CONSTRAINT cat_nr_men_nr_cat_nume_cat_un UNIQUE ( meniuri_nr_meniu,
                                                          nr_categorie,
                                                          nume_categorie );

CREATE TABLE categorii_produse (
    categorii_nr_categorie  NUMBER NOT NULL,
    produse_nr_produs       NUMBER(3) NOT NULL
);

ALTER TABLE categorii_produse ADD CONSTRAINT categorii_produse_pk PRIMARY KEY ( categorii_nr_categorie,
                                                                                produse_nr_produs );

CREATE TABLE comenzi (
    id_comanda    NUMBER(4) NOT NULL,
    data_comanda  DATE NOT NULL,
    nr_masa       NUMBER
);

ALTER TABLE comenzi ADD CONSTRAINT comenzi_pk PRIMARY KEY ( id_comanda );

CREATE TABLE ingrediente (
    id_ingredient          NUMBER(3) NOT NULL,
    nume_ingredient        VARCHAR2(20) NOT NULL,
    cantitate_disponibila  NUMBER(3) NOT NULL,
    unitate_masura         VARCHAR2(10),
    producator             VARCHAR2(30)
);

ALTER TABLE ingrediente ADD CONSTRAINT ingrediente_pk PRIMARY KEY ( id_ingredient );

ALTER TABLE ingrediente
    ADD CONSTRAINT ingr_id_ingr_nume_ingr_prod_un UNIQUE ( id_ingredient,
                                                           nume_ingredient,
                                                           producator );

CREATE TABLE meniuri (
    nr_meniu                 NUMBER(2) NOT NULL,
    nume_meniu               VARCHAR2(30) NOT NULL,
    administratori_id_admin  NUMBER(2) NOT NULL
);

ALTER TABLE meniuri ADD CONSTRAINT meniuri_pk PRIMARY KEY ( nr_meniu );

ALTER TABLE meniuri ADD CONSTRAINT meniuri_nume_meniu_un UNIQUE ( nume_meniu );

CREATE TABLE produse (
    nr_produs         NUMBER(3) NOT NULL,
    nume_produs       VARCHAR2(30) NOT NULL,
    pret              NUMBER(3) NOT NULL,
    cantitate_produs  NUMBER(4) NOT NULL
);

ALTER TABLE produse ADD CONSTRAINT produse_pk PRIMARY KEY ( nr_produs );

CREATE TABLE produse_comenzi (
    nr_produse_comandate  NUMBER(2) NOT NULL,
    produse_nr_produs     NUMBER(3) NOT NULL,
    comenzi_id_comanda    NUMBER(4) NOT NULL
);

CREATE TABLE reteta (
    produse_nr_produs          NUMBER(3) NOT NULL,
    ingrediente_id_ingredient  NUMBER(3) NOT NULL,
    cantitate_ingredient       NUMBER(3),
    unitate_masura             VARCHAR2(10)
);

ALTER TABLE reteta ADD CONSTRAINT reteta_pk PRIMARY KEY ( produse_nr_produs,
                                                          ingrediente_id_ingredient );

ALTER TABLE categorii
    ADD CONSTRAINT categorii_meniuri_fk FOREIGN KEY ( meniuri_nr_meniu )
        REFERENCES meniuri ( nr_meniu );

ALTER TABLE categorii_produse
    ADD CONSTRAINT categorii_produse_categorii_fk FOREIGN KEY ( categorii_nr_categorie )
        REFERENCES categorii ( nr_categorie );

ALTER TABLE categorii_produse
    ADD CONSTRAINT categorii_produse_produse_fk FOREIGN KEY ( produse_nr_produs )
        REFERENCES produse ( nr_produs );

ALTER TABLE meniuri
    ADD CONSTRAINT meniuri_administratori_fk FOREIGN KEY ( administratori_id_admin )
        REFERENCES administratori ( id_admin );

ALTER TABLE produse_comenzi
    ADD CONSTRAINT produse_comenzi_comenzi_fk FOREIGN KEY ( comenzi_id_comanda )
        REFERENCES comenzi ( id_comanda );

ALTER TABLE produse_comenzi
    ADD CONSTRAINT produse_comenzi_produse_fk FOREIGN KEY ( produse_nr_produs )
        REFERENCES produse ( nr_produs );

ALTER TABLE reteta
    ADD CONSTRAINT reteta_ingrediente_fk FOREIGN KEY ( ingrediente_id_ingredient )
        REFERENCES ingrediente ( id_ingredient );

ALTER TABLE reteta
    ADD CONSTRAINT reteta_produse_fk FOREIGN KEY ( produse_nr_produs )
        REFERENCES produse ( nr_produs );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             9
-- CREATE INDEX                             0
-- ALTER TABLE                             20
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
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0