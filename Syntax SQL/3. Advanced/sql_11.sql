-- CTE

WITH CTE_Employee AS
(
    SELECT Demo.FirstName, Demo.LastName, Sal.JobTitle, Demo.Gender, 
    COUNT(Gender) OVER (PARTITION BY Demo.Gender) AS CountGender,
    AVG(Sal.Salary) OVER (PARTITION BY Sal.Salary) AS AverageSalary
    FROM EmployeeDemographics AS Demo
    INNER JOIN EmployeeSalary AS Sal
        ON Demo.EmployeeID = Sal.EmployeeID
    WHERE Sal.Salary > 45000
)

SELECT FirstName, AverageSalary
FROM CTE_Employee