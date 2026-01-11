Use MSSQLPractice;
Go

/*----------------Department table starts ------------------------------------------------------------*/

/* CREATE TABLE Department ( 
	DeptId  INT IDENTITY(1,1) PRIMARY KEY,
	DeptName VARCHAR(100) NOT NULL 
);
GO */

SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Department';
GO

/*----------------------------Department table ends----------------------------------*/


/*-----------------------Employee table starts -------------------------------------*/

/*CREATE TABLE Employee(
	EmpId INT IDENTITY(1,1) PRIMARY KEY,
	EmpName VARCHAR(100) NOT NULL,
	Salary DECIMAL(10,2) NOT NULL,
	DeptId INT NOT NULL,
	CONSTRAINT FK_Employee_Dept
		FOREIGN KEY (DeptId) REFERENCES Department(DeptId)
);
GO*/

/*-----------------------Employee table ends -------------------------------------*/


/*-----------------Adding sample values into the Department table -starts ----------------*/


/*INSERT INTO Department(DeptName) Values('IT') , ('HR'), ('Sales') , ('Finance'), ('Technical');
GO */


/*-----------------Adding sample values into the Department table - ends -------------------*/


/*----------------Adding sample Employee data into Employee table - starts --------------------*/


/*
INSERT INTO Employee (EmpName , Salary , DeptId) VALUES
('Rohan' , 55000, 1), --IT
('Sneha', 65000, 1), --IT
('Amit' , 48000, 2), --HR
('Priya' , 72000, 3), --Sales
('Kiran', 35000,4), --Finance
('Vikram' ,60000,5); --Technial

GO
*/
/*----------------Adding sample Employee data into Employee table - ends --------------------*/

SELECT e.EmpId, e.EmpName, e.Salary, d.DeptName
FROM Employee e
JOIN Department d ON e.DeptId = d.DeptId
ORDER BY e.Salary DESC;

GO