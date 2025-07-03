select SUM(salary) , MAX(salary) , MIN(salary) , COUNT(*)
from employees
where department_id = 30;


select department_id , JOB_ID ,SUM(salary), COUNT(*)
from EMPLOYEES
WHERE DEPARTMENT_ID is not NULL
GROUP by DEPARTMENT_ID ,JOB_ID
HAVING SUM(SALARY) > 20000
ORDER BY DEPARTMENT_ID;

------------ inner join ---------

select employee_id , last_name , salary , job_id , EMPLOYEES.DEPARTMENT_ID , department_name
from EMPLOYEES , DEPARTMENTS
where employees.department_id = DEPARTMENTS.department_id;

select employee_id , last_name , salary , job_id , EMPLOYEES.DEPARTMENT_ID , department_name
from EMPLOYEES inner join DEPARTMENTS
on employees.department_id = DEPARTMENTS.department_id;

------------ outer join --------------

select employee_id , last_name , salary , job_id , DEPARTMENTS.DEPARTMENT_ID , department_name
from DEPARTMENTS left outer join EMPLOYEES
on employees.department_id = DEPARTMENTS.department_id;

----------- full join ---------

select employee_id , last_name , salary , job_id , DEPARTMENTS.DEPARTMENT_ID , department_name
from  EMPLOYEES FULL outer join DEPARTMENTS
on employees.department_id = DEPARTMENTS.department_id;

--------- self join --------------
select emps.LAST_NAME as "emp_name" , emps.SALARY as "emp salary" ,
        mgrs.LAST_NAME as "mgrs name" , mgrs.SALARY as "mgrs salary"
from employees emps , employees mgrs
where emps.manager_id = mgrs.employee_id;

--------- to return the CEO (the emp has no manger)
select emps.LAST_NAME as "emp_name" , emps.SALARY as "emp salary" ,
        mgrs.LAST_NAME as "mgrs name" , mgrs.SALARY as "mgrs salary"
from employees emps left outer join employees mgrs
on emps.manager_id = mgrs.employee_id;

