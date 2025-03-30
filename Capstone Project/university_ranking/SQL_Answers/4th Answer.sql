SELECT 
    rc.criteria_name,
    rs.system_name
FROM universities.ranking_criteria rc
JOIN universities.ranking_system rs ON rc.ranking_system_id = rs.id
ORDER BY rc.criteria_name, rs.system_name;


SELECT 
    rc.criteria_name,
    rc.ranking_system_id,
    rs.system_name
FROM universities.ranking_criteria rc
JOIN universities.ranking_system rs ON rc.ranking_system_id = rs.id
ORDER BY rc.criteria_name, rc.ranking_system_id;

