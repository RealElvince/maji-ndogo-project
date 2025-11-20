SELECT
	assigned_employee_id,
    COUNT(visit_count) AS number_of_visits
FROM 
	visits
GROUP BY
	assigned_employee_id
ORDER BY
	number_of_visits ASC
LIMIT 
	3;
    
SELECT
	employee_name
FROM
	employee
WHERE 
	assigned_employee_id = 20;