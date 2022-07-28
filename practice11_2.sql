11_2

CREATE TABLE results(v_values int NOT NULL);

DECLARE 
  v_number NUMBER :=1;
BEGIN
  WHILE v_number<=10 LOOP
     INSERT INTO results(v_values) VALUES(v_number);
     v_number := v_number+1;
  END LOOP;
END;

or 

DECLARE 
   v_number NUMBER :=1;
BEGIN
  LOOP
     INSERT INTO results(v_values) VALUES(v_number);
     v_number := v_number+1;
     EXIT WHEN v_number = 11;
  END LOOP;
END;
