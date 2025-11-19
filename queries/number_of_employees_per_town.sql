SELECT
	town_name,
    COUNT(DISTINCT assigned_employee_id) AS number_of_employees
FROM
	employee
GROUP BY town_name
ORDER BY town_name;