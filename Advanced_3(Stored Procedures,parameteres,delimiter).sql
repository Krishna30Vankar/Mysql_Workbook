# STORED PROCEDURES

SELECT * FROM employee_salary;

CREATE PROCEDURE lower_salaries()
SELECT * FROM employee_salary
WHERE salary <= 40000;

CALL lower_salaries();

DELIMITER $$
CREATE PROCEDURE lower_salaries3()
BEGIN
SELECT * FROM employee_salary
WHERE salary <= 40000;
SELECT * FROM employee_salary
WHERE salary <= 60000;
END $$
DELIMITER ;

CALL lower_salaries3();

# CREATE PROCEDURE lower_salaries2()
# SELECT * FROM employee_salary
# WHERE salary <= 40000;
# SELECT * FROM employee_salary
# WHERE salary <= 60000;

#CALL lower_salaries2();

DELIMITER $$
CREATE PROCEDURE lower_salaries4(employee_id_para INT)
BEGIN
SELECT salary FROM employee_salary
WHERE employee_id = employee_id_para;
END $$
DELIMITER ;

CALL lower_salaries4(2);

SELECT * FROM employee_salary;


