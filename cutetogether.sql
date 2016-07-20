# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Hôte: 127.0.0.1 (MySQL 5.5.49-37.9)
# Base de données: cutetogether
# Temps de génération: 2016-07-20 7:24:33 AM +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Affichage de la table blog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `verse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C0155143A76ED395` (`user_id`),
  CONSTRAINT `FK_C0155143A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;

INSERT INTO `blog` (`id`, `title`, `description`, `verse`, `user_id`, `date`)
VALUES
	(1,'Le choix du lieu','Nous vous accueillerons à la Masia Mas Pujol située dans la commune de Cabrera de Mar dans la province de Barcelone. Comme la plus part d\'entre vous le savez, je suis originaire de la Catalogne et j\'ai vécue toute ma vie près de Barcelone dans une ville qui s\'appelle Badalona. La commune de Cabrera de Mar se trouve à coté de ma ville natale et dispose d\'une magnifique combinaison: la mer et la montagne. Et vous vous demanderez, mais qu\'est-ce que signifie le mot \"Masia ou Mas\" ? Et donc, en catalan ou en espagnol veut dire Maison de Campagne. Célébrer notre union dans un endroit \"cute\" , charmant et chaleureux nous identifie comme couple :)  Voilà en quelques mots le choix de notre endroit, n’hésitez pas à nous répondre sur l\'article si vous avez envie d\'en connaitre plus  sur le lieu. #BeBlessed','Masia Mas Pujol vous attends !!',2,'0000-00-00 00:00:00'),
	(2,'Quelques \"TIPS\" pour le logement','Cet article est plutôt destiné à nos invités qui viennent de la France! Le but est de vous donner le maximum des pistes pour trouver un logement à votre goût et besoin. Ils existent plusieurs possibilités selon la durée de votre séjour: un hôtel aux alentours de la salle ou un hôtel à Barcelone pour les 2 nuits de Vendredi 20 à Dimanche 22 Oct. Ou un appartement à plusieurs aux alentours ou à Barcelone à partir de de 2 nuits. En termes de localisation, si vous avez planifié de vous loger à Barcelona City il faut savoir qu\'il y a environ 31km/30min en voiture) et environ 6km/15min en voiture aussi au départ d\'une des villes à côté la salle. Pour vos recherches sur des sites de logement comme Booking.com ou Airbnb, prenez les villes à coté comme Vilassar de Mar, Mataro, Badalona, Premià de Mar, Alella ou Masnou. Les prix des appartements varient en fonction du nombre de personnes/nuits mais ils se trouvent environ 20-25€/nuit. Pour les hôtels à Barcelone est plutôt vers les 40-45eur/nuit. Nous restons à votre entière disposition si vous avez besoin des conseils et de partager vos recherches avec nous et le reste des invités. Laissez vos messages sur cette article ;) #StayBlessed','Prenez-vous à l\'avance pour ne pas rater les meilleures offres!',2,'2016-06-29 17:21:35'),
	(10,'Comment se déplacer ?','Pour les courageux qui prendront la voiture, je vous laisse entre les mains de vos GPS :) Pour les \"Express\" qui prendront l\'avion, vous aller atterrir à l’Aéroport del Prat (youhou!); plusieurs options se présentent pour vous déplacer jusqu\'à Barcelona City ou les villes à côté de la salle. La ligne du métro L9 et le train de Rodalies RENFE, vous amèneront jusqu\'à Barcelone. Le prix d\'un billet de train/métro est de 4,50€. Le métro est ouvert jusqu\'à 2h en semaine et le dernier train est à 23h. Pour ceux qui prendront le logement aux alentours de la salle, il faudra prendre ce même train mais faire un transbordement à l’arrêt Barcelona El Clot Arago et reprendre le train direction Vilassar de Mar ou Premia de Mar. Je vous laisse deux sites web qui pourront vous aider: http://rodalies.gencat.cat/es et http://www.aeropuertobarcelona-elprat.com/cast/linea9-metro-aeropuerto-barcelona.htm La durée du trajet est d\'environ 30min jusqu\'à Barcelone et 1h jusqu\'aux villes aux alentours de la salle. Bon j\'espère que ça vous aidera mais poster des messages si besoin de quoi que ce soit ! Bisous les invités #Blessings','Facile, proche, pas cher et rapide !',2,'2016-07-14 08:28:18');

/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table blog_picture
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_picture`;

CREATE TABLE `blog_picture` (
  `blog_id` int(11) NOT NULL,
  `picture_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`,`picture_id`),
  UNIQUE KEY `UNIQ_FA2DF20AEE45BDBF` (`picture_id`),
  KEY `IDX_FA2DF20ADAE07E97` (`blog_id`),
  CONSTRAINT `FK_FA2DF20ADAE07E97` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`),
  CONSTRAINT `FK_FA2DF20AEE45BDBF` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `blog_picture` WRITE;
/*!40000 ALTER TABLE `blog_picture` DISABLE KEYS */;

INSERT INTO `blog_picture` (`blog_id`, `picture_id`)
VALUES
	(1,5),
	(1,6),
	(1,7),
	(1,8),
	(1,9),
	(1,10),
	(2,11),
	(2,12),
	(10,60),
	(10,61);

/*!40000 ALTER TABLE `blog_picture` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526CDAE07E97` (`blog_id`),
  CONSTRAINT `FK_9474526CDAE07E97` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;

INSERT INTO `comment` (`id`, `name`, `email`, `message`, `date`, `blog_id`)
VALUES
	(1,'sam','sam@sam.fr','teste','2016-06-30 11:38:04',1),
	(2,'sam','sam@sam.fr','teste','2016-06-30 11:39:06',1),
	(3,'sam','sam@sam.fr','teste','2016-06-30 11:41:11',1),
	(4,'sam','sam@sam.fr','teste','2016-06-30 11:41:28',1),
	(5,'sam','sam@sam.fr','teste','2016-06-30 11:42:27',1),
	(6,'sam','sam@sam.fr','teste','2016-06-30 11:43:00',1),
	(7,'sam','sam@sam.fr','teste','2016-06-30 11:45:45',1),
	(8,'sam','sam@sam.fr','teste','2016-06-30 11:47:59',1),
	(9,'sam','sam@sam.fr','teste','2016-06-30 11:48:05',1),
	(10,'sam','sam@sam.fr','teste','2016-06-30 11:49:40',1),
	(11,'sam','sam@sam.fr','teste','2016-06-30 11:51:52',1),
	(12,'sam','sam@sam.fr','teste','2016-06-30 11:52:05',1),
	(13,'sam','sam@sam.fr','teste','2016-06-30 11:52:28',1),
	(14,'sam','sam@sam.fr','teste','2016-06-30 11:53:20',1),
	(15,'sam','sam@sam.fr','teste','2016-06-30 11:54:19',1),
	(16,'sam','sam@sam.fr','teste','2016-06-30 11:56:17',1),
	(17,'sam','sam@sam.fr','teste','2016-06-30 11:58:11',1),
	(18,'sam','sam@sam.fr','teste','2016-06-30 11:59:40',1),
	(19,'sam','sam@sam.fr','teste','2016-06-30 12:06:23',1),
	(20,'sam','sam@sam.fr','teste','2016-06-30 12:07:18',1),
	(21,'sam','sam@sam.fr','teste','2016-06-30 12:08:36',1),
	(22,'sam','sam@sam.fr','teste','2016-06-30 12:09:17',1),
	(23,'sam','sam@sam.fr','teste','2016-06-30 16:37:18',1),
	(24,'sam','sam@sam.fr','teste','2016-06-30 16:37:53',1);

/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table event
# ------------------------------------------------------------

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Affichage de la table ext_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ext_translations`;

CREATE TABLE `ext_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lookup_unique_idx` (`locale`,`object_class`,`field`,`foreign_key`),
  KEY `translations_lookup_idx` (`locale`,`object_class`,`foreign_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `ext_translations` WRITE;
/*!40000 ALTER TABLE `ext_translations` DISABLE KEYS */;

INSERT INTO `ext_translations` (`id`, `locale`, `object_class`, `field`, `foreign_key`, `content`)
VALUES
	(1,'fr','AppBundle\\Entity\\Lovestory','title','1','Nos fiançailles à NYC'),
	(2,'fr','AppBundle\\Entity\\Lovestory','description','1','Lors du séjour de Sam à Montréal en Février, on a fait un weekend à New York (mon rêve depuis toute jeune). Et c\'est là que Sam m\'a demandé les fiançailles lors d\'une soirée parfaite sur un roof top. A partir de ce jour là, un vrai travail a commencé dans nos vies pour nous préparer à en arriver jusqu\'à, là !'),
	(5,'fr','AppBundle\\Entity\\Lovestory','title','3','Notre Anniversaire'),
	(6,'fr','AppBundle\\Entity\\Lovestory','description','3','On c\'était dit le \"oui\" pour faire officielle notre relation'),
	(13,'fr','AppBundle\\Entity\\Lovestory','title','7','Nos vies se sont croisés une soirée d\'été à Paris'),
	(14,'fr','AppBundle\\Entity\\Lovestory','description','7','Si Samuel devrait vous donner sa version, il dirait \"AH OUAIS j\'ai senti sur moi des regards d\'une rousse assez mignonne, tu vois\" ... bon aller, faut pas abuser suis une fille discrète comme même ;) mais c\'est vrai que je n\'ai pas pu résister à son charme avec sa chemise rouge à carreaux. A l\'époque, je ne parlais pas très bien le français mais j\'ai très bien compris la phrase que Sam m\'a dit: \"je cherche une prof de salsa\"');

/*!40000 ALTER TABLE `ext_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table ext_translations_lovestory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ext_translations_lovestory`;

CREATE TABLE `ext_translations_lovestory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `story_translation_idx` (`locale`,`object_class`,`field`,`foreign_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Affichage de la table lovestory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lovestory`;

CREATE TABLE `lovestory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageFile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `lovestory` WRITE;
/*!40000 ALTER TABLE `lovestory` DISABLE KEYS */;

INSERT INTO `lovestory` (`id`, `title`, `description`, `date`, `image`, `imageFile`)
VALUES
	(1,'Nos fiançailles à NYC','D\'une façon inattendu Sam avait tout préparé dans un roof top de NYC pour Laia et lui demandé un engagement d\'amour','2015-02-21 00:00:00','dc43a3d645489d79fc3e2ebcb85942a2.jpg','/tmp/phpbnRyu2'),
	(3,'test','testes','2011-02-11 00:00:00','c8c303d21cec6cc41c6fa73fb4de0f33.jpg','/tmp/php6Amh5q'),
	(7,'Nos vies se sont croisés une soirée d\'été à Paris','Si Samuel devrait vous donner sa version, il dirait \"AH OUAIS j\'ai senti sur moi des regards d\'une rousse assez mignonne, tu vois\" ... bon aller, faut pas abuser suis une fille discrète comme même ;) mais c\'est vrai que je n\'ai pas pu résister à son charme avec sa chemise rouge à carreaux. A l\'époque je ne parlais pas très bien le français mais j\'ait très bien compris la phrase aue Sam m\'a dit: \"je cherche une prof de salsa\"','2011-07-03 00:00:00','b6f06dd0005291c87ef8bc254d43657a.jpg','');

/*!40000 ALTER TABLE `lovestory` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table picture
# ------------------------------------------------------------

DROP TABLE IF EXISTS `picture`;

CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageFile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;

INSERT INTO `picture` (`id`, `image`, `imageFile`, `type`, `title`, `description`)
VALUES
	(1,'f4c2c807f839b9d381b09a91ae2fe23c.JPG',NULL,'picture',NULL,NULL),
	(2,'e76016e68457bc469f9aeaa968e8c346.jpg',NULL,'picture',NULL,NULL),
	(3,'169c1aed23ed4cc5d898bdce4be76d2d.jpg',NULL,'picture',NULL,NULL),
	(4,'d172dfe3557c80e74bae16b6f8a897b0.jpg',NULL,'picture',NULL,NULL),
	(5,'4d47f785bccc826a5cd59ae941168761.jpg',NULL,'picture',NULL,NULL),
	(6,'39c4e3083ccabef742ae24258ffcdf25.png',NULL,'picture',NULL,NULL),
	(7,'56397756e52347ca0f7e1e04e64615e2.jpg',NULL,'picture',NULL,NULL),
	(8,'6d810fb0b0a94de0da82142fd4031d87.jpg',NULL,'picture',NULL,NULL),
	(9,'17f9bfcef098d33945fb0b09a5b059ae.jpg',NULL,'picture',NULL,NULL),
	(10,'ab85e5df7abc2fa6f34c61e36b6c3145.jpg',NULL,'picture',NULL,NULL),
	(11,'ec3813c2a1f2e4bbd014d8d7ffb6bb38.png','/tmp/phpr9iqLf','picture',NULL,NULL),
	(12,'546e4ceb331bbb8dcd88fa95d93c31a5.JPG',NULL,'picture',NULL,NULL),
	(13,'a7a2c1ef4e2a5b4f2cc16ea62b4a197e.JPG','/tmp/phpgG4vHn','picture',NULL,NULL),
	(14,'ae4c20338093335782689a32e82b345c.JPG','/tmp/phpIVClym','picture',NULL,NULL),
	(15,'cde264258ea37bbf74e9bf666c4c8ba8.jpg','/tmp/phpfg8Rjd','picture',NULL,NULL),
	(16,'703571fe3e11aec2ab0bc31bd44fbb7f.JPG','/tmp/phpGNUTA8','gallery','test','test'),
	(17,'6f34c3f840e16dec67c8781662a9f4f6.jpg','/tmp/php5ZJaiy','gallery','test','test'),
	(18,'05cdd564cd1e3a3fef881e516fd4c52e.JPG','/tmp/phpoBt1cm','picture',NULL,NULL),
	(19,'fca3ce2bda6540f2b74851fdbc48cc61.JPG','/tmp/phpthIC3Q','picture',NULL,NULL),
	(20,'6638ea70cad6f40811fcd2d9d0ca0cda.JPG','/tmp/phpHuVUQ9','picture',NULL,NULL),
	(21,'4d6014f5a7b7641fef4c39a98c7c41dd.JPG','/tmp/phpw5cRW8','picture',NULL,NULL),
	(22,'473c2b0d8ee088428ff07f279a29bd32.JPG','/tmp/phpg4tMJY','picture',NULL,NULL),
	(23,'6a859fc34787dccc027bff246966f299.JPG','/tmp/php8vSgLp','picture',NULL,NULL),
	(24,'4f4394fb784b9b717b47d053d3715715.JPG','/tmp/phppDaniq','picture',NULL,NULL),
	(25,'f73a6107b7b768b0fd1088e4f3e8d967.JPG','/tmp/php36epEH','picture',NULL,NULL),
	(58,'f84f2db10281269a88b92d2ac51ee3d4.JPG','/tmp/phpYjx2qm','picture',NULL,NULL),
	(59,'b0beb2e17e421ab9ef31d1bd75989c05.JPG','/tmp/phpoiQu68','picture',NULL,NULL),
	(60,'35ddda1e7938010eae309193e648d097.jpg','/tmp/phpFxLHul','picture',NULL,NULL),
	(61,'6d0d1332949f0830ce18db3e3438928b.jpg',NULL,'picture',NULL,NULL),
	(65,'e12553d7fff228d84e58335c78d97897.JPG',NULL,'picture',NULL,NULL),
	(66,'7c505014515df93f003f7a85f9cf1ff2.jpg',NULL,'picture',NULL,NULL),
	(67,'0d994d4e6206afbb8c914bf27b9f84a7.jpg','/tmp/phpMTPxoJ','picture',NULL,NULL),
	(68,'31a3a34147c7fe9c18aaff89f25133ba.jpg','/tmp/phpFIXzi7','picture',NULL,NULL);

/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;

INSERT INTO `role` (`id`, `role`)
VALUES
	(3,'groom'),
	(4,'bride'),
	(6,'friend'),
	(8,'Maid of Honor'),
	(9,'Best Man'),
	(10,'Bridesmaid'),
	(11,'Groomsman');

/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table rsvp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rsvp`;

CREATE TABLE `rsvp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guestNumber` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9FA5CE4EA76ED395` (`user_id`),
  CONSTRAINT `FK_9FA5CE4EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `rsvp` WRITE;
/*!40000 ALTER TABLE `rsvp` DISABLE KEYS */;

INSERT INTO `rsvp` (`id`, `message`, `guestNumber`, `name`, `user_id`)
VALUES
	(1,'test',2,'test',2),
	(2,'test',2,'test',2),
	(3,'test',2,'test',2),
	(4,'test',2,'test',2),
	(5,'test',2,'test',2),
	(6,'test',2,'test',2),
	(7,'test',1,'test',2),
	(8,'test',1,'test',2),
	(9,'test',1,'test',2),
	(10,'test',1,'test',2),
	(11,'test',1,'test',2),
	(12,'test',1,'test',2),
	(13,'test',1,'test',2),
	(14,'test',1,'test',2),
	(15,'test',1,'test',2),
	(16,'test',1,'test',2),
	(17,'test',1,'test',2),
	(18,'test',1,'test',2),
	(19,'test',1,'test',2),
	(20,'test',1,'test',2),
	(21,'test',1,'samuel Gomis',2),
	(22,'test',1,'test',1),
	(23,'test',1,'test',1),
	(24,'test',1,'test',1),
	(25,'test',1,'test',1),
	(26,'test',1,'test',1),
	(27,'test',1,'test',1),
	(28,'test',1,'test',1),
	(29,'test',1,'test',1),
	(30,'test',1,'test',1),
	(31,'test',1,'test',1),
	(32,'test',1,'test',1),
	(33,'test',1,'test',1),
	(34,'test',1,'test',1),
	(35,'test',1,'test',1),
	(36,'test',1,'test',1),
	(37,'test',1,'test',1),
	(38,'test',1,'test',1),
	(39,'test',1,'test',1),
	(40,'test',1,'test',1),
	(41,'test',1,'test',1),
	(42,'test',1,'test',1),
	(43,'test',1,'test',1),
	(44,'test',1,'tst',1),
	(45,'test',1,'tst',1),
	(46,'test',1,'test',1),
	(47,'test',1,'test',1),
	(48,'test',1,'test',1),
	(49,'test',1,'test',1),
	(50,'test',1,'test',1),
	(51,'test',1,'test',1),
	(52,'test',1,'test',1),
	(53,'test',1,'test',1),
	(54,'test',1,'test',1),
	(55,'test',1,'test',1),
	(56,'test',1,'test',1),
	(57,'test',1,'test',1),
	(58,'test',1,'test',1),
	(59,'laiailaui',1,'laialia',1),
	(60,'test',1,'test',1),
	(61,'laifeizfjoezf',1,'lailia',1),
	(62,'laifeizfjoezf',1,'lailia',1),
	(63,'test',1,'samokiss',1);

/*!40000 ALTER TABLE `rsvp` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table rsvp_event
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rsvp_event`;

CREATE TABLE `rsvp_event` (
  `rsvp_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`rsvp_id`,`event_id`),
  KEY `IDX_5E1BCD67EF80C8C2` (`rsvp_id`),
  KEY `IDX_5E1BCD6771F7E88B` (`event_id`),
  CONSTRAINT `FK_5E1BCD6771F7E88B` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5E1BCD67EF80C8C2` FOREIGN KEY (`rsvp_id`) REFERENCES `rsvp` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Affichage de la table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `short_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageFile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8D93D649D60322AC` (`role_id`),
  CONSTRAINT `FK_8D93D649D60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `role_id`, `lastname`, `firstname`, `birthdate`, `short_description`, `long_description`, `phone`, `mail`, `image`, `imageFile`, `facebook`)
VALUES
	(1,3,'Gomis','Samuel','1988-02-23','Le marié','Le marié le plus beau','0631093136','gomis.samuel@gmail.com','0f9d70a9be8cd87a7c9acc0ea86661ce.jpg',NULL,NULL),
	(2,4,'Martorell Carrasco','Laia','1985-12-21','La mariée','La mariée la plus belle','0617550472','laia_marto@hotmail.com','1f7e2e90fb02b91f833ab5c9295ed815.jpg',NULL,NULL),
	(3,9,'Pepin','Alex','1990-04-25','l\'homme de Dieu','père spirituel','0617550000','alextos@hotmail.com',NULL,NULL,NULL),
	(4,10,'Munsosa','Fanny','1987-12-06','Femme spirituel','Femme de Dieu','0612345678','fanyto@gmail.com','66ca41bcfdb7f84cde3ea36b7caada49.png',NULL,NULL);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table website_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `website_text`;

CREATE TABLE `website_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Affichage de la table wedding
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wedding`;

CREATE TABLE `wedding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `verse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `presence` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `wedding` WRITE;
/*!40000 ALTER TABLE `wedding` DISABLE KEYS */;

INSERT INTO `wedding` (`id`, `date`, `address`, `city`, `country`, `verse`, `presence`)
VALUES
	(1,'2016-10-22 00:00:00','N-II, 08349 Cabrera de Mar','Barcelona','Espagne','Qu\'est-ce l\'amour?1 Corinthiens 13: L\'amour est patient, il est plein de bonté; l\'amour n\'est pas envieux; l\'amour ne se vante pas,il ne s\'enfle pas d’orgueil, il ne fait rien de malhonnête, il ne cherche pas son intérêt, il ne s\'irrite pas, il ne soupçon','N\'oubliez pas de vous inscrire');

/*!40000 ALTER TABLE `wedding` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table wedding_picture
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wedding_picture`;

CREATE TABLE `wedding_picture` (
  `wedding_id` int(11) NOT NULL,
  `picture_id` int(11) NOT NULL,
  PRIMARY KEY (`wedding_id`,`picture_id`),
  UNIQUE KEY `UNIQ_7CEAD124EE45BDBF` (`picture_id`),
  KEY `IDX_7CEAD124FCBBB0ED` (`wedding_id`),
  CONSTRAINT `FK_7CEAD124EE45BDBF` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`id`),
  CONSTRAINT `FK_7CEAD124FCBBB0ED` FOREIGN KEY (`wedding_id`) REFERENCES `wedding` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `wedding_picture` WRITE;
/*!40000 ALTER TABLE `wedding_picture` DISABLE KEYS */;

INSERT INTO `wedding_picture` (`wedding_id`, `picture_id`)
VALUES
	(1,65),
	(1,66),
	(1,67),
	(1,68);

/*!40000 ALTER TABLE `wedding_picture` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
