-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.14


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;



CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(50) DEFAULT NULL,
  `description` text,
  `category` varchar(12) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`,`image`,`description`,`category`,`author`,`date`) VALUES
 (1,'/assets/img/food-1.jpg','Food photo 1','food','Lily Banse','2018-04-01'),
 (2,'/assets/img/nature-2.jpg','Nature photo 2','nature','Winn Pellew','2018-07-20'),
 (3,'/assets/img/wildlife-3.jpg','Wildlife photo 3','wildlife','Kalila Moffat','2019-07-21'),
 (4,'/assets/img/architecture-1.jpg','Architecture photo 1','architecture','Patrick Tomasso','2016-06-30'),
 (5,'/assets/img/food-2.jpg','Food photo 2','food','Eiliv-Sonas Aceron','2017-06-25'),
 (6,'/assets/img/wildlife-4.jpg','Wildlife photo 4','wildlife','Filippo Hannum','2015-03-11'),
 (7,'/assets/img/food-3.jpg','Food photo 3','food','Ringo Crockett','2018-08-14'),
 (8,'/assets/img/nature-3.jpg','Nature photo 3','nature','Ulla McGivena','2017-05-21'),
 (9,'/assets/img/architecture-2.jpg','Architecture photo 2','architecture','Liam Pozz','2015-04-11'),
 (10,'/assets/img/nature-4.jpg','Nature photo 4','nature','Dulci Morrott','2017-12-03'),
 (11,'/assets/img/architecture-3.jpg','Architecture photo 3','architecture','Joel Filipe','2019-06-24'),
 (12,'/assets/img/fineart-1.jpg','Fine Art photo 1','fine art','Jue Huang','2015-11-27'),
 (13,'/assets/img/food-4.jpg','Food photo 4','food','Felice Summerside','2015-08-17'),
 (14,'/assets/img/food-5.jpg','Food photo 5','food','Thomasin Osment','2017-09-23'),
 (15,'/assets/img/nature-1.jpg','Nature photo 1','nature','Brian Krahl','2018-02-07'),
 (16,'/assets/img/wildlife-1.jpg','Wildlife photo 1','wildlife','Rakel Lumox','2018-05-26'),
 (17,'/assets/img/fineart-2.jpg','Fine Art photo 2','fine art','Raychan Jones','2019-03-14'),
 (18,'/assets/img/architecture-4.jpg','Architecture photo 4','architecture','Claudio Testa','2015-01-04'),
 (19,'/assets/img/wildlife-2.jpg','Wildlife photo 2','wildlife','Timmie Middlebrook','2018-10-03'),
 (20,'/assets/img/fineart-3.jpg','Fine Art photo 3','fine art','Federico Passi','2015-11-14');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
