/*USE MSSQLPractice;
GO
*/


--Q-1 write a Query to show top 3 highest salary of employees with their names 
/*
SELECT TOP 3 EmpName , Salary 
FROM Employee
ORDER BY Salary DESC;
GO
*/
--=============================================================================================
--Q-2 Write a Query that shows the  total count of all employees in the Employee table.
/*
SELECT COUNT(*) AS TotalEmployiees
FROM Employee
GO
*/

--Q-2 total count of all Departments in the Department table 
/*
SELECT COUNT(*) AS TotalDepartments
FROM Department
GO 
*/
/*
Running Notes: 'Count()' is used for to count the items
 '*' star is used to count all rows , do not skip any
 'AS' is nothing but the alias for the result column
*/
--=============================================================================================
--Q-3 Write a SQL query showing each DeptId + total number of employees in that department
/*
SELECT DeptId,COUNT(*) AS NumEmployees
FROM Employee
GROUP BY DeptId;
GO
*/
--=============================================================================================

--Q-4 Write a SQL query showing TOP 2 departments with highest number of employees.
/*
SELECT TOP 2 DeptId , COUNT(*) AS HighestEmployees
FROM Employee
GROUP BY DeptId
ORDER BY COUNT(*) DESC;
GO
*/
--=============================================================================================

--Q-5 Write a SQL query showing the TOP 1 department with the highest employee count.
/*
SELECT TOP 1 DeptId, COUNT(*) AS highemployee
FROM Employee
GROUP BY DeptId
ORDER BY COUNT(*) DESC;
GO
*/
