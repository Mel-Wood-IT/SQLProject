/*
Melissa Wood 18478786


First create all the tables using CREATE TABLE (table name) and add all the fields with their constraints
making sure to include primary and foreign key and any checks for constraints that only allow certain entries.
*/

CREATE TABLE Staff
(
StaffID int identity(1,1) PRIMARY KEY,
Staff_FirstName varchar(20) NOT NULL,
Staff_LastName varchar(20) NOT NULL,
Staff_Role varchar(15) check (Staff_Role in ('GP','Surgeon','Reception','GP Intern','Nurse','Senior Nurse','Nurse Intern','Marketing','Admin')),
Gender char(1) check(Gender in('F','M','O')),
DateJoined Date NOT NULL,
DateLeft Date
)

CREATE TABLE Patient
(
PatientID int identity(1,1) PRIMARY KEY,
Pat_FirstName varchar(20) NOT NULL,
Pat_Last_Name varchar(20) NOT NULL,
DOB Date NOT NULL,
PhoneNum varchar(15) NOT NULL,
StaffID int FOREIGN KEY References Staff(StaffID) NOT NULL,
PatientGen char(1) check(PatientGen in('F','M','O'))
)

CREATE TABLE Speciality
(
SpecialityID int identity(1,1) PRIMARY KEY,
SpecName varchar(30) NOT NULL,
SpecNotes varchar(100)
)

CREATE TABLE Charges
(
ChargeID int identity(1,1) PRIMARY KEY,
ChargeDesc varchar(80) NOT NULL,
Duration int check(Duration <=60),
HourlyRate int check(HourlyRate <=399)
)

CREATE TABLE Staff_Speciality
(
PRIMARY KEY(StaffID, SpecialityID),
StaffID int FOREIGN KEY References Staff(StaffID),
SpecialityID int FOREIGN KEY References Speciality(SpecialityID), 
DateQualified date,
ValidTillDate date,
Details varchar(100),
)

CREATE TABLE Consultation
(
PRIMARY KEY(StaffID, ChargeID),
ChargeID int FOREIGN KEY References Charges(ChargeID),
StaffID int FOREIGN KEY References Staff(StaffID),
DateConsulted date,
StartTime numeric(4,2),
PatientID int FOREIGN KEY References Patient(PatientID)
)

/* Drop table command used to drop tables when I needed to make changes */

DROP TABLE Staff

DROP TABLE Patient

DROP TABLE Charges

DROP TABLE Speciality

DROP TABLE Consultation

DROP TABLE Staff_Speciality