-- GET (Tester et fonctionne)
use m2l;

DELIMITER //

CREATE OR REPLACE PROCEDURE verif_psswd_user (
    IN p_email VARCHAR(255),
    IN p_psswd VARCHAR(255)
)

BEGIN
    SELECT p_email, SHA1(psswd) FROM utilisateur
    WHERE email = p_email && psswd = p_psswd;
END //

CALL verif_psswd_user ('toto@example.com', 'toto1');
