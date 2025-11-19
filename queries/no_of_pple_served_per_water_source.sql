SELECT
	type_of_water_source,
	SUM(number_of_people_served) AS number_of_people_surveyed
FROM
	water_source

GROUP BY
	type_of_water_source
ORDER BY
	type_of_water_source;