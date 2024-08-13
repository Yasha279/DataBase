--Math functions--Part � A:---1. Display the result of 5 multiply by 30.
SELECT 5*30

--2. Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25),ABS(25),ABS(-50),ABS(50)

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2)

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2)

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT 5%2,5%3

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(3,2),POWER(4,3)

--7. Find out the square root of 25, 30 and 50.
SELECT SQRT(25),SQRT(30),SQRT(50)

--8. Find out the square of 5, 15, and 25.SELECT SQUARE(5),SQUARE(15),SQUARE(25)--9. Find out the value of PI.
SELECT PI()

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732,2),ROUND(157.732,0),ROUND(157.732,-2)

--11. Find out exponential value of 2 and 3.
SELECT EXP(2),EXP(3)

--12. Find out logarithm having base e of 10 and 2.
SELECT LOG(10),LOG(2)

--13. Find out logarithm having base b having value 10 of 5 and 100.
SELECT LOG10(5),LOG10(100)

--14. Find sine, cosine and tangent of 3.1415.
SELECT SIN(3.1415),COS(3.1415),TAN(3.1415)

--15. Find sign of -25, 0 and 25.
SELECT SIGN(-25),SIGN(0),SIGN(25)

--16. Generate random number using function.SELECT RAND()--String functions
--Part � A:-

--1. Find the length of following. (I) NULL (II) � hello � (III) Blank
SELECT LEN(NULL),LEN('HELLO'),LEN('')

--2. Display your name in lower & upper case.
SELECT LOWER('HELLO'),UPPER('HELLO')

--3. Display first three characters of your name.
SELECT SUBSTRING('HELLO',1,3)

--4. Display 3rd to 10th character of your name.
SELECT SUBSTRING('HELLO WORLD',3,10)

--5. Write a query to convert �abc123efg� to �abcXYZefg� & �abcabcabc� to �ab5ab5ab5� using REPLACE.
SELECT REPLACE('ABC123EFG',123,'XYZ'),REPLACE('ABCABCABC','C',5)

--6. Write a query to display ASCII code for �a�,�A�,�z�,�Z�, 0, 9.
SELECT ASCII('A'),ASCII('a'),ASCII('Z'),ASCII('z'),ASCII(0),ASCII(9)

--7. Write a query to display character based on number 97, 65,122,90,48,57.
SELECT CONVERT(VARCHAR(50),97),CONVERT(VARCHAR(50),65),CONVERT(VARCHAR(50),122),CONVERT(VARCHAR(50),90),CONVERT(VARCHAR(50),48),CONVERT(VARCHAR(50),57)

--8. Write a query to remove spaces from left of a given string �hello world �.
SELECT TRIM('   HELLO WORLD')

--9. Write a query to remove spaces from right of a given string � hello world �.
SELECT TRIM('HELLO WORLD    ')

--10. Write a query to display first 4 & Last 5 characters of �SQL Server�.
SELECT LEFT('SQL SERVER',4),RIGHT('SQL SERVER',5)

--11. Write a query to convert a string �1234.56� to number (Use cast and convert function).
SELECT CONVERT(DECIMAL(10,2),'1234.56')
SELECT CAST('1234' AS INT)

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
SELECT CONVERT(INT,10.58)
SELECT CAST(10.58 AS INT)

--13. Put 10 space before your name using function.
SELECT SPACE(10)+'HELLO'

--14. Combine two strings using + sign as well as CONCAT ().
SELECT CONCAT_WS('+','HELLO','WORLD')

--15. Find reverse of �Darshan�.
SELECT REVERSE('DARSHAN')

--16. Repeat your name 3 times.
SELECT REPLICATE('HELLO',3)


--Date Functions
--Part � A:-

--1. Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS TODAY_DATE

--2. Write a query to find new date after 365 day with reference to today.
SELECT DATEADD(YEAR,1,GETDATE()) 

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT FORMAT(GETDATE(),'MMM dd yyyy')

--4. Display the current date in a format that appears as 03 Jan 1995.
SELECT FORMAT(GETDATE(),'dd MMM yyyy')

--5. Display the current date in a format that appears as Jan 04, 96.
SELECT FORMAT(GETDATE(),'MMM dd, yy')

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(MONTH,'2008-12-31','2009-03-31')

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
SELECT DATEDIFF(YEAR,'2012-01-25','2010-09-14')

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(HOUR,'2012-01-25 7:00','2012-01-26 10:30')

--9. Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT DAY(GETDATE())

--10. Write a query that adds 5 years to current date.
--11. Write a query to subtract 2 months from current date.
--12. Extract month from current date using datename () and datepart () function.
--13. Write a query to find out last date of current month.
--14. Calculate your age in years and months.