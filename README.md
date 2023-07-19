# Employee-Distribution

## Overview

Welcome to the Employee-Distribution! This repository contains valuable insights and visualizations derived from an extensive HR dataset spanning from 2000 to 2020, with over 22,000 rows. The data was meticulously cleaned and analyzed using PostgreSQL, and the results are beautifully visualized with Power BI. This comprehensive dashboard aims to answer crucial HR-related questions and shed light on various aspects of the organization's workforce.



## Key Questions Explored

1. **Gender Breakdown**: Discover the gender distribution of employees within the company.
2. **Race/Ethnicity Breakdown**: Explore the racial and ethnic composition of the workforce.
3. **Age Distribution**: Gain insights into the age distribution of employees.
4. **Headquarters vs. Remote Locations**: Understand the number of employees working at headquarters versus remote locations.
5. **Average Employment Length for Terminated Employees**: Find out the average tenure of terminated employees.
6. **Gender Distribution across Departments and Job Titles**: See how gender distribution varies across different departments and job titles.
7. **Distribution of Job Titles**: Explore the distribution of job titles across the company.
8. **Highest Turnover Rate by Department**: Identify the department with the highest turnover rate.
9. **Distribution of Employees across Locations (by State)**: Learn about the geographic distribution of employees across different states.
10. **Employee Count Changes over Time**: Track changes in the company's employee count over the years based on hiring and termination dates.
11. **Tenure Distribution by Department**: Examine the tenure distribution for each department.

## Summary of Findings

Here are some key findings derived from the HR data analysis:

- **Gender Diversity**: The company has more male employees than female employees.
- **Race/Ethnicity**: White employees constitute the majority, while Native Hawaiian and American Indian employees are the least represented.
- **Age Diversity**: Employees' ages range from 20 to 57, with the majority falling within the 25-34 age group.
- **Work Locations**: A considerable number of employees work at the headquarters compared to remote locations.
- **Termination Tenure**: The average length of employment for terminated employees is around 7 years.
- **Gender Balance in Departments**: While gender distribution across departments is fairly balanced, male employees slightly outnumber female employees in most departments.
- **High Turnover Departments**: The Marketing department experiences the highest turnover rate, followed by Training. Research and Development, Support, and Legal departments have the lowest turnover rates.
- **Employee Geographic Distribution**: A significant number of employees hail from the state of Ohio.
- **Employee Count Trends**: Over the years, the company's employee count has been on the rise.
- **Tenure Variation by Department**: The average tenure for each department is approximately 8 years, with Legal and Auditing having the highest, and Services, Sales, and Marketing having the lowest.

## Limitations

While this dashboard offers valuable insights, it's essential to be aware of its limitations:

- Some records with negative ages were excluded during querying (967 records). Ages used were 18 years and above.
- Some term dates were too far into the future and were not included in the analysis (1599 records). Only term dates up to the current date were considered.

## Getting Started

To get started with the HR Data Dashboard and explore the rich visualizations and findings, you can follow these steps:

1. Clone this repository to your local machine.
2. Ensure you have the necessary tools installed, such as MySQL Workbench and Power BI, to analyze and visualize the data effectively.
3. Load the provided dataset into your MySQL database.
4. Open the Power BI file (.pbix) to interact with the pre-built visualizations and answer the key HR questions.

We hope you find this HR Data Dashboard insightful and valuable for your organization's HR planning and decision-making processes. Should you have any questions or feedback, feel free to reach out. Happy analyzing!
