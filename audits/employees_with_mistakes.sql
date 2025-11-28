WITH Incorrect_Records AS (
	SELECT
		ar.location_id AS location_id,
		v.record_id,
		e.employee_name,
		ar.true_water_source_score AS auditor_score,
		wq.subjective_quality_score AS surveyor_score
	FROM
		auditor_report ar

	INNER JOIN
		visits v
	ON
		ar.location_id = v.location_id

	INNER JOIN 
		water_quality wq
	ON
		v.record_id = wq.record_id
	INNER JOIN
		employee e
	ON
		v.assigned_employee_id = e.assigned_employee_id
		
	WHERE
		v.visit_count = 1
	AND
		ar.true_water_source_score <> wq.subjective_quality_score
)
SELECT
	employee_name,
    COUNT(employee_name) AS number_of_mistakes
FROM
	Incorrect_Records
GROUP BY 
	employee_name;