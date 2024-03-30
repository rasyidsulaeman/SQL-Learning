-- aliasing

SELECT Demo.EmployeeID, Demo.FirstName + ' ' + Demo.LastName AS FullName, Sal.JobTitle, Sal.Salary
FROM EmployeeDemographics AS Demo
INNER JOIN EmployeeSalary AS Sal
   ON Demo.EmployeeID = Sal.EmployeeID
WHERE Demo.Age > 30
ORDER BY Sal.Salary