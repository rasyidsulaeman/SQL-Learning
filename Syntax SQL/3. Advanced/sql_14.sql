-- Stored Procedures and Use Cases

CREATE PROCEDURE Temp_Employee
AS 
CREATE TABLE #temp_employee
(
    JobTitle varchar(50),
    CountJobTitle int,
    AvgAge int,
    AvgSalary int
)

INSERT INTO #temp_employee
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM EmployeeDemographics as Demo
INNER JOIN EmployeeSalary as Sal 
    ON Demo.EmployeeID = Sal.EmployeeID
Group BY JobTitle

SELECT * FROM #temp_employee

--EXEC Temp_Employee @JobTitle = 'Salesman'