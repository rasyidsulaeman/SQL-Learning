-- String function

DROP TABLE IF EXISTS EmployeeErrors
CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- TRIM, LTRIM, RTRIM
SELECT EmployeeID, TRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors

-- Replace

SELECT LastName, REPLACE(LastName,' - Fired','') as ReplacedName
FROM EmployeeErrors

/*
Substring
Fuzzy match, most of the time is not gonna work if we match into people's name, 
so instead, use it for 
Gender
Last Name
Age
DOB
*/

SELECT Err.FirstName, SUBSTRING(Err.FirstName,1,3),Demo.FirstName, SUBSTRING(Demo.FirstName,1,3)
FROM EmployeeErrors as Err
INNER JOIN EmployeeDemographics as Demo
    ON SUBSTRING(Err.FirstName,1,3) = SUBSTRING(Demo.FirstName,1,3)

-- Upper and Lower and Length

SELECT FirstName, UPPER(SUBSTRING(FirstName,1,1)) + LOWER(SUBSTRING(FirstName,2,LEN(FirstName))) as CorrectedName
FROM EmployeeErrors

-- Combined all of them
