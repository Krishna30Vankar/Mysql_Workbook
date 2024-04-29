# STRING FUNCTIONS

SELECT LENGTH('krishna') as no_of_characters;
SELECT 
    first_name, LENGTH(first_name) AS total_no_letters
FROM
    employee_demographics
ORDER BY total_no_letters DESC;

SELECT UPPER('krishna');
SELECT LOWER('KRISHNA');

SELECT 
    first_name, UPPER(first_name) 
FROM
    employee_demographics
ORDER BY first_name;

SELECT TRIM('    krishna       ');

SELECT LTRIM('    krishna       ');
SELECT RTRIM('    krishna       ');

SELECT 
    first_name,
    UPPER(LEFT(first_name, 3)),
    UPPER(RIGHT(first_name, 2)),
    UPPER(SUBSTRING(first_name, 2, 3)),
    RIGHT(birth_date, 2) AS birth_day,
    SUBSTRING(birth_date, 6, 2) AS birth_month
FROM
    employee_demographics;
    
SELECT first_name, REPLACE(first_name, 'n', 'N')
FROM employee_demographics;   

SELECT LOCATE ( 'i', 'krishna');
SELECT first_name, LOCATE( 'A', 'first_name')
FROM employee_demographics;

SELECT first_name,last_name,
CONCAT(first_name,' ',last_name) AS full_name
FROM employee_demographics;

