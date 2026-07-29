-- Demographics and employment analysis 

-- Q1. How many survey responses were collected ? 
SELECT COUNT(*) AS total_responses 
FROM dim_demographics_employment;
-- Insights & Business Explanation
-- This query returns the total number of survey participants included in the analysis.
-- It serves as the baseline for calculating percentages in subsequent analyses.
-- Understanding the sample size helps assess the reliability and representativeness of the survey results.
-- A larger sample generally provides more confidence in identifying workforce trends and employee preferences.

-- Q2. What is the gender distribution of survey respondents ? 
SELECT 
	gender, COUNT(*) AS employee_count, 
	ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM dim_demographics_employment
GROUP BY gender
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis shows the gender composition of the survey participants.
-- It helps determine whether the survey sample is balanced across different genders.
-- Organizations can use this information to understand whether remote work experiences differ across demographic groups.
-- The percentage distribution provides a clearer picture than raw counts alone.

-- Q3. Which birth year has the highest number of respondents ? 
SELECT 
	birth_year, 
	COUNT(*) AS employee_count
FROM dim_demographics_employment 
GROUP BY birth_year 
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query identifies the birth years with the highest survey participation.
-- It helps understand which age cohorts are most represented in the dataset.
-- Organizations can later compare remote work preferences and productivity across different generations.
-- These insights support age-based workforce planning and policy development.

-- Q4. Which industry have the highest participation ? 
SELECT 
	industry, COUNT(*) AS employee_count 
FROM dim_demographics_employment 
GROUP BY industry
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis identifies the industries that contributed the most survey responses.
-- Higher participation from an industry provides a richer understanding of remote work trends within that sector.
-- Organizations can compare remote work adoption and productivity across industries in later analyses.
-- Industry-level insights help identify sectors where remote work is more prevalent.

-- Q5. which occupations are most common among the respondents ? 
SELECT 
	occupation, COUNT(*) AS employee_count 
FROM dim_demographics_employment 
GROUP BY occupation 
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query highlights the occupations most represented in the survey.
-- Different occupations often have varying levels of suitability for remote work.
-- Understanding occupational distribution helps interpret productivity and work preference results more accurately.
-- These findings provide context for role-specific remote work strategies.

-- Q6. What is the distribution of company size ? 
SELECT 
	company_size, 
	COUNT(*) AS employee_count, 
	ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS Percentage 
FROM dim_demographics_employment
GROUP BY company_size
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis shows the distribution of respondents across different company sizes.
-- Company size can influence remote work policies, technology adoption, and employee support.
-- Comparing organization sizes helps identify differences in remote work implementation.
-- These insights support future comparisons between company size and employee productivity.

-- Q7. What is the ratio of managers to individual contributors ? 
SELECT 
	is_manager, COUNT(*) AS employee_count,
	ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage 
FROM dim_demographics_employment
GROUP BY is_manager
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query compares managers and non-managers in the survey population.
-- Leadership roles often experience remote work differently from individual contributors.
-- The results provide context for later analyses of productivity, communication, and collaboration.
-- Organizations can use this information to design role-specific remote work policies.

-- Q8. Job tenure distribution 
SELECT 
	job_tenure, COUNT(*) AS employee_count
FROM dim_demographics_employment
GROUP BY job_tenure 
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis shows how long respondents have worked in their current organizations.
-- Employees with different levels of experience may adapt differently to remote work.
-- Understanding job tenure provides valuable context when evaluating employee satisfaction and productivity.
-- Organizations can use these insights to improve onboarding and remote work support for employees at different career stages.

-- Q9. What household types are represented in the survey ? 
SELECT 
	household_type, 
	COUNT(*) AS employee_count
FROM dim_demographics_employment
GROUP BY household_type 
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query identifies the household compositions of survey respondents.
-- Household structure can influence work-life balance, caregiving responsibilities, and remote work experiences.
-- These insights provide valuable context for interpreting productivity and well-being outcomes.
-- Organizations can use this information to develop more inclusive remote work policies.

-- Q10. Which region types have the highest participation ? 
SELECT 
	region_type, 
	COUNT(*) AS employee_count, 
	ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage 
FROM dim_demographics_employment
GROUP BY region_type
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis compares survey participation across different region types.
-- Geographic differences may influence remote work adoption, internet access, and organizational practices.
-- Understanding regional representation provides context for interpreting remote work trends.
-- These findings can support future comparisons between location and employee experiences.



















































