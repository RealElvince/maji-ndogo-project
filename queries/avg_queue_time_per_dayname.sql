SELECT 
	DAYNAME(time_of_record) AS day_of_the_week,
    ROUND(AVG(NULLIF(time_in_queue,0)),0) AS avg_time_in_queue
FROM
	visits
GROUP BY	
	day_of_the_week;
	
	