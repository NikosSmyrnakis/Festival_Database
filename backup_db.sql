-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db1
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `artist_ID` int(11) NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(255) NOT NULL,
  `stage_name` varchar(255) DEFAULT NULL,
  `artist_date_of_birth` date NOT NULL,
  `artist_debute` date NOT NULL,
  `artist_website` varchar(255) DEFAULT NULL,
  `artist_instagram` varchar(255) DEFAULT NULL,
  `num_of_consecutive_years_participating` int(11) DEFAULT 0,
  PRIMARY KEY (`artist_ID`),
  KEY `idx_artist_name` (`artist_name`),
  CONSTRAINT `CONSTRAINT_1` CHECK (0 <= `num_of_consecutive_years_participating` and `num_of_consecutive_years_participating` <= 3)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'Anita Hoffman','Stacey','1983-10-29','1984-10-28','https://www.perez.info/','https://hood.org/',0),(2,'Kim Phillips','Heather','2005-01-02','2016-12-30','http://moore.com/','https://gibson.com/',0),(3,'William Day',NULL,'1982-06-08','1987-06-07','http://hamilton.net/','https://long.com/',1),(4,'Tina Davis','Patrick','1987-08-10','2000-08-06','https://hull-gallegos.info/','https://www.mason.com/',2),(5,'Donna Ray','Anthony','1991-09-10','2005-09-06','http://www.romero.com/','http://www.gomez-malone.com/',3),(6,'Darrell Woods','Patrick','1998-05-18','2018-05-13','https://cortez.com/','https://mcconnell.info/',3),(7,'James Larsen','Jennifer','1999-12-17','2016-12-12','http://www.stewart.org/','https://www.herrera-figueroa.org/',3),(8,'Samuel Frey','Heather','1980-04-08','1983-04-08','http://www.huerta.biz/','http://www.bailey.com/',1),(9,'Susan Perez','Lisa','1974-10-19','1984-10-16','http://www.graves.com/','https://www.lopez-adams.com/',2),(10,'Harold Davis','Brandi','2003-08-07','2009-08-05','https://oconnell.com/','http://www.vega.info/',2),(11,'Mrs. Shannon Hamilton MD','Matthew','1998-04-26','2015-04-22','http://miller.biz/','http://www.lewis-hubbard.com/',3),(12,'Sarah Stone','Kyle','1975-03-27','1995-03-22','http://brown.net/','http://www.morrison.com/',3),(13,'Perry Stafford',NULL,'1982-02-25','1988-02-24','https://www.rodgers.biz/','https://white.biz/',1),(14,'Elizabeth Greene','Don','1978-04-18','1982-04-17','https://stewart-keller.com/','https://woods.org/',2),(15,'Matthew Malone','Joshua','1995-12-31','2009-12-27','https://brown.com/','https://hernandez.info/',0),(16,'Jeffery Harper','Benjamin','1983-03-09','2002-03-04','http://www.green.com/','https://evans-mcclure.org/',0),(17,'Michael Payne','Stuart','1989-03-18','2008-03-13','https://cooper.net/','https://bowman.biz/',3),(18,'Timothy Reed DDS',NULL,'2004-04-14','2020-04-10','http://www.owens-keith.net/','http://www.delgado-carpenter.com/',0),(19,'Christina Garza',NULL,'1991-07-12','1999-07-10','http://www.smith.com/','http://www.davis.org/',2),(20,'Heather Kaufman',NULL,'1988-09-14','2003-09-11','http://walker.net/','http://www.clark-gibson.com/',1),(21,'David Johnson',NULL,'2000-03-02','2002-03-02','https://www.vaughn-holt.com/','https://www.robinson.com/',0),(22,'Douglas Castro','Angela','2002-06-16','2017-06-12','http://www.campbell.com/','https://www.griffin-perez.com/',1),(23,'Mr. Andrew Walker MD','Gavin','1986-05-16','2002-05-12','https://morrison.com/','http://holloway.com/',0),(24,'Gloria Mendoza',NULL,'1990-07-10','1991-07-10','http://www.stevenson-peterson.com/','http://roberts.com/',3),(25,'William Moreno','Stacey','1980-10-20','1982-10-20','https://www.griffin.com/','https://smith.biz/',3),(26,'Courtney White','Miguel','1995-01-26','2002-01-24','http://bell.com/','https://smith.com/',3),(27,'Michelle Smith',NULL,'1998-12-18','2018-12-13','https://wu-miller.net/','http://www.aguilar.com/',2),(28,'Jason Murillo','Christian','1976-01-03','1983-01-01','http://www.davis-colon.com/','http://www.evans.com/',3),(29,'Melinda Johnson',NULL,'1987-06-16','2000-06-12','http://roach.biz/','https://johnson.com/',2),(30,'Devon Morris','Gary','1985-10-01','2000-09-27','https://orr.com/','https://smith-harrison.net/',1),(31,'Ricky Martinez','Jacqueline','2001-09-08','2021-09-03','http://www.ramos.com/','http://elliott.com/',0),(32,'Mark West','Charles','2004-12-31','2014-12-29','http://dennis.net/','http://burns.com/',0),(33,'Chelsea Reynolds',NULL,'1990-03-29','1993-03-28','https://fisher.org/','http://www.lowery.com/',0),(34,'Mark Lyons','Alexander','1976-02-14','1991-02-10','http://www.richards-baker.com/','http://ramirez.com/',2),(35,'Jeffrey Ewing',NULL,'1995-04-10','2010-04-06','https://patterson-gould.com/','https://www.green-johnson.net/',2),(36,'Cameron Love','Brandon','1997-02-20','2009-02-17','http://berg.com/','http://hall.com/',3),(37,'Cassandra Holland','Tammy','1991-07-02','2003-06-29','http://proctor-johnson.biz/','http://www.briggs.com/',2),(38,'Derrick Wolfe','Jennifer','2001-04-21','2004-04-20','http://www.callahan-figueroa.org/','https://williams.com/',2),(39,'Angela Arroyo',NULL,'1975-07-13','1990-07-09','https://www.campbell-esparza.com/','http://nelson.com/',2),(40,'Thomas Mclean','Brian','1977-09-15','1994-09-11','https://www.daniels-stevens.com/','https://www.campos-mcintosh.com/',2),(41,'David Walker',NULL,'1992-01-27','2004-01-24','https://www.mcdowell.com/','https://www.jones.biz/',1),(42,'Angela Weiss',NULL,'1997-01-16','2017-01-11','https://ballard.com/','http://moore.com/',1),(43,'Michael Ponce','Christine','1987-07-08','2002-07-04','http://young.info/','http://www.roberts.org/',1),(44,'Jonathan Fletcher',NULL,'1989-12-25','1995-12-24','http://www.fuentes.com/','https://www.pierce.com/',3),(45,'Veronica Parrish','Marie','1993-11-28','2009-11-24','http://www.clark-gutierrez.com/','http://murphy-rhodes.org/',0),(46,'Kenneth Martinez','Claudia','2002-12-23','2021-12-18','https://johnson.com/','http://hall-nichols.com/',1),(47,'Barbara Weber','Kimberly','2003-11-25','2008-11-23','https://jenkins.com/','https://salas-parker.com/',3),(48,'Thomas Lane','Anthony','1976-04-08','1992-04-04','https://www.banks-wood.com/','http://kim-diaz.info/',2),(49,'Kevin Ferguson','Danny','1983-09-09','1999-09-05','http://watson.com/','http://evans-garrison.com/',1),(50,'Gregory Walker',NULL,'1976-03-03','1987-03-01','http://www.thompson.net/','https://www.cunningham-weber.com/',3),(51,'Adele Adkins','Adele','1988-05-05','2010-01-01','https://adele.com','https://instagram.com/adele',0),(52,'Kendrick Lamar','K.Dot','1987-06-17','2010-01-01','https://k.dot.com','https://instagram.com/k.dot',0),(53,'Ed Sheeran','Teddy','1991-02-17','2010-01-01','https://teddy.com','https://instagram.com/teddy',0),(54,'Tina Turner','Tina','1970-11-26','1990-01-01','https://tina.com','https://instagram.com/tina',0);
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `building` (
  `building_ID` int(11) NOT NULL AUTO_INCREMENT,
  `building_name` varchar(255) NOT NULL,
  `building_description` text NOT NULL,
  `max_capacity` int(11) NOT NULL,
  `technical_equipment` mediumtext NOT NULL,
  PRIMARY KEY (`building_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,'Schmidt Inc','Most for toward debate individual artist data. Financial manager she.\nNewspaper matter practice night. Body they worry also campaign system generation only.',494,'with, offer, life, report, image'),(2,'Owens-Serrano','South must professional PM page two. Population he program test or. Agency same detail politics truth huge pull.',242,'add, after, system, give, significant'),(3,'Butler and Sons','Career but late somebody much drive project door. After impact sense wall future.\nSociety build up ball process. Compare sell forget tax hit street. Write claim prove vote member.',742,'drug, unit, young, debate, light'),(4,'Jones and Sons','Whom society find station front clear that.\nHe evidence security kind item agent. Reflect law across tough. There any author rather do ten.',878,'pattern, image, drug, talk, popular'),(5,'Case-Hansen','Trip power property. Word whether outside girl sense spring two. Interest simply base animal.',595,'seek, story, war, perform, guy'),(6,'Garcia-Yang','Worker character drop author dinner bar serve. Cold series yet program while somebody item activity. Become reality time two.',200,'happen, religious, soon, film, different'),(7,'Russell, Lewis and Green','There energy far member. Control under which herself level social reflect.\nHeart say win full. Must join phone yet job inside.',527,'former, measure, will, easy, pattern'),(8,'Gonzalez PLC','Itself crime type choice increase. Local sing near everybody. Even describe Mrs base but letter.',114,'couple, mind, again, produce, economy'),(9,'Tyler-Morales','Region meeting instead activity. Product phone instead arm run avoid reveal painting.',937,'best, sister, generation, house, agent'),(10,'Frey Inc','Machine both hair turn increase. Lose up deep new together yes heart. Book rich forget room anyone.\nHold pick reach federal say easy region. Avoid participant low operation try total manager.',871,'although, sound, expect, stock, no'),(11,'Lewis, Elliott and Campbell','Pressure live think drop group. Represent fear various woman. Citizen throw style represent.\nPersonal daughter follow. Different show write partner shake them everybody. Campaign law realize.',922,'national, under, decade, wall, also'),(12,'Cardenas, Wright and Cuevas','Draw sister each positive most avoid local. Amount specific involve result head factor. Exist spend certainly woman step finally bit.',837,'technology, involve, tell, small, property'),(13,'Stevenson and Sons','Hospital help force.\nStop skin ask prove three. Pressure child poor with animal live local.\nSecurity herself exactly us with enjoy. Theory should after.',208,'senior, phone, develop, score, ever'),(14,'Wiggins, Jones and Williams','Strong seek country husband kid simply. Drop never total teach.\nPage but onto relate.\nChange evening hair successful Republican. Series food occur throw carry glass.\nShould agree method network.',200,'local, clearly, share, economic, determine'),(15,'Mckay-Romero','Drug eat arrive reduce. Herself here always.\nTraditional tonight hundred open computer animal work collection. Tough sit party look carry friend build. View security rise first meet expect after.',386,'rather, western, run, sing, unit'),(16,'Price, Green and Lewis','Else wall establish Mrs use fire. Could theory room water. Tough whatever a system.\nReal allow goal sister investment human. Tree democratic police way rate major.',451,'Mrs, mean, pull, trouble, although'),(17,'Garcia, Conway and Jordan','On spring blood kitchen statement item. Claim act that green.\nGrow stand PM pretty. Property player PM yet its for also. Activity hold anything cultural debate discuss four respond.',273,'understand, allow, beyond, carry, writer'),(18,'Jordan Ltd','Exist sit project threat your. Already keep clearly choice development finish up interest. Run yeah church staff name nature capital benefit. Manager very television article evening.',295,'build, newspaper, key, forget, believe'),(19,'Burns-Zimmerman','Your sea century street. Serious ready analysis PM head find southern PM.\nStreet book authority example nation.\nWork body fear break star group material issue. Store set evening up.',925,'because, drive, pretty, tonight, home'),(20,'Kim-Thompson','Later moment wife. Edge opportunity develop by reduce north.\nHand money option style parent once. Star no painting charge its husband.',178,'share, back, away, be, ok'),(21,'Brown LLC','Movie feeling truth reflect threat. Section agent onto section so.\nShare decision space. Always human office plant third be. Chance physical rest difficult.',179,'suffer, goal, a, medical, talk'),(22,'Wiggins, Campbell and Acosta','Be parent while quite travel partner. Lay strong live market. Force support agreement seek trouble represent window.\nIndicate my understand also order not.',130,'stand, next, section, boy, image'),(23,'Smith Group','Act they billion.\nElection mission husband. Consumer list modern. Behind model place popular dark.',245,'talk, like, ability, property, my'),(24,'Webb-Clark','Benefit reduce other production bring strong. Within mother idea southern just traditional there speak. Reveal your poor everything ago drug.',271,'entire, consumer, course, member, wide'),(25,'Mahoney and Sons','Medical nature benefit explain stand report. Lose enough conference.\nToo general capital of series city. Behind really leave speech. Impact probably process.',819,'company, kitchen, cell, friend, west'),(26,'Smith-Collins','Report bill interview effort people newspaper reflect. Pattern itself number body school blood few. Person myself song eat employee difference.',838,'player, through, forget, analysis, radio'),(27,'Long, Small and Peterson','Member throughout cut whom body similar. Entire painting the body anything high suddenly.\nSong across couple tree. Remain argue ability.',918,'story, bed, church, few, along'),(28,'Murphy-Aguilar','Wrong successful writer break style city professional.\nBetween keep simply hospital opportunity. Up until speech. Election activity star on piece white short.',580,'him, big, hot, quite, radio'),(29,'Obrien and Sons','Report notice specific despite sing glass senior class. Generation around a health.\nChoose conference nice. Character eat direction keep specific term.\nBlood with determine bed. Method later much.',480,'whom, store, dinner, performance, born'),(30,'Alexander, Davis and Torres','Officer together authority when. Bill wife standard reason water fund event.\nPressure present medical business employee brother senior. Affect small along. Final source shake open.',840,'community, deep, amount, shoulder, her'),(31,'Global Stage','Multi-purpose performance venue',500,'sound,lighting,video');
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyer` (
  `buyer_ID` int(11) NOT NULL AUTO_INCREMENT,
  `visitor_ID` int(11) DEFAULT NULL,
  `pending_orders_buyer` int(11) DEFAULT 0,
  PRIMARY KEY (`buyer_ID`),
  KEY `visitor_ID` (`visitor_ID`),
  CONSTRAINT `buyer_ibfk_1` FOREIGN KEY (`visitor_ID`) REFERENCES `visitor` (`visitor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(9,9,0),(10,10,0),(11,11,0),(12,12,0),(13,13,0),(14,14,0),(15,15,0),(16,16,0),(17,17,0),(18,18,0),(19,19,0),(20,20,0),(21,21,0),(22,22,0),(23,23,0),(24,24,0),(25,25,0),(26,26,0),(27,27,0),(28,28,0),(29,29,0),(30,30,0),(31,31,0),(32,32,0),(33,33,0),(34,34,0),(35,35,0),(36,36,0),(37,37,0),(38,38,0),(39,39,0),(40,40,0),(41,41,0),(42,42,0),(43,43,0),(44,44,0),(45,45,0),(46,46,1),(47,47,0),(48,48,0),(49,49,0),(50,50,0),(51,51,0),(52,52,0),(53,53,0),(54,54,0),(55,55,0),(56,56,0),(57,57,0),(58,58,0),(59,59,0),(60,60,0),(61,61,1),(62,62,0),(63,63,0),(64,64,0),(65,65,0),(66,66,0),(67,67,0),(68,68,0),(69,69,0),(70,70,0),(71,71,0),(72,72,0),(73,73,0),(74,74,0),(75,75,0),(76,76,0),(77,77,0),(78,78,0),(79,79,0),(80,80,0),(81,81,0),(82,82,0),(83,83,0),(84,84,0),(85,85,0),(86,86,0),(87,87,0),(88,88,0),(89,89,0),(90,90,0),(91,91,0),(92,92,0),(93,93,0),(94,94,0),(95,95,1),(96,96,0),(97,97,1),(98,98,0),(99,99,0),(100,100,0),(101,101,0),(102,102,0),(103,103,0),(104,104,0),(105,105,0),(106,106,0),(107,107,0),(108,108,0),(109,109,0),(110,110,0),(111,111,0),(112,112,1),(113,113,0),(114,114,0),(115,115,0),(116,116,0),(117,117,0),(118,118,0),(119,119,0),(120,120,0),(121,121,0),(122,122,0),(123,123,1),(124,124,0),(125,125,0),(126,126,1),(127,127,0),(128,128,0),(129,129,0),(130,130,0),(131,131,0),(132,132,0),(133,133,0),(134,134,0),(135,135,0),(136,136,0),(137,137,0),(138,138,0),(139,139,1),(140,140,0),(141,141,0),(142,142,0),(143,143,0),(144,144,0),(145,145,0),(146,146,0),(147,147,0),(148,148,0),(149,149,0),(150,150,0);
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `event_ID` int(11) NOT NULL AUTO_INCREMENT,
  `festival_ID` int(11) DEFAULT NULL,
  `event_name` varchar(255) NOT NULL,
  `festival_day` int(11) NOT NULL,
  `event_start_time` datetime NOT NULL,
  `event_end_time` datetime NOT NULL,
  `building_ID` int(11) DEFAULT NULL,
  `event_duration` int(11) GENERATED ALWAYS AS (case when `event_end_time` >= `event_start_time` then timestampdiff(MINUTE,`event_start_time`,`event_end_time`) else timestampdiff(MINUTE,`event_start_time`,`event_end_time`) + 1440 end) STORED,
  `is_soldout` tinyint(1) DEFAULT 0,
  `VIP_total` int(11) DEFAULT NULL,
  `backstage_total` int(11) DEFAULT NULL,
  `general_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`event_ID`),
  KEY `building_ID` (`building_ID`),
  KEY `idx_events_festival` (`festival_ID`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`building_ID`) REFERENCES `building` (`building_ID`),
  CONSTRAINT `events_ibfk_2` FOREIGN KEY (`festival_ID`) REFERENCES `festival` (`festival_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,'Affect Concert',1,'2017-09-17 09:33:00','2017-09-17 12:59:00',28,206,0,NULL,NULL,NULL),(2,1,'Central Concert',1,'2017-09-17 13:35:00','2017-09-17 16:36:00',13,181,0,NULL,NULL,NULL),(3,1,'Mother Concert',1,'2017-09-17 17:19:00','2017-09-17 20:39:00',12,200,0,NULL,NULL,NULL),(4,1,'Beyond Concert',1,'2017-09-17 21:39:00','2017-09-17 01:01:00',30,202,0,NULL,NULL,NULL),(5,1,'Seek Concert',1,'2017-09-17 01:56:00','2017-09-17 05:04:00',1,188,0,NULL,4,NULL),(6,1,'Simply Concert',1,'2017-09-17 05:48:00','2017-09-17 09:14:00',10,206,0,NULL,NULL,NULL),(7,1,'Become Concert',1,'2017-09-17 10:39:00','2017-09-17 14:06:00',25,207,0,NULL,NULL,NULL),(8,1,'Movement Concert',1,'2017-09-17 15:41:00','2017-09-17 18:43:00',9,182,0,NULL,NULL,NULL),(9,1,'Action Concert',1,'2017-09-17 20:23:00','2017-09-17 23:25:00',14,182,0,NULL,1,NULL),(10,1,'Local Concert',2,'2017-09-18 08:23:00','2017-09-18 11:50:00',13,207,0,NULL,NULL,NULL),(11,1,'Thousand Concert',3,'2017-09-19 08:38:00','2017-09-19 12:10:00',12,212,0,NULL,NULL,NULL),(12,1,'Certainly Concert',3,'2017-09-19 13:45:00','2017-09-19 17:16:00',13,211,0,NULL,NULL,NULL),(13,1,'Mean Concert',3,'2017-09-19 17:36:00','2017-09-19 20:58:00',16,202,0,NULL,NULL,NULL),(14,1,'One Concert',4,'2017-09-20 09:22:00','2017-09-20 12:40:00',7,198,0,NULL,NULL,NULL),(15,1,'Building Concert',4,'2017-09-20 13:02:00','2017-09-20 16:23:00',6,201,0,NULL,NULL,NULL),(16,1,'Unit Concert',4,'2017-09-20 17:27:00','2017-09-20 20:34:00',21,187,0,NULL,NULL,NULL),(17,1,'Issue Concert',4,'2017-09-20 21:19:00','2017-09-20 00:53:00',14,214,0,NULL,NULL,NULL),(18,1,'Those Concert',5,'2017-09-21 09:10:00','2017-09-21 12:15:00',24,185,0,NULL,NULL,NULL),(19,1,'Draw Concert',5,'2017-09-21 13:49:00','2017-09-21 17:25:00',10,216,0,NULL,NULL,NULL),(20,1,'History Concert',5,'2017-09-21 17:45:00','2017-09-21 20:46:00',7,181,0,NULL,1,NULL),(21,1,'Adult Concert',5,'2017-09-21 22:20:00','2017-09-21 01:32:00',16,192,0,NULL,NULL,NULL),(22,1,'Couple Concert',5,'2017-09-21 02:43:00','2017-09-21 06:03:00',11,200,0,NULL,NULL,NULL),(23,1,'Paper Concert',5,'2017-09-21 06:34:00','2017-09-21 10:07:00',30,213,0,NULL,NULL,NULL),(24,1,'Behind Concert',5,'2017-09-21 11:35:00','2017-09-21 14:37:00',19,182,0,NULL,NULL,NULL),(25,1,'First Concert',5,'2017-09-21 15:16:00','2017-09-21 18:56:00',20,220,0,NULL,NULL,NULL),(26,1,'Know Concert',5,'2017-09-21 19:17:00','2017-09-21 22:42:00',24,205,0,NULL,NULL,NULL),(27,1,'Soldier Concert',5,'2017-09-21 23:35:00','2017-09-21 02:43:00',29,188,0,NULL,NULL,NULL),(28,2,'Realize Concert',1,'2018-09-04 09:23:00','2018-09-04 12:39:00',16,196,0,NULL,NULL,NULL),(29,2,'Behavior Concert',1,'2018-09-04 14:05:00','2018-09-04 17:45:00',1,220,0,NULL,NULL,NULL),(30,2,'Develop Concert',1,'2018-09-04 19:01:00','2018-09-04 22:09:00',19,188,0,NULL,NULL,NULL),(31,2,'Money Concert',1,'2018-09-04 22:30:00','2018-09-04 01:52:00',25,202,0,NULL,2,NULL),(32,2,'Better Concert',1,'2018-09-04 03:28:00','2018-09-04 06:52:00',10,204,0,NULL,NULL,NULL),(33,2,'Consider Concert',1,'2018-09-04 08:09:00','2018-09-04 11:11:00',9,182,0,NULL,NULL,NULL),(34,2,'Piece Concert',1,'2018-09-04 11:43:00','2018-09-04 14:56:00',19,193,0,NULL,NULL,NULL),(35,2,'Light Concert',1,'2018-09-04 15:49:00','2018-09-04 19:26:00',18,217,0,NULL,NULL,NULL),(36,2,'Clear Concert',2,'2018-09-05 08:25:00','2018-09-05 11:49:00',24,204,0,NULL,NULL,NULL),(37,2,'Low Concert',3,'2018-09-06 09:09:00','2018-09-06 12:20:00',9,191,0,NULL,NULL,NULL),(38,2,'Training Concert',3,'2018-09-06 13:41:00','2018-09-06 17:10:00',14,209,0,NULL,NULL,NULL),(39,2,'Fill Concert',4,'2018-09-07 08:57:00','2018-09-07 12:24:00',8,207,0,NULL,NULL,NULL),(40,2,'Administration Concert',5,'2018-09-08 08:22:00','2018-09-08 12:01:00',15,219,0,NULL,1,NULL),(41,2,'Two Concert',5,'2018-09-08 12:33:00','2018-09-08 15:56:00',3,203,0,NULL,NULL,NULL),(42,2,'Read Concert',5,'2018-09-08 16:17:00','2018-09-08 19:39:00',19,202,0,NULL,NULL,NULL),(43,2,'Tree Concert',5,'2018-09-08 20:38:00','2018-09-08 23:39:00',9,181,0,NULL,NULL,NULL),(44,3,'Answer Concert',1,'2019-07-20 09:06:00','2019-07-20 12:07:00',1,181,0,NULL,NULL,NULL),(45,3,'About Concert',1,'2019-07-20 12:41:00','2019-07-20 16:16:00',5,215,0,NULL,NULL,NULL),(46,3,'Beautiful Concert',1,'2019-07-20 16:47:00','2019-07-20 19:56:00',27,189,0,NULL,NULL,NULL),(47,3,'Until Concert',1,'2019-07-20 20:30:00','2019-07-20 23:31:00',2,181,0,NULL,NULL,NULL),(48,3,'Popular Concert',2,'2019-07-21 09:17:00','2019-07-21 12:49:00',10,212,0,NULL,1,NULL),(49,3,'Friend Concert',2,'2019-07-21 13:45:00','2019-07-21 17:16:00',12,211,0,NULL,NULL,NULL),(50,3,'Among Concert',2,'2019-07-21 18:38:00','2019-07-21 22:10:00',2,212,0,NULL,NULL,NULL),(51,3,'Design Concert',2,'2019-07-21 22:46:00','2019-07-21 02:24:00',21,218,0,NULL,NULL,NULL),(52,3,'Contain Concert',2,'2019-07-21 03:43:00','2019-07-21 07:16:00',26,213,0,NULL,NULL,NULL),(53,4,'Recently Concert',1,'2020-08-13 09:20:00','2020-08-13 12:24:00',10,184,0,NULL,1,NULL),(54,4,'Interest Concert',1,'2020-08-13 12:45:00','2020-08-13 15:46:00',12,181,0,NULL,NULL,NULL),(55,4,'Green Concert',1,'2020-08-13 16:37:00','2020-08-13 20:14:00',14,217,0,NULL,NULL,NULL),(56,4,'Decision Concert',1,'2020-08-13 21:54:00','2020-08-13 01:33:00',5,219,0,NULL,NULL,NULL),(57,4,'Thus Concert',1,'2020-08-13 02:54:00','2020-08-13 06:22:00',2,208,0,NULL,1,NULL),(58,4,'Bed Concert',1,'2020-08-13 06:44:00','2020-08-13 10:16:00',21,212,0,NULL,NULL,NULL),(59,4,'Too Concert',1,'2020-08-13 11:08:00','2020-08-13 14:31:00',28,203,0,NULL,NULL,NULL),(60,4,'Current Concert',2,'2020-08-14 09:11:00','2020-08-14 12:29:00',14,198,0,NULL,NULL,NULL),(61,4,'Begin Concert',2,'2020-08-14 13:36:00','2020-08-14 17:01:00',17,205,0,NULL,NULL,NULL),(62,4,'On Concert',2,'2020-08-14 17:56:00','2020-08-14 21:30:00',16,214,0,NULL,NULL,NULL),(63,4,'End Concert',2,'2020-08-14 22:24:00','2020-08-14 02:00:00',28,216,0,NULL,NULL,NULL),(64,4,'Participant Concert',2,'2020-08-14 03:14:00','2020-08-14 06:51:00',4,217,0,NULL,NULL,NULL),(65,4,'Cultural Concert',2,'2020-08-14 07:36:00','2020-08-14 11:08:00',20,212,0,NULL,NULL,NULL),(66,4,'Local Concert',3,'2020-08-15 09:37:00','2020-08-15 12:50:00',13,193,0,NULL,NULL,NULL),(67,4,'Enough Concert',3,'2020-08-15 14:05:00','2020-08-15 17:40:00',10,215,0,NULL,NULL,NULL),(68,4,'Ask Concert',3,'2020-08-15 19:10:00','2020-08-15 22:13:00',28,183,0,NULL,NULL,NULL),(69,4,'Onto Concert',3,'2020-08-15 23:00:00','2020-08-15 02:05:00',25,185,0,NULL,NULL,NULL),(70,4,'Push Concert',3,'2020-08-15 02:55:00','2020-08-15 06:34:00',5,219,0,NULL,NULL,NULL),(71,4,'Effect Concert',3,'2020-08-15 07:24:00','2020-08-15 11:00:00',2,216,0,NULL,NULL,NULL),(72,4,'Purpose Concert',3,'2020-08-15 11:59:00','2020-08-15 15:12:00',16,193,0,NULL,1,NULL),(73,4,'Gun Concert',3,'2020-08-15 15:59:00','2020-08-15 19:12:00',3,193,0,NULL,NULL,NULL),(74,4,'Husband Concert',4,'2020-08-16 08:40:00','2020-08-16 11:50:00',16,190,0,NULL,NULL,NULL),(75,4,'Radio Concert',4,'2020-08-16 13:08:00','2020-08-16 16:27:00',28,199,0,NULL,NULL,NULL),(76,4,'Bar Concert',4,'2020-08-16 17:01:00','2020-08-16 20:25:00',6,204,0,NULL,NULL,NULL),(77,4,'Data Concert',4,'2020-08-16 21:08:00','2020-08-16 00:30:00',3,202,0,NULL,NULL,NULL),(78,4,'Add Concert',4,'2020-08-16 01:21:00','2020-08-16 04:30:00',14,189,0,NULL,NULL,NULL),(79,4,'Cell Concert',4,'2020-08-16 05:11:00','2020-08-16 08:35:00',14,204,0,NULL,NULL,NULL),(80,4,'Laugh Concert',4,'2020-08-16 09:36:00','2020-08-16 13:04:00',23,208,0,NULL,NULL,NULL),(81,5,'Fly Concert',1,'2021-07-20 09:16:00','2021-07-20 12:30:00',16,194,0,NULL,NULL,NULL),(82,5,'Probably Concert',2,'2021-07-21 09:29:00','2021-07-21 12:33:00',8,184,0,NULL,NULL,NULL),(83,5,'Art Concert',2,'2021-07-21 14:05:00','2021-07-21 17:19:00',1,194,0,NULL,NULL,NULL),(84,5,'Much Concert',2,'2021-07-21 18:26:00','2021-07-21 21:33:00',11,187,0,NULL,NULL,NULL),(85,5,'Beautiful Concert',2,'2021-07-21 22:10:00','2021-07-21 01:12:00',19,182,0,NULL,NULL,NULL),(86,5,'Site Concert',2,'2021-07-21 01:45:00','2021-07-21 04:50:00',20,185,0,NULL,NULL,NULL),(87,5,'House Concert',2,'2021-07-21 06:06:00','2021-07-21 09:44:00',4,218,0,NULL,NULL,NULL),(88,5,'Away Concert',2,'2021-07-21 10:34:00','2021-07-21 14:13:00',25,219,0,NULL,NULL,NULL),(89,5,'Truth Concert',3,'2021-07-22 09:03:00','2021-07-22 12:09:00',2,186,0,NULL,NULL,NULL),(90,5,'Time Concert',3,'2021-07-22 12:33:00','2021-07-22 15:34:00',16,181,0,NULL,NULL,NULL),(91,5,'Find Concert',3,'2021-07-22 16:54:00','2021-07-22 20:07:00',17,193,0,NULL,NULL,NULL),(92,5,'Middle Concert',3,'2021-07-22 20:55:00','2021-07-22 00:01:00',20,186,0,NULL,NULL,NULL),(93,5,'Claim Concert',3,'2021-07-22 00:28:00','2021-07-22 03:54:00',20,206,0,NULL,NULL,NULL),(94,5,'Mind Concert',3,'2021-07-22 04:26:00','2021-07-22 07:27:00',11,181,0,NULL,NULL,NULL),(95,5,'She Concert',4,'2021-07-23 09:06:00','2021-07-23 12:12:00',24,186,0,NULL,NULL,NULL),(96,5,'Model Concert',4,'2021-07-23 13:50:00','2021-07-23 17:11:00',6,201,0,NULL,NULL,NULL),(97,6,'Some Concert',1,'2022-08-20 09:00:00','2022-08-20 12:10:00',18,190,0,NULL,NULL,NULL),(98,6,'Store Concert',1,'2022-08-20 13:23:00','2022-08-20 17:01:00',10,218,0,NULL,NULL,NULL),(99,6,'Nothing Concert',2,'2022-08-21 08:44:00','2022-08-21 12:16:00',16,212,0,NULL,NULL,NULL),(100,6,'Others Concert',2,'2022-08-21 13:49:00','2022-08-21 17:10:00',3,201,0,NULL,NULL,NULL),(101,6,'Yet Concert',2,'2022-08-21 17:47:00','2022-08-21 20:48:00',19,181,0,NULL,NULL,NULL),(102,6,'Reveal Concert',2,'2022-08-21 21:13:00','2022-08-21 00:50:00',24,217,0,NULL,NULL,NULL),(103,6,'Third Concert',2,'2022-08-21 02:15:00','2022-08-21 05:21:00',12,186,0,NULL,NULL,NULL),(104,6,'Teacher Concert',2,'2022-08-21 07:00:00','2022-08-21 10:07:00',18,187,0,NULL,NULL,NULL),(105,6,'Source Concert',2,'2022-08-21 10:53:00','2022-08-21 14:29:00',30,216,0,NULL,NULL,NULL),(106,6,'House Concert',3,'2022-08-22 08:42:00','2022-08-22 11:59:00',2,197,0,NULL,NULL,NULL),(107,6,'Paper Concert',3,'2022-08-22 12:55:00','2022-08-22 16:31:00',2,216,0,NULL,NULL,NULL),(108,6,'No Concert',3,'2022-08-22 17:44:00','2022-08-22 21:17:00',24,213,0,NULL,NULL,NULL),(109,6,'Finally Concert',3,'2022-08-22 21:44:00','2022-08-22 01:12:00',28,208,0,NULL,NULL,NULL),(110,6,'Born Concert',4,'2022-08-23 08:53:00','2022-08-23 12:08:00',3,195,0,NULL,NULL,NULL),(111,6,'Mouth Concert',4,'2022-08-23 12:29:00','2022-08-23 15:32:00',18,183,0,NULL,NULL,NULL),(112,6,'Near Concert',4,'2022-08-23 16:34:00','2022-08-23 20:01:00',17,207,0,NULL,NULL,NULL),(113,6,'Support Concert',4,'2022-08-23 20:39:00','2022-08-23 00:00:00',28,201,0,NULL,NULL,NULL),(114,6,'Magazine Concert',5,'2022-08-24 09:08:00','2022-08-24 12:44:00',9,216,0,NULL,NULL,NULL),(115,6,'Themselves Concert',5,'2022-08-24 13:26:00','2022-08-24 16:41:00',25,195,0,NULL,NULL,NULL),(116,6,'Form Concert',5,'2022-08-24 17:08:00','2022-08-24 20:26:00',12,198,0,NULL,NULL,NULL),(117,6,'Pretty Concert',5,'2022-08-24 21:31:00','2022-08-24 01:01:00',4,210,0,NULL,NULL,NULL),(118,7,'Concern Concert',1,'2023-08-28 08:54:00','2023-08-28 12:17:00',21,203,0,NULL,NULL,NULL),(119,7,'Order Concert',1,'2023-08-28 13:29:00','2023-08-28 16:49:00',29,200,0,NULL,NULL,NULL),(120,7,'Lot Concert',1,'2023-08-28 18:08:00','2023-08-28 21:40:00',23,212,0,NULL,NULL,NULL),(121,7,'Thus Concert',2,'2023-08-29 08:26:00','2023-08-29 11:28:00',7,182,0,NULL,NULL,NULL),(122,7,'Word Concert',2,'2023-08-29 12:40:00','2023-08-29 15:55:00',20,195,0,NULL,NULL,NULL),(123,7,'Any Concert',2,'2023-08-29 17:22:00','2023-08-29 20:35:00',8,193,0,NULL,NULL,NULL),(124,7,'Sit Concert',2,'2023-08-29 21:12:00','2023-08-29 00:47:00',19,215,0,NULL,NULL,NULL),(125,7,'Federal Concert',2,'2023-08-29 02:07:00','2023-08-29 05:43:00',30,216,0,NULL,NULL,NULL),(126,7,'Public Concert',2,'2023-08-29 07:18:00','2023-08-29 10:55:00',12,217,0,NULL,NULL,NULL),(127,7,'Option Concert',3,'2023-08-30 09:32:00','2023-08-30 12:47:00',13,195,0,NULL,NULL,NULL),(128,7,'Total Concert',3,'2023-08-30 13:43:00','2023-08-30 17:22:00',3,219,0,NULL,NULL,NULL),(129,7,'Produce Concert',3,'2023-08-30 18:35:00','2023-08-30 22:00:00',25,205,0,NULL,NULL,NULL),(130,7,'Card Concert',3,'2023-08-30 22:55:00','2023-08-30 02:20:00',8,205,0,NULL,2,NULL),(131,7,'Single Concert',3,'2023-08-30 03:37:00','2023-08-30 06:53:00',8,196,0,NULL,NULL,NULL),(132,7,'Majority Concert',3,'2023-08-30 07:26:00','2023-08-30 10:45:00',11,199,0,NULL,NULL,NULL),(133,7,'Southern Concert',4,'2023-08-31 08:20:00','2023-08-31 11:50:00',6,210,0,NULL,1,NULL),(134,7,'Special Concert',4,'2023-08-31 12:37:00','2023-08-31 15:56:00',28,199,0,NULL,NULL,NULL),(135,7,'Something Concert',5,'2023-09-01 09:40:00','2023-09-01 13:06:00',7,206,0,NULL,NULL,NULL),(136,7,'Travel Concert',5,'2023-09-01 13:59:00','2023-09-01 17:03:00',8,184,0,NULL,NULL,NULL),(137,7,'Challenge Concert',5,'2023-09-01 18:09:00','2023-09-01 21:32:00',21,203,0,NULL,NULL,NULL),(138,7,'Real Concert',5,'2023-09-01 22:05:00','2023-09-01 01:24:00',19,199,0,NULL,1,NULL),(139,8,'Left Concert',1,'2024-09-20 09:33:00','2024-09-20 13:05:00',9,212,0,NULL,NULL,NULL),(140,8,'Almost Concert',1,'2024-09-20 14:02:00','2024-09-20 17:12:00',21,190,0,NULL,NULL,NULL),(141,8,'Out Concert',1,'2024-09-20 17:33:00','2024-09-20 20:56:00',23,203,0,NULL,NULL,NULL),(142,8,'Particular Concert',1,'2024-09-20 22:24:00','2024-09-20 01:37:00',12,193,0,NULL,NULL,NULL),(143,8,'Friend Concert',1,'2024-09-20 03:15:00','2024-09-20 06:23:00',21,188,0,NULL,NULL,NULL),(144,8,'Stop Concert',1,'2024-09-20 07:37:00','2024-09-20 10:59:00',29,202,0,NULL,NULL,NULL),(145,8,'Them Concert',1,'2024-09-20 11:21:00','2024-09-20 14:48:00',7,207,0,NULL,NULL,NULL),(146,8,'New Concert',2,'2024-09-21 09:14:00','2024-09-21 12:51:00',1,217,0,NULL,NULL,NULL),(147,8,'Dinner Concert',2,'2024-09-21 13:14:00','2024-09-21 16:36:00',17,202,0,NULL,NULL,NULL),(148,8,'Democratic Concert',2,'2024-09-21 18:00:00','2024-09-21 21:11:00',22,191,0,NULL,NULL,NULL),(149,8,'Among Concert',2,'2024-09-21 22:43:00','2024-09-21 02:10:00',20,207,0,NULL,NULL,NULL),(150,9,'None Concert',1,'2025-07-12 09:03:00','2025-07-12 12:43:00',27,220,0,NULL,1,NULL),(151,9,'Drive Concert',1,'2025-07-12 14:22:00','2025-07-12 17:40:00',1,198,0,NULL,1,NULL),(152,9,'Field Concert',1,'2025-07-12 19:01:00','2025-07-12 22:13:00',19,192,0,NULL,NULL,NULL),(153,9,'American Concert',1,'2025-07-12 23:09:00','2025-07-12 02:14:00',20,185,0,NULL,2,NULL),(154,9,'Business Concert',1,'2025-07-12 03:46:00','2025-07-12 07:23:00',24,217,0,NULL,NULL,NULL),(155,9,'Rise Concert',1,'2025-07-12 07:45:00','2025-07-12 10:52:00',10,187,0,NULL,NULL,NULL),(156,9,'Human Concert',2,'2025-07-13 09:39:00','2025-07-13 12:58:00',9,199,0,NULL,2,NULL),(157,9,'Take Concert',2,'2025-07-13 14:17:00','2025-07-13 17:46:00',23,209,0,NULL,NULL,NULL),(158,9,'Bad Concert',2,'2025-07-13 19:06:00','2025-07-13 22:24:00',29,198,0,NULL,NULL,NULL),(159,9,'Kid Concert',2,'2025-07-13 22:48:00','2025-07-13 02:20:00',15,212,0,NULL,1,NULL),(160,9,'Carry Concert',2,'2025-07-13 03:55:00','2025-07-13 07:20:00',28,205,0,NULL,NULL,NULL),(161,9,'Collection Concert',2,'2025-07-13 08:06:00','2025-07-13 11:27:00',25,201,0,NULL,NULL,NULL),(162,9,'Network Concert',3,'2025-07-14 08:43:00','2025-07-14 11:45:00',17,182,0,NULL,NULL,NULL),(163,9,'North Concert',3,'2025-07-14 12:45:00','2025-07-14 16:22:00',19,217,0,NULL,NULL,NULL),(164,9,'Smile Concert',3,'2025-07-14 16:49:00','2025-07-14 20:15:00',22,206,0,NULL,1,NULL),(165,9,'Because Concert',3,'2025-07-14 21:41:00','2025-07-14 01:02:00',24,201,0,NULL,1,NULL),(166,9,'Current Concert',3,'2025-07-14 01:34:00','2025-07-14 04:37:00',27,183,0,NULL,1,NULL),(167,9,'Continue Concert',3,'2025-07-14 05:03:00','2025-07-14 08:10:00',30,187,0,NULL,2,NULL),(168,9,'Food Concert',3,'2025-07-14 09:29:00','2025-07-14 12:49:00',13,200,0,NULL,1,NULL),(169,10,'Thousand Concert',1,'2026-09-20 09:13:00','2026-09-20 12:49:00',19,216,0,NULL,NULL,NULL),(170,10,'Site Concert',1,'2026-09-20 13:38:00','2026-09-20 16:58:00',27,200,0,NULL,2,NULL),(171,10,'Network Concert',1,'2026-09-20 18:38:00','2026-09-20 21:50:00',10,192,0,NULL,NULL,NULL),(172,10,'Record Concert',2,'2026-09-21 08:35:00','2026-09-21 11:54:00',24,199,0,NULL,NULL,NULL),(173,10,'Beautiful Concert',2,'2026-09-21 13:04:00','2026-09-21 16:37:00',26,213,0,NULL,1,NULL),(174,10,'Field Concert',2,'2026-09-21 17:42:00','2026-09-21 20:50:00',19,188,0,NULL,2,NULL),(175,10,'Yeah Concert',2,'2026-09-21 21:11:00','2026-09-21 00:24:00',18,193,0,NULL,NULL,NULL),(176,10,'Person Concert',2,'2026-09-21 01:22:00','2026-09-21 04:40:00',19,198,0,NULL,1,NULL),(177,10,'What Concert',2,'2026-09-21 05:11:00','2026-09-21 08:21:00',16,190,0,NULL,NULL,NULL),(178,10,'Magazine Concert',3,'2026-09-22 08:40:00','2026-09-22 12:05:00',15,205,0,NULL,1,NULL),(179,11,'Live Session 11',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180,0,NULL,NULL,NULL),(180,12,'Live Session 12',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180,0,NULL,NULL,NULL),(181,13,'Live Session 13',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180,0,NULL,NULL,NULL),(182,11,'Live Session 11',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180,0,NULL,NULL,NULL),(183,12,'Live Session 12',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180,0,NULL,NULL,NULL),(184,13,'Live Session 13',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180,0,NULL,NULL,NULL),(185,14,'Live Session 14',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180,0,NULL,NULL,NULL),(186,15,'Live Session 15',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180,0,NULL,NULL,NULL),(187,16,'Live Session 16',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180,0,NULL,NULL,NULL),(188,17,'Live Session 17',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180,0,NULL,NULL,NULL),(189,18,'Live Session 18',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180,0,NULL,NULL,NULL),(190,19,'Live Session 19',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180,0,NULL,NULL,NULL),(191,20,'Live Session 20',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180,0,NULL,NULL,NULL),(192,11,'Tina Live 11',1,'2025-09-01 19:00:00','2025-09-01 21:00:00',31,120,0,NULL,NULL,NULL),(193,12,'Tina Live 12',1,'2025-09-01 19:00:00','2025-09-01 21:00:00',31,120,0,NULL,NULL,NULL),(194,13,'Tina Live 13',1,'2025-09-01 19:00:00','2025-09-01 21:00:00',31,120,0,NULL,NULL,NULL),(195,14,'Tina Live 14',1,'2025-09-01 19:00:00','2025-09-01 21:00:00',31,120,0,NULL,NULL,NULL),(196,15,'Tina Live 15',1,'2025-09-01 19:00:00','2025-09-01 21:00:00',31,120,0,NULL,NULL,NULL),(197,16,'Tina Live 16',1,'2025-09-01 19:00:00','2025-09-01 21:00:00',31,120,0,NULL,NULL,NULL),(198,17,'Tina Live 17',1,'2025-09-01 19:00:00','2025-09-01 21:00:00',31,120,0,NULL,NULL,NULL),(199,18,'Tina Live 18',1,'2025-09-01 19:00:00','2025-09-01 21:00:00',31,120,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_festival_day
BEFORE INSERT ON events
FOR EACH ROW
BEGIN
    DECLARE fest_duration INT;

    SELECT duration INTO fest_duration
    FROM festival
    WHERE festival_ID = NEW.festival_ID;

    IF NEW.festival_day > fest_duration THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'festival_day cannot be greater than festival duration.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `festival`
--

DROP TABLE IF EXISTS `festival`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `festival` (
  `festival_ID` int(11) NOT NULL AUTO_INCREMENT,
  `starting_date` date NOT NULL,
  `duration` int(11) NOT NULL,
  PRIMARY KEY (`festival_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festival`
--

LOCK TABLES `festival` WRITE;
/*!40000 ALTER TABLE `festival` DISABLE KEYS */;
INSERT INTO `festival` VALUES (1,'2017-09-17',5),(2,'2018-09-04',5),(3,'2019-07-20',2),(4,'2020-08-13',4),(5,'2021-07-20',4),(6,'2022-08-20',5),(7,'2023-08-28',5),(8,'2024-09-20',2),(9,'2025-07-12',3),(10,'2026-09-20',3),(11,'2020-07-10',3),(12,'2021-07-10',3),(13,'2022-07-10',3),(14,'2023-07-10',3),(15,'2024-07-10',3),(16,'2025-07-10',3),(17,'2026-07-10',3),(18,'2027-07-10',3),(19,'2028-07-10',3),(20,'2029-07-10',3);
/*!40000 ALTER TABLE `festival` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER prevent_festival_deletion
BEFORE DELETE ON festival
FOR EACH ROW
BEGIN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Festival cannot be deleted.';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `festival_location`
--

DROP TABLE IF EXISTS `festival_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `festival_location` (
  `festival_ID` int(11) DEFAULT NULL,
  `festival_location_ID` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `town` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `continent` varchar(100) NOT NULL,
  `geo_coordinates` varchar(100) NOT NULL,
  PRIMARY KEY (`festival_location_ID`),
  KEY `festival_ID` (`festival_ID`),
  CONSTRAINT `festival_location_ibfk_1` FOREIGN KEY (`festival_ID`) REFERENCES `festival` (`festival_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festival_location`
--

LOCK TABLES `festival_location` WRITE;
/*!40000 ALTER TABLE `festival_location` DISABLE KEYS */;
INSERT INTO `festival_location` VALUES (1,1,'1272 Snyder Tunnel','Christinachester','Montenegro','Europe','-48.2960215,-128.011857'),(2,2,'837 Ellis Springs Suite 672','New Annetteland','Ethiopia','Europe','59.3593015,21.310392'),(3,3,'067 Amy Mountain Suite 744','North Alyssaberg','Liechtenstein','Europe','26.334774,-50.203853'),(4,4,'486 Smith Canyon','Judymouth','Cambodia','Europe','-46.6898435,-88.367690'),(5,5,'7500 Rachel Wall Apt. 108','Williamstad','Jamaica','Europe','-38.786132,-158.124409'),(6,6,'0108 Sheryl Hollow','New Andrea','Albania','Europe','20.392706,130.070835'),(7,7,'904 Young Shoal Suite 081','Leeberg','Saint Barthelemy','Europe','59.841914,-80.068946'),(8,8,'38549 James Junction Suite 950','North Theresaland','Monaco','Europe','64.2535735,-147.521946'),(9,9,'50508 Danny Locks Apt. 995','Taraton','Hong Kong','Europe','-63.3464865,-5.769881'),(10,10,'67738 Jennifer Springs','East Mackenzieberg','Tanzania','Europe','34.646051,-170.929639'),(11,11,'10 Main St','Berlin','Germany','Europe','-33.0,151.0'),(12,12,'11 Main St','Tokyo','Japan','Asia','-32.0,152.0'),(13,13,'12 Main St','New York','USA','America','-31.0,153.0'),(14,14,'13 Main St','Cape Town','South Africa','Africa','-30.0,154.0'),(15,15,'14 Main St','Sydney','Australia','Oceania','-29.0,155.0'),(16,16,'15 Main St','McMurdo','Antarctica','Antarctica','-28.0,156.0'),(17,17,'16 Main St','São Paulo','Brazil','South America','-27.0,157.0'),(18,18,'17 Main St','Melbourne','Australia','Australia','-26.0,158.0'),(19,19,'18 Main St','Toronto','Canada','North America','-25.0,159.0'),(20,20,'19 Main St','Dubai','UAE','Middle East','-24.0,160.0');
/*!40000 ALTER TABLE `festival_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `genre_ID` int(11) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(100) NOT NULL,
  `subgenre_name` varchar(100) DEFAULT NULL,
  `artist_ID` int(11) DEFAULT NULL,
  `group_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`genre_ID`),
  KEY `idx_genre_artist` (`artist_ID`),
  KEY `idx_genre_group` (`group_ID`),
  CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`artist_ID`) REFERENCES `artist` (`artist_ID`),
  CONSTRAINT `genre_ibfk_2` FOREIGN KEY (`group_ID`) REFERENCES `group` (`group_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Classical','Baroque',1,NULL),(2,'Jazz','Smooth Jazz',2,NULL),(3,'Jazz','Smooth Jazz',3,NULL),(4,'Classical','Baroque',3,NULL),(5,'Classical','Baroque',4,NULL),(6,'Jazz','Smooth Jazz',4,NULL),(7,'Pop',NULL,4,NULL),(8,'Hip-Hop','Trap',5,NULL),(9,'Rock','Hard Rock',5,NULL),(10,'Hip-Hop','Trap',6,NULL),(11,'Classical','Baroque',6,NULL),(12,'Jazz','Smooth Jazz',6,NULL),(13,'Hip-Hop','Trap',7,NULL),(14,'Jazz','Smooth Jazz',7,NULL),(15,'Hip-Hop','Trap',8,NULL),(16,'Classical','Baroque',8,NULL),(17,'Electronic','House',8,NULL),(18,'Electronic','House',9,NULL),(19,'Hip-Hop','Trap',9,NULL),(20,'Pop',NULL,9,NULL),(21,'Electronic','House',10,NULL),(22,'Hip-Hop','Trap',11,NULL),(23,'Electronic','House',12,NULL),(24,'Classical','Baroque',12,NULL),(25,'Pop',NULL,12,NULL),(26,'Electronic','House',13,NULL),(27,'Rock','Hard Rock',14,NULL),(28,'Electronic','House',14,NULL),(29,'Classical','Baroque',14,NULL),(30,'Pop',NULL,15,NULL),(31,'Rock','Hard Rock',15,NULL),(32,'Hip-Hop','Trap',16,NULL),(33,'Electronic','House',16,NULL),(34,'Pop',NULL,16,NULL),(35,'Classical','Baroque',17,NULL),(36,'Rock','Hard Rock',17,NULL),(37,'Jazz','Smooth Jazz',17,NULL),(38,'Jazz','Smooth Jazz',18,NULL),(39,'Electronic','House',18,NULL),(40,'Electronic','House',19,NULL),(41,'Rock','Hard Rock',19,NULL),(42,'Classical','Baroque',19,NULL),(43,'Rock','Hard Rock',20,NULL),(44,'Classical','Baroque',21,NULL),(45,'Pop',NULL,21,NULL),(46,'Jazz','Smooth Jazz',21,NULL),(47,'Electronic','House',22,NULL),(48,'Rock','Hard Rock',22,NULL),(49,'Classical','Baroque',23,NULL),(50,'Pop',NULL,24,NULL),(51,'Electronic','House',25,NULL),(52,'Classical','Baroque',25,NULL),(53,'Rock','Hard Rock',26,NULL),(54,'Hip-Hop','Trap',26,NULL),(55,'Jazz','Smooth Jazz',26,NULL),(56,'Electronic','House',27,NULL),(57,'Rock','Hard Rock',28,NULL),(58,'Jazz','Smooth Jazz',28,NULL),(59,'Classical','Baroque',29,NULL),(60,'Hip-Hop','Trap',29,NULL),(61,'Pop',NULL,30,NULL),(62,'Hip-Hop','Trap',30,NULL),(63,'Classical','Baroque',31,NULL),(64,'Rock','Hard Rock',31,NULL),(65,'Jazz','Smooth Jazz',31,NULL),(66,'Classical','Baroque',32,NULL),(67,'Electronic','House',32,NULL),(68,'Hip-Hop','Trap',33,NULL),(69,'Electronic','House',33,NULL),(70,'Classical','Baroque',34,NULL),(71,'Pop',NULL,34,NULL),(72,'Pop',NULL,35,NULL),(73,'Jazz','Smooth Jazz',36,NULL),(74,'Pop',NULL,36,NULL),(75,'Electronic','House',37,NULL),(76,'Rock','Hard Rock',37,NULL),(77,'Pop',NULL,37,NULL),(78,'Classical','Baroque',38,NULL),(79,'Hip-Hop','Trap',38,NULL),(80,'Rock','Hard Rock',38,NULL),(81,'Hip-Hop','Trap',39,NULL),(82,'Rock','Hard Rock',39,NULL),(83,'Hip-Hop','Trap',40,NULL),(84,'Jazz','Smooth Jazz',40,NULL),(85,'Rock','Hard Rock',40,NULL),(86,'Pop',NULL,41,NULL),(87,'Jazz','Smooth Jazz',41,NULL),(88,'Jazz','Smooth Jazz',42,NULL),(89,'Classical','Baroque',42,NULL),(90,'Hip-Hop','Trap',43,NULL),(91,'Jazz','Smooth Jazz',43,NULL),(92,'Electronic','House',44,NULL),(93,'Pop',NULL,44,NULL),(94,'Electronic','House',45,NULL),(95,'Jazz','Smooth Jazz',46,NULL),(96,'Pop',NULL,46,NULL),(97,'Classical','Baroque',47,NULL),(98,'Rock','Hard Rock',47,NULL),(99,'Pop',NULL,48,NULL),(100,'Electronic','House',48,NULL),(101,'Rock','Hard Rock',49,NULL),(102,'Hip-Hop','Trap',50,NULL),(103,'Jazz','Smooth Jazz',50,NULL),(104,'Rock','Hard Rock',50,NULL),(105,'Rock','Hard Rock',NULL,1),(106,'Hip-Hop','Trap',NULL,1),(107,'Jazz','Smooth Jazz',NULL,2),(108,'Hip-Hop','Trap',NULL,2),(109,'Pop',NULL,NULL,2),(110,'Pop',NULL,NULL,3),(111,'Rock','Hard Rock',NULL,3),(112,'Electronic','House',NULL,3),(113,'Jazz','Smooth Jazz',NULL,4),(114,'Electronic','House',NULL,4),(115,'Hip-Hop','Trap',NULL,4),(116,'Classical','Baroque',NULL,5),(117,'Jazz','Smooth Jazz',NULL,5),(118,'Electronic','House',NULL,5),(119,'Rock','Hard Rock',NULL,6),(120,'Pop',NULL,NULL,6),(121,'Classical','Baroque',NULL,6),(122,'Classical','Baroque',NULL,7),(123,'Electronic','House',NULL,7),(124,'Jazz','Smooth Jazz',NULL,7),(125,'Electronic','House',NULL,8),(126,'Rock','Hard Rock',NULL,8),(127,'Hip-Hop','Trap',NULL,8),(128,'Pop',NULL,NULL,9),(129,'Pop',NULL,NULL,10),(130,'Hip-Hop','Trap',NULL,10),(131,'Classical','Baroque',NULL,10),(132,'Hip-Hop','Trap',NULL,11),(133,'Pop',NULL,NULL,11),(134,'Rock','Hard Rock',NULL,11),(135,'Rock','Hard Rock',NULL,12),(136,'Classical','Baroque',NULL,12),(137,'Pop',NULL,NULL,12),(138,'Rock','Hard Rock',NULL,13),(139,'Jazz','Smooth Jazz',NULL,13),(140,'Classical','Baroque',NULL,14),(141,'Electronic','House',NULL,14),(142,'Jazz','Smooth Jazz',NULL,15);
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_genre_entity_exclusivity
BEFORE INSERT ON genre
FOR EACH ROW
BEGIN
    IF (NEW.artist_ID IS NOT NULL AND NEW.group_ID IS NOT NULL) OR
       (NEW.artist_ID IS NULL AND NEW.group_ID IS NULL) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Each genre must be linked to either one artist OR one group (not both or neither).';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `group_ID` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `group_date_of_birth` date NOT NULL,
  `group_debute` date NOT NULL,
  `group_website` varchar(255) DEFAULT NULL,
  `group_instagram` varchar(255) DEFAULT NULL,
  `member_names` text DEFAULT '',
  `num_of_consecutive_years_participating` int(11) DEFAULT 0,
  PRIMARY KEY (`group_ID`),
  CONSTRAINT `CONSTRAINT_1` CHECK (0 <= `num_of_consecutive_years_participating` and `num_of_consecutive_years_participating` <= 3)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'Brooke Stewart Band','1979-11-23','1996-11-18','https://www.tran.biz/','http://www.english.com/','David Walker, Jason Murillo, Mark Lyons, Kevin Ferguson, Harold Davis, ',0),(2,'Olivia Terry Band','2003-08-16','2006-08-15','http://kennedy.info/','http://www.gregory.biz/','Heather Kaufman, Chelsea Reynolds, William Moreno, Jason Murillo, ',0),(3,'David Barker Band','1994-01-29','2013-01-24','http://mcdowell.com/','https://www.cooper.com/','Courtney White, Jonathan Fletcher, Gregory Walker, Jeffrey Ewing, Ricky Martinez, ',0),(4,'Bryan Duran Band','2004-05-10','2018-05-07','http://gomez-edwards.info/','http://young.info/','Mr. Andrew Walker MD, Kenneth Martinez, ',0),(5,'Colleen Richards Band','1998-03-15','2013-03-11','http://mccann.org/','https://www.brady.org/','Elizabeth Greene, Barbara Weber, Anita Hoffman, ',0),(6,'Trevor Castro Band','1978-02-03','1991-01-31','https://www.garza.biz/','https://www.carter.biz/','David Johnson, Sarah Stone, Ricky Martinez, Cassandra Holland, ',0),(7,'Jamie Gardner Band','1990-06-07','2000-06-04','https://www.olsen-jackson.com/','https://howell.biz/','Jonathan Fletcher, Mark West, ',0),(8,'Ashley Patrick Band','1979-10-25','1990-10-22','https://www.stewart.com/','http://www.rios-ho.net/','William Moreno, Tina Davis, Donna Ray, Christina Garza, ',0),(9,'Jennifer Frey Band','2005-01-08','2018-01-05','http://cox.com/','https://lopez-benson.com/','Kevin Ferguson, Sarah Stone, Donna Ray, ',0),(10,'Benjamin Gray Band','2000-02-21','2006-02-19','https://phillips.com/','https://lewis-williams.com/','Jeffrey Ewing, James Larsen, Mrs. Shannon Hamilton MD, Thomas Mclean, ',0),(11,'Shawn Sanders Band','1983-08-24','1992-08-21','http://jones.net/','http://www.davis.biz/','Kenneth Martinez, Gloria Mendoza, Elizabeth Greene, Gregory Walker, Darrell Woods, ',0),(12,'Jesus Price Band','1999-07-19','2010-07-16','http://griffin.com/','https://brown.com/','Heather Kaufman, David Johnson, Samuel Frey, ',0),(13,'David Baker Band','1994-12-10','2009-12-06','http://www.peterson.org/','https://stewart-rush.info/','Thomas Lane, Harold Davis, Thomas Mclean, Chelsea Reynolds, ',0),(14,'Kelly Olson Band','2000-01-21','2001-01-20','http://bell-berry.biz/','https://navarro-reynolds.com/','Matthew Malone, James Larsen, Christina Garza, ',0),(15,'Jason Jenkins Band','1996-04-11','2015-04-07','https://www.garcia-schultz.com/','http://www.smith-burke.com/','Timothy Reed DDS, David Walker, Derrick Wolfe, Darrell Woods, ',0);
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_members`
--

DROP TABLE IF EXISTS `group_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_members` (
  `group_ID` int(11) NOT NULL,
  `artist_ID` int(11) NOT NULL,
  PRIMARY KEY (`group_ID`,`artist_ID`),
  KEY `idx_group_members_artist` (`artist_ID`),
  CONSTRAINT `group_members_ibfk_1` FOREIGN KEY (`group_ID`) REFERENCES `group` (`group_ID`),
  CONSTRAINT `group_members_ibfk_2` FOREIGN KEY (`artist_ID`) REFERENCES `artist` (`artist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_members`
--

LOCK TABLES `group_members` WRITE;
/*!40000 ALTER TABLE `group_members` DISABLE KEYS */;
INSERT INTO `group_members` VALUES (1,10),(1,28),(1,34),(1,41),(1,49),(2,20),(2,25),(2,28),(2,33),(3,26),(3,31),(3,35),(3,44),(3,50),(4,23),(4,46),(5,1),(5,14),(5,47),(6,12),(6,21),(6,31),(6,37),(7,32),(7,44),(8,4),(8,5),(8,19),(8,25),(9,5),(9,12),(9,49),(10,7),(10,11),(10,35),(10,40),(11,6),(11,14),(11,24),(11,46),(11,50),(12,8),(12,20),(12,21),(13,10),(13,33),(13,40),(13,48),(14,7),(14,15),(14,19),(15,6),(15,18),(15,38),(15,41);
/*!40000 ALTER TABLE `group_members` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER group_member_names
AFTER INSERT ON group_members
FOR EACH ROW
BEGIN
    DECLARE artist_name_var VARCHAR(255);

    
    SELECT artist_name INTO artist_name_var
    FROM artist
    WHERE artist_ID = NEW.artist_ID;

    
    UPDATE `group`
    SET member_names = CONCAT(member_names, artist_name_var, ', ')
    WHERE group_ID = NEW.group_ID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `performances`
--

DROP TABLE IF EXISTS `performances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performances` (
  `performance_ID` int(11) NOT NULL AUTO_INCREMENT,
  `event_ID` int(11) DEFAULT NULL,
  `performance_type` enum('warm up','headline','special_guest','finale') NOT NULL,
  `performance_start_time` datetime NOT NULL,
  `performance_end_time` datetime NOT NULL,
  `performance_duration` int(11) GENERATED ALWAYS AS (case when `performance_end_time` >= `performance_start_time` then timestampdiff(MINUTE,`performance_start_time`,`performance_end_time`) else timestampdiff(MINUTE,`performance_start_time`,`performance_end_time`) + 1440 end) STORED,
  `building_ID` int(11) NOT NULL,
  `building_name` varchar(255) NOT NULL,
  `artist_ID` int(11) DEFAULT NULL,
  `group_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`performance_ID`),
  KEY `building_ID` (`building_ID`),
  KEY `idx_perf_event_artist` (`event_ID`,`artist_ID`),
  KEY `idx_perf_artist_event` (`artist_ID`,`event_ID`),
  KEY `idx_perf_group_event` (`group_ID`,`event_ID`),
  CONSTRAINT `performances_ibfk_1` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`),
  CONSTRAINT `performances_ibfk_2` FOREIGN KEY (`building_ID`) REFERENCES `building` (`building_ID`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`performance_start_time` < `performance_end_time`),
  CONSTRAINT `CONSTRAINT_2` CHECK (`performance_duration` <= 180)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performances`
--

LOCK TABLES `performances` WRITE;
/*!40000 ALTER TABLE `performances` DISABLE KEYS */;
INSERT INTO `performances` VALUES (1,1,'special_guest','2017-09-17 09:33:00','2017-09-17 10:58:00',85,28,'Murphy-Aguilar',NULL,14),(2,2,'special_guest','2017-09-17 13:35:00','2017-09-17 15:23:00',108,13,'Stevenson and Sons',3,NULL),(3,3,'headline','2017-09-17 17:19:00','2017-09-17 19:07:00',108,12,'Cardenas, Wright and Cuevas',NULL,2),(4,5,'warm up','2017-09-17 01:56:00','2017-09-17 02:55:00',59,1,'Schmidt Inc',NULL,8),(5,6,'warm up','2017-09-17 05:48:00','2017-09-17 06:24:00',36,10,'Frey Inc',NULL,14),(6,7,'special_guest','2017-09-17 10:39:00','2017-09-17 11:21:00',42,25,'Mahoney and Sons',26,NULL),(7,7,'warm up','2017-09-17 11:35:00','2017-09-17 12:57:00',82,25,'Mahoney and Sons',NULL,9),(8,8,'finale','2017-09-17 15:41:00','2017-09-17 17:01:00',80,9,'Tyler-Morales',24,NULL),(9,8,'special_guest','2017-09-17 17:15:00','2017-09-17 18:37:00',82,9,'Tyler-Morales',24,NULL),(10,9,'warm up','2017-09-17 20:23:00','2017-09-17 20:59:00',36,14,'Wiggins, Jones and Williams',2,NULL),(11,9,'warm up','2017-09-17 21:14:00','2017-09-17 22:36:00',82,14,'Wiggins, Jones and Williams',NULL,6),(12,10,'finale','2017-09-18 08:23:00','2017-09-18 09:23:00',60,13,'Stevenson and Sons',NULL,8),(13,11,'headline','2017-09-19 08:38:00','2017-09-19 10:00:00',82,12,'Cardenas, Wright and Cuevas',NULL,4),(14,11,'special_guest','2017-09-19 10:07:00','2017-09-19 10:42:00',35,12,'Cardenas, Wright and Cuevas',NULL,7),(15,12,'special_guest','2017-09-19 13:45:00','2017-09-19 15:16:00',91,13,'Stevenson and Sons',NULL,10),(16,12,'finale','2017-09-19 15:23:00','2017-09-19 17:12:00',109,13,'Stevenson and Sons',NULL,8),(17,13,'special_guest','2017-09-19 17:36:00','2017-09-19 19:23:00',107,16,'Price, Green and Lewis',NULL,3),(18,14,'warm up','2017-09-20 09:22:00','2017-09-20 10:49:00',87,7,'Russell, Lewis and Green',7,NULL),(19,15,'finale','2017-09-20 13:02:00','2017-09-20 14:29:00',87,6,'Garcia-Yang',NULL,11),(20,16,'headline','2017-09-20 17:27:00','2017-09-20 18:32:00',65,21,'Brown LLC',7,NULL),(21,16,'finale','2017-09-20 18:40:00','2017-09-20 19:31:00',51,21,'Brown LLC',NULL,9),(22,18,'warm up','2017-09-21 09:10:00','2017-09-21 10:53:00',103,24,'Webb-Clark',42,NULL),(23,19,'finale','2017-09-21 13:49:00','2017-09-21 15:32:00',103,10,'Frey Inc',2,NULL),(24,20,'headline','2017-09-21 17:45:00','2017-09-21 18:29:00',44,7,'Russell, Lewis and Green',NULL,2),(25,20,'finale','2017-09-21 18:35:00','2017-09-21 20:25:00',110,7,'Russell, Lewis and Green',4,NULL),(26,22,'special_guest','2017-09-21 02:43:00','2017-09-21 04:03:00',80,11,'Lewis, Elliott and Campbell',NULL,10),(27,22,'warm up','2017-09-21 04:11:00','2017-09-21 05:37:00',86,11,'Lewis, Elliott and Campbell',45,NULL),(28,23,'warm up','2017-09-21 06:34:00','2017-09-21 08:23:00',109,30,'Alexander, Davis and Torres',33,NULL),(29,23,'warm up','2017-09-21 08:29:00','2017-09-21 09:42:00',73,30,'Alexander, Davis and Torres',38,NULL),(30,24,'warm up','2017-09-21 11:35:00','2017-09-21 12:58:00',83,19,'Burns-Zimmerman',NULL,10),(31,25,'special_guest','2017-09-21 15:16:00','2017-09-21 15:53:00',37,20,'Kim-Thompson',NULL,2),(32,25,'warm up','2017-09-21 16:08:00','2017-09-21 17:05:00',57,20,'Kim-Thompson',NULL,2),(33,26,'warm up','2017-09-21 19:17:00','2017-09-21 20:00:00',43,24,'Webb-Clark',NULL,9),(34,28,'special_guest','2018-09-04 09:23:00','2018-09-04 11:08:00',105,16,'Price, Green and Lewis',15,NULL),(35,28,'finale','2018-09-04 11:21:00','2018-09-04 12:26:00',65,16,'Price, Green and Lewis',23,NULL),(36,29,'warm up','2018-09-04 14:05:00','2018-09-04 15:47:00',102,1,'Schmidt Inc',NULL,15),(37,30,'special_guest','2018-09-04 19:01:00','2018-09-04 20:20:00',79,19,'Burns-Zimmerman',NULL,3),(38,30,'finale','2018-09-04 20:34:00','2018-09-04 22:09:00',95,19,'Burns-Zimmerman',26,NULL),(39,32,'finale','2018-09-04 03:28:00','2018-09-04 04:23:00',55,10,'Frey Inc',16,NULL),(40,32,'special_guest','2018-09-04 04:31:00','2018-09-04 05:35:00',64,10,'Frey Inc',NULL,3),(41,32,'headline','2018-09-04 05:41:00','2018-09-04 06:19:00',38,10,'Frey Inc',NULL,3),(42,33,'special_guest','2018-09-04 08:09:00','2018-09-04 09:27:00',78,9,'Tyler-Morales',NULL,13),(43,34,'headline','2018-09-04 11:43:00','2018-09-04 13:16:00',93,19,'Burns-Zimmerman',NULL,14),(44,35,'warm up','2018-09-04 15:49:00','2018-09-04 17:34:00',105,18,'Jordan Ltd',29,NULL),(45,35,'finale','2018-09-04 17:41:00','2018-09-04 19:12:00',91,18,'Jordan Ltd',NULL,14),(46,36,'warm up','2018-09-05 08:25:00','2018-09-05 09:23:00',58,24,'Webb-Clark',NULL,3),(47,36,'finale','2018-09-05 09:38:00','2018-09-05 10:25:00',47,24,'Webb-Clark',9,NULL),(48,37,'headline','2018-09-06 09:09:00','2018-09-06 10:23:00',74,9,'Tyler-Morales',NULL,2),(49,38,'finale','2018-09-06 13:41:00','2018-09-06 15:20:00',99,14,'Wiggins, Jones and Williams',NULL,7),(50,38,'headline','2018-09-06 15:29:00','2018-09-06 16:29:00',60,14,'Wiggins, Jones and Williams',NULL,10),(51,39,'finale','2018-09-07 08:57:00','2018-09-07 09:40:00',43,8,'Gonzalez PLC',30,NULL),(52,39,'warm up','2018-09-07 09:46:00','2018-09-07 11:33:00',107,8,'Gonzalez PLC',NULL,3),(53,40,'headline','2018-09-08 08:22:00','2018-09-08 09:22:00',60,15,'Mckay-Romero',34,NULL),(54,40,'headline','2018-09-08 09:33:00','2018-09-08 10:05:00',32,15,'Mckay-Romero',NULL,10),(55,41,'finale','2018-09-08 12:33:00','2018-09-08 13:07:00',34,3,'Butler and Sons',43,NULL),(56,41,'warm up','2018-09-08 13:12:00','2018-09-08 14:29:00',77,3,'Butler and Sons',NULL,13),(57,42,'headline','2018-09-08 16:17:00','2018-09-08 17:15:00',58,19,'Burns-Zimmerman',NULL,8),(58,42,'headline','2018-09-08 17:29:00','2018-09-08 19:17:00',108,19,'Burns-Zimmerman',NULL,3),(59,43,'headline','2018-09-08 20:38:00','2018-09-08 21:57:00',79,9,'Tyler-Morales',NULL,9),(60,43,'warm up','2018-09-08 22:12:00','2018-09-08 23:11:00',59,9,'Tyler-Morales',20,NULL),(61,44,'warm up','2019-07-20 09:06:00','2019-07-20 10:56:00',110,1,'Schmidt Inc',NULL,2),(62,44,'finale','2019-07-20 11:10:00','2019-07-20 11:42:00',32,1,'Schmidt Inc',34,NULL),(63,45,'warm up','2019-07-20 12:41:00','2019-07-20 13:47:00',66,5,'Case-Hansen',NULL,11),(64,45,'headline','2019-07-20 14:01:00','2019-07-20 14:38:00',37,5,'Case-Hansen',NULL,13),(65,45,'finale','2019-07-20 14:49:00','2019-07-20 15:52:00',63,5,'Case-Hansen',NULL,9),(66,46,'headline','2019-07-20 16:47:00','2019-07-20 17:17:00',30,27,'Long, Small and Peterson',37,NULL),(67,46,'finale','2019-07-20 17:24:00','2019-07-20 19:23:00',119,27,'Long, Small and Peterson',19,NULL),(68,47,'headline','2019-07-20 20:30:00','2019-07-20 21:47:00',77,2,'Owens-Serrano',NULL,10),(69,47,'warm up','2019-07-20 21:54:00','2019-07-20 23:18:00',84,2,'Owens-Serrano',NULL,12),(70,48,'finale','2019-07-21 09:17:00','2019-07-21 10:05:00',48,10,'Frey Inc',NULL,13),(71,48,'special_guest','2019-07-21 10:14:00','2019-07-21 11:07:00',53,10,'Frey Inc',NULL,14),(72,49,'warm up','2019-07-21 13:45:00','2019-07-21 15:15:00',90,12,'Cardenas, Wright and Cuevas',NULL,3),(73,50,'headline','2019-07-21 18:38:00','2019-07-21 19:33:00',55,2,'Owens-Serrano',1,NULL),(74,50,'warm up','2019-07-21 19:47:00','2019-07-21 21:47:00',120,2,'Owens-Serrano',NULL,8),(75,52,'warm up','2019-07-21 03:43:00','2019-07-21 04:15:00',32,26,'Smith-Collins',NULL,3),(76,52,'special_guest','2019-07-21 04:22:00','2019-07-21 05:09:00',47,26,'Smith-Collins',19,NULL),(77,53,'headline','2020-08-13 09:20:00','2020-08-13 10:21:00',61,10,'Frey Inc',NULL,15),(78,53,'finale','2020-08-13 10:27:00','2020-08-13 11:29:00',62,10,'Frey Inc',NULL,7),(79,54,'finale','2020-08-13 12:45:00','2020-08-13 13:42:00',57,12,'Cardenas, Wright and Cuevas',NULL,4),(80,55,'headline','2020-08-13 16:37:00','2020-08-13 17:35:00',58,14,'Wiggins, Jones and Williams',43,NULL),(81,57,'special_guest','2020-08-13 02:54:00','2020-08-13 03:38:00',44,2,'Owens-Serrano',NULL,1),(82,57,'special_guest','2020-08-13 03:52:00','2020-08-13 05:10:00',78,2,'Owens-Serrano',NULL,12),(83,57,'finale','2020-08-13 05:21:00','2020-08-13 06:08:00',47,2,'Owens-Serrano',NULL,15),(84,58,'warm up','2020-08-13 06:44:00','2020-08-13 08:17:00',93,21,'Brown LLC',9,NULL),(85,58,'finale','2020-08-13 08:27:00','2020-08-13 10:01:00',94,21,'Brown LLC',NULL,1),(86,59,'warm up','2020-08-13 11:08:00','2020-08-13 12:15:00',67,28,'Murphy-Aguilar',39,NULL),(87,59,'warm up','2020-08-13 12:30:00','2020-08-13 13:01:00',31,28,'Murphy-Aguilar',36,NULL),(88,60,'special_guest','2020-08-14 09:11:00','2020-08-14 09:59:00',48,14,'Wiggins, Jones and Williams',NULL,1),(89,60,'warm up','2020-08-14 10:10:00','2020-08-14 11:56:00',106,14,'Wiggins, Jones and Williams',NULL,12),(90,61,'special_guest','2020-08-14 13:36:00','2020-08-14 14:21:00',45,17,'Garcia, Conway and Jordan',38,NULL),(91,62,'warm up','2020-08-14 17:56:00','2020-08-14 19:19:00',83,16,'Price, Green and Lewis',NULL,1),(92,64,'finale','2020-08-14 03:14:00','2020-08-14 04:50:00',96,4,'Jones and Sons',NULL,4),(93,64,'headline','2020-08-14 05:02:00','2020-08-14 06:37:00',95,4,'Jones and Sons',NULL,7),(94,65,'headline','2020-08-14 07:36:00','2020-08-14 09:16:00',100,20,'Kim-Thompson',NULL,5),(95,65,'warm up','2020-08-14 09:27:00','2020-08-14 10:48:00',81,20,'Kim-Thompson',NULL,4),(96,66,'special_guest','2020-08-15 09:37:00','2020-08-15 10:57:00',80,13,'Stevenson and Sons',NULL,5),(97,66,'warm up','2020-08-15 11:11:00','2020-08-15 12:16:00',65,13,'Stevenson and Sons',NULL,15),(98,67,'special_guest','2020-08-15 14:05:00','2020-08-15 15:29:00',84,10,'Frey Inc',NULL,12),(99,68,'headline','2020-08-15 19:10:00','2020-08-15 21:10:00',120,28,'Murphy-Aguilar',NULL,7),(100,70,'special_guest','2020-08-15 02:55:00','2020-08-15 04:37:00',102,5,'Case-Hansen',NULL,7),(101,70,'headline','2020-08-15 04:43:00','2020-08-15 06:34:00',111,5,'Case-Hansen',NULL,13),(102,71,'headline','2020-08-15 07:24:00','2020-08-15 07:57:00',33,2,'Owens-Serrano',11,NULL),(103,72,'warm up','2020-08-15 11:59:00','2020-08-15 13:40:00',101,16,'Price, Green and Lewis',NULL,4),(104,73,'headline','2020-08-15 15:59:00','2020-08-15 16:37:00',38,3,'Butler and Sons',NULL,15),(105,73,'special_guest','2020-08-15 16:47:00','2020-08-15 18:34:00',107,3,'Butler and Sons',10,NULL),(106,74,'finale','2020-08-16 08:40:00','2020-08-16 10:24:00',104,16,'Price, Green and Lewis',47,NULL),(107,75,'headline','2020-08-16 13:08:00','2020-08-16 14:46:00',98,28,'Murphy-Aguilar',21,NULL),(108,76,'finale','2020-08-16 17:01:00','2020-08-16 18:01:00',60,6,'Garcia-Yang',NULL,1),(109,76,'warm up','2020-08-16 18:12:00','2020-08-16 19:46:00',94,6,'Garcia-Yang',NULL,15),(110,78,'special_guest','2020-08-16 01:21:00','2020-08-16 03:13:00',112,14,'Wiggins, Jones and Williams',39,NULL),(111,79,'special_guest','2020-08-16 05:11:00','2020-08-16 06:39:00',88,14,'Wiggins, Jones and Williams',NULL,11),(112,80,'warm up','2020-08-16 09:36:00','2020-08-16 11:36:00',120,23,'Smith Group',NULL,6),(113,81,'headline','2021-07-20 09:16:00','2021-07-20 11:16:00',120,16,'Price, Green and Lewis',NULL,8),(114,82,'headline','2021-07-21 09:29:00','2021-07-21 10:48:00',79,8,'Gonzalez PLC',NULL,14),(115,83,'headline','2021-07-21 14:05:00','2021-07-21 15:22:00',77,1,'Schmidt Inc',NULL,12),(116,83,'special_guest','2021-07-21 15:36:00','2021-07-21 17:16:00',100,1,'Schmidt Inc',NULL,11),(117,84,'headline','2021-07-21 18:26:00','2021-07-21 20:11:00',105,11,'Lewis, Elliott and Campbell',28,NULL),(118,86,'special_guest','2021-07-21 01:45:00','2021-07-21 03:17:00',92,20,'Kim-Thompson',NULL,4),(119,87,'headline','2021-07-21 06:06:00','2021-07-21 07:35:00',89,4,'Jones and Sons',15,NULL),(120,87,'headline','2021-07-21 07:44:00','2021-07-21 09:19:00',95,4,'Jones and Sons',28,NULL),(121,88,'finale','2021-07-21 10:34:00','2021-07-21 11:23:00',49,25,'Mahoney and Sons',NULL,7),(122,89,'headline','2021-07-22 09:03:00','2021-07-22 09:53:00',50,2,'Owens-Serrano',NULL,11),(123,89,'special_guest','2021-07-22 10:01:00','2021-07-22 10:57:00',56,2,'Owens-Serrano',NULL,3),(124,90,'special_guest','2021-07-22 12:33:00','2021-07-22 14:06:00',93,16,'Price, Green and Lewis',NULL,7),(125,90,'special_guest','2021-07-22 14:17:00','2021-07-22 15:26:00',69,16,'Price, Green and Lewis',NULL,6),(126,91,'special_guest','2021-07-22 16:54:00','2021-07-22 18:00:00',66,17,'Garcia, Conway and Jordan',NULL,1),(127,91,'headline','2021-07-22 18:13:00','2021-07-22 19:25:00',72,17,'Garcia, Conway and Jordan',43,NULL),(128,93,'finale','2021-07-22 00:28:00','2021-07-22 01:46:00',78,20,'Kim-Thompson',NULL,5),(129,93,'warm up','2021-07-22 01:55:00','2021-07-22 03:47:00',112,20,'Kim-Thompson',NULL,10),(130,94,'headline','2021-07-22 04:26:00','2021-07-22 06:23:00',117,11,'Lewis, Elliott and Campbell',NULL,12),(131,95,'headline','2021-07-23 09:06:00','2021-07-23 10:07:00',61,24,'Webb-Clark',45,NULL),(132,96,'special_guest','2021-07-23 13:50:00','2021-07-23 14:51:00',61,6,'Garcia-Yang',NULL,2),(133,97,'finale','2022-08-20 09:00:00','2022-08-20 10:36:00',96,18,'Jordan Ltd',NULL,7),(134,97,'finale','2022-08-20 10:51:00','2022-08-20 11:48:00',57,18,'Jordan Ltd',NULL,4),(135,98,'headline','2022-08-20 13:23:00','2022-08-20 15:04:00',101,10,'Frey Inc',10,NULL),(136,98,'warm up','2022-08-20 15:19:00','2022-08-20 16:48:00',89,10,'Frey Inc',NULL,14),(137,99,'finale','2022-08-21 08:44:00','2022-08-21 10:30:00',106,16,'Price, Green and Lewis',NULL,7),(138,99,'warm up','2022-08-21 10:36:00','2022-08-21 11:11:00',35,16,'Price, Green and Lewis',NULL,15),(139,100,'special_guest','2022-08-21 13:49:00','2022-08-21 15:40:00',111,3,'Butler and Sons',NULL,2),(140,101,'headline','2022-08-21 17:47:00','2022-08-21 19:37:00',110,19,'Burns-Zimmerman',NULL,1),(141,103,'headline','2022-08-21 02:15:00','2022-08-21 03:04:00',49,12,'Cardenas, Wright and Cuevas',9,NULL),(142,103,'special_guest','2022-08-21 03:18:00','2022-08-21 04:42:00',84,12,'Cardenas, Wright and Cuevas',NULL,4),(143,104,'headline','2022-08-21 07:00:00','2022-08-21 08:37:00',97,18,'Jordan Ltd',NULL,3),(144,104,'warm up','2022-08-21 08:45:00','2022-08-21 09:31:00',46,18,'Jordan Ltd',NULL,10),(145,105,'headline','2022-08-21 10:53:00','2022-08-21 11:50:00',57,30,'Alexander, Davis and Torres',NULL,14),(146,106,'finale','2022-08-22 08:42:00','2022-08-22 10:29:00',107,2,'Owens-Serrano',NULL,9),(147,107,'warm up','2022-08-22 12:55:00','2022-08-22 14:55:00',120,2,'Owens-Serrano',NULL,3),(148,108,'finale','2022-08-22 17:44:00','2022-08-22 19:41:00',117,24,'Webb-Clark',NULL,9),(149,110,'warm up','2022-08-23 08:53:00','2022-08-23 09:47:00',54,3,'Butler and Sons',NULL,5),(150,110,'special_guest','2022-08-23 10:01:00','2022-08-23 11:32:00',91,3,'Butler and Sons',19,NULL),(151,111,'finale','2022-08-23 12:29:00','2022-08-23 13:05:00',36,18,'Jordan Ltd',NULL,5),(152,111,'finale','2022-08-23 13:11:00','2022-08-23 14:17:00',66,18,'Jordan Ltd',NULL,1),(153,111,'special_guest','2022-08-23 14:28:00','2022-08-23 15:08:00',40,18,'Jordan Ltd',NULL,8),(154,112,'special_guest','2022-08-23 16:34:00','2022-08-23 17:56:00',82,17,'Garcia, Conway and Jordan',NULL,6),(155,112,'headline','2022-08-23 18:03:00','2022-08-23 18:34:00',31,17,'Garcia, Conway and Jordan',NULL,3),(156,114,'headline','2022-08-24 09:08:00','2022-08-24 09:57:00',49,9,'Tyler-Morales',16,NULL),(157,115,'special_guest','2022-08-24 13:26:00','2022-08-24 14:14:00',48,25,'Mahoney and Sons',17,NULL),(158,116,'warm up','2022-08-24 17:08:00','2022-08-24 17:52:00',44,12,'Cardenas, Wright and Cuevas',10,NULL),(159,118,'special_guest','2023-08-28 08:54:00','2023-08-28 10:17:00',83,21,'Brown LLC',NULL,12),(160,119,'special_guest','2023-08-28 13:29:00','2023-08-28 14:12:00',43,29,'Obrien and Sons',19,NULL),(161,119,'headline','2023-08-28 14:25:00','2023-08-28 16:06:00',101,29,'Obrien and Sons',43,NULL),(162,120,'headline','2023-08-28 18:08:00','2023-08-28 19:58:00',110,23,'Smith Group',NULL,8),(163,120,'finale','2023-08-28 20:10:00','2023-08-28 21:37:00',87,23,'Smith Group',2,NULL),(164,121,'special_guest','2023-08-29 08:26:00','2023-08-29 09:12:00',46,7,'Russell, Lewis and Green',24,NULL),(165,121,'special_guest','2023-08-29 09:27:00','2023-08-29 11:17:00',110,7,'Russell, Lewis and Green',NULL,2),(166,122,'special_guest','2023-08-29 12:40:00','2023-08-29 13:46:00',66,20,'Kim-Thompson',22,NULL),(167,122,'special_guest','2023-08-29 13:54:00','2023-08-29 15:28:00',94,20,'Kim-Thompson',NULL,8),(168,123,'headline','2023-08-29 17:22:00','2023-08-29 17:54:00',32,8,'Gonzalez PLC',NULL,3),(169,123,'warm up','2023-08-29 18:04:00','2023-08-29 18:48:00',44,8,'Gonzalez PLC',40,NULL),(170,125,'warm up','2023-08-29 02:07:00','2023-08-29 02:57:00',50,30,'Alexander, Davis and Torres',30,NULL),(171,125,'headline','2023-08-29 03:04:00','2023-08-29 04:06:00',62,30,'Alexander, Davis and Torres',NULL,15),(172,126,'finale','2023-08-29 07:18:00','2023-08-29 08:59:00',101,12,'Cardenas, Wright and Cuevas',41,NULL),(173,127,'warm up','2023-08-30 09:32:00','2023-08-30 11:02:00',90,13,'Stevenson and Sons',NULL,13),(174,128,'headline','2023-08-30 13:43:00','2023-08-30 15:37:00',114,3,'Butler and Sons',29,NULL),(175,128,'warm up','2023-08-30 15:49:00','2023-08-30 16:49:00',60,3,'Butler and Sons',6,NULL),(176,129,'finale','2023-08-30 18:35:00','2023-08-30 19:23:00',48,25,'Mahoney and Sons',NULL,15),(177,129,'warm up','2023-08-30 19:36:00','2023-08-30 20:41:00',65,25,'Mahoney and Sons',NULL,12),(178,131,'warm up','2023-08-30 03:37:00','2023-08-30 04:58:00',81,8,'Gonzalez PLC',38,NULL),(179,131,'finale','2023-08-30 05:06:00','2023-08-30 05:47:00',41,8,'Gonzalez PLC',NULL,11),(180,132,'finale','2023-08-30 07:26:00','2023-08-30 08:49:00',83,11,'Lewis, Elliott and Campbell',NULL,15),(181,132,'special_guest','2023-08-30 09:01:00','2023-08-30 10:21:00',80,11,'Lewis, Elliott and Campbell',NULL,3),(182,133,'finale','2023-08-31 08:20:00','2023-08-31 10:17:00',117,6,'Garcia-Yang',NULL,12),(183,134,'special_guest','2023-08-31 12:37:00','2023-08-31 14:31:00',114,28,'Murphy-Aguilar',NULL,13),(184,134,'special_guest','2023-08-31 14:44:00','2023-08-31 15:27:00',43,28,'Murphy-Aguilar',19,NULL),(185,135,'special_guest','2023-09-01 09:40:00','2023-09-01 11:27:00',107,7,'Russell, Lewis and Green',45,NULL),(186,136,'headline','2023-09-01 13:59:00','2023-09-01 15:28:00',89,8,'Gonzalez PLC',NULL,10),(187,136,'warm up','2023-09-01 15:37:00','2023-09-01 16:56:00',79,8,'Gonzalez PLC',45,NULL),(188,137,'headline','2023-09-01 18:09:00','2023-09-01 19:09:00',60,21,'Brown LLC',23,NULL),(189,137,'finale','2023-09-01 19:15:00','2023-09-01 21:03:00',108,21,'Brown LLC',29,NULL),(190,139,'special_guest','2024-09-20 09:33:00','2024-09-20 10:14:00',41,9,'Tyler-Morales',NULL,9),(191,139,'special_guest','2024-09-20 10:25:00','2024-09-20 12:05:00',100,9,'Tyler-Morales',21,NULL),(192,140,'headline','2024-09-20 14:02:00','2024-09-20 15:59:00',117,21,'Brown LLC',NULL,11),(193,140,'warm up','2024-09-20 16:13:00','2024-09-20 16:43:00',30,21,'Brown LLC',44,NULL),(194,141,'warm up','2024-09-20 17:33:00','2024-09-20 18:55:00',82,23,'Smith Group',14,NULL),(195,141,'finale','2024-09-20 19:03:00','2024-09-20 20:49:00',106,23,'Smith Group',NULL,14),(196,143,'headline','2024-09-20 03:15:00','2024-09-20 04:23:00',68,21,'Brown LLC',NULL,14),(197,144,'finale','2024-09-20 07:37:00','2024-09-20 08:14:00',37,29,'Obrien and Sons',NULL,14),(198,144,'headline','2024-09-20 08:19:00','2024-09-20 09:42:00',83,29,'Obrien and Sons',NULL,11),(199,145,'finale','2024-09-20 11:21:00','2024-09-20 12:27:00',66,7,'Russell, Lewis and Green',NULL,6),(200,145,'headline','2024-09-20 12:35:00','2024-09-20 13:11:00',36,7,'Russell, Lewis and Green',27,NULL),(201,146,'headline','2024-09-21 09:14:00','2024-09-21 10:23:00',69,1,'Schmidt Inc',40,NULL),(202,146,'headline','2024-09-21 10:33:00','2024-09-21 12:25:00',112,1,'Schmidt Inc',NULL,7),(203,147,'warm up','2024-09-21 13:14:00','2024-09-21 14:36:00',82,17,'Garcia, Conway and Jordan',45,NULL),(204,147,'headline','2024-09-21 14:47:00','2024-09-21 16:34:00',107,17,'Garcia, Conway and Jordan',NULL,7),(205,148,'special_guest','2024-09-21 18:00:00','2024-09-21 19:13:00',73,22,'Wiggins, Campbell and Acosta',5,NULL),(206,148,'finale','2024-09-21 19:28:00','2024-09-21 20:19:00',51,22,'Wiggins, Campbell and Acosta',12,NULL),(207,150,'warm up','2025-07-12 09:03:00','2025-07-12 10:25:00',82,27,'Long, Small and Peterson',NULL,1),(208,150,'warm up','2025-07-12 10:34:00','2025-07-12 11:40:00',66,27,'Long, Small and Peterson',NULL,14),(209,151,'headline','2025-07-12 14:22:00','2025-07-12 15:12:00',50,1,'Schmidt Inc',NULL,14),(210,152,'finale','2025-07-12 19:01:00','2025-07-12 20:47:00',106,19,'Burns-Zimmerman',27,NULL),(211,154,'headline','2025-07-12 03:46:00','2025-07-12 04:28:00',42,24,'Webb-Clark',49,NULL),(212,154,'warm up','2025-07-12 04:38:00','2025-07-12 06:17:00',99,24,'Webb-Clark',NULL,4),(213,155,'finale','2025-07-12 07:45:00','2025-07-12 08:42:00',57,10,'Frey Inc',NULL,5),(214,155,'special_guest','2025-07-12 08:56:00','2025-07-12 09:27:00',31,10,'Frey Inc',NULL,12),(215,156,'headline','2025-07-13 09:39:00','2025-07-13 10:48:00',69,9,'Tyler-Morales',NULL,4),(216,156,'special_guest','2025-07-13 10:58:00','2025-07-13 12:08:00',70,9,'Tyler-Morales',NULL,5),(217,157,'finale','2025-07-13 14:17:00','2025-07-13 15:25:00',68,23,'Smith Group',19,NULL),(218,157,'finale','2025-07-13 15:38:00','2025-07-13 17:33:00',115,23,'Smith Group',NULL,2),(219,158,'headline','2025-07-13 19:06:00','2025-07-13 19:51:00',45,29,'Obrien and Sons',NULL,9),(220,160,'special_guest','2025-07-13 03:55:00','2025-07-13 05:42:00',107,28,'Murphy-Aguilar',NULL,12),(221,160,'finale','2025-07-13 05:47:00','2025-07-13 07:16:00',89,28,'Murphy-Aguilar',41,NULL),(222,161,'special_guest','2025-07-13 08:06:00','2025-07-13 09:58:00',112,25,'Mahoney and Sons',NULL,9),(223,161,'finale','2025-07-13 10:04:00','2025-07-13 11:17:00',73,25,'Mahoney and Sons',1,NULL),(224,162,'warm up','2025-07-14 08:43:00','2025-07-14 09:15:00',32,17,'Garcia, Conway and Jordan',NULL,6),(225,162,'finale','2025-07-14 09:23:00','2025-07-14 11:05:00',102,17,'Garcia, Conway and Jordan',NULL,13),(226,163,'special_guest','2025-07-14 12:45:00','2025-07-14 13:51:00',66,19,'Burns-Zimmerman',NULL,13),(227,164,'finale','2025-07-14 16:49:00','2025-07-14 17:35:00',46,22,'Wiggins, Campbell and Acosta',NULL,7),(228,166,'warm up','2025-07-14 01:34:00','2025-07-14 03:29:00',115,27,'Long, Small and Peterson',NULL,6),(229,166,'warm up','2025-07-14 03:41:00','2025-07-14 04:33:00',52,27,'Long, Small and Peterson',35,NULL),(230,167,'headline','2025-07-14 05:03:00','2025-07-14 07:02:00',119,30,'Alexander, Davis and Torres',6,NULL),(231,168,'finale','2025-07-14 09:29:00','2025-07-14 10:35:00',66,13,'Stevenson and Sons',22,NULL),(232,168,'finale','2025-07-14 10:49:00','2025-07-14 11:26:00',37,13,'Stevenson and Sons',17,NULL),(233,169,'finale','2026-09-20 09:13:00','2026-09-20 10:18:00',65,19,'Burns-Zimmerman',3,NULL),(234,170,'special_guest','2026-09-20 13:38:00','2026-09-20 15:17:00',99,27,'Long, Small and Peterson',NULL,13),(235,170,'finale','2026-09-20 15:25:00','2026-09-20 16:23:00',58,27,'Long, Small and Peterson',10,NULL),(236,171,'warm up','2026-09-20 18:38:00','2026-09-20 20:09:00',91,10,'Frey Inc',NULL,4),(237,171,'finale','2026-09-20 20:15:00','2026-09-20 20:53:00',38,10,'Frey Inc',NULL,2),(238,172,'special_guest','2026-09-21 08:35:00','2026-09-21 09:19:00',44,24,'Webb-Clark',13,NULL),(239,173,'warm up','2026-09-21 13:04:00','2026-09-21 14:48:00',104,26,'Smith-Collins',3,NULL),(240,173,'special_guest','2026-09-21 14:53:00','2026-09-21 16:27:00',94,26,'Smith-Collins',NULL,7),(241,174,'headline','2026-09-21 17:42:00','2026-09-21 18:23:00',41,19,'Burns-Zimmerman',NULL,6),(242,174,'headline','2026-09-21 18:33:00','2026-09-21 19:48:00',75,19,'Burns-Zimmerman',NULL,7),(243,176,'special_guest','2026-09-21 01:22:00','2026-09-21 02:26:00',64,19,'Burns-Zimmerman',NULL,6),(244,176,'warm up','2026-09-21 02:31:00','2026-09-21 03:44:00',73,19,'Burns-Zimmerman',NULL,12),(245,177,'warm up','2026-09-21 05:11:00','2026-09-21 06:25:00',74,16,'Price, Green and Lewis',NULL,10),(246,177,'special_guest','2026-09-21 06:34:00','2026-09-21 07:13:00',39,16,'Price, Green and Lewis',NULL,9),(247,178,'special_guest','2026-09-22 08:40:00','2026-09-22 10:23:00',103,15,'Mckay-Romero',27,NULL),(248,178,'warm up','2026-09-22 10:28:00','2026-09-22 11:32:00',64,15,'Mckay-Romero',NULL,10),(249,179,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',51,NULL),(250,179,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',51,NULL),(251,179,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',51,NULL),(252,180,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',52,NULL),(253,180,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',52,NULL),(254,180,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',52,NULL),(255,181,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',52,NULL),(256,181,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',52,NULL),(257,181,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',52,NULL),(258,182,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(259,182,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(260,182,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(261,183,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(262,183,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(263,183,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(264,184,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(265,184,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(266,184,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(267,185,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(268,185,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(269,185,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(270,186,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(271,186,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(272,186,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(273,187,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(274,187,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(275,187,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(276,188,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(277,188,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(278,188,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(279,189,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(280,189,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(281,189,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(282,190,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(283,190,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(284,190,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(285,191,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(286,191,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(287,191,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(288,192,'warm up','2025-09-01 19:00:00','2025-09-01 19:40:00',40,31,'Global Stage',54,NULL),(289,193,'warm up','2025-09-01 19:00:00','2025-09-01 19:40:00',40,31,'Global Stage',54,NULL),(290,194,'warm up','2025-09-01 19:00:00','2025-09-01 19:40:00',40,31,'Global Stage',54,NULL),(291,195,'warm up','2025-09-01 19:00:00','2025-09-01 19:40:00',40,31,'Global Stage',54,NULL),(292,196,'warm up','2025-09-01 19:00:00','2025-09-01 19:40:00',40,31,'Global Stage',54,NULL),(293,197,'warm up','2025-09-01 19:00:00','2025-09-01 19:40:00',40,31,'Global Stage',54,NULL),(294,198,'warm up','2025-09-01 19:00:00','2025-09-01 19:40:00',40,31,'Global Stage',54,NULL),(295,199,'warm up','2025-09-01 19:00:00','2025-09-01 19:40:00',40,31,'Global Stage',54,NULL);
/*!40000 ALTER TABLE `performances` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_performance_overlap
BEFORE INSERT ON performances
FOR EACH ROW
BEGIN
    DECLARE conflict_count INT;

    SELECT COUNT(*)
    INTO conflict_count
    FROM performances
    WHERE
        building_ID = NEW.building_ID
        AND event_ID = NEW.event_ID
        AND (
            (NEW.performance_start_time BETWEEN performance_start_time - INTERVAL 1 SECOND AND performance_end_time + INTERVAL 1 SECOND)
            OR
            (NEW.performance_end_time BETWEEN performance_start_time - INTERVAL 1 SECOND AND performance_end_time + INTERVAL 1 SECOND)
        );

    IF conflict_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Conflict with another performance in the same building, same day, time range +/-5 minutes';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER prevent_performance_deletion
BEFORE DELETE ON performances
FOR EACH ROW
BEGIN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Performance cannot be deleted.';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `personel`
--

DROP TABLE IF EXISTS `personel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personel` (
  `personel_ID` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `expertise_status` enum('intern','beginer','intermidiate','experienced','very_experienced') DEFAULT NULL,
  PRIMARY KEY (`personel_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personel`
--

LOCK TABLES `personel` WRITE;
/*!40000 ALTER TABLE `personel` DISABLE KEYS */;
INSERT INTO `personel` VALUES (1,'Johnny','Spencer',23,'erik87@example.net','295.642.0518','experienced'),(2,'Jason','Wilson',42,'josephwilliams@example.com','+1-856-954-3431x1281','experienced'),(3,'Heather','Hamilton',48,'kimberlybrooks@example.com','907-401-0902','intermidiate'),(4,'Cameron','Lopez',59,'qbrooks@example.net','+1-528-535-9402x787','intermidiate'),(5,'Lauren','Harrell',48,'kwallace@example.net','+1-640-370-3166','very_experienced'),(6,'Amber','Cannon',42,'jamessandra@example.com','271.780.6114x234','experienced'),(7,'Kimberly','Stewart',31,'angela58@example.com','(294)905-4636','intern'),(8,'Rebecca','Mitchell',49,'glennjohnson@example.net','001-211-278-5141x691','intern'),(9,'Sheila','Collins',36,'rachael46@example.com','728-454-0883x1049','beginer'),(10,'James','Fox',58,'uflores@example.net','001-215-866-8621x333','intern'),(11,'Alex','Smith',30,'alex@example.com','698000001','experienced'),(12,'Maria','Papadopoulou',28,'maria@example.com','698000002','very_experienced'),(13,'Nikos','Kritikos',33,'nikos@example.com','698000003','intermidiate');
/*!40000 ALTER TABLE `personel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resale_queue`
--

DROP TABLE IF EXISTS `resale_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resale_queue` (
  `resale_ID` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_ID` int(11) DEFAULT NULL,
  `seller_ID` int(11) DEFAULT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `ticket_type` enum('general_admission','VIP','backstage') DEFAULT NULL,
  `ticket_ID` int(11) DEFAULT NULL,
  `listed_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`resale_ID`),
  KEY `ticket_ID` (`ticket_ID`),
  CONSTRAINT `resale_queue_ibfk_1` FOREIGN KEY (`ticket_ID`) REFERENCES `ticket` (`ticket_ID`),
  CONSTRAINT `chk_seller_or_buyer` CHECK (`ticket_ID` is null and `event_name` is not null and `ticket_type` is not null or `ticket_ID` is not null and `event_name` is null and `ticket_type` is null and `buyer_ID` is not null or `ticket_ID` is not null and `event_name` is not null and `ticket_type` is not null and `seller_ID` is not null),
  CONSTRAINT `chk_one_side_only` CHECK (`buyer_ID` is not null and `seller_ID` is null or `buyer_ID` is null and `seller_ID` is not null)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resale_queue`
--

LOCK TABLES `resale_queue` WRITE;
/*!40000 ALTER TABLE `resale_queue` DISABLE KEYS */;
INSERT INTO `resale_queue` VALUES (1,NULL,138,'Site Concert','backstage',119,'2025-04-23 12:30:00'),(2,NULL,80,'American Concert','backstage',135,'2025-04-29 16:15:00'),(3,NULL,30,'Seek Concert','backstage',169,'2017-09-01 10:45:00'),(4,NULL,131,'Drive Concert','backstage',23,'2025-04-20 12:45:00'),(5,NULL,98,'Site Concert','backstage',103,'2025-04-28 18:15:00'),(6,97,NULL,'Administration Concert','backstage',NULL,'2018-08-19 16:30:00'),(7,46,NULL,NULL,NULL,23,'2020-08-04 19:30:00'),(8,NULL,148,'Human Concert','backstage',210,'2025-04-22 17:15:00'),(9,NULL,15,'Money Concert','backstage',41,'2018-08-24 15:15:00'),(10,95,NULL,'Continue Concert','backstage',NULL,'2025-04-24 11:00:00'),(11,NULL,93,'Field Concert','backstage',15,'2025-04-23 17:30:00'),(12,NULL,126,'Real Concert','backstage',111,'2023-08-11 18:00:00'),(13,NULL,28,'Magazine Concert','backstage',89,'2025-04-19 15:30:00'),(14,NULL,63,'Person Concert','backstage',46,'2025-04-24 15:00:00'),(15,NULL,53,'History Concert','backstage',27,'2017-09-04 16:00:00'),(16,NULL,59,'Human Concert','backstage',117,'2025-04-21 12:45:00'),(17,NULL,73,'Card Concert','backstage',147,'2023-08-16 12:15:00'),(18,126,NULL,'Continue Concert','backstage',NULL,'2025-04-19 15:45:00'),(19,NULL,111,'Field Concert','backstage',116,'2025-04-24 15:45:00'),(20,NULL,131,'Action Concert','backstage',148,'2017-08-29 12:45:00'),(21,NULL,73,'Food Concert','backstage',177,'2025-04-25 12:15:00'),(22,NULL,28,'Kid Concert','backstage',60,'2025-04-20 10:45:00'),(23,NULL,127,'Beautiful Concert','backstage',150,'2025-04-20 14:00:00'),(24,61,NULL,NULL,NULL,15,'2025-04-22 16:30:00'),(25,112,NULL,NULL,NULL,111,'2025-04-25 11:30:00'),(26,NULL,28,'Current Concert','backstage',216,'2025-04-26 09:00:00'),(27,NULL,108,'Recently Concert','backstage',205,'2020-08-04 13:45:00'),(28,NULL,121,'American Concert','backstage',100,'2025-04-24 13:30:00'),(29,NULL,69,'Thus Concert','backstage',204,'2020-08-01 15:30:00'),(30,NULL,28,'Southern Concert','backstage',196,'2023-08-13 16:30:00'),(31,123,NULL,'Smile Concert','backstage',NULL,'2025-04-21 12:45:00'),(32,139,NULL,NULL,NULL,116,'2019-07-03 15:30:00');
/*!40000 ALTER TABLE `resale_queue` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER match_resale_after_insert
BEFORE INSERT ON resale_queue
FOR EACH ROW
BEGIN
    DECLARE matched_seller INT;
    DECLARE matched_buyer INT;
    
    IF NEW.buyer_ID IS NOT NULL THEN
        
        SELECT seller_ID INTO matched_seller
        FROM resale_queue
        WHERE ticket_ID = NEW.ticket_ID
          AND seller_ID IS NOT NULL
          AND buyer_ID IS NULL
        LIMIT 1;

        IF matched_seller IS NOT NULL THEN
            
            INSERT INTO temp_resale_matches (buyer_ID, seller_ID, ticket_ID)
            VALUES (NEW.buyer_ID, matched_seller, NEW.ticket_ID);
            
            SET NEW.resale_ID = NULL;
        END IF;
    END IF;
    
    IF NEW.seller_ID IS NOT NULL THEN
        
        SELECT buyer_ID INTO matched_buyer
        FROM resale_queue
        WHERE ticket_ID = NEW.ticket_ID
          AND buyer_ID IS NOT NULL
          AND seller_ID IS NULL
        LIMIT 1;

        IF matched_buyer IS NOT NULL THEN
            
            INSERT INTO temp_resale_matches (buyer_ID, seller_ID, ticket_ID)
            VALUES (matched_buyer, NEW.seller_ID, NEW.ticket_ID);
            
            SET NEW.resale_ID = NULL;
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_ID` int(11) NOT NULL,
  `performance_ID` int(11) NOT NULL,
  `artist_performance` enum('1','2','3','4','5') DEFAULT NULL,
  `sound_and_lighting` enum('1','2','3','4','5') DEFAULT NULL,
  `stage_presence` enum('1','2','3','4','5') DEFAULT NULL,
  `event_organization` enum('1','2','3','4','5') DEFAULT NULL,
  `overall_impression` enum('1','2','3','4','5') DEFAULT NULL,
  PRIMARY KEY (`review_ID`),
  KEY `performance_ID` (`performance_ID`),
  KEY `idx_review_ticket` (`ticket_ID`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`ticket_ID`) REFERENCES `ticket` (`ticket_ID`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`performance_ID`) REFERENCES `performances` (`performance_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,123,'2','4','3','3','5'),(2,3,118,'2','4','3','1','1'),(3,5,125,'4','2','2','5','5'),(4,6,189,'1','4','1','2','5'),(5,8,159,'3','3','2','5','3'),(6,9,101,'1','4','4','4','5'),(7,11,119,'3','4','4','1','3'),(8,12,148,'2','4','3','1','3'),(9,13,69,'5','3','2','1','1'),(10,14,167,'2','5','2','2','3'),(11,16,36,'3','3','4','4','4'),(12,17,66,'3','4','5','1','2'),(13,18,171,'5','5','3','4','1'),(14,19,188,'2','3','1','1','3'),(15,20,79,'2','2','5','4','4'),(16,21,90,'5','2','5','5','5'),(17,22,48,'5','3','4','2','2'),(18,24,49,'4','1','5','5','3'),(19,26,15,'5','5','1','3','4'),(20,28,48,'5','3','1','3','5'),(21,29,204,'1','2','1','3','1'),(22,31,26,'4','3','4','5','5'),(23,32,42,'1','2','1','5','4'),(24,34,121,'1','2','2','4','3'),(25,36,157,'3','1','3','1','3'),(26,38,12,'4','1','3','4','3'),(27,39,181,'4','1','4','4','3'),(28,40,36,'2','1','2','4','1'),(29,42,79,'1','2','5','5','1'),(30,44,44,'5','4','2','4','4'),(31,45,29,'5','4','1','1','2'),(32,48,127,'3','4','1','1','4'),(33,50,149,'3','2','4','4','2'),(34,51,79,'3','1','5','2','3'),(35,52,140,'4','4','5','1','2'),(36,53,143,'4','3','4','4','5'),(37,54,188,'5','2','4','2','4'),(38,55,116,'5','1','4','3','3'),(39,56,168,'4','2','5','4','4'),(40,57,1,'3','2','4','2','3'),(41,58,48,'1','1','1','3','3'),(42,59,180,'4','1','1','4','4'),(43,61,74,'3','4','2','3','4'),(44,62,132,'2','5','1','3','4'),(45,63,30,'4','3','3','3','4'),(46,64,91,'5','5','3','3','4'),(47,65,37,'5','3','4','5','2'),(48,66,177,'4','1','2','1','2'),(49,67,75,'4','2','4','4','1'),(50,68,6,'3','1','3','5','4'),(51,69,187,'3','4','1','2','5'),(52,70,171,'5','1','5','1','5'),(53,71,196,'4','2','3','2','5'),(54,72,173,'1','3','1','5','3'),(55,73,106,'2','1','3','3','2'),(56,74,4,'3','4','1','1','3'),(57,80,67,'1','2','1','3','3'),(58,81,38,'1','1','3','1','4'),(59,82,196,'4','2','2','2','3'),(60,83,203,'1','2','5','4','4'),(61,84,166,'3','4','4','3','3'),(62,85,164,'1','5','4','2','5'),(63,86,66,'3','5','3','5','5'),(64,88,116,'2','2','3','1','4'),(65,90,127,'3','2','4','5','5'),(66,91,94,'3','5','4','5','1'),(67,92,42,'1','2','3','2','1'),(68,93,90,'3','2','4','2','3'),(69,94,157,'3','5','1','1','3'),(70,95,22,'4','5','2','2','5'),(71,96,76,'4','1','5','5','2'),(72,97,74,'3','4','1','5','5'),(73,98,153,'3','5','4','4','1'),(74,99,164,'2','4','4','2','5'),(75,101,147,'5','2','5','4','2'),(76,102,194,'4','5','5','2','2'),(77,105,75,'3','1','5','2','4'),(78,106,103,'5','3','4','1','5'),(79,108,54,'3','4','5','4','3'),(80,109,50,'4','2','2','4','3'),(81,110,52,'4','4','1','5','1'),(82,113,48,'5','3','5','3','2'),(83,114,140,'3','4','5','3','1'),(84,118,59,'5','5','1','4','5'),(85,120,63,'1','5','4','2','2'),(86,121,2,'1','1','2','3','5'),(87,125,7,'1','2','1','5','3'),(88,126,43,'4','3','5','1','5'),(89,127,108,'5','5','5','2','3'),(90,128,102,'2','2','1','5','5'),(91,130,180,'1','3','4','3','2'),(92,132,88,'2','3','3','5','5'),(93,134,15,'1','2','3','2','1'),(94,136,86,'4','4','1','1','2'),(95,137,150,'5','2','1','5','1'),(96,140,162,'3','3','1','3','4'),(97,141,155,'5','2','1','3','1'),(98,142,48,'2','1','5','4','2'),(99,143,96,'3','2','5','3','3'),(100,145,184,'4','3','4','5','4'),(101,146,4,'2','3','4','4','5'),(102,151,26,'2','3','2','1','5'),(103,152,76,'1','2','4','1','5'),(104,153,59,'3','2','1','5','3'),(105,154,84,'4','5','3','4','4'),(106,155,77,'5','3','1','4','4'),(107,156,53,'2','1','4','1','5'),(108,157,36,'5','3','1','4','4'),(109,160,58,'3','1','4','5','3'),(110,163,164,'3','4','4','5','4'),(111,164,155,'5','4','5','4','1'),(112,166,51,'5','2','3','2','5'),(113,167,106,'4','5','3','3','4'),(114,168,180,'3','2','1','5','1'),(115,170,39,'1','3','2','2','2'),(116,171,46,'5','4','2','3','1'),(117,172,23,'2','5','2','1','3'),(118,173,22,'5','3','3','4','3'),(119,174,22,'3','2','4','3','5'),(120,175,47,'5','4','4','4','5'),(121,176,197,'1','2','3','5','3'),(122,179,60,'1','2','1','4','5'),(123,181,112,'5','5','2','1','2'),(124,182,130,'4','1','4','1','3'),(125,184,80,'3','4','1','4','4'),(126,186,176,'5','2','5','1','1'),(127,187,79,'1','2','1','2','1'),(128,188,191,'3','3','2','1','1'),(129,190,164,'2','3','4','5','2'),(130,191,22,'2','4','3','1','3'),(131,192,106,'3','4','2','1','3'),(132,193,121,'3','4','3','1','4'),(133,194,106,'4','2','2','4','5'),(134,195,129,'3','2','2','2','1'),(135,200,206,'1','5','4','1','3'),(136,201,130,'3','3','1','3','2'),(137,203,20,'3','4','2','1','1'),(138,206,63,'1','3','5','3','1'),(139,208,12,'3','5','4','4','2'),(140,209,48,'5','5','5','1','5'),(141,212,191,'5','5','3','2','1'),(142,214,119,'4','2','1','1','3'),(143,215,120,'4','2','4','3','2'),(144,217,2,'5','4','2','1','1'),(145,218,4,'2','1','3','2','4'),(146,219,191,'2','3','4','2','4');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_review_validity
BEFORE INSERT ON review
FOR EACH ROW
BEGIN
    DECLARE ticket_event INT;
    DECLARE performance_event INT;
    DECLARE is_activated BOOLEAN;

    
    SELECT event_ID, activated_status INTO ticket_event, is_activated
    FROM ticket
    WHERE ticket_ID = NEW.ticket_ID;

    
    SELECT event_ID INTO performance_event
    FROM performances
    WHERE performance_ID = NEW.performance_ID;

    
    IF is_activated = FALSE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'You cannot review a performance unless your ticket is activated.';
    END IF;

    
    IF ticket_event <> performance_event THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The performance you are trying to review does not belong to the event of your ticket.';
    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_ticket_activation
BEFORE INSERT ON review
FOR EACH ROW
BEGIN
    DECLARE is_active BOOLEAN;

    SELECT activated_status INTO is_active
    FROM ticket
    WHERE ticket_ID = NEW.ticket_ID;

    IF is_active IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Ticket does not exist.';
    ELSEIF is_active = FALSE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot review with inactive ticket.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `role_of_personel_on_event`
--

DROP TABLE IF EXISTS `role_of_personel_on_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_of_personel_on_event` (
  `personel_ID` int(11) NOT NULL,
  `event_ID` int(11) NOT NULL,
  `role` enum('technical','security','support') NOT NULL,
  PRIMARY KEY (`personel_ID`,`event_ID`),
  KEY `idx_role_event_role` (`event_ID`,`role`),
  CONSTRAINT `role_of_personel_on_event_ibfk_1` FOREIGN KEY (`personel_ID`) REFERENCES `personel` (`personel_ID`),
  CONSTRAINT `role_of_personel_on_event_ibfk_2` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_of_personel_on_event`
--

LOCK TABLES `role_of_personel_on_event` WRITE;
/*!40000 ALTER TABLE `role_of_personel_on_event` DISABLE KEYS */;
INSERT INTO `role_of_personel_on_event` VALUES (10,1,''),(4,1,'security'),(5,1,'security'),(2,2,'security'),(6,2,'security'),(4,3,'security'),(1,3,'support'),(3,3,'support'),(6,3,'support'),(3,4,''),(9,4,''),(7,4,'security'),(1,4,'support'),(2,5,''),(11,5,'technical'),(3,5,'support'),(10,5,'support'),(2,6,''),(10,6,''),(1,7,'security'),(5,7,'security'),(4,7,'support'),(6,7,'support'),(6,8,''),(2,8,'security'),(8,9,''),(6,9,'security'),(7,9,'support'),(8,10,''),(4,10,'support'),(9,11,'security'),(4,11,'support'),(6,11,'support'),(3,12,'security'),(4,12,'support'),(8,13,''),(1,13,'security'),(2,13,'security'),(1,14,''),(8,14,''),(3,14,'security'),(2,15,'security'),(7,15,'support'),(4,16,''),(5,16,'security'),(6,16,'security'),(10,16,'support'),(8,17,''),(7,17,'security'),(3,18,'security'),(5,18,'security'),(8,18,'security'),(5,19,''),(10,19,''),(4,19,'support'),(4,20,''),(7,20,''),(6,20,'security'),(8,20,'security'),(8,21,'support'),(10,21,'support'),(2,22,''),(6,22,''),(10,22,''),(5,22,'security'),(2,23,''),(9,23,''),(8,23,'security'),(4,23,'support'),(9,24,''),(6,24,'security'),(3,24,'support'),(8,24,'support'),(8,25,''),(7,25,'security'),(6,25,'support'),(3,26,''),(2,26,'security'),(5,26,'support'),(1,27,'security'),(8,27,'support'),(2,28,''),(4,28,''),(6,28,'security'),(7,28,'security'),(1,29,''),(8,29,''),(12,29,'technical'),(3,29,'security'),(10,29,'security'),(3,30,''),(4,30,'security'),(6,31,'security'),(4,31,'support'),(5,31,'support'),(7,32,''),(10,32,'security'),(10,33,''),(4,33,'security'),(5,33,'security'),(6,33,'support'),(5,34,''),(4,34,'support'),(10,34,'support'),(1,35,'security'),(3,35,'security'),(9,35,'security'),(2,36,''),(5,36,'security'),(9,36,'support'),(7,37,''),(8,37,''),(2,37,'support'),(4,37,'support'),(2,38,'security'),(10,38,'security'),(2,39,''),(10,39,'security'),(4,40,''),(9,40,''),(2,40,'support'),(7,40,'support'),(5,41,''),(4,41,'support'),(1,42,'security'),(4,42,'support'),(4,43,''),(2,43,'support'),(5,43,'support'),(7,43,'support'),(10,44,''),(13,44,'technical'),(3,44,'security'),(4,44,'security'),(4,45,''),(1,45,'security'),(8,45,'security'),(4,46,''),(7,46,''),(10,46,'security'),(3,46,'support'),(9,47,'security'),(4,47,'support'),(7,47,'support'),(3,48,''),(2,48,'security'),(7,48,'security'),(8,48,'support'),(4,49,'security'),(5,49,'support'),(6,49,'support'),(7,50,''),(10,50,''),(4,50,'support'),(9,50,'support'),(3,51,'security'),(5,51,'security'),(8,51,'support'),(9,51,'support'),(2,52,'security'),(9,52,'security'),(1,52,'support'),(2,53,''),(8,53,''),(3,53,'security'),(4,53,'support'),(4,54,''),(8,54,''),(2,54,'security'),(2,55,''),(7,55,'security'),(8,55,'security'),(3,55,'support'),(8,56,'security'),(2,56,'support'),(2,57,'security'),(3,57,'security'),(4,57,'support'),(7,57,'support'),(10,58,''),(5,58,'security'),(8,58,'security'),(1,59,'security'),(7,59,'security'),(1,60,''),(8,60,'security'),(2,60,'support'),(4,61,''),(9,61,''),(2,61,'security'),(7,61,'security'),(8,62,'security'),(4,62,'support'),(2,63,''),(1,63,'support'),(4,64,''),(5,64,'security'),(7,64,'security'),(3,64,'support'),(5,65,''),(9,65,'security'),(8,66,''),(1,66,'support'),(6,66,'support'),(6,67,'support'),(8,67,'support'),(9,68,''),(3,68,'support'),(4,68,'support'),(4,69,''),(5,69,'security'),(7,69,'support'),(1,70,''),(2,70,''),(3,70,''),(4,70,''),(3,71,''),(7,71,''),(5,71,'support'),(4,72,'security'),(6,72,'security'),(9,72,'security'),(2,73,'support'),(6,73,'support'),(9,73,'support'),(6,74,''),(8,74,'security'),(9,74,'support'),(10,74,'support'),(5,75,'security'),(1,75,'support'),(2,76,''),(8,76,'support'),(8,77,''),(9,77,'security'),(1,77,'support'),(5,77,'support'),(7,78,''),(8,78,''),(2,78,'security'),(4,78,'support'),(3,79,''),(7,79,''),(9,79,''),(4,79,'security'),(2,80,''),(8,80,'security'),(1,80,'support'),(7,81,''),(2,81,'security'),(4,81,'support'),(2,82,''),(3,82,'support'),(9,82,'support'),(7,83,'security'),(9,83,'security'),(8,83,'support'),(10,84,'security'),(1,84,'support'),(4,85,''),(9,85,''),(7,85,'security'),(10,85,'support'),(4,86,''),(5,86,'security'),(7,86,'security'),(1,86,'support'),(7,87,''),(10,87,''),(4,87,'security'),(1,88,'support'),(8,88,'support'),(4,89,''),(2,89,'security'),(7,89,'support'),(2,90,''),(7,90,''),(6,90,'support'),(3,91,''),(10,91,''),(9,91,'security'),(9,92,''),(4,92,'security'),(2,92,'support'),(5,92,'support'),(5,93,''),(9,93,'security'),(2,93,'support'),(1,94,''),(8,94,''),(10,94,''),(2,94,'support'),(9,95,''),(8,95,'security'),(10,95,'security'),(6,95,'support'),(3,96,'security'),(8,96,'support'),(9,96,'support'),(10,96,'support'),(1,97,''),(2,97,'security'),(9,98,''),(5,98,'security'),(10,98,'security'),(2,98,'support'),(7,99,''),(3,99,'support'),(7,100,'security'),(1,100,'support'),(6,100,'support'),(2,101,''),(7,101,''),(10,101,'support'),(2,102,'security'),(3,102,'security'),(6,102,'support'),(6,103,''),(7,103,''),(6,104,'security'),(3,104,'support'),(10,104,'support'),(5,105,''),(9,105,'security'),(1,106,'security'),(2,106,'support'),(8,106,'support'),(1,107,''),(9,107,'support'),(5,108,''),(9,108,''),(10,108,'support'),(9,109,''),(10,109,'support'),(1,110,'support'),(3,110,'support'),(2,111,'security'),(1,111,'support'),(9,111,'support'),(4,112,'security'),(10,112,'security'),(9,112,'support'),(2,113,'security'),(5,113,'support'),(1,114,''),(2,114,'support'),(1,115,'security'),(5,115,'security'),(10,115,'security'),(2,115,'support'),(7,116,''),(4,116,'security'),(1,116,'support'),(9,117,''),(10,117,''),(8,117,'security'),(7,118,''),(3,118,'security'),(9,118,'support'),(3,119,''),(1,119,'support'),(7,120,''),(8,120,''),(10,120,'security'),(1,120,'support'),(3,121,'security'),(4,121,'security'),(9,121,'support'),(2,122,'security'),(5,122,'security'),(7,123,''),(9,123,'support'),(6,124,'security'),(10,124,'security'),(5,125,''),(1,125,'support'),(10,126,''),(3,126,'security'),(9,126,'support'),(8,127,'support'),(9,127,'support'),(4,128,'security'),(10,128,'security'),(9,128,'support'),(4,129,'security'),(3,129,'support'),(4,130,''),(1,130,'security'),(10,130,'support'),(1,131,''),(3,131,''),(10,131,''),(7,131,'security'),(10,132,''),(3,132,'security'),(6,133,''),(10,133,''),(3,133,'security'),(1,134,''),(2,134,''),(6,135,''),(3,135,'security'),(9,135,'security'),(1,136,''),(8,136,'security'),(1,137,''),(6,137,'security'),(2,137,'support'),(6,138,''),(9,138,'security'),(10,138,'support'),(1,139,''),(7,139,''),(8,139,'support'),(3,140,''),(8,140,''),(2,140,'security'),(6,140,'security'),(7,141,''),(4,141,'support'),(3,142,'security'),(7,142,'security'),(9,142,'security'),(10,142,'security'),(1,143,''),(4,143,'security'),(2,143,'support'),(7,143,'support'),(2,144,''),(10,144,'security'),(3,145,'security'),(5,145,'security'),(4,146,''),(6,146,'security'),(3,146,'support'),(5,146,'support'),(1,147,''),(6,147,''),(8,147,'security'),(7,147,'support'),(2,148,'security'),(8,148,'security'),(10,149,''),(1,149,'security'),(1,150,''),(4,150,''),(7,150,''),(5,150,'security'),(1,151,'security'),(2,151,'security'),(8,151,'security'),(1,152,''),(5,152,''),(8,152,'security'),(10,152,'support'),(3,153,''),(10,153,''),(2,153,'support'),(7,154,''),(2,154,'support'),(4,154,'support'),(6,154,'support'),(5,155,''),(7,155,''),(1,156,''),(4,156,'security'),(10,156,'security'),(2,157,'security'),(10,157,'support'),(3,158,'security'),(7,158,'security'),(3,159,''),(8,159,''),(4,159,'support'),(5,159,'support'),(4,160,''),(8,160,''),(6,161,''),(9,161,''),(3,161,'security'),(7,161,'support'),(4,162,'security'),(9,162,'security'),(2,162,'support'),(3,163,'support'),(6,163,'support'),(10,164,''),(9,164,'security'),(4,165,''),(2,165,'security'),(6,165,'support'),(7,165,'support'),(1,166,''),(4,166,''),(2,166,'security'),(1,167,''),(3,167,''),(5,167,'security'),(1,168,'security'),(4,168,'security'),(6,168,'support'),(6,169,'security'),(8,169,'security'),(4,169,'support'),(10,169,'support'),(6,170,''),(4,170,'security'),(5,170,'security'),(9,170,'support'),(1,171,''),(4,171,''),(2,171,'support'),(2,172,''),(10,172,''),(3,172,'security'),(9,173,''),(10,173,''),(4,173,'support'),(6,173,'support'),(5,174,''),(9,174,''),(3,174,'security'),(3,175,''),(6,175,'support'),(8,175,'support'),(5,176,''),(9,176,'security'),(1,176,'support'),(7,177,''),(10,177,''),(5,177,'support'),(8,177,'support'),(4,178,''),(9,178,'support');
/*!40000 ALTER TABLE `role_of_personel_on_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller` (
  `seller_ID` int(11) NOT NULL AUTO_INCREMENT,
  `visitor_ID` int(11) DEFAULT NULL,
  `pending_orders_seller` int(11) DEFAULT 0,
  PRIMARY KEY (`seller_ID`),
  KEY `visitor_ID` (`visitor_ID`),
  CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`visitor_ID`) REFERENCES `visitor` (`visitor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(9,9,0),(10,10,0),(11,11,0),(12,12,0),(13,13,0),(14,14,0),(15,15,1),(16,16,0),(17,17,0),(18,18,0),(19,19,0),(20,20,0),(21,21,0),(22,22,0),(23,23,0),(24,24,0),(25,25,0),(26,26,0),(27,27,0),(28,28,4),(29,29,0),(30,30,1),(31,31,0),(32,32,0),(33,33,0),(34,34,0),(35,35,0),(36,36,0),(37,37,0),(38,38,0),(39,39,0),(40,40,0),(41,41,0),(42,42,0),(43,43,0),(44,44,0),(45,45,0),(46,46,0),(47,47,0),(48,48,0),(49,49,0),(50,50,0),(51,51,0),(52,52,0),(53,53,1),(54,54,0),(55,55,0),(56,56,0),(57,57,0),(58,58,0),(59,59,1),(60,60,0),(61,61,0),(62,62,0),(63,63,1),(64,64,0),(65,65,0),(66,66,0),(67,67,0),(68,68,0),(69,69,1),(70,70,0),(71,71,0),(72,72,0),(73,73,2),(74,74,0),(75,75,0),(76,76,0),(77,77,0),(78,78,0),(79,79,0),(80,80,1),(81,81,0),(82,82,0),(83,83,0),(84,84,0),(85,85,0),(86,86,0),(87,87,0),(88,88,0),(89,89,0),(90,90,0),(91,91,0),(92,92,0),(93,93,1),(94,94,0),(95,95,0),(96,96,0),(97,97,0),(98,98,1),(99,99,0),(100,100,0),(101,101,0),(102,102,0),(103,103,0),(104,104,0),(105,105,0),(106,106,0),(107,107,0),(108,108,1),(109,109,0),(110,110,0),(111,111,1),(112,112,0),(113,113,0),(114,114,0),(115,115,0),(116,116,0),(117,117,0),(118,118,0),(119,119,0),(120,120,0),(121,121,1),(122,122,0),(123,123,0),(124,124,0),(125,125,0),(126,126,1),(127,127,1),(128,128,0),(129,129,0),(130,130,0),(131,131,2),(132,132,0),(133,133,0),(134,134,0),(135,135,0),(136,136,0),(137,137,0),(138,138,1),(139,139,0),(140,140,0),(141,141,0),(142,142,0),(143,143,0),(144,144,0),(145,145,0),(146,146,0),(147,147,0),(148,148,1),(149,149,0),(150,150,0);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_resale_matches`
--

DROP TABLE IF EXISTS `temp_resale_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_resale_matches` (
  `match_ID` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_ID` int(11) DEFAULT NULL,
  `seller_ID` int(11) DEFAULT NULL,
  `ticket_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`match_ID`),
  KEY `buyer_ID` (`buyer_ID`),
  KEY `seller_ID` (`seller_ID`),
  KEY `ticket_ID` (`ticket_ID`),
  CONSTRAINT `temp_resale_matches_ibfk_1` FOREIGN KEY (`buyer_ID`) REFERENCES `buyer` (`buyer_ID`),
  CONSTRAINT `temp_resale_matches_ibfk_2` FOREIGN KEY (`seller_ID`) REFERENCES `seller` (`seller_ID`),
  CONSTRAINT `temp_resale_matches_ibfk_3` FOREIGN KEY (`ticket_ID`) REFERENCES `ticket` (`ticket_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_resale_matches`
--

LOCK TABLES `temp_resale_matches` WRITE;
/*!40000 ALTER TABLE `temp_resale_matches` DISABLE KEYS */;
INSERT INTO `temp_resale_matches` VALUES (1,46,131,23),(2,61,93,15),(3,112,126,111),(4,139,111,116);
/*!40000 ALTER TABLE `temp_resale_matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `ticket_ID` int(11) NOT NULL AUTO_INCREMENT,
  `event_ID` int(11) DEFAULT NULL,
  `visitor_ID` int(11) NOT NULL,
  `ticket_type` enum('general_admission','VIP','backstage') NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_price` decimal(10,2) DEFAULT NULL,
  `payment_method` enum('debit_card','credit_card','I-BAN') DEFAULT NULL,
  `activated_status` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`ticket_ID`),
  KEY `idx_ticket_visitor_event` (`visitor_ID`,`event_ID`),
  KEY `idx_ticket_event` (`event_ID`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`visitor_ID`) REFERENCES `visitor` (`visitor_ID`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,89,3,'backstage','2021-07-10',25.89,'credit_card',1),(2,175,18,'general_admission','2025-04-27',22.42,'debit_card',0),(3,86,98,'general_admission','2021-07-13',55.39,'I-BAN',1),(4,155,97,'general_admission','2025-05-01',53.98,'debit_card',0),(5,90,35,'general_admission','2021-07-11',81.00,'I-BAN',1),(6,137,20,'general_admission','2023-08-18',36.00,'I-BAN',1),(7,17,70,'backstage','2017-09-11',68.20,'credit_card',1),(8,118,45,'general_admission','2023-08-19',26.14,'debit_card',1),(9,70,69,'general_admission','2020-08-06',47.28,'I-BAN',1),(10,130,113,'backstage','2023-08-20',77.59,'credit_card',1),(11,87,108,'general_admission','2021-07-14',93.35,'debit_card',1),(12,108,87,'general_admission','2022-08-14',36.33,'I-BAN',1),(13,47,91,'backstage','2019-07-10',39.60,'debit_card',1),(14,122,40,'backstage','2023-08-19',56.16,'I-BAN',1),(15,174,93,'backstage','2025-04-30',65.12,'I-BAN',0),(16,29,15,'general_admission','2018-08-27',60.42,'credit_card',1),(17,46,26,'general_admission','2019-07-14',82.56,'credit_card',1),(18,125,119,'general_admission','2023-08-20',49.30,'debit_card',1),(19,137,16,'general_admission','2023-08-22',26.90,'debit_card',1),(20,54,80,'backstage','2020-08-03',98.21,'I-BAN',1),(21,61,123,'general_admission','2020-08-06',73.59,'debit_card',1),(22,37,145,'backstage','2018-08-25',96.11,'I-BAN',1),(23,151,131,'backstage','2025-04-27',59.65,'credit_card',0),(24,38,119,'backstage','2018-08-28',85.87,'I-BAN',1),(25,149,108,'backstage','2024-09-10',37.87,'I-BAN',1),(26,12,131,'general_admission','2017-09-07',41.10,'I-BAN',1),(27,20,53,'backstage','2017-09-08',72.00,'debit_card',0),(28,37,125,'backstage','2018-08-29',76.34,'I-BAN',1),(29,147,5,'general_admission','2024-09-12',83.77,'I-BAN',1),(30,31,51,'general_admission','2018-08-25',34.65,'I-BAN',1),(31,22,81,'backstage','2017-09-10',53.37,'credit_card',1),(32,33,144,'general_admission','2018-08-29',60.11,'credit_card',1),(33,170,55,'general_admission','2025-04-29',98.90,'debit_card',0),(34,88,38,'backstage','2021-07-12',44.81,'debit_card',1),(35,164,53,'general_admission','2025-04-30',97.97,'debit_card',0),(36,115,15,'general_admission','2022-08-12',66.06,'debit_card',1),(37,56,57,'general_admission','2020-08-04',27.24,'I-BAN',1),(38,10,13,'general_admission','2017-09-09',67.14,'credit_card',1),(39,132,103,'general_admission','2023-08-18',73.92,'I-BAN',1),(40,29,147,'general_admission','2018-08-29',46.41,'I-BAN',1),(41,31,15,'backstage','2018-08-27',83.66,'I-BAN',0),(42,54,84,'general_admission','2020-08-07',74.10,'credit_card',1),(43,17,93,'general_admission','2017-09-09',43.98,'credit_card',1),(44,35,56,'backstage','2018-08-25',28.25,'debit_card',1),(45,23,115,'backstage','2017-09-08',99.59,'debit_card',1),(46,176,63,'backstage','2025-04-30',56.56,'debit_card',0),(47,72,46,'backstage','2020-08-06',84.71,'credit_card',0),(48,91,121,'general_admission','2021-07-10',81.33,'I-BAN',1),(49,172,131,'general_admission','2025-04-28',94.75,'I-BAN',0),(50,110,80,'general_admission','2022-08-14',75.46,'credit_card',1),(51,54,72,'general_admission','2020-08-07',50.59,'debit_card',1),(52,101,71,'backstage','2022-08-13',90.76,'I-BAN',1),(53,104,89,'general_admission','2022-08-14',96.13,'credit_card',1),(54,137,143,'backstage','2023-08-18',64.48,'I-BAN',1),(55,83,141,'backstage','2021-07-12',28.36,'debit_card',1),(56,123,33,'backstage','2023-08-21',47.31,'credit_card',1),(57,1,130,'general_admission','2017-09-09',81.78,'debit_card',1),(58,37,17,'backstage','2018-08-26',45.66,'credit_card',1),(59,132,111,'backstage','2023-08-22',91.63,'I-BAN',1),(60,159,28,'backstage','2025-04-28',43.93,'credit_card',0),(61,50,46,'backstage','2019-07-10',22.70,'debit_card',1),(62,96,10,'backstage','2021-07-10',43.11,'credit_card',1),(63,24,4,'general_admission','2017-09-09',65.21,'I-BAN',1),(64,62,117,'backstage','2020-08-06',86.98,'debit_card',1),(65,30,43,'backstage','2018-08-28',70.48,'credit_card',1),(66,129,87,'general_admission','2023-08-22',44.80,'credit_card',1),(67,52,52,'general_admission','2019-07-12',79.40,'I-BAN',1),(68,7,82,'backstage','2017-09-08',42.50,'I-BAN',1),(69,136,52,'backstage','2023-08-22',64.85,'I-BAN',1),(70,125,73,'general_admission','2023-08-19',68.64,'debit_card',1),(71,143,3,'backstage','2024-09-11',41.69,'I-BAN',1),(72,127,25,'general_admission','2023-08-21',67.19,'debit_card',1),(73,74,80,'general_admission','2020-08-05',25.09,'I-BAN',1),(74,5,73,'backstage','2017-09-10',40.52,'debit_card',1),(75,4,8,'backstage','2017-09-09',54.01,'I-BAN',1),(76,173,15,'general_admission','2025-05-01',26.62,'I-BAN',0),(77,167,126,'backstage','2025-04-29',60.37,'I-BAN',0),(78,49,35,'general_admission','2019-07-13',92.33,'debit_card',0),(79,40,97,'backstage','2018-08-27',70.66,'debit_card',0),(80,46,73,'general_admission','2019-07-14',35.41,'debit_card',1),(81,30,47,'backstage','2018-08-29',92.89,'credit_card',1),(82,143,91,'backstage','2024-09-13',67.41,'credit_card',1),(83,147,34,'backstage','2024-09-13',78.89,'I-BAN',1),(84,122,36,'backstage','2023-08-19',45.17,'I-BAN',1),(85,121,48,'general_admission','2023-08-21',53.50,'credit_card',1),(86,46,147,'backstage','2019-07-13',92.30,'credit_card',1),(87,167,95,'backstage','2025-04-29',66.69,'credit_card',0),(88,83,134,'backstage','2021-07-12',62.45,'I-BAN',1),(89,178,28,'backstage','2025-04-27',97.05,'credit_card',0),(90,91,53,'general_admission','2021-07-11',76.23,'I-BAN',1),(91,65,33,'backstage','2020-08-05',83.53,'debit_card',1),(92,33,83,'general_admission','2018-08-29',56.51,'I-BAN',1),(93,61,83,'general_admission','2020-08-03',77.53,'I-BAN',1),(94,115,60,'general_admission','2022-08-10',85.76,'debit_card',1),(95,18,107,'general_admission','2017-09-07',89.84,'debit_card',1),(96,52,72,'backstage','2019-07-12',81.45,'I-BAN',1),(97,50,122,'general_admission','2019-07-11',99.04,'credit_card',1),(98,111,100,'backstage','2022-08-11',46.66,'credit_card',1),(99,121,110,'general_admission','2023-08-21',56.12,'I-BAN',1),(100,153,121,'backstage','2025-05-01',50.37,'debit_card',0),(101,107,43,'general_admission','2022-08-14',86.99,'I-BAN',1),(102,141,136,'general_admission','2024-09-12',71.85,'I-BAN',1),(103,170,98,'backstage','2025-05-01',79.14,'debit_card',0),(104,92,35,'general_admission','2021-07-11',41.97,'debit_card',1),(105,52,77,'general_admission','2019-07-11',71.22,'credit_card',1),(106,72,59,'general_admission','2020-08-05',26.35,'credit_card',1),(107,74,100,'general_admission','2020-08-05',58.50,'debit_card',0),(108,40,93,'general_admission','2018-08-28',93.75,'debit_card',1),(109,38,96,'general_admission','2018-08-26',62.88,'credit_card',1),(110,39,149,'general_admission','2018-08-27',67.25,'debit_card',1),(111,138,126,'backstage','2023-08-21',53.91,'credit_card',0),(112,26,103,'general_admission','2017-09-09',92.40,'credit_card',0),(113,37,85,'general_admission','2018-08-29',81.45,'debit_card',1),(114,101,114,'backstage','2022-08-12',75.23,'credit_card',1),(115,4,71,'backstage','2017-09-08',99.88,'credit_card',1),(116,174,111,'backstage','2025-04-27',59.67,'credit_card',0),(117,156,59,'backstage','2025-04-30',54.74,'debit_card',0),(118,43,86,'general_admission','2018-08-27',78.55,'credit_card',1),(119,170,138,'backstage','2025-04-27',75.74,'debit_card',0),(120,45,41,'backstage','2019-07-14',29.33,'debit_card',1),(121,2,59,'backstage','2017-09-08',22.97,'I-BAN',1),(122,176,92,'general_admission','2025-04-27',45.16,'debit_card',0),(123,27,72,'backstage','2017-09-08',71.60,'I-BAN',1),(124,142,42,'general_admission','2024-09-10',23.75,'credit_card',0),(125,7,98,'general_admission','2017-09-07',90.48,'debit_card',1),(126,34,76,'backstage','2018-08-28',55.38,'I-BAN',1),(127,76,90,'general_admission','2020-08-06',51.20,'credit_card',1),(128,71,149,'backstage','2020-08-06',23.21,'credit_card',1),(129,105,65,'general_admission','2022-08-10',30.33,'I-BAN',0),(130,132,86,'backstage','2023-08-18',21.00,'credit_card',1),(131,165,61,'backstage','2025-05-01',33.11,'credit_card',0),(132,60,31,'general_admission','2020-08-07',61.72,'credit_card',1),(133,132,126,'general_admission','2023-08-18',24.79,'credit_card',0),(134,12,141,'backstage','2017-09-08',96.13,'I-BAN',1),(135,153,80,'backstage','2025-05-01',41.58,'credit_card',0),(136,59,41,'backstage','2020-08-06',94.05,'debit_card',1),(137,110,103,'backstage','2022-08-11',60.75,'debit_card',1),(138,167,103,'general_admission','2025-04-28',47.49,'I-BAN',0),(139,164,123,'backstage','2025-04-30',74.94,'credit_card',0),(140,120,62,'backstage','2023-08-22',85.29,'debit_card',1),(141,112,80,'general_admission','2022-08-11',29.44,'debit_card',1),(142,37,22,'general_admission','2018-08-25',82.73,'debit_card',1),(143,66,103,'backstage','2020-08-04',91.62,'debit_card',1),(144,4,19,'general_admission','2017-09-08',46.46,'credit_card',1),(145,134,56,'backstage','2023-08-22',46.92,'credit_card',1),(146,5,40,'backstage','2017-09-11',30.43,'credit_card',1),(147,130,73,'backstage','2023-08-21',58.05,'I-BAN',0),(148,9,131,'backstage','2017-09-08',74.25,'I-BAN',0),(149,178,147,'general_admission','2025-05-01',53.87,'credit_card',0),(150,173,127,'backstage','2025-04-27',95.61,'I-BAN',0),(151,22,134,'general_admission','2017-09-07',44.15,'I-BAN',1),(152,52,110,'general_admission','2019-07-12',92.04,'debit_card',1),(153,43,103,'general_admission','2018-08-28',25.87,'credit_card',1),(154,58,103,'general_admission','2020-08-05',42.32,'debit_card',1),(155,53,146,'general_admission','2020-08-05',95.09,'I-BAN',1),(156,40,101,'general_admission','2018-08-25',73.65,'credit_card',1),(157,29,79,'general_admission','2018-08-28',21.32,'I-BAN',1),(158,150,112,'backstage','2025-04-30',97.76,'credit_card',0),(159,22,114,'general_admission','2017-09-11',28.03,'credit_card',0),(160,42,71,'general_admission','2018-08-29',43.72,'I-BAN',1),(161,142,84,'general_admission','2024-09-13',73.15,'credit_card',1),(162,27,95,'general_admission','2017-09-08',87.10,'debit_card',1),(163,121,19,'backstage','2023-08-20',32.27,'debit_card',1),(164,112,130,'backstage','2022-08-13',47.14,'debit_card',1),(165,51,114,'backstage','2019-07-14',92.34,'debit_card',1),(166,39,121,'general_admission','2018-08-29',89.85,'debit_card',1),(167,74,130,'general_admission','2020-08-05',86.12,'debit_card',1),(168,132,9,'general_admission','2023-08-18',98.78,'I-BAN',1),(169,5,30,'backstage','2017-09-09',31.51,'credit_card',0),(170,32,98,'backstage','2018-08-27',85.61,'I-BAN',1),(171,36,80,'general_admission','2018-08-25',57.40,'I-BAN',1),(172,19,24,'general_admission','2017-09-10',86.91,'credit_card',1),(173,18,70,'general_admission','2017-09-09',70.66,'debit_card',1),(174,18,118,'backstage','2017-09-10',76.59,'I-BAN',1),(175,36,139,'backstage','2018-08-25',59.72,'debit_card',1),(176,144,126,'backstage','2024-09-12',88.91,'credit_card',1),(177,168,73,'backstage','2025-05-01',82.83,'credit_card',0),(178,160,54,'general_admission','2025-04-29',26.80,'debit_card',0),(179,43,67,'general_admission','2018-08-27',68.68,'debit_card',1),(180,98,34,'general_admission','2022-08-13',34.77,'debit_card',0),(181,80,71,'general_admission','2020-08-04',58.95,'I-BAN',1),(182,94,69,'general_admission','2021-07-11',74.75,'I-BAN',1),(183,31,95,'backstage','2018-08-27',72.02,'I-BAN',1),(184,55,147,'general_admission','2020-08-07',40.39,'credit_card',1),(185,156,83,'general_admission','2025-04-30',58.40,'credit_card',0),(186,129,112,'backstage','2023-08-22',84.17,'credit_card',1),(187,54,68,'general_admission','2020-08-05',56.03,'debit_card',1),(188,139,112,'general_admission','2024-09-14',54.40,'credit_card',1),(189,150,19,'general_admission','2025-04-29',54.02,'I-BAN',0),(190,121,127,'general_admission','2023-08-21',69.75,'credit_card',1),(191,18,51,'backstage','2017-09-10',64.00,'credit_card',1),(192,74,50,'general_admission','2020-08-07',80.56,'I-BAN',1),(193,88,120,'backstage','2021-07-13',78.97,'I-BAN',1),(194,74,134,'backstage','2020-08-07',53.22,'credit_card',1),(195,93,140,'general_admission','2021-07-14',27.50,'I-BAN',1),(196,133,28,'backstage','2023-08-21',97.76,'credit_card',0),(197,169,110,'general_admission','2025-04-28',42.46,'debit_card',0),(198,48,139,'backstage','2019-07-11',53.63,'debit_card',0),(199,69,53,'general_admission','2020-08-06',81.96,'I-BAN',1),(200,148,73,'backstage','2024-09-11',41.14,'credit_card',1),(201,94,109,'backstage','2021-07-12',25.32,'I-BAN',1),(202,165,34,'general_admission','2025-04-29',24.59,'credit_card',0),(203,16,103,'general_admission','2017-09-11',89.86,'debit_card',1),(204,57,69,'backstage','2020-08-07',26.09,'debit_card',0),(205,53,108,'backstage','2020-08-06',62.12,'I-BAN',0),(206,45,82,'general_admission','2019-07-14',31.03,'credit_card',1),(207,161,69,'general_admission','2025-04-29',94.40,'I-BAN',0),(208,10,89,'general_admission','2017-09-09',81.72,'I-BAN',1),(209,37,24,'backstage','2018-08-28',81.16,'debit_card',1),(210,156,148,'backstage','2025-04-29',35.43,'debit_card',0),(211,170,45,'general_admission','2025-04-30',75.88,'I-BAN',0),(212,139,67,'backstage','2024-09-11',34.73,'credit_card',1),(213,27,143,'backstage','2017-09-10',56.38,'credit_card',1),(214,87,54,'backstage','2021-07-10',83.98,'credit_card',1),(215,87,98,'backstage','2021-07-10',73.13,'credit_card',1),(216,166,28,'backstage','2025-04-28',39.34,'credit_card',0),(217,2,124,'general_admission','2017-09-08',69.10,'credit_card',1),(218,5,20,'backstage','2017-09-07',68.62,'credit_card',1),(219,139,78,'backstage','2024-09-13',39.88,'I-BAN',1);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_ticket_availability
BEFORE INSERT ON ticket
FOR EACH ROW
BEGIN
    DECLARE sold_total INT DEFAULT 0;
    DECLARE sold_vip INT DEFAULT 0;
    DECLARE sold_backstage INT DEFAULT 0;
    DECLARE sold_general INT DEFAULT 0;
    DECLARE vip_limit INT DEFAULT 0;
    DECLARE backstage_limit INT DEFAULT 0;
    DECLARE general_limit INT DEFAULT 0;
    DECLARE max_capacity INT DEFAULT 0;

    
    SELECT COUNT(*) INTO sold_total
    FROM ticket
    WHERE event_ID = NEW.event_ID;

    
    SELECT 
        SUM(ticket_type = 'VIP'),
        SUM(ticket_type = 'backstage'),
        SUM(ticket_type = 'general_admission')
    INTO sold_vip, sold_backstage, sold_general
    FROM ticket
    WHERE event_ID = NEW.event_ID;

    
    SELECT VIP_total, backstage_total, general_total
    INTO vip_limit, backstage_limit, general_limit
    FROM events
    WHERE event_ID = NEW.event_ID;

    
    SELECT b.max_capacity
    INTO max_capacity
    FROM events e
    JOIN building b ON e.building_ID = b.building_ID
    WHERE e.event_ID = NEW.event_ID;

    
    IF sold_total >= max_capacity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot sell ticket: event has reached maximum building capacity.';
    END IF;

    
    IF NEW.ticket_type = 'VIP' AND sold_vip >= vip_limit THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot sell VIP ticket: limit reached.';
    ELSEIF NEW.ticket_type = 'backstage' AND sold_backstage >= backstage_limit THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot sell Backstage ticket: limit reached.';
    ELSEIF NEW.ticket_type = 'general_admission' AND sold_general >= general_limit THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot sell General Admission ticket: limit reached.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_vip_limit
BEFORE INSERT ON ticket
FOR EACH ROW
BEGIN
    DECLARE vip_count INT;
    DECLARE total_count INT;

    IF NEW.ticket_type = 'VIP' THEN
        SELECT COUNT(*) INTO vip_count
        FROM ticket
        WHERE event_ID = NEW.event_ID AND ticket_type = 'VIP';

        SELECT COUNT(*) INTO total_count
        FROM ticket
        WHERE event_ID = NEW.event_ID;

        IF (vip_count + 1) > (0.1 * (total_count + 1)) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'VIP ticket limit exceeded for this event.';
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitor` (
  `visitor_ID` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`visitor_ID`),
  UNIQUE KEY `telephone` (`telephone`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_visitor_full_name` (`last_name`,`first_name`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES (1,'Jason','Hudson','915-531-5247x269','jacksonhannah@example.com',48),(2,'David','Lee','(794)604-6844','conraddanielle@example.org',62),(3,'Daniel','Randolph','749-448-4389','chasecobb@example.net',19),(4,'Beverly','Adams','(958)762-9352x410','chapmankatherine@example.com',60),(5,'Mark','Rollins','+1-261-439-6380x61833','mreed@example.org',47),(6,'Yvette','Nicholson','(826)433-0820x5554','qrivers@example.com',55),(7,'Wesley','Estrada','726-566-0598x29633','tylerallen@example.net',28),(8,'Kenneth','Baker','+1-451-617-0055','chris31@example.net',64),(9,'Courtney','Kennedy','806-758-0194x757','justinfrye@example.net',29),(10,'Justin','Becker','001-870-273-7247','dbowman@example.org',18),(11,'Tiffany','Ortiz','547-471-8976','williamsrebecca@example.com',57),(12,'Joshua','Douglas','+1-229-530-0236x36383','nicolewilson@example.com',29),(13,'Jermaine','Jensen','+1-697-954-1956x16024','barbaramartinez@example.net',61),(14,'Marvin','Rogers','994-330-9637','nelsonstacy@example.com',28),(15,'Michelle','Bruce','(730)743-0074x5318','christophermiller@example.org',62),(16,'Miranda','Ochoa','(587)729-3870x348','kimberlypatel@example.org',50),(17,'Traci','Hamilton','+1-434-534-5564x1710','hillthomas@example.org',42),(18,'Amanda','Sanders','001-557-935-7526x646','monica44@example.com',61),(19,'Eddie','Brady','366.228.5107','judith81@example.org',56),(20,'Christina','Williams','001-658-618-2940x6079','johnsondanielle@example.net',21),(21,'Janet','Baldwin','(779)929-0273x31106','seanburns@example.net',41),(22,'Stephanie','Tucker','+1-637-483-6830x679','gregoryvargas@example.net',30),(23,'Evelyn','Bartlett','+1-351-410-8611x72571','newmanronald@example.com',62),(24,'Pamela','Mullins','001-894-264-7470x2276','reedbrian@example.net',51),(25,'William','Phillips','(398)251-6384','cheyenne33@example.net',31),(26,'Gregory','Sullivan','8214217602','ashley46@example.org',52),(27,'Cynthia','Miller','905.420.9688','charlottejordan@example.net',58),(28,'Michael','Schmidt','(975)701-6760x46878','qthompson@example.org',53),(29,'Cynthia','Gillespie','218-799-2730x972','vharrison@example.com',22),(30,'Benjamin','Mills','+1-950-606-5325x69771','fstevens@example.net',18),(31,'Carrie','Hall','503.481.3200','schmidtjonathan@example.org',51),(32,'James','Krause','818.871.6807x34628','jennifer36@example.com',61),(33,'Linda','Watson','(661)846-0116x4517','thomassamuel@example.net',25),(34,'Diane','Vasquez','541-636-6554x528','gregoryjames@example.net',24),(35,'Amy','Gray','962.242.0121x93274','walkerscott@example.com',54),(36,'Lori','Davidson','419.873.3324','mark14@example.com',33),(37,'Anthony','Hanson','001-509-576-7159x550','hilljoshua@example.org',57),(38,'Kathy','Myers','664-588-9173','rebekahlee@example.com',35),(39,'Mario','Sullivan','+1-692-897-2956x28033','dustinthompson@example.org',58),(40,'Tracy','Robinson','453-335-0634x254','jenna55@example.net',24),(41,'Dennis','Walker','+1-330-294-0526x74158','christian01@example.org',39),(42,'Mike','Baker','+1-502-535-2196x861','sanderstimothy@example.com',53),(43,'Joseph','Dixon','001-382-568-2455x1618','kathleen89@example.net',36),(44,'Bruce','Farmer','715-709-6395','esmith@example.com',23),(45,'Mary','Hill','996.829.8239x91519','kimberlysmith@example.com',54),(46,'Amanda','Hicks','417.361.3874x977','hmcgee@example.net',59),(47,'James','Buchanan','001-402-323-8078x48499','chase00@example.org',47),(48,'Michael','Holden','001-752-992-6406x656','stephen76@example.org',26),(49,'Justin','Ruiz','591.800.8720x3686','qwilliams@example.net',58),(50,'Carlos','Bradford','703-860-1537x0099','brianna21@example.com',50),(51,'Shane','Gordon','535-579-3857x969','sbryant@example.org',26),(52,'Gwendolyn','Smith','+1-332-923-5100x1803','foxjoshua@example.net',21),(53,'Nathan','Soto','848-402-9441x90400','nathan18@example.com',61),(54,'Taylor','Ortiz','503.877.2534x49018','jgarcia@example.com',61),(55,'Pamela','Whitaker','642.260.2815x0824','ajackson@example.net',52),(56,'Matthew','Henderson','529.757.8668x952','pblackwell@example.com',47),(57,'Samantha','Anderson','789.245.8003x705','paulmalone@example.net',28),(58,'Cynthia','Roberts','+1-532-905-9979x54677','eatonmelinda@example.com',20),(59,'Ethan','Campbell','509-878-7807x4484','joyce82@example.com',31),(60,'Todd','Powell','001-671-216-5418','sanderswilliam@example.org',37),(61,'Aaron','Pham','643.382.1285','lreyes@example.net',56),(62,'Timothy','Torres','683-574-8662','brandonmerritt@example.com',63),(63,'Michael','Garcia','001-981-367-7145x265','kgalloway@example.net',42),(64,'Daniel','Collins','290.648.5739x9210','joanna18@example.org',54),(65,'Joseph','Proctor','6597259735','herringtonya@example.net',41),(66,'James','Chambers','3738447388','qdixon@example.net',37),(67,'Daniel','Schwartz','863-330-9698x235','nmitchell@example.com',62),(68,'Dustin','Douglas','+1-816-688-7290','rparker@example.net',57),(69,'William','Campos','001-826-753-7415','beckernicole@example.net',61),(70,'Alexander','Pittman','629-799-6208','selliott@example.net',18),(71,'Aaron','Bradley','(378)755-1651x949','jonathanlarson@example.org',45),(72,'Shaun','Flynn','(889)370-7143x37377','hmendoza@example.org',34),(73,'Craig','Barnes','356.273.7796x97883','kmiller@example.net',56),(74,'Mandy','Davis','672.495.9379x937','megan60@example.org',41),(75,'Dawn','Jones','560-441-2588x378','mitchellsean@example.org',40),(76,'Eddie','Glover','264.985.0998x5561','hdowns@example.net',58),(77,'Alyssa','Thompson','(532)305-2953','kathrynlopez@example.com',18),(78,'Shane','Richard','907.918.4917','fclark@example.net',39),(79,'Edward','Williams','858-850-0225x275','natashahampton@example.org',60),(80,'Ashley','Wilson','4955529781','walter46@example.org',41),(81,'Brenda','Wells','(985)895-8911','douglastiffany@example.com',41),(82,'Jason','Franklin','763.855.7610x89815','odomevan@example.com',47),(83,'Cristina','Martinez','279-502-8914x976','davidbecker@example.org',19),(84,'Wendy','Smith','576-378-4274x72457','thomasjustin@example.org',22),(85,'Katherine','Stevenson','273.292.6024x735','aimeegray@example.com',47),(86,'Jose','Baker','+1-623-416-5444','rachelsmith@example.com',41),(87,'Amber','Castro','568-248-5618x613','wrivera@example.com',56),(88,'Jocelyn','Castillo','404.358.7911x073','kellybyrd@example.net',27),(89,'Christina','Mcintyre','001-493-960-3464x74961','hancockkayla@example.org',24),(90,'Sarah','Griffin','+1-246-701-0004','whitepatricia@example.org',25),(91,'Michael','Lynch','772-622-1561x59031','susan45@example.net',49),(92,'Kimberly','Hughes','+1-909-333-5654x41515','ruizbreanna@example.net',22),(93,'Cindy','Green','(648)326-6243x217','kharrison@example.com',51),(94,'Gary','Schmitt','+1-224-559-9091x886','meghan44@example.com',62),(95,'Vincent','Rubio','001-787-733-0940x78222','andradederrick@example.org',35),(96,'Veronica','Smith','001-320-759-1017x631','christopher05@example.com',54),(97,'Edward','Camacho','943.463.2667','bli@example.com',18),(98,'Denise','Martinez','754-364-6153x8980','umckee@example.org',61),(99,'Jessica','Thompson','001-892-862-2527x436','thomassimmons@example.net',38),(100,'Linda','Villa','843.642.1890x3069','bowmanroberto@example.org',31),(101,'Gabriela','White','3922870522','escott@example.org',33),(102,'Monica','Martin','8577734665','michelleboyle@example.org',19),(103,'Allison','Wilkerson','353-548-6677','shawsharon@example.com',34),(104,'Rachael','Green','(630)620-1297','jamesjohns@example.com',18),(105,'Taylor','White','331.437.3140','bethanderson@example.com',29),(106,'David','Calderon','673-285-1312x428','adam93@example.net',43),(107,'Courtney','Mcdaniel','001-420-677-5940x540','seanaguirre@example.com',50),(108,'Darryl','Sampson','923-755-0935','victoria95@example.org',36),(109,'Elizabeth','Dawson','233.409.9129','scottlisa@example.com',44),(110,'Robert','Miller','+1-415-536-1166x6267','sellerssharon@example.net',65),(111,'Caroline','Bailey','607-241-4253','sarah77@example.net',32),(112,'Amanda','Smith','+1-210-590-1945','halekatherine@example.org',18),(113,'Jermaine','Novak','(395)549-4880x0113','sethdennis@example.org',24),(114,'Teresa','Hill','953.238.1121','andersongrace@example.org',65),(115,'Angela','Kelley','911-736-0576x838','descobar@example.net',64),(116,'Sandra','Mathis','+1-595-894-8291x90067','thomastimothy@example.com',43),(117,'Gregory','Wright','618-654-1488','patriciasmith@example.org',23),(118,'Cynthia','Goodwin','483.365.8645','alyssa68@example.com',20),(119,'Manuel','Rodriguez','(366)952-4499x0851','bestrada@example.net',33),(120,'Joseph','Fernandez','472.700.4114','pamelawilliams@example.com',60),(121,'Krystal','Brown','+1-477-854-3321x93161','william68@example.org',46),(122,'Bonnie','Brooks','401-446-5358x0674','wcooper@example.net',49),(123,'Monica','George','(869)336-7368x3695','xeaton@example.org',25),(124,'Leonard','Wade','+1-921-751-8891x1811','wpadilla@example.com',56),(125,'Christian','Young','001-303-647-3180x715','taylor04@example.net',26),(126,'Lisa','Buck','(242)630-1479x302','shoffman@example.org',50),(127,'Jack','Murphy','(940)208-6875x08830','seangarner@example.org',37),(128,'Shane','Liu','(346)774-9849','deleonmary@example.net',45),(129,'Samantha','Brown','268.405.2793','lindsey66@example.net',48),(130,'Julia','Hicks','684-752-6202x99335','xgilbert@example.net',35),(131,'Tommy','Atkinson','977.213.6342x3864','ypatterson@example.com',56),(132,'Sheila','Evans','001-656-536-5732x671','oschwartz@example.org',40),(133,'Anthony','White','8555178295','amanda83@example.org',58),(134,'Megan','Watson','598.215.3727','tnewman@example.net',27),(135,'Caitlin','Gross','7936241503','darrenchoi@example.net',52),(136,'Sharon','Cunningham','480.275.6164','melissanorris@example.net',27),(137,'Judy','Mcmillan','(665)308-1262x54911','emilyhines@example.com',43),(138,'Kathleen','Foley','9188235996','omaldonado@example.com',61),(139,'Susan','Hicks','557.511.6268x48136','bschwartz@example.net',55),(140,'Rodney','Conway','9939470841','jaredjackson@example.org',58),(141,'Sydney','Osborn','713-904-3388','taylor20@example.com',50),(142,'Madison','Johnson','(629)460-5309x28473','peterclark@example.org',39),(143,'Vanessa','Harris','+1-952-388-9123x8662','karen64@example.com',63),(144,'Andrew','Holder','+1-761-337-9772x02152','npruitt@example.net',46),(145,'Carrie','Osborn','+1-929-960-2631x362','xsimon@example.net',44),(146,'Tracy','Gonzales','860.536.4986','davidbradford@example.com',45),(147,'Michelle','Jones','605.834.9814x7742','beth98@example.com',57),(148,'Victor','Evans','338.567.0136x2410','humphreydwayne@example.org',23),(149,'Michael','Scott','001-582-470-6404x4320','marqueztonya@example.com',47),(150,'Michele','Thompson','+1-971-389-1353','heatherjohnson@example.net',26);
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER create_buyer_after_visitor
AFTER INSERT ON visitor
FOR EACH ROW
BEGIN
    INSERT INTO buyer (visitor_ID, pending_orders_buyer)
    VALUES (NEW.visitor_ID, 0);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER create_seller_after_visitor
AFTER INSERT ON visitor
FOR EACH ROW
BEGIN
    INSERT INTO seller (visitor_ID)
    VALUES (NEW.visitor_ID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-07 22:45:09
