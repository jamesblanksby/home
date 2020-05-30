CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `camera` int(11) NOT NULL,
  `threshold` int(11) NOT NULL DEFAULT '0',
  `lock` tinyint(1) NOT NULL DEFAULT '0',
  `time_insert` timestamp NULL DEFAULT NULL,
  `time_update` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8mb4;