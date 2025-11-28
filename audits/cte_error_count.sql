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
	AVG(number_of_mistakes) AS avg_number_of_mistake_per_employee
FROM
	error_count;
    