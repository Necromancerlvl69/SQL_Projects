/*
UNION operator

SELECT column_name
FROM table_name1

UNION 

SELECT column_name
FROM table_name2 


LIMITATIONS:-
1. The number of columns in both SELECT statements must be the same.
2. The columns must have similar data types. 
3. All columns in the result set must be unique, NO DUPLICATES are allowed.
*/

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    jan_jobs

UNION

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    feb_jobs

UNION

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    mar_jobs


/*
UNION ALL operator

Same as UNION operator only use keyword UNION ALL

-Returns all rows even DUPLICATES.

*/


SELECT
    job_title_short,
    company_id,
    job_location
FROM
    jan_jobs

UNION ALL

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    feb_jobs

UNION ALL

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    mar_jobs