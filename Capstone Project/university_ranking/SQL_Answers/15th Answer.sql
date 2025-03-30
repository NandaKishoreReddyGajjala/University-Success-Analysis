-- Correlation Between Ranking Score and Number of Students
-- Pearson Correlation in MySQL
SELECT 
    (COUNT(*) * SUM(ury.score * uy.num_students) - SUM(ury.score) * SUM(uy.num_students)) /
    SQRT((COUNT(*) * SUM(ury.score * ury.score) - POWER(SUM(ury.score), 2)) * 
         (COUNT(*) * SUM(uy.num_students * uy.num_students) - POWER(SUM(uy.num_students), 2))
    ) AS correlation_value
FROM universities.university_ranking_year ury
JOIN universities.university_year uy 
    ON ury.university_id = uy.university_id 
    AND ury.year = uy.year;
    
    
-- If you need year-wise correlation:
SELECT 
    ury.year,
    (COUNT(*) * SUM(ury.score * uy.num_students) - SUM(ury.score) * SUM(uy.num_students)) /
    SQRT((COUNT(*) * SUM(ury.score * ury.score) - POWER(SUM(ury.score), 2)) * 
         (COUNT(*) * SUM(uy.num_students * uy.num_students) - POWER(SUM(uy.num_students), 2))
    ) AS correlation_value
FROM universities.university_ranking_year ury
JOIN universities.university_year uy 
    ON ury.university_id = uy.university_id 
    AND ury.year = uy.year
GROUP BY ury.year
ORDER BY ury.year;

