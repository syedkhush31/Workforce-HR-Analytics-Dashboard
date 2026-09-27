# Workforce HR Analytics Dashboard — Data Dictionary

## 1. Dataset Overview

This project uses the IBM HR Analytics Employee Attrition & Performance dataset.

The dataset contains employee-level information covering demographics, employment,
compensation, satisfaction, career history, performance, and employee attrition.

### Dataset Size

- **Rows:** 1,470
- **Columns:** 35
- **Employee records:** 1,470
- **Missing values:** 0
- **Duplicate rows:** 0

---

## 2. Column Definitions

| #   | Column Name                | Data Type | Category            | Description                                                        | Business Use                                                     | Decision |
| --- | -------------------------- | --------- | ------------------- | ------------------------------------------------------------------ | ---------------------------------------------------------------- | -------- |
| 1   | `Age`                      | Integer   | Demographics        | Age of the employee                                                | Analyze workforce age distribution and attrition patterns by age | Keep     |
| 2   | `Attrition`                | Text      | Outcome             | Indicates whether the employee left the organization               | Primary outcome for attrition analysis                           | Keep     |
| 3   | `BusinessTravel`           | Text      | Employment          | Frequency of business travel                                       | Analyze relationship between travel requirements and attrition   | Keep     |
| 4   | `DailyRate`                | Integer   | Compensation        | Daily rate value provided in the dataset                           | Compensation-related analysis                                    | Keep     |
| 5   | `Department`               | Text      | Organization        | Department in which the employee works                             | Compare workforce composition and attrition across departments   | Keep     |
| 6   | `DistanceFromHome`         | Integer   | Workforce Logistics | Distance between employee's home and workplace                     | Analyze commute distance and attrition patterns                  | Keep     |
| 7   | `Education`                | Integer   | Demographics        | Coded education level                                              | Analyze workforce education levels                               | Keep     |
| 8   | `EducationField`           | Text      | Demographics        | Field in which the employee received their education               | Analyze educational background by department and role            | Keep     |
| 9   | `EmployeeCount`            | Integer   | System / Metadata   | Employee count indicator; constant value of 1                      | No analytical variation                                          | Remove   |
| 10  | `EmployeeNumber`           | Integer   | Identifier          | Unique identifier assigned to each employee record                 | Identify individual records and validate uniqueness              | Keep     |
| 11  | `EnvironmentSatisfaction`  | Integer   | Employee Experience | Employee's satisfaction with their work environment                | Analyze employee experience and attrition patterns               | Keep     |
| 12  | `Gender`                   | Text      | Demographics        | Gender of the employee                                             | Workforce demographic analysis                                   | Keep     |
| 13  | `HourlyRate`               | Integer   | Compensation        | Hourly rate value provided in the dataset                          | Compensation-related analysis                                    | Keep     |
| 14  | `JobInvolvement`           | Integer   | Employee Experience | Coded level of employee involvement in their job                   | Analyze engagement and attrition patterns                        | Keep     |
| 15  | `JobLevel`                 | Integer   | Employment          | Employee's organizational job level                                | Analyze attrition and compensation by job level                  | Keep     |
| 16  | `JobRole`                  | Text      | Employment          | Specific role held by the employee                                 | Analyze workforce composition and attrition by role              | Keep     |
| 17  | `JobSatisfaction`          | Integer   | Employee Experience | Coded employee job satisfaction level                              | Analyze satisfaction and attrition patterns                      | Keep     |
| 18  | `MaritalStatus`            | Text      | Demographics        | Marital status of the employee                                     | Demographic analysis and segmentation                            | Keep     |
| 19  | `MonthlyIncome`            | Integer   | Compensation        | Monthly income value provided in the dataset                       | Analyze compensation differences and attrition patterns          | Keep     |
| 20  | `MonthlyRate`              | Integer   | Compensation        | Monthly rate value provided in the dataset                         | Additional compensation-related analysis                         | Keep     |
| 21  | `NumCompaniesWorked`       | Integer   | Career History      | Number of companies the employee has previously worked for         | Analyze previous employment history and attrition patterns       | Keep     |
| 22  | `Over18`                   | Text      | System / Metadata   | Indicates whether the employee is over 18; constant value is Y     | No analytical variation                                          | Remove   |
| 23  | `OverTime`                 | Text      | Employment          | Indicates whether the employee works overtime                      | Analyze overtime and observed attrition patterns                 | Keep     |
| 24  | `PercentSalaryHike`        | Integer   | Compensation        | Percentage increase in salary                                      | Analyze salary growth and employee retention patterns            | Keep     |
| 25  | `PerformanceRating`        | Integer   | Performance         | Coded employee performance rating                                  | Analyze performance distribution and attrition patterns          | Keep     |
| 26  | `RelationshipSatisfaction` | Integer   | Employee Experience | Coded satisfaction level with workplace relationships              | Analyze employee experience and attrition patterns               | Keep     |
| 27  | `StandardHours`            | Integer   | System / Metadata   | Standard working hours value; constant value is 80                 | No analytical variation                                          | Remove   |
| 28  | `StockOptionLevel`         | Integer   | Compensation        | Coded level of stock option availability                           | Analyze compensation structure and attrition patterns            | Keep     |
| 29  | `TotalWorkingYears`        | Integer   | Career History      | Total number of years the employee has worked                      | Analyze experience and attrition patterns                        | Keep     |
| 30  | `TrainingTimesLastYear`    | Integer   | Development         | Number of training sessions attended during the previous year      | Analyze employee development and attrition patterns              | Keep     |
| 31  | `WorkLifeBalance`          | Integer   | Employee Experience | Coded employee work-life balance rating                            | Analyze work-life balance and attrition patterns                 | Keep     |
| 32  | `YearsAtCompany`           | Integer   | Career History      | Number of years the employee has worked at the company             | Analyze tenure and attrition                                     | Keep     |
| 33  | `YearsInCurrentRole`       | Integer   | Career History      | Number of years the employee has been in their current role        | Analyze career progression and attrition                         | Keep     |
| 34  | `YearsSinceLastPromotion`  | Integer   | Career History      | Number of years since the employee's last promotion                | Analyze career progression and attrition                         | Keep     |
| 35  | `YearsWithCurrManager`     | Integer   | Career History      | Number of years the employee has worked with their current manager | Analyze management tenure and attrition patterns                 | Keep     |

---

## 3. Important Categorical Values

### Attrition

| Value | Meaning                                 |
| ----- | --------------------------------------- |
| `Yes` | Employee left the organization          |
| `No`  | Employee remained with the organization |

### BusinessTravel

| Value               | Meaning                               |
| ------------------- | ------------------------------------- |
| `Non-Travel`        | Employee does not travel for business |
| `Travel_Rarely`     | Employee travels rarely               |
| `Travel_Frequently` | Employee travels frequently           |

### OverTime

| Value | Meaning                         |
| ----- | ------------------------------- |
| `Yes` | Employee works overtime         |
| `No`  | Employee does not work overtime |

---

## 4. Coded Rating Variables

Several columns use numeric codes rather than descriptive text.

These variables will be transformed or documented with readable labels during the
data-cleaning and transformation stage.

### Education

| Code | Meaning       |
| ---- | ------------- |
| 1    | Below College |
| 2    | College       |
| 3    | Bachelor      |
| 4    | Master        |
| 5    | Doctor        |

### EnvironmentSatisfaction

| Code | Meaning   |
| ---- | --------- |
| 1    | Low       |
| 2    | Medium    |
| 3    | High      |
| 4    | Very High |

### JobInvolvement

| Code | Meaning   |
| ---- | --------- |
| 1    | Low       |
| 2    | Medium    |
| 3    | High      |
| 4    | Very High |

### JobSatisfaction

| Code | Meaning   |
| ---- | --------- |
| 1    | Low       |
| 2    | Medium    |
| 3    | High      |
| 4    | Very High |

### RelationshipSatisfaction

| Code | Meaning   |
| ---- | --------- |
| 1    | Low       |
| 2    | Medium    |
| 3    | High      |
| 4    | Very High |

### WorkLifeBalance

| Code | Meaning |
| ---- | ------- |
| 1    | Bad     |
| 2    | Good    |
| 3    | Better  |
| 4    | Best    |

### PerformanceRating

| Code | Meaning     |
| ---- | ----------- |
| 3    | Excellent   |
| 4    | Outstanding |

### JobLevel

`JobLevel` represents an ordinal organizational level, where a higher value represents a higher job level.

### StockOptionLevel

`StockOptionLevel` represents the employee's coded stock-option level.

---

## 5. Data Quality Observations

The initial inspection of the dataset identified the following:

- The dataset contains 1,470 employee records.
- There are 35 columns.
- No missing values were detected.
- No duplicate rows were detected.
- `EmployeeNumber` contains 1,470 unique employee identifiers.
- `EmployeeCount` contains a single constant value of 1.
- `Over18` contains a single constant value of Y.
- `StandardHours` contains a single constant value of 80.

The three constant columns do not provide analytical variation and will therefore
be removed during the data-cleaning stage.

---

## 6. Analytical Considerations

### Attrition

Attrition is the primary outcome variable in this project.

The analysis will focus on observed differences in attrition across employee,
organizational, compensation, career, and employee-experience characteristics.

Observed relationships will not automatically be interpreted as causal relationships.

### Date Limitation

The dataset does not contain employee hire dates, termination dates, or other
time-series fields.

Therefore, the project will not create monthly, quarterly, or yearly attrition
trends from this dataset.

### Compensation

Compensation-related numeric fields will be interpreted according to the dataset's
provided definitions. They will not be converted into Saudi Riyal values or treated
as real-world Saudi compensation data.

---

## 7. Data Preparation Plan

The data preparation process will follow these stages:

1. Inspect the raw dataset.
2. Validate data types.
3. Check missing values.
4. Check duplicate records.
5. Check unique values and categorical consistency.
6. Identify constant or analytically irrelevant columns.
7. Validate numeric ranges.
8. Transform coded categorical/rating fields where appropriate.
9. Create the cleaned dataset.
10. Validate the cleaned dataset.
11. Use the cleaned data for SQL, Python, and Power BI analysis.
