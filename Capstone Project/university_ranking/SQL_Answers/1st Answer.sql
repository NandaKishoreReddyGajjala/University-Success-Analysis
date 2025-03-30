-- Use the Total Number of Universities per Country as a Proxy for GDP
WITH country_university_count AS (
    SELECT 
        c.id AS country_id,
        c.country_name,
        COUNT(u.id) AS university_count
    FROM universities.country c
    LEFT JOIN universities.university u ON c.id = u.country_id
    GROUP BY c.id, c.country_name
)
SELECT 
    country_name,
    university_count,
    university_count * 1000 AS estimated_gdp  -- Assign a scale factor
FROM country_university_count
ORDER BY estimated_gdp DESC;

-- Use the Total Number of Students as a Proxy for Economic Strength
WITH country_student_count AS (
    SELECT 
        c.id AS country_id,
        c.country_name,
        SUM(uy.num_students) AS total_students
    FROM universities.country c
    JOIN universities.university u ON c.id = u.country_id
    JOIN universities.university_year uy ON u.id = uy.university_id
    GROUP BY c.id, c.country_name
)
SELECT 
    country_name,
    total_students,
    total_students * 5000 AS estimated_gdp  -- Arbitrary scaling factor
FROM country_student_count
ORDER BY estimated_gdp DESC;


-- Use University Rankings to Estimate Economic Strength
WITH country_ranking_score AS (
    SELECT 
        c.id AS country_id,
        c.country_name,
        AVG(ur.score) AS avg_university_score
    FROM universities.country c
    JOIN universities.university u ON c.id = u.country_id
    JOIN universities.university_ranking_year ur ON u.id = ur.university_id
    GROUP BY c.id, c.country_name
)
SELECT 
    country_name,
    avg_university_score,
    avg_university_score * 100000 AS estimated_gdp  -- Arbitrary scaling
FROM country_ranking_score
ORDER BY estimated_gdp DESC;

-- Correlation
WITH country_gdp AS (
    SELECT 
        c.id AS country_id,
        c.country_name,
        COUNT(u.id) AS university_count,
        COUNT(u.id) * 1000 AS estimated_gdp  -- Chosen proxy method
    FROM universities.country c
    LEFT JOIN universities.university u ON c.id = u.country_id
    GROUP BY c.id, c.country_name
)
SELECT 
    (SUM(university_count * estimated_gdp) - SUM(university_count) * SUM(estimated_gdp) / COUNT(*)) /
    SQRT((SUM(university_count * university_count) - SUM(university_count) * SUM(university_count) / COUNT(*)) *
         (SUM(estimated_gdp * estimated_gdp) - SUM(estimated_gdp) * SUM(estimated_gdp) / COUNT(*))
    ) AS correlation
FROM country_gdp;

