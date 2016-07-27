# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Hôte: 127.0.0.1 (MySQL 5.5.49-37.9)
# Base de données: cutetogether
# Temps de génération: 2016-07-27 1:31:49 PM +0000
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
	(1,'Le choix du lieu','<p>Nous vous accueillerons &agrave; la&nbsp;Masia&nbsp;Mas&nbsp;Pujol situ&eacute;e&nbsp;dans la commune de Cabrera de&nbsp;Mar&nbsp;dans la province de&nbsp;Barcelone.&nbsp;Comme la plupart d\'entre vous le savez, je suis originaire de la Catalogne et j\'ai v&eacute;cu&nbsp;toute ma vie pr&egrave;s de&nbsp;Barcelone&nbsp;dans une ville qui s\'appelle&nbsp;Badalona.&nbsp;La commune de Cabrera de&nbsp;Mar&nbsp;se trouve &agrave; c&ocirc;t&eacute; de ma ville natale et dispose d\'une magnifique combinaison:&nbsp;la mer et la montagne. Et vous vous demanderez, mais qu\'est-ce que signifie le mot \"Masia&nbsp;ou&nbsp;Mas\" ? Et donc, en catalan ou en espagnol veut dire Maison de Campagne. C&eacute;l&eacute;brer notre union dans un endroit \"cute\"&nbsp;,&nbsp;charmant et chaleureux nous identifie comme couple :) Voil&agrave; en quelques mots le choix de notre endroit, n\'h&eacute;sitez pas &agrave; nous r&eacute;pondre sur l\'article si vous avez envie d\'en connaitre plus sur le lieu. <span lang=\"EN-US\">#BeBlessed</span></p>\r\n<h4 style=\"text-align: justify;\"><span style=\"font-family: Times New Roman; font-size: medium;\"> </span></h4>','Masia Mas Pujol vous attends !!',2,'2016-07-13 08:28:18'),
	(2,'Conseils de logement','<p style=\"text-align: left;\">Cet article est plut&ocirc;t destin&eacute; &agrave; nos invit&eacute;s qui viennent de la France<span title=\"Ce signe de ponctuation doit &ecirc;tre pr&eacute;c&eacute;d&eacute; d\'une espace en fran&ccedil;ais europ&eacute;en (mais pas en fran&ccedil;ais canadien).\">!</span>&nbsp;Le but est de vous&nbsp;<span title=\"Il faut probablement ajouter  &lt;i&gt;&agrave;&lt;/i&gt;, par ex..: &lt;i&gt;Je vais donner un cadeau &lt;b&gt;&agrave;&lt;/b&gt; ma m&egrave;re&lt;/i&gt;.\">donner le maximum des</span>&nbsp;pistes pour trouver un logement &agrave; votre go&ucirc;t et besoin. Ils existent plusieurs possibilit&eacute;s, selon la dur&eacute;e de votre s&eacute;jour<span title=\"Ce signe de ponctuation doit &ecirc;tre pr&eacute;c&eacute;d&eacute; d\'une espace.\">:</span>&nbsp;un h&ocirc;tel aux alentours de la salle ou un h&ocirc;tel &agrave;&nbsp;<span title=\"Parcellons, Harcelons, Parcelle, Parcell&eacute;, Parcell&eacute;e, Parcellions, Parceller, Parcelles, Parcell&eacute;s\">Barcelone</span>&nbsp;pour les deux nuits du&nbsp;20 au 22 Oct. Ou un appartement &agrave; plusieurs aux alentours ou &agrave;&nbsp;<span title=\"Parcellons, Harcelons, Parcelle, Parcell&eacute;, Parcell&eacute;e, Parcellions, Parceller, Parcelles, Parcell&eacute;s\">Barcelone</span>&nbsp;&agrave; partir de deux nuits. En termes de localisation, si vous avez planifi&eacute; de vous loger &agrave;&nbsp;<span title=\"Parcellons, Harcelons, Parcella\">Barcelona</span>&nbsp;<span title=\"\">City</span>&nbsp;il faut savoir qu\'il y a environ 31km/30min en voiture) et environ 6km/15min en voiture aussi au d&eacute;part d\'une des villes &agrave; c&ocirc;t&eacute; la salle. Pour vos recherches sur des sites de logement comme&nbsp;<span title=\"\">Booking.com</span>&nbsp;ou&nbsp;<span title=\"Airbus, Airons, Airain, Airains, Ha&iuml;rons, Ha&iuml;ront, Rebab, &Eacute;rine, Erbine, Herbons\">Airbnb,</span>&nbsp;prenez les villes &agrave; c&ocirc;t&eacute; comme&nbsp;<span title=\"Violassent, Voilassent, Bilassent, Volassent, Filassent, Pilassent, Vidassent, Vinassent, Virassent, Visassent, V&ecirc;lassent, Veillassent, Vrillassent, Cillassent, Viellassent, Pillassent, Tillassent, Huilassent, Violacent\">Vilassar</span>&nbsp;de&nbsp;<span title=\"Mars, Marc, Mare, Mari, Mark, Mat, M&acirc;t, Ma, Man, Mas, Bar, Car, Far, Jar, Mac, Mal, Max, Mir, Mur, M&ucirc;r, Par, Var, Mai, Mer, M\'a, M\'as, M\'ai\">Mar,</span>&nbsp;<span title=\"Matador, Mat&acirc;t, M&acirc;t&acirc;t, Matras, Mata, M&acirc;ta, Macaron, Matas, M&acirc;tas, Mataf, Matir, M&eacute;tro, Matadors, Matafs, Matant, Matera, Matira, Matura, M&acirc;tant, M&acirc;tera, Natron, B&acirc;tard, Malard, Malart, Matage, Mature, Matur&eacute;, Motard, M&acirc;ture, Patard, Tatare, Madras\">Mataro,</span>&nbsp;<span title=\"Ballonna, Pantalons, Pantalon, Batelons, P&eacute;dalons, Ballonnas, B&acirc;tonna, Talonna, Bataillons, Badigeonna, Bataillon, &Eacute;talonna\">Badalona,</span>&nbsp;<span title=\"Renia, Premier, Renias, Permien, Permiens\">Premi&agrave;</span>&nbsp;de&nbsp;<span title=\"Mars, Marc, Mare, Mari, Mark, Mat, M&acirc;t, Ma, Man, Mas, Bar, Car, Far, Jar, Mac, Mal, Max, Mir, Mur, M&ucirc;r, Par, Var, Mai, Mer, M\'a, M\'as, M\'ai\">Mar,</span>&nbsp;<span title=\"\">Alella</span>&nbsp;ou&nbsp;<span title=\"\">Masnou.</span>&nbsp;Les prix des appartements varient en fonction du nombre de personnes et des nuits, mais ils se trouvent environ 20-25&euro;/nuit. Le prix est h&ocirc;tels &agrave;&nbsp;<span title=\"Parcellons, Harcelons, Parcelle, Parcell&eacute;, Parcell&eacute;e, Parcellions, Parceller, Parcelles, Parcell&eacute;s\">Barcelone</span>&nbsp;est plut&ocirc;t vers les 40-45eur/nuit. Nous restons &agrave; votre enti&egrave;re disposition si vous avez besoin des conseils et de partager vos recherches avec nous et le reste des invit&eacute;s. Laissez vos messages sur cet article ;) #<span title=\"Stabilisait\">StayBlessed</span></p>','Prenez-vous à l\'avance pour ne pas rater les meilleures offres!',2,'2016-06-29 17:21:35'),
	(10,'Comment se déplacer ?','<p style=\"text-align: left;\">Pour les courageux qui prendront la voiture, je vous laisse entre les mains de vos <span title=\"GAPS, GKS, GUS, GIS\">GPS</span> :) Pour les \"Express\" qui prendront l\'avion, vous allez atterrir &agrave; l\'A&eacute;roport <span title=\"del&agrave;, duel, sel, de, dl, d&eacute;, tel, t&eacute;l, der, des, d&egrave;s, d&eacute;s, bel, dey, dol, d&eacute;c, d&eacute;p, gel, d\'&eacute;lu, d\'ex, d\'il, d\'en\">del</span> <span title=\"Part, Par&acirc;t, Pri&acirc;t, Pat, Rat, Sprat, Plat, Prit, Pr&icirc;t, Pu&acirc;t, Pr&ecirc;t\">Prat</span> (<span title=\"youyou, youyous, loulou, loulous, goulu, moulu, voulu\">youhou!</span>)<span title=\"Ce signe de ponctuation doit &ecirc;tre pr&eacute;c&eacute;d&eacute; d\'une espace en fran&ccedil;ais europ&eacute;en (mais pas en fran&ccedil;ais canadien).\">;</span> plusieurs options se pr&eacute;sentent pour vous d&eacute;placer jusqu\'&agrave; <span title=\"\">Barcelona</span> <span title=\"Cit, Cita, Cite, Cit&eacute;\">City</span> ou les villes &agrave; c&ocirc;t&eacute; de la salle. La ligne du m&eacute;tro L9 et le train de <span title=\"Roda lies, Roda-lies, Ordalies, Ordalie, D\'ordalies\">Rodalies</span> <span title=\"\">RENFE,</span> vous am&egrave;neront jusqu\'&agrave; <span title=\"\">Barcelone.</span> Le prix d\'un billet de train/m&eacute;tro est de 4,50&euro;. Le m&eacute;tro est ouvert jusqu\'&agrave; 2h en semaine et le dernier train est &agrave; 23h. Pour ceux qui prendront le logement aux alentours de la salle, il faudra prendre ce m&ecirc;me train, mais faire un transbordement &agrave; l\'arr&ecirc;t <span title=\"\">Barcelona</span> <span title=\"Le, &Eacute;lu, Bel, Gel, Sel, Tel, T&eacute;l, Eh, Es, Eu, Hl, &Egrave;s, Al, Cl, Dl, Et, Ex, Il, Ml, En\">El</span> <span title=\"Cl&ocirc;t, Colt, Calot, Culot, Lot, &Eacute;clot, &Eacute;cl&ocirc;t, Clos, Flot, Plot, &Icirc;lot, Clou\">Clot</span> <span title=\"\">Arago</span> et reprendre le train direction <span title=\"Violassent, Voilassent, Bilassent, Volassent, Filassent, Pilassent, Vidassent, Vinassent, Virassent, Visassent, V&ecirc;lassent, Veillassent, Vrillassent, Cillassent, Viellassent, Pillassent, Tillassent, Huilassent, Violacent\">Vilassar</span> de <span title=\"Mars, Marc, Mare, Mari, Mark, Mat, M&acirc;t, Ma, Man, Mas, Bar, Car, Far, Jar, Mac, Mal, Max, Mir, Mur, M&ucirc;r, Par, Var, Mai, Mer, M\'a, M\'as, M\'ai\">Mar</span> ou <span title=\"Renia, Premier, Renias, Permien, Permiens\">Premia</span> de <span title=\"Mars, Marc, Mare, Mari, Mark, Mat, M&acirc;t, Ma, Man, Mas, Bar, Car, Far, Jar, Mac, Mal, Max, Mir, Mur, M&ucirc;r, Par, Var, Mai, Mer, M\'a, M\'as, M\'ai\">Mar.</span> Je vous laisse deux sites web qui pourront vous aider<span title=\"Ce signe de ponctuation doit &ecirc;tre pr&eacute;c&eacute;d&eacute; d\'une espace.\">:</span> http://rodalies.gencat.cat/es et http://www.aeropuertobarcelona-elprat.com/cast/linea9-metro-aeropuerto-barcelona.htm La dur&eacute;e du trajet est d\'environ 30min jusqu\'&agrave; <span title=\"Parcellons, Harcelons, Parcelle, Parcell&eacute;, Parcell&eacute;e, Parcellions, Parceller, Parcelles, Parcell&eacute;s\">Barcelone</span> et 1h jusqu\'aux villes aux alentours de la salle. Bon j\'esp&egrave;re que &ccedil;a vous aidera, n\'h&eacute;sitez pas &agrave; poster des messages si besoin ! Bisous les invit&eacute;s #<span title=\"Pressings, Blessions, Leasings, Blessons, Pressing, Bl&eacute;sions, Leasing, Bl&eacute;sons, L&eacute;sinas, L&eacute;sines\">Blessings</span></p>\r\n<p>&nbsp;</p>','Facile, proche, pas cher et rapide !',2,'2016-07-14 08:28:18');

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


# Affichage de la table blog_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_tag`;

CREATE TABLE `blog_tag` (
  `blog_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`,`tag_id`),
  UNIQUE KEY `UNIQ_6EC3989BAD26311` (`tag_id`),
  KEY `IDX_6EC3989DAE07E97` (`blog_id`),
  CONSTRAINT `FK_6EC3989BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`),
  CONSTRAINT `FK_6EC3989DAE07E97` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



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
	(1,'fr','AppBundle\\Entity\\Lovestory','title','1','Notre week-end à NYC'),
	(2,'fr','AppBundle\\Entity\\Lovestory','description','1','<p>Lors du s&eacute;jour de Sam &agrave; Montr&eacute;al, nous avons eu l\'opportunit&eacute; de vivre un week-end extraordinaire&nbsp;&agrave; New York (mon r&ecirc;ve depuis toute jeune!!!). Ce voyage riche en &eacute;motion, en d&eacute;couverte et en amusement a &eacute;t&eacute; un tournant crucial dans notre relation.&nbsp;</p>\r\n<p>&nbsp;</p>'),
	(5,'fr','AppBundle\\Entity\\Lovestory','title','3','Notre Anniversaire'),
	(6,'fr','AppBundle\\Entity\\Lovestory','description','3','<p>Quelquefois, il est difficile de se rendre compte de la valeur de ce que l\'on a port&eacute; de main. Cette pens&eacute;e&nbsp;r&eacute;sume bien le d&eacute;but de notre histoire, jusqu\'&agrave; ce que l\'on se rende compte l\'un et l\'autre que l\'on se compl&eacute;tait plus de ce que l\'on imaginait.&nbsp;C\'est ainsi que nous avons d&eacute;cid&eacute; de commencer &agrave; entretenir notre&nbsp;relation.</p>'),
	(13,'fr','AppBundle\\Entity\\Lovestory','title','7','Nos vies se sont croisés une soirée d\'été à Paris'),
	(14,'fr','AppBundle\\Entity\\Lovestory','description','7','<p>C\'est lors de l\'anniversaire de la soeur de l\'un des meilleurs amis de Sam que nous nous sommes rencontr&eacute;s pour la premi&egrave;re fois. Les choses se sont faites naturellement, jeu de regard ma part, premier contact de sa part, mais je lui ai montr&eacute; que je ne me laisserai pas s&eacute;duire facilement... Mais au fur et &agrave; mesure, nous avons commenc&eacute; &agrave; nous c&ocirc;toyer, on a d&eacute;couvert l\'un et l\'autre des qualit&eacute;s qui nous conduit &agrave; vouloir plus...</p>');

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
	(1,'Nos fiançailles à NYC','D\'une façon inattendu Sam avait tout préparé dans un roof top de NYC pour Laia et lui demandé un engagement d\'amour','2015-02-21 00:00:00','dc43a3d645489d79fc3e2ebcb85942a2.jpg',''),
	(3,'test','testes','2011-02-11 00:00:00','c8c303d21cec6cc41c6fa73fb4de0f33.jpg',''),
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
	(11,'ec3813c2a1f2e4bbd014d8d7ffb6bb38.png',NULL,'picture',NULL,NULL),
	(12,'546e4ceb331bbb8dcd88fa95d93c31a5.JPG',NULL,'picture',NULL,NULL),
	(13,'a7a2c1ef4e2a5b4f2cc16ea62b4a197e.JPG','/tmp/phpgG4vHn','picture',NULL,NULL),
	(14,'ae4c20338093335782689a32e82b345c.JPG','/tmp/phpIVClym','picture',NULL,NULL),
	(15,'cde264258ea37bbf74e9bf666c4c8ba8.jpg','/tmp/phpfg8Rjd','picture',NULL,NULL),
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
	(60,'35ddda1e7938010eae309193e648d097.jpg',NULL,'picture',NULL,NULL),
	(61,'6d0d1332949f0830ce18db3e3438928b.jpg',NULL,'picture',NULL,NULL),
	(65,'e12553d7fff228d84e58335c78d97897.JPG',NULL,'picture',NULL,NULL),
	(66,'7c505014515df93f003f7a85f9cf1ff2.jpg',NULL,'picture',NULL,NULL),
	(67,'0d994d4e6206afbb8c914bf27b9f84a7.jpg',NULL,'picture',NULL,NULL),
	(68,'31a3a34147c7fe9c18aaff89f25133ba.jpg',NULL,'picture',NULL,NULL),
	(69,'01ec77a65bccb1936a09e61e26349094.jpg','/tmp/phpRUzdLO','gallery','Mariage de Rodrigues et Stéphanie','09 juillet 2016'),
	(70,'4daebf6c8ce5427033c36b36ff6ee8a3.jpg','/tmp/php6hjNj0','gallery','Mariage de Rodrigues et Stéphanie','09 juillet 2016'),
	(71,'0ce671582ed39939c415a0ec90aeabec.jpg','/tmp/phpsDhFgo','gallery','Mariage de Rodrigues et Stéphanie','09 juillet 2016'),
	(72,'047401b474894aaa8af8c08649175f35.jpg','/tmp/phpSGSpkm','gallery','Mariage de Rodrigues et Stéphanie','09 juillet 2016'),
	(74,'3fea639aeab9abe59e2ffea059876b77.jpg','/tmp/php27o3CJ','gallery','Voyage Montréal Jeunesse CVC','Juillet 2015'),
	(77,'b7591a05453af8c0d3ab302d00f8a33c.jpg','/tmp/phpue9ZsL','gallery','Voyage Montréal Jeunesse CVC','Juillet 2015'),
	(78,'ac51edbd91a1a3c5eeea650d5f6e7b15.jpg','/tmp/phpstRIzn','gallery','Mariage Carl et Mistoura','Novembre 2015'),
	(79,'0c3d8bc2c76c400dd8fe98927389f1e0.jpg','/tmp/phprE8OWn','gallery','Mariage de Rodrigues et Stéphanie','09 Juillet 2016'),
	(80,'24514cbf76b775a86473156655f01930.jpg','/tmp/phpasHUPn','gallery','Mariage de Rodrigues et Stéphanie','09 Juillet 2016'),
	(81,'a138023bfb5631b14ce4a3ed869fb2c9.jpg','/tmp/php9CkJTD','gallery','Mariage de Rodrigues et Stéphanie','09 juillet 2016'),
	(82,'5714b864f1570748beb532650e2c80f8.jpg','/tmp/phpYEdSGT','gallery','Mariage de Rodrigues et Stéphanie','09 juillet 2016'),
	(83,'85f5334b22dda90d03b94d67fd4d3cae.jpg','/tmp/php9MQNsk','gallery','Mariage de Rodrigues et Stéphanie','09 juillet 2016');

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
	(6,'Ami(e)'),
	(8,'Garçon d\'honneur'),
	(9,'Fille d\'honneur'),
	(10,'Pasteur');

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
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9FA5CE4E5E237E06` (`name`),
  UNIQUE KEY `UNIQ_9FA5CE4EE7927C74` (`email`),
  KEY `IDX_9FA5CE4EA76ED395` (`user_id`),
  CONSTRAINT `FK_9FA5CE4EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



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



# Affichage de la table tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_389B783389B783` (`tag`)
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
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageFile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `sex` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8D93D649D60322AC` (`role_id`),
  CONSTRAINT `FK_8D93D649D60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `role_id`, `lastname`, `firstname`, `birthdate`, `short_description`, `long_description`, `phone`, `mail`, `image`, `imageFile`, `facebook`, `address`, `city`, `country`, `instagram`, `enabled`, `sex`)
VALUES
	(1,3,'Gomis','Samuel','1988-02-23','Extraverti modéré','Etant curieux et réfléchi, j\'apprécie les contacts humains et le partage de connaissances. Je suis passionné de Dieu et je m\'efforce de marcher dans ses voies.','0631093136','gomis.samuel@gmail.com','5422fde57d256c3109dcdeb93b865aee.png','/tmp/phpTsIe9o','https://www.facebook.com/samuel.gomis','1 rue Jean Catelas','78210','Saint-Cyr-l\'Ecole',NULL,1,1),
	(2,4,'Martorell Carrasco','Laia','1985-12-21','Douce et avenante','Ouverte et chaleureuse, je prends goût à découvrir de nouvelle culture, et j\'ai un grand sens de la famille.','0617550472','laia_marto@hotmail.com','f3ca47965dcb596ef7625df86f6bf6a1.jpeg','/tmp/phpcGHPYW',NULL,NULL,NULL,NULL,NULL,1,0),
	(3,9,'Pepin','Alex','1990-04-25','l\'homme de Dieu','père spirituel','0617550000','alextos@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1),
	(4,10,'Munsosa','Fanny','1987-12-06','Femme spirituel','Femme de Dieu','0612345678','fanyto@gmail.com','66ca41bcfdb7f84cde3ea36b7caada49.png',NULL,NULL,NULL,NULL,NULL,NULL,0,0),
	(5,10,'Hatboulom','Pathana','1974-11-29','Homme de prière','Le pasteur Pathana Hatboulom est le pasteur titulaire de l\'Eglise Centre de Vie Chrétienne des Yvelines.',NULL,NULL,'42d9e1047ffa53e0f60e7c7a6f667cc2.jpeg','/tmp/phpipNTn5',NULL,NULL,NULL,NULL,NULL,1,1),
	(6,10,'Hatboulom','Gladys','1973-12-03','Femme de foi','La pasteur Gladys Hatboulom est l\'épouse du pasteur Pathana. Ensemble ils oeuvrent pour le seigneur afin qu\'au travers de leur ministère des vies soient transformées.',NULL,NULL,'c548beea380dc2780abccea5e22e8579.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,1,0);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table website_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `website_text`;

CREATE TABLE `website_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `website_text` WRITE;
/*!40000 ALTER TABLE `website_text` DISABLE KEYS */;

INSERT INTO `website_text` (`id`, `title`, `description`, `slug`)
VALUES
	(1,'Notre Présentation','<p><strong>Samuel :</strong> Cela fait maintenant 6 ans que j\'ai rencontr&eacute; Laia, &agrave; cette &eacute;poque je ne connaissais pas encore le seigneur et la vie que je menais &eacute;tait loin de celle que je m&egrave;ne aujourd\'hui. &Agrave; ce moment-l&agrave;, je ne m\'imaginais pas pouvoir me mettre en couple s&eacute;rieusement, notamment a cause de mes agissements, car mon comportement et mon environnement me poussait &agrave; ne pas avoir confiance dans les femmes. Deux choses m\'ont conduit &agrave; changer ce point de vue, Dieu et Laia : Dieu, parce qu\'il a &eacute;t&eacute; en mesure de faire de moi un autre homme et Laia, parce&nbsp;qu\'au travers de notre relation, j\'ai pu grandir et apprendre ce qu\'&eacute;tait l\'amour.</p>\r\n<p><strong>Laia:</strong> Depuis 6 ans que mon coeur bat pour Samuel. Nous avons eu un d&eacute;but de relation difficile,&nbsp;qui m\'a&nbsp;conduit&nbsp;&agrave; endurcir mon coeur et d&eacute;velopper une&nbsp;barri&egrave;re emotionelle. Je n\'ai pas toujours fait les meilleurs choix, mais malgr&eacute; cela notre relation a &eacute;t&eacute; une source de croissance et m\'a&nbsp;appris&nbsp;l\'importance de connaitre le coeur de l\'autre. Samuel a &eacute;t&eacute; pour moi l\'&eacute;l&eacute;ment moteur de la d&eacute;couverte de ma foi. Il a &eacute;t&eacute; patient pendant ma recherche et &agrave; travers sa p&eacute;rs&eacute;verance, il m\'a t&eacute;moign&eacute; que rien n\'est impossible &agrave; celui qui croit.</p>','notre-presentation'),
	(2,'Invités d\'honneur','<p>Beaucoup de personnes ont impact&eacute;es nos vies sur diff&eacute;rent aspect, mais l\'impact le plus profond et le plus important a &eacute;t&eacute; d\'ordre spirituelle. De ce fait, nous avons choisi nos pasteurs ainsi que des fr&egrave;res et soeurs afin de nous accompagner et nous soutenir dans la pr&eacute;paration de cet &eacute;v&egrave;nement.</p>','invites-d-honneur'),
	(3,'Notre Histoire','<p>Nous avons choisi de vous pr&eacute;senter quelques points cl&eacute; qui forme notre histoire.</p>\r\n<p><em>\"Le coeur de l\'homme m&eacute;dite ses voies, mais c\'est l\'&eacute;ternel qui dirige ses pas\"</em></p>','notre-histoire'),
	(4,'Notre Blog','<p>Cette liste d\'article vous permettra de pr&eacute;parer au mieux votre venu et d\'&ecirc;tre en mesure de suivre la pr&eacute;paration de l\'&eacute;v&egrave;nement.</p>','notre-blog'),
	(5,'Gallerie Photo','<p>Retrouvez-nous aussi sur Instagram !</p>','gallerie-photo'),
	(7,'Réservations','<p>Je vous invite &agrave; vous inscrire ci-dessous, n\'h&eacute;sitez &agrave; nous contactez par mail ou t&eacute;l&eacute;phone pour toutes questions&nbsp;relatives au mariage</p>','reservations');

/*!40000 ALTER TABLE `website_text` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table wedding
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wedding`;

CREATE TABLE `wedding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `verse` longtext COLLATE utf8_unicode_ci NOT NULL,
  `presence` longtext COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `wedding` WRITE;
/*!40000 ALTER TABLE `wedding` DISABLE KEYS */;

INSERT INTO `wedding` (`id`, `date`, `address`, `city`, `country`, `verse`, `presence`, `facebook`, `google`, `instagram`)
VALUES
	(1,'2016-10-22 00:00:00','N-II, 08349 Cabrera de Mar','Barcelona','Espagne','<p class=\"MsoNormal\">Ne crains rien, car je suis avec toi; Ne prom&egrave;ne pas des regards inquiets, car je suis ton Dieu; Je te fortifie, je viens &agrave; ton secours, Je te soutiens de ma droite triomphante.&nbsp;&Eacute;sa&iuml;e 41:10 (LSG)</p>','N\'oubliez pas de vous inscrire','https://www.facebook.com/samuel.gomis','https://plus.google.com/u/1/111229600770637809523/posts?hl=fr','https://www.instagram.com/laiaysamo/');

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
