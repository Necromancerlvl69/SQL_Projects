/*
NOTE:-  This question is same as problem 7 .
        The only difference is that this time we are trying to minimize the code size.
-- Questions to answer:-
1. What are the top-paying-jobs for my role?
2. What are the skills required for these top paying roles?
3. What are the most in demand skills?
4. What are the top skills based on salary for my role?
5. What are the optimal skills to learn?
optimal :- High Demand and high paying
*/

SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_work_from_home = TRUE
GROUP BY 
    skills
ORDER BY
    demand_count DESC
LIMIT 10