11_3
DECLARE
  v_num varchar(10) :=1;
BEGIN
  LOOP
    IF v_num !=6 AND v_num != 8 THEN
    INSERT INTO result(value) VALUES(v_num);
    END IF;
    v_num := v_num+1;
    EXIT WHEN v_num=11;
  END LOOP;
END;
