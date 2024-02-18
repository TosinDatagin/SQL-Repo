

CREATE TABLE EmployeeDemograpics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50))

INSERT INTO EmployeeDemograpics VALUES
(1001, 'John', 'Peter', 30 ,  'Male'),
(1002, 'Happy', 'Victoria', 24 ,  'Female'),
(1003, 'Moses', 'Captain', 25 ,  'Male'),
(1004, 'Muyiwa', 'Akinbola', 39 ,  'Female'),
(1005, 'Precious','Lincoln', 30 ,'Female'),
(1006, 'Tosin', 'Segun', 25 ,  'Male'),
(1007, 'Frank', 'Edward', 33 ,  'Male'),
(1008, 'Leo', 'Fin', 37 ,  'Male'),
(1009, 'Luther','Martin', 36 ,  'Male')

SELECT * FROM EmployeeDemograpics


CREATE TABLE EmployeeSalary
(EmployeeID int,
JobTitle varchar (50),
Salary int)


INSERT INTO EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'HR', 50000),
(1003, 'Receptionist', 30000),
(1004, 'Accountant', 50000),
(1005, 'Salesman', 40000),
(1006, 'Regional Manager', 35000),
(1007, 'Supply Manager', 50000),
(1008, 'Accountant', 45000),
(1009, 'HR', 45000)

SELECT * FROM EmployeeSalary



 /* SELECT STATEMENT
 *, Top, Distinct, Count, As, Max, Min, Avg */

 SELECT top 5 *
FROM EmployeeDemograpics

SELECT TOP 5 EmployeeID, FirstName, LastName
FROM EmployeeDemograpics

SELECT DISTINCT(EmployeeID)
from EmployeeDemograpics

SELECT COUNT(EmployeeID) AS EmployeeCount
from EmployeeDemograpics

SELECT MAX(Salary) AS SalaryMax
FROM EmployeeSalary


 /* WHERE STATEMENT 
=, <>, <, >, And, Or, Like, Null, Not Null, In */

SELECT *
FROM EmployeeDemograpics
WHERE FirstName = 'John'


SELECT *
FROM EmployeeDemograpics
WHERE FirstName  <> 'John'  /* <> means not equal to. */


SELECT *
FROM EmployeeDemograpics
WHERE Age >= 30

SELECT *
FROM EmployeeDemograpics
WHERE Age >= 30 AND Gender = 'Female'

SELECT *
FROM EmployeeDemograpics 
WHERE FirstName LIKE 'L%'  /* Meaning where L  is the first alphabet  amongst the FirstName in the column. */


SELECT *
FROM EmployeeDemograpics
WHERE FirstName LIKE '%A%'    /* Meaning anywhere there is A in the FirstName. */

SELECT *
FROM EmployeeDemograpics
WHERE FirstName Like 'L%E%' /* Meaning where there is L or E. */

SELECT *
FROM EmployeeDemograpics
WHERE FirstName is NULL

SELECT *
FROM EmployeeDemograpics
WHERE FirstName is NOT NULL

SELECT *
FROM EmployeeDemograpics
WHERE FirstName IN ('John', 'Leo', 'Tosin')  /* The IN statement is used to replace (=) sign when selecting multiple variables. */
  
  

/* Group by & Order by */

/* The Group By Statement is similar to Distinct in that it is going to show the unique value in the statement. */

SELECT DISTINCT (Gender)
FROM EmployeeDemograpics   /* But the reality is that in those unique value, there are items hidden in them. */

SELECT (Gender)
FROM EmployeeDemograpics
Group By Gender         /* There are certain number of male and female in those gender. */

SELECT (Gender),COUNT(Gender) AS GenderCount
FROM EmployeeDemograpics
Group By Gender

SELECT Gender, Age, COUNT(Gender) AS GenderCount
FROM EmployeeDemograpics
Group By Gender, Age 

SELECT Gender, Age, COUNT(Gender) AS GenderCount
FROM EmployeeDemograpics
WHERE AGE < 30  
Group By Gender, Age   /* We can also include the WHERE STATEMENT */


/* The ORDER means how we want the variables to align whether in ASCENDING ORDER OR DESCENDING ORDER. */

SELECT *
FROM EmployeeDemograpics
Order By Age DESC, Gender DESC


SELECT *
FROM EmployeeDemograpics
Order By 4 DESC, 5 DESC  /* We can use number to represent the column we want to order as well if the table is not so large. */



 /* Inner Join, Full/Left/Right / Outer Joins */

 /* A Join is way to combine multiple tables into a single output.
When you are doing a join, you have to do it on bases of similar column. */

CREATE TABLE EmployeeDemograpics02
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50))

INSERT INTO EmployeeDemograpics02 VALUES
(1001, 'John', 'Peter', 30 ,  'Male'),
(1002, 'Happy', 'Victoria', 24 ,  'Female'),
(1003, 'Moses', 'Captain', 25 ,  'Male'),
(1004, 'Muyiwa', 'Akinbola', 39 ,  'Female'),
(1005, 'Precious','Lincoln', 30 ,'Female'),
(1006, 'Tosin', 'Segun', 25 ,  'Male'),
(1007, 'Frank', 'Edward', 33 ,  'Male'),
(1008, 'Leo', 'Fin', 37 ,  'Male'),
(1009, 'Luther','Martin', 36 ,  'Male'),
(1011, 'Vincent', 'Leo', 25, 'Male'),
(NULL,'Fish', 'Paul',NULL, NULL ),
(1013,'Andrew', 'Peter',NULL, 'Male')

SELECT * FROM EmployeeDemograpics02


CREATE TABLE EmployeeSalary02
(EmployeeID int,
JobTitle varchar (50),
Salary int)

INSERT INTO EmployeeSalary02 VALUES
(1001, 'Salesman', 45000),
(1002, 'HR', 50000),
(1003, 'Receptionist', 30000),
(1004, 'Accountant', 50000),
(1005, 'Salesman', 40000),
(1006, 'Regional Manager', 35000),
(1007, 'Supply Manager', 50000),
(1008, 'Accountant', 45000),
(1009, 'HR', 45000),
(1010, NULL, 25000),
(NULL, 'Accountant', 20000)

SELECT * FROM EmployeeSalary02


SELECT *
FROM EmployeeDemograpics02
INNER JOIN EmployeeSalary02
ON EmployeeDemograpics02.EmployeeID = EmployeeSalary02.EmployeeID

/* INNER JOINS
- It shows everything that is the same.
- It shows everything that is common or overlapping. 

FULL OUTER JOIN
- It means we are going to show everything fromTable A and Table B regardless if it has match based on what we are joining them.


LEFT OUTER JOIN 
- This is whereby everything from the left table is matched with the right table on the terms of the left table.

*/



SELECT * FROM EmployeeDemograpics02
SELECT * FROM EmployeeSalary02

/*TAKE NOTE !!!
We won't be selecting everything most of the time. */

SELECT EmployeeDemograpics02.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemograpics02
INNER JOIN EmployeeSalary02
ON EmployeeDemograpics02.EmployeeID = EmployeeSalary02.EmployeeID

SELECT EmployeeDemograpics02.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemograpics02
RIGHT OUTER JOIN EmployeeSalary02
ON EmployeeDemograpics02.EmployeeID = EmployeeSalary02.EmployeeID


SELECT * FROM EmployeeSalary02


SELECT EmployeeDemograpics02.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemograpics02
LEFT OUTER JOIN EmployeeSalary02
ON EmployeeDemograpics02.EmployeeID = EmployeeSalary02.EmployeeID


SELECT * FROM EmployeeDemograpics02


SELECT EmployeeDemograpics02.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemograpics02
FULL OUTER JOIN EmployeeSalary02
ON EmployeeDemograpics02.EmployeeID = EmployeeSalary02.EmployeeID


/* We want to know the highest paid person and 
 I don't want to deduct from my own salary. */

 SELECT EmployeeDemograpics02.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemograpics02
INNER JOIN EmployeeSalary
ON EmployeeDemograpics02.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Tosin'
ORDER BY Salary DESC


/* Michael who is an account thinks he might have 
make a mistake when looking at the AVG salary for our salesman. */

SELECT JobTitle, AVG(Salary)
AS AVGSalary
FROM EmployeeDemograpics02
INNER JOIN EmployeeSalary02
ON EmployeeDemograpics02.EmployeeID = EmployeeSalary02.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle




/* UNION , UNION ALL */

/*
- Unions and Join are somewhat related because in both instance they are combining multiple tables into one.
- The difference is that a JOIN combine tables based on a common column WHILE in Union you are able to select 
all the column from one table with another table.
- In Union, you can only combine tables that have same amount of colums and the data set are the same.
- Union can be somewhat does the work of DISTINCT because it prevent duplicate date.
*/

CREATE TABLE WareHouseEmployeeDemographics 
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50))


INSERT INTO WareHouseEmployeeDemographics VALUES
(1013, 'Berry', 'Smith', NULL, 'Female'),
(1050, 'Jacob', 'Random',35, 'Male'),
(1051, 'Vincent', 'Cobb', 27, 'Male'),
(1052, 'Robbin', 'Curry', 34, 'Female')
(1052, 'Rabbi', 'Rabbi', NULL, 'Male')


SELECT * FROM EmployeeDemograpics02
UNION ALL
SELECT * FROM WareHouseEmployeeDemographics


/* UPDATING & DELETING DATA */

/*
INSERT INTO -> This is for adding rows of data into the table in the database.
UPDATE -> This is to alter the data in the table by selecting a specific column and specifying the roll.
DELETE -> This is to delete a data within a certain row.
*/

SELECT * FROM EmployeeDemograpics02

UPDATE	EmployeeDemograpics02
SET EmployeeID = 1012
WHERE FirstName = 'Fish' AND LastName = 'Paul'

UPDATE EmployeeDemograpics02
SET Age = 30, Gender = 'Male'
WHERE FirstName = 'Fish' AND LastName = 'Paul'

UPDATE EmployeeDemograpics02
SET Age = NULL, Gender = NULL, EmployeeID = NULL
WHERE EmployeeID = 1012


/*
YOU HAVE TO BE VERY CAREFUL WHEN USING THE DELETE COMMAND 
BECAUSE WHEN YOU RUN IT, YOU CAN'T GET THE DATA BACK. 
*/

DELETE FROM EmployeeDemograpics02
WHERE EmployeeID = 1005

/* SO, THE BEST FORMAT IS THIS BELOW */

SELECT*
FROM EmployeeDemograpics02
WHERE EmployeeID = 1005   /* This will allow to know the data you are deleting */



/* CASE STATEMENT */

/* A case statement allows you to specify condition and also 
allows you to specify what you want return when that condition is met. */

SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	ELSE 'Young'
END
AS AdultSection
FROM EmployeeDemograpics02
WHERE Age is NOT NULL
ORDER BY Age

SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
AS AdultSection
FROM EmployeeDemograpics02
WHERE Age is NOT NULL
ORDER BY Age

SELECT FirstName, LastName,JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary *.10)
	WHEN JobTitle = 'HR' THEN Salary + (Salary* .5)
	WHEN JobTitle = 'Receptionist' THEN Salary + (Salary*0.005)
	ELSE Salary + (Salary * 0.00005)
END 
AS SalaryAfterRaise
FROM EmployeeDemograpics02
JOIN EmployeeSalary02
ON EmployeeDemograpics02.EmployeeID = EmployeeSalary02.EmployeeID  


/* PARTITION BY */

/*
- It is often combine with GROUP BY Statement.
- The GROUP BY STATEMENT is a little bit different because it's going to reduce the number of rows in our output by rolling them up and calculating the sum or average for each group WHILE the PARTITION BY doesn't reduce the number of rows in our table.
- In PARTITION BY we are still able to add other variables(Other Columns) while still calculating the aggregate.
- In GROUP BY STATEMENT to get the aggregate columns, we have to remove other variables.
*/

SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) 
AS TotalGender
FROM EmployeeDemograpics02
JOIN EmployeeSalary02
ON EmployeeDemograpics02.EmployeeID = EmployeeSalary02.EmployeeID


/* ALIASING 

- It is temporary changing the column name or the tail name  in  your script without it impacting your script.
- It is useful for the readability of your script basically when you begin to write large script combining several tables.

*/

/* HAVING CLAUSE */

SELECT JobTitle, COUNT(JobTitle)
FROM EmployeeDemograpics02 Demo
JOIN EmployeeSalary Sal
ON Demo.EmployeeID = Sal.EmployeeID
WHERE COUNT(JobTitle) > 1 /* You can't use WHERE STATEMENT with this aggregate. ? */
GROUP BY JobTitle 


SELECT JobTitle, COUNT(JobTitle)
FROM EmployeeDemograpics02 Demo
JOIN EmployeeSalary02 Sal
ON Demo.EmployeeID = Sal.EmployeeID
HAVING COUNT(JobTitle) > 1  /* You can't put the HAVING STATMENT before the GROUP STATEMENT. ? */
GROUP BY JobTitle


SELECT JobTitle, COUNT(JobTitle) AS JobTitleCount
FROM EmployeeDemograpics02 Demo
JOIN EmployeeSalary02 Sal
ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1  /* ? */

SELECT JobTitle, AVG(Salary)
FROM EmployeeDemograpics02 Demo
JOIN EmployeeSalary02 Sal
ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 42500 
ORDER BY AVG(Salary)

