/*USE MSSQLPractice
GO
*/
--SELECT * INTO ProjectTeam_DML_Backup FROM ProjectTeam;
--===============================================================

--Day-7 DML: Data Manipulation Language

--Syntax of INSERT: INSERT INTO project_name (column-1,col-2,col3...) VALUES (value-1,value2, value3....); 
/*Q1 Add a data of an employee as per the story: "Priya sharma, is a working profession as a front-end Developer and curretnly working on E-Commerce Platform Project under her Project manager Pranav Shashtri. 
She has joined the project on Fifteen Auguest 2025 and earns 85 thousands per month"
*/
/*
INSERT INTO ProjectTeam 
(ProjectName,TeamMember,StartDate,Budget,ProjectManager,Role)
VALUES('E-commerce Platform', 'Divya Sharma' , '2025-08-15',85000,'Pranav Shashtri', 'Frontend developer');
GO
*/
/*
INSERT INTO ProjectTeam (ProjectName,StartDate,Budget,ProjectManager,TeamMember,Role)
VALUES('Travel Agency','2024-03-23',84000,'Vaibhav Nayar','Rashmi Deshmukh','Senior System Engineer');
GO
*/
--===================================================================

--Q-2 adding multiple records at a time: 
/*
INSERT INTO ProjectTeam (ProjectName, TeamMember, StartDate, Budget, ProjectManager, Role)
VALUES 
    ('HR Portal', 'Amit Patel', '2026-01-08', 92000, 'Sunita Rao', 'Fullstack Developer'),
    ('Mobile App', 'Sneha Gupta', '2026-01-11', 78000, 'Rahul Joshi', 'QA Engineer'),
    ('Dashboard', 'Vikram Singh', '2026-01-13', 105000, 'Neha Kapoor', 'Tech Lead'),
    ('CRM System', 'Pooja Nair', '2026-01-14', 68000, 'Amit Patel', 'UI/UX Designer'),
    ('Inventory', 'Sanjay Mehta', '2026-01-16', 89000, 'Priya Sharma', 'Backend Developer'),
    ('Analytics', 'Meera Iyer', '2026-01-17', 72000, 'Vikas Nayar', 'Data Analyst'),
    ('Payment Gateway', 'Arjun Reddy', '2026-01-19', 112000, 'Sunita Rao', 'DevOps Engineer');
    GO

    */
--===================================================================
/*Syntax of update : UPDATE [TableName] 
SET [Column-name] = your_Expression here
WHERE your-MultipleConditions here;
GO
*/

--Q3 Update a Salary hike for the Frontend role by 10% 
/*
UPDATE ProjectTeam
SET Budget = Budget * 1.10
WHERE Role =  'Frontend developer';
GO
*/
--====================================================================
--Q4 : update the budget of employee kedar kawale to 97 thousand 
/*
UPDATE ProjectTeam
SET Budget = 97000
WHERE TeamMember = 'Kedar kawale';
GO
*/
--====================================================================
/*
Syntax for multiple UPDATE at a time: 
UPDATE [TableName] 
SET [Column1] = Value1, Column2 = Value2
WHERE Condition1 OR Condition2;

*/
--Q5 Multiple Rows UPDATE Practice:
/*
UPDATE ProjectTeam
SET Budget = 97500, ProjectManager = 'Dr.Narayanan'
WHERE ProjectTeamId = 1;
GO
*/
--====================================================================

--Q6 Delete from table : Delete the 9th number record {i.e Meera Iyer Data Analytic} from the table
--Syntax of DELETE : DELETE FROM table_name [WHERE condition];

--Notes: Use 'WHERE' to specify rows to delete; omitting it deletes all rows.
/*
DELETE FROM ProjectTeam
WHERE ProjectTeamId = 9;
GO
*/
--==============================End======================================







