/*
SHOW CHARACTER SET;

SHOW DATABASES;
CREATE DATABASE logic;
DROP DATABASE logic;
DROP SCHEMA logic;
DROP SCHEMA if exists logic;
*/
USE logic;
SHOW TABLES;
CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(30),
gpa DECIMAL(3,2)
);
DESCRIBE student;
/*
DROP TABLE student;
ALTER TABLE student ADD department VARCHAR(10);
ALTER TABLE student DROP department;
ALTER TABLE student ADD COLUMN department VARCHAR(10);
ALTER TABLE student DROP COLUMN department;
*/
INSERT INTO student VALUES(1,"kirthana",8.6);
INSERT INTO student VALUES(2,"kirthana",8.5);
INSERT INTO student VALUES(3,"kirthana",8.7);
INSERT INTO student VALUES(4,"kirthana",8.3);
INSERT INTO student VALUES(5,"kirthana",9.8),
(6,"kirthana",9.8),
(7,"kirthana",9.7),
(8,"kirthana",9.6),
(9,"kirthana",9.5),
(10,"kirthana",9.4);

SELECT * FROM student;








 
