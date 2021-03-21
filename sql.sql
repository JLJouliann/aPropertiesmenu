
ALTER TABLE `properties` ADD COLUMN `garage` varchar(255) DEFAULT NULL
AFTER `room_menu`;

CREATE TABLE `user_parkings` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `plate` varchar(60) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `zone` longtext,
  `vehicle` longtext,

  PRIMARY KEY (`id`)
);

CREATE TABLE `owned_vehicles` (
	`owner` varchar(40) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`vehicle` longtext,
	`type` VARCHAR(20) NOT NULL DEFAULT 'car',
	`job` VARCHAR(20) NULL DEFAULT NULL,
	`stored` TINYINT NOT NULL DEFAULT '0',

	PRIMARY KEY (`plate`)
);

ALTER TABLE `owned_vehicles` ADD `state` BOOLEAN NOT NULL DEFAULT FALSE COMMENT 'Etat de la voiture' AFTER `owner`;

ALTER TABLE `owned_vehicles` ADD COLUMN  `garageperso` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Garage Personnel' 
AFTER `state` ;
