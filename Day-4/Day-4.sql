
/*USE MSSQLPractice
GO
*/
--====================
-- Day4 - SQL practice Q 
--Q-1 Write a SQL query showing each DeptId + total salary (SUM) of all employees in that department.
/*
SELECT DeptId, SUM(Salary) AS TotalSalary 
FROM Employee
GROUP BY DeptId;
GO
*/
--====================================================================================================
--Q-2 Write a SQL query showing each DeptId + average salary (AVG) of employees in that department.
/*
SELECT DeptId,ROUND(AVG(Salary), 0) As averageSalary 
FROM Employee
GROUP BY DeptId
GO
*/
/*[Running Notes: ROUND(number, decimals) rounds to SPECIFIED decimal places
- ROUND(123.456, 0) = 123     ✓ (no decimals)
- ROUND(123.456, 2) = 123.46  ✓ (2 decimals) 
- ROUND(123.456, 1) = 123.5   ✓ (1 decimal)]
*/

--====================================================================================================
--Q-3 write a Query to Find the Minimum salary in each department
/*
SELECT DeptId , MIN(Salary) AS MinimumSalary
FROM Employee
GROUP BY DeptId;
GO
*/
--====================================================================================================
--Q4 write a query to find the Maximum salary in each department
/*
SELECT DeptId , MAX(Salary) AS MaximumSalary
FROM Employee
GROUP BY DeptId;
GO
*/
--====================================================================================================
--Q-5 write a query to find out How many employees are in each department?
/*
SELECT DeptId, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY DeptId
GO
*/
--====================================================================================================
--Q-6  write SQL query to Find out departments with MORE THAN 2 employees only:
/*
SELECT DeptId, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY DeptId
HAVING COUNT(*) > 2 ;
GO
*/

--====================================================================================================
--Q7 Show departments where AVG salary > 50,000 only
/*
SELECT DeptId, AVG(Salary) AS AvergeSalary
FROM Employee
GROUP BY DeptId
HAVING AVG(Salary) > 50000;
GO
*/
--====================================================================================================

--Q8 find departments that are either more than 3 employees or average salary is more than sixty five thousands
/*
SELECT DeptId , COUNT(*) AS Employeecount , AVG(Salary) AS AvrgSalary
FROM Employee
GROUP BY DeptId
HAVING COUNT(*) > 2 OR AVG(Salary) > 65000;
*/
--====================================================================================================

--Q-9 Show departments sorted by employee count (largest first):
/*
SELECT DeptId , COUNT(*) AS employeecount
 FROM Employee
 GROUP BY DeptId
 ORDER BY COUNT(*) DESC ;
 GO

 [RUnning NOtes: COUNT(*) Vs COUNT(Primary_Key)
 -we 99% use COUNT(*) as it counts null records also
 -COUNT(Primary_Key)  Ex: COUNT(EmpId) will only count the employees who has EmpId, if any employee does not have a value then it will skip that record
 ]
 */
 --====================================================================================================
 --Q-10 Show ALL department stats, sorted by employee count DESC, but filter for avg salary > 40k
 /*
 SELECT DeptId, COUNT(*) AS employeecount , AVG(Salary) AS AvrgSalary
 FROM Employee
 GROUP BY DeptId
 HAVING AVG(Salary) > 40000 
 ORDER BY COUNT(*) DESC, AVG(Salary) DESC;
 GO
 */

 --------------------------------------------------------end------------------------------------------------


