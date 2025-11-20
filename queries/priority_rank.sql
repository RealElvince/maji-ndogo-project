
SELECT
	source_id,
	type_of_water_source,
	SUM(number_of_people_served) AS number_of_people_surveyed,
    RANK() OVER( ORDER BY SUM(number_of_people_served) DESC ) AS priority_rank
FROM
	water_source

GROUP BY
	source_id,type_of_water_source
    
ORDER BY
	priority_rank;