USE employees;

SELECT departments.dept_name AS 'Dept. name',
       CONCAT(employees.first_name, ' ', employees.last_name)
    AS 'Empl. name'
    FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date > NOW()
ORDER BY dept_name;

SELECT * FROM employees LIMIT 4;
SELECT departments.dept_name AS 'Dept. name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Dept. manager'
FROM departments
    JOIN dept_manager dm
        on departments.dept_no = dm.dept_no
    JOIN employees e
        on dm.emp_no = e.emp_no
WHERE dm.to_date > NOW()
    AND e.gender = 'F'
    ORDER BY dept_name;

# USE employees;

SELECT t.title AS 'Title',
       COUNT(t.emp_no) AS 'Emp. no.'
FROM departments
    JOIN dept_emp de
        ON departments.dept_no = de.dept_no
    JOIN titles AS t
        ON de.emp_no = t.emp_no
WHERE t.to_date > NOW()
    AND de.to_date > NOW()
    AND dept_name LIKE 'cust%'
GROUP BY title;

SELECT d.dept_name AS 'Dept. name',
       CONCAT(employees.first_name, ' ', employees.last_name)
    AS employee_name,
       s.salary
FROM employees
         JOIN salaries s
          ON employees.emp_no = s.emp_no
         JOIN dept_manager dm
             ON s.emp_no = dm.emp_no
        JOIN departments d
            ON dm.dept_no = d.dept_no
WHERE s.to_date > NOW()
  AND dm.to_date > NOW()
ORDER BY dept_name;

SELECT
       CONCAT (e.first_name, ' ', e.last_name) AS Employee_name,
       d.dept_name AS 'Department name',
        CONCAT(m.first_name, ' ', m.last_name) AS 'Manager name'

    FROM employees AS e
        JOIN dept_emp AS de
            ON e.emp_no = de.emp_no
        JOIN departments AS d
            ON de.dept_no = d.dept_no
        JOIN dept_manager AS dm
            ON d.dept_no = dm.dept_no
        JOIN employees  AS m
            ON dm.emp_no = m.emp_no

WHERE de.to_date > NOW()
 AND dm.to_date > NOW();



