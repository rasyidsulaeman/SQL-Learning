-- group by, order by


SELECT Gender, Age, Count(Gender) as CountGender
FROM EmployeeDemographics
WHERE Age >= 30
GROUP BY Gender, Age
ORDER BY Gender 