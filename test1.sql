-- DDL (DATA DEFINITION LANGUAGE)
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

-- DML (DATA MANIPULATION LANGUAGE)
-- insertion
insert into employee(id,name,age,role,experience) values(1,"ajay",21,"SP",2), -- but here since we use column, we can give unorderly
(2,"aarya",21,"TL1",1),
(3,"abi",25,"TL2",5),
(4,"anu",26,"TL3",3),
(5,"kamal",23,"TL4",2),
(6,"karthik",27,"TL5",1),
(7,"hari",35,"manager",0),
(8,"ananya",20,"intern",4),
(9,"sathya",28,"BA",8),
(10,"deepa",29,"developer",5);
insert into employee values(11,"kavya",32,"analyst",2); -- here we need to give values in order compulsorily
insert into employee values(12,"kani",35,null,1);

-- updation
update employee set age=25; -- update age = 25 to entire column
update employee set age=30 where id=5; -- update value in particular id

-- deletion
delete from employee where id=12; -- row wise deletion
truncate table employee; -- delete full table but structure is there
drop table employee; -- delete entire table and its structure

-- DQL(DATA QUERY LANGUAGE)
select * from employee; -- selects entire table
select name,age from employee; -- selects particular column
select * from employee where experience=2; -- where condition
select * from employee where id in (1,5,7,9);
-- pattern matching
select * from employee where name like "%a"; -- name ends with a
select * from employee where name like "a%"; -- name starts with a
select * from employee where name like "%n%"; -- name with middle letter n
select * from employee where age like "6%";
select * from employee where age like "2%";
select * from employee where age like "%6";

-- conditions using logical operator (and,or,not)
select * from employee where age=25 and id=3; -- retreives table only both conditions are satisfied
select * from employee where age=24 and id=3; 
select * from employee where age=30 or name="ajay";-- retreives table only one/both conditions are satisfied.
select * from employee where name="ajay" or age=30; -- in column there is first name and then age. so it retreives name first
select * from employee where id=6 or name="karthik";
select * from employee where not(age=25 and id=3);
select * from employee where not(age=30 or name="ajay");

-- Aggregate functions - min,max,count,avg,sum......
select max(age) from employee; -- returns maximum value from the coulmn
select min(age) from employee; -- returns minimum value from the coulmn
select count(id) from employee; -- counts number of rows
select avg(age) from employee; -- returns the average of data in the column
select sum(experience) from employee; -- returns sum of all tha values in the column

-- using "as" - alice name
select count(*) as result from employee; -- counts number of rows in table and named as result
select avg(age) as average_age from employee; -- alice name used average_age
select min(age) as minimum_age from employee; -- alice name used minimum_age

-- group by, order by, having
select * from employee order by experience; -- orderly returns the value. default ascending order
select * from employee order by experience desc; -- order by descending 

select count(id),age from employee group by age; -- group by the age
select count(id),age,experience from employee group by age; -- shows error. after group by selected coulmns must to indicate
select count(id),age,experience from employee group by age,experience; -- shows table but datas are mismatched. so give only columns need to be group by 

-- having is used where we want the grouped data with count >2
select count(id),age from employee group by age having count(id)<=1; -- returns grouped age with count <=1





