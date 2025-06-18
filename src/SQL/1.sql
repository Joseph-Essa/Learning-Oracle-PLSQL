select (FIRST_NAME) from EMPLOYEES;

SELECT EMPLOYEE_ID , FIRST_NAME || ' is son of ' || LAST_NAME || ' takes salary = ' || SALARY as "Emp report" from EMPLOYEES ;

SELECT EMPLOYEE_ID , FIRST_NAME ||' '||LAST_NAME as "Full Name" , SALARY , SALARY*12 as "Annual SALARY " , 
(SALARY+100)*12/5 as "Bouns per Year" 
from EMPLOYEES WHERE  JOB_ID = 'SA_REP'
order by HIRE_DATE desc; 


SELECT JOB_ID , COUNT(*) as "Num Of Emp Per job" FROM EMPLOYEES GROUP BY JOB_ID; 


select * from EMPLOYEES WHERE lower(FIRST_NAME) LIKE lower('%e_') ;

ALTER TABLE EMPLOYEES add Gender VARCHAR2(1) DEFAULT'M';

