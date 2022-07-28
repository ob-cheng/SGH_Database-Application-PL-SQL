10_1

DECLARE
  v_job_id VARCHAR2(15);
  job_name VARCHAR2(15);
BEGIN
  select job_id into v_job_id from employees where employee_id=:id;
  if v_job_id='ST_CLERK' then job_name:= 'STOCK CLERK';
  if v_job_id=‘IT_PROG’ then job_name:= ‘PROGRAMMER’;  
     else job_name:= 'other job';
  end if;
END;

10_2

SQL Solution

SELECT last_name, job_id, case job_id When 'ST_CLERK' then 'Stock Clerk'
                                                            When 'IT_PROG' then 'Sales PROGRAMMER'
                                                            ELSE 'other job' END job_name
FROM employees
WHERE employee_id =:id;

PL/SQL Solution

DECLARE
  v_job_id VARCHAR2(15);
  job_name VARCHAR2(15);
BEGIN
  select job_id into v_job_id from employees where employee_id=:id;
  case v_job_id when 'ST_CLERK' then job_name:= 'Stock Clerk';
                when 'IT_PROG' then job_name := 'PROGRAMMER';
  else job_name := 'other job';
  end case;
END;

display version

DECLARE
  v_job_id VARCHAR2(15);
  job_name VARCHAR2(15);
BEGIN
  select job_id into v_job_id from employees where employee_id=:id;
  case v_job_id when 'ST_CLERK' then job_name:= 'Stock Clerk';
                when 'IT_PROG' then job_name := 'PROGRAMMER';
  else job_name := 'other job';
  end case;
  DBMS_OUTPUT.PUT_LINE('his job id is '||v_job_id||', and the job name is '||job_name);
END;
