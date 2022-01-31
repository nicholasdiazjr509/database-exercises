USE employees;

SELECT first_name FROM employees
WHERE first_name IN ('Irena', 'Vidya') ORDER BY first_name;
# didnt need ASC it was redundant

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Maya', 'Vidya') ORDER BY first_name, last_name;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Maya', 'Vidya') ORDER BY  last_name, first_name;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Maya', 'Vidya') ORDER BY  last_name, first_name DESC;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Maya', 'Vidya') ORDER BY  last_name DESC, first_name DESC;


SELECT *
FROM employees
WHERE last_name LIKE ('E%e')
ORDER BY hire_date;

SELECT *
FROM employees
WHERE last_name LIKE ('E%e')
ORDER BY emp_no;


SELECT last_name
FROM employees
WHERE last_name LIKE ('%q%');


# SELECT first_name
# FROM employees
# WHERE first_name IN ('Vidya', 'Irena') OR ('Maya');

SELECT * FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

SELECT * FROM employees
WHERE gender = 'M'
  AND (first_name ='Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE ('E%E');

SELECT *
FROM employees
WHERE last_name LIKE ('E%E');

# SELECT LAST_NAME
SELECT *
FROM employees
WHERE last_name LIKE ('%q%')
  AND NOT last_name LIKE '%qu%';
# AND  last_name NOT LIKE '%qu%';

# -----------------------------------------------------
# FUNCTIONS EXERCISES

SELECT CONCAT (first_name, ' ', last_name)
    FROM employees
WHERE last_name LIKE 'E%e';


SELECT CONCAT (first_name, ' ', last_name, ' ',birth_date)
FROM employees
WHERE hire_date LIKE '199%'
    AND birth_date LIKE '%-12-25';

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
AND year (hire_date) BETWEEN 1990 and 1999
ORDER BY birth_date, hire_date desc;


SELECT first_name, last_name, CONCAT(datediff(now(), hire_date), ' days')
FROM employees
WHERE month(birth_date) =12
  AND year (hire_date) BETWEEN 1990 and 1999
ORDER BY datediff(now(), hire_date) desc;


# SELECT CONCAT (first_name, ' ', last_name)
#     AS full_name, DATEDIFF(NOW(), hire_date)
#     AS  days_at_company
# FROM employees
# WHERE hire_date LIKE '199%'
# AND birth_date LIKE '%-12-25'
# ORDER BY hire_date;



