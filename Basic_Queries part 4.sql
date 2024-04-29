# HAVING VS WHERE
SELECT gender,AVG(age) FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 30
ORDER BY AVG(age) DESC;

SELECT occupation,AVG(salary) FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 60000;