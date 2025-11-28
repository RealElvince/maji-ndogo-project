SELECT
	ar.location_id AS location_id,
    v.record_id,
    v.assigned_employee_id,
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
    
WHERE
	v.visit_count = 1
AND
	ar.true_water_source_score - wq.subjective_quality_score <> 0;