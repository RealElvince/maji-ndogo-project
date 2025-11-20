SELECT
	TIME_FORMAT(time_of_record,"%H:00") AS hour_of_day,
    -- SUNDAY
    ROUND(
		AVG(
			CASE
				WHEN DAYNAME(time_of_record) = "Sunday" THEN time_in_queue
                ELSE NULL
			END 
        ),0
    ) AS Sunday,
    
    -- Monday
    ROUND(
		AVG(
			CASE
				WHEN DAYNAME(time_of_record) = "Monday" THEN time_in_queue
                ELSE NULL
			END 
        ),0
    ) AS Monday,
    
    -- Tuesday
    ROUND(
		AVG(
			CASE
				WHEN DAYNAME(time_of_record) = "Tuesday" THEN time_in_queue
                ELSE NULL
			END 
        ),0
    ) AS Tuesday,
    -- Wednesday
    ROUND(
		AVG(
			CASE
				WHEN DAYNAME(time_of_record) = "Wednesday" THEN time_in_queue
                ELSE NULL
			END 
        ),0
    ) AS Wednesday,
    
    -- Thursday
    ROUND(
		AVG(
			CASE
				WHEN DAYNAME(time_of_record) = "Thursday" THEN time_in_queue
                ELSE NULL
			END 
        ),0
    ) AS Thursday,
    
    -- Friday
    ROUND(
		AVG(
			CASE
				WHEN DAYNAME(time_of_record) = "Friday" THEN time_in_queue
                ELSE NULL
			END 
        ),0
    ) AS Friday,
    
    -- Saturday
    ROUND(
		AVG(
			CASE
				WHEN DAYNAME(time_of_record) = "Saturday" THEN time_in_queue
                ELSE NULL
			END 
        ),0
    ) AS Saturday
FROM
	visits
WHERE
	time_in_queue != 0

GROUP BY
	TIME_FORMAT(time_of_record,"%H:00")
ORDER BY
	hour_of_day;
	
    
    
    