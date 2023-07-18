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
	 END AS age_group, gender,
	 COUNT(*) AS Count
FROM employees
WHERE age>=18 AND termdate IS NULL
GROUP BY age_group, gender
ORDER BY age_group, gender;

--Query 4)How many employees work at headquaters versus remote locations?
SELECT location, COUNT(*) AS Count
FROM employees
WHERE age>=18 AND termdate IS NULL
GROUP BY 1;

--Query 5)What is the average length of employment for employees who have been terminated?
SELECT
	AVG(EXTRACT(YEAR FROM AGE(termdate, hire_date))) AS avg_length_employment
FROM employees
WHERE termdate IS NOT NULL AND termdate<=CURRENT_DATE AND age>=18
;

--Query 6)How does the gender distribution vary across departments and job titles?
SELECT department, gender, COUNT(*) AS COUNT
FROM employees
WHERE age>=18 AND termdate IS NULL
GROUP BY 1,2
ORDER BY 1;

--Query 7)What is the Job titles across the company?
SELECT jobtitle, COUNT(*) AS COUNT
FROM employees
WHERE age>=18 AND termdate IS NULL
GROUP BY 1
ORDER BY 1 DESC;

--Query 8)Which department has the highest turnover rate?
SELECT department,
	total_count,
	terminated_count,
	ROUND(terminated_count::numeric / total_count, 2) AS termination_rate

FROM (
	SELECT department, COUNT(*) AS total_count,
	SUM(CASE WHEN termdate IS NOT NULL AND termdate<=CURRENT_DATE THEN 1 ELSE 0 END) AS terminated_count
	FROM employees
	WHERE age>=18
	GROUP BY department
	) AS term
ORDER BY termination_rate DESC;

--Query 9)What is the distribution of employees across locations by city and state?
SELECT location_state, COUNT(*) AS COUNT
FROM employees
WHERE age>=18 AND termdate IS NULL
GROUP BY 1
ORDER BY count DESC;

--Query 10)How has the Company's employee count changed over time based on hire and term dates?
SELECT
    year,
    hires,
    terminations,
    (hires::numeric - terminations) AS net_change,
    ROUND(((hires::numeric - terminations) / hires) * 100, 2) AS net_change_percent
FROM (
    SELECT
        EXTRACT(YEAR FROM hire_date) AS year,
        COUNT(*) AS hires,
        SUM(CASE WHEN termdate IS NOT NULL AND termdate <= CURRENT_DATE THEN 1 ELSE 0 END) AS terminations
    FROM employees
    WHERE EXTRACT(YEAR FROM AGE(CURRENT_DATE, birthdate)) >= 18
    GROUP BY EXTRACT(YEAR FROM hire_date)
) AS change
ORDER BY year ASC;

--Query 11)What is the tenure distribution for each department?
SELECT department, ROUND(AVG(DATE_PART('year', age(termdate, hire_date)))::numeric, 2) AS avg_tenure
FROM employees
WHERE termdate <= CURRENT_DATE AND termdate IS NOT NULL AND age >= 18
GROUP BY department;


















/*--------------------------------------------------------------------------*/



































































































































































































/*--------------------------------------------------------------------------------------*/