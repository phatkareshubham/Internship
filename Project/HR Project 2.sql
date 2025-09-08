CREATE TABLE hr_attrition (
    Age INT,
    Attrition VARCHAR(5),
    BusinessTravel VARCHAR(50),
    DailyRate INT,
    Department VARCHAR(100),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(100),
    EmployeeCount INT,
    EmployeeNumber INT,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(100),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    Over18 VARCHAR(5),
    OverTime VARCHAR(5),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);

SELECT COUNT(*) FROM hr_attrition;
SELECT * FROM hr_attrition LIMIT 10;

-- See how many rows were loaded
SELECT COUNT(*) FROM hr_attrition;

-- Preview first 10 rows
SELECT * FROM hr_attrition LIMIT 10;

-- Check total employees
SELECT COUNT(*) AS total_employees FROM hr_attrition;

-- Check columns (schema of the table)
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'hr_attrition';


-- Count of employees who left vs stayed
SELECT Attrition, COUNT(*) AS employee_count
FROM hr_attrition
GROUP BY Attrition;

-- Attrition percentage
SELECT 
    ROUND(100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM hr_attrition;

-- Attrition by Gender
SELECT Gender, Attrition, COUNT (*) AS count 
FROM hr_attrition
GROUP BY Gender, Attrition
ORDER BY Gender

-- Attrition by Age Group
SELECT
   CASE
       WHEN Age < 30 THEN 'Under 30'
	   WHEN Age BETWEEN 30 AND 40 THEN '30-40'
	   WHEN Age BETWEEN 41 AND 50 THEN '41-50'
	   ELSE '51+'
   END AS age_group,
   Attrition,
   COUNT (*) AS count
FROM hr_attrition
GROUP BY age_group, Attrition
ORDER BY age_group;

--Attrition by Department
SELECT Department, Attrition, COUNT (*) AS count
FROM hr_attrition
GROUP BY Department, Attrition
ORDER BY Department;

--Attrition by Job Role
SELECT JobRole, Attrition, COUNT(*) AS count
FROM hr_attrition
GROUP BY JobRole, Attrition
ORDER BY JobRole;

-- Average Monthly Income by Attrition
SELECT Attrition, ROUND(AVG(MonthlyIncome),2) AS avg_income
FROM hr_attrition
GROUP BY Attrition;

-- Average Salary by Department
SELECT Department, ROUND(AVG(MonthlyIncome),2) AS avg_income
FROM hr_attrition
GROUP BY Department
ORDER BY avg_income DESC;

-- Attrition by YearsAtCompany
SELECT YearsAtCompany, Attrition, COUNT(*) AS count
FROM hr_attrition
GROUP BY YearsAtCompany, Attrition
ORDER BY YearsAtCompany;

-- Attrition by JobSatisfaction
SELECT JobSatisfaction, Attrition, COUNT(*) AS count
FROM hr_attrition
GROUP BY JobSatisfaction, Attrition
ORDER BY JobSatisfaction;

-- Attrition by PerformanceRating
SELECT PerformanceRating, Attrition, COUNT(*) AS count
FROM hr_attrition
GROUP BY PerformanceRating, Attrition
ORDER BY PerformanceRating;

-- Attrition by Overtime
SELECT OverTime, Attrition, COUNT(*) AS count
FROM hr_attrition
GROUP BY OverTime, Attrition
ORDER BY OverTime;




