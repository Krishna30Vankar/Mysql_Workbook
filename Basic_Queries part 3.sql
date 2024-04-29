## GROUP BY AND ORDER BY
SELECT * FROM employee_demographics;

SELECT gender FROM employee_demographics
GROUP BY gender;

SELECT gender,AVG(age) FROM employee_demographics
GROUP BY gender;

SELECT occupation,AVG(salary) FROM employee_salary
GROUP BY occupation
ORDER BY AVG(salary) DESC
LIMIT 3;

SELECT 
    gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM
    employee_demographics
GROUP BY gender;



