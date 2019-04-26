--Exercise 2.1, 2.2 and 4

USE [master];
DROP DATABASE IF EXISTS [SpartaAcademy];
--These lines allow the database to be re-created if it already exists.
--Make sure no other tabs are running on SpartaAcademy when running this code.

CREATE DATABASE SpartaAcademy;

USE [SpartaAcademy];

CREATE TABLE [Rooms] (
	[RoomID] INT NOT NULL IDENTITY PRIMARY KEY,
	[AcademyID] INT NOT NULL,
	[RoomName] VARCHAR(10) NOT NULL,
	[Description] VARCHAR(50),
	[Capacity] INT NOT NULL,
	CHECK ([Capacity] <= 25)
--Maximum Capcity for each room is 25
);

CREATE TABLE [Academies] (
	[AcademyID] INT NOT NULL IDENTITY PRIMARY KEY,
	[AcademyName] VARCHAR(15) NOT NULL
);

CREATE TABLE [CourseCatalog] (
	[CourseID] INT NOT NULL IDENTITY PRIMARY KEY,
	[CourseName] VARCHAR(15) NOT NULL,
	[Duration] INT NOT NULL
);

CREATE TABLE [Employees] (
	[EmployeeID] INT NOT NULL IDENTITY PRIMARY KEY,
	[FirstName] VARCHAR(15) NOT NULL,
	[LastName] VARCHAR(25) NOT NULL,
	[EmployeeType] CHAR(1) NOT NULL,
	[StartDate] DATE,
	CHECK ([EmployeeType] IN ('T', 'S'))
--Employee Type can only be 'T' for Trainer, or 'S' for Spartan
);

CREATE TABLE [dbo].[CourseSchedule] (
	[CourseScheduleID] INT NOT NULL IDENTITY PRIMARY KEY,
	[AcademyID] INT FOREIGN KEY REFERENCES [Academies](AcademyID) NOT NULL,
	[RoomID] INT FOREIGN KEY REFERENCES [Rooms](RoomID) NOT NULL,
	[CourseID] INT FOREIGN KEY REFERENCES [CourseCatalog](CourseID) NOT NULL,
--Relate tables by foreign keys
	[StartDate] DATE NOT NULL,
	[EndDate] DATE NOT NULL
);

CREATE TABLE [CourseScheduleTrainers] (
	[CourseScheduleID] INT FOREIGN KEY REFERENCES [dbo].[CourseSchedule](CourseScheduleID),
	[TrainerID] INT FOREIGN KEY REFERENCES [Employees](EmployeeID) NOT NULL,
	[TrainerType] CHAR(1) NOT NULL,
	CHECK ([TrainerType] IN ('T', 'A'))
--Trainer type can only be 'T' for Trainer, or 'A' for Training Assistant
);

CREATE TABLE [CourseScheduleAttendees] (
	[CourseScheduleID] INT FOREIGN KEY REFERENCES [dbo].[CourseSchedule](CourseScheduleID) NOT NULL,
	[AttendeeID] INT FOREIGN KEY REFERENCES [Employees](EmployeeID) NOT NULL,
	[Active] BIT NOT NULL
--Use BIT as the datatype, as it is a yes or no question, so 1 = Yes and 0 = No
);