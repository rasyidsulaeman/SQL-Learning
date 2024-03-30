-- where statement
-- =, <>, >, <, and, or, like, null, not null, in

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Toby')