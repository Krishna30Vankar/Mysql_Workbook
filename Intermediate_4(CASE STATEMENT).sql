# CASE STATEMENT

SELECT first_name,last_name,age,
	CASE
		WHEN age <= 30 THEN 'Adult'
        WHEN age BETWEEN 31 AND 50  THEN 'Young'
        WHEN age > 50 THEN 'Old'
	END AS Age_Bracket
FROM employee_demographics;    

SELECT first_name,last_name,salary,
CASE
	WHEN salary < 50000 THEN salary + (salary*0.05)
    WHEN salary > 50000 THEN salary + (salary*0.07)
END AS Pay_Raise,
CASE
	WHEN dept_id = 6 THEN  salary * 0.10
END AS Bonus
 FROM employee_salary;


