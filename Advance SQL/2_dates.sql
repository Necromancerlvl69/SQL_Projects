---converting from one timezone to another---
SELECT job_title_short as title,
        job_location as location,
        job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' as date_time

FROM job_postings_fact 
limit 5;



---only showing date from date column where time is also there---
SELECT job_title_short as title,
        job_location as location,
        job_posted_date:: DATE as Date --- :: can be used to for type casting , for eg. here we have converted date type from String or TXT to DATE.---

From job_postings_fact;


--- Extract month/year/day from the date stamp---
--- Changing Time zone ---
SELECT job_title_short as title,
        job_location as location,
        job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' as date_time,
        EXTRACT(MONTH FROM job_posted_date) AS date_month,
        EXTRACT(YEAR FROM job_posted_date) AS date_month
FROM job_postings_fact 
limit 5;

--- Listing number of Data Analyst jobs posted in each month---
select COUNT(job_id),
        EXTRACT(MONTH FROM job_posted_date) AS month
From job_postings_fact
where job_title_short = 'Data Analyst'
GROUP BY month
Order by Count(job_id) DESC;









