# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.38-0ubuntu0.14.04.1)
# Database: abc
# Generation Time: 2014-12-16 06:10:03 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

SET FOREIGN_KEY_CHECKS=OFF;

# Dump of table games
# ------------------------------------------------------------

DROP TABLE IF EXISTS `games`;

CREATE TABLE `games` (
  `game_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `game_name` varchar(255) NOT NULL DEFAULT '',
  `game_year` int(4) NOT NULL,
  `game_rating` varchar(10) NOT NULL DEFAULT '',
  `game_bio` varchar(255) DEFAULT NULL,
  `game_img` varchar(200) NOT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `GAMES` DISABLE KEYS */;

INSERT INTO `games` (`game_id`, `game_name`, `game_year`, `game_rating`, `game_bio`,`game_img`)
VALUES
	(1,'Valorant',2019,'PG-13','a 5v5 character-based tactical FPS where precise gunplay meets unique agent abilities. ','assets/img/valorant.png'),
	(2,'Cyberpunk 2077',2020,'R','Cyberpunk 2077 is an open-world, action-adventure story set in Night City.','assets/img/cyberpunk.jpg'),
  (3,'Elden Ring',2021,'R','Elden Ring is an action role-playing game played in a third-person perspective with gameplay focusing on combat and exploration.','assets/img/elder-ring.jpg'),
	(4,'Grand Theft Auto V',2013,'R','Grand Theft Auto V is an action-adventure game played from either a third-person or first-person perspective.','assets/img/gta5.jpg'),
	(5,'Forza Horizon 5',2021,'PG','Forza Horizon 5 is a racing video game It is the twelfth main instalment in the Forza series .','assets/img/forza.jpg'),
	(6,'Apex Legends',2019,'R','Apex Legends is a free-to-play battle royale-hero shooter game.','assets/img/apex.png');

/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL DEFAULT '',
  `user_full_name` varchar(150) NOT NULL DEFAULT '',
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_password` varchar(255) NOT NULL DEFAULT '',
  `user_role` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`user_id`, `user_name`, `user_full_name`, `user_email`, `user_password`, `user_role`)
VALUES
  (38,'admin','Admin 1','admin@admin.com','admin',1),
  (39,'test','Test','test@test.com','test',2);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table reviews
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `review_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `review_game_id` int(11) unsigned NOT NULL,
  `review_user_id` int(11) unsigned NOT NULL,
  `review_rating` int(11) NOT NULL,
  `review_content` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`review_id`),
  KEY `users_foreign_key` (`review_user_id`),
  KEY `games_foreign_key` (`review_game_id`),
  CONSTRAINT `games_foreign_key` FOREIGN KEY (`review_game_id`) REFERENCES `games` (`game_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_foreign_key` FOREIGN KEY (`review_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;

INSERT INTO `reviews` (`review_id`, `review_game_id`, `review_user_id`, `review_rating`, `review_content`)
VALUES
	(6,1,39,4,'This is one of my favorite video game of all time!'),
	(7,1,39,1,'Terrible game .');

/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

SET FOREIGN_KEY_CHECKS=ON;


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
