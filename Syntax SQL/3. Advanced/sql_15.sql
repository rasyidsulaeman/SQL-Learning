-- subqueries (in select, from, and where statement)

SELECT * 
From EmployeeSalary

-- subqueries select
SELECT EmployeeID, Salary, 
(SELECT AVG(Salary) FROM EmployeeSalary) AS AllAvgSalary
FROM EmployeeSalary

-- partition by
SELECT EmployeeID, Salary, AVG(Salary) OVER() AS AllAvgSalary
FROM EmployeeSalary

-- group by
SELECT EmployeeID, Salary, AVG(Salary) AS AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary

-- subqueries from
SELECT subfrom.EmployeeID, subfrom.AllAvgSalary
FROM (
    SELECT EmployeeID, Salary, AVG(Salary) OVER() AS AllAvgSalary
FROM EmployeeSalary
) as subfrom

-- subqueries where
SELECT *
FROM EmployeeSalary as sal
WHERE EmployeeID in (
    SELECT demo.EmployeeID
    FROM EmployeeDemographics as demo
    WHERE demo.Age > 30
)