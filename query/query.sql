/* © 2023 Tushar Aggarwal. All rights reserved. 
@https://github.com/tushar2704/
Employees-Distribution
*/


--Query 1)What is the Gender breakdown of employees in the Company?
SELECT gender, COUNT(*) AS Count
FROM employees
WHERE age>=18 AND termdate IS NULL
GROUP BY 1;

--Query 2)What is the race/ethinicity breakdown of employees in the company?
SELECT race, COUNT(*) AS COUNT
FROM employees
WHERE age>=18 AND termdate IS NULL
GROUP BY 1
ORDER BY COUNT DESC;

--Query 3)Age distribution of employess in the Company
SELECT
	MIN(age) AS youngest,
	MAX(age) AS oldest
FROM employees
WHERE age>=18 AND termdate IS NULL;

SELECT
	CASE WHEN age>=18 AND age<=24 THEN '18-24'
		 WHEN age>=25 AND age<=34 THEN '25-34'
	     WHEN age>=35 AND age<=44 THEN '35-44'
		 WHEN age>=45 AND age<=54 THEN '45-54'
		 WHEN age>=55 AND age<=64 THEN '55-64'
		 ELSE '65+'
	 END AS age_group








































































































































































































































/*--------------------------------------------------------------------------------------*/