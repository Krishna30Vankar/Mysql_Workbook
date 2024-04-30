# WINDOW Functions

SELECT demo.first_name,demo.last_name,gender,AVG(salary) AS avg_salary FROM employee_demographics demo
INNER JOIN employee_salary sal
	ON demo.employee_id = sal.employee_id
GROUP BY demo.first_name,demo.last_name,gender;    

SELECT demo.first_name,demo.last_name,gender,AVG(salary) OVER(PARTITION BY gender) FROM employee_demographics demo
INNER JOIN employee_salary sal
	ON demo.employee_id = sal.employee_id;
    
SELECT gender,AVG(salary) OVER() FROM employee_demographics demo
INNER JOIN employee_salary sal
	ON demo.employee_id = sal.employee_id;    

SELECT demo.first_name,demo.last_name,gender,salary,SUM(salary) OVER(PARTITION BY gender ORDER BY demo.employee_id) AS rolling_total FROM employee_demographics demo
INNER JOIN employee_salary sal
	ON demo.employee_id = sal.employee_id;    
    
SELECT demo.employee_id,demo.first_name,demo.last_name,gender,salary,
ROW_NUMBER() OVER() AS row_num FROM employee_demographics demo
INNER JOIN employee_salary sal
	ON demo.employee_id = sal.employee_id;    

SELECT demo.employee_id,demo.first_name,demo.last_name,gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num
 FROM employee_demographics demo
INNER JOIN employee_salary sal
	ON demo.employee_id = sal.employee_id;        