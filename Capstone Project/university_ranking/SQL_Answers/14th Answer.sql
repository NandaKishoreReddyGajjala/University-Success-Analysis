-- Trend of University Ranking Scores Over Time
SELECT 
    ury.year,
    AVG(ury.score) AS avg_ranking_score
FROM universities.university_ranking_year ury
WHERE ury.score IS NOT NULL
GROUP BY ury.year
ORDER BY ury.year;
