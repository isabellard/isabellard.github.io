-- Sentencias SQL para practicar consultas en la base de datos HR de Oracle.
SELECT first_name, last_name, salary, 10*salary+100, salary*commission_pct
FROM employees; 

SELECT employee_id AS empleado_id
FROM employees;

SELECT first_name AS "primer nombre"
FROM employees;

SELECT last_name AS "apellido"
FROM employees;

SELECT email AS "e-mail"
FROM employees; 

SELECT last_name||job_id AS Employees
FROM employees; 

SELECT last_name|| q'[Department's Manager Id: ]' ||job_id AS Employees
FROM employees; 

SELECT DISTINCT country_id
FROM locations;


SELECT DISTINCT country_id
FROM countries;

SELECT first_name
FROM employees
WHERE department_id <> 80; 

SELECT first_name 
FROM employees
WHERE first_name LIKE '%w%'; 

SELECT first_name 
FROM employees
WHERE first_name LIKE '__m%'; 

--Empleados que no son manager --
SELECT manager_id, first_name
FROM employees
WHERE manager_id IS NULL;

--Operador and--
SELECT employee_id, first_name, job_id, salary
FROM employees
WHERE salary >=100
AND 

--Empleados que tienen comisicion y ganan menos de 25.000 dolares--
SELECT employee_id, first_name, job_id, salary
FROM employees
WHERE commission_pct IS NOT NULL
OR salary < 25.000;

--Ordena los elementos en orden descendente--
SELECT first_name,last_name, salary
FROM employees
ORDER BY salary DESC;