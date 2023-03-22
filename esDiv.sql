#-- Crea una función que devuelva 1 ó 0 si un número es divisible por otro.

DROP FUNCTION IF EXISTS esDiv;

DELIMITER $$

CREATE FUNCTION esDiv (a INT, b INT) RETURNS BOOLEAN
BEGIN
	DECLARE divisible INT;
	IF a%b=0 THEN
		SET divisible=TRUE;
	ELSE
		SET divisible=FALSE;
	END IF;
	RETURN(divisible);
END$$

DELIMITER ;