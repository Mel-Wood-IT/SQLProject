/* Second we are going to add all the data into the tables using INSERT INTO
the specified table and VALUES means that we are adding values into the columns. 
Each line is a new row of data and we need to include all the correct data or it 
will not work properly. For any data we cannot add we can use NULL instead, this 
is a blank entry. */


INSERT INTO Staff VALUES
('Homer', 'Robbins', 'GP', 'M', '2015-04-21', NULL),
('Marge', 'Johnson', 'Reception', 'F', '2015-04-27', NULL),
('Patty', 'Reyes', 'Reception', 'F', '2016-03-23', NULL),
('Selma', 'Bouvier', 'Admin', 'F', '2016-03-27', NULL),
('Ned', 'Flanders', 'Nurse', 'M', '2016-10-18', NULL),
('Lisa', 'Simpson', 'GP', 'F', '2016-12-04', NULL),
('Disco', 'Stu', 'Nurse Intern', 'M', '2018-03-27', '2018-08-17'),
('Melissa', 'Wood', 'Nurse Intern', 'F', '2023-08-17', NULL)

INSERT INTO Patient VALUES
('Caroline', 'Smith', '1981-06-21', '0271234567', 1, 'F'),
('James', 'Miller', '1972-05-23', '0221234567', 6, 'M'),
('Sarah', 'Walker', '1991-04-09', '0211234567', 6, 'F'),
('Sam', 'Paul', '1988-01-18', '0272345678', 1, 'M'),
('Jack', 'Johnson', '1974-10-26', '0212345678', 1, 'M')

INSERT INTO Speciality VALUES
('GP License', 'General GP consultation for registered patients'),
('Certified Assistance','Certified assistance'),
('Renewed License', 'Renewed license'),
('Training', 'Intern under training')

INSERT INTO Charges VALUES
('General GP consultation for registered patients', 30, 55),
('General GP consultation for casual patients', 30, 90),
('Emergency medical care for registered or casual patients', 30, NULL),
('Vaccination or Test collection for registered patients', 15, 0),
('Vaccination or Test collection for casual patients', 15, 40),
('Repeat perscription', 5, 5)

INSERT INTO Consultation VALUES
(2, 1, '2018-09-01', 08.30, 2),
(5, 3, '2018-09-04', 09.45, 3),
(5, 7, '2018-09-06', 09.45, 4),
(6, 7, '2018-09-07', 10.30, 3),
(4, 5, '2018-09-07', 10.45, 5)

INSERT INTO Staff_Speciality VALUES
(1, 3, '2014-04-23', '2024-04-23', 'License renewed untill 31/3/2026'),
(1, 4, '2016-05-14', '2022-11-14', 'Intern on rotation in surgical unit'),
(3, 4, '2015-08-01', '2023-07-31', 'Intern on rotation in medical unit'),
(6, 1, '2015-08-01', '2026-08-31', 'General GP'),
(7, 4, '2018-09-03', '2025-07-31', 'Intern on rotation with GP')

/* Using the Select all from a specified table to test and make sure all the data is entered correctly 
and there are no double ups. */

SELECT*
FROM Staff

SELECT*
FROM Patient

SELECT*
FROM Speciality

SELECT*
FROM Charges

SELECT*
FROM Consultation

SELECT*
FROM Staff_Speciality



CREATE LOGIN FixItAll_Users WITH PASSWORD= 'Fixitall'





/*1. Write a query to show all the names of all the tables in the database.*/
/* https://www.sqltutorial.org/sql-list-all-tables/ */

/* The Select statement is used to select the piece of data that is to be shown, in this case it is the tablename.
It gathers this information using the information schema, this is a catalog of all information to do with the database and it specifically pulls the tables */

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES;






/*2. Write a query (or queries) to show the structure for each table in the database*/
/* To find how to do this query I used the previous query and found the option columns while typing information_schema */

/* The Select statement is used to select the piece of data that is to be shown and the asterisk means to select all columns.
It gathers this information using the information schema, this is a catalog of all information to do with the database and it specifically pulls the table columns.
Using the WHERE statement to find the table specified. This is repeated for each table */

/*The structure of a table includes all the columns and column attributes of the table. */

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Staff'

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Patient'

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Speciality'

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Charges'

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Consultation'

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Staff_Speciality'








/*3. Write a query (or queries) to show the contents of each table in the database*/
/* I learnt how to do this query during class */

/* This query uses the select * statement to select all and selects the data FROM the specified table.
This is repeated for each table to show all contents for all tables in the database */

SELECT *
FROM Staff

SELECT *
FROM Patient

SELECT *
FROM Speciality

SELECT *
FROM Charges

SELECT *
FROM Consultation

SELECT *
FROM Staff_Speciality