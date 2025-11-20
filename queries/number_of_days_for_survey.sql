
SELECT
	MIN(time_of_record) AS smallest_date,
    MAX(time_of_record) AS largest_date,
    DATEDIFF(MAX(time_of_record),MIN(time_of_record)) AS diff_in_days
FROM 
	visits;