use m2l; 

INSERT INTO commentaire (commentaire) VALUES ("test");

INSERT INTO statut_inscription (nom) VALUES ('en cours');

INSERT INTO coach (id_coach) VALUES ('2');

INSERT INTO utilisateur (
    nom, 
    prenom, 
    ddn,
    sexe,
    adresse,
    cp,
    ville,
    pays,
    mobile,
    email,
    psswd,
    id_coach
)
VALUES ('toto','paul','2012-08-11','m','06 rue de la trouvaille','75001','Paris','France','0632423423','paul@gmail.com','paulpassword1','3');

insert INTO seance_tests (date_seance,id_coach) VALUES ('1988-03-23','1');