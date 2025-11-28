WITH error_count AS(
SELECT
	employee_name,
    COUNT(employee_name) AS number_of_mistakes
FROM
	Incorrect_Records
GROUP BY 
	employee_name
)

SELECT
	*
FROM
	error_count;
    