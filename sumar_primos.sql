DROP PROCEDURE IF EXISTS sumaPrimos;

DELIMITER $$

CREATE PROCEDURE sumaPrimos(IN m INT)
BEGIN
DECLARE suma, conta INT;
SET conta=1;
SET suma=0;

REPEAT
	IF (esPrimo(conta)=1) THEN
			SET suma=suma+conta;
	END IF;
		SET conta=conta+1;
UNTIL (conta>m)
END REPEAT;

SELECT suma;

END $$

DELIMITER ;

