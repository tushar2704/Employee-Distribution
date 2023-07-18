/* © 2023 Tushar Aggarwal. All rights reserved. 
@https://github.com/tushar2704/
Employee-Distribution Database
*/
CREATE DATABASE Employees_Distribution;

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    id VARCHAR PRIMARY KEY,
    first_name VARCHAR(30),
	last_name VARCHAR(30),
	birthdate DATE,
	gender VARCHAR(15),
	race VARCHAR(50),
	department VARCHAR(40),
	jobtitle VARCHAR(40),
    location VARCHAR(30),
	hire_date DATE,
	termdate DATE,
	location_city VARCHAR (30),
	location_state VARCHAR (30));
	
-- Data cleaning is in preprocess.sql
SET datestyle = 'ISO, MDY';

-- Creating/loading from CSV
COPY employees
FROM 'D:\Employee-Distribution\src\data\Employee.csv'
CSV HEADER;

--Checking all data
SELECT *
FROM employees;

/*------------------------------------------------------------------------*/