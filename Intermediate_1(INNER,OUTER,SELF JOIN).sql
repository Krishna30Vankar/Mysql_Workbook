# JOINS ( INNER,OUTER,SELF JOINS )

SELECT * FROM employee_demographics;

SELECT * FROM employee_salary;

SELECT demo.employee_id,demo.first_name,age,occupation FROM employee_demographics AS demo
INNER JOIN employee_salary AS sal
	ON demo.employee_id = sal.employee_id;
    
    
SELECT * FROM employee_demographics AS demo
RIGHT JOIN employee_salary AS sal
	ON demo.employee_id = sal.employee_id;    
    
SELECT * FROM employee_demographics AS demo
LEFT JOIN employee_salary AS sal
	ON demo.employee_id = sal.employee_id;   
    
SELECT emp1.employee_id AS emp_id,
	emp1.first_name AS emp_first_name,
    emp1.last_name AS emp_last_name,
    emp2.employee_id AS santa_emp_id,
    emp2.first_name AS santa_first_name,
    emp2.last_name AS santa_last_name
 FROM employee_salary emp1
 JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
    
SELECT * FROM employee_demographics AS demo
INNER JOIN employee_salary AS sal
	ON demo.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id; 


SELECT * FROM parks_departments;    

    
    
    
    
    