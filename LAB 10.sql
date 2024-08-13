CREATE TABLE STUDENT_INFO(
					      RNO INT,
						  NAME VARCHAR(10),
						  BRANCH VARCHAR(10),
						  SPI DECIMAL(8,2),
						  BKLOG INT
)

DROP TABLE STUDENT_INFO

INSERT INTO STUDENT_INFO VALUES(101, 'Raju', 'CE', 8.80, 0),
							   (102, 'Amit', 'CE', 2.20, 3),
							   (103, 'Sanjay', 'ME', 1.50, 6),
							   (104, 'Neha', 'EC', 7.65, 1),
							   (105, 'Meera', 'EE', 5.52, 2),
							   (106, 'Mahesh', 'EC', 4.50, 3)

SELECT * FROM STUDENT_INFO
TRUNCATE TABLE STUDENT_INFO
--Part – A:-

--1. Create a view Personal with all columns.
CREATE VIEW VW_PERSONAL
AS SELECT * FROM STUDENT_INFO

SELECT * FROM VW_PERSONAL

--2. Create a view Student_Details having columns Name, Branch & SPI.
CREATE VIEW VW_STUDENT_DETAILS
AS SELECT NAME,BRANCH,SPI FROM STUDENT_INFO 

SELECT * FROM VW_STUDENT_DETAILS

--3. Create a view AcademicData having columns RNo, Name, Branch. 
CREATE VIEW VW_ACADEMICDATA
AS SELECT RNO,NAME,BRANCH FROM STUDENT_INFO

SELECT * FROM VW_ACADEMICDATA

--4. Create a view Student_ bklog having all columns but students whose bklog more than 2.
CREATE VIEW VW_STUDENT_BKLOG
AS SELECT * FROM STUDENT_INFO WHERE BKLOG>2

SELECT * FROM VW_STUDENT_BKLOG

--5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four
--letters.
CREATE VIEW VW_STUDENT_PATTERN 
AS SELECT RNO,NAME,BRANCH FROM STUDENT_INFO WHERE NAME LIKE'____'

SELECT * FROM VW_STUDENT_PATTERN 

--6. Insert a new record to AcademicData view. (107, Meet, ME)
INSERT INTO VW_ACADEMICDATA VALUES(107,'Meet','ME')

SELECT * FROM VW_ACADEMICDATA

--7. Update the branch of Amit from CE to ME in Student_Details view.
UPDATE VW_STUDENT_DETAILS SET BRANCH='ME' WHERE NAME='AMIT'

SELECT * FROM VW_STUDENT_DETAILS

--8. Delete a student whose roll number is 104 from AcademicData view.
DELETE FROM VW_ACADEMICDATA WHERE RNO=104

SELECT * FROM VW_ACADEMICDATA


--Part – B:-

--1. Create a view that displays information of all students whose SPI is above 8.5
CREATE VIEW VW_DISPLAY_INFO 
AS SELECT * FROM STUDENT_INFO WHERE SPI>8.5

SELECT * FROM VW_DISPLAY_INFO 

--2. Create a view that displays 0 backlog students.
CREATE VIEW VW_DISPLAY_BKLOG
AS SELECT * FROM STUDENT_INFO WHERE BKLOG=0

SELECT * FROM VW_DISPLAY_BKLOG

--3. Create a view Computerview that displays CE branch data only.
CREATE VIEW VW_COMPUTER 
AS SELECT * FROM STUDENT_INFO WHERE BRANCH='CE'

SELECT * FROM VW_COMPUTER


--Part – C:-

--1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
CREATE VIEW VW_RESULT_EC
AS SELECT NAME,SPI FROM STUDENT_INFO WHERE SPI<5 AND BRANCH='EC'

SELECT * FROM VW_RESULT_EC

--2. Update the result of student MAHESH to 4.90 in Result_EC view.
UPDATE VW_RESULT_EC SET SPI=4.90 WHERE NAME='MAHESH'

SELECT * FROM VW_RESULT_EC

--3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having
--bklogs more than 5.
CREATE VIEW VW_STU_BKLOG
AS SELECT RNO,NAME,BKLOG FROM STUDENT_INFO WHERE NAME LIKE 'M%' AND BKLOG>5

SELECT * FROM VW_STU_BKLOG

--4. Drop Computerview form the database.DROP VIEW VW_COMPUTER


--extra:-

--Perform on Table "EMP"

--1.Calculate the average salary of employees hired after 1st January, 1991. Label the column as Average_Salary_After_1991.
SELECT AVG(SALARY) AS AVERAGE_SALARY_1991 FROM EMP WHERE JOININGDATE>'1991-01-01' GROUP BY SALARY
   
--2.Find the total number of employees in each department.
SELECT DEPARTMENT,COUNT(DEPARTMENT) FROM EMP GROUP BY DEPARTMENT

--3.Display the total salary of employees in each city in descending order.
SELECT CITY,SUM(SALARY) FROM EMP GROUP BY CITY ORDER BY CITY DESC

--4.Find the total number of employees in each city.
SELECT COUNT(EID),CITY FROM EMP GROUP BY CITY 

--5.Find the highest salary among all employees.
SELECT MAX(SALARY) FROM EMP

--6.Retrieve the maximum salary from the IT department.
SELECT MAX(SALARY) FROM EMP WHERE DEPARTMENT='IT'

--7.Count the total number of distinct cities where employees reside.
SELECT COUNT(DISTINCT CITY) FROM EMP

--8.Calculate the total salary of each department.
SELECT DEPARTMENT,SUM(SALARY) FROM EMP GROUP BY DEPARTMENT

--9.Find the minimum salary of an employee residing in Ahmedabad.
SELECT MIN(SALARY) FROM EMP WHERE CITY='AHMEDABAD'
   
--10.List the departments with total salaries exceeding 50000 and located in Rajkot.
SELECT DEPARTMENT,SUM(SALARY) FROM EMP WHERE CITY='RAJKOT' GROUP BY DEPARTMENT HAVING SUM(SALARY)>50000
   
--11.List the departments with total salaries exceeding 35000 and sort the list by total salary.
SELECT DEPARTMENT,SUM(SALARY) FROM EMP GROUP BY DEPARTMENT HAVING SUM(SALARY)>35000

--12.List departments with more than two employees.
SELECT DEPARTMENT,COUNT(EID) FROM EMP GROUP BY DEPARTMENT HAVING COUNT(EID)>2

--13.Show departments where the average salary is above 25000.
SELECT DEPARTMENT,AVG(SALARY) FROM EMP GROUP BY DEPARTMENT HAVING AVG(SALARY)>25000
    
--14.Retrieve cities with employees hired before 1st January 1991.
SELECT CITY,JOININGDATE FROM EMP WHERE JOININGDATE<'1991-01-01'

--15.Find departments with a total salary between 50000 and 100000.
SELECT DEPARTMENT,SUM(SALARY) FROM EMP GROUP BY DEPARTMENT HAVING SUM(SALARY)>=50000 AND SUM(SALARY)<=100000
