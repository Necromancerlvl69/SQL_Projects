--- Create tables from other tables---
--- Create three tables:---
--- 1. JAN 2023 jobs---
--- 2. FEB 2023 jobs---
--- 3. MAR 2023 jobs---

--- Foreshadowing: This will be used in another practice problem below.---
--- Hint:- Use CREATE TABLE table_name AS syntax to create your table---
---     :- Look at a way to filter out only specific months(EXTRACT)---

CREATE TABLE jan_jobs as 
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH  FROM job_posted_date) = 1;

CREATE TABLE feb_jobs as 
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH  FROM job_posted_date) = 2;


CREATE TABLE mar_jobs as 
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH  FROM job_posted_date) = 3;


