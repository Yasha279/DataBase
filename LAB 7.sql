CREATE TABLE EMP(
				EID INT,
				ENAME VARCHAR(25),
				DEPARTMENT VARCHAR(25),
				SALARY INT,
				JOININGDATE DATE,
				CITY VARCHAR(25)
				)

INSERT INTO EMP VALUES
                      (101, 'Rahul', 'Admin', 56000, '1990-01-01', 'Rajkot'),
					  (102, 'Hardik', 'IT', 18000, '1990-09-25', 'Ahmedabad'),
					  (103, 'Bhavin', 'HR', 25000, '1991-05-14', 'Baroda'),
					  (104, 'Bhoomi', 'Admin', 39000, '1991-02-08', 'Rajkot'),
					  (105, 'Rohit', 'IT', 17000, '1990-07-23', 'Jamnagar'),
					  (106, 'Priya', 'IT', 9000, '1990-10-18', 'Ahmedabad'),
					  (107, 'Bhoomi', 'HR', 34000, '1991-12-25', 'Rajkot')

SELECT * FROM EMP

--PART-A:-

--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS MAXIMUM, MIN(SALARY) AS MINIMUM FROM EMP

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,
--respectively.
SELECT SUM(SALARY) AS TOTAL_SAL, AVG(SALARY) AS AVERAGE_SAL FROM EMP

--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(EID) AS COUNT_EMP FROM EMP

--4. Find highest salary from Rajkot city.
SELECT MAX(SALARY) AS MAX_SAL FROM EMP WHERE CITY='RAJKOT' GROUP BY CITY

--5. Give maximum salary from IT department.
SELECT MAX(SALARY) AS MAX_SAL FROM EMP WHERE DEPARTMENT='IT' GROUP BY DEPARTMENT

--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(JOININGDATE) AS COUNT_DATE FROM EMP WHERE JOININGDATE>'8-FEB-91'

--7. Display average salary of Admin department.
SELECT AVG(SALARY) AS AVG_SALARY FROM EMP WHERE DEPARTMENT='ADMIN' GROUP BY DEPARTMENT

--8. Display total salary of HR department.
SELECT SUM(SALARY) AS SUM_SALARY FROM EMP WHERE DEPARTMENT='HR' GROUP BY DEPARTMENT

--9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) AS UNIQUE_COUNT FROM EMP

--10. Count unique departments.
SELECT COUNT(DISTINCT DEPARTMENT) AS UNIQUE_COUNT FROM EMP

--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) AS MIN_SALARY FROM EMP WHERE CITY='AHMEDABAD' GROUP BY CITY

--12. Find city wise highest salary.
SELECT MAX(SALARY) AS MAX_SALARY FROM EMP GROUP BY CITY

--13. Find department wise lowest salary.
SELECT MIN(SALARY) AS MIN_SALARY FROM EMP GROUP BY DEPARTMENT

--14. Display city with the total number of employees belonging to each city.
SELECT COUNT(EID) AS COUNT_CITY FROM EMP GROUP BY CITY

--15. Give total salary of each department of EMP table.
SELECT SUM(SALARY) AS SUM_SALARY FROM EMP GROUP BY DEPARTMENT

--16. Give average salary of each department of EMP table without displaying the respective department
--name.SELECT AVG(SALARY) AS AVG_SAL FROM EMP GROUP BY DEPARTMENT--PART-B:---1. Count the number of employees living in Rajkot.
SELECT COUNT(EID) AS COUNT_EID FROM EMP WHERE CITY='RAJKOT' GROUP BY CITY

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY)-MIN(SALARY) AS DIFFERENCE FROM EMP

--3. Display the total number of employees hired before 1st January, 1991.SELECT COUNT(EID) AS COUNT_EID FROM EMP WHERE JOININGDATE<'1-JAN-91' GROUP BY JOININGDATE--PART-C:---1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(EID) AS COUNT_EID FROM EMP WHERE CITY IN('RAJKOT','BARODA') GROUP BY CITY

--2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(EID) AS COUNT_EID FROM EMP WHERE JOININGDATE<'1-JAN-91' AND DEPARTMENT='IT'

--3. Find the Joining Date wise Total Salaries.
SELECT SUM(SALARY) AS SUM_SAL FROM EMP GROUP BY JOININGDATE

--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT MAX(SALARY) AS MAX_SALARY FROM EMP WHERE CITY LIKE 'R%' GROUP BY DEPARTMENT,CITY

--EXTRA QUERY:-
--find out department wise highest paid employee name.
SELECT MAX(SALARY) AS HIGHEST FROM EMP GROUP BY DEPARTMENT