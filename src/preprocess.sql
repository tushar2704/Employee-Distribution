/* © 2023 Tushar Aggarwal. All rights reserved. 
https://github.com/tushar2704/
Employees-Distribution - Preprocessing
*/
--USE employees_distribution

--Checking whole data
SELECT *
FROM employees;

--Cleaning the dataset
-- id column
ALTER TABLE employees
RENAME COLUMN id TO emp_id;

ALTER TABLE employees
ALTER COLUMN emp_id TYPE VARCHAR(20);

--Checking datatypes
SELECT *, data_type, is_nullable, character_maximum_length
FROM information_schema.columns
WHERE table_name = 'employees';

--birthdate column
UPDATE employees
SET birthdate = CASE
    WHEN birthdate::text LIKE '%/%' THEN to_char(to_date(birthdate, '%m/%D/%Y%'), 'YYYY-MM-DD')
    WHEN birthdate::text LIKE '%-%' THEN to_char(to_date(birthdate, '%m-%D-/%Y%'), 'YYYY-MM-DD')
    ELSE NULL
END;

ALTER TABLE employees
ALTER COLUMN birthdate TYPE DATE USING birthdate::DATE;

--hire_date column
UPDATE employees
SET hire_date = CASE
    WHEN hire_date::text LIKE '%/%' THEN to_char(to_date(hire_date, 'MM/DD/YYYY'), 'YYYY-MM-DD')
    WHEN hire_date::text LIKE '%-%' THEN to_char(to_date(hire_date, 'MM-DD-YYYY'), 'YYYY-MM-DD')
    ELSE NULL
END;

ALTER TABLE employees
ALTER COLUMN hire_date TYPE DATE USING hire_date::DATE;

--termdate column
UPDATE employees
SET termdate = DATE(termdate::timestamp AT TIME ZONE 'UTC')
WHERE termdate IS NOT NULL AND termdate != '';

ALTER TABLE termdate
ALTER COLUMN termdate TYPE DATE USING termdate::DATE;

--Adding age column
ALTER TABLE employees
ADD COLUMN age INT;

UPDATE employees
SET age = EXTRACT(YEAR FROM AGE(CURRENT_DATE, birthdate));

--Checking for age 
SELECT 
MIN(age) as min, MAX(age) as max
From employees;

SELECT COUNT(*)
from employees
where age<18;

--








/*---------------------------------------------------------------------------------*/









































