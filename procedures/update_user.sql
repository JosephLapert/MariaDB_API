-- UPDATE  (Tester et fonctionne)
use m2l;
DELIMITER //

CREATE OR REPLACE PROCEDURE update_utilisateur (
    IN p_nom VARCHAR(255), 
    IN p_prenom VARCHAR(255) 

)

BEGIN
    UPDATE utilisateur 
    SET 
    nom = p_nom, 
    prenom = p_prenom;

END //

CALL update_utilisateur ('titi', 'toto');

