-- task 1: export sql to csv, avro and parquet
-- creating sql db and table
DROP TABLE IF EXISTS Students;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Age INT,
    Email NVARCHAR(100)
);

INSERT INTO Students (StudentID, FirstName, LastName, Age, Email)
VALUES 
(1, 'Aarav', 'Shah', 20, 'aarav.shah21@gmail.com'),
(2, 'Ishaan', 'Verma', 22, 'ishaan.v@outlook.com'),
(3, 'Myra', 'Reddy', 21, 'myra.reddy93@yahoo.com'),
(4, 'Kabir', 'Das', 19, 'kabir.das11@hotmail.com'),
(5, 'Siya', 'Sen', 23, 'siya.sen27@gmail.com'),
(6, 'Raj', 'Chaudhary', 20, 'raj.chaudhary198@gmail.com'),
(7, 'Kriti', 'Desai', 24, 'kriti.desai99@rediffmail.com'),
(8, 'Tanya', 'Mishra', 22, 'tanya.mishra@protonmail.com'),
(9, 'Arjun', 'Kapoor', 21, 'arjun_k1999@gmail.com'),
(10, 'Isha', 'Menon', 20, 'isha.menon@live.in');

-- task 2: schedule based and event based trigger
-- schedule based trigger (at 5 minutes gap)
INSERT INTO Students (StudentID, FirstName, LastName, Age, Email)
VALUES 
(11, 'Aditya', 'Sharma', 22, 'aditya.s@outlook.com'),
(12, 'Riya', 'Mehta', 23, 'riya.mehta21@gmail.com'),
(13, 'Sneha', 'Iyer', 21, 'sneha.iyer93@yahoo.com'),
(14, 'Karan', 'Patel', 20, '2karan.patel11@hotmail.com'),
(15, 'Ananya', 'Roy', 24, 'ananya.roy27@gmail.com');

-- event based trigger (file arrival)
-- remove last 5 lines from input/csv/data2.csv
-- run event trigger, new changes made to input/parquet/data2.parquet
