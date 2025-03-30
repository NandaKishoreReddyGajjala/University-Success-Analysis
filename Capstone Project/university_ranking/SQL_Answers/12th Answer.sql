-- University Ranking Trends Over Time

SELECT 
    u.university_name,
    ury.year,
    rs.system_name,
    ury.score
FROM universities.university_ranking_year ury
JOIN universities.university u ON ury.university_id = u.id
JOIN universities.ranking_criteria rc ON ury.ranking_criteria_id = rc.id
JOIN universities.ranking_system rs ON rc.ranking_system_id = rs.id
ORDER BY u.university_name, rs.system_name, ury.year;

