#-- Escribe un procedimiento que reciba como parámetro de entrada un número (de tipo float) que
#-- represente el valor de la nota de un alumno, y que muestre un mensaje indicando qué nota ha
#-- obtenido teniendo en cuenta lo siguiente:

DROP PROCEDURE IF EXISTS nota;

DELIMITER $$

CREATE PROCEDURE nota (IN num FLOAT)
BEGIN
	IF (num<=0 OR num<5) THEN
		SELECT CONCAT(num, " es INSUFICIENTE") AS "Nota";
	ELSEIF (num>=5 && num<6) THEN
		SELECT CONCAT(num, " es APROBADO") AS "Nota";
	ELSEIF (num>=6 && num<7) THEN
		SELECT CONCAT(num, " es BIEN") AS "Nota";
	ELSEIF (num<=7 && num<9) THEN
		SELECT CONCAT(num, " es NOTABLE") AS "Nota";
	ELSEIF (num>=9 && num<=10) THEN
		SELECT CONCAT(num, " es SOBRESALIENTE") AS "Nota";
	ELSE
		SELECT CONCAT(num, " no es un valor válido") AS "Nota";
	END IF;
END$$

DELIMITER ;