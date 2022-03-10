CREATE DATABASE myindia;
USE myindia;
CREATE TABLE data(
eid int identity, 
ename varchar(30),
city varchar(50),
salary int,
gender varchar(10)
);

insert into data(ename, city, salary, gender) values
('Sanjay','Noida',15000,'Male'),
('Ajay','Kanpur',4000,'Male'),
('Naman','Delhi',2300,'Male'),
('Reema','Lucknow',65730,'Female'),
('Reeta','Patna',12250,'Female'),
('Rajeev','Punjab',52600,'Male'),
('Rohan','Agra',12000,'Male'),
('Reema','Lucknow',65730,'Female'),
('Reeta','Patna',12250,'Female'),
('Rajeev','Punjab',52600,'Male'),
('Rohan','Agra',12000,'Male')

select * from data;
-- Dublicate value Distinct use--
select distinct gender,ename,salary from data;

select count(distinct gender) from data;

select * from data where gender='female';
update data set ename='sonam' where eid=4;
update data set ename='Rashmi' where eid=5;

delete data where eid=5;
select ename,eid,salary,gender from data where city='agra';
select * from data;

select * from data where salary >= 10000  and salary < 18000;
select  count(city) mycity  from data where city='Lucknow';

-- Between --
select * from data where salary  between 10000 And 20000;
-- Like --
select * from data where ename like 'a%';
select * from data where ename like '_a%';
-- select top data --
select  top 10 percent * from data;
select top 5 * from data;
-- fint bottom data --
select top 5 * from data order by eid desc;
-- in middle data pickup --
select * from data where eid between 3 and 7;