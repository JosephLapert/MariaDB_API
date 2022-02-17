-- POST ( Tester et fonctionne )
use m2l;
DELIMITER //

CREATE OR REPLACE PROCEDURE insert_comment (
    IN p_commentaire VARCHAR(255)
)

BEGIN
    INSERT INTO commentaire (commentaire)
    VALUES (p_commentaire);
END //

CALL insert_comment ('Admis');