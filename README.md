SHOW DATABASES
CREATE DATABASE omjeejaiswal
CREATE DATABASE IF NOT EXISTS omjeejaiswal
 
USE omjeejaiswal
SELECT database()

CREATE TABLE employee(
	EID INT PRIMARY KEY,
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    age INT NOT NULL,
    Salary INT NOT NULL,
    Location varchar(100) NOT NULL,
    PRIMARY KEY
    -- PRIMARY KEY(EID, FirstName) use only i have composite primary key   
)
CREATE TABLE employee(
	EID INT AUTO_INCREMENT,
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    age INT NOT NULL,
    Salary INT NOT NULL,
    Location varchar(100) NOT NULL,
    PRIMARY KEY(EID)
    --AUTO_INCREMENT = 100
)
SHOW TABLES 
DESC employee -- describe the table employee in rows and column
DROP TABLE employee -- delete the table 
INSERT INTO employee VALUES (101, "Omjee", "Jaiswal",21, 25000, "New Delhi");

INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Omjee", "Jaiswal",21, 25000, "New Delhi");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("himanshu", "Jaiswal",21, 25000, "New Delhi");
 INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("jaiswal", "Jaiswal",21, 25000, "New Delhi");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("shristi", "Jaiswal",21, 25000, "New Delhi");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("riya", "Jaiswal",21, 25000, "New Delhi");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("priya", "Jaiswal",21, 25000, "New Delhi");

SELECT * FROM employee 

-- Give me the employee details having salary more than 15000 
-- DATA Retrival
SELECT * FROM employee WHERE Salary > 15000

-- fetch first name & last name whose salary where more than 15000
SELECT FirstName, LastName FROM employee WHERE SALARY > 15000

-- Give the record of the employee having age more than 25
SELECT * FROM employee WHERE age > 25; 

-- update the last name of himanshu with mandal

UPDATE employee SET LastName = "Mandal"
Where EID = 103;

-- DELETE the record od EID = 4

DELETE FROM employee
WHERE EID = 4;

-- update the salary of shristi jasiwal or EID was 105 from  25000  to 35000
UPDATE employee
SET Salary = 35000
WHERE EID = 105

 -- changeing all of the salary
 UPDATE employee
 SET Salary = 32000
 WHERE EID = 107;
 
 UPDATE employee
 SET Salary = 33000
 WHERE EID = 106;
 
 UPDATE employee
 SET Salary = 29000
 WHERE EID = 104;
 
  UPDATE employee
 SET Salary = 45000
 WHERE EID = 102;
 
  UPDATE employee
 SET Salary = 40000
 WHERE EID = 103;

SELECT * FROM employee


-- change the EID = 105 (Shristi Jaiswal) age from 21 to 25
UPDATE employee 
SET Age = 25
WHERE EID = 105;

UPDATE employee 
SET Age = 21
WHERE EID = 102;

UPDATE employee 
SET Age = 22
WHERE EID = 103;

UPDATE employee 
SET Age = 24
WHERE EID = 104;

UPDATE employee 
SET Age = 27
WHERE EID = 106;

UPDATE employee 
SET Age = 20
WHERE EID = 107;

INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("prtinka", "oswal",25, 50000, "New Delhi");

SELECT * FROM employee;


## 2 DAY SQL

show databases

USE omjeejaiswal
SHOW TABLES

-- Create a table by name of
-- course having filed name "CourseID", "CourseName" , "CourseDurationMonth", "COURSEFEE"
CREATE TABLE COURSE (
	CourseID INT AUTO_INCREMENT,
    CourseName VARCHAR(100) NOT NULL,
    CourseDurationMonth INT NOT NULL,
    CourseFee INT NOT NULL,
    PRIMARY KEY(CourseID)
);

DESC Course;

-- Insert the course details inside the table named course
-- "THE complter Excel Mastery Course", 3, 1499
-- "DSA for INterview Perpartion", 2 , 4999
-- "SQL Bootcamp" , 1 , 2999

INSERT INTO COURSE (CourseName, CourseDurationMonth, CourseFee) VALUES ("THE complter Excel Mastery Course", 3 , 1499); 
INSERT INTO COURSE (CourseName, CourseDurationMonth, CourseFee) VALUES ("DSA for INterview Perpartion", 2 , 2499);
INSERT INTO COURSE (CourseName, CourseDurationMonth, CourseFee) VALUES ("SQL Bootcamp", 1 , 3499);

SELECT * FROM COURSE

CREATE TABLE learners (
	learnerID INT AUTO_INCREMENT,
    learner_FirstName VARCHAR(50) NOT NULL,
    learner_LastName VARCHAR(50) NOT NULL,
    learner_EmailID VARCHAR(100) NOT NULL,
    learner_PhoneNO VARCHAR(10) NOT NULL,
    learner_EnrollmentDate TIMESTAMP,
    SelectedCourse INT NOT NULL,
    YearsOfExperience INT NOT NULL,
    LearnerCompany VARCHAR(50),
    SourceOfJoining VARCHAR(50) NOT NULL,
    Batch_Start_Date TIMESTAMP NOT NULL,
	Location VARCHAR(50) NOT NULL,
    PRIMARY KEY(learnerID),
    UNIQUE KEY(learner_EmailID),
    FOREIGN KEY (SelectedCourse) REFERENCES COURSE(CourseID)
);

DESC learners

-- Insert the learners details in the Learners table
-- BATCH start date '1' - '2024-08-05'
-- BATCH start date '2' - '2024-08-10'
-- BATCH start date '3' - '2024-08-15'

INSERT INTO learners

INSERT INTO learners (learner_FirstName, learner_LastName, learner_EmailID, learner_PhoneNO, learner_EnrollmentDate, SelectedCourse, YearsOfExperience, LearnerCompany, SourceOfJoining, Batch_Start_Date, Location)
VALUES ('Shristi', 'Jaiswal', 'jshristi047@gmail.com', '9898000', '2024-07-24', 1, 0, 'job', 'reference', '2024-08-05', 'New Delhi');

INSERT INTO learners (learner_FirstName, learner_LastName, learner_EmailID, learner_PhoneNO, learner_EnrollmentDate, SelectedCourse, YearsOfExperience, LearnerCompany, SourceOfJoining, Batch_Start_Date, Location)
VALUES ('om', 'Jaiswal', 'sureshjaiswla808@gmail.com', '989800', '2024-07-24', 1, 0, 'job', 'reference', '2024-08-05', 'New Delhi');

INSERT INTO learners (learner_FirstName, learner_LastName, learner_EmailID, learner_PhoneNO, learner_EnrollmentDate, SelectedCourse, YearsOfExperience, LearnerCompany, SourceOfJoining, Batch_Start_Date, Location)
VALUES ('him', 'mandal', 'him000@gmail.com', '9008000', '2024-07-24', 1, 0, 'job', 'reference', '2024-08-05', 'New Delhi');

INSERT INTO learners (learner_FirstName, learner_LastName, learner_EmailID, learner_PhoneNO, learner_EnrollmentDate, SelectedCourse, YearsOfExperience, LearnerCompany, SourceOfJoining, Batch_Start_Date, Location)
VALUES ('sahil', 'kumar', 'sahilkum00@gmail.com', '9800000', '2024-07-24', 1, 0, 'job', 'reference', '2024-08-05', 'New Delhi');

INSERT INTO learners (learner_FirstName, learner_LastName, learner_EmailID, learner_PhoneNO, learner_EnrollmentDate, SelectedCourse, YearsOfExperience, LearnerCompany, SourceOfJoining, Batch_Start_Date, Location)
VALUES ('harsh', 'bhristani', 'harsh450@gmail.com', '987888000', '2024-07-24', 1, 0, 'job', 'reference', '2024-08-05', 'New Delhi');

INSERT INTO learners (learner_FirstName, learner_LastName, learner_EmailID, learner_PhoneNO, learner_EnrollmentDate, SelectedCourse, YearsOfExperience, LearnerCompany, SourceOfJoining, Batch_Start_Date, Location)
VALUES ('himanshu', 'mandal', 'him450@gmail.com', '94988000', '2024-07-24', 1, 0, 'job', 'reference', '2024-08-05', 'New Delhi');



INSERT INTO learners (learner_FirstName, learner_LastName, learner_EmailID, learner_PhoneNO, learner_EnrollmentDate, SelectedCourse, YearsOfExperience, LearnerCompany, SourceOfJoining, Batch_Start_Date, Location)
VALUES ('Akhil', 'geroge', 'akhilgerouge@gmail.com', '94977000', '2024-07-24', 2, 0, 'job', 'reference', '2024-08-10', 'New Delhi');

INSERT INTO learners (learner_FirstName, learner_LastName, learner_EmailID, learner_PhoneNO, learner_EnrollmentDate, SelectedCourse, YearsOfExperience, LearnerCompany, SourceOfJoining, Batch_Start_Date, Location)
VALUES ('Naga', 'sai', 'sainaga@gmail.com', '9008000', '2024-07-24', 2, 1, 'job', 'reference', '2024-08-10', 'New Delhi');

INSERT INTO learners (learner_FirstName, learner_LastName, learner_EmailID, learner_PhoneNO, learner_EnrollmentDate, SelectedCourse, YearsOfExperience, LearnerCompany, SourceOfJoining, Batch_Start_Date, Location)
VALUES ('Rishikesh', 'Joshi', 'joshirishikesh@gmail.com', '911188000', '2024-07-24', 3, 2, 'job', 'reference', '2024-08-15', 'New Delhi');

SELECT * FROM learners;

SELECT * FROM COURSE;
SHOW TABLES;

-- Data Analysis [employee, COURSE, learners]
-- give me the record of the employee getting higest salary
SELECT * FROM employee 
ORDER BY Salary DESC
LIMIT 1;

-- lowest salary
SELECT * FROM employee ORDER BY Salary ASC LIMIT 2;

-- 2. GIve me the record of the employee getting highest salary and age is bigger than 25
SELECT * FROM employee
WHERE Age > 25
ORDER BY Salary DESC LIMIT 1;

-- 3. Dipsly the number of enrollments in the website of omjeejaiswal
SELECT COUNT(*) as num_of_enrollments
FROM learners;

-- 4.Display the number of enrollments for the courseid = 3[SQL Bootcamp]as
SELECT COUNT(learnerID) AS num_of_learners_SQL 
FROM learners WHERE SelectedCourse = 3;

-- 5. Count the number of learners enrolled in the month of JUNE (year-month-date)
SELECT COUNT(*) FROM learners
WHERE learner_EnrollmentDate LIKE '%-07-%';

-- on date of 07-24
SELECT COUNT(*) FROM learners
WHERE learner_EnrollmentDate LIKE '%-07-24%';

-- 6. Update the Shristi data with years of experience as 1 and larner company as "Amazon"
UPDATE learners SET YearsOfExperience = 1 , LearnerCompany = 'Amazon'
WHERE learnerID = 4;

-- 7. Count the number of companies where learners currently doing their job
-- Count -> Count of the companies
-- Unique count of the companies
SELECT COUNT(DISTINCT LearnerCompany) as distinct_companies
FROM learners;

SELECT * FROM learners;

-- update the job
UPDATE learners SET LearnerCompany = 'LinkedIn'
WHERE learnerID = 5;

UPDATE learners SET YearsOfExperience = 2, LearnerCompany = 'Youtube'
WHERE learnerID = 6;

UPDATE learners SET YearsOfExperience = 2, LearnerCompany = 'infosys'
WHERE learnerID = 7;

UPDATE learners SET YearsOfExperience = 2, LearnerCompany = 'tesla'
WHERE learnerID = 8;

UPDATE learners SET YearsOfExperience = 2, LearnerCompany = 'Youtube'
WHERE learnerID = 9; 

UPDATE learners SET YearsOfExperience = 3, LearnerCompany = 'Youtube'
WHERE learnerID = 10; 

UPDATE learners SET YearsOfExperience = 3, LearnerCompany = 'tesla'
WHERE learnerID = 11; 

UPDATE learners SET LearnerCompany = 'HCL'
WHERE learnerID = 14; 

UPDATE learners SET  LearnerCompany = 'amazon'
WHERE learnerID = 15; 

-- update the sourceOfJoining
UPDATE learners SET SourceOfJoining = 'LinkedIn'
WHERE learnerID = 5;

UPDATE learners SET SourceOfJoining = 'Youtube'
WHERE learnerID = 6;

UPDATE learners SET SourceOfJoining = 'community'
WHERE learnerID = 7;

UPDATE learners SET SourceOfJoining = 'community'
WHERE learnerID = 8;

UPDATE learners SET  SourceOfJoining = 'Youtube'
WHERE learnerID = 9; 

UPDATE learners SET SourceOfJoining = 'Youtube'
WHERE learnerID = 10; 

UPDATE learners SET SourceOfJoining = 'community'
WHERE learnerID = 11; 

UPDATE learners SET SourceOfJoining = 'LinkedIn'
WHERE learnerID = 14; 

UPDATE learners SET  SourceOfJoining = 'reference'
WHERE learnerID = 15; 


## Aggration and GROUPING
SHOW DATABASES;
use omjeejaiswal;
SHOW TABLES;

SELECT * from learners;

-- Count of the number of student who joined via LInkind, youtube, community
SELECT SourceofJoining, COUNT(*) as num_of_students
FROM learners
GROUP BY SourceOfJoining;

-- GROuping via souceofJoining and the location
SELECT SourceofJoining, Location, COUNT(*) as num_of_students
FROM learners
GROUP BY SourceOfJoining, Location;

-- corresponding to each course, how many students have enrolled
SELECT SelectedCourse, COUNT(*) AS num_of_enrollments
FROM learners
GROUP BY SelectedCourse;

-- corresponding to individual source of joing, give the maximum years of experience any for each source of joining
SELECT SourceofJoining, MAX(YearsOfExperience) AS max_years_exp
FROM learners
GROUP BY SourceofJoining ;

-- corresponding to individual source of joing, give the minimum years of experience any for each source of joining
-- It makes sense as per the industry purpose
SELECT SourceofJoining, MIN(YearsOfExperience) AS min_years_exp
FROM learners
GROUP BY SourceofJoining ;

-- corresponding to individual source of joing, give the averge experience any for each source of joining
-- IT makes sense as per the insustry purpose
SELECT SourceofJoining, AVG(YearsOfExperience) AS avg_year_exp
FROM learners
GROUP BY SourceofJoining;


-- corresponding to individual source of joing, give the summation experience any for each source of joining
-- IT does not make sense as per the insustry purpose
SELECT SourceofJoining, SUM(YearsOfExperience) AS avg_year_exp
FROM learners
GROUP BY SourceofJoining;

-- Display the records of those learners who have joined the course via more than 1 souce of joining
-- filternation is required on agrreation 
-- after gropu by apply having claues
SELECT SourceofJoining, COUNT(*) AS more_than_one
FROM learners 
GROUP BY SourceofJoining
HAVING more_than_one > 1;
-- OR
SELECT SourceofJoining, COUNT(*) AS more_than_one
FROM learners 
GROUP BY SourceofJoining
HAVING COUNT(*) > 1;

-- Display the count of those students who joined via LinkedIn
SELECT SourceofJoining, COUNT(*) AS num_of_joining
FROM learners
GROUP BY SourceofJoining 
HAVING SourceofJoining = 'LinkedIn';

-- NOTE: REMEMEBER never use where clause after GROUP BY for the fillation

-- Logical operators - AND, OR, NOT, BETWEEN

-- Display the course which does'nt include "Excel"
SELECT * FROM COURSE
WHERE CourseName NOT LIKE "%Excel%";

-- Display the record of those student who have less than 4 years of experience and source of joining is youtube and location is New Delhi
-- Multiple constraints and all of them should be stisfied, then go for AND operator in SQL
SELECT * FROM learners 
WHERE YearsOfExperience < 4
AND SourceofJoining = "Youtube" AND Location = "New Delhi";

-- display the years of those student who have years of experinece between 1 to 3 years
SELECT * FROM learners
WHERE YearsOfExperience BETWEEN 1 AND 3;

-- Display the record of those student who have less than 4 years of experience or source of joining is youtube or location is New Delhi
-- Multiple constraints and any one of them should be satisfied, then go for AND operator in SQL
SELECT * FROM learners
WHERE YearsOfExperience < 4 OR SourceofJoining = "Youtube" OR Location = "New Delhi";

-- ALTER commands in SQL
DESC employee;
ALTER TABLE employee ADD column jobPosition VARCHAR(50);
ALTER TABLE employee MODIFY column FirstName VARCHAR(40);
ALTER TABLE employee DROP column PRIMARY KEY(EID);
 



