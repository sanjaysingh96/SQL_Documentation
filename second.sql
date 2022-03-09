CREATE DATABASE Mytable;
USE Mytable;
CREATE TABLE myinfo(
eid INT IDENTITY,
ename VARCHAR(30),
email VARCHAR(30),
city VARCHAR(30),
salary INT);
SELECT * FROM myinfo;
SELECT email,ename FROM myinfo;
INSERT INTO myinfo(ename, email, city, salary) VALUES
('Sanjay','sanjay@gmail.com','Mirzapur',15000),
('Ajay','ajay@gmail.com','Allhabad',20000),
('Ram','ram@gmail.com','Varanshi',18000),
('Dheeraj','dheeraj@gmail.com','Lucknow',12000),
('Robin','robin@gmail.com','Mirzapur',17000)
SELECT * FROM myinfo;
-- Updata Query --
UPDATE myinfo SET city='Noida' WHERE eid=1;
-- Select Query --
SELECT ename, salary FROM myinfo WHERE city='Mirzapur';
SELECT ename,city,eid ,salary FROM myinfo WHERE city='Mirzapur' OR city='Noida';

INSERT INTO myinfo(ename, email, city, salary) VALUES
('Sanjay','sanjay@gmail.com','Mirzapur',15000),
('Ajay','ajay@gmail.com','Allhabad',20000),
('Ram','ram@gmail.com','Varanshi',18000),
('Dheeraj','dheeraj@gmail.com','Lucknow',12000),
('Robin','robin@gmail.com','Mirzapur',17000)

SELECT * FROM myinfo WHERE ename='Sanjay' AND city='Noida';
SELECT sum(salary) FROM myinfo WHERE ename='Robin' AND city='Mirzapur';
SELECT sum(salary), count(city) FROM myinfo WHERE city='Mirzapur';
