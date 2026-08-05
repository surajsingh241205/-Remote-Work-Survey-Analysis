-- 3. Dim_Productivity_Preference
-- Q1. What is the preferred amount of remote work after COVID-19?
SELECT
    preferred_remote_time_after_covid,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_productivity_preference
GROUP BY preferred_remote_time_after_covid
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis identifies employees' preferred amount of remote work after the COVID-19 pandemic.
-- It helps organizations understand whether employees prefer fully remote, hybrid, or office-based work.
-- The findings support long-term workplace planning and flexible work policy decisions.

-- Q2. Should employers encourage remote work in the future?
SELECT
    employer_encourage_remote_future,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_productivity_preference
GROUP BY employer_encourage_remote_future
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query measures employees' opinions on whether organizations should actively encourage remote work.
-- Strong support indicates employees value flexibility and believe remote work should remain part of future workplace strategies.
-- Organizations can use these findings to shape long-term remote work policies.

-- Q3. Should employers continue supporting remote work?
SELECT
    employer_support_remote_future,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_productivity_preference
GROUP BY employer_support_remote_future
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis evaluates whether employees expect continued organizational support for remote work.
-- Continued support may include better technology, flexible policies, and employee well-being initiatives.
-- The results help organizations understand employee expectations beyond the pandemic.

-- Q4. Which future work model do employees prefer?
SELECT
    remote_work_choice_future,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_productivity_preference
GROUP BY remote_work_choice_future
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query identifies employees' preferred workplace model for the future.
-- A strong preference for hybrid work suggests employees seek a balance between flexibility and office collaboration.
-- The results provide valuable guidance for designing employee-centric workplace strategies.

-- Q5. How productive do employees feel while working remotely?
SELECT
    remote_productivity,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_productivity_preference
GROUP BY remote_productivity
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis measures employees' perceived productivity while working remotely.
-- Higher productivity levels indicate that remote work supports employee performance.
-- Lower productivity ratings highlight potential challenges such as communication issues or home distractions.
-- Organizations can use these findings to improve remote work practices.

-- Q6. How much commuting time is saved by working remotely?
SELECT
    ROUND(AVG(commute_hours_office),2) AS avg_office_commute,
    ROUND(AVG(commute_hours_remote),2) AS avg_remote_commute,
    ROUND(AVG(commute_hours_office - commute_hours_remote),2) AS avg_hours_saved
FROM dim_productivity_preference;
-- Insights & Business Explanation
-- This query compares average commuting time between office and remote work.
-- The difference represents the average time employees save by working remotely.
-- Reduced commuting contributes to better work-life balance and lower travel-related stress.
-- Organizations can use this information to evaluate the non-financial benefits of flexible work arrangements.

-- Q7. How do working hours compare between office and remote work?
SELECT
    ROUND(AVG(work_hours_office),2) AS avg_office_hours,
    ROUND(AVG(work_hours_remote),2) AS avg_remote_hours,
    ROUND(AVG(work_hours_remote - work_hours_office),2) AS average_difference
FROM dim_productivity_preference;
-- Insights & Business Explanation
-- This analysis compares employees' average working hours in office and remote work environments.
-- Similar working hours indicate that remote work maintains employee productivity.
-- Significant differences may reveal changes in workload or employee work habits.
-- These findings help organizations evaluate the operational impact of remote work.

-- Q8. Does remote work improve employees' personal and family time?
SELECT
    ROUND(AVG(personal_family_hours_office),2) AS office_personal_time,
    ROUND(AVG(personal_family_hours_remote),2) AS remote_personal_time,
    ROUND(AVG(personal_family_hours_remote - personal_family_hours_office),2) AS average_increase
FROM dim_productivity_preference;
-- Insights & Business Explanation
-- This query measures changes in personal and family time between office and remote work.
-- Increased personal time suggests improved work-life balance for employees.
-- Better work-life balance is often associated with higher job satisfaction and employee well-being.
-- Organizations can use these findings when developing employee wellness programs.

-- Q9. Does remote work provide employees with more time for caregiving responsibilities?
SELECT
    ROUND(AVG(caring_hours_office),2) AS office_caring_time,
    ROUND(AVG(caring_hours_remote),2) AS remote_caring_time,
    ROUND(AVG(caring_hours_remote - caring_hours_office),2) AS average_increase
FROM dim_productivity_preference;
-- Insights & Business Explanation
-- This analysis compares caregiving time in office and remote work settings.
-- Increased caregiving time indicates that remote work offers employees greater flexibility to support family responsibilities.
-- These findings are particularly useful for organizations promoting inclusive and family-friendly workplace policies.
-- Understanding caregiving responsibilities helps organizations better support diverse employee needs.














































