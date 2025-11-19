SELECT
	province_name,
    town_name,
    COUNT(DISTINCT location_id) AS records_per_town
FROM
	location
GROUP BY 
	province_name,town_name
ORDER BY
	province_name,records_per_town DESC;