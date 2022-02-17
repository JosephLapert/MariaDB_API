-- DELETE (Tester et fonctionne)
use m2l;

DELIMITER //

CREATE OR REPLACE PROCEDURE delete_utilisateur (
    IN p_email VARCHAR(255)
)

BEGIN
    DELETE FROM utilisateur 
    WHERE
    email = p_email;
END //

CALL delete_utilisateur ('toto@example.com');