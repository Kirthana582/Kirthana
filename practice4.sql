-- Retrieve all employees whose department is either 'HR', 'IT', or 'Sales'.
CREATE DATABASE practice4;
USE practice4;
CREATE TABLE employee(id INT, name VARCHAR(30), age INT, department VARCHAR(50),experience int);
DROP TABLE employee;
insert into employee(id,name,age,department,experience) values(1,"ajay",21,"sales",2), -- but here since we use column, we can give unorderly
(2,"aarya",21,"HR",1),
(3,"abi",25,"TL2",5),
(4,"anu",26,"IT",3),
(5,"kamal",23,"HR",2),
(6,"karthik",27,"TL5",1),
(7,"hari",35,"manager",0),
(8,"ananya",20,"sales",4),
(9,"sathya",28,"BA",8),
(10,"deepa",29,"IT",5);
select * from employee where department in ("sales","HR","IT"); -- Retrieve all employees whose department is either 'HR', 'IT', or 'Sales'.
