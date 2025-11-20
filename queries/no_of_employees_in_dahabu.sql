SELECT
    province_name,
    town_name,
	COUNT(DISTINCT assigned_employee_id) AS number_of_employees
FROM
	employee
WHERE 
	town_name = "Dahabu"
GROUP BY
	province_name,town_name
ORDER BY
	number_of_employees;
    
    
