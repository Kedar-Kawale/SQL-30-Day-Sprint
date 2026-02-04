--Day-10: Basic Query Structure  :[SELECT-FROM-WHERE]
--Q1- Query to selects all columns for every team member from the ProjectTeam table?	
/*
SELECT * 
FROM ProjectTeam
GO
*/

--==============================================

--Q2 You want a list of only team member names from ProjectTeam.
/*
SELECT TeamMember
FROM ProjectTeam
GO
*/

--==============================================

--Q3 write a query to select the TeamMember and Role columns for every row in ProjectTeam?
/*
SELECT TeamMember, Role
FROM ProjectTeam
GO
*/

--==============================================
--Q4 Write a  query which returns only the rows where the Role is exactly 'Developer'?
/*
SELECT * 
FROM ProjectTeam
WHERE Role LIKE '%Developer%';
GO

or

SELECT *
FROM ProjectTeam
WHERE Role = 'Developer'
GO
*/
--==============================================
--Q5. write a Query to lists TeamMember and Budget only for team members with a Budget greater than 90000?
/*
SELECT TeamMember , Budget 
FROM ProjectTeam
where Budget > 90000;
GO
*/
--==============================================
--Q6 Write a query to shows all columns for team members whose Role is either 'Manager' or 'Lead'?
/*
SELECT *
FROM ProjectTeam
WHERE Role LIKE '%Manager%' OR Role LIKE '%Lead%';
GO


or

SELECT *
FROM ProjectTeam
WHERE Role IN('Manager','Lead');
GO
*/
--==============================================
--Q7 Write a  query to finds all rows where Budget is between 20000 and 80000 (inclusive)?
/*
SELECT *
FROM ProjectTeam
WHERE Budget BETWEEN 20000 AND 80000;
GO
*/
--==============================================
--Q8 You need all details for the team member named 'Rashmi Deshmukh'.
/*
SELECT * 
FROM ProjectTeam
WHERE TeamMember = 'Amit patel'
GO
*/
--==============================================

--Q9 Write a  query that retrieves only the TeamMember and Role for all rows, without any filtering?
/*
SELECT TeamMember,Role
FROM ProjectTeam;
GO
*/

--========================================End====================================================