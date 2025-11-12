CREATE TABLE `location` (
  `location_id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `province_name` varchar(255) DEFAULT NULL,
  `town_name` varchar(255) DEFAULT NULL,
  `location_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
);