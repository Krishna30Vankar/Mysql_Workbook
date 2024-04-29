# Limit and Aliasing

SELECT * FROM employee_demographics
ORDER BY age DESC
LIMIT 3, 1;

SELECT occupation,MAX(salary) as highest_salary FROM employee_salary
WHERE occupation LIKE ('%parks%')
GROUP BY occupation
HAVING highest_salary > 65000 ;