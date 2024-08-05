/*
What are the top paying data analyst jobs?
- Identify the top 10 hughest paying data analyst roles that are available remotely.
- Focus on job postings with specifued salaries(remove nulls)
- Why? Highlight the top paying opportunities for Data Anlayst, Offering insights into 
*/


SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name as company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_location = 'Anywhere' AND
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10