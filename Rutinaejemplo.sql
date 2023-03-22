DROP FUNCTION IF EXISTS fechaCorrecta;

DELIMITER $$

CREATE FUNCTION fechaCorrecta(d INT, m INT, a INT) RETURNS BOOLEAN
BEGIN 
	DECLARE correcto BOOLEAN;
	SET correcto=TRUE;
	IF ((a<1) OR (m<1 OR m>12) OR (d<1 OR d>31)) THEN
		SET correcto=FALSE;
		RETURN correcto;
	END IF;
	IF (m=2 AND d>28) THEN
		SET correcto=FALSE;
		RETURN correcto;
	END IF;
	IF((m=4 OR m=6 OR m=9 OR m=11) AND d>30) THEN
	SET correcto=FALSE;
	RETURN correcto;
	END IF;
	RETURN correcto;
END $$

DELIMITER ;   
