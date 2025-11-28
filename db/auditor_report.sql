DROP TABLE IF EXISTS auditor_report;

CREATE TABLE auditot_report(
	location_id VARCHAR(32),
    type_of_water_source VARCHAR(64),
    true_water_source_score INT DEFAULT NULL,
    statements VARCHAR(255)
);