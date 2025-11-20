SELECT
	CONCAT(day(time_of_record), " ", monthname(time_of_record), " ", year(time_of_record)) AS day_month_year
FROM 
	visits;
