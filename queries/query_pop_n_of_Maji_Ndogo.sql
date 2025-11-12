SELECT 
	*
FROM 
	data_dictionary
WHERE 
	`description` LIKE "%population%"
OR column_name = "%population%";

SELECT
	`name`,pop_n
FROM
	global_water_access
WHERE 
	name = "Maji Ndogo";




