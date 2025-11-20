SELECT
	TIME_FORMAT(time_of_record,"%H:%00") AS hour_of_day,
    ROUND(AVG(NULLIF(time_in_queue,0)),0) AS avg_queue_time

FROM
	visits
GROUP BY
	TIME_FORMAT(time_of_record,"%H:%00")
ORDER BY
	hour_of_day;