-- 2. Dim_Remote_Work
-- Q1. How much time did employees work remotely before covid 19 ? 
SELECT 
	remote_work_time_last_year, 
	COUNT(*) AS employee_count, 
	ROUND(
		COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2
	) AS percentage
FROM dim_remote_work
GROUP BY remote_work_time_last_year
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis shows how frequently employees worked remotely before the COVID-19 pandemic.
-- It provides a baseline for understanding remote work adoption before organizations were forced to implement work-from-home policies.
-- Higher percentages in lower remote work categories indicate that office-based work was the dominant work model.
-- The results help compare how remote work changed during the pandemic.


-- Q2. Did organizations encourage employees to work remotely before COVID-19?
SELECT 
	 org_encouraged_remote_last_year, 
	 COUNT(*) AS employee_count,
	 ROUND(
		COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2
	 ) AS percentage 
FROM dim_remote_work
GROUP BY org_encouraged_remote_last_year
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query measures the level of organizational support for remote work before COVID-19.
-- Organizations that encouraged remote work were likely better prepared for the sudden transition during the pandemic.
-- The results help evaluate the maturity of flexible workplace policies before COVID-19.

-- Q3. Were organizations prepared for remote work before COVID-19?
SELECT
	org_prepared_remote_last_year, 
	COUNT(*) AS employee_count, 
	ROUND(
		COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2
	) AS percentage 
FROM dim_remote_work
GROUP BY org_prepared_remote_last_year
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis evaluates organizational readiness for remote work before the pandemic.
-- Prepared organizations were more likely to have digital tools, communication platforms, and remote work policies already in place.
-- Understanding preparedness helps explain differences in employee experiences during the transition to remote work.

-- Q4. Was remote work already common before COVID-19?
SELECT 
	remote_common_last_year,
	COUNT(*) AS employee_count,
	ROUND(
		COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2
	) AS percentage 
FROM dim_remote_work
GROUP BY remote_common_last_year
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query identifies whether remote work was a common practice before COVID-19.
-- A higher percentage of "No" responses suggests that remote work became popular mainly because of the pandemic.
-- The findings highlight how workplace culture evolved during this period.

-- Q5. Were employees officially allowed to work remotely before COVID-19?
SELECT 
	remote_permission_last_year,
	COUNT(*) AS employee_count,
	ROUND(
		COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2
	) AS percentage 
FROM dim_remote_work
GROUP BY remote_permission_last_year
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis examines whether organizations had formal remote work policies before COVID-19.
-- Organizations with established remote work permissions likely experienced a smoother transition during the pandemic.
-- These findings help evaluate workplace flexibility before large-scale remote work adoption.

-- Q6. How effective was collaboration while working remotely before COVID-19?
SELECT 
	remote_collaboration_last_year, 
	COUNT(*) AS employee_count
FROM dim_remote_work
GROUP BY remote_collaboration_last_year
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query evaluates employees' perception of collaboration while working remotely.
-- Higher collaboration ratings indicate effective communication and teamwork despite physical distance.
-- Lower ratings may highlight challenges related to technology, communication, or team coordination.
-- Organizations can use these insights to improve collaboration tools and remote work practices.

-- Q7. Would employees recommend remote work to others?
SELECT
    recommend_remote_last_year,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_remote_work
GROUP BY recommend_remote_last_year
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis measures employee satisfaction with remote work.
-- Employees who recommend remote work generally had positive experiences and adapted well to flexible work arrangements.
-- Recommendation rates provide a strong indicator of overall employee acceptance of remote work.

-- Q8. How much remote work did employees prefer before COVID-19?
SELECT
    preferred_remote_time_last_year,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_remote_work
GROUP BY preferred_remote_time_last_year
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query identifies employees' preferred amount of remote work before the pandemic.
-- Employee preferences help organizations understand the demand for flexible work arrangements.
-- These findings provide valuable context for designing future hybrid work policies.

-- Q9. How much time did employees work remotely during the last three months?
SELECT
    remote_work_time_last_3_months,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_remote_work
GROUP BY remote_work_time_last_3_months
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis shows how remote work patterns changed during the pandemic.
-- Comparing these results with pre-pandemic data highlights the rapid adoption of remote work.
-- The findings demonstrate how organizations adapted to changing business conditions.

-- Q10. Did organizations encourage remote work during COVID-19?
SELECT
    org_encouraged_remote_3_months,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_remote_work
GROUP BY org_encouraged_remote_3_months
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query measures organizational encouragement of remote work during the pandemic.
-- Increased encouragement reflects changes in workplace policies to ensure business continuity.
-- Organizations with strong support likely experienced smoother remote work transitions.

-- Q11. Were organizations better prepared for remote work during COVID-19?
SELECT
    org_prepared_remote_3_months,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_remote_work
GROUP BY org_prepared_remote_3_months
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis evaluates whether organizational preparedness improved during the pandemic.
-- Higher preparedness indicates investments in digital infrastructure, communication tools, and remote work processes.
-- The findings demonstrate how organizations adapted to new working environments.

-- Q12. Did remote work become more common during COVID-19?
SELECT
    remote_common_3_months,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_remote_work
GROUP BY remote_common_3_months
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query measures how common remote work became during the pandemic.
-- Comparing these results with pre-COVID responses highlights the shift in workplace culture.
-- The analysis demonstrates the widespread adoption of remote work across organizations.

-- Q13. Were employees officially allowed to work remotely during COVID-19?
SELECT
    remote_permission_last_3_months,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_remote_work
GROUP BY remote_permission_last_3_months
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis evaluates whether organizations formally allowed employees to work remotely during the pandemic.
-- Increased permission rates indicate greater organizational flexibility and policy changes.
-- The findings demonstrate how businesses responded to unprecedented workplace challenges and adapted their work arrangements.





































	










	 
	




