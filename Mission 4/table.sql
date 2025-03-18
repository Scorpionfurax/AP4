DROP TABLE IF EXISTS ligue;
DROP TABLE IF EXISTS prestation;
DROP TABLE IF EXISTS facture;
DROP TABLE IF EXISTS ligue_facture;

CREATE TABLE PRESTATION (
    reference INT PRIMARY KEY AUTO_INCREMENT,
    libelle VARCHAR(255) NOT NULL,
    pu DECIMAL(10,2) NOT NULL
)engine = innodb;

CREATE TABLE FACTURE (
    numero_facture INT PRIMARY KEY AUTO_INCREMENT,
    date_facture DATE NOT NULL,
    echeance DATE NOT NULL,
    code_ligue INT NOT NULL,
    FOREIGN KEY (code_ligue) REFERENCES LIGUE(code_client) ON DELETE CASCADE ON UPDATE CASCADE
)engine = innodb;


CREATE TABLE ligue_facture(
    numero_facture INT NOT NULL,
    reference INT NOT NULL,
    quantite INT NOT NULL CHECK (quantite > 0),
    PRIMARY KEY (numero_facture, reference),
    FOREIGN KEY (numero_facture) REFERENCES FACTURE(numero_facture) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (reference) REFERENCES PRESTATION(reference) ON DELETE CASCADE ON UPDATE CASCADE
)engine = innodb;

CREATE TABLE prestation (
    reference INT PRIMARY KEY AUTO_INCREMENT,
    libelle VARCHAR(255) NOT NULL,
    pu DECIMAL(10,2) NOT NULL
)engine = innodb;