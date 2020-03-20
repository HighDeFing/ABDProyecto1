CREATE OR REPLACE TRIGGER ganador_batalla
 BEFORE INSERT
  ON tryndamere.batalla
  FOR EACH ROW 
  
  BEGIN
    IF (:new.ganador =! :new.usuario1) OR (:new.ganador =! :new.usuario2) THEN
     raise_application_error(-20000, 'Dato erroneo');
    END IF;
  END; 
/

CREATE OR REPLACE TRIGGER 
