create database triggertest
use triggertest

create table employee(id int, name varchar(30),age int)
create table employeelogs(id int, name varchar(30), age int, modifiedBy varchar(30), modified date)

select * from employee 
select * from employeelogs

insert into employee values(101,'Sanjay',21)
--for insert trigger
create trigger tr_after_insert
on employee
after insert
as
	begin
	insert into employeelogs
	select id,name,age,'Sanjay',getdate()
	from inserted
end;

insert into employee values(103,'Khali',33)
--for update trigger

create trigger tr_after_update
on employee
after update
as
	begin
	insert into employeelogs
	select id,name,age,'Sanjay',getdate()
	from inserted
end

update employee set name='Rohan' where id=102

--for delete

create trigger tr_after_delete
on employee
after delete
as
	begin
	insert into employeelogs
	select id, name, age,'Sanjay',getdate()
	from deleted
end

delete from employee where id=103