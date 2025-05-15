-- Find customers whose name starts with 'A'.
create database practice3;
use practice3;
create table sales(id int, customer_name varchar(30), product varchar(30), amount int);
insert into sales(id,customer_name,product,amount) value (1,"hari","mobile",29000),
(2,"kirthana","iphone",50000),
(3,"avinash","speaker",4000),
(4,"kumar","tv",15000),
(5,"abitha","ipad",60000),
(6,"hari","tab",5000),
(7,"archana","headphone",900);
select * from sales where customer_name like "a%";

