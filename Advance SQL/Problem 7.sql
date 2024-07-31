/*
Find the number of remote jobs postinhg per skill
- Display the top 5 skillls by their demand in remote jobs
- Include skill ID , name , and count of posting requiring that skill.
- Add over: Try looking for only data analyst jobs.
*/
WITH skill_id_count AS 
(
    SELECT 
        skills_to_job.skill_id,
        COUNT(*) AS skill_count
    FROM 
        skills_job_dim AS skills_to_job
    INNER JOIN job_postings_fact AS job_postings ON job_postings.job_id = skills_to_job.job_id
    WHERE
        job_postings.job_work_from_home = TRUE AND job_postings.job_title_short = 'Data Analyst'   --- to get only remote jobs from the table
    GROUP BY
        skills_to_job.skill_id
    ORDER BY
        skill_count DESC
)

SELECT
    skill_id_count.skill_id,
    skill_id_count.skill_count,
    skills_dim.skills
FROM skill_id_count
INNER JOIN skills_dim ON skills_dim.skill_id = skill_id_count.skill_id
ORDER BY skill_id_count.skill_count DESC
LIMIT 5;
