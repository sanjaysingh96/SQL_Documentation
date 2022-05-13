create database mvc_ado_sp
use mvc_ado_sp

create table Empployee(id int primary key identity,
name varchar(100),
email varchar(100),
mobile varchar(20),
gender varchar(6),
IsActive Bit,
department int foreign key references department (id))

create table department (id int primary key identity,
name varchar(100))

create proc sp_department1
@action varchar(20),
@id int=0,
@name varchar(100)=null
as
begin
if @action='Create'
	begin
		insert into department(name) values(@name)
	end
else if @action='Select'
	begin
		select * from department
	end
else if @action='delete'
	begin
		delete from department where id=@id
	end
else if @action='Select_one'
	begin
		select * from department where id=@id
	end
else if @action='update'
	begin
		update department set name=@name where id=@id
	end
else
	begin
		print 'Wrong Input'
	end
end


exec sp_department1 'select'
sp_department1 'create',0,'CEO'
sp_department1 'select_one',3
sp_department1 'delete',2
sp_department1 'update',1,'IT'
sp_department1 'check'
