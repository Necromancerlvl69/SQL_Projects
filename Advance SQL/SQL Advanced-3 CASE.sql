/*  SELECT
        CASE
            WHEN column_name = 'Value1' THEN 'Description for Value1'
            WHEN column_name = 'Value2' THEN 'Description for Value2'
            ELSE 'Default description'
        END AS column_description
    FROM
        table_name;
*/


SELECT
    COUNT(job_id) AS number_of_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM 
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    location_category;

