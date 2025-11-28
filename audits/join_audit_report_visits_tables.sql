SELECT
	ar.location_id AS audition_location,
    ar.true_water_source_score,
    v.location_id AS visit_location,
    v.record_id,
    wq.subjective_quality_score
FROM
	auditor_report ar

INNER JOIN
	visits v
ON
	ar.location_id = v.location_id

INNER JOIN 
	water_quality wq
ON
	v.record_id = wq.record_id;