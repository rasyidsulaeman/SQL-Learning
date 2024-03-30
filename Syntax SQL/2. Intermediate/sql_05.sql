-- inner join, outer join, left outer, right outer, and full outer join
-- union

SELECT * 
FROM EmployeeDemographics

SELECT * 
FROM EmployeeSalary

SELECT *
FROM EmployeeDemographics
FULL OUTER JOIN EmployeeSalary
   ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE EmployeeDemographics.EmployeeID IS NULL