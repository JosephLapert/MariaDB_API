use m2l;
DELIMITER //

CREATE OR REPLACE PROCEDURE count_utilisateur_seance (
    IN p_nom VARCHAR(255),
    IN p_prenom VARCHAR(255),
    IN p_date_seance DATE
)

BEGIN
    SELECT
    nom = p_nom, 
    prenom = p_prenom,
    date_seance = p_date_seance
FROM
    inscription
INNER JOIN `seance_tests` ON 
    seance_tests.id_seance = inscription.id_seance
INNER JOIN utilisateur ON 
    user.id_utilisateur = inscription.id_utilisateur
WHERE
    p_date_seance = '1988-03-23';
END //

CALL count_utilisateur_seance()

-- A voir pour le faire en Front plutôt qu'en Back - vu avec momo --