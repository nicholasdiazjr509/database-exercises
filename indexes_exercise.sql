USE employees;

DESCRIBE employees;

SHOW TABLES ;

DESCRIBE current_dept_emp;
DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_emp_latest_date;
DESCRIBE dept_manager;
DESCRIBE salaries;
# salaries has 2 PRI Keys emp_no & from_date
 USE codeup_test_db;

DESCRIBE  albums;

ALTER TABLE albums
ADD UNIQUE (name, artist);

INSERT INTO albums (artist, name, release_date, genre, certified, sales)
VALUES ('Test Artist 2', 'Test Album xyz', 2000, 'Test3 Genre', 3, 33 );

