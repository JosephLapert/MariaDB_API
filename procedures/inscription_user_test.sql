-- POST ( Tester et fonctionne)
use m2l;

DELIMITER //

CREATE OR REPLACE PROCEDURE insert_utilisateur_test (
    IN p_id_commentaire INT,
    IN p_id_utilisateur INT,
    IN p_id_seance_tests INT,
    IN p_id_statut_inscription INT
)

BEGIN
    INSERT INTO inscription (id_commentaire, id_utilisateur, id_seance_tests, id_statut_inscription)
    VALUES (p_id_commentaire, p_id_utilisateur, p_id_seance_tests, p_id_statut_inscription);
END //

CALL insert_utilisateur_test (2,5,1,1);
