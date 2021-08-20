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



CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`first_name`,`last_name`,`gender`,`email`,`company`,`avatar`) VALUES
 (1,'Rowena','Pardy','Female','rpardy0@unc.edu','Lehner, Langworth and Hagenes','/assets/img/avatar-1.jpg'),
 (2,'Rae','De Bruyne','Female','rdebruyne1@aboutads.info','Bauch-Trantow','/assets/img/avatar-2.jpg'),
 (3,'Janeczka','Darke','Female','jdarke2@google.co.jp','Towne, Koch and Wyman','/assets/img/avatar-3.jpg'),
 (4,'Niki','Ehlerding','Male','nehlerding3@msu.edu','Rolfson, Nienow and Morar','/assets/img/avatar-7.jpg'),
 (5,'Davidde','Hansbury','Male','dhansbury4@nyu.edu','Bailey, Smitham and Runte','/assets/img/avatar-8.jpg'),
 (6,'Adan','Sunnucks','Male','asunnucks5@unblog.fr','Flatley-Hackett','/assets/img/avatar-9.jpg'),
 (7,'Hugh','Gallen','Male','hgallen6@boston.com','Jakubowski-Crist','/assets/img/avatar-10.jpg'),
 (8,'Elva','Abbots','Female','eabbots7@sourceforge.net','Kshlerin, Fadel and Kunze','/assets/img/avatar-4.jpg'),
 (9,'Willem','O\'Hickey','Male','wohickey8@goo.ne.jp','Wisoky Group','/assets/img/avatar-11.jpg'),
 (10,'Major','Dilkes','Male','mdilkes9@yahoo.com','Turcotte LLC','/assets/img/avatar-12.jpg'),
 (11,'Rudolfo','Gabbat','Male','rgabbata@list-manage.com','Doyle and Sons','/assets/img/avatar-13.jpg'),
 (12,'Egor','Brombell','Male','ebrombellb@blogger.com','Ondricka LLC','/assets/img/avatar-14.jpg'),
 (13,'Page','Feeny','Male','pfeenyc@unblog.fr','Jerde, Schmidt and Schumm','/assets/img/avatar-15.jpg'),
 (14,'Riordan','Pitkeathly','Male','rpitkeathlyd@discuz.net','Kilback, Halvorson and Torp','/assets/img/avatar-16.jpg'),
 (15,'Herold','Smithend','Male','hsmithende@google.co.uk','Steuber-Tillman','/assets/img/avatar-17.jpg'),
 (16,'Simone','Feaveer','Female','sfeaveerf@imageshack.us','Spencer Group','/assets/img/avatar-5.jpg'),
 (17,'Sim','Leaton','Male','sleatong@google.nl','Wuckert Group','/assets/img/avatar-18.jpg'),
 (18,'Malvin','Markushkin','Male','mmarkushkinh@yale.edu','Lockman Inc','/assets/img/avatar-19.jpg'),
 (19,'Darnall','De Vile','Male','ddevilei@marriott.com','Wisoky, Kiehn and Berge','/assets/img/avatar-20.jpg'),
 (20,'Jaquelyn','Sinnatt','Female','jsinnattj@cyberchimps.com','Lebsack, Wisozk and Kuhlman','/assets/img/avatar-6.jpg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
