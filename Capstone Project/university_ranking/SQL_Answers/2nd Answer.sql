SELECT 
    c.country_name,
    uy.year,
    COUNT(DISTINCT u.id) AS num_universities
FROM universities.university_year uy
JOIN universities.university u ON uy.university_id = u.id
JOIN universities.country c ON u.country_id = c.id
GROUP BY c.country_name, uy.year
ORDER BY c.country_name, uy.year;
