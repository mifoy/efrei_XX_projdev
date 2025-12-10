
CREATE TABLE voiture (
    id_voiture INT PRIMARY KEY,
    marque VARCHAR(100),
    prix INT,
    etat VARCHAR(10)
);

CREATE TABLE location (
    id_location INT PRIMARY KEY,
    date_emprunt DATETIME,
    date_retour DATETIME
);

CREATE TABLE utilisateur (
    ID_utilisateur INT PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    mail VARCHAR(255),
    age INT
);

CREATE TABLE argent (
    id_location INT,
    id_voiture INT,
    prix_location INT,
    FOREIGN KEY (id_location) REFERENCES location(id_location),
    FOREIGN KEY (id_voiture) REFERENCES voiture(id_voiture)
);
