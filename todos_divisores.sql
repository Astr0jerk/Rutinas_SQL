DROP PROCEDURE IF EXISTS todosDivisores;

DELIMITER $$

CREATE PROCEDURE todosDivisores(num INT)
BEGIN
	DECLARE conta INT;
	SET conta=1;
	REPEAT
		IF (num%conta)=0 THEN
			SELECT CONCAT(conta) AS 'Divisores';
		END IF;
		SET conta=conta+1;
	UNTIL (num=conta)
END REPEAT;
END$$

DELIMITER ;