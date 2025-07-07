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
