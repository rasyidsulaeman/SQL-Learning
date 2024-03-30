-- Having clause

SELECT JobTitle, AVG(Salary) AS AverageSalary
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
   ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle 
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)