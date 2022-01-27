USE employees;

SELECT CONCAT(last_name, ' ', first_name)
AS 'Full Name'
FROM employees
    LIMIT 10;

SELECT CONCAT(last_name, ' ', first_name)
AS 'Full Name', birth_date AS 'DOB'
FROM employees
LIMIT 10;

SELECT CONCAT(emp_no, '--> ', 'Full Name of: ', last_name, ', ', first_name)
AS 'Full Name', birth_date AS 'DOB'
FROM employees
# ORDER BY last_name
LIMIT 10;

# 10001--> Facello Georgi,1953-09-02
# 10002--> Simmel Bezalel,1964-06-02
# 10003--> Bamford Parto,1959-12-03
# 10004--> Koblick Chirstian,1954-05-01
# 10005--> Maliniak Kyoichi,1955-01-21
# 10006--> Preusig Anneke,1953-04-20
# 10007--> Zielinski Tzvetan,1957-05-23
# 10008--> Kalloufi Saniya,1958-02-19
# 10009--> Peac Sumant,1952-04-19
# 10010--> Piveteau Duangkaew,1963-06-01

