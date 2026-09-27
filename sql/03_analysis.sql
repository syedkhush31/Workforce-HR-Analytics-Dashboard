-- ============================================================
-- Workforce HR Analytics Dashboard
-- File: 03_analysis.sql
-- Purpose: Core workforce and attrition analysis
-- ============================================================

USE workforce_hr_analytics;

-- ============================================================
-- 1. TOTAL EMPLOYEES
-- ============================================================

SELECT
    COUNT(*) AS total_employees
FROM employees_cleaned;


-- ============================================================
-- 2. EMPLOYEES WHO LEFT
-- ============================================================

SELECT
    COUNT(*) AS employees_left
FROM employees_cleaned
WHERE Attrition = 'Yes';


-- ============================================================
-- 3. EMPLOYEES WHO STAYED
-- ============================================================

SELECT
    COUNT(*) AS employees_stayed
FROM employees_cleaned
WHERE Attrition = 'No';


-- ============================================================
-- 4. OVERALL ATTRITION RATE
-- ============================================================

SELECT
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned;


-- ============================================================
-- 5. AVERAGE AGE
-- ============================================================

SELECT
    ROUND(AVG(Age), 2) AS average_age
FROM employees_cleaned;


-- ============================================================
-- 6. AVERAGE MONTHLY INCOME
-- ============================================================

SELECT
    ROUND(AVG(MonthlyIncome), 2) AS average_monthly_income
FROM employees_cleaned;


-- ============================================================
-- 7. AVERAGE YEARS AT COMPANY
-- ============================================================

SELECT
    ROUND(AVG(YearsAtCompany), 2) AS average_years_at_company
FROM employees_cleaned;

SELECT
    Department,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY Department
ORDER BY attrition_rate_percent DESC;

SELECT
    OverTime,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY OverTime
ORDER BY attrition_rate_percent DESC;

SELECT
    JobRole,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY JobRole
ORDER BY attrition_rate_percent DESC;

SELECT
    JobLevel,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY JobLevel
ORDER BY JobLevel;

SELECT
    CASE
        WHEN Age < 25 THEN 'Under 25'
        WHEN Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS age_group,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY
    CASE
        WHEN Age < 25 THEN 'Under 25'
        WHEN Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END
ORDER BY
    CASE
        WHEN age_group = 'Under 25' THEN 1
        WHEN age_group = '25-34' THEN 2
        WHEN age_group = '35-44' THEN 3
        WHEN age_group = '45-54' THEN 4
        ELSE 5
    END;
    
    SELECT
    JobSatisfaction,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

SELECT
    WorkLifeBalance,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;

SELECT
    BusinessTravel,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY BusinessTravel
ORDER BY attrition_rate_percent DESC;

SELECT
    Gender,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY Gender
ORDER BY attrition_rate_percent DESC;

SELECT
    MaritalStatus,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY MaritalStatus
ORDER BY attrition_rate_percent DESC;

SELECT
    Education,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY Education
ORDER BY Education;

SELECT
    EducationField,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY EducationField
ORDER BY attrition_rate_percent DESC;

SELECT
    CASE
        WHEN DistanceFromHome <= 5 THEN '0-5'
        WHEN DistanceFromHome <= 10 THEN '6-10'
        WHEN DistanceFromHome <= 20 THEN '11-20'
        ELSE '21+'
    END AS distance_band,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY
    CASE
        WHEN DistanceFromHome <= 5 THEN '0-5'
        WHEN DistanceFromHome <= 10 THEN '6-10'
        WHEN DistanceFromHome <= 20 THEN '11-20'
        ELSE '21+'
    END
ORDER BY
    CASE
        WHEN distance_band = '0-5' THEN 1
        WHEN distance_band = '6-10' THEN 2
        WHEN distance_band = '11-20' THEN 3
        ELSE 4
    END;
    
    SELECT
    CASE
        WHEN YearsAtCompany <= 1 THEN '0-1'
        WHEN YearsAtCompany <= 3 THEN '2-3'
        WHEN YearsAtCompany <= 5 THEN '4-5'
        WHEN YearsAtCompany <= 10 THEN '6-10'
        ELSE '11+'
    END AS tenure_band,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY
    CASE
        WHEN YearsAtCompany <= 1 THEN '0-1'
        WHEN YearsAtCompany <= 3 THEN '2-3'
        WHEN YearsAtCompany <= 5 THEN '4-5'
        WHEN YearsAtCompany <= 10 THEN '6-10'
        ELSE '11+'
    END
ORDER BY
    CASE
        WHEN tenure_band = '0-1' THEN 1
        WHEN tenure_band = '2-3' THEN 2
        WHEN tenure_band = '4-5' THEN 3
        WHEN tenure_band = '6-10' THEN 4
        ELSE 5
    END;
    
    SELECT
    CASE
        WHEN MonthlyIncome < 3000 THEN '< 3K'
        WHEN MonthlyIncome < 5000 THEN '3K-5K'
        WHEN MonthlyIncome < 8000 THEN '5K-8K'
        WHEN MonthlyIncome < 12000 THEN '8K-12K'
        ELSE '12K+'
    END AS income_band,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY
    CASE
        WHEN MonthlyIncome < 3000 THEN '< 3K'
        WHEN MonthlyIncome < 5000 THEN '3K-5K'
        WHEN MonthlyIncome < 8000 THEN '5K-8K'
        WHEN MonthlyIncome < 12000 THEN '8K-12K'
        ELSE '12K+'
    END
ORDER BY
    CASE
        WHEN income_band = '< 3K' THEN 1
        WHEN income_band = '3K-5K' THEN 2
        WHEN income_band = '5K-8K' THEN 3
        WHEN income_band = '8K-12K' THEN 4
        ELSE 5
    END;
    
    SELECT
    CASE
        WHEN YearsSinceLastPromotion <= 1 THEN '0-1'
        WHEN YearsSinceLastPromotion <= 3 THEN '2-3'
        WHEN YearsSinceLastPromotion <= 5 THEN '4-5'
        ELSE '6+'
    END AS promotion_gap_band,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY
    CASE
        WHEN YearsSinceLastPromotion <= 1 THEN '0-1'
        WHEN YearsSinceLastPromotion <= 3 THEN '2-3'
        WHEN YearsSinceLastPromotion <= 5 THEN '4-5'
        ELSE '6+'
    END
ORDER BY
    CASE
        WHEN promotion_gap_band = '0-1' THEN 1
        WHEN promotion_gap_band = '2-3' THEN 2
        WHEN promotion_gap_band = '4-5' THEN 3
        ELSE 4
    END;
    
    SELECT
    CASE
        WHEN YearsWithCurrManager <= 1 THEN '0-1'
        WHEN YearsWithCurrManager <= 3 THEN '2-3'
        WHEN YearsWithCurrManager <= 5 THEN '4-5'
        ELSE '6+'
    END AS manager_tenure_band,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY
    CASE
        WHEN YearsWithCurrManager <= 1 THEN '0-1'
        WHEN YearsWithCurrManager <= 3 THEN '2-3'
        WHEN YearsWithCurrManager <= 5 THEN '4-5'
        ELSE '6+'
    END
ORDER BY
    CASE
        WHEN manager_tenure_band = '0-1' THEN 1
        WHEN manager_tenure_band = '2-3' THEN 2
        WHEN manager_tenure_band = '4-5' THEN 3
        ELSE 4
    END;
    
    SELECT
    CASE
        WHEN TotalWorkingYears <= 2 THEN '0-2'
        WHEN TotalWorkingYears <= 5 THEN '3-5'
        WHEN TotalWorkingYears <= 10 THEN '6-10'
        WHEN TotalWorkingYears <= 20 THEN '11-20'
        ELSE '21+'
    END AS experience_band,
    COUNT(*) AS total_employees,
    SUM(Attrition = 'Yes') AS employees_left,
    ROUND(
        SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees_cleaned
GROUP BY
    CASE
        WHEN TotalWorkingYears <= 2 THEN '0-2'
        WHEN TotalWorkingYears <= 5 THEN '3-5'
        WHEN TotalWorkingYears <= 10 THEN '6-10'
        WHEN TotalWorkingYears <= 20 THEN '11-20'
        ELSE '21+'
    END
ORDER BY
    CASE
        WHEN experience_band = '0-2' THEN 1
        WHEN experience_band = '3-5' THEN 2
        WHEN experience_band = '6-10' THEN 3
        WHEN experience_band = '11-20' THEN 4
        ELSE 5
    END;