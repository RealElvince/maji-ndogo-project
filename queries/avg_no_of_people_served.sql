SELECT
	type_of_water_source,
    ROUND(AVG(number_of_people_served),0) AS avg_no_of_people_served
FROM
	water_source
GROUP BY
	type_of_water_source;
	
