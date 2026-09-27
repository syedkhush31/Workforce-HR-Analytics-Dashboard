-- ============================================================
-- Workforce HR Analytics Dashboard
-- File: 01_data_quality.sql
-- Purpose: Initial Data Quality Audit
-- ============================================================

USE workforce_hr_analytics;


-- ============================================================
-- 1. TOTAL RECORD COUNT
-- ============================================================

SELECT
    COUNT(*) AS total_records
FROM employees;


-- ============================================================
-- 2. UNIQUE EMPLOYEE COUNT
-- ============================================================

SELECT
    COUNT(DISTINCT EmployeeNumber) AS unique_employees
FROM employees;


-- ============================================================
-- 3. DUPLICATE EMPLOYEE IDs
-- ============================================================

SELECT
    EmployeeNumber,
    COUNT(*) AS record_count
FROM employees
GROUP BY EmployeeNumber
HAVING COUNT(*) > 1;


-- ============================================================
-- 4. SAMPLE RECORDS
-- ============================================================

SELECT *
FROM employees
LIMIT 10;

-- ============================================================
-- 5. NULL / MISSING VALUE CHECK
-- ============================================================

SELECT
    COUNT(*) AS total_records,

    SUM(Age IS NULL) AS Age_nulls,
    SUM(Attrition IS NULL) AS Attrition_nulls,
    SUM(BusinessTravel IS NULL) AS BusinessTravel_nulls,
    SUM(DailyRate IS NULL) AS DailyRate_nulls,
    SUM(Department IS NULL) AS Department_nulls,
    SUM(DistanceFromHome IS NULL) AS DistanceFromHome_nulls,
    SUM(Education IS NULL) AS Education_nulls,
    SUM(EducationField IS NULL) AS EducationField_nulls,
    SUM(EmployeeCount IS NULL) AS EmployeeCount_nulls,
    SUM(EmployeeNumber IS NULL) AS EmployeeNumber_nulls,
    SUM(EnvironmentSatisfaction IS NULL) AS EnvironmentSatisfaction_nulls,
    SUM(Gender IS NULL) AS Gender_nulls,
    SUM(HourlyRate IS NULL) AS HourlyRate_nulls,
    SUM(JobInvolvement IS NULL) AS JobInvolvement_nulls,
    SUM(JobLevel IS NULL) AS JobLevel_nulls,
    SUM(JobRole IS NULL) AS JobRole_nulls,
    SUM(JobSatisfaction IS NULL) AS JobSatisfaction_nulls,
    SUM(MaritalStatus IS NULL) AS MaritalStatus_nulls,
    SUM(MonthlyIncome IS NULL) AS MonthlyIncome_nulls,
    SUM(MonthlyRate IS NULL) AS MonthlyRate_nulls,
    SUM(NumCompaniesWorked IS NULL) AS NumCompaniesWorked_nulls,
    SUM(Over18 IS NULL) AS Over18_nulls,
    SUM(OverTime IS NULL) AS OverTime_nulls,
    SUM(PercentSalaryHike IS NULL) AS PercentSalaryHike_nulls,
    SUM(PerformanceRating IS NULL) AS PerformanceRating_nulls,
    SUM(RelationshipSatisfaction IS NULL) AS RelationshipSatisfaction_nulls,
    SUM(StandardHours IS NULL) AS StandardHours_nulls,
    SUM(StockOptionLevel IS NULL) AS StockOptionLevel_nulls,
    SUM(TotalWorkingYears IS NULL) AS TotalWorkingYears_nulls,
    SUM(TrainingTimesLastYear IS NULL) AS TrainingTimesLastYear_nulls,
    SUM(WorkLifeBalance IS NULL) AS WorkLifeBalance_nulls,
    SUM(YearsAtCompany IS NULL) AS YearsAtCompany_nulls,
    SUM(YearsInCurrentRole IS NULL) AS YearsInCurrentRole_nulls,
    SUM(YearsSinceLastPromotion IS NULL) AS YearsSinceLastPromotion_nulls,
    SUM(YearsWithCurrManager IS NULL) AS YearsWithCurrManager_nulls

FROM employees;

-- ============================================================
-- 6. CATEGORICAL VALUE CHECKS
-- 6.1 Attrition
-- ============================================================

SELECT
    Attrition,
    COUNT(*) AS employee_count
FROM employees
GROUP BY Attrition
ORDER BY employee_count DESC;

SELECT
    BusinessTravel,
    COUNT(*) AS employee_count
FROM employees
GROUP BY BusinessTravel
ORDER BY employee_count DESC;

SELECT
    Department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY Department
ORDER BY employee_count DESC;

SELECT
    Gender,
    COUNT(*) AS employee_count
FROM employees
GROUP BY Gender
ORDER BY employee_count DESC;

SELECT
    OverTime,
    COUNT(*) AS employee_count
FROM employees
GROUP BY OverTime
ORDER BY employee_count DESC;

SELECT
    MaritalStatus,
    COUNT(*) AS employee_count
FROM employees
GROUP BY MaritalStatus
ORDER BY employee_count DESC;

SELECT
    JobRole,
    COUNT(*) AS employee_count
FROM employees
GROUP BY JobRole
ORDER BY employee_count DESC;

SELECT
    EducationField,
    COUNT(*) AS employee_count
FROM employees
GROUP BY EducationField
ORDER BY employee_count DESC;

SELECT
    Education,
    COUNT(*) AS employee_count
FROM employees
GROUP BY Education
ORDER BY Education;

SELECT
    JobLevel,
    COUNT(*) AS employee_count
FROM employees
GROUP BY JobLevel
ORDER BY JobLevel;

SELECT
    StockOptionLevel,
    COUNT(*) AS employee_count
FROM employees
GROUP BY StockOptionLevel
ORDER BY StockOptionLevel;

SELECT
    PerformanceRating,
    COUNT(*) AS employee_count
FROM employees
GROUP BY PerformanceRating
ORDER BY PerformanceRating;

SELECT
    EnvironmentSatisfaction,
    COUNT(*) AS employee_count
FROM employees
GROUP BY EnvironmentSatisfaction
ORDER BY EnvironmentSatisfaction;

SELECT
    JobInvolvement,
    COUNT(*) AS employee_count
FROM employees
GROUP BY JobInvolvement
ORDER BY JobInvolvement;

SELECT
    JobSatisfaction,
    COUNT(*) AS employee_count
FROM employees
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

SELECT
    RelationshipSatisfaction,
    COUNT(*) AS employee_count
FROM employees
GROUP BY RelationshipSatisfaction
ORDER BY RelationshipSatisfaction;

SELECT
    WorkLifeBalance,
    COUNT(*) AS employee_count
FROM employees
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;

SELECT
    COUNT(DISTINCT EmployeeCount) AS EmployeeCount_unique_values,
    COUNT(DISTINCT Over18) AS Over18_unique_values,
    COUNT(DISTINCT StandardHours) AS StandardHours_unique_values
FROM employees;

SELECT
    MIN(Age) AS minimum_age,
    MAX(Age) AS maximum_age,
    AVG(Age) AS average_age
FROM employees;

SELECT
    MIN(DailyRate) AS minimum_daily_rate,
    MAX(DailyRate) AS maximum_daily_rate,
    AVG(DailyRate) AS average_daily_rate
FROM employees;

SELECT
    MIN(HourlyRate) AS minimum_hourly_rate,
    MAX(HourlyRate) AS maximum_hourly_rate,
    AVG(HourlyRate) AS average_hourly_rate
FROM employees;

SELECT
    MIN(MonthlyIncome) AS minimum_monthly_income,
    MAX(MonthlyIncome) AS maximum_monthly_income,
    AVG(MonthlyIncome) AS average_monthly_income
FROM employees;

SELECT
    MIN(MonthlyRate) AS minimum_monthly_rate,
    MAX(MonthlyRate) AS maximum_monthly_rate,
    AVG(MonthlyRate) AS average_monthly_rate
FROM employees;

SELECT
    MIN(PercentSalaryHike) AS minimum_salary_hike,
    MAX(PercentSalaryHike) AS maximum_salary_hike,
    AVG(PercentSalaryHike) AS average_salary_hike
FROM employees;

SELECT
    MIN(DistanceFromHome) AS minimum_distance,
    MAX(DistanceFromHome) AS maximum_distance,
    AVG(DistanceFromHome) AS average_distance
FROM employees;

SELECT
    MIN(NumCompaniesWorked) AS minimum_companies,
    MAX(NumCompaniesWorked) AS maximum_companies,
    AVG(NumCompaniesWorked) AS average_companies
FROM employees;

SELECT
    MIN(TotalWorkingYears) AS minimum_total_years,
    MAX(TotalWorkingYears) AS maximum_total_years,
    AVG(TotalWorkingYears) AS average_total_years
FROM employees;

SELECT
    MIN(YearsAtCompany) AS minimum_years_at_company,
    MAX(YearsAtCompany) AS maximum_years_at_company,
    AVG(YearsAtCompany) AS average_years_at_company
FROM employees;

SELECT
    COUNT(*) AS inconsistent_records
FROM employees
WHERE YearsAtCompany > TotalWorkingYears;

SELECT
    MIN(YearsInCurrentRole) AS minimum_years_current_role,
    MAX(YearsInCurrentRole) AS maximum_years_current_role,
    AVG(YearsInCurrentRole) AS average_years_current_role
FROM employees;

SELECT
    COUNT(*) AS inconsistent_records
FROM employees
WHERE YearsInCurrentRole > YearsAtCompany;

SELECT
    MIN(YearsSinceLastPromotion) AS minimum_years_since_promotion,
    MAX(YearsSinceLastPromotion) AS maximum_years_since_promotion,
    AVG(YearsSinceLastPromotion) AS average_years_since_promotion
FROM employees;

SELECT
    COUNT(*) AS inconsistent_records
FROM employees
WHERE YearsSinceLastPromotion > YearsAtCompany;

SELECT
    MIN(YearsWithCurrManager) AS minimum_years_manager,
    MAX(YearsWithCurrManager) AS maximum_years_manager,
    AVG(YearsWithCurrManager) AS average_years_manager
FROM employees;

SELECT
    COUNT(*) AS inconsistent_records
FROM employees
WHERE YearsWithCurrManager > YearsAtCompany;

SELECT
    MIN(TrainingTimesLastYear) AS minimum_training,
    MAX(TrainingTimesLastYear) AS maximum_training,
    AVG(TrainingTimesLastYear) AS average_training
FROM employees;

SELECT
    MIN(EmployeeNumber) AS minimum_employee_number,
    MAX(EmployeeNumber) AS maximum_employee_number,
    COUNT(DISTINCT EmployeeNumber) AS unique_employee_numbers,
    COUNT(*) AS total_records
FROM employees;

SELECT
    COUNT(*) AS total_records,
    COUNT(*) - COUNT(
        DISTINCT
        CONCAT_WS('|',
            Age,
            Attrition,
            BusinessTravel,
            DailyRate,
            Department,
            DistanceFromHome,
            Education,
            EducationField,
            EmployeeCount,
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
            Over18,
            OverTime,
            PercentSalaryHike,
            PerformanceRating,
            RelationshipSatisfaction,
            StandardHours,
            StockOptionLevel,
            TotalWorkingYears,
            TrainingTimesLastYear,
            WorkLifeBalance,
            YearsAtCompany,
            YearsInCurrentRole,
            YearsSinceLastPromotion,
            YearsWithCurrManager
        )
    ) AS duplicate_rows
FROM employees;