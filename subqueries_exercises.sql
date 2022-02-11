USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS name
FROM employees
WHERE hire_date IN(
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

SELECT title, COUNT(title) AS 'First name "Aamod"'
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    )
GROUP BY title
ORDER BY title;