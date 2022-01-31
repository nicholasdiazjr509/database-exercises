DROP DATABASE IF EXISTS join_test_db;
CREATE DATABASE IF NOT EXISTS join_test_db;

USE join_test_db;

CREATE TABLE IF NOT EXISTS roles(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR (100) NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY(role_id) REFERENCES roles(id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                 ('bob', 'bob@example.com', 1),
                 ('joe', 'joe@example.com', 2),
                 ('sally', 'sally@example.com', 3),
                 ('adam', 'adam@example.com', 3),
                 ('jane', 'jane@example.com', null),
                 ('mike', 'mike@example.com', null);

SELECT * FROM users;

-- #3
SELECT u.name AS user_name, r.name AS role_name
FROM users AS u
    JOIN roles AS r ON r.id = u.role_id;

-- LEFT JOIN
SELECT u.name AS user_name, r.name AS role_name
FROM users AS u
    RIGHT JOIN roles AS r ON r.id = u.role_id;

SELECT u.name AS user_name, r.name AS role_name
FROM users AS u
         LEFT JOIN roles AS r ON r.id = u.role_id;


-- #4
SELECT r.name AS role,
       COUNT(r.name)
FROM users AS u
JOIN roles AS r ON u.role_id = r.id
GROUP BY r.name;

