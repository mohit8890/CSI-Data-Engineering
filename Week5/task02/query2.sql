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
