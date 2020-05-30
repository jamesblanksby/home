CREATE TABLE `event` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `camera` INT(11) NOT NULL,
  `file` VARCHAR(255) NOT NULL,
  `time_insert` TIMESTAMP NULL,
  `time_update` TIMESTAMP NULL,
  PRIMARY KEY (`id`)
);

