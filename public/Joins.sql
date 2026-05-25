-- Joins.sql
-- This file contains SQL queries that demonstrate different types of joins: INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN.
-- The queries retrieve employee names along with their department names, region names, from Oracle's HR database.
SELECT first_name, department_name
FROM EMPLOYEES INNER JOIN 
DEPARTMENTS
ON EMPLOYEES.department_id = DEPARTMENTS.department_id; 

SELECT first_name, region_name
FROM EMPLOYEES
INNER JOIN 
DEPARTMENTS
ON EMPLOYEES.department_id = DEPARTMENTS.department_id
INNER JOIN 
LOCATIONS
ON DEPARTMENTS.location_id = LOCATIONS.location_id 
INNER JOIN 
COUNTRIES 
ON LOCATIONS.country_id = COUNTRIES.country_id
INNER JOIN 
REGIONS
ON COUNTRIES.region_id = REGIONS.region_id;

SELECT first_name, department_name
FROM EMPLOYEES
LEFT JOIN 
DEPARTMENTS
ON EMPLOYEES.department_id = DEPARTMENTS.department_id
WHERE DEPARTMENTS.department_id IS NULL ;


SELECT first_name, department_name
FROM EMPLOYEES
RIGHT JOIN 
DEPARTMENTS
ON EMPLOYEES.department_id = DEPARTMENTS.department_id;

SELECT first_name, department_name
FROM EMPLOYEES
FULL OUTER JOIN
DEPARTMENTS
ON EMPLOYEES.department_id = DEPARTMENTS.department_id ;