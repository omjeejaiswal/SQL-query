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
 
