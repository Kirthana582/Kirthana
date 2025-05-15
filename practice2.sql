-- Retrieve products where the description contains the word 'wireless'.
-- Find products with price < 100 OR stock < 10.
create database practice2;
use practice2;
create table product_details(no INT, name varchar(30), price int, description varchar(50), stock int);
drop table product_details;
insert into product_details(no,name,price,description,stock) values (1,"realme",10000,"gaming",10),
(2,"noise ear buds",99,"best ANC",50),
(3,"oneplus buds 2r",1500,"wireless buds",2),
(4,"firebolt smart watch",1000,"calling feature",5),
(5,"nothing buds",50,"with ENC and ANC",9),
(6,"mouse",150,"wireless with high sensitivity",20),
(7,"apple charger",35,"wireless charging capability",43),
(8,"oppo f27 ",2300,"water resistant",8);
select * from product_details where description like "wireless%";-- Retrieve products where the description contains the word 'wireless'.
select * from product_details where price<100 or stock<10; -- Find products with price < 100 OR stock < 10.
