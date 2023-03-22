DROP FUNCTION IF EXISTS esPrimo;

DELIMITER $$

CREATE FUNCTION esPrimo(n INT) RETURNS BOOLEAN
BEGIN
	DECLARE conta, primo INT;
	SET conta=2;
	SET primo=1;
	
	WHILE (n>conta AND primo!=0) DO
		IF (n%conta=0) THEN
			SET primo=0;
		END IF;
		SET conta=conta+1;
	END WHILE;
	RETURN primo;
END$$

DELIMITER ;