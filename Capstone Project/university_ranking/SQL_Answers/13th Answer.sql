-- Trend of Female Students Over Time

SELECT 
    uy.year,
    AVG(uy.pct_female_students) AS avg_female_percentage
FROM universities.university_year uy
WHERE uy.pct_female_students IS NOT NULL
GROUP BY uy.year
ORDER BY uy.year;