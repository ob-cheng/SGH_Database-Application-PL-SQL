Ba 5-2, 5-3

DECLARE
  v_date DATE;
BEGIN
  SELECT hire_date
   INTO v_date
   FROM employees
   WHERE employee_id=:id;
  DBMS_OUTPUT.PUT_LINE(trunc(SYSDATE)-trunc(v_date)||' days');
END;


DECLARE
  v_length number;
BEGIN
  SELECT length(street_address)
   INTO v_length
   FROM locations
   WHERE location_id=:id;
  DBMS_OUTPUT.PUT_LINE(v_length);
END;
