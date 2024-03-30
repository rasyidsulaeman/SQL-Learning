-- partition by

SELECT Demo.FirstName, Demo.LastName, Sal.JobTitle, Demo.Gender, 
COUNT(Gender) OVER (PARTITION BY Gender) AS CountGender
FROM EmployeeDemographics AS Demo
INNER JOIN EmployeeSalary AS Sal
   ON Demo.EmployeeID = Sal.EmployeeID
