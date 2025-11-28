WITH Suspect_List AS (
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
		number_of_mistakes DESC
)

SELECT
	*
FROM
	Suspect_List;
    
    
SELECT *
FROM incorrect_records
WHERE employee_name IN (
    SELECT employee_name
    FROM suspect_list
)
ORDER BY employee_name, location_id;
