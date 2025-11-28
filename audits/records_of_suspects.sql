SELECT 
	employee_name,
    location_id,
    statements
FROM 
	Incorrect_Records
WHERE
	employee_name IN (SELECT employee_name FROM suspect_list)
ORDER BY 
	employee_name, location_id;