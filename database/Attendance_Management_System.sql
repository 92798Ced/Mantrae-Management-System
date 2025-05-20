CREATE DATABASE Attendance_Management_System;

CREATE TABLE User_Table
(
	User_ID INT IDENTITY(1,1),
	User_Name VARCHAR(150) UNIQUE,
	User_Pass VARCHAR(150),
	User_Pho VARCHAR(15),
	User_CNIC VARCHAR(15) UNIQUE,
	User_DOB VARCHAR(10),
	User_Gender VARCHAR(6),
	User_Email VARCHAR(30),
	User_Role VARCHAR(6),
	User_Add VARCHAR(150),
	CONSTRAINT User_Table_PK PRIMARY KEY (User_ID)
);

INSERT INTO User_Table VALUES
	('user', '123', '+63 000 0000000', '00000-0000000-0', '01,01,1960', 'Male', 'user@gmail.com', 'user', 'Taguig'), 
	('admin', '12345', '+12 111 1111111', '11111-1111111-1', '01,01,1960', 'Male', 'admin@gmail.com', 'admin', 'Manila');

CREATE TABLE Class_Table
(
	Class_ID INT IDENTITY(1,1),
	Class_Name VARCHAR(150) UNIQUE,
	Class_Total INT,
	Class_Male INT,
	Class_Female INT,
	CONSTRAINT Class_Table_PK PRIMARY KEY (Class_ID)
);

CREATE TABLE Student_Table
(
	Student_ID INT IDENTITY(1,1),
	Student_Name VARCHAR(150),
	Student_Reg VARCHAR(50) UNIQUE,
	Student_Gender VARCHAR(10),
	Class_ID INT,
	CONSTRAINT Student_Table_PK PRIMARY KEY (Student_ID),
	CONSTRAINT Student_Table_FK FOREIGN KEY (Class_ID) REFERENCES Class_Table (Class_ID) ON DELETE CASCADE
);

INSERT INTO Student_Table VALUES
	('Jay Laurence Garcia', '06-2324-031936', 'Male', '3');