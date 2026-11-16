SELECT
    COUNT(job_id) AS number_of_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSe 'Onsite'
    END AS location_category
FROM job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    location_category;

/*

Label new colimn as follow:
- 'Anywhere' jobs as 'Remote'
- 'New York, Ny jobs as 'Local
- Otherwise 'Onsite'

/*