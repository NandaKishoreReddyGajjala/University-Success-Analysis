-- SQL Query: Female Student Count Per University

SELECT 
    u.university_name,
    uy.year,
    uy.num_students,
    uy.pct_female_students,
    (uy.num_students * (uy.pct_female_students / 100)) AS female_students
FROM universities.university_year uy
JOIN universities.university u ON uy.university_id = u.id
ORDER BY female_students DESC;


-- Alternative: Compare Female Student Percentage Across Universities

SELECT 
    u.university_name,
    uy.year,
    uy.pct_female_students
FROM universities.university_year uy
JOIN universities.university u ON uy.university_id = u.id
ORDER BY uy.pct_female_students DESC;
