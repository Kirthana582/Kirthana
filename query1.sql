/*
SHOW CHARACTER SET;

SHOW DATABASES;
CREATE DATABASE logic;
DROP DATABASE logic;
DROP SCHEMA logic;
DROP SCHEMA if exists logic;
*/
CREATE DATABASE logic;
USE logic;
SHOW TABLES;
CREATE TABLE student(id INT, name VARCHAR(30), gpa DECIMAL(3,2));
DESCRIBE student;
-- to delete the table
DROP TABLE student;

-- ALTER command to insert ot drop the column
ALTER TABLE student ADD department VARCHAR(10);
ALTER TABLE student DROP department;
ALTER TABLE student ADD COLUMN department VARCHAR(10);
ALTER TABLE student DROP COLUMN department;

-- insert a data with column
insert into student(id,name,gpa) values(101,"kirthana",9.5),
(102,"kirthana",9.5),
(103,"kirthana",9.5),
(104,"kirthana",9.5);

-- insert without column
insert into student values(105,"kirthana",9.0);
insert into student values(105,"kirthana"); -- it shows error. because we need to give value or null compulsorily for all coulmns
insert into student values(105,"kirthana",NULL);

-- UPDATE command to change the data in rows
update student set id =1;
update student set id=9 where name="kayal";
 update student set name="kayal" where id=104;
 

SELECT * FROM student;

