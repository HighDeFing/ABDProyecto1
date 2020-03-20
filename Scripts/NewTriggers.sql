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

CREATE OR REPLACE TRIGGER crea_invocador
 BEFORE INSERT
  ON tryndamere.invocador
  FOR EACH ROW
  
  BEGIN
   IF (:new.fecha_creacion > sysdate) THEN
    raise_application_error(-20000, 'Dato erroneo');
   END IF;
  END;
/

CREATE OR REPLACE TRIGGER crea_usuario
 BEFORE INSERT
  ON tryndamere.usuario
  FOR EACH ROW
  
  BEGIN
   IF (:new.fecha_nacimiento > sysdate) THEN
    raise_application_error(-20000, 'Dato erroneo');
   END IF;
  END;
/

CREATE OR REPLACE TRIGGER crea_rioter
 BEFORE INSERT
  ON tryndamere.rioter
  FOR EACH ROW
  
  BEGIN
   IF (:new.fecha_contrato_inicio > :new.fecha_contrato_fin) THEN
    raise_application_error(-20000, 'Dato erroneo');
   END IF;
   IF (:new.fecha_contrato_inicio > sysdate) THEN
    raise_application_error(-20000, 'Dato erroneo');
   END IF;
  END;
/
