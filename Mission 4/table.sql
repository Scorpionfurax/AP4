DROP TABLE IF EXISTS ligue;
DROP TABLE IF EXISTS prestation;
DROP TABLE IF EXISTS facture;
DROP TABLE IF EXISTS ligue_facture;

CREATE TABLE ligue (
    code_client INT PRIMARY KEY,
    intitule VARCHAR(255) NOT NULL,
    tresorier VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    spe VARCHAR(255) NOT NULL
) ENGINE = InnoDB;

 
CREATE TABLE prestation (
    reference INT PRIMARY KEY AUTO_INCREMENT,
    libelle VARCHAR(255) NOT NULL,
    pu DECIMAL(10,2) NOT NULL
) ENGINE = InnoDB;

 
CREATE TABLE facture (
    numero_facture INT PRIMARY KEY AUTO_INCREMENT,
    date_facture DATE NOT NULL,
    echeance DATE NOT NULL,
    code_ligue INT NOT NULL,
    FOREIGN KEY (code_ligue) REFERENCES ligue(code_client) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

 
CREATE TABLE ligue_facture (
    numero_facture INT NOT NULL,
    reference INT NOT NULL,
    quantite INT NOT NULL CHECK (quantite > 0),
    PRIMARY KEY (numero_facture, reference),
    FOREIGN KEY (numero_facture) REFERENCES facture(numero_facture) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (reference) REFERENCES prestation(reference) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;
