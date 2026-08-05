-- 5. Dim_Remote_Work_Experience
-- Q1. What is the best remote work experience reported by employees?
SELECT
    best_experience_group_1 AS experience,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_remote_work_experience
GROUP BY best_experience_group_1
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis identifies the most appreciated aspect of remote work.
-- The highest-ranked experience represents the greatest benefit employees receive while working remotely.
-- Organizations should preserve these positive experiences when designing future remote or hybrid work policies.
-- These findings help improve employee satisfaction, engagement, and retention.

-- Q2. What is the worst remote work experience reported by employees?
SELECT
    worst_experience_group_1 AS experience,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_remote_work_experience
GROUP BY worst_experience_group_1
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query identifies the biggest challenge employees experience while working remotely.
-- The most frequently reported issue should become the highest priority for organizational improvement.
-- Addressing these concerns can improve employee well-being, productivity, and collaboration.
-- Organizations can use these insights to strengthen their remote work strategies.

-- Q3. What is the second most valued remote work experience?
SELECT
    best_experience_group_2 AS experience,
    COUNT(*) AS employee_count
FROM dim_remote_work_experience
GROUP BY best_experience_group_2
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis identifies employees' second most appreciated remote work experience.
-- Secondary positive experiences provide additional opportunities for organizations to enhance employee satisfaction.
-- Combining multiple positive experiences creates a stronger overall remote work environment.

-- Q4. What is the second biggest negative remote work experience?
SELECT
    worst_experience_group_2 AS experience,
    COUNT(*) AS employee_count
FROM dim_remote_work_experience
GROUP BY worst_experience_group_2
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query highlights additional challenges beyond the primary remote work issue.
-- Secondary concerns often affect a large number of employees and should not be overlooked.
-- Organizations should address both primary and secondary issues for continuous improvement.

-- Q5. Which positive experiences are mentioned most frequently across all rankings?
SELECT experience, COUNT(*) AS frequency
FROM (
    SELECT best_experience_group_1 AS experience FROM dim_remote_work_experience
    UNION ALL
    SELECT best_experience_group_2 FROM dim_remote_work_experience
    UNION ALL
    SELECT best_experience_group_3 FROM dim_remote_work_experience
    UNION ALL
    SELECT best_experience_group_4 FROM dim_remote_work_experience
    UNION ALL
    SELECT best_experience_group_5 FROM dim_remote_work_experience
    UNION ALL
    SELECT best_experience_group_6 FROM dim_remote_work_experience
) AS experiences
GROUP BY experience
ORDER BY frequency DESC;
-- Insights & Business Explanation
-- This analysis combines all positive experience rankings to identify the benefits employees value most.
-- Frequently mentioned experiences represent the strongest advantages of remote work.
-- Organizations should preserve these strengths when implementing long-term remote or hybrid work policies.
-- These insights provide a roadmap for building a more employee-centric work environment.

-- Q6. Which negative experiences are reported most frequently across all rankings?
SELECT experience, COUNT(*) AS frequency
FROM (
    SELECT worst_experience_group_1 AS experience FROM dim_remote_work_experience
    UNION ALL
    SELECT worst_experience_group_2 FROM dim_remote_work_experience
    UNION ALL
    SELECT worst_experience_group_3 FROM dim_remote_work_experience
    UNION ALL
    SELECT worst_experience_group_4 FROM dim_remote_work_experience
    UNION ALL
    SELECT worst_experience_group_5 FROM dim_remote_work_experience
    UNION ALL
    SELECT worst_experience_group_6 FROM dim_remote_work_experience
) AS experiences
GROUP BY experience
ORDER BY frequency DESC;
-- Insights & Business Explanation
-- This query identifies the most common negative experiences reported throughout all ranking positions.
-- Recurring negative experiences indicate systemic challenges that affect many employees.
-- Organizations should prioritize resolving these issues to improve employee productivity, engagement, and overall work experience.
-- Comparing positive and negative experiences provides a balanced understanding of employees' remote work journey.

-- Q7. What are the top five positive remote work experiences?
SELECT
    best_experience_group_1 AS experience,
    COUNT(*) AS employee_count
FROM dim_remote_work_experience
GROUP BY best_experience_group_1
ORDER BY employee_count DESC
LIMIT 5;
-- Insights & Business Explanation
-- This analysis identifies the five most highly valued remote work experiences.
-- These experiences represent the strongest strengths of remote work from the employees' perspective.
-- Organizations should continue investing in these areas to maintain employee satisfaction and productivity.
-- These findings can directly influence future workplace and HR strategies.

-- Q8. What are the top five negative remote work experiences?
SELECT
    worst_experience_group_1 AS experience,
    COUNT(*) AS employee_count
FROM dim_remote_work_experience
GROUP BY worst_experience_group_1
ORDER BY employee_count DESC
LIMIT 5;
-- Insights & Business Explanation
-- This query highlights the five most critical negative experiences reported by employees.
-- These challenges should receive immediate attention from organizational leaders.
-- Addressing these issues can improve collaboration, employee well-being, and overall remote work effectiveness.
-- The findings provide clear priorities for improving future remote and hybrid work environments.



































































