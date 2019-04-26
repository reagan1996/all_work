--Exercise 3

USE [SpartaAcademy];
--Apply this line before running any code for Exercise 3, so the sql serve knows which database to use.

--Question 3.1

SELECT
	  cc.CourseName AS 'Course Name',
	  FORMAT(cs.StartDate,'yyyy-MM-dd') AS 'Start Date',
	  FORMAT(cs.EndDate,'yyyy-MM-dd') AS 'End Date',
--Start and end dates are formatted to show year first, then month, then day
	  a.AcademyName AS 'Academy',
	  r.RoomName AS 'Room Name', 
	  t.FirstName + ' ' + t.LastName AS 'Trainer',
	  s.FirstName + ' ' + s.LastName AS 'Spartan'
FROM [dbo].[CourseSchedule] cs
INNER JOIN [CourseScheduleTrainers] cst ON cs.CourseScheduleID = cst.CourseScheduleID
INNER JOIN [CourseScheduleAttendees] csa ON cs.CourseScheduleID = csa.CourseScheduleID
INNER JOIN [Academies] a ON cs.AcademyID = a.AcademyID
INNER JOIN [Rooms] r ON cs.RoomID = r.RoomID
INNER JOIN [CourseCatalog] cc ON cs.CourseID = cc.CourseID
INNER JOIN [Employees] t ON cst.TrainerID = t.EmployeeID
INNER JOIN [Employees] s ON csa.AttendeeID = s.EmployeeID
--Simple join all 7 tables to link Course Name, Start Date, End Date, Academy, Room Name, Trainer and Spartan
;

--Question 3.2

SELECT
	  cc.CourseName AS 'Course Name',
	  FORMAT(cs.StartDate,'yyyy-MM-dd') AS 'Start Date',
	  FORMAT(cs.EndDate,'yyyy-MM-dd') AS 'End Date',
	  a.AcademyName AS 'Academy',
	  r.RoomName AS 'Room Name', 
	  t.FirstName + ' ' + t.LastName AS 'Trainer',
	  SUBSTRING(s.FirstName,1,1) + SUBSTRING(s.LastName,1,1) AS 'Spartan Initials'
--Include only the first letter of their first and last name
FROM [dbo].[CourseSchedule] cs
INNER JOIN [CourseScheduleTrainers] cst ON cs.CourseScheduleID = cst.CourseScheduleID
INNER JOIN [CourseScheduleAttendees] csa ON cs.CourseScheduleID = csa.CourseScheduleID
INNER JOIN [Academies] a ON cs.AcademyID = a.AcademyID
INNER JOIN [Rooms] r ON cs.RoomID = r.RoomID
INNER JOIN [CourseCatalog] cc ON cs.CourseID = cc.CourseID
INNER JOIN [Employees] t ON cst.TrainerID = t.EmployeeID
INNER JOIN [Employees] s ON csa.AttendeeID = s.EmployeeID
;

--Question 3.3

SELECT
	  cc.CourseName AS 'Course Name',
	  FORMAT(cs.StartDate,'yyyy-MM-dd') AS 'Start Date',
	  FORMAT(cs.EndDate,'yyyy-MM-dd') AS 'End Date',
	  CASE WHEN cc.CourseName = 'BA-Test' THEN FORMAT(DATEADD(WEEK,8,cs.StartDate),'yyyy-MM-dd')
		   ELSE FORMAT(DATEADD(WEEK,12,cs.StartDate),'yyyy-MM-dd') 
	  END AS 'Check Date',
--Create the Check Date column which adds 8 weeks to the start date for spartans on the BA-Test course
--and 12 weeks to the other courses, the dates are again formatted the same as start and end date
	  a.AcademyName AS 'Academy',
	  r.RoomName AS 'Room Name', 
	  t.FirstName + ' ' + t.LastName AS 'Trainer', 
	  s.FirstName + ' ' + s.LastName AS 'Spartan'
FROM [dbo].[CourseSchedule] cs
INNER JOIN [CourseScheduleTrainers] cst ON cs.CourseScheduleID = cst.CourseScheduleID
INNER JOIN [CourseScheduleAttendees] csa ON cs.CourseScheduleID = csa.CourseScheduleID
INNER JOIN [Academies] a ON cs.AcademyID = a.AcademyID
INNER JOIN [Rooms] r ON cs.RoomID = r.RoomID
INNER JOIN [CourseCatalog] cc ON cs.CourseID = cc.CourseID
INNER JOIN [Employees] t ON cst.TrainerID = t.EmployeeID
INNER JOIN [Employees] s ON csa.AttendeeID = s.EmployeeID
;