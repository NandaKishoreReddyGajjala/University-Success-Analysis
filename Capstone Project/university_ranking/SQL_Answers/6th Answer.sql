SELECT 
    rs.system_name,
    ury.year,
    AVG(ury.score) AS avg_ranking_score,
    AVG(uy.pct_international_students) AS avg_international_students
FROM universities.university_ranking_year ury
JOIN universities.ranking_criteria rc ON ury.ranking_criteria_id = rc.id
JOIN universities.ranking_system rs ON rc.ranking_system_id = rs.id
JOIN universities.university_year uy ON ury.university_id = uy.university_id 
    AND ury.year = uy.year
GROUP BY rs.system_name, ury.year
ORDER BY ury.year, rs.system_name;
