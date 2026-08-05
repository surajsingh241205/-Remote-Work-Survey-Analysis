-- 4. Dim_Remote_Work_Barriers
-- Q1. What is the most significant barrier employees face while working remotely?
SELECT
    most_significant_barrier_1 AS barrier,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_remote_work_barriers
GROUP BY most_significant_barrier_1
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis identifies the primary challenge employees experience while working remotely.
-- The highest-ranked barrier represents the most critical issue affecting employee productivity and work experience.
-- Organizations should prioritize resolving this challenge to improve employee satisfaction and remote work effectiveness.

-- Q2. What is the second most significant remote work barrier?
SELECT
    most_significant_barrier_2 AS barrier,
    COUNT(*) AS employee_count
FROM dim_remote_work_barriers
GROUP BY most_significant_barrier_2
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query identifies the second-highest ranked remote work challenge.
-- Secondary barriers may not be the biggest issue individually, but they still affect a large portion of employees.
-- Organizations should address these issues alongside the primary barrier for a better remote work experience.

-- Q3. What is the third most significant remote work barrier?
SELECT
    most_significant_barrier_3 AS barrier,
    COUNT(*) AS employee_count
FROM dim_remote_work_barriers
GROUP BY most_significant_barrier_3
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This analysis highlights additional obstacles employees encounter while working remotely.
-- Understanding the top three barriers provides a more complete picture of employees' remote work challenges.
-- Organizations can prioritize improvement initiatives based on these recurring issues.

-- Q4. Which barriers are most frequently reported across all rankings?
SELECT barrier, COUNT(*) AS frequency
FROM (
    SELECT most_significant_barrier_1 AS barrier FROM dim_remote_work_barriers
    UNION ALL
    SELECT most_significant_barrier_2 FROM dim_remote_work_barriers
    UNION ALL
    SELECT most_significant_barrier_3 FROM dim_remote_work_barriers
    UNION ALL
    SELECT most_significant_barrier_4 FROM dim_remote_work_barriers
    UNION ALL
    SELECT most_significant_barrier_5 FROM dim_remote_work_barriers
    UNION ALL
    SELECT most_significant_barrier_6 FROM dim_remote_work_barriers
    UNION ALL
    SELECT most_significant_barrier_7 FROM dim_remote_work_barriers
    UNION ALL
    SELECT most_significant_barrier_8 FROM dim_remote_work_barriers
    UNION ALL
    SELECT most_significant_barrier_9 FROM dim_remote_work_barriers
    UNION ALL
    SELECT most_significant_barrier_10 FROM dim_remote_work_barriers
) AS barriers
GROUP BY barrier
ORDER BY frequency DESC;
-- Insights & Business Explanation
-- This analysis combines all ranking positions to identify the barriers that appear most frequently across the entire survey.
-- Unlike focusing only on the first-ranked barrier, this approach highlights recurring challenges experienced by employees.
-- Organizations should prioritize barriers that consistently appear across multiple rankings, as they affect a broader group of employees.

-- Q5. Which challenge is considered the least significant by employees?
SELECT
    least_significant_barrier_1 AS barrier,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM dim_remote_work_barriers
GROUP BY least_significant_barrier_1
ORDER BY employee_count DESC;
-- Insights & Business Explanation
-- This query identifies the challenge employees consider least impactful while working remotely.
-- These barriers generally require lower organizational priority compared to higher-ranked issues.
-- Comparing the most and least significant barriers helps organizations allocate resources more effectively.

-- Q6. Which barriers are consistently considered the least important?
SELECT barrier, COUNT(*) AS frequency
FROM (
    SELECT least_significant_barrier_1 AS barrier FROM dim_remote_work_barriers
    UNION ALL
    SELECT least_significant_barrier_2 FROM dim_remote_work_barriers
    UNION ALL
    SELECT least_significant_barrier_3 FROM dim_remote_work_barriers
    UNION ALL
    SELECT least_significant_barrier_4 FROM dim_remote_work_barriers
    UNION ALL
    SELECT least_significant_barrier_5 FROM dim_remote_work_barriers
    UNION ALL
    SELECT least_significant_barrier_6 FROM dim_remote_work_barriers
    UNION ALL
    SELECT least_significant_barrier_7 FROM dim_remote_work_barriers
    UNION ALL
    SELECT least_significant_barrier_8 FROM dim_remote_work_barriers
    UNION ALL
    SELECT least_significant_barrier_9 FROM dim_remote_work_barriers
    UNION ALL
    SELECT least_significant_barrier_10 FROM dim_remote_work_barriers
) AS barriers
GROUP BY barrier
ORDER BY frequency DESC;
-- Insights & Business Explanation
-- This analysis identifies challenges that employees consistently rank as having the lowest impact.
-- These barriers may require less immediate attention when compared with frequently reported high-impact challenges.
-- Organizations can use this information to focus resources on the issues that matter most to employees.

-- Q7. Which barriers should organizations prioritize for improvement?
SELECT
    most_significant_barrier_1 AS priority_barrier,
    COUNT(*) AS times_ranked_first
FROM dim_remote_work_barriers
GROUP BY most_significant_barrier_1
ORDER BY times_ranked_first DESC
LIMIT 5;
-- Insights & Business Explanation
-- This query identifies the top five barriers most frequently ranked as the highest priority.
-- These challenges have the greatest impact on employees' remote work experience.
-- Organizations should address these issues first to improve productivity, collaboration, and employee satisfaction.
-- The results can directly support strategic planning and workplace improvement initiatives.

















































