SELECT
	type_of_water_source,
	SUM(number_of_people_served) AS number_of_people_surveyed,
    RANK() OVER( ORDER BY SUM(number_of_people_served) DESC ) AS rank_number_of_people_served
FROM
	water_source

GROUP BY
	type_of_water_source
ORDER BY
	rank_number_of_people_served;