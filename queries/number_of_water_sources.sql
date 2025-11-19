SELECT
	type_of_water_source,
    COUNT(DISTINCT source_id) AS number_of_sources
FROM 
	water_source

GROUP BY
	type_of_water_source
ORDER BY 
	type_of_water_source;

