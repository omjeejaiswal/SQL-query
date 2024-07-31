use omjeejaiswal;

SELECT * FROM employee;

UPDATE employee
SET Location = "New York"
WHERE EID = 108;


--  for each location, what is count of each employee & avg salary of the employee in those location.alter
SELECT Location, COUNT(Location) as Total, AVG(Salary) as Avg_Salary
FROM employee GROUP BY Location;



--  for each location, what is count of each employee & avg salary of the employee in those location.alter
-- But, also display firstname & lastname corresponding to each record
SELECT FirstName, LastName, employee.Location, Total, Avg_Salary
FROM employee
JOIN
( SELECT Location, COUNT(Location) as Total, AVG(Salary) as Avg_salary
FROM employee
GROUP BY Location) AS temp
ON employee.Location = temp.location;

-- Optimise the above queries via window functions
SELECT FirstName, LastName, Location, 
COUNT(Location) OVER(PARTITION BY Location) AS Total,
AVG(Salary) OVER(PARTITION BY Location) AS Avg_salary
FROM employee;

INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ( "Jeevan", "Hedge", 27, 150000, "Nodia");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ( "tarun", "sihgn", 27, 180000, "New Delhi");

-- ROW_NUMBER vs RANK() vs DENSE_RANK

-- on basic of the salary for that we have given employee i want show my data and proties of employye , mean more salary more proties
SELECT FirstName, LastName, Salary, 
ROW_NUMBER() OVER(ORDER BY Salary DESC) AS Priority_emp
FROM employee;


SELECT FirstName, LastName, Salary, 
RANK() OVER(ORDER BY Salary DESC) AS Priority_emp
FROM employee;

SELECT FirstName, LastName, Salary, 
DENSE_RANK() OVER(ORDER BY Salary DESC) AS Priority_emp
FROM employee;

-- ROW_NUMBER: It just returns the sequence numbers starts from 1.
-- RANK: Returns the rank of each record in the current result set.
-- DENSE_RANK: It is same as Rank() function. But it returns without gaps in ranking.
-- if there is no duplicate entries in your data, then ROW_NUMBER vs RANK() vs DENSE_RANK return the same result

/* 
ROW_NUMBER 					RANK  			DENSERANK
1							1					 1
2                           1                    1
3                           1                    1
4                           4                    2
5                           4                    2
6                           6                    3
7                           7                    4
8                           8                    5 
9                           8                    5 
*/

-- give the record of the employee having second higest salary
SELECT * FROM 
(SELECT FirstName, LastName, Salary,
DENSE_RANK() OVER(ORDER BY Salary DESC) AS Priority_Emp
FROM employee) as temp
WHERE Priority_Emp = 2;


-- GIve me the first employee having second higest salary 
SELECT * FROM
(SELECT FirstName, LastName, Salary,
ROW_NUMBER() OVER(ORDER BY Salary DESC) AS Priority_Emp
FROM employee) AS temp
WHERE Priority_Emp = 2;

-- Specify the details of higest salary people in each location
SELECT * FROM
(SELECT FirstName, LastName, Salary, Location,
ROW_NUMBER() OVER( PARTITION BY Location ORDER BY Salary DESC) AS Priority_Emp
FROM employee) AS temp
WHERE Priority_Emp = 1;

-- WHich course have the highest enrollments rates?
SELECT C.CourseName, COUNT(L.learnerID) AS Total_Enrollments
FROM learners L
JOIN COURSE C ON L.SelectedCourse = C.CourseID
GROUP BY C.CourseID, C.CourseName
ORDER BY Total_Enrollments DESC
LIMIT 1;





-- how many learners are enrolled in each course
SELECT SelectedCourse, COUNT(*) AS total_learners
FROM learners
GROUP BY selectedCourse;

-- what is the total reverne generated from the course fee?
SELECT SUM(C.CourseFee) AS Total_Revenue
FROM learners L
JOIN COURSE C ON L.SelectedCourse = C.CourseID;

-- which location contribute the most to the learners enrollments?

SELECT Location, COUNT(*) AS Total_Learners
FROM learners
GROUP BY Location
ORDER BY Total_Learners DESC LIMIT 1;


-- rank learners based on their enrollments date within each course. 

SELECT learnerID, learner_FirstName, learner_LastName, SelectedCourse, learner_EnrollmentDate,
RANK() OVER(PARTITION BY SelectedCourse ORDER BY learner_EnrollmentDate) AS enroll_rank
FROM learners;

-- compare each employee salary with the average salary in their location.

SELECT FirstName, LastName, Salary, Location,
Salary - AVG(Salary) OVER(PARTITION BY Location) AS Salary_diff
FROM employee;





