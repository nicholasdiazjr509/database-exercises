USE employees;

SELECT DISTINCT  last_name FROM employees ORDER BY last_name DESC LIMUT 10;

SELECT emp_no FROM employees.salaries ORDER BY salary DESC LIMIT 5;
SELECT emp_no FROM employees.salaries ORDER BY salary DESC LIMIT 5 OFFSET 45;



