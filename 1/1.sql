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