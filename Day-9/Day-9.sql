/* Day-9 TCl [Transaction Control Language]
==================================================
1] BEGIN TRANSACTION: 

 * what it does ? 
=> "Start tracking my DML changes - I want UNDO option!"
Like Ctrl+Z for database operations

* Syntax of BEGIN TRANSACTION :

BEGIN TRANSACTION;
-- your DML commands here (INSERT/UPDATE/DELETE)
*/
/*
Query: 
[1.1]
BEGIN TRANSACTION;
SELECT * FROM ProjectTeam;
*/  --here we have started our transaction , 

--[1.2]
/*
SELECT @@TRANCOUNT AS transcationCOunt;  -- Shows 1 means its started and Working!
*/

--[1.3]
/*
COMMIT;
SELECT @@TRANCOUNT AS transcationCOunt;  -- Shows 0 means we have ends here and its Done!
*/

--==============================================================
/*
2]  COMMIT 

* what it does ? 
=>SAVE all my changes FOREVER! No more undo!"
Like Ctrl+S for database

* Syntax of BEGIN TRANSACTION : COMMIT;

Similar like [1.3]
*/

--==============================================================
/*
3] ROLLBACK (The UNDO button!)

* what it does ? 
=>"UNDO EVERYTHING since BEGIN TRANSACTION!"
Like Ctrl+Z for database

* Syntax : ROLLBACK;

Notes : we use this TCL function to roll back all the changes made insde the BEGIN TRANSACTION
*/
--Query in Real time- > 

-- 3.1 Start transaction
/*
BEGIN TRANSACTION;

*/

-- 3.2 Check active (should be 1)
/*

SELECT @@TRANCOUNT;

*/


-- 3.3 Make a change (Dr. Narayanan's budget)
/*
UPDATE ProjectTeam SET Budget = Budget + 200 WHERE ProjectManager = 'Dr.Narayanan'; -- Dr.narayan budget is 97500 before and we are adding 200 more 

SELECT ProjectManager, Budget FROM ProjectTeam WHERE ProjectManager = 'Dr.Narayanan';  -- New budget! 97700

*/

-- 3.4 UNDO MAGIC
/*
ROLLBACK;   -- here we have again undo our budget to 97500 for Dr. narayanan

*/

-- 3.5 Check status (should be 0)
/*
SELECT @@TRANCOUNT;
*/

-- 3.6 Verify ORIGINAL budget restored!
/*
SELECT ProjectManager, Budget FROM ProjectTeam WHERE ProjectManager = 'Dr.Narayanan';  -- Back to normal!

*/
--==============================================================
/*
Notes:

ALWAYS: BEGIN → DML → CHECK → COMMIT/ROLLBACK
NEVER: Leave @@TRANCOUNT > 0!  [i,e always end what ever you begin]

*/
--==============================================================
/*
4] SAVEPOINT 

* what it does ? 
=>"Checkpoint inside transaction - UNDO only LATER changes!"
Like multiple Ctrl+Z points

* Syntax of SAVEPOINT: 

SAVEPOINT savepoint_name;
ROLLBACK TO SAVEPOINT savepoint_name;

Note: In lemon language - savepoint is nothing but , " yaha tak save karle, uske baad vala undo/rollback kar"


--======================================End==============================






