CREATE TABLE `visits` (
  `record_id` int NOT NULL,
  `location_id` varchar(255) DEFAULT NULL,
  `source_id` varchar(510) DEFAULT NULL,
  `time_of_record` datetime DEFAULT NULL,
  `visit_count` int DEFAULT NULL,
  `time_in_queue` int DEFAULT NULL,
  `assigned_employee_id` int DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `location_id` (`location_id`),
  KEY `source_id` (`source_id`),
  KEY `assigned_employee_id` (`assigned_employee_id`),
  CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `visits_ibfk_2` FOREIGN KEY (`source_id`) REFERENCES `water_source` (`source_id`),
  CONSTRAINT `visits_ibfk_3` FOREIGN KEY (`assigned_employee_id`) REFERENCES `employee` (`assigned_employee_id`)
);