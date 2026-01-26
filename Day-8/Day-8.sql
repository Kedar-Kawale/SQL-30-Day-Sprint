/*
Day-8 DCL- Data Control Language :

Purpose: Database SECURITY & User Permissions
Commands: GRANT (give access) + REVOKE (take back access)
Level: Beginner (like file permissions on your laptop)
*/
======================================================================
/*Running NOtes: 
1] 
Syntax of GRANT SELECT  : GRANT SELECT ON ProjectTeam TO username;

Notes: Gives someone permission to READ your ProjectTeam table
        Like: "You can VIEW this file, but cannot edit"

Query : GRANT SELECT ON ProjectTeam TO developer;   --here developer user need to be exists in db.
======================================================================
2] Syntax of GRANT INSERT : GRANT INSERT ON ProjectTeam TO username;

Notes:
Gives someone permission to ADD NEW ROWS to ProjectTeam table
Like: "You can ADD team members, but cannot delete"

Query : GRANT INSERT ON ProjectTeam TO developer;

[Now developer can:
INSERT INTO ProjectTeam (TeamMember, Role, Budget) 
VALUES ('NewDev', 'Tester', 65000);
]

======================================================================

3]Syntax of GRANT UPDATE :GRANT UPDATE ON ProjectTeam TO username;

Notes:
Gives someone permission to MODIFY existing rows in ProjectTeam table
Like: "You can change Budget/Role, but cannot delete rows"

Query : GRANT UPDATE ON ProjectTeam TO manager;

[Now manager can:
-- UPDATE ProjectTeam 
-- SET Budget = Budget * 1.1 
-- WHERE TeamMember = 'Priya Sharma';
]
======================================================================
4] Syntax of GRANT DELETE :GRANT DELETE ON ProjectTeam TO username;

Notes:
Gives someone permission to REMOVE ROWS from ProjectTeam table
Like: "You can DELETE team members (DANGEROUS!)"

Query : GRANT DELETE ON ProjectTeam TO admin;  --[use this carefully]

[Now admin can:
-- DELETE FROM ProjectTeam WHERE TeamMember = 'InactiveUser';
]
======================================================================

5] Syntax of GRANT ALL PRIVILEGES :GRANT ALL PRIVILEGES ON ProjectTeam TO username;

Notes: 
Gives someone FULL CONTROL over ProjectTeam table
= SELECT + INSERT + UPDATE + DELETE (everything!)
Like: "You own this table completely"


Query : GRANT ALL PRIVILEGES ON ProjectTeam TO superadmin; 

[
- Now superadmin can do ANYTHING:
-- SELECT, INSERT, UPDATE, DELETE - no restrictions, super admin can do anything
======================================================================

6]  Syntax of REVOKE SELECT : REVOKE SELECT ON ProjectTeam FROM username;

Nnotes: 
Takes AWAY the SELECT (read) permission from a user
Like: "Stop viewing this table!"

Query :  REVOKE SELECT ON ProjectTeam FROM analyst;  --Remove SELECT permission from analyst


[Now analyst CANNOT:
-- SELECT * FROM ProjectTeam;  -- ERROR: Permission denied!
]
======================================================================

7] Syntax of REVOKE INSERT : REVOKE INSERT ON ProjectTeam FROM username;

Notes:
Takes AWAY the INSERT (add rows) permission from a user
Like: "Stop adding new team members!"

Query : REVOKE INSERT ON ProjectTeam FROM developer;  -- Remove INSERT permission from developer

[Now developer CANNOT:
-- INSERT INTO ProjectTeam (TeamMember, Role, Budget) 
-- VALUES ('NewDev', 'Tester', 65000);  -- ERROR!
]
======================================================================
8] Syntax of REVOKE UPDATE : REVOKE UPDATE ON ProjectTeam FROM username;

Notes: 
Takes AWAY the UPDATE (modify rows) permission from a user
Like: "Stop changing budgets/roles!"

Query : REVOKE UPDATE ON ProjectTeam FROM manager;  -- Remove UPDATE permission from manager


[ Now manager CANNOT:
-- UPDATE ProjectTeam SET Budget = Budget * 1.1;  -- ERROR!
]
======================================================================

9] Syntax of REVOKE DELETE : REVOKE DELETE ON ProjectTeam FROM username;

Notes: 
Takes AWAY the DELETE (remove rows) permission from a user
Like: "Stop deleting team members!"

Query : REVOKE DELETE ON ProjectTeam FROM admin; -- Remove DELETE permission from admin

[ Now admin CANNOT:
-- DELETE FROM ProjectTeam WHERE TeamMember = 'Inactive';  -- ERROR!
]
======================================================================
10]  Syntax of REVOKE ALL PRIVILEGES :  REVOKE ALL PRIVILEGES ON ProjectTeam FROM username;

Notes:
Takes AWAY ALL permissions from a user (NUKES everything!)
Like: "You have ZERO access to this table now"
 
 Query : REVOKE ALL PRIVILEGES ON ProjectTeam FROM superadmin;  -- Remove ALL permissions from superadmin

[Now superadmin CANNOT do ANYTHING:
-- SELECT/INSERT/UPDATE/DELETE = ALL ERROR!
]

=================================END==================================================

