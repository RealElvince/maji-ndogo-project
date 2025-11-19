SELECT
	type_of_water_source,
	ROUND(SUM(number_of_people_served)/(27628140)*100,2) AS pct_of_people_served
FROM
	water_source

GROUP BY
	type_of_water_source
ORDER BY
	type_of_water_source;