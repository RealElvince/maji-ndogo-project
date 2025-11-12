CREATE TABLE `water_quality` (
  `record_id` int NOT NULL,
  `subjective_quality_score` int DEFAULT NULL,
  `visit_count` int DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  CONSTRAINT `water_quality_ibfk_1` FOREIGN KEY (`record_id`) REFERENCES `visits` (`record_id`)
);