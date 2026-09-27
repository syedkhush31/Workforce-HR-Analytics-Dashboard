    -- ============================================================
-- Workforce HR Analytics Dashboard
-- File: 02_data_cleaning.sql
-- Purpose: Create analytical cleaned table
-- ============================================================

USE workforce_hr_analytics;

-- Remove any previous version of the analytical table
DROP TABLE IF EXISTS employees_cleaned;

-- Create cleaned analytical table
-- Removed constant columns:
-- EmployeeCount
-- Over18
-- StandardHours

CREATE TABLE employees_cleaned AS
SELECT
    Age,
    Attrition,
    BusinessTravel,
    DailyRate,
    Department,
    DistanceFromHome,
    Education,
    EducationField,
    EmployeeNumber,
    EnvironmentSatisfaction,
    Gender,
    HourlyRate,
    JobInvolvement,
    JobLevel,
    JobRole,
    JobSatisfaction,
    MaritalStatus,
    MonthlyIncome,
    MonthlyRate,
    NumCompaniesWorked,
    OverTime,
    PercentSalaryHike,
    PerformanceRating,
    RelationshipSatisfaction,
    StockOptionLevel,
    TotalWorkingYears,
    TrainingTimesLastYear,
    WorkLifeBalance,
    YearsAtCompany,
    YearsInCurrentRole,
    YearsSinceLastPromotion,
    YearsWithCurrManager
FROM employees;

-- Verify record count
SELECT COUNT(*) AS cleaned_records
FROM employees_cleaned;

-- Verify column count
SELECT COUNT(*) AS cleaned_columns
FROM information_schema.columns
WHERE table_schema = 'workforce_hr_analytics'
  AND table_name = 'employees_cleaned';