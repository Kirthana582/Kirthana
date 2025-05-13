CREATE DATABASE test;
SHOW DATABASES;
USE test;
CREATE TABLE employee(id INT, name VARCHAR(30), age INT, role VARCHAR(50));
DROP TABLE employee;
SHOW TABLES;

alter table employee add column experience INT;
alter table employee drop column experience;
alter table employee change experience exp VARCHAR(10);
alter table employee drop exp;

-- insertion
insert into employee(id,name,age,role) values(1,"ajay",21,"SP"),
(2,"aarya",21,"TL1"),
(3,"abi",25,"TL2"),
(4,"anu",26,"TL3"),
(5,"kamal",23,"TL4"),
(6,"karthik",27,"TL5"),
(7,"hari",35,"manager"),
(8,"ananya",20,"intern"),
(9,"sathya",28,"BA"),
(10,"deepa",29,"developer");
insert into employee values(11,"kavya",32,"analyst");
insert into employee values(12,"kani",35,null);

-- updation
update employee set age=25;
update employee set age=30 where id=5; 
select * from employee;

