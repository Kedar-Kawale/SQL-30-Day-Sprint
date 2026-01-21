/*
USE MSSQLPractice;
GO
*/

--Day-6 :DDL- Data Definition language Queries 

--Syntax of CREATE: CREATE TABLE table_name (column_name datatype [constraints])
--Q1 Create a new tables with the attributes ProjectTeamId, ProjectName, TeamMember, ROle, StartDate, Budget,
/*
CREATE TABLE ProjectTeam (
	ProjectTeamId INT PRIMARY KEY IDENTITY(1,1),
	ProjectName VARCHAR(50) NOT NULL,
	TeamMember VARCHAR(100) NOT NULL,
	Role VARCHAR(30),
	StartDate DATE DEFAULT GETDATE(),
	Budget Decimal(12,2)
);
GO
*/
--=========================================================
--Syntax of ALTER+Add:  ALTER TABLE [Table] ADD [Column] [DataType]
--Q2 - Add a new column to your 'ProjectTeam' table, the column name should be "ProjectManager" , data type varchar , and this filed can be empty initially.
/*
ALTER TABLE ProjectTeam
ADD ProjectManager
VARCHAR(100);
GO
*/
--=========================================================
--Syntax of ALTER+Modify: (Syntax=> ALTER TABLE table_name ADD CONSTRAINT constraint_name UNIQUE (column)
--Q3 modify the existing column-'Budget' of your 'ProjectTeam' table
/*
ALTER TABLE ProjectTeam 
ALTER COLUMN Budget DECIMAL(12,2)
GO
*/
--=========================================================
--Syntax of ALTER+DROP: ALTER TABLE table_name DROP COLUMN column_name
--Q4 drop the column name 'Role' from the table
/*
ALTER TABLE ProjectTeam DROP COLUMN Role
GO
*/
--=========================================================
--Syntax of setting PRIMARY KEY on table: ALTER TABLE table_name ADD CONSTRAINT PK_name PRIMARY KEY (column_name on which you want to set PK)
--Q5 add a primary key for your table
/*
ALTER TABLE ProjectTeam ADD CONSTRAINT PK_ProjectTeam PRIMARY KEY(ProjectTeamId);
GO
[Note: while creation we already created the Primary Key as "ProjectTeamId" column]
*/
--=========================================================
--Syntax of Creating INDEX : CREATE INDEX index_name ON table_name (column)
--Q6 create an indexing on your "TeamMember" column
/*
CREATE INDEX IX_projectTeam_TeamMember ON ProjectTeam(TeamMember);
GO

--checking index in action
SELECT * FROM ProjectTeam
WHERE Teammember LIKE '%kedar%'; -- Indexing make our WHERE functino of filtering fast, now here the name searching is 10x faster
*/
--=========================================================
--Syntax of TRUNCATE : TRUNCATE TABLE table_name;
--Q-7 remove a table from your database, while keeping a table structure intact.
/*
TRUNCATE TABLE ProjectTeam;
GO -- this query:  TRUNCATE TABLE removes ALL rows from a table but keeps the table structure intact.

[Notes: What happens whn you run this TRUNCATE query:]
✅ Deletes ALL data/rows instantly  
✅ Keeps table structure (columns, constraints, indexes)
✅ Resets IDENTITY column back to 1 (next INSERT = ID 1)
✅ Frees disk space immediately
❌ Cannot use WHERE clause (either you remove all or nothing)
❌ Cannot rollback (unlogged operation-i.e you once execute you will never get back your data)
*/
--=========================================================
--Syntax of DELETE ; DELETE FROM table_name WHERE condition;

/*
DELETE FROM ProjectTeam WHERE ProjectManager LIKE '%John Doe%'; -- this will delete the entire rwo from the db.
*/
/*
[NOtes:what happens when you run DELETE ]
✅ Deletes SELECTED rows only (WHERE clause required)
✅ Keeps table structure (columns, constraints, indexes)  
✅ Logs every row deletion (you can ROLLBACK)
✅ Keeps IDENTITY current value (doesn't reset)
✅ Supports WHERE, JOINs, TOP, subqueries
when you use DELETE , it executes on the entire 'Row' which means you can not delete specific column values by using DELETE
*/
--=========================================================
--Syntax of DROP: DROP TABLE table_name;
/*
DROP TABLE ProjectTeam;  this destruct everything which is associated with your "ProjectTeam" Table.
GO
*/
/*
[Notes: what happens if you use DROP- Its a Nuclear Options]
💥 Table structure (ALL columns gone)
💥 ALL data/rows (forever.. tata bye bye khatam..)
💥 Indexes (PK, UNIQUE, IX_ all destroyed)  
💥 Constraints (FK relationships broken)
💥 Triggers, permissions - EVERYTHING
*/
--============================End=============================













