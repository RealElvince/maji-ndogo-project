SELECT
	source_id,number_of_people_served
FROM 
	water_source
WHERE
	number_of_people_served = (
      SELECT MAX(number_of_people_served)
	  FROM water_source
    );