DELIMITER $$

DROP FUNCTION IF EXISTS mayorde3 $$

CREATE FUNCTION mayorde3 (a INT, b INT, c INT) RETURNS INT
BEGIN
	DECLARE may INT;
		IF a>b && a>c THEN
			SET may=a;
		ELSEIF b>c && b>a THEN
			SET may=b;
		ELSE
			SET may=c;
		END IF;
		RETURN may;
END$$

DELIMITER ; 