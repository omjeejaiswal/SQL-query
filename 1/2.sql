show databases;

USE omjeejaiswal;
SHOW TABLES;

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