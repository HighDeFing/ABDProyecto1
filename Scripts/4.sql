CREATE OR REPLACE FUNCTION get_edad (Uid IN VARCHAR2) 
	RETURN NUMBER
	IS  
		edad NUMBER(3); 
	BEGIN  
		SELECT months_between(sysdate, fecha_nacimiento) /12
		INTO edad
		FROM USUARIO, dual
		WHERE Uid = id;
		RETURN edad; 
	END;
/