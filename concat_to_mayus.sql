#--Escribe un procedimiento que muestre dos cadenas pasadas
#-- como parámetros concatenadas y enmayúsculas.

DROP PROCEDURE IF EXISTS concatToMayus;

DELIMITER $$

CREATE PROCEDURE concatToMayus(IN a CHAR(20), IN b CHAR(20))
BEGIN
	DECLARE cadenafinal CHAR(40);
	SET cadenafinal=CONCAT(UPPER(a), UPPER(b));
	SELECT cadenafinal;
END$$

DELIMITER ;