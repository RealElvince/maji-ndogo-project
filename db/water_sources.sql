CREATE TABLE `water_source` (
  `source_id` varchar(510) NOT NULL,
  `type_of_water_source` varchar(255) DEFAULT NULL,
  `number_of_people_served` int DEFAULT NULL,
  PRIMARY KEY (`source_id`)
) ;