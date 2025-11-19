SELECT
	assigned_employee_id,
    COUNT(visit_count) AS number_of_visits
FROM 
	visits
GROUP BY
	assigned_employee_id
LIMIT 3;