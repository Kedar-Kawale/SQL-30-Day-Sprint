--Day-11 : Difference between WHERE and HAVING

-- Lets take one Questions to understand the difference.

--Q1.Give me the Project Names which are haS budget more than 90 thousands from the "ProjectTeam" table 

/*
SELECT * FROM ProjectTeam 
WHERE Budget > 90000;
 --[WHERE clause filter records on row level, that is it checks each row one by one, if condition satisfy then takes to o/p if not then skips the record and moves to next]
 */

------------------
--Q2.Give me those departments whose average salary is greater than 5000
/*
[So in this case you can not apply the filter on each individual rows , because by just looking at one row you can not say the average is more than 5000 , so you need to use Aggregation,
so  here On the aggregated value we use "HAVING" filter to check the multiple rows at a time]
*/

/*
SELECT Dept_id , AVG(Salary)
FROM ProjectTeam
GROUP BY Dept_id 
HAVING AVG(Salary) > 1000;
*/

/*
[Notes: Whenever you have to apply filter on aggregate value then use "HAVING"
		Whenever you have to apply filter on individual rows then use "WHERE"]
*/

--=========================================End=========================================