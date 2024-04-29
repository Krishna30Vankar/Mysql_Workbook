# WHERE CLAUSE FOR FILTERING THE DATA

SELECT * FROM employee_salary
WHERE first_name = 'Leslie'; # COMPARISION OPERATOR

SELECT * FROM employee_salary
WHERE salary <= 50000;

SELECT * FROM employee_demographics
WHERE gender != 'Female';

SELECT * FROM employee_demographics
WHERE birth_date > '1985-01-01';

-- logical operators and/or/not

SELECT * FROM employee_demographics
WHERE birth_date > '1985-01-01' AND gender = 'Male';

SELECT * FROM employee_demographics
WHERE birth_date > '1985-01-01' OR gender = 'Male';

SELECT * FROM employee_demographics
WHERE birth_date > '1985-01-01' OR NOT gender = 'Male';

SELECT * FROM employee_demographics
WHERE  (first_name = 'Leslie' AND age = 44) OR age > 55;

-- LIKE STATEMENT
-- % and _
SELECT * FROM employee_demographics
WHERE first_name LIKE 'a%';

SELECT * FROM employee_demographics
WHERE first_name LIKE 'jerr_';

SELECT * FROM employee_demographics
WHERE birth_date LIKE '1985%';


