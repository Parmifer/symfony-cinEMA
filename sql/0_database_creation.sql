/**
 * Author:  parmifer
 * Created: 15 févr. 2017
 */
CREATE DATABASE tp_symfony_cinema;

USE tp_symfony_cinema;

CREATE TABLE realisateur (
    id INT AUTO_INCREMENT,
    prenom TINYTEXT,
    nom TINYTEXT,
    PRIMARY KEY (id)
);

CREATE TABLE acteur (
    id INT AUTO_INCREMENT,
    prenom TINYTEXT,
    nom TINYTEXT,
    PRIMARY KEY (id)
);

CREATE TABLE genre (
    id INT AUTO_INCREMENT,
    libelle TINYTEXT,
    PRIMARY KEY (id)
);

CREATE TABLE film (
    id INT AUTO_INCREMENT,
    titre TINYTEXT NOT NULL,
    synopsis TEXT,
    duree TIME,
    date_sortie DATETIME NOT NULL,
    ext_realisateur_id INT,
    ext_genre_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY(ext_realisateur_id) REFERENCES realisateur(id),
    FOREIGN KEY(ext_genre_id) REFERENCES genre(id)
);

CREATE TABLE acteur_jouer_film (
    ext_acteur_id INT,
    ext_film_id INT,
    PRIMARY KEY(ext_acteur_id, ext_film_id),
    FOREIGN KEY(ext_acteur_id) REFERENCES acteur(id),
    FOREIGN KEY(ext_film_id) REFERENCES film(id)
);
