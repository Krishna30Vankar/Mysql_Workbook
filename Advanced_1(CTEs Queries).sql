# CTEs ( Common Table Expressions )

WITH CTE_Example (Gender,Avg_salary,Max_salary,Min_salary,Count_Salary) AS
(
SELECT gender,AVG(salary) AS avg_salary ,MAX(salary) AS max_salary,MIN(salary) AS min_salary,COUNT(salary) AS count_salary FROM employee_demographics demo
INNER JOIN employee_salary sal
	ON demo.employee_id = sal.employee_id
    GROUP BY gender
) 
SELECT * FROM CTE_Example;

SELECT AVG(avg_salary) 
FROM
(
SELECT gender,AVG(salary) AS avg_salary ,MAX(salary) AS max_salary,MIN(salary) AS min_salary,COUNT(salary) AS count_salary FROM employee_demographics demo
INNER JOIN employee_salary sal
	ON demo.employee_id = sal.employee_id
    GROUP BY gender
) example_subquery;

WITH CTE_Example AS
(
SELECT employee_id,gender,birth_date FROM employee_demographics
WHERE birth_date > '1981-01-01'
),
CTE_Example2 AS
(
SELECT employee_id,salary FROM employee_salary
WHERE salary > 40000
)
SELECT * FROM CTE_Example 
INNER JOIN CTE_Example2 
	ON CTE_Example.employee_id = CTE_Example2.employee_id;
    
    

