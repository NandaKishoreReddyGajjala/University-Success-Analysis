-- SQL Query: Count of Universities Per Country

SELECT 
    c.country_name,
    COUNT(u.id) AS num_universities
FROM universities.university u
JOIN universities.country c ON u.country_id = c.id
GROUP BY c.country_name
ORDER BY num_universities DESC;

-- Alternative: Percentage of Universities Per Country
SELECT 
    c.country_name,
    COUNT(u.id) AS num_universities,
    (COUNT(u.id) * 100.0 / (SELECT COUNT(*) FROM universities.university)) AS pct_universities
FROM universities.university u
JOIN universities.country c ON u.country_id = c.id
GROUP BY c.country_name
ORDER BY num_universities DESC;
