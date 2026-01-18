/*USE MSSQLPractice
GO
*/
--topic Day-5 : Scalar SubQueries 
--Q1 Find all employees whose salary is above the company-wide average salary.
/*
SELECT EmpName,Salary,DeptId 
FROM Employee
WHERE Salary > (SELECT AVG(Salary)FROM Employee);
GO

note:This is a Subqueries we used insde the WHERE clause.
*/

--=====================================================================================

--Q2 find out a List of  employees earning more than their department's average salary. Show EmpName, Salary, DeptId.
/*
SELECT EmpName, Salary , DeptId
FROM Employee e1
WHERE Salary > (SELECT AVG(Salary) FROM Employee e2 WHERE e1.DeptId =e2.DeptId)
GO
notes: we used the co-related query here , same "Employee" table twice.
*/
--=====================================================================================

--Q3 Find the second highest salary in the company (single value only).
/*
SELECT MAX(Salary)
FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee);
GO
*/

--Q3.1 find the second highest salary in the company along with the name of employee (single value only)
/*
SELECT EmpName , Salary
FROM Employee
WHERE Salary = (
				SELECT MAX(Salary) AS SecondHighestSalary
				FROM Employee
				WHERE Salary < (SELECT MAX(Salary) FROM Employee)
				);
GO
note:this is called giving extension to the queries according to requirments.
*/
--=====================================================================================

--Q4.Show DeptId and second highest salary for each department.
/*
	SELECT DeptId, MAX(Salary) AS secondhighestsalary
	FROM Employee e1
	WHERE Salary < (SELECT MAX(Salary) FROM Employee e2 WHERE e1.DeptId =e2.DeptId)
	GROUP BY DeptId;

GO
*/
--=====================================================================================

--Q5 find out the highest paid employee per department , and show the Employee name , its Department id and Salary
/*
SELECT EmpName, DeptId , Salary 
FROM Employee e1
WHERE Salary = (SELECT MAX(Salary) FROM Employee e2 WHERE e1.DeptId = e2.DeptId) -- this is Sub-Query
ORDER BY DeptId ASC;
GO
*/
--=====================================================================================

--Q6 find out the departments where Average salary exceeds the company wide average
/*
SELECT DeptId, AVG(Salary) AS averageSalary
FROM Employee
GROUP BY DeptId
HAVING AVG(Salary) > (SELECT AVG(Salary) FROM Employee); -- the subquery calculates company wide average one time only.
GO
*/
--=====================================================================================

--Q7 write a query to number all the employees by their Salary, (highest salary no. should 1 )
/*
SELECT EmpName, Salary,
ROW_NUMBER() OVER (ORDER BY Salary DESC) AS Rank
FROM Employee;
GO
--ROW_NUMBER() numbers rows and not columns  [Syntax=>]  ROW_NUMBER() OVER (ORDER BY some_column)
*/
--=====================================================================================
--Q8 write a query to number employees within each department(restart per DeptId)

/*
SELECT EmpName, Salary, DeptId,
       ROW_NUMBER() OVER (PARTITION BY DeptId ORDER BY Salary DESC) AS DeptRank
FROM Employee;
*/

/*
Notes:
PARTITION BY DeptId = Restart numbering for EACH department (1,2,3...)
ORDER BY Salary DESC = HIGHEST salary = #1,  for each department order by in highest to lowest
ROW_NUMBER() = Assigns rank 1,2,3... based on ORDER BY
---------

1] ROW_NUMBERS() 
- Numbers rows: 1,2,3...
- REQUIRES: OVER (ORDER BY column)
- Example: ROW_NUMBER() OVER (ORDER BY Salary DESC)

2] PARTITION BY
- RESTARTS numbering per group
- Example: PARTITION BY DeptId = new rank 1 for each dept
- Without: numbers entire table once
- With: numbers restart per department

Exampples: 
 1] Company-wide ranking
ROW_NUMBER() OVER (ORDER BY Salary DESC)

 2] Per-department ranking  
ROW_NUMBER() OVER (PARTITION BY DeptId ORDER BY Salary DESC)
-- Sneha=1, Rohan=2 | Kedar=1, Amit=2 (restarts!)

*/

--=====================================================================================






