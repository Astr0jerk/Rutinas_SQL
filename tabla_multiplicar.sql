DROP PROCEDURE IF EXISTS tablaMulti;

DELIMITER $$

CREATE PROCEDURE tablaMulti(num INT)
BEGIN 
	DECLARE conta INT;
	DECLARE resultado INT;
	SET conta=1;
	SET resultado=0;
	WHILE (conta<=10) DO
		SET resultado=conta*num;
		SELECT CONCAT(num, ' x ', conta, ' = ', resultado) AS 'TABLA MULTIPLICAR';
		SET conta=conta+1;
	END WHILE;
END$$

DELIMITER ;