/*

CTEs are used to make temporary tables.
Sub-queries
SELECT *
FROM (---Sub query starts here
SELECT *
FROM job_posting_fact,
WHERE EXTRACT(MONTH FROM job_posted_date)  =  1
) AS january_jobs;
--- Sub-query ends here




CTE( Common Table Expressions)

WITH january_jobs AS (
SELECT *
FROM job_postings_fact,
WHERE EXTRACT(MONTH FROM job_posted_date)  =  1
)

*/

SELECT *
FROM (
    SELECT *
    FROM
        job_postings_fact
    WHERE
        EXTRACT(MONTH FROM job_posted_date)  =  1
) AS january_jobs;


WITH january_jobs AS (
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date)  =  1
)

SELECT *
FROM january_jobs;


--- Find the companies that have the most openings---
--- Get the total number of jobs posting per company_id(Count)---
--- Return the total number of jobs with the company name(join)---

WITH company_job_count AS (
SELECT 
    company_id,
    COUNT(*) AS total_jobs
FROM
    job_postings_fact
GROUP BY
    company_id
)

SELECT 
    name AS company_name,
    company_job_count.total_jobs
FROM company_dim
LEFT JOIN company_job_count ON company_job_count.company_id = company_dim.company_id
ORDER BY company_job_count.total_jobs




