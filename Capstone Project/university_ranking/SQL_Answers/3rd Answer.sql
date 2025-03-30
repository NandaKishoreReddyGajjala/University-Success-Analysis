SELECT 
    c.country_name,
    COUNT(DISTINCT u.id) AS num_universities
FROM universities.university u
JOIN universities.country c ON u.country_id = c.id
GROUP BY c.country_name
ORDER BY num_universities DESC;


SELECT 
    c.country_name,
    COUNT(DISTINCT u.id) AS num_universities,
    AVG(uy.pct_international_students) AS avg_pct_international_students
FROM universities.university u
JOIN universities.country c ON u.country_id = c.id
JOIN universities.university_year uy ON u.id = uy.university_id
GROUP BY c.country_name
ORDER BY avg_pct_international_students DESC;
