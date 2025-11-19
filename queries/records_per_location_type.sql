 SELECT
	location_type,
    COUNT(DISTINCT location_id) AS number_of_records
FROM
	location
GROUP BY location_type
ORDER BY location_type;