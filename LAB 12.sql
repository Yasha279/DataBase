-------------------------------------LAB 12-------------------------------------------

CREATE TABLE Dept (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE,
    DepartmentCode VARCHAR(50) NOT NULL UNIQUE,
    Location VARCHAR(50) NOT NULL
);
SELECT * FROM DEPT
CREATE TABLE Person (
	PersonID INT PRIMARY KEY,
    PersonName VARCHAR(100) NOT NULL,
    DepartmentID INT NULL,
    Salary DECIMAL(8, 2) NOT NULL,
    JoiningDate DATETIME NOT NULL,
    City VARCHAR(100) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Dept(DepartmentID)
);
SELECT * FROM PERSON
INSERT INTO Dept (DepartmentID, DepartmentName, DepartmentCode, Location) VALUES
(1, 'Admin', 'Adm', 'A-Block'),
(2, 'Computer', 'CE', 'C-Block'),
(3, 'Civil', 'CI', 'G-Block'),
(4, 'Electrical', 'EE', 'E-Block'),
(5, 'Mechanical', 'ME', 'B-Block');

INSERT INTO Person (PersonID, PersonName, DepartmentID, Salary, JoiningDate, City) VALUES
(101, 'Rahul Tripathi', 2, 56000, '2000-01-01', 'Rajkot'),
(102, 'Hardik Pandya', 3, 18000, '2001-09-25', 'Ahmedabad'),
(103, 'Bhavin Kanani', 4, 25000, '2000-05-14', 'Baroda'),
(104, 'Bhoomi Vaishnav', 1, 39000, '2005-02-08', 'Rajkot'),
(105, 'Rohit Topiya', 2, 17000, '2001-07-23', 'Jamnagar'),
(106, 'Priya Menpara', NULL, 9000, '2000-10-18', 'Ahmedabad'),
(107, 'Neha Sharma', 2, 34000, '2002-12-25', 'Rajkot'),
(108, 'Nayan Goswami', 3, 25000, '2001-07-01', 'Rajkot'),
(109, 'Mehul Bhundiya', 4, 13500, '2005-01-09', 'Baroda'),
(110, 'Mohit Maru', 5, 14000, '2000-05-25', 'Jamnagar');

--PART-A:-

--1. Find all persons with their department name & code.
SELECT P.PersonName ,D.DEPARTMENTCODE
FROM PERSON P
JOIN DEPT D
ON P.DepartmentID=D.DepartmentID

--2. Find the person's name whose department is in C-Block.
SELECT P.PERSONNAME
FROM PERSON P
JOIN DEPT D
ON P.DepartmentID=D.DepartmentID
WHERE D.LOCATION='C-BLOCK'

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
SELECT P.PERSONNAME,P.SALARY,D.DEPARTMENTID
FROM PERSON P
JOIN DEPT D
ON P.DepartmentID=D.DepartmentID
WHERE P.City='JAMNAGAR'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.
SELECT P.PersonName,P.Salary,D.DepartmentName
FROM PERSON P
JOIN DEPT D
ON P.DepartmentID=D.DepartmentID
WHERE P.City!='RAJKOT'

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
SELECT P.PersonName
FROM PERSON P
JOIN DEPT D
ON P.DepartmentID=D.DepartmentID
WHERE P.JoiningDate>'2001-08-01' AND D.DepartmentName='CIVIL'

--6. Find details of all persons who belong to the computer department.
SELECT P.*
FROM PERSON P
JOIN DEPT D
ON P.DepartmentID=D.DepartmentID
WHERE D.DepartmentName='COMPUTER'

--7. Display all the person's name with the department whose joining date difference with the current date is more than 365 days.
SELECT P.PersonName,D.DepartmentName
FROM PERSON P
JOIN DEPT D
ON P.DepartmentID=D.DepartmentID
WHERE P.JoiningDate-GETDATE()>365

--8. Find department wise person counts.
SELECT D.DepartmentName,COUNT(P.PersonID)
FROM PERSON P
JOIN DEPT D
ON P.DepartmentID=D.DepartmentID
GROUP BY DepartmentName

--9. Give department wise maximum & minimum salary with department name.
SELECT D.DepartmentName,MAX(P.Salary)
FROM PERSON P
JOIN DEPT D
ON P.DepartmentID=D.DepartmentID
GROUP BY DepartmentName

--10. Find city wise total, average, maximum and minimum salary.
SELECT CITY,SUM(SALARY) AS TOTAL,AVG(SALARY) AS AVG,MAX(SALARY) AS MAX,MIN(SALARY) AS MIN
FROM PERSON
GROUP BY CITY

--11. Find the average salary of a person who belongs to Ahmedabad city.
SELECT AVG(SALARY) AS AVG,CITY 
FROM PERSON
WHERE CITY='AHMEDABAD'
GROUP BY CITY

--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In
--single column)
SELECT CONCAT(P.PersonName , ' LIVES IN ' , P.CITY , ' AND WORKS IN ' , D.DepartmentName , ' DEPARTMENT')
FROM PERSON P
JOIN DEPT D
ON P.DepartmentID=D.DepartmentID
