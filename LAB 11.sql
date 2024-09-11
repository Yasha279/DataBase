CREATE TABLE STU_INFO(
                      RNO INT,
					  NAME VARCHAR(20),
					  BRANCH VARCHAR(20)
					  )

INSERT INTO STU_INFO VALUES(101, 'Raju', 'CE'),
                      (102, 'Amit', 'CE'),
					  (103, 'Sanjay', 'ME'),
					  (104, 'Neha', 'EC'),
					  (105, 'Meera', 'EE'),
					  (106, 'Mahesh', 'ME')

CREATE TABLE RESULT(
                    RNO INT,
					SPI DECIMAL(10,2)
					)

INSERT INTO RESULT VALUES(101, 8.8),
                         (102, 9.2),
						 (103, 7.6),
						 (104, 8.2),
						 (105, 7.0),
						 (107, 8.9)
						  
CREATE TABLE EMPLOYEE_MASTER(
							 EMPLOYEE_NO VARCHAR(20),
							 NAME VARCHAR(20),
							 MANAGER_NO VARCHAR(20)
							 )

INSERT INTO EMPLOYEE_MASTER VALUES('E01', 'Tarun', NULL),
								  ('E02', 'Rohan', 'E02'),
								  ('E03', 'Priya', 'E01'),
								  ('E04', 'Milan', 'E03'),
								  ('E05', 'Jay', 'E01'),
								  ('E06', 'Anjana', 'E04')

--Part – A:-

--1. Combine information from student and result table using cross join or Cartesian product.
SELECT * FROM STU_INFO S
CROSS JOIN RESULT R

--2. Perform inner join on Student and Result tables.
SELECT * FROM STU_INFO S
INNER JOIN RESULT R
ON S.RNO=R.RNO

--3. Perform the left outer join on Student and Result tables.
SELECT * FROM STU_INFO S
LEFT OUTER JOIN RESULT R
ON S.RNO=R.RNO

--4. Perform the right outer join on Student and Result tables.
SELECT * FROM STU_INFO S
RIGHT OUTER JOIN RESULT R
ON S.RNO=R.RNO

--5. Perform the full outer join on Student and Result tables.
SELECT * FROM STU_INFO S
FULL OUTER JOIN RESULT R
ON S.RNO=R.RNO

--6. Display Rno, Name, Branch and SPI of all students.
SELECT S.RNO,S.NAME,S.BRANCH,R.SPI FROM STU_INFO S
INNER JOIN RESULT R
ON S.RNO=R.RNO

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
SELECT S.RNO,S.NAME,S.BRANCH,R.SPI FROM STU_INFO S
INNER JOIN RESULT R
ON S.RNO=R.RNO
WHERE BRANCH='CE'

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
SELECT S.RNO,S.NAME,S.BRANCH,R.SPI FROM STU_INFO S
INNER JOIN RESULT R
ON S.RNO=R.RNO
WHERE BRANCH != 'EC'

--9. Display average result of each branch.
SELECT AVG(R.SPI) AS AVG_SALARY,S.BRANCH FROM STU_INFO S
INNER JOIN RESULT R 
ON S.RNO=R.RNO
GROUP BY BRANCH

--10. Display average result of CE and ME branch.
SELECT AVG(R.SPI) AS AVG_SALARY,S.BRANCH FROM STU_INFO S
INNER JOIN RESULT R 
ON S.RNO=R.RNO
WHERE BRANCH IN('CE','ME')
GROUP BY BRANCH


--Part – B:-

--1. Display average result of each branch and sort them in ascending order by SPI.
SELECT AVG(R.SPI) AS AVG_SALARY,S.BRANCH FROM STU_INFO S
INNER JOIN RESULT R 
ON S.RNO=R.RNO
WHERE BRANCH IN('CE','ME')
GROUP BY BRANCH
ORDER BY AVG(R.SPI)

--2. Display highest SPI from each branch and sort them in descending order.
SELECT MAX(R.SPI) AS AVG_SALARY,S.BRANCH FROM STU_INFO S
INNER JOIN RESULT R 
ON S.RNO=R.RNO
WHERE BRANCH IN('CE','ME')
GROUP BY BRANCH
ORDER BY AVG(R.SPI) DESC


--Part – C:-

--1. Retrieve the names of employee along with their manager’s name from the Employee table.SELECT E.NAME,M.NAME  FROM EMPLOYEE_MASTER EINNER JOIN EMPLOYEE_MASTER MON E.EMPLOYEE_NO=M.MANAGER_NO