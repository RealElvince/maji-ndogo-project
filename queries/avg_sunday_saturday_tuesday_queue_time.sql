SELECT 
    DAYNAME(time_of_record) AS day,
    ROUND(AVG(NULLIF(time_in_queue,0)),0) AS avg_queue_time
FROM visits
WHERE (DAYNAME(time_of_record) = 'Saturday' AND TIME(time_of_record) BETWEEN '12:00:00' AND '12:59:59')
   OR (DAYNAME(time_of_record) = 'Tuesday' AND TIME(time_of_record) BETWEEN '18:00:00' AND '18:59:59')
   OR (DAYNAME(time_of_record) = 'Sunday' AND TIME(time_of_record) BETWEEN '09:00:00' AND '09:59:59')
GROUP BY day
ORDER BY
	`day`;

	


