create database jointable;
use jointable;
--first table--
create table student( Rollno int primary key, Name varchar(50), Branch varchar(50))
--insert data in table 1--
insert into student (Rollno, Name, Branch) values(1,'Shuhani','Computer Science'),(2,'Roshan','Elex'),(3,'Kavya','Civil'),(4,'Atul','Computer Science')
insert into student (Rollno, Name, Branch) values (5,'Karan','Hotal Management')
-- second table --
create table exam(Rollno int FOREIGN KEY REFERENCES student(Rollno),S_code varchar(20), Marks int, P_code varchar(20))
--check table--
select * from student;
select * from exam;
-- insert data in table 2--
insert into exam (Rollno, S_code, Marks, P_code) values(1,'CS101',60,'CS'),(1,'CS102',50,'CS'),(2,'Elex101',80,'Elex'),(2,'Elex102',60,'Elex'),
(3,'CI202',60,'Civil'),(3,'CI203',60,'Civil'),(4,'ME1001',60,'ME'),(1,'ME1002',60,'ME')
insert into exam (Rollno, S_code, Marks, P_code) values(3,'MSC',55,'BA');

-- check join operation --
select * from student inner join exam on student.Rollno=exam.Rollno;
select * from student left join exam on student.Rollno=exam.Rollno;
select * from student right join exam on student.Rollno=exam.Rollno;
select * from student  FULL OUTER JOIN exam on student.Rollno=exam.Rollno;
