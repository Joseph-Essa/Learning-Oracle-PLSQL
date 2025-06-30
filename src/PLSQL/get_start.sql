set SERVEROUTPUT on;
select * from EMPLOYEES where EMPLOYEE_ID=107;
declare
    v_last_name VARCHAR(100);
    v_salary number(8,2);
    v_hire_date date ;
    v_department_id number (4);
    v_annual_salary NUMBER(10,2);
    v_years number (5);
    v_department_name VARCHAR(100);
    v_upper_name VARCHAR(100);
BEGIN
    SELECT last_name, salary,hire_date ,department_id
        into v_last_name , v_salary ,v_hire_date , v_department_id
    from employees
    where employee_id = 107;

    select department_name
        into v_department_name
    FROM departments
    WHERE DEPARTMENT_ID = v_department_id;

    v_annual_salary := v_salary *12;
    v_years := EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM v_hire_date);
    v_upper_name := UPPER(v_last_name);

    UPDATE employees 
    set last_name = v_upper_name
    WHERE EMPLOYEE_ID = 107 ;

    DBMS_OUTPUT.PUT_LINE('last name = '||v_last_name||', salary = '||v_salary||', hire date = '||v_hire_date
                            ||', department id = '||v_department_id);
    DBMS_OUTPUT.PUT_LINE('annual salary = '||v_annual_salary ||', hire years = '||v_years
                            ||', department_name = '||v_department_name ||', upper_name = '||v_upper_name);
end;
/
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID = 107;