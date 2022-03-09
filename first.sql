CREATE DATABASE studentsinfo;
USE studentsinfo;
-- First Table --
CREATE TABLE stuDetail(sid INT IDENTITY, sname VARCHAR(40),fee INT, roll VARCHAR(20));
-- Second Table --
CREATE TABLE stuResult(sid INT IDENTITY, sname VARCHAR(40),marks INT, result VARCHAR(20));
SELECT * FROM stuDetail;
SELECT * FROM stuResult;
-- insert data in databse --
INSERT INTO stuDetail(sname, fee, roll) VALUES('Sanjay Singh',20000,'A-101');
INSERT INTO stuDetail(sname, fee, roll) VALUES
('Ajay Singh',15000,'A-102'),
('Vipul Singh',14000,'A-103'),
('Akash Singh',13000,'A-104'),
('Dheeraj Singh',12000,'A-105');
-- Add one column --
ALTER TABLE stuDetail ADD stuemail VARCHAR(50);
-- Rename table name --
SP_RENAME 'stuDetail', 'Mydetail';
SELECT * FROM Mydetail;
-- rename column name --
SP_RENAME 'Mydetail.roll','rollno';
-- delete column --
DELETE FROM Mydetail WHERE sid=2;
TRUNCATE TABLE Mydetail;