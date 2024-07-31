--- Creates a table with given name and data type in the clause ---
CREATE TABLE  job_applied (
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR(50)
);


--- Insert data into a column. NOTICE how we enter data in multiple columns at the same time---
--- Keep in mind that the order of data to be filled in the columns must have the order given in INSERT INTO column---
INSERT INTO job_applied(
    job_id,
    application_sent_date,
    custom_resume,
    resume_file_name,
    cover_letter_sent,
    cover_letter_file_name,
    status
    )

VALUES(
    1,
    '2024-07-24',
    TRUE,
    'resume1.pdf',
    TRUE,
    'cover_letter1.pdf',
    'Applied'
),
(
    2,
    '2024-07-24',
    FALSE,
    'resume2.pdf',
    FALSE,
    'cover_letter2.pdf',
    'Interview Scheduled'
),

(
    3,
    '2024-07-23',
    TRUE,
    'resume3.pdf',
    FALSE,
    'cover_letter3.pdf',
    'Ghosted'
),

(
    4,
    '2024-07-21',
    FALSE,
    'resume4.pdf',
    TRUE,
    NULL,
    'No response'
),

(
    5,
    '2024-07-20',
    TRUE,
    'resume5.pdf',
    TRUE,
    'cover_letter5.pdf',
    'Applied'
),

(
    6,
    '2024-07-14',
    TRUE,
    'resume6.pdf',
    FALSE,
    'cover_letter6.pdf',
    ' Not Applied'
);


--- ALTER TABLE and Its four MAJOR Functionalities---

---Adding a column---
ALTER TABLE job_applied
ADD contact VARCHAR(50);

---UPDATE data intp a specific column and place---
UPDATE job_applied
SET contact = 'Krupal Dudhat'
WHERE job_id = 1;

UPDATE job_applied
SET contact = 'Jenish Ghadiya'
WHERE job_id = 2;

UPDATE job_applied
SET contact = 'Avinash Kalsariya'
WHERE job_id = 3;

UPDATE job_applied
SET contact = 'Bhavin kakadiya'
WHERE job_id = 4;

UPDATE job_applied
SET contact = 'Vikas Thummar'
WHERE job_id = 5;

UPDATE job_applied
SET contact = 'VV Vaghela'
WHERE job_id = 6;

---Renaming a column---
ALTER TABLE job_applied
RENAME COLUMN  contact to contact_name;

--- Changing column type--
--- NOTE: Yoou must be carefull while changing the data type of the columns---
--- For eg. YOU can change INT to TEXT but You cant change CHAR to INT or TEXT to INT---
ALTER TABLE job_applied
ALTER COLUMN contact_name TYPE TEXT;


--- Deleting a whole column---
ALTER TABLE job_applied
DROP COLUMN contact_name;


--- Deleting whole table---
DROP TABLE job_applied;


SELECT *
FROM job_applied;