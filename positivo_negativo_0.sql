#-- Escribe un procedimiento que indique si un número
#-- (de tipo entero) pasado como parámetro es positivo, negativo o cero.

DROP PROCEDURE IF EXISTS positivonegativo0;

DELIMITER $$

CREATE PROCEDURE positivonegativo0 (IN a INT)
BEGIN
	IF a<0 THEN
		SELECT CONCAT(a, " es negativo") AS "Nº";
	ELSEIF a>0 THEN
		SELECT CONCAT(a, " es positivo") AS "Nº";
	ELSE
		SELECT CONCAT(a, " es cero") AS "Nº";
	END IF;
END$$

DELIMITER ;