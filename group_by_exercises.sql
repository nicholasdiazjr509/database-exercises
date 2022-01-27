USE  employees;

SHOW TABLES;

SELECT * FROM titles;
SELECT * FROM employees;

SELECT DISTINCT title
    FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name
ORDER BY (last_name);


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name, first_name
ORDER BY (last_name);


SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT COUNT(*), last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY count(*);

SELECT count(*), gender
FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya')
GROUP BY gender;




