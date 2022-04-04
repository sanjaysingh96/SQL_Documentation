create database sqltest
use sqltest
create table employee(
id int not null primary key identity,
name varchar(30) not null,
email varchar(30) not null,
city varchar(30) not null,
salary int not null);

select * from employee;
insert into employee(name, email, city, salary) values
('Vinod','vinod@gmail.com','Lalganj',12000),
('Rakesh','rakesh@gmail.com','Jodhpur',5600),
('Rahim','rahim@gmail.com','Jaunpur',4500),
('Tarun','tarun@gmail.com','Sanpur',9000),
('Saksham','saksham@gmail.com','Jalgaav',2300),
('Laksham','laksham@gmail.com','Bheetpur',6700),
('Sohil','sohil@gmail.com','Thane',7600)


select name, email from employee where name='Tarun'

select name from employee where salary between 1200 and 20000

select * from employee where salary >= 11000

select * from employee where name like '%l'

select * from employee where name like '_a%'

select * from employee where name like '%o%'

select UPPER(email) from employee where id=2 

select LOWER(name) from employee

select * from employee

select rtrim(name) from  employee

select * from employee  order by name desc 

select salary from employee  order by salary 

select top 5 name, salary from employee 


select count(*) from employee

select count(distinct city) from employee

select max(salary) from employee

select min(salary) from employee

select sum(salary) from employee
--second maximum salary
select max(salary) from employee where salary < (select max(salary) from employee)

select top 4 * from employee where name like '%a%'

select salary from employee where salary<(select max(salary) from employee)
select max(salary) from employee

alter table employee add mobile_no varchar(12)
 


alter table employee add constraint mobile default '907456321' for mobile_no

update employee set mobile_no='8634874356' 

update employee set salary= 25000

update employee set salary= 12900 where id in(1,3,6,8,9)

delete from employee where id=2

BEGIN TRANSACTION rollback
select * from employee
sp_rename 'employee.mobile_no','mobile'

sp_rename 'employee', 'emp'

alter table emp drop column salary
select * from emp

alter table emp add  salary int

update emp set salary=23000 

update emp set salary =12000 where id=1

alter table emp add dept varchar (29)
update emp set dept='IT'
select * from emp

select * from emp where name like '%Singh'

select * from emp where name like 'Sa%'

select * from emp where name like '%m'

update emp set name ='Ajay Singh Kumar' where id=8

create procedure showdata
as
begin
select * from emp
end

showdata

create procedure empid
@id int
as 
begin
select * from emp where id=@id
end

execute empid 6;

create procedure empname
@id int,
@name varchar(30)
as
begin
select * from emp where id=@id and name=@name
end

empname 4, 'tarun'

alter procedure empid
@id int
as
begin
select name,salary from emp where id=@id
end

sp_helptext empid

--delete store procedure
drop procedure empname

--inset data
create procedure insertdata
@name varchar(30),
@email varchar(30)
as
begin
insert into emp(name,email) values(@name,@email)
end

insertdata @name='param',@email='param@gmail.com'


select * from emp