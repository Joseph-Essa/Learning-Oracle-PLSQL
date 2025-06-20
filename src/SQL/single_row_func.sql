-- single row functions :
-- input(N)---->Output(N) 

SELECT employee_id , last_name , UPPER(last_name) , LOWER(last_name) ,
length(last_name) , instr(last_name,'i' ,1) as "Char Posstion",substr (LAST_NAME,2,3)
FROM employees ;

-- instr() start count from 1  

-- cut user name and domain name from email 
select employee_id , last_name , email ,
substr(EMAIL,1,instr(email,'@')-1) as "email user name" ,
substr (EMAIL,instr(EMAIL,'@')+1) as "email domain name"
from employees 
WHERE employee_id in(104,105); 

-- replace function

SELECT employee_id , last_name , replace (LAST_NAME , '_',' ')
from employees
WHERE employee_id = 104 ;

-- update

update EMPLOYEES 
set LAST_NAME = replace (LAST_NAME , '_',' ')
WHERE employee_id = 104 ;

COMMIT ;

SELECT last_name 
from employees
WHERE employee_id = 104 ;


-- trim function

SELECT TRIM(LAST_NAME) 
from EMPLOYEES
WHERE TRIM(LAST_NAME) = trim ('daustin');

-- trim also works with special chars TRIM('@',LAST_NAME)

UPDATE EMPLOYEES 
set LAST_NAME = trim (LAST_NAME)
WHERE EMPLOYEE_ID = 105 ; 

COMMIT ; 

SELECT LAST_NAME 
from EMPLOYEES
WHERE EMPLOYEE_ID = 105 ; 

---------- NUM Functions -------
ALTER TABLE EMPLOYEES
MODIFY salary NUMBER(9,3) ;
---NOTE : 9 is ovelall degits and 3 is the dicimal degits

SELECT EMPLOYEE_ID , LAST_NAME , salary , 
        ROUND(salary, 2) , ROUND(salary, 0) , ROUND(salary) , 
        TRUNC(salary, 2) , TRUNC(salary, 0) , TRUNC(salary)
from EMPLOYEES 
WHERE EMPLOYEE_ID in  (104 , 105) ;

---NOTE : dual is an virtual table 

SELECT mod (149,3) 
from dual ; 

--- convert to MIN and remaining SEC 
SELECT TRUNC(140/60) as "minutes" , mod (140,60) as "reamaining secondes" 
from dual ; 

--- convert to years and remaining monthes  

SELECT TRUNC (200/12) as "YEARS" , MOD (200,12) as "reamaining MONTHES" 
FROM dual ; 


------------------ Conditionals ----------------

ALTER TABLE EMPLOYEES 
add Gender VARCHAR2(1) DEFAULT'M';

--- Replace M --> Male and F ---> FEMALE

SELECT EMPLOYEE_ID , LAST_NAME , Gender,
            case Gender WHEN 'M' then 'MALE'
                        WHEN 'F' then 'FEMALE'
                        else 'Invalid Data'
                        END as "Case Gender" ,
            decode (Gender ,
                    'M','MALE',
                    'F','FEMALE',
                    'Invalid Data'
                    ) as "decode Case Gender"
from employees ;

