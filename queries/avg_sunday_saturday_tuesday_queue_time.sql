SELECT 
    DAYNAME(time_of_record) AS day,
    ROUND(AVG(NULLIF(time_in_queue,0)),0) AS avg_queue_time
FROM visits
WHERE (DAYNAME(time_of_record) = 'Saturday' AND TIME(time_of_record) BETWEEN '12:00:00' AND '13:00:00')
   OR (DAYNAME(time_of_record) = 'Tuesday' AND TIME(time_of_record) BETWEEN '18:00:00' AND '19:00:00')
   OR (DAYNAME(time_of_record) = 'Sunday' AND TIME(time_of_record) BETWEEN '09:00:00' AND '10:00:00')
GROUP BY day
ORDER BY
	`day`;

	


