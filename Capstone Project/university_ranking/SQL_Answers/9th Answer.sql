SELECT 
    (SUM(ury.score * uy.student_staff_ratio) - 
        (SUM(ury.score) * SUM(uy.student_staff_ratio) / COUNT(*))) 
    /
    (SQRT(SUM(ury.score * ury.score) - 
        (SUM(ury.score) * SUM(ury.score) / COUNT(*))) 
     * 
     SQRT(SUM(uy.student_staff_ratio * uy.student_staff_ratio) - 
        (SUM(uy.student_staff_ratio) * SUM(uy.student_staff_ratio) / COUNT(*)))
    ) 
    AS correlation_value
FROM universities.university_ranking_year ury
JOIN universities.university_year uy 
    ON ury.university_id = uy.university_id 
    AND ury.year = uy.year;



SELECT 
    CASE 
        WHEN ury.score >= 90 THEN '90-100'
        WHEN ury.score >= 80 THEN '80-89'
        WHEN ury.score >= 70 THEN '70-79'
        ELSE '< 70'
    END AS score_range,
    AVG(uy.student_staff_ratio) AS avg_student_staff_ratio
FROM universities.university_ranking_year ury
JOIN universities.university_year uy 
    ON ury.university_id = uy.university_id 
    AND ury.year = uy.year
GROUP BY score_range
ORDER BY score_range DESC;
