SELECT
	employee_name,
    COUNT(employee_name) AS number_of_mistakes
FROM
	incorrect_records

GROUP BY
	employee_name
HAVING
	 COUNT(employee_name) > 6

ORDER BY
	number_of_mistakes DESC;
	