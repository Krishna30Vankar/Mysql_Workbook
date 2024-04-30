# TEMP TABLES AND CTEs
DROP TABLE IF EXISTS temp_table;
CREATE TEMPORARY TABLE temp_table(
	first_name VARCHAR(50),
    last_name VARCHAR(50),
    favoutire_movie VARCHAR(100)
);

SELECT * FROM temp_table;

INSERT INTO temp_table
VALUES('Krishna' , 'Vankar', 'Queen');

SELECT * FROM employee_salary;

CREATE TEMPORARY TABLE Salary_below_40k
SELECT * FROM employee_salary
WHERE salary < 40000;

SELECT * FROM Salary_below_40k;

