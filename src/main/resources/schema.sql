CREATE TABLE IF NOT EXISTS `feeding` (
  `feeding_id` int NOT NULL AUTO_INCREMENT,
  `avg_fish_size` double NOT NULL,
  `feed_out` int NOT NULL,
  `feeding_date` date DEFAULT NULL,
  `pellet_size` int NOT NULL,
  `qty_fed` int NOT NULL,
  `times_fed` int NOT NULL,
  `stockid` int DEFAULT NULL,
  PRIMARY KEY (`feeding_id`),
  KEY `FK3rs3uah0eagtnrjg8ixdo5uxb` (`stockid`),
  CONSTRAINT `FK3rs3uah0eagtnrjg8ixdo5uxb` FOREIGN KEY (`stockid`) REFERENCES `stock` (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `pond` (
  `pond_id` int NOT NULL AUTO_INCREMENT,
  `pond_name` varchar(255) DEFAULT NULL,
  `area` double DEFAULT NULL,
  `target_fish_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pond_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `sampling` (
  `sampling_id` int NOT NULL AUTO_INCREMENT,
  `avg_fish_size` double NOT NULL,
  `fish_specy` varchar(255) DEFAULT NULL,
  `sample_date` date DEFAULT NULL,
  `sample_qty` int NOT NULL,
  `target_size` double NOT NULL,
  `total_sample_weight` double NOT NULL,
  `stockid` int DEFAULT NULL,
  PRIMARY KEY (`sampling_id`),
  KEY `FK1ao7fqpyfukgngmnwuqwvam65` (`stockid`),
  CONSTRAINT `FK1ao7fqpyfukgngmnwuqwvam65` FOREIGN KEY (`stockid`) REFERENCES `stock` (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `stock` (
  `stock_id` int NOT NULL AUTO_INCREMENT,
  `fish_specy` varchar(255) DEFAULT NULL,
  `stock_date` date DEFAULT NULL,
  `total_stock` int NOT NULL,
  `date_emptied` date DEFAULT NULL,
  `mortality` int NOT NULL,
  `stock_remaining` int NOT NULL,
  `pond_id` int DEFAULT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `FKbn61oe9lffauajg1221ilyqdd` (`pond_id`),
  CONSTRAINT `FKbn61oe9lffauajg1221ilyqdd` FOREIGN KEY (`pond_id`) REFERENCES `pond` (`pond_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;