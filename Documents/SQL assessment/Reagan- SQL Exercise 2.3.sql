--Exercise 2

USE [SpartaAcademy];
--Apply this line before running any code for Exercise 2, so the sql serve knows which database to use.
--Make sure to run the SpartaAcademyDML.sql before running this code

--Question 2.3

INSERT INTO [CourseCatalog]
			([CourseName]
			,[Duration])
	VALUES
			('Data',
			8)
;

INSERT INTO [Employees]
			([FirstName]
			,[LastName]
			,[EmployeeType]
			)
	VALUES
			('Isabella', 'Jones', 'T')
;

INSERT INTO [Employees]
			([FirstName]
			,[LastName]
			,[EmployeeType]
			)
	VALUES
			('Joe', 'Childs', 'T')
;

INSERT INTO [Employees]
			([FirstName]
			,[LastName]
			,[EmployeeType]
			,[StartDate]
			)
	VALUES
			('John', 'Smith', 'T', '03/15/2019')
;

INSERT INTO [Employees]
			([FirstName]
			,[LastName]
			,[EmployeeType]
			,[StartDate]
			)
	VALUES
			('Reagan', 'Prince', 'S', '02/25/2019')
;

INSERT INTO [Employees]
			([FirstName]
			,[LastName]
			,[EmployeeType]
			,[StartDate]
			)
	VALUES
			('Eimantas', 'Alejunas', 'S', '02/25/2019')
;

INSERT INTO [Employees]
			([FirstName]
			,[LastName]
			,[EmployeeType]
			,[StartDate]
			)
	VALUES
			('Alun', 'Wrighton', 'S', '02/25/2019')
;

INSERT INTO [Employees]
			([FirstName]
			,[LastName]
			,[EmployeeType]
			,[StartDate]
			)
	VALUES
			('Iman', 'Ali', 'S', '02/25/2019')
;

INSERT INTO [Employees]
			([FirstName]
			,[LastName]
			,[EmployeeType]
			,[StartDate]
			)
	VALUES
			('Mariam', 'Aslam', 'S', '02/25/2019')
;

INSERT INTO [Employees]
			([FirstName]
			,[LastName]
			,[EmployeeType]
			,[StartDate]
			)
	VALUES
			('Laura', 'Geanta', 'S', '02/25/2019')
;

INSERT INTO [Rooms]
			([AcademyID]
			,[RoomName]
			,[Description]
			,[Capacity]
			)
	VALUES
			(1
			,'Room 5'
			,'Next to break out space'
			,20)
;

INSERT INTO [dbo].[CourseSchedule]
			([AcademyID]
			,[RoomID]
			,[CourseID]
			,[StartDate]
			,[EndDate]
			)
	VALUES
			(1, 6, 3, '02/25/2019', '04/19/2019')
;

INSERT INTO [CourseScheduleTrainers]
			([CourseScheduleID]
			,[TrainerID]
			,[TrainerType]
			)
	VALUES
			(3, 18, 'T')
;

INSERT INTO [CourseScheduleTrainers]
			([TrainerID]
			,[TrainerType]
			)
	VALUES
			(20, 'A')
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (3
           ,21
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (3
           ,22
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (3
           ,23
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (3
           ,24
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (3
           ,25
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (3
           ,26
           ,1)
;

