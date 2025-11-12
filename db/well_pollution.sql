CREATE TABLE `well_pollution` (
  `source_id` varchar(258) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pollutant_ppm` float DEFAULT NULL,
  `biological` float DEFAULT NULL,
  `results` varchar(255) DEFAULT NULL,
  KEY `source_id` (`source_id`),
  CONSTRAINT `well_pollution_ibfk_1` FOREIGN KEY (`source_id`) REFERENCES `water_source` (`source_id`)
) ;