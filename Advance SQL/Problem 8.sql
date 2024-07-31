/*
Find job postings from the first quarter that have a salary greater than $75k
- Combine job postings table from the first quarter of 2023
- Get job postings with an average salary of >70,000.
*/
SELECT 
    quarter1_job_postings.job_title_short,
    quarter1_job_postings.job_location,
    quarter1_job_postings.job_via,
    quarter1_job_postings.salary_year_avg,
    quarter1_job_postings.job_posted_date :: DATE

FROM (
    SELECT *
    FROM jan_jobs

    UNION ALL

    SELECT *
    FROM feb_jobs

    UNION ALL

    SELECT *
    FROM mar_jobs
) AS quarter1_job_postings

WHERE 
    quarter1_job_postings.salary_year_avg > 70000 AND
    quarter1_job_postings.job_title_short = 'Data Analyst'
    
ORDER BY
    quarter1_job_postings.salary_year_avg DESC;