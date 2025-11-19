SELECT
	town_name,
    COUNT(DISTINCT location_id) AS number_of_records
FROM
	location

GROUP BY
	town_name
ORDER BY
	number_of_records DESC;