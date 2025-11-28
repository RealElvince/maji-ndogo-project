SELECT
    ar.location_id,
    ar.type_of_water_source AS auditor_source,
    ws.type_of_water_source AS survey_source,
    v.record_id,
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
	water_source ws
ON 
	v.source_id = ws.source_id  
WHERE 
	v.visit_count = 1
AND 
	ar.true_water_source_score - wq.subjective_quality_score <> 0;

