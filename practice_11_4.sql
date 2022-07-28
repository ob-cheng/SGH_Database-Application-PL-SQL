CREATE TABLE EMP_RANK(Surname VARCHAR2(15),id NUMBER(2), Ranking VARCHAR2(40));

DECLARE
      v_id NUMBER :=:enter;
      v_surname EMPLOYEES.LAST_NAME%type;
      v_salary_k EMPLOYEES.SALARY%type;
      v_counter NUMBER;
      v_star VARCHAR2(40) DEFAULT '*';
      BEGIN
           SELECT last_name,ROUND(salary/1000,0)+1 into v_surname,v_salary_k FROM employees WHERE EMPLOYEE_ID=v_id;
           v_counter := 1;
           WHILE v_counter < v_salary_k
              LOOP
                 v_star:=v_star||'*';
                 v_counter := v_counter+1;
              END LOOP;
           DBMS_OUTPUT.PUT_LINE(v_star);
END;
