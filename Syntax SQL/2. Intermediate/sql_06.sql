-- case statement

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Age, JobTitle, Salary,
CASE 
   WHEN JobTitle = 'Salesman' THEN Salary + (Salary * 0.10)
   WHEN JobTitle = 'Accountant' THEN Salary + (Salary * 0.5)
   WHEN JobTitle = 'HR' THEN Salary + (Salary * 0.01)
   ELSE Salary + (Salary * 0.3)
END AS SalaryAfterRaised,
CASE 
   WHEN Age > 30 THEN 'Old'
   WHEN Age BETWEEN 27 AND 30 THEN 'Millenials'
   ELSE 'Gen Z'
END 
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
   ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID