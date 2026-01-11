/*SQL Basic Queries for the Begineers */


--Q1. Show all column from the Employee table:
/*
SELECT * FROM Employee
GO
*/

-- Q-2 Show  all collumn from the Department table:
/*SELECT * FROM Department
GO
*/

--Q-3 show Employees with salary is greater than 55000
/*SELECT * FROM Employee
WHERE Salary > 55000;
GO
*/

--Q4 Write a SQL query to show all columns from the Employee table for employees who belong to Department ID = 1 only.
/*SELECT * FROM Employee
WHERE DeptId = 1;
GO
*/

--Q5-Write a SQL query to show all columns from the Employee table, sorted by Salary from highest to lowest.
/*
SELECT * FROM Employee
ORDER BY Salary DESC;
GO
*/

/*Q-6 Write a SQL query to show all columns from the Employee table, sorted first by DeptId in ascending order (1,2,3...),
and then within each department, by Salary in descending order (highest salary first).
*/
/*
SELECT * FROM Employee
ORDER BY DeptId ASC , Salary DESC ;
GO
*/

--Q7-Write a SQL query to show only the TOP 3 employees with the highest Salary from the Employee table (all columns).
/*
SELECT TOP 3 * FROM Employee
ORDER BY Salary DESC;
GO
*/

--Q8-Write a SQL query to show all employee names converted to Uppercase.
/*
SELECT UPPER(EmpName) FROM Employee
GO
*/

--q-9 Write a SQL query to only show first two employee names converted to Uppercase
/*
SELECT TOP 2  UPPER(EmpName) FROM Employee
GO
*/

--Q-10;Write a SQL query to show employees whose name starts with 'R' using LIKE.
/*
SELECT * FROM Employee
WHERE EmpName LIKE 'K%'     -- K% meaning Starts with K → K***an 
							-- %K meaning ends with K -> Vis**K
							--%K% meaning COntains K anywhere -> kedar/ Vishakha / etc
GO
*/
