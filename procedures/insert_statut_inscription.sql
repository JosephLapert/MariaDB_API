-- POST ( Tester et fonctionne cependant à revoir)
use m2l;

DELIMITER //

CREATE OR REPLACE PROCEDURE insert_statut_inscription (
    IN p_nom VARCHAR(255)
)

BEGIN
    INSERT INTO  statut_inscription (nom)
    VALUES (p_nom);
END //

CALL insert_statut_inscription ('titi');