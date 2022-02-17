-- (Pour tester cette procédure, j'ai crée a la mano une id_coach
-- sinon elle aurait pas fonctionner. il faut voir comment ajouter une
-- procedure pour rajouter un coach).
--  POST tester et fonctionne en rajoutant a la mano une id_coach


use m2l;

DELIMITER //

CREATE OR REPLACE PROCEDURE insert_date_test (
    IN p_date_seance DATE,
    IN p_id_coach INT
)

BEGIN
    INSERT INTO seance_tests (date_seance, id_coach)
    VALUES (p_date_seance, p_id_coach);
END //

CALL insert_date_test ('2018-03-23', '1');
