SELECT * FROM visits;

SELECT
	AVG(NULLIF(time_in_queue,0)) AS avg_time
FROM 
	visits;