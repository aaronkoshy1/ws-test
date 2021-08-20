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


CREATE TABLE `cars` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `make` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` (`id`,`make`,`model`,`year`) VALUES
 (1,'Isuzu','Hombre Space','1998'),
 (2,'Buick','Terraza','2007'),
 (3,'Mazda','Miata MX-5','1997'),
 (4,'Ford','Escort','1993'),
 (5,'Kia','Sedona','2006'),
 (6,'Acura','TL','2009'),
 (7,'Dodge','Stealth','1994'),
 (8,'GMC','Yukon XL','2006'),
 (9,'Acura','RL','2011'),
 (10,'Toyota','Prius','2007'),
 (11,'Mazda','RX-8','2004'),
 (12,'Dodge','Omni','1978'),
 (13,'Chevrolet','Malibu','2000'),
 (14,'Toyota','Tacoma Xtra','1998'),
 (15,'Mitsubishi','Pajero','1986'),
 (16,'Oldsmobile','Silhouette','2001'),
 (17,'Kia','Optima','2012'),
 (18,'Chevrolet','Lumina','1999'),
 (19,'Nissan','Versa','2008'),
 (20,'Lexus','RX','2011');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
