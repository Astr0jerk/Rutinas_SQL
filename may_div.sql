DROP PROCEDURE IF EXISTS mayDiv;

DELIMITER $$

CREATE PROCEDURE mayDiv(num INT)
BEGIN
	DECLARE conta, mayor INT;
	SET conta=1;
	SET mayor=0;
	
REPEAT
		IF (num%conta)=0 THEN
			IF(conta>mayor) THEN
				SET mayor=conta;
			END IF;
		END IF;
		SET conta=conta+1;
	UNTIL (num=conta)
END REPEAT;

SELECT mayor;

END$$

DELIMITER ;