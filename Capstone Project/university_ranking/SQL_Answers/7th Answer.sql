SELECT 
    rc.criteria_name, 
    rc.ranking_system_id
FROM universities.ranking_criteria rc
ORDER BY rc.criteria_name, rc.ranking_system_id;


SELECT 
    rs.system_name, 
    rc.criteria_name
FROM universities.ranking_criteria rc
JOIN universities.ranking_system rs ON rc.ranking_system_id = rs.id
ORDER BY rs.system_name, rc.criteria_name;
