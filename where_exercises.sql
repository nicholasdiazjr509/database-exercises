USE employees;

SELECT * FROM employees
WHERE first_name IN ('Irena','Vidya',  'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE ('E%');

SELECT last_name
FROM employees
WHERE last_name LIKE ('%q%');
#
#
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



