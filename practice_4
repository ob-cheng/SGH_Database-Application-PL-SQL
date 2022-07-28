DECLARE
  v_sal employees.salary%TYPE;
  v_last_name employees.last_name%TYPE;
  v_dpt_id employees.department_id%TYPE;
  v_id NUMBER :=:num;
BEGIN
  SELECT last_name, salary, department_id
  INTO v_last_name, v_sal, v_dpt_id
  FROM employees
  WHERE employee_id = v_id;
  DBMS_OUTPUT.PUT_LINE(v_last_name||' earns '||v_sal||' and works in ' ||v_dpt_id||' department.');
END;
