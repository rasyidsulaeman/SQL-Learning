-- update dan delete table/row

SELECT * 
FROM EmployeeDemographics

UPDATE EmployeeDemographics
SET Age = 25, Gender = 'Female'
WHERE EmployeeID = 1012

DELETE FROM EmployeeDemographics
WHERE EmployeeID = 1013