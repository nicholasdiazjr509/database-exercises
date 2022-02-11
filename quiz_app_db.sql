CREATE DATABASE IF NOT EXISTS quiz_app_db;
USE quiz_app_db;

DROP TABLE IF EXISTS 'quiz';

CREATE TABLE quiz(
    quiz_id INTEGER(10) NOT NULL,
    language VARCHAR(100) DEFAULT NULL,
    total_question INTEGER(100) DEFAULT NULL,
    PRIMARY KEY (quiz_id)
);

DROP TABLE IF EXISTS 'users';

CREATE TABLE IF NOT EXISTS users(
  user_id VARCHAR(10) NOT NULL,
  password VARCHAR(10) DEFAULT NULL,
  user_type VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY (user_id)
);

LOCK TABLES users WRITE;
INSERT INTO users VALUES ('joe', '123', 'student'), ('nick','321', 'admin');
UNLOCK TABLES;

DROP TABLE IF EXISTS 'questions';

CREATE TABLE question(
    quiz_id VARCHAR(100) NOT NULL ,
    question VARCHAR(40) DEFAULT NULL,
    answer1 VARCHAR(40) DEFAULT NULL,
    answer2 VARCHAR(40) DEFAULT NULL,
    answer3 VARCHAR(40) DEFAULT NULL,
    correct_answer VARCHAR (45) DEFAULT NULL
    );