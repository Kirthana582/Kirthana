-- Find students whose marks are exactly 50, 60, or 70.
-- Find students who did NOT score less than 40.
create database practice1;
use practice1;
create table student(id INT, name VARCHAR(30), subject VARCHAR(30), mark INT);
drop table student;
insert into student(id,name,subject,mark) values (1,"abi","tamil",40),
(2,"baskar","maths",50),
(3,"dinesh","english",30),
(4,"lalitha","tamil",50),
(5,"kavya","science",60),
(6,"shivanya","social",40),
(7,"akilan","CS",70),
(8,"yashna","tamil",50),
(9,"mahi","accountancy",70),
(10,"mahesh","biology",25);
select * from student where mark in (50,60,70); -- Find students whose marks are exactly 50, 60, or 70.
select * from student where not(mark<40); -- Find students who did NOT score less than 40.
