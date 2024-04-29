
-- Créer les tables de la base de données si elles ne sont pas encore existentes

CREATE TABLE IF NOT EXISTS question(
    id_question INT PRIMARY KEY,
    nom_question VARCHAR(255) NOT NULL,
    id_sujet INT NOT NULL
);

CREATE TABLE IF NOT EXISTS reponse(
    id_reponse INT PRIMARY KEY,
    nom_reponse VARCHAR(255) NOT NULL,
    id_question INT NOT NULL,
    resultat INT NOT NULL
);

CREATE TABLE IF NOT EXISTS note(
     id_note INT PRIMARY KEY,
     num FLOAT NOT NULL,
     id_joueur INT,
     id_sujet INT NOT NULL
);

CREATE TABLE IF NOT EXISTS sujet(
    id_sujet INT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS joueur(
    id_joueur INT PRIMARY KEY,
    nom VARCHAR(255)
);

-- Insertion des données
-- Joueur
INSERT INTO joueur(id_joueur, nom) VALUES(1, 'joueur_1');
INSERT INTO joueur(id_joueur, nom) VALUES(2, 'joueur_2');

-- Sujet
INSERT INTO joueur(id_sujet, titre) VALUES(1, 'sujet_1');
INSERT INTO joueur(id_sujet, titre) VALUES(2, 'sujet_2');

-- Question
INSERT INTO question(id_question, nom_question, id_sujet) VALUES(1, 'Quelle est la capitale du Malawi ?', 1);
INSERT INTO question(id_question, nom_question, id_sujet) VALUES(2, 'Quelle est la femelle du mouton ?', 1);
INSERT INTO question(id_question, nom_question, id_sujet) VALUES(3, 'Quelle est la formule chmique de l'eau ?', 1);
INSERT INTO question(id_question, nom_question, id_sujet) VALUES(4, 'Lima est la capitale', 1);
INSERT INTO question(id_question, nom_question, id_sujet) VALUES(5, 'L'Allemagne est le pays le plus chaud au monde.', 1);

-- Reponse
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(1, 'Sarajevo', 1, 1);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(2, 'Katmandou', 1, 1);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(3, 'Lilongwe', 1, 0);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(4, 'Bogota', 1, 1);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(5, 'Chèvre', 2, 1);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(6, 'Brebis', 2, 0);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(7, 'Bélier', 2, 1);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(8, 'H2O', 3, 0);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(9, 'HO2', 3, 1);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(10, 'H3O', 3, 1);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(11, 'HO', 3, 1);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(12, 'Ethiopie', 4, 1);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(13, 'Perou', 4, 0);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(14, 'Italie', 4, 1);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(15, 'Laos', 4, 1);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(16, 'Vrai', 5, 1);
INSERT INTO question(id_reponse, nom_reponse, id_question, resultat) VALUES(17, 'Faux', 5, 0);