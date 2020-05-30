CREATE TABLE `camera` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `address_ip` varchar(255) NOT NULL,
  `address_mac` varchar(255) NOT NULL,
  `stream_source` mediumtext NOT NULL,
  `stream_rate` int(11) DEFAULT NULL,
  `stream_width` int(11) DEFAULT NULL,
  `stream_height` int(11) DEFAULT NULL,
  `time_insert` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `time_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8mb4;