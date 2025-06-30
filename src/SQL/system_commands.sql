-- Section 1: User Creation and Connection ---

CREATE USER sales IDENTIFIED BY "123";
GRANT CONNECT, RESOURCE TO sales;
CONNECT sales/"123"@localhost:1521/XE

-- Section 2: Table Creation and Data Insertion

CREATE TABLE items (item_id NUMBER(4));
INSERT INTO items (item_id) VALUES(120);

-- Section 3: System Privileges Management

GRANT CREATE VIEW, CREATE SEQUENCE TO sales;
GRANT CREATE VIEW, CREATE SEQUENCE TO sales
    WITH ADMIN OPTION;
REVOKE CREATE VIEW, CREATE SEQUENCE FROM sales;

-- Section 4: Access to HR Schema Objects

GRANT SELECT ON hr.DEPARTMENTS TO sales;
SELECT DEPARTMENT_NAME FROM hr.DEPARTMENTS;
GRANT UPDATE (DEPARTMENT_NAME) ON hr.DEPARTMENTS TO sales;

-- Section 5: Role Creation and Assignment

CREATE ROLE sales_role;
GRANT CREATE SYNONYM TO sales_role;
GRANT SELECT ON hr.EMPLOYEES TO sales_role;
GRANT sales_role TO sales;
SELECT FIRST_NAME FROM hr.EMPLOYEES;
