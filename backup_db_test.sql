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
  KEY `idx_artist_dob` (`artist_date_of_birth`),
  CONSTRAINT `CONSTRAINT_1` CHECK (0 <= `num_of_consecutive_years_participating` and `num_of_consecutive_years_participating` <= 3)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'Jesse Jackson',NULL,'2003-04-24','2019-04-20','http://www.li.biz/','https://www.moses.com/',2),(2,'Rachel Bowen','Monique','1993-03-22','1995-03-22','http://www.porter-lyons.com/','http://www.washington.com/',1),(3,'Jason Park','Jerome','1989-03-15','2005-03-11','http://strickland.biz/','https://fuentes.com/',1),(4,'Daniel Peterson',NULL,'2001-12-07','2006-12-06','http://schmitt.org/','http://www.jackson.info/',1),(5,'Michelle Gibson','Barry','1987-10-26','1993-10-24','http://nichols.org/','https://www.faulkner.info/',1),(6,'Paul Stewart',NULL,'1989-06-11','1997-06-09','https://www.rice-blackburn.info/','https://hart.com/',1),(7,'Amy Mullen','Joel','1984-03-31','1990-03-30','https://taylor-sparks.net/','http://www.campos.com/',1),(8,'Elizabeth Stein',NULL,'1995-04-20','2001-04-18','https://hernandez-reid.com/','https://harrison-flores.org/',1),(9,'Lisa Weaver','Gerald','1985-11-29','1999-11-26','http://harrington.com/','https://www.ball.com/',0),(10,'Crystal Andrade',NULL,'1983-07-03','1991-07-01','http://www.fuller.com/','https://www.hernandez.info/',1),(11,'Susan Lee',NULL,'2002-05-25','2016-05-21','https://garcia.net/','https://www.lewis-tanner.com/',1),(12,'Latoya Brady','Joyce','1991-05-17','2002-05-14','http://www.steele.biz/','http://www.hess.biz/',1),(13,'Shari Cox','Stephen','1976-06-11','1988-06-08','https://www.smith.com/','https://vega-jones.com/',1),(14,'Karen Burke','Darrell','1986-12-09','1989-12-08','https://michael.biz/','http://www.davis-jones.org/',2),(15,'Cheryl Jackson',NULL,'1977-02-01','1990-01-29','https://ward.com/','http://murillo.com/',1),(16,'Kimberly Henson','Courtney','1981-09-21','2001-09-16','https://west.com/','https://padilla.net/',1),(17,'Katrina Acevedo','Jonathon','1989-03-24','2004-03-20','http://www.martinez-ford.info/','https://marks-rogers.net/',1),(18,'Shane Goodman','Hannah','1996-10-12','2007-10-10','https://www.mccormick.biz/','https://www.carter-smith.net/',2),(19,'Timothy Estes','Derek','1995-12-31','2005-12-28','http://kelley.com/','https://www.mitchell.info/',1),(20,'Dr. Chris Bishop','Paul','1996-05-04','2003-05-03','https://www.morris.com/','http://bradley-mckinney.com/',1),(21,'Kimberly Chavez',NULL,'1986-07-22','2005-07-17','http://www.mason.com/','http://www.brown-hamilton.com/',1),(22,'Henry Day','Kelly','1975-10-01','1984-09-28','http://www.coleman-perez.com/','http://becker.com/',1),(23,'Whitney Pruitt',NULL,'1993-01-05','2005-01-02','http://www.crawford.info/','https://www.lee.com/',1),(24,'Debra Tran','Mark','1996-02-17','2000-02-16','http://gallagher-hurst.biz/','http://www.guerrero.com/',1),(25,'Gabriella Henderson','Tyler','1977-08-05','1991-08-02','http://www.tanner-bruce.com/','http://huffman.biz/',1),(26,'Kathleen Jones',NULL,'1983-05-28','2000-05-23','http://www.carr.com/','http://hart.com/',3),(27,'David Washington','Donald','1988-03-03','2005-02-27','http://www.conner.biz/','https://www.wheeler.com/',1),(28,'Jeremiah Wilson',NULL,'2003-11-29','2012-11-26','https://www.james.net/','https://gonzalez.com/',1),(29,'John Kent',NULL,'2002-10-06','2010-10-04','http://www.galloway-peters.com/','http://www.carter.info/',2),(30,'Karen Banks','Lauren','1991-11-22','1998-11-20','https://www.collins.com/','https://www.vazquez-molina.org/',1),(31,'Dylan Wright','Benjamin','1997-11-10','2009-11-07','https://www.young-huffman.com/','http://nunez.net/',1),(32,'Nicole Mendez','Belinda','2000-01-19','2001-01-18','http://www.hendrix.info/','http://www.davis-ortiz.com/',1),(33,'Stacy Marsh',NULL,'1999-05-03','2000-05-02','http://www.kirk.com/','https://rodriguez.com/',3),(34,'Timothy Fox','Kristin','2003-02-23','2020-02-19','http://www.williams.net/','http://lucero-cooke.info/',1),(35,'Derrick Garza','David','1994-03-11','2004-03-08','https://gibson-williams.com/','https://www.carter.net/',1),(36,'Scott Martinez',NULL,'2002-10-23','2005-10-22','https://www.jennings.info/','http://hudson.com/',1),(37,'Matthew Simmons','Tracy','1988-02-20','2004-02-16','http://west.com/','https://mccarthy.com/',1),(38,'Christian Wilson','Jay','1974-10-16','1985-10-13','http://shea.com/','http://barrera.com/',1),(39,'Erika Wyatt',NULL,'2003-04-05','2012-04-02','https://www.williams.com/','https://www.king.com/',1),(40,'James Hansen','Samantha','1993-05-30','1995-05-30','https://www.herrera.com/','https://www.tucker.org/',1),(41,'Brandon Juarez','Ricardo','1978-04-22','1993-04-18','https://montgomery.com/','https://www.reynolds.info/',3),(42,'Paul Webb','Mark','1986-04-25','1995-04-23','http://james.net/','https://wright-flores.com/',1),(43,'Brian Morris',NULL,'2002-04-21','2018-04-17','http://www.hess.com/','http://jensen.com/',0),(44,'Sarah Jones',NULL,'1992-01-15','1996-01-14','https://www.underwood-archer.com/','http://jones.com/',1),(45,'Michael Alexander','Janet','1989-05-24','2004-05-20','http://www.williams.com/','https://www.hawkins.biz/',1),(46,'Eric Johnson',NULL,'2002-09-09','2010-09-07','http://www.blackwell.com/','https://www.morgan.com/',0),(47,'Christina Ramsey','Michael','1982-10-09','1984-10-08','https://www.gay.org/','http://smith-preston.com/',1),(48,'Carrie Rhodes',NULL,'1998-09-15','2000-09-14','https://perez.org/','http://www.moreno-woods.com/',2),(49,'Scott Brown','Elizabeth','1993-11-24','2002-11-22','http://www.wong.com/','https://morgan-tucker.info/',1),(50,'Jill Hahn DDS','Jessica','2003-08-13','2014-08-10','http://smith.com/','https://liu.org/',1);
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
  PRIMARY KEY (`building_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,'Mckee-Bass','Perhaps find American. Near weight onto rich company.\nAgain long whole piece. Seem every figure coach now.\nSometimes spend hope put mother money marriage. Tell according accept indeed.',977),(2,'Day PLC','Throw man sea government hope law. Guess yourself memory. Leg no establish together like perform quite.',646),(3,'Wheeler Inc','Sell resource player throughout play work respond recently. Know since worry finish. Use own check prepare.\nYou even mind so product.',247),(4,'Perez, Young and Thompson','Eat put me ever suddenly rock. Join chair admit list especially thought. More wind through adult top.',412),(5,'Kane Ltd','Both deep pass between to. Child go generation rate appear.\nSeason debate national point. Computer sense star trade present. Evidence action market structure where.',839),(6,'White-Anderson','Worker often myself. Third artist sport control audience want live.\nMove not same line cover position black. Resource office wife very eye throughout help.',224),(7,'Gardner, Adams and Brown','Summer bar language suffer medical. Exactly thought between author.\nSkill medical stop program painting east more. Reach may degree teacher simply thus.',868),(8,'Ortiz and Sons','Rate six manager conference. Increase project animal purpose point.\nThan detail nation speech window face. Majority team whom fine big nature. Give reality course but leg drug.',408),(9,'Jacobson-Warren','Course ground break enter bag per begin. Hour after four whether safe show finally.\nConference college opportunity lay party consumer team none. Day agency worker necessary.',686),(10,'Grant-Martin','Candidate staff reason every. Laugh appear girl draw. Finish rise accept sometimes dinner have.\nHere success push different student pay term. Behind career face over. Idea central room send.',378),(11,'Brown PLC','Thing keep age board. Foot us thousand form movie ball receive general.\nPush set should though. Reality win president.\nEverybody American talk. Control development choose.',882),(12,'Hancock-Fuller','Somebody threat similar recognize. Size parent book side practice develop since yes.\nWhile use understand usually. Cold others data message must company skill would. Ask five may wait per.',619),(13,'Ellis-Lee','Admit effort for also trade. Ask have ok town. Force trip senior politics really seek. Production myself way single issue factor old.',371),(14,'Gordon PLC','His since choice.\nSkill shake so blood wait message every real. Develop discussion wife various trouble traditional eye.',803),(15,'Turner-Jones','Agent tough mind enter believe. Mind seat key central example phone visit. Meeting still common piece.',451),(16,'Baker Group','Career poor paper include per adult. Some research cause result admit admit family.\nFeel thought human wait rock chair that girl. Like this until child western.',445),(17,'Johnson, Silva and Chavez','Office factor begin fund capital might wall go. View direction nature year way.',693),(18,'James-Nicholson','Generation prove world meeting wind or listen. Behind idea foot land meet kitchen others be.\nWithout table main physical whole. Thing fall situation prepare process move off.',279),(19,'Vega, Hill and Cabrera','Page available value city. Music system hear out. Base Democrat peace boy stop understand.\nRecognize western education.\nExpert bit several. Detail always history many structure speak pay movie.',353),(20,'Adams-Scott','This coach hundred list which American. Question two compare to would join suggest. Record fill name challenge cultural election.\nMight nation quality be including increase door.',469),(21,'Jones PLC','Mrs practice worker whether meet together type. Everybody owner his recognize wonder chance ball decision.',764),(22,'Ryan Group','Spring firm similar most standard case respond. There soldier everything very.',408),(23,'Simmons Inc','Investment station try community water threat out enter. Why animal car tell loss again. Sound individual painting paper couple director outside if.',367),(24,'Davis LLC','Above win collection you why.\nTeach reason control bank agree several season.\nAnswer rich field. Experience social available reveal how character analysis kind.',917),(25,'Flores PLC','Stand thousand follow her. Grow wrong pattern western light Mr involve evening. Turn hour many them water arrive.\nWorker policy situation worker live. Their though that. Generation most house.',221),(26,'Perry PLC','Before return series agency information past. Agreement event everybody growth kitchen lose significant. Choice a effort onto. Also today operation deep first you.',267),(27,'Valdez-Bailey','Can single trip seek black important director name. Wife analysis example religious continue Mrs.\nRecognize upon something late son right agreement. Turn around maybe discover seat.',475),(28,'Evans, Stone and Newman','Wall kind serve be prevent bag. Vote task development.\nSignificant clear throw paper suggest. Represent person despite throughout own perform challenge.',404),(29,'Ortiz, York and Young','Population particular boy simple charge during. Good threat if very within money even other. Certainly wear five citizen need.',496),(30,'Holmes-Cook','Anything enter could he.\nRun available teach economy. Within affect respond firm pattern resource red. Different new blue good west pick.',316);
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
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(9,9,0),(10,10,0),(11,11,0),(12,12,0),(13,13,1),(14,14,0),(15,15,0),(16,16,0),(17,17,0),(18,18,0),(19,19,0),(20,20,0),(21,21,0),(22,22,0),(23,23,0),(24,24,0),(25,25,0),(26,26,0),(27,27,0),(28,28,0),(29,29,0),(30,30,0),(31,31,0),(32,32,1),(33,33,0),(34,34,0),(35,35,0),(36,36,0),(37,37,0),(38,38,0),(39,39,0),(40,40,0),(41,41,0),(42,42,0),(43,43,0),(44,44,0),(45,45,0),(46,46,0),(47,47,0),(48,48,0),(49,49,0),(50,50,0),(51,51,0),(52,52,0),(53,53,0),(54,54,0),(55,55,0),(56,56,0),(57,57,0),(58,58,0),(59,59,1),(60,60,0),(61,61,0),(62,62,0),(63,63,0),(64,64,0),(65,65,0),(66,66,0),(67,67,0),(68,68,0),(69,69,0),(70,70,0),(71,71,0),(72,72,0),(73,73,0),(74,74,0),(75,75,0),(76,76,0),(77,77,0),(78,78,0),(79,79,0),(80,80,0),(81,81,0),(82,82,0),(83,83,0),(84,84,0),(85,85,0),(86,86,1),(87,87,0),(88,88,0),(89,89,0),(90,90,0),(91,91,0),(92,92,0),(93,93,0),(94,94,0),(95,95,0),(96,96,0),(97,97,0),(98,98,0),(99,99,0),(100,100,0),(101,101,0),(102,102,0),(103,103,0),(104,104,0),(105,105,0),(106,106,0),(107,107,0),(108,108,0),(109,109,0),(110,110,0),(111,111,1),(112,112,0),(113,113,0),(114,114,0),(115,115,0),(116,116,0),(117,117,0),(118,118,0),(119,119,0),(120,120,0),(121,121,0),(122,122,0),(123,123,0),(124,124,0),(125,125,1),(126,126,0),(127,127,0),(128,128,0),(129,129,0),(130,130,0),(131,131,0),(132,132,0),(133,133,0),(134,134,0),(135,135,0),(136,136,0),(137,137,0),(138,138,0),(139,139,0),(140,140,0),(141,141,0),(142,142,1),(143,143,0),(144,144,0),(145,145,0),(146,146,0),(147,147,0),(148,148,0),(149,149,0),(150,150,1),(151,1,0),(152,2,0),(153,3,0),(154,4,0),(155,5,0),(156,6,0),(157,7,0),(158,8,0),(159,9,0),(160,10,0),(161,11,0),(162,12,0),(163,13,0),(164,14,0),(165,15,0),(166,16,0),(167,17,0),(168,18,0),(169,19,0),(170,20,0),(171,21,0),(172,22,0),(173,23,0),(174,24,0),(175,25,0),(176,26,0),(177,27,0),(178,28,0),(179,29,0),(180,30,0),(181,31,0),(182,32,0),(183,33,0),(184,34,0),(185,35,0),(186,36,0),(187,37,0),(188,38,0),(189,39,0),(190,40,0),(191,41,0),(192,42,0),(193,43,0),(194,44,0),(195,45,0),(196,46,0),(197,47,0),(198,48,0),(199,49,0),(200,50,0),(201,51,0),(202,52,0),(203,53,0),(204,54,0),(205,55,0),(206,56,0),(207,57,0),(208,58,0),(209,59,0),(210,60,0),(211,61,0),(212,62,0),(213,63,0),(214,64,0),(215,65,0),(216,66,0),(217,67,0),(218,68,0),(219,69,0),(220,70,0),(221,71,0),(222,72,0),(223,73,0),(224,74,0),(225,75,0),(226,76,0),(227,77,0),(228,78,0),(229,79,0),(230,80,0),(231,81,0),(232,82,0),(233,83,0),(234,84,0),(235,85,0),(236,86,0),(237,87,0),(238,88,0),(239,89,0),(240,90,0),(241,91,0),(242,92,0),(243,93,0),(244,94,0),(245,95,0),(246,96,0),(247,97,0),(248,98,0),(249,99,0),(250,100,0),(251,101,0),(252,102,0),(253,103,0),(254,104,0),(255,105,0),(256,106,0),(257,107,0),(258,108,0),(259,109,0),(260,110,0),(261,111,0),(262,112,0),(263,113,0),(264,114,0),(265,115,0),(266,116,0),(267,117,0),(268,118,0),(269,119,0),(270,120,0),(271,121,0),(272,122,0),(273,123,0),(274,124,0),(275,125,0),(276,126,0),(277,127,0),(278,128,0),(279,129,0),(280,130,0),(281,131,0),(282,132,0),(283,133,0),(284,134,0),(285,135,0),(286,136,0),(287,137,0),(288,138,0),(289,139,0),(290,140,0),(291,141,0),(292,142,0),(293,143,0),(294,144,0),(295,145,0),(296,146,0),(297,147,0),(298,148,0),(299,149,0),(300,150,0);
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
  KEY `idx_events_start_time` (`event_start_time`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`building_ID`) REFERENCES `building` (`building_ID`),
  CONSTRAINT `events_ibfk_2` FOREIGN KEY (`festival_ID`) REFERENCES `festival` (`festival_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,'Create Concert',1,'2017-09-08 08:51:00','2017-09-08 11:56:00',10,185,0,6,10,81),(2,1,'Available Concert',1,'2017-09-08 12:57:00','2017-09-08 16:30:00',5,213,0,10,7,85),(3,1,'Future Concert',2,'2017-09-09 09:39:00','2017-09-09 12:42:00',23,183,0,7,8,89),(4,1,'Check Concert',2,'2017-09-09 13:35:00','2017-09-09 17:05:00',7,210,0,8,9,100),(5,1,'Defense Concert',2,'2017-09-09 18:08:00','2017-09-09 21:45:00',25,217,0,7,8,99),(6,1,'Technology Concert',2,'2017-09-09 22:15:00','2017-09-09 01:42:00',3,207,0,10,6,100),(7,1,'Yeah Concert',2,'2017-09-09 02:30:00','2017-09-09 06:07:00',8,217,0,10,7,82),(8,1,'Lead Concert',2,'2017-09-09 06:40:00','2017-09-09 09:50:00',27,190,0,8,6,96),(9,1,'House Concert',3,'2017-09-10 09:33:00','2017-09-10 12:34:00',5,181,0,6,6,85),(10,1,'Parent Concert',3,'2017-09-10 13:49:00','2017-09-10 17:28:00',29,219,0,6,10,81),(11,1,'Capital Concert',3,'2017-09-10 18:58:00','2017-09-10 22:38:00',19,220,0,10,5,92),(12,1,'Special Concert',4,'2017-09-11 09:11:00','2017-09-11 12:17:00',21,186,0,9,9,83),(13,1,'Record Concert',4,'2017-09-11 13:45:00','2017-09-11 17:09:00',19,204,0,8,5,92),(14,1,'Old Concert',4,'2017-09-11 17:48:00','2017-09-11 20:54:00',25,186,0,10,10,95),(15,1,'Find Concert',4,'2017-09-11 21:38:00','2017-09-11 01:02:00',27,204,0,5,7,84),(16,1,'Leg Concert',4,'2017-09-11 02:04:00','2017-09-11 05:22:00',21,198,0,9,6,90),(17,1,'Entire Concert',4,'2017-09-11 06:56:00','2017-09-11 10:12:00',23,196,0,8,6,94),(18,1,'Animal Concert',5,'2017-09-12 09:26:00','2017-09-12 12:34:00',18,188,0,9,10,80),(19,1,'Message Concert',5,'2017-09-12 13:06:00','2017-09-12 16:39:00',20,213,0,7,9,93),(20,1,'Try Concert',5,'2017-09-12 17:54:00','2017-09-12 20:55:00',22,181,0,9,6,89),(21,1,'New Concert',5,'2017-09-12 21:22:00','2017-09-12 00:35:00',8,193,0,6,9,80),(22,1,'Join Concert',5,'2017-09-12 01:12:00','2017-09-12 04:17:00',9,185,0,9,7,95),(23,1,'Without Concert',5,'2017-09-12 05:50:00','2017-09-12 09:16:00',26,206,0,5,6,96),(24,1,'Food Concert',5,'2017-09-12 10:47:00','2017-09-12 14:22:00',23,215,0,10,6,83),(25,1,'Inside Concert',5,'2017-09-12 15:55:00','2017-09-12 19:35:00',2,220,0,5,5,80),(26,1,'Shake Concert',5,'2017-09-12 20:40:00','2017-09-12 00:16:00',15,216,0,8,6,82),(27,2,'Lead Concert',1,'2018-09-03 08:54:00','2018-09-03 12:27:00',14,213,0,9,6,94),(28,2,'Song Concert',1,'2018-09-03 13:53:00','2018-09-03 17:16:00',12,203,0,5,9,99),(29,2,'Foreign Concert',2,'2018-09-04 09:10:00','2018-09-04 12:22:00',4,192,0,7,7,88),(30,2,'Want Concert',2,'2018-09-04 13:11:00','2018-09-04 16:26:00',9,195,0,6,9,89),(31,2,'Play Concert',2,'2018-09-04 16:57:00','2018-09-04 20:00:00',18,183,0,6,8,97),(32,2,'Really Concert',3,'2018-09-05 08:25:00','2018-09-05 12:01:00',23,216,0,9,6,91),(33,2,'Only Concert',3,'2018-09-05 12:32:00','2018-09-05 15:41:00',21,189,0,7,8,91),(34,2,'Media Concert',4,'2018-09-06 08:39:00','2018-09-06 12:12:00',20,213,0,8,6,81),(35,2,'Speak Concert',4,'2018-09-06 13:09:00','2018-09-06 16:47:00',9,218,0,7,9,92),(36,2,'Bar Concert',5,'2018-09-07 08:59:00','2018-09-07 12:35:00',30,216,0,5,5,96),(37,2,'Attack Concert',5,'2018-09-07 13:19:00','2018-09-07 16:48:00',27,209,0,5,7,92),(38,2,'Single Concert',5,'2018-09-07 17:24:00','2018-09-07 20:50:00',22,206,0,7,1,97),(39,2,'Traditional Concert',5,'2018-09-07 21:57:00','2018-09-07 01:21:00',29,204,0,10,8,95),(40,2,'Benefit Concert',5,'2018-09-07 02:14:00','2018-09-07 05:36:00',27,202,0,10,7,89),(41,3,'Season Concert',1,'2019-08-21 09:33:00','2019-08-21 13:08:00',2,215,0,10,8,82),(42,3,'Figure Concert',1,'2019-08-21 14:17:00','2019-08-21 17:39:00',27,202,0,7,9,95),(43,3,'However Concert',2,'2019-08-22 09:02:00','2019-08-22 12:12:00',13,190,0,7,7,100),(44,3,'Film Concert',2,'2019-08-22 13:06:00','2019-08-22 16:12:00',26,186,0,6,7,85),(45,3,'Individual Concert',2,'2019-08-22 16:46:00','2019-08-22 20:06:00',8,200,0,8,6,98),(46,3,'Myself Concert',2,'2019-08-22 21:26:00','2019-08-22 00:35:00',15,189,0,9,9,81),(47,3,'Stock Concert',2,'2019-08-22 02:13:00','2019-08-22 05:48:00',7,215,0,9,5,84),(48,3,'Box Concert',2,'2019-08-22 07:23:00','2019-08-22 11:02:00',12,219,0,9,8,85),(49,3,'Serious Concert',2,'2019-08-22 12:07:00','2019-08-22 15:32:00',14,205,0,6,9,80),(50,3,'Be Concert',2,'2019-08-22 17:05:00','2019-08-22 20:30:00',12,205,0,9,5,91),(51,3,'Trip Concert',2,'2019-08-22 21:15:00','2019-08-22 00:36:00',23,201,0,5,4,97),(52,3,'Save Concert',3,'2019-08-23 08:38:00','2019-08-23 11:56:00',29,198,0,8,1,84),(53,3,'Walk Concert',3,'2019-08-23 12:35:00','2019-08-23 16:05:00',28,210,0,10,9,96),(54,3,'Each Concert',4,'2019-08-24 08:21:00','2019-08-24 11:38:00',4,197,0,10,6,97),(55,3,'Very Concert',4,'2019-08-24 13:07:00','2019-08-24 16:42:00',22,215,0,6,10,90),(56,3,'Already Concert',4,'2019-08-24 17:43:00','2019-08-24 21:09:00',16,206,0,5,7,91),(57,3,'Station Concert',4,'2019-08-24 21:41:00','2019-08-24 00:44:00',11,183,0,10,6,82),(58,3,'Organization Concert',4,'2019-08-24 01:09:00','2019-08-24 04:41:00',2,212,0,7,7,99),(59,4,'On Concert',1,'2020-07-22 08:26:00','2020-07-22 11:31:00',10,185,0,5,7,88),(60,4,'Test Concert',1,'2020-07-22 11:59:00','2020-07-22 15:14:00',4,195,0,7,6,87),(61,4,'Country Concert',1,'2020-07-22 16:48:00','2020-07-22 20:24:00',23,216,0,6,5,81),(62,4,'In Concert',1,'2020-07-22 21:59:00','2020-07-22 01:31:00',7,212,0,5,6,92),(63,4,'Rate Concert',1,'2020-07-22 02:34:00','2020-07-22 06:02:00',3,208,0,6,6,96),(64,4,'Suddenly Concert',1,'2020-07-22 07:27:00','2020-07-22 10:50:00',11,203,0,6,6,90),(65,4,'Air Concert',1,'2020-07-22 12:02:00','2020-07-22 15:19:00',7,197,0,7,6,83),(66,4,'Boy Concert',2,'2020-07-23 08:32:00','2020-07-23 12:09:00',7,217,0,8,7,94),(67,4,'Create Concert',2,'2020-07-23 13:11:00','2020-07-23 16:18:00',28,187,0,5,6,90),(68,4,'Mr Concert',2,'2020-07-23 16:39:00','2020-07-23 20:05:00',15,206,0,5,9,94),(69,4,'Drug Concert',2,'2020-07-23 21:34:00','2020-07-23 01:06:00',16,212,0,9,10,82),(70,4,'Difference Concert',2,'2020-07-23 02:42:00','2020-07-23 06:06:00',2,204,0,7,6,88),(71,4,'Responsibility Concert',2,'2020-07-23 07:11:00','2020-07-23 10:22:00',11,191,0,6,6,91),(72,5,'Along Concert',1,'2021-09-08 09:20:00','2021-09-08 12:40:00',5,200,0,5,8,98),(73,5,'Tell Concert',1,'2021-09-08 14:10:00','2021-09-08 17:34:00',17,204,0,7,10,88),(74,5,'Data Concert',1,'2021-09-08 18:52:00','2021-09-08 21:59:00',4,187,0,10,8,89),(75,5,'Trouble Concert',1,'2021-09-08 23:02:00','2021-09-08 02:19:00',30,197,0,9,8,83),(76,5,'Federal Concert',1,'2021-09-08 03:47:00','2021-09-08 06:54:00',15,187,0,10,10,96),(77,5,'Share Concert',1,'2021-09-08 07:40:00','2021-09-08 11:11:00',5,211,0,5,5,90),(78,5,'Which Concert',1,'2021-09-08 11:37:00','2021-09-08 15:16:00',8,219,0,5,8,96),(79,5,'Allow Concert',2,'2021-09-09 08:48:00','2021-09-09 12:00:00',26,192,0,10,5,87),(80,5,'Source Concert',2,'2021-09-09 12:33:00','2021-09-09 15:35:00',20,182,0,9,8,90),(81,5,'So Concert',2,'2021-09-09 16:50:00','2021-09-09 20:28:00',12,218,0,7,6,99),(82,5,'Begin Concert',2,'2021-09-09 21:58:00','2021-09-09 01:01:00',3,183,0,7,5,97),(83,5,'Positive Concert',2,'2021-09-09 01:33:00','2021-09-09 05:08:00',15,215,0,10,9,94),(84,5,'Child Concert',3,'2021-09-10 08:50:00','2021-09-10 12:13:00',6,203,0,7,7,91),(85,5,'Difference Concert',3,'2021-09-10 12:46:00','2021-09-10 16:17:00',7,211,0,10,5,82),(86,5,'Remember Concert',3,'2021-09-10 17:57:00','2021-09-10 21:29:00',15,212,0,6,10,83),(87,5,'Character Concert',3,'2021-09-10 22:24:00','2021-09-10 01:34:00',14,190,0,5,5,89),(88,5,'Technology Concert',3,'2021-09-10 02:20:00','2021-09-10 05:43:00',27,203,0,10,9,92),(89,5,'Office Concert',3,'2021-09-10 06:21:00','2021-09-10 09:37:00',27,196,0,5,6,98),(90,5,'Risk Concert',3,'2021-09-10 10:44:00','2021-09-10 14:09:00',11,205,0,7,5,95),(91,5,'Focus Concert',4,'2021-09-11 08:57:00','2021-09-11 12:09:00',1,192,0,5,6,99),(92,5,'Thought Concert',5,'2021-09-12 08:55:00','2021-09-12 12:22:00',8,207,0,10,9,84),(93,5,'People Concert',5,'2021-09-12 13:42:00','2021-09-12 16:52:00',30,190,0,8,6,89),(94,5,'Responsibility Concert',5,'2021-09-12 17:34:00','2021-09-12 20:53:00',19,199,0,10,1,80),(95,5,'Product Concert',5,'2021-09-12 22:09:00','2021-09-12 01:38:00',4,209,0,7,9,85),(96,5,'Husband Concert',5,'2021-09-12 03:13:00','2021-09-12 06:49:00',24,216,0,7,10,83),(97,5,'See Concert',5,'2021-09-12 07:36:00','2021-09-12 11:06:00',14,210,0,10,6,84),(98,5,'Chance Concert',5,'2021-09-12 11:29:00','2021-09-12 14:46:00',30,197,0,10,7,89),(99,5,'Ask Concert',5,'2021-09-12 15:06:00','2021-09-12 18:36:00',20,210,0,7,9,92),(100,5,'Decision Concert',5,'2021-09-12 19:09:00','2021-09-12 22:25:00',12,196,0,10,8,85),(101,6,'Offer Concert',1,'2022-09-20 08:39:00','2022-09-20 12:12:00',22,213,0,5,6,91),(102,6,'Control Concert',1,'2022-09-20 13:51:00','2022-09-20 17:03:00',2,192,0,6,9,84),(103,6,'Drop Concert',1,'2022-09-20 17:59:00','2022-09-20 21:24:00',17,205,0,6,6,87),(104,6,'Same Concert',1,'2022-09-20 21:54:00','2022-09-20 00:56:00',2,182,0,9,5,95),(105,6,'Purpose Concert',1,'2022-09-20 02:25:00','2022-09-20 05:53:00',10,208,0,6,10,98),(106,6,'Remain Concert',2,'2022-09-21 09:01:00','2022-09-21 12:10:00',10,189,0,9,9,98),(107,6,'Since Concert',2,'2022-09-21 13:25:00','2022-09-21 16:32:00',6,187,0,5,8,81),(108,6,'Positive Concert',2,'2022-09-21 17:42:00','2022-09-21 21:07:00',23,205,0,8,8,82),(109,6,'Believe Concert',2,'2022-09-21 22:35:00','2022-09-21 01:57:00',7,202,0,6,8,85),(110,6,'Return Concert',2,'2022-09-21 03:25:00','2022-09-21 06:27:00',19,182,0,6,6,98),(111,6,'Sound Concert',2,'2022-09-21 07:22:00','2022-09-21 10:24:00',27,182,0,7,5,86),(112,6,'Own Concert',2,'2022-09-21 11:28:00','2022-09-21 14:41:00',10,193,0,10,5,100),(113,6,'Into Concert',2,'2022-09-21 15:14:00','2022-09-21 18:42:00',23,208,0,5,6,97),(114,6,'My Concert',2,'2022-09-21 19:16:00','2022-09-21 22:34:00',3,198,0,7,8,92),(115,7,'Realize Concert',1,'2023-08-05 08:23:00','2023-08-05 11:39:00',5,196,0,5,6,84),(116,7,'Difference Concert',1,'2023-08-05 12:37:00','2023-08-05 15:50:00',9,193,0,7,6,80),(117,7,'Full Concert',1,'2023-08-05 17:06:00','2023-08-05 20:16:00',14,190,0,7,5,86),(118,7,'Here Concert',1,'2023-08-05 20:59:00','2023-08-05 00:31:00',2,212,0,8,10,98),(119,7,'Industry Concert',1,'2023-08-05 00:54:00','2023-08-05 04:28:00',26,214,0,7,10,100),(120,7,'Live Concert',1,'2023-08-05 04:53:00','2023-08-05 08:04:00',30,191,0,6,10,80),(121,7,'Course Concert',1,'2023-08-05 09:13:00','2023-08-05 12:25:00',17,192,0,6,7,95),(122,7,'Hand Concert',1,'2023-08-05 13:02:00','2023-08-05 16:06:00',9,184,0,8,10,99),(123,7,'Environment Concert',1,'2023-08-05 16:54:00','2023-08-05 20:05:00',16,191,0,8,6,85),(124,7,'Article Concert',2,'2023-08-06 08:32:00','2023-08-06 11:50:00',5,198,0,10,8,97),(125,7,'With Concert',2,'2023-08-06 12:10:00','2023-08-06 15:38:00',22,208,0,8,9,85),(126,7,'Article Concert',2,'2023-08-06 17:14:00','2023-08-06 20:37:00',27,203,0,6,10,88),(127,7,'She Concert',2,'2023-08-06 21:59:00','2023-08-06 01:07:00',8,188,0,5,5,85),(128,7,'Social Concert',2,'2023-08-06 01:45:00','2023-08-06 04:50:00',5,185,0,10,8,88),(129,7,'Others Concert',2,'2023-08-06 06:14:00','2023-08-06 09:40:00',29,206,0,7,2,88),(130,8,'Quite Concert',1,'2024-08-28 09:17:00','2024-08-28 12:25:00',22,188,0,8,7,80),(131,8,'Occur Concert',1,'2024-08-28 13:35:00','2024-08-28 16:41:00',2,186,0,10,9,99),(132,8,'Bad Concert',1,'2024-08-28 18:21:00','2024-08-28 21:37:00',28,196,0,10,5,97),(133,8,'Campaign Concert',1,'2024-08-28 22:05:00','2024-08-28 01:19:00',1,194,0,9,7,98),(134,8,'Onto Concert',1,'2024-08-28 02:59:00','2024-08-28 06:08:00',26,189,0,9,5,91),(135,8,'Authority Concert',2,'2024-08-29 08:21:00','2024-08-29 11:25:00',17,184,0,9,8,94),(136,8,'Wide Concert',2,'2024-08-29 11:57:00','2024-08-29 15:17:00',6,200,0,7,10,86),(137,8,'Seven Concert',2,'2024-08-29 16:19:00','2024-08-29 19:35:00',21,196,0,8,5,84),(138,8,'Business Concert',2,'2024-08-29 20:51:00','2024-08-29 23:53:00',8,182,0,6,8,80),(139,8,'Heavy Concert',3,'2024-08-30 08:20:00','2024-08-30 11:32:00',16,192,0,10,7,100),(140,8,'Stage Concert',3,'2024-08-30 12:23:00','2024-08-30 15:50:00',24,207,0,5,8,86),(141,8,'Several Concert',4,'2024-08-31 08:32:00','2024-08-31 11:56:00',24,204,0,10,6,97),(142,8,'Town Concert',4,'2024-08-31 13:15:00','2024-08-31 16:23:00',12,188,0,6,10,88),(143,8,'Painting Concert',4,'2024-08-31 17:18:00','2024-08-31 20:31:00',19,193,0,10,8,96),(144,8,'Court Concert',5,'2024-09-01 08:49:00','2024-09-01 12:19:00',3,210,0,8,10,98),(145,8,'Whether Concert',5,'2024-09-01 13:24:00','2024-09-01 16:30:00',19,186,0,8,6,82),(146,8,'Ability Concert',5,'2024-09-01 18:06:00','2024-09-01 21:42:00',14,216,0,9,8,87),(147,8,'Economy Concert',5,'2024-09-01 22:11:00','2024-09-01 01:40:00',23,209,0,8,9,85),(148,8,'Truth Concert',5,'2024-09-01 02:43:00','2024-09-01 06:05:00',6,202,0,6,10,83),(149,8,'Name Concert',5,'2024-09-01 06:53:00','2024-09-01 10:02:00',21,189,0,8,8,93),(150,9,'Last Concert',1,'2025-08-24 08:52:00','2025-08-24 12:08:00',21,196,0,9,5,81),(151,9,'Rule Concert',1,'2025-08-24 12:35:00','2025-08-24 15:41:00',13,186,0,8,10,85),(152,9,'Apply Concert',1,'2025-08-24 17:20:00','2025-08-24 20:36:00',8,196,0,10,7,92),(153,9,'Clear Concert',1,'2025-08-24 21:33:00','2025-08-24 01:04:00',25,211,0,5,1,88),(154,9,'Style Concert',1,'2025-08-24 02:19:00','2025-08-24 05:27:00',20,188,0,5,2,85),(155,9,'According Concert',1,'2025-08-24 07:05:00','2025-08-24 10:39:00',26,214,0,5,10,80),(156,9,'Visit Concert',1,'2025-08-24 11:04:00','2025-08-24 14:10:00',3,186,0,7,1,100),(157,9,'List Concert',1,'2025-08-24 14:51:00','2025-08-24 18:20:00',1,209,0,9,2,83),(158,9,'Oil Concert',2,'2025-08-25 09:34:00','2025-08-25 13:11:00',19,217,0,7,5,96),(159,9,'Summer Concert',2,'2025-08-25 14:19:00','2025-08-25 17:32:00',11,193,0,5,6,85),(160,9,'Leave Concert',2,'2025-08-25 17:54:00','2025-08-25 20:56:00',22,182,0,5,8,94),(161,9,'Middle Concert',2,'2025-08-25 21:19:00','2025-08-25 00:47:00',29,208,0,6,10,84),(162,9,'Professional Concert',2,'2025-08-25 01:39:00','2025-08-25 05:19:00',19,220,0,10,3,95),(163,9,'Idea Concert',2,'2025-08-25 06:47:00','2025-08-25 10:14:00',3,207,0,10,1,85),(164,9,'Day Concert',3,'2025-08-26 08:32:00','2025-08-26 12:12:00',13,220,0,6,1,97),(165,9,'Life Concert',3,'2025-08-26 12:45:00','2025-08-26 16:03:00',7,198,0,8,2,99),(166,9,'Wait Concert',3,'2025-08-26 16:48:00','2025-08-26 20:08:00',5,200,0,6,6,89),(167,10,'Would Concert',1,'2026-09-26 08:23:00','2026-09-26 11:42:00',4,199,0,5,5,87),(168,10,'Although Concert',1,'2026-09-26 12:56:00','2026-09-26 16:08:00',24,192,0,10,1,87),(169,10,'Expert Concert',1,'2026-09-26 17:08:00','2026-09-26 20:18:00',10,190,0,6,6,84),(170,10,'Real Concert',1,'2026-09-26 21:27:00','2026-09-26 00:40:00',30,193,0,8,6,91),(171,10,'Alone Concert',1,'2026-09-26 02:13:00','2026-09-26 05:30:00',27,197,0,7,6,92),(172,10,'Available Concert',1,'2026-09-26 06:20:00','2026-09-26 09:53:00',14,213,0,5,7,98),(173,10,'Body Concert',1,'2026-09-26 11:15:00','2026-09-26 14:46:00',30,211,0,6,8,87),(174,10,'Green Concert',2,'2026-09-27 09:09:00','2026-09-27 12:10:00',6,181,0,8,1,84),(175,10,'Work Concert',2,'2026-09-27 12:44:00','2026-09-27 16:00:00',7,196,0,9,10,96),(176,10,'Young Concert',3,'2026-09-28 09:23:00','2026-09-28 12:38:00',15,195,0,9,10,86),(177,10,'American Concert',3,'2026-09-28 13:25:00','2026-09-28 17:05:00',28,220,0,5,1,85),(178,10,'Outside Concert',3,'2026-09-28 17:39:00','2026-09-28 21:18:00',8,219,0,8,5,91),(179,10,'Else Concert',3,'2026-09-28 22:25:00','2026-09-28 01:45:00',4,200,0,6,1,94),(180,10,'Heavy Concert',4,'2026-09-29 08:23:00','2026-09-29 11:51:00',14,208,0,5,10,82),(181,10,'True Concert',4,'2026-09-29 13:08:00','2026-09-29 16:22:00',17,194,0,6,1,94),(182,10,'War Concert',4,'2026-09-29 17:14:00','2026-09-29 20:45:00',16,211,0,6,9,80);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festival`
--

LOCK TABLES `festival` WRITE;
/*!40000 ALTER TABLE `festival` DISABLE KEYS */;
INSERT INTO `festival` VALUES (1,'2017-09-08',5),(2,'2018-09-03',5),(3,'2019-08-21',4),(4,'2020-07-22',2),(5,'2021-09-08',5),(6,'2022-09-20',2),(7,'2023-08-05',2),(8,'2024-08-28',5),(9,'2025-08-24',3),(10,'2026-09-26',4);
/*!40000 ALTER TABLE `festival` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
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
  KEY `idx_festival_location_continent` (`festival_ID`,`continent`),
  CONSTRAINT `festival_location_ibfk_1` FOREIGN KEY (`festival_ID`) REFERENCES `festival` (`festival_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festival_location`
--

LOCK TABLES `festival_location` WRITE;
/*!40000 ALTER TABLE `festival_location` DISABLE KEYS */;
INSERT INTO `festival_location` VALUES (1,1,'70705 Ryan Mountain Apt. 655','North Erikborough','Turkmenistan','Europe','-10.8479405,36.681659'),(2,2,'394 Carlson Mount','Johnton','Trinidad and Tobago','North America','-7.136183,-71.463130'),(3,3,'0717 Lisa Garden Apt. 480','Markburgh','Canada','South America','-78.1975675,-61.746240'),(4,4,'4109 Michael Spring Apt. 366','Lake Carol','Burkina Faso','Europe','82.8682655,156.767533'),(5,5,'719 Jones Pass Suite 685','East Gwendolyn','Guam','North America','17.6742735,26.759032'),(6,6,'28818 Jay Ports','Nguyenburgh','Mozambique','South America','14.426515,88.882451'),(7,7,'66869 Lisa Lakes','South Coreybury','Iran','Europe','-89.5462015,156.732810'),(8,8,'33569 Mark Forges','Lake Shane','Israel','North America','-50.6918035,27.899507'),(9,9,'69059 Graham Circle Apt. 319','Amberburgh','Armenia','South America','-88.859854,67.870524'),(10,10,'1496 Randall View','Brandonberg','Saint Helena','Europe','-16.261535,-7.516005');
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Classical','Baroque',1,NULL),(2,'Rock','Hard Rock',1,NULL),(3,'Rock','Hard Rock',2,NULL),(4,'Pop',NULL,2,NULL),(5,'Rock','Hard Rock',3,NULL),(6,'Classical','Baroque',3,NULL),(7,'Pop',NULL,4,NULL),(8,'Jazz','Smooth Jazz',4,NULL),(9,'Electronic','House',5,NULL),(10,'Classical','Baroque',5,NULL),(11,'Rock','Hard Rock',6,NULL),(12,'Classical','Baroque',7,NULL),(13,'Electronic','House',8,NULL),(14,'Rock','Hard Rock',8,NULL),(15,'Jazz','Smooth Jazz',8,NULL),(16,'Pop',NULL,9,NULL),(17,'Pop',NULL,10,NULL),(18,'Jazz','Smooth Jazz',10,NULL),(19,'Classical','Baroque',10,NULL),(20,'Pop',NULL,11,NULL),(21,'Electronic','House',11,NULL),(22,'Hip-Hop','Trap',11,NULL),(23,'Hip-Hop','Trap',12,NULL),(24,'Electronic','House',13,NULL),(25,'Rock','Hard Rock',13,NULL),(26,'Electronic','House',14,NULL),(27,'Hip-Hop','Trap',15,NULL),(28,'Rock','Hard Rock',16,NULL),(29,'Hip-Hop','Trap',16,NULL),(30,'Classical','Baroque',16,NULL),(31,'Hip-Hop','Trap',17,NULL),(32,'Rock','Hard Rock',18,NULL),(33,'Jazz','Smooth Jazz',18,NULL),(34,'Electronic','House',18,NULL),(35,'Electronic','House',19,NULL),(36,'Rock','Hard Rock',19,NULL),(37,'Rock','Hard Rock',20,NULL),(38,'Electronic','House',20,NULL),(39,'Jazz','Smooth Jazz',20,NULL),(40,'Classical','Baroque',21,NULL),(41,'Hip-Hop','Trap',22,NULL),(42,'Electronic','House',22,NULL),(43,'Hip-Hop','Trap',23,NULL),(44,'Electronic','House',23,NULL),(45,'Classical','Baroque',23,NULL),(46,'Jazz','Smooth Jazz',24,NULL),(47,'Classical','Baroque',24,NULL),(48,'Jazz','Smooth Jazz',25,NULL),(49,'Hip-Hop','Trap',25,NULL),(50,'Rock','Hard Rock',25,NULL),(51,'Jazz','Smooth Jazz',26,NULL),(52,'Classical','Baroque',27,NULL),(53,'Electronic','House',27,NULL),(54,'Jazz','Smooth Jazz',28,NULL),(55,'Pop',NULL,28,NULL),(56,'Hip-Hop','Trap',28,NULL),(57,'Rock','Hard Rock',29,NULL),(58,'Electronic','House',30,NULL),(59,'Rock','Hard Rock',31,NULL),(60,'Classical','Baroque',31,NULL),(61,'Pop',NULL,32,NULL),(62,'Rock','Hard Rock',32,NULL),(63,'Electronic','House',32,NULL),(64,'Rock','Hard Rock',33,NULL),(65,'Electronic','House',33,NULL),(66,'Pop',NULL,33,NULL),(67,'Jazz','Smooth Jazz',34,NULL),(68,'Pop',NULL,34,NULL),(69,'Classical','Baroque',34,NULL),(70,'Hip-Hop','Trap',35,NULL),(71,'Rock','Hard Rock',35,NULL),(72,'Pop',NULL,36,NULL),(73,'Electronic','House',36,NULL),(74,'Jazz','Smooth Jazz',36,NULL),(75,'Jazz','Smooth Jazz',37,NULL),(76,'Rock','Hard Rock',37,NULL),(77,'Classical','Baroque',38,NULL),(78,'Jazz','Smooth Jazz',38,NULL),(79,'Jazz','Smooth Jazz',39,NULL),(80,'Jazz','Smooth Jazz',40,NULL),(81,'Rock','Hard Rock',41,NULL),(82,'Hip-Hop','Trap',41,NULL),(83,'Rock','Hard Rock',42,NULL),(84,'Pop',NULL,42,NULL),(85,'Hip-Hop','Trap',42,NULL),(86,'Hip-Hop','Trap',43,NULL),(87,'Pop',NULL,43,NULL),(88,'Jazz','Smooth Jazz',44,NULL),(89,'Pop',NULL,44,NULL),(90,'Electronic','House',44,NULL),(91,'Hip-Hop','Trap',45,NULL),(92,'Pop',NULL,45,NULL),(93,'Electronic','House',45,NULL),(94,'Pop',NULL,46,NULL),(95,'Classical','Baroque',46,NULL),(96,'Pop',NULL,47,NULL),(97,'Electronic','House',47,NULL),(98,'Rock','Hard Rock',47,NULL),(99,'Rock','Hard Rock',48,NULL),(100,'Electronic','House',48,NULL),(101,'Jazz','Smooth Jazz',48,NULL),(102,'Pop',NULL,49,NULL),(103,'Hip-Hop','Trap',49,NULL),(104,'Rock','Hard Rock',49,NULL),(105,'Pop',NULL,50,NULL),(106,'Jazz','Smooth Jazz',50,NULL),(107,'Classical','Baroque',NULL,1),(108,'Electronic','House',NULL,1),(109,'Classical','Baroque',NULL,2),(110,'Hip-Hop','Trap',NULL,2),(111,'Jazz','Smooth Jazz',NULL,2),(112,'Rock','Hard Rock',NULL,3),(113,'Classical','Baroque',NULL,3),(114,'Pop',NULL,NULL,3),(115,'Electronic','House',NULL,4),(116,'Classical','Baroque',NULL,4),(117,'Rock','Hard Rock',NULL,5),(118,'Jazz','Smooth Jazz',NULL,6),(119,'Hip-Hop','Trap',NULL,6),(120,'Hip-Hop','Trap',NULL,7),(121,'Electronic','House',NULL,8),(122,'Classical','Baroque',NULL,8),(123,'Jazz','Smooth Jazz',NULL,9),(124,'Classical','Baroque',NULL,9),(125,'Rock','Hard Rock',NULL,9),(126,'Jazz','Smooth Jazz',NULL,10),(127,'Electronic','House',NULL,10),(128,'Electronic','House',NULL,11),(129,'Hip-Hop','Trap',NULL,11),(130,'Jazz','Smooth Jazz',NULL,12),(131,'Electronic','House',NULL,12),(132,'Hip-Hop','Trap',NULL,13),(133,'Classical','Baroque',NULL,13),(134,'Classical','Baroque',NULL,14),(135,'Hip-Hop','Trap',NULL,15);
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
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
INSERT INTO `group` VALUES (1,'Anthony Weber Band','1994-06-01','1998-05-31','https://www.pineda.com/','http://www.long.net/','Nicole Mendez, Jill Hahn DDS, Christian Wilson, David Washington, Sarah Jones, David Washington, Nicole Mendez, Christian Wilson, Sarah Jones, Jill Hahn DDS, ',2),(2,'Patricia Francis MD Band','1983-03-03','1989-03-01','http://wright.com/','http://www.peterson.com/','Henry Day, Jesse Jackson, Crystal Andrade, Kimberly Henson, Jesse Jackson, Crystal Andrade, Kimberly Henson, Henry Day, ',2),(3,'Stephen Powell Band','2002-04-13','2006-04-12','http://hawkins.info/','https://cruz.net/','Dr. Chris Bishop, Jesse Jackson, Paul Webb, Shane Goodman, Jesse Jackson, Shane Goodman, Dr. Chris Bishop, Paul Webb, ',1),(4,'Dustin Patterson Band','1995-02-24','2015-02-19','http://www.dickerson-atkinson.info/','http://lyons-nelson.com/','Dr. Chris Bishop, Karen Banks, Debra Tran, Sarah Jones, Matthew Simmons, Dr. Chris Bishop, Debra Tran, Karen Banks, Matthew Simmons, Sarah Jones, ',3),(5,'Samuel Lloyd Band','1982-09-02','1983-09-02','https://hayes-simpson.com/','http://www.flores-bailey.com/','Jesse Jackson, Cheryl Jackson, Kimberly Chavez, Christina Ramsey, Jesse Jackson, Cheryl Jackson, Kimberly Chavez, Christina Ramsey, ',3),(6,'Deborah Miller Band','1988-06-16','1994-06-15','http://clark.com/','https://www.smith.info/','Elizabeth Stein, Rachel Bowen, Erika Wyatt, Rachel Bowen, Elizabeth Stein, Erika Wyatt, ',2),(7,'Joyce Burns Band','1979-03-27','1994-03-23','http://torres.com/','http://adams.com/','David Washington, Shari Cox, Erika Wyatt, Scott Brown, Shari Cox, David Washington, Erika Wyatt, Scott Brown, ',3),(8,'Krystal Mccoy Band','1974-08-27','1988-08-23','https://mendez.com/','https://www.hamilton.org/','Michael Alexander, Dr. Chris Bishop, Gabriella Henderson, Karen Burke, Karen Burke, Dr. Chris Bishop, Gabriella Henderson, Michael Alexander, ',3),(9,'Marilyn Johnson Band','1977-04-26','1995-04-22','http://www.graves.com/','https://graham.biz/','Whitney Pruitt, Amy Mullen, Gabriella Henderson, Amy Mullen, Whitney Pruitt, Gabriella Henderson, ',1),(10,'Natasha Crosby Band','1999-10-27','2011-10-24','http://myers.net/','https://www.herrera.com/','Jason Park, Timothy Fox, Paul Webb, Elizabeth Stein, Jason Park, Elizabeth Stein, Timothy Fox, Paul Webb, ',1),(11,'Brian Jacobs Band','1979-07-03','1998-06-28','http://archer-hines.info/','http://thomas-peters.com/','David Washington, Paul Webb, Kimberly Henson, Rachel Bowen, Scott Martinez, Rachel Bowen, Kimberly Henson, David Washington, Scott Martinez, Paul Webb, ',1),(12,'Destiny Ward Band','1989-11-14','1991-11-14','http://kelley-sullivan.com/','http://www.pruitt.net/','Kathleen Jones, Elizabeth Stein, Matthew Simmons, Timothy Estes, Nicole Mendez, Elizabeth Stein, Timothy Estes, Kathleen Jones, Nicole Mendez, Matthew Simmons, ',3),(13,'Miguel Park Band','1995-09-07','2012-09-02','https://meyer.net/','http://parsons.com/','Latoya Brady, Michael Alexander, Latoya Brady, Michael Alexander, ',1),(14,'Darrell Mccoy Band','1985-11-07','2001-11-03','https://www.perkins.info/','http://www.simmons-miranda.com/','Timothy Estes, Crystal Andrade, Sarah Jones, Daniel Peterson, Gabriella Henderson, Daniel Peterson, Crystal Andrade, Timothy Estes, Gabriella Henderson, Sarah Jones, ',2),(15,'Sherri Taylor Band','2001-06-21','2006-06-20','https://taylor-owens.com/','https://www.adams.biz/','Amy Mullen, Karen Banks, Paul Webb, Amy Mullen, Karen Banks, Paul Webb, ',3);
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
INSERT INTO `group_members` VALUES (1,27),(1,32),(1,38),(1,44),(1,50),(2,1),(2,10),(2,16),(2,22),(3,1),(3,18),(3,20),(3,42),(4,20),(4,24),(4,30),(4,37),(4,44),(5,1),(5,15),(5,21),(5,47),(6,2),(6,8),(6,39),(7,13),(7,27),(7,39),(7,49),(8,14),(8,20),(8,25),(8,45),(9,7),(9,23),(9,25),(10,3),(10,8),(10,34),(10,42),(11,2),(11,16),(11,27),(11,36),(11,42),(12,8),(12,19),(12,26),(12,32),(12,37),(13,12),(13,45),(14,4),(14,10),(14,19),(14,25),(14,44),(15,7),(15,30),(15,42);
/*!40000 ALTER TABLE `group_members` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
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
  KEY `idx_perf_type_artist_event` (`performance_type`,`artist_ID`,`event_ID`),
  CONSTRAINT `performances_ibfk_1` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`),
  CONSTRAINT `performances_ibfk_2` FOREIGN KEY (`building_ID`) REFERENCES `building` (`building_ID`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`performance_start_time` < `performance_end_time`),
  CONSTRAINT `CONSTRAINT_2` CHECK (`performance_duration` <= 180)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performances`
--

LOCK TABLES `performances` WRITE;
/*!40000 ALTER TABLE `performances` DISABLE KEYS */;
INSERT INTO `performances` VALUES (1,1,'special_guest','2017-09-08 08:51:00','2017-09-08 10:12:00',81,10,'Grant-Martin',NULL,1),(2,2,'warm up','2017-09-08 12:57:00','2017-09-08 13:44:00',47,5,'Kane Ltd',NULL,4),(3,2,'warm up','2017-09-08 13:59:00','2017-09-08 14:53:00',54,5,'Kane Ltd',21,NULL),(4,3,'warm up','2017-09-09 09:39:00','2017-09-09 11:37:00',118,23,'Simmons Inc',NULL,7),(5,4,'headline','2017-09-09 13:35:00','2017-09-09 15:19:00',104,7,'Gardner, Adams and Brown',NULL,12),(6,4,'headline','2017-09-09 15:34:00','2017-09-09 16:19:00',45,7,'Gardner, Adams and Brown',NULL,12),(7,5,'special_guest','2017-09-09 18:08:00','2017-09-09 19:12:00',64,25,'Flores PLC',27,NULL),(8,5,'warm up','2017-09-09 19:19:00','2017-09-09 20:14:00',55,25,'Flores PLC',NULL,3),(9,7,'warm up','2017-09-09 02:30:00','2017-09-09 03:50:00',80,8,'Ortiz and Sons',NULL,10),(10,7,'warm up','2017-09-09 04:01:00','2017-09-09 05:41:00',100,8,'Ortiz and Sons',NULL,1),(11,8,'warm up','2017-09-09 06:40:00','2017-09-09 08:06:00',86,27,'Valdez-Bailey',NULL,9),(12,9,'finale','2017-09-10 09:33:00','2017-09-10 11:28:00',115,5,'Kane Ltd',NULL,10),(13,10,'warm up','2017-09-10 13:49:00','2017-09-10 15:20:00',91,29,'Ortiz, York and Young',NULL,2),(14,11,'special_guest','2017-09-10 18:58:00','2017-09-10 20:21:00',83,19,'Vega, Hill and Cabrera',NULL,6),(15,12,'finale','2017-09-11 09:11:00','2017-09-11 09:56:00',45,21,'Jones PLC',NULL,8),(16,12,'warm up','2017-09-11 10:09:00','2017-09-11 11:11:00',62,21,'Jones PLC',NULL,9),(17,13,'warm up','2017-09-11 13:45:00','2017-09-11 15:45:00',120,19,'Vega, Hill and Cabrera',21,NULL),(18,13,'finale','2017-09-11 15:56:00','2017-09-11 16:52:00',56,19,'Vega, Hill and Cabrera',NULL,14),(19,14,'finale','2017-09-11 17:48:00','2017-09-11 18:35:00',47,25,'Flores PLC',29,NULL),(20,14,'warm up','2017-09-11 18:40:00','2017-09-11 20:30:00',110,25,'Flores PLC',34,NULL),(21,16,'headline','2017-09-11 02:04:00','2017-09-11 02:37:00',33,21,'Jones PLC',4,NULL),(22,16,'warm up','2017-09-11 02:49:00','2017-09-11 04:19:00',90,21,'Jones PLC',NULL,1),(23,17,'finale','2017-09-11 06:56:00','2017-09-11 08:46:00',110,23,'Simmons Inc',NULL,9),(24,18,'special_guest','2017-09-12 09:26:00','2017-09-12 11:17:00',111,18,'James-Nicholson',NULL,3),(25,19,'warm up','2017-09-12 13:06:00','2017-09-12 14:58:00',112,20,'Adams-Scott',NULL,5),(26,20,'special_guest','2017-09-12 17:54:00','2017-09-12 19:33:00',99,22,'Ryan Group',NULL,5),(27,22,'headline','2017-09-12 01:12:00','2017-09-12 01:58:00',46,9,'Jacobson-Warren',NULL,12),(28,22,'warm up','2017-09-12 02:11:00','2017-09-12 04:07:00',116,9,'Jacobson-Warren',NULL,15),(29,23,'headline','2017-09-12 05:50:00','2017-09-12 07:18:00',88,26,'Perry PLC',18,NULL),(30,23,'special_guest','2017-09-12 07:24:00','2017-09-12 09:12:00',108,26,'Perry PLC',NULL,3),(31,24,'special_guest','2017-09-12 10:47:00','2017-09-12 11:58:00',71,23,'Simmons Inc',4,NULL),(32,24,'headline','2017-09-12 12:07:00','2017-09-12 12:38:00',31,23,'Simmons Inc',NULL,5),(33,24,'headline','2017-09-12 12:53:00','2017-09-12 14:09:00',76,23,'Simmons Inc',8,NULL),(34,25,'warm up','2017-09-12 15:55:00','2017-09-12 16:30:00',35,2,'Day PLC',NULL,15),(35,25,'headline','2017-09-12 16:39:00','2017-09-12 17:48:00',69,2,'Day PLC',NULL,4),(36,27,'headline','2018-09-03 08:54:00','2018-09-03 09:50:00',56,14,'Gordon PLC',NULL,4),(37,27,'warm up','2018-09-03 09:56:00','2018-09-03 10:52:00',56,14,'Gordon PLC',36,NULL),(38,28,'finale','2018-09-03 13:53:00','2018-09-03 15:52:00',119,12,'Hancock-Fuller',24,NULL),(39,29,'warm up','2018-09-04 09:10:00','2018-09-04 10:26:00',76,4,'Perez, Young and Thompson',17,NULL),(40,29,'special_guest','2018-09-04 10:34:00','2018-09-04 11:43:00',69,4,'Perez, Young and Thompson',34,NULL),(41,30,'warm up','2018-09-04 13:11:00','2018-09-04 15:09:00',118,9,'Jacobson-Warren',30,NULL),(42,30,'special_guest','2018-09-04 15:24:00','2018-09-04 16:00:00',36,9,'Jacobson-Warren',NULL,15),(43,31,'special_guest','2018-09-04 16:57:00','2018-09-04 17:27:00',30,18,'James-Nicholson',NULL,12),(44,32,'warm up','2018-09-05 08:25:00','2018-09-05 09:53:00',88,23,'Simmons Inc',19,NULL),(45,32,'headline','2018-09-05 10:08:00','2018-09-05 11:33:00',85,23,'Simmons Inc',NULL,11),(46,33,'headline','2018-09-05 12:32:00','2018-09-05 13:16:00',44,21,'Jones PLC',8,NULL),(47,34,'special_guest','2018-09-06 08:39:00','2018-09-06 09:34:00',55,20,'Adams-Scott',NULL,6),(48,34,'special_guest','2018-09-06 09:41:00','2018-09-06 10:51:00',70,20,'Adams-Scott',NULL,7),(49,34,'headline','2018-09-06 10:58:00','2018-09-06 11:51:00',53,20,'Adams-Scott',2,NULL),(50,35,'warm up','2018-09-06 13:09:00','2018-09-06 14:03:00',54,9,'Jacobson-Warren',35,NULL),(51,35,'finale','2018-09-06 14:14:00','2018-09-06 16:02:00',108,9,'Jacobson-Warren',NULL,12),(52,36,'headline','2018-09-07 08:59:00','2018-09-07 10:12:00',73,30,'Holmes-Cook',NULL,1),(53,36,'finale','2018-09-07 10:26:00','2018-09-07 12:26:00',120,30,'Holmes-Cook',NULL,12),(54,37,'warm up','2018-09-07 13:19:00','2018-09-07 13:56:00',37,27,'Valdez-Bailey',31,NULL),(55,38,'finale','2018-09-07 17:24:00','2018-09-07 19:08:00',104,22,'Ryan Group',NULL,1),(56,38,'headline','2018-09-07 19:14:00','2018-09-07 20:11:00',57,22,'Ryan Group',18,NULL),(57,40,'warm up','2018-09-07 02:14:00','2018-09-07 03:02:00',48,27,'Valdez-Bailey',NULL,12),(58,40,'finale','2018-09-07 03:10:00','2018-09-07 03:58:00',48,27,'Valdez-Bailey',NULL,11),(59,41,'warm up','2019-08-21 09:33:00','2019-08-21 10:19:00',46,2,'Day PLC',42,NULL),(60,41,'special_guest','2019-08-21 10:33:00','2019-08-21 11:58:00',85,2,'Day PLC',NULL,10),(61,42,'warm up','2019-08-21 14:17:00','2019-08-21 15:26:00',69,27,'Valdez-Bailey',NULL,7),(62,42,'warm up','2019-08-21 15:37:00','2019-08-21 16:44:00',67,27,'Valdez-Bailey',NULL,4),(63,43,'finale','2019-08-22 09:02:00','2019-08-22 10:46:00',104,13,'Ellis-Lee',NULL,5),(64,44,'special_guest','2019-08-22 13:06:00','2019-08-22 14:55:00',109,26,'Perry PLC',NULL,12),(65,44,'special_guest','2019-08-22 15:04:00','2019-08-22 15:45:00',41,26,'Perry PLC',NULL,14),(66,45,'special_guest','2019-08-22 16:46:00','2019-08-22 18:41:00',115,8,'Ortiz and Sons',39,NULL),(67,47,'special_guest','2019-08-22 02:13:00','2019-08-22 03:14:00',61,7,'Gardner, Adams and Brown',NULL,5),(68,47,'headline','2019-08-22 03:28:00','2019-08-22 05:26:00',118,7,'Gardner, Adams and Brown',NULL,4),(69,48,'headline','2019-08-22 07:23:00','2019-08-22 09:23:00',120,12,'Hancock-Fuller',NULL,3),(70,49,'special_guest','2019-08-22 12:07:00','2019-08-22 12:52:00',45,14,'Gordon PLC',NULL,2),(71,49,'warm up','2019-08-22 13:01:00','2019-08-22 14:22:00',81,14,'Gordon PLC',NULL,6),(72,50,'headline','2019-08-22 17:05:00','2019-08-22 17:55:00',50,12,'Hancock-Fuller',NULL,1),(73,52,'warm up','2019-08-23 08:38:00','2019-08-23 09:53:00',75,29,'Ortiz, York and Young',NULL,15),(74,53,'warm up','2019-08-23 12:35:00','2019-08-23 13:46:00',71,28,'Evans, Stone and Newman',NULL,15),(75,53,'special_guest','2019-08-23 13:53:00','2019-08-23 15:21:00',88,28,'Evans, Stone and Newman',NULL,14),(76,54,'special_guest','2019-08-24 08:21:00','2019-08-24 09:18:00',57,4,'Perez, Young and Thompson',NULL,8),(77,55,'finale','2019-08-24 13:07:00','2019-08-24 13:50:00',43,22,'Ryan Group',14,NULL),(78,55,'special_guest','2019-08-24 14:03:00','2019-08-24 15:05:00',62,22,'Ryan Group',NULL,4),(79,55,'finale','2019-08-24 15:18:00','2019-08-24 16:22:00',64,22,'Ryan Group',39,NULL),(80,56,'headline','2019-08-24 17:43:00','2019-08-24 18:32:00',49,16,'Baker Group',NULL,4),(81,56,'special_guest','2019-08-24 18:42:00','2019-08-24 20:26:00',104,16,'Baker Group',NULL,14),(82,58,'finale','2019-08-24 01:09:00','2019-08-24 02:02:00',53,2,'Day PLC',NULL,9),(83,58,'finale','2019-08-24 02:10:00','2019-08-24 03:48:00',98,2,'Day PLC',48,NULL),(84,59,'headline','2020-07-22 08:26:00','2020-07-22 09:32:00',66,10,'Grant-Martin',35,NULL),(85,60,'headline','2020-07-22 11:59:00','2020-07-22 13:43:00',104,4,'Perez, Young and Thompson',15,NULL),(86,60,'finale','2020-07-22 13:51:00','2020-07-22 14:36:00',45,4,'Perez, Young and Thompson',34,NULL),(87,61,'warm up','2020-07-22 16:48:00','2020-07-22 18:46:00',118,23,'Simmons Inc',14,NULL),(88,63,'headline','2020-07-22 02:34:00','2020-07-22 03:36:00',62,3,'Wheeler Inc',NULL,5),(89,63,'special_guest','2020-07-22 03:44:00','2020-07-22 04:54:00',70,3,'Wheeler Inc',NULL,8),(90,64,'headline','2020-07-22 07:27:00','2020-07-22 08:18:00',51,11,'Brown PLC',16,NULL),(91,64,'warm up','2020-07-22 08:31:00','2020-07-22 09:11:00',40,11,'Brown PLC',NULL,3),(92,65,'warm up','2020-07-22 12:02:00','2020-07-22 12:50:00',48,7,'Gardner, Adams and Brown',NULL,8),(93,66,'warm up','2020-07-23 08:32:00','2020-07-23 09:46:00',74,7,'Gardner, Adams and Brown',NULL,9),(94,66,'headline','2020-07-23 09:53:00','2020-07-23 11:43:00',110,7,'Gardner, Adams and Brown',NULL,10),(95,67,'headline','2020-07-23 13:11:00','2020-07-23 14:13:00',62,28,'Evans, Stone and Newman',NULL,13),(96,68,'headline','2020-07-23 16:39:00','2020-07-23 18:06:00',87,15,'Turner-Jones',NULL,10),(97,68,'headline','2020-07-23 18:13:00','2020-07-23 20:00:00',107,15,'Turner-Jones',NULL,5),(98,70,'warm up','2020-07-23 02:42:00','2020-07-23 04:23:00',101,2,'Day PLC',20,NULL),(99,71,'headline','2020-07-23 07:11:00','2020-07-23 07:41:00',30,11,'Brown PLC',11,NULL),(100,71,'special_guest','2020-07-23 07:54:00','2020-07-23 09:51:00',117,11,'Brown PLC',21,NULL),(101,72,'warm up','2021-09-08 09:20:00','2021-09-08 10:18:00',58,5,'Kane Ltd',29,NULL),(102,72,'headline','2021-09-08 10:33:00','2021-09-08 11:15:00',42,5,'Kane Ltd',NULL,13),(103,73,'warm up','2021-09-08 14:10:00','2021-09-08 15:29:00',79,17,'Johnson, Silva and Chavez',NULL,7),(104,73,'warm up','2021-09-08 15:43:00','2021-09-08 17:19:00',96,17,'Johnson, Silva and Chavez',17,NULL),(105,74,'warm up','2021-09-08 18:52:00','2021-09-08 20:36:00',104,4,'Perez, Young and Thompson',NULL,15),(106,76,'headline','2021-09-08 03:47:00','2021-09-08 05:17:00',90,15,'Turner-Jones',NULL,6),(107,76,'headline','2021-09-08 05:25:00','2021-09-08 06:25:00',60,15,'Turner-Jones',NULL,11),(108,77,'special_guest','2021-09-08 07:40:00','2021-09-08 08:23:00',43,5,'Kane Ltd',NULL,10),(109,77,'special_guest','2021-09-08 08:37:00','2021-09-08 09:48:00',71,5,'Kane Ltd',NULL,7),(110,78,'finale','2021-09-08 11:37:00','2021-09-08 13:11:00',94,8,'Ortiz and Sons',17,NULL),(111,78,'warm up','2021-09-08 13:18:00','2021-09-08 14:44:00',86,8,'Ortiz and Sons',30,NULL),(112,79,'headline','2021-09-09 08:48:00','2021-09-09 10:25:00',97,26,'Perry PLC',NULL,4),(113,80,'warm up','2021-09-09 12:33:00','2021-09-09 14:01:00',88,20,'Adams-Scott',NULL,10),(114,81,'warm up','2021-09-09 16:50:00','2021-09-09 17:20:00',30,12,'Hancock-Fuller',NULL,7),(115,83,'warm up','2021-09-09 01:33:00','2021-09-09 02:16:00',43,15,'Turner-Jones',NULL,2),(116,84,'headline','2021-09-10 08:50:00','2021-09-10 10:50:00',120,6,'White-Anderson',34,NULL),(117,84,'warm up','2021-09-10 10:55:00','2021-09-10 11:50:00',55,6,'White-Anderson',NULL,1),(118,85,'finale','2021-09-10 12:46:00','2021-09-10 14:22:00',96,7,'Gardner, Adams and Brown',37,NULL),(119,85,'headline','2021-09-10 14:37:00','2021-09-10 15:33:00',56,7,'Gardner, Adams and Brown',NULL,8),(120,86,'warm up','2021-09-10 17:57:00','2021-09-10 19:02:00',65,15,'Turner-Jones',NULL,13),(121,86,'finale','2021-09-10 19:12:00','2021-09-10 19:42:00',30,15,'Turner-Jones',NULL,13),(122,88,'headline','2021-09-10 02:20:00','2021-09-10 03:03:00',43,27,'Valdez-Bailey',NULL,8),(123,88,'special_guest','2021-09-10 03:18:00','2021-09-10 04:18:00',60,27,'Valdez-Bailey',NULL,13),(124,88,'headline','2021-09-10 04:26:00','2021-09-10 05:05:00',39,27,'Valdez-Bailey',NULL,6),(125,89,'warm up','2021-09-10 06:21:00','2021-09-10 07:37:00',76,27,'Valdez-Bailey',NULL,13),(126,89,'warm up','2021-09-10 07:50:00','2021-09-10 08:45:00',55,27,'Valdez-Bailey',4,NULL),(127,90,'warm up','2021-09-10 10:44:00','2021-09-10 12:13:00',89,11,'Brown PLC',NULL,13),(128,90,'warm up','2021-09-10 12:21:00','2021-09-10 13:10:00',49,11,'Brown PLC',NULL,10),(129,91,'finale','2021-09-11 08:57:00','2021-09-11 10:23:00',86,1,'Mckee-Bass',NULL,2),(130,91,'finale','2021-09-11 10:34:00','2021-09-11 11:05:00',31,1,'Mckee-Bass',12,NULL),(131,92,'special_guest','2021-09-12 08:55:00','2021-09-12 10:03:00',68,8,'Ortiz and Sons',NULL,12),(132,92,'special_guest','2021-09-12 10:10:00','2021-09-12 12:01:00',111,8,'Ortiz and Sons',NULL,14),(133,93,'special_guest','2021-09-12 13:42:00','2021-09-12 14:58:00',76,30,'Holmes-Cook',21,NULL),(134,94,'finale','2021-09-12 17:34:00','2021-09-12 18:14:00',40,19,'Vega, Hill and Cabrera',NULL,15),(135,94,'headline','2021-09-12 18:20:00','2021-09-12 20:20:00',120,19,'Vega, Hill and Cabrera',39,NULL),(136,96,'headline','2021-09-12 03:13:00','2021-09-12 03:43:00',30,24,'Davis LLC',NULL,7),(137,96,'finale','2021-09-12 03:53:00','2021-09-12 05:04:00',71,24,'Davis LLC',NULL,11),(138,97,'special_guest','2021-09-12 07:36:00','2021-09-12 09:24:00',108,14,'Gordon PLC',NULL,4),(139,97,'warm up','2021-09-12 09:34:00','2021-09-12 10:37:00',63,14,'Gordon PLC',6,NULL),(140,98,'headline','2021-09-12 11:29:00','2021-09-12 12:55:00',86,30,'Holmes-Cook',NULL,5),(141,99,'special_guest','2021-09-12 15:06:00','2021-09-12 16:39:00',93,20,'Adams-Scott',23,NULL),(142,99,'special_guest','2021-09-12 16:51:00','2021-09-12 17:41:00',50,20,'Adams-Scott',NULL,11),(143,100,'headline','2021-09-12 19:09:00','2021-09-12 19:50:00',41,12,'Hancock-Fuller',8,NULL),(144,100,'warm up','2021-09-12 20:00:00','2021-09-12 20:38:00',38,12,'Hancock-Fuller',NULL,4),(145,101,'warm up','2022-09-20 08:39:00','2022-09-20 09:44:00',65,22,'Ryan Group',7,NULL),(146,102,'special_guest','2022-09-20 13:51:00','2022-09-20 15:41:00',110,2,'Day PLC',NULL,7),(147,102,'warm up','2022-09-20 15:55:00','2022-09-20 16:59:00',64,2,'Day PLC',NULL,11),(148,103,'finale','2022-09-20 17:59:00','2022-09-20 19:37:00',98,17,'Johnson, Silva and Chavez',29,NULL),(149,103,'finale','2022-09-20 19:46:00','2022-09-20 20:52:00',66,17,'Johnson, Silva and Chavez',NULL,15),(150,105,'finale','2022-09-20 02:25:00','2022-09-20 03:46:00',81,10,'Grant-Martin',NULL,11),(151,106,'warm up','2022-09-21 09:01:00','2022-09-21 10:23:00',82,10,'Grant-Martin',NULL,1),(152,107,'special_guest','2022-09-21 13:25:00','2022-09-21 14:59:00',94,6,'White-Anderson',NULL,6),(153,108,'special_guest','2022-09-21 17:42:00','2022-09-21 19:40:00',118,23,'Simmons Inc',NULL,9),(154,108,'special_guest','2022-09-21 19:52:00','2022-09-21 20:27:00',35,23,'Simmons Inc',NULL,1),(155,110,'special_guest','2022-09-21 03:25:00','2022-09-21 04:01:00',36,19,'Vega, Hill and Cabrera',32,NULL),(156,110,'finale','2022-09-21 04:07:00','2022-09-21 04:57:00',50,19,'Vega, Hill and Cabrera',NULL,6),(157,111,'finale','2022-09-21 07:22:00','2022-09-21 08:15:00',53,27,'Valdez-Bailey',25,NULL),(158,111,'headline','2022-09-21 08:26:00','2022-09-21 10:22:00',116,27,'Valdez-Bailey',NULL,2),(159,112,'special_guest','2022-09-21 11:28:00','2022-09-21 12:27:00',59,10,'Grant-Martin',28,NULL),(160,113,'warm up','2022-09-21 15:14:00','2022-09-21 16:36:00',82,23,'Simmons Inc',NULL,3),(161,114,'warm up','2022-09-21 19:16:00','2022-09-21 20:14:00',58,3,'Wheeler Inc',NULL,14),(162,114,'special_guest','2022-09-21 20:29:00','2022-09-21 22:09:00',100,3,'Wheeler Inc',19,NULL),(163,115,'special_guest','2023-08-05 08:23:00','2023-08-05 08:53:00',30,5,'Kane Ltd',NULL,5),(164,115,'warm up','2023-08-05 09:01:00','2023-08-05 09:53:00',52,5,'Kane Ltd',NULL,13),(165,116,'special_guest','2023-08-05 12:37:00','2023-08-05 14:25:00',108,9,'Jacobson-Warren',48,NULL),(166,117,'warm up','2023-08-05 17:06:00','2023-08-05 18:57:00',111,14,'Gordon PLC',NULL,7),(167,119,'warm up','2023-08-05 00:54:00','2023-08-05 01:39:00',45,26,'Perry PLC',6,NULL),(168,120,'headline','2023-08-05 04:53:00','2023-08-05 06:37:00',104,30,'Holmes-Cook',NULL,12),(169,120,'finale','2023-08-05 06:43:00','2023-08-05 07:15:00',32,30,'Holmes-Cook',NULL,8),(170,121,'special_guest','2023-08-05 09:13:00','2023-08-05 10:04:00',51,17,'Johnson, Silva and Chavez',NULL,3),(171,121,'headline','2023-08-05 10:15:00','2023-08-05 11:18:00',63,17,'Johnson, Silva and Chavez',15,NULL),(172,122,'special_guest','2023-08-05 13:02:00','2023-08-05 13:42:00',40,9,'Jacobson-Warren',NULL,9),(173,123,'headline','2023-08-05 16:54:00','2023-08-05 18:04:00',70,16,'Baker Group',24,NULL),(174,123,'headline','2023-08-05 18:19:00','2023-08-05 19:55:00',96,16,'Baker Group',NULL,6),(175,124,'warm up','2023-08-06 08:32:00','2023-08-06 10:23:00',111,5,'Kane Ltd',NULL,3),(176,125,'headline','2023-08-06 12:10:00','2023-08-06 12:58:00',48,22,'Ryan Group',NULL,1),(177,125,'headline','2023-08-06 13:13:00','2023-08-06 14:02:00',49,22,'Ryan Group',NULL,3),(178,126,'warm up','2023-08-06 17:14:00','2023-08-06 18:35:00',81,27,'Valdez-Bailey',6,NULL),(179,128,'warm up','2023-08-06 01:45:00','2023-08-06 03:41:00',116,5,'Kane Ltd',NULL,7),(180,129,'warm up','2023-08-06 06:14:00','2023-08-06 07:05:00',51,29,'Ortiz, York and Young',6,NULL),(181,130,'finale','2024-08-28 09:17:00','2024-08-28 11:13:00',116,22,'Ryan Group',37,NULL),(182,131,'special_guest','2024-08-28 13:35:00','2024-08-28 15:01:00',86,2,'Day PLC',48,NULL),(183,132,'headline','2024-08-28 18:21:00','2024-08-28 19:02:00',41,28,'Evans, Stone and Newman',NULL,9),(184,132,'headline','2024-08-28 19:07:00','2024-08-28 19:38:00',31,28,'Evans, Stone and Newman',2,NULL),(185,134,'finale','2024-08-28 02:59:00','2024-08-28 03:41:00',42,26,'Perry PLC',NULL,9),(186,135,'finale','2024-08-29 08:21:00','2024-08-29 09:43:00',82,17,'Johnson, Silva and Chavez',NULL,4),(187,136,'headline','2024-08-29 11:57:00','2024-08-29 13:24:00',87,6,'White-Anderson',6,NULL),(188,137,'finale','2024-08-29 16:19:00','2024-08-29 17:09:00',50,21,'Jones PLC',NULL,8),(189,138,'headline','2024-08-29 20:51:00','2024-08-29 22:04:00',73,8,'Ortiz and Sons',NULL,3),(190,138,'special_guest','2024-08-29 22:17:00','2024-08-29 22:48:00',31,8,'Ortiz and Sons',NULL,13),(191,139,'special_guest','2024-08-30 08:20:00','2024-08-30 09:47:00',87,16,'Baker Group',44,NULL),(192,140,'headline','2024-08-30 12:23:00','2024-08-30 14:17:00',114,24,'Davis LLC',NULL,5),(193,141,'special_guest','2024-08-31 08:32:00','2024-08-31 09:25:00',53,24,'Davis LLC',NULL,15),(194,141,'finale','2024-08-31 09:34:00','2024-08-31 11:25:00',111,24,'Davis LLC',5,NULL),(195,142,'warm up','2024-08-31 13:15:00','2024-08-31 15:00:00',105,12,'Hancock-Fuller',NULL,15),(196,143,'headline','2024-08-31 17:18:00','2024-08-31 18:39:00',81,19,'Vega, Hill and Cabrera',50,NULL),(197,144,'warm up','2024-09-01 08:49:00','2024-09-01 10:49:00',120,3,'Wheeler Inc',NULL,5),(198,145,'special_guest','2024-09-01 13:24:00','2024-09-01 14:51:00',87,19,'Vega, Hill and Cabrera',13,NULL),(199,146,'special_guest','2024-09-01 18:06:00','2024-09-01 18:56:00',50,14,'Gordon PLC',21,NULL),(200,148,'headline','2024-09-01 02:43:00','2024-09-01 03:33:00',50,6,'White-Anderson',38,NULL),(201,148,'headline','2024-09-01 03:41:00','2024-09-01 04:56:00',75,6,'White-Anderson',NULL,11),(202,148,'special_guest','2024-09-01 05:01:00','2024-09-01 05:55:00',54,6,'White-Anderson',NULL,9),(203,149,'special_guest','2024-09-01 06:53:00','2024-09-01 08:15:00',82,21,'Jones PLC',11,NULL),(204,149,'headline','2024-09-01 08:21:00','2024-09-01 09:33:00',72,21,'Jones PLC',NULL,12),(205,150,'headline','2025-08-24 08:52:00','2025-08-24 09:57:00',65,21,'Jones PLC',NULL,12),(206,150,'headline','2025-08-24 10:10:00','2025-08-24 11:15:00',65,21,'Jones PLC',NULL,1),(207,151,'warm up','2025-08-24 12:35:00','2025-08-24 13:19:00',44,13,'Ellis-Lee',35,NULL),(208,152,'finale','2025-08-24 17:20:00','2025-08-24 18:56:00',96,8,'Ortiz and Sons',42,NULL),(209,154,'special_guest','2025-08-24 02:19:00','2025-08-24 03:54:00',95,20,'Adams-Scott',NULL,12),(210,155,'warm up','2025-08-24 07:05:00','2025-08-24 08:59:00',114,26,'Perry PLC',NULL,5),(211,155,'headline','2025-08-24 09:11:00','2025-08-24 10:37:00',86,26,'Perry PLC',NULL,4),(212,156,'warm up','2025-08-24 11:04:00','2025-08-24 11:47:00',43,3,'Wheeler Inc',NULL,15),(213,157,'finale','2025-08-24 14:51:00','2025-08-24 15:25:00',34,1,'Mckee-Bass',NULL,8),(214,157,'special_guest','2025-08-24 15:36:00','2025-08-24 16:56:00',80,1,'Mckee-Bass',NULL,2),(215,158,'finale','2025-08-25 09:34:00','2025-08-25 10:54:00',80,19,'Vega, Hill and Cabrera',NULL,8),(216,158,'warm up','2025-08-25 11:07:00','2025-08-25 12:14:00',67,19,'Vega, Hill and Cabrera',NULL,10),(217,159,'warm up','2025-08-25 14:19:00','2025-08-25 15:10:00',51,11,'Brown PLC',NULL,8),(218,159,'finale','2025-08-25 15:21:00','2025-08-25 17:19:00',118,11,'Brown PLC',NULL,6),(219,160,'special_guest','2025-08-25 17:54:00','2025-08-25 19:36:00',102,22,'Ryan Group',NULL,5),(220,162,'special_guest','2025-08-25 01:39:00','2025-08-25 02:29:00',50,19,'Vega, Hill and Cabrera',NULL,14),(221,162,'headline','2025-08-25 02:38:00','2025-08-25 04:00:00',82,19,'Vega, Hill and Cabrera',NULL,2),(222,162,'warm up','2025-08-25 04:15:00','2025-08-25 05:16:00',61,19,'Vega, Hill and Cabrera',NULL,2),(223,163,'finale','2025-08-25 06:47:00','2025-08-25 08:26:00',99,3,'Wheeler Inc',NULL,12),(224,163,'headline','2025-08-25 08:33:00','2025-08-25 09:25:00',52,3,'Wheeler Inc',NULL,15),(225,164,'finale','2025-08-26 08:32:00','2025-08-26 10:16:00',104,13,'Ellis-Lee',NULL,14),(226,165,'warm up','2025-08-26 12:45:00','2025-08-26 13:46:00',61,7,'Gardner, Adams and Brown',NULL,6),(227,165,'special_guest','2025-08-26 13:54:00','2025-08-26 14:38:00',44,7,'Gardner, Adams and Brown',NULL,2),(228,166,'warm up','2025-08-26 16:48:00','2025-08-26 17:31:00',43,5,'Kane Ltd',NULL,4),(229,167,'special_guest','2026-09-26 08:23:00','2026-09-26 09:22:00',59,4,'Perez, Young and Thompson',NULL,14),(230,167,'finale','2026-09-26 09:30:00','2026-09-26 10:15:00',45,4,'Perez, Young and Thompson',39,NULL),(231,167,'warm up','2026-09-26 10:29:00','2026-09-26 11:30:00',61,4,'Perez, Young and Thompson',NULL,3),(232,168,'finale','2026-09-26 12:56:00','2026-09-26 14:34:00',98,24,'Davis LLC',NULL,4),(233,168,'headline','2026-09-26 14:42:00','2026-09-26 16:00:00',78,24,'Davis LLC',NULL,9),(234,169,'warm up','2026-09-26 17:08:00','2026-09-26 18:21:00',73,10,'Grant-Martin',34,NULL),(235,169,'finale','2026-09-26 18:30:00','2026-09-26 19:58:00',88,10,'Grant-Martin',NULL,9),(236,171,'special_guest','2026-09-26 02:13:00','2026-09-26 03:01:00',48,27,'Valdez-Bailey',22,NULL),(237,171,'finale','2026-09-26 03:07:00','2026-09-26 04:31:00',84,27,'Valdez-Bailey',NULL,1),(238,172,'special_guest','2026-09-26 06:20:00','2026-09-26 07:52:00',92,14,'Gordon PLC',27,NULL),(239,172,'headline','2026-09-26 08:01:00','2026-09-26 09:42:00',101,14,'Gordon PLC',34,NULL),(240,173,'finale','2026-09-26 11:15:00','2026-09-26 12:06:00',51,30,'Holmes-Cook',NULL,15),(241,174,'warm up','2026-09-27 09:09:00','2026-09-27 09:42:00',33,6,'White-Anderson',NULL,15),(242,174,'special_guest','2026-09-27 09:52:00','2026-09-27 10:42:00',50,6,'White-Anderson',NULL,3),(243,175,'warm up','2026-09-27 12:44:00','2026-09-27 14:32:00',108,7,'Gardner, Adams and Brown',NULL,11),(244,175,'finale','2026-09-27 14:42:00','2026-09-27 15:48:00',66,7,'Gardner, Adams and Brown',NULL,13),(245,176,'headline','2026-09-28 09:23:00','2026-09-28 10:36:00',73,15,'Turner-Jones',NULL,6),(246,176,'warm up','2026-09-28 10:51:00','2026-09-28 11:25:00',34,15,'Turner-Jones',32,NULL),(247,177,'finale','2026-09-28 13:25:00','2026-09-28 15:01:00',96,28,'Evans, Stone and Newman',NULL,6),(248,177,'headline','2026-09-28 15:15:00','2026-09-28 16:58:00',103,28,'Evans, Stone and Newman',13,NULL),(249,178,'headline','2026-09-28 17:39:00','2026-09-28 19:38:00',119,8,'Ortiz and Sons',6,NULL),(250,178,'special_guest','2026-09-28 19:48:00','2026-09-28 20:21:00',33,8,'Ortiz and Sons',NULL,2),(251,178,'headline','2026-09-28 20:32:00','2026-09-28 21:09:00',37,8,'Ortiz and Sons',NULL,6),(252,180,'finale','2026-09-29 08:23:00','2026-09-29 09:48:00',85,14,'Gordon PLC',45,NULL),(253,181,'warm up','2026-09-29 13:08:00','2026-09-29 13:43:00',35,17,'Johnson, Silva and Chavez',5,NULL),(254,182,'warm up','2026-09-29 17:14:00','2026-09-29 19:13:00',119,16,'Baker Group',NULL,15);
/*!40000 ALTER TABLE `performances` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
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
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_check_consecutive_years_artists
BEFORE INSERT ON performances
FOR EACH ROW
BEGIN
    DECLARE fest_year INT;
    DECLARE found_current_festival INT DEFAULT 0;
    DECLARE prev_year_exists INT DEFAULT 0;
    DECLARE curr_num INT DEFAULT 0;

    IF NEW.artist_ID IS NOT NULL THEN

        
        SELECT YEAR(f.starting_date) INTO fest_year
        FROM events e
        JOIN festival f ON e.festival_ID = f.festival_ID
        WHERE e.event_ID = NEW.event_ID;

        
        SELECT COUNT(*) INTO found_current_festival
        FROM performances p
        JOIN events e ON p.event_ID = e.event_ID
        WHERE p.artist_ID = NEW.artist_ID
          AND YEAR((SELECT starting_date FROM festival WHERE festival_ID = e.festival_ID)) = fest_year;

        IF found_current_festival = 0 THEN

            
            SELECT COUNT(*) INTO prev_year_exists
            FROM performances p
            JOIN events e ON p.event_ID = e.event_ID
            WHERE p.artist_ID = NEW.artist_ID
              AND YEAR((SELECT starting_date FROM festival WHERE festival_ID = e.festival_ID)) = fest_year - 1;

            IF prev_year_exists > 0 THEN
                SELECT num_of_consecutive_years_participating INTO curr_num
                FROM artist
                WHERE artist_ID = NEW.artist_ID;

                IF curr_num >= 3 THEN
                    SIGNAL SQLSTATE '45001'
                    SET MESSAGE_TEXT = 'The artist cannot participate in more than 3 consecutive years.';
                ELSE
                    UPDATE artist
                    SET num_of_consecutive_years_participating = curr_num + 1
                    WHERE artist_ID = NEW.artist_ID;
                END IF;
            ELSE
                
                UPDATE artist
                SET num_of_consecutive_years_participating = 1
                WHERE artist_ID = NEW.artist_ID;
            END IF;

        END IF;
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
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_check_consecutive_years_groups
BEFORE INSERT ON performances
FOR EACH ROW
BEGIN
    DECLARE fest_year INT;
    DECLARE found_current_festival INT DEFAULT 0;
    DECLARE prev_year_exists INT DEFAULT 0;
    DECLARE curr_num INT DEFAULT 0;

    IF NEW.group_ID IS NOT NULL THEN

        
        SELECT YEAR((
            SELECT f.starting_date
            FROM festival f
            WHERE f.festival_ID = (
                SELECT e.festival_ID
                FROM events e
                WHERE e.event_ID = NEW.event_ID
            )
        )) INTO fest_year;

        
        SELECT COUNT(*) INTO found_current_festival
        FROM performances p
        WHERE p.group_ID = NEW.group_ID
          AND (
              SELECT YEAR((
                  SELECT f.starting_date
                  FROM festival f
                  WHERE f.festival_ID = (
                      SELECT e.festival_ID
                      FROM events e
                      WHERE e.event_ID = p.event_ID
                  )
              ))
          ) = fest_year;

        IF found_current_festival = 0 THEN

            
            SELECT COUNT(*) INTO prev_year_exists
            FROM performances p
            WHERE p.group_ID = NEW.group_ID
              AND (
                  SELECT YEAR((
                      SELECT f.starting_date
                      FROM festival f
                      WHERE f.festival_ID = (
                          SELECT e.festival_ID
                          FROM events e
                          WHERE e.event_ID = p.event_ID
                      )
                  ))
              ) = fest_year - 1;

            IF prev_year_exists > 0 THEN
                SELECT num_of_consecutive_years_participating INTO curr_num
                FROM `group`
                WHERE group_ID = NEW.group_ID;

                IF curr_num >= 3 THEN
                    SIGNAL SQLSTATE '45002'
                    SET MESSAGE_TEXT = 'The group cannot participate in more than 3 consecutive years.';
                ELSE
                    UPDATE `group`
                    SET num_of_consecutive_years_participating = curr_num + 1
                    WHERE group_ID = NEW.group_ID;
                END IF;
            ELSE
                
                UPDATE `group`
                SET num_of_consecutive_years_participating = 1
                WHERE group_ID = NEW.group_ID;
            END IF;

        END IF;
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
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER prevent_overlapping_performances
BEFORE INSERT ON performances
FOR EACH ROW
BEGIN
    DECLARE conflict_count INT;

    SELECT COUNT(*) INTO conflict_count
    FROM performances p
    WHERE p.event_ID = NEW.event_ID
      AND p.building_ID = NEW.building_ID
      AND (
            p.performance_start_time < NEW.performance_end_time AND
            p.performance_end_time > NEW.performance_start_time
          );

    IF conflict_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Overlapping performance detected in the same building and event.';
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
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER prevent_artist_group_overlap
BEFORE INSERT ON performances
FOR EACH ROW
BEGIN
    DECLARE overlap_count INT;

    SELECT COUNT(*) INTO overlap_count
    FROM performances p
    WHERE (
              (NEW.artist_ID IS NOT NULL AND p.artist_ID = NEW.artist_ID)
           OR (NEW.group_ID IS NOT NULL AND p.group_ID = NEW.group_ID)
          )
      AND (
           p.performance_start_time < NEW.performance_end_time AND
           p.performance_end_time > NEW.performance_start_time
      );

    IF overlap_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Artist or group has an overlapping performance.';
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
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER prevent_artist_group_overlap_update
BEFORE UPDATE ON performances
FOR EACH ROW
BEGIN
    DECLARE overlap_count INT;

    SELECT COUNT(*) INTO overlap_count
    FROM performances p
    WHERE p.performance_ID != NEW.performance_ID
      AND (
              (NEW.artist_ID IS NOT NULL AND p.artist_ID = NEW.artist_ID)
           OR (NEW.group_ID IS NOT NULL AND p.group_ID = NEW.group_ID)
          )
      AND (
           p.performance_start_time < NEW.performance_end_time AND
           p.performance_end_time > NEW.performance_start_time
      );

    IF overlap_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Artist or group has an overlapping performance (on update).';
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
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
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
  PRIMARY KEY (`personel_ID`),
  KEY `idx_personel_expertise` (`expertise_status`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personel`
--

LOCK TABLES `personel` WRITE;
/*!40000 ALTER TABLE `personel` DISABLE KEYS */;
INSERT INTO `personel` VALUES (1,'Meghan','Giles',55,'bensontrevor@example.com','+1-631-621-5796x3562','intern'),(2,'Gregory','Lee',35,'bradleyeddie@example.org','+1-812-803-1892','intern'),(3,'Christine','Serrano',47,'joshuarodriguez@example.com','995.302.9219x0433','intern'),(4,'Michael','Oneal',57,'evansronald@example.org','433.245.0699','experienced'),(5,'Sara','Thompson',50,'suzannewebb@example.org','(909)906-3644','beginer'),(6,'Kenneth','Hall',43,'parkersara@example.net','001-911-498-9500x985','intern'),(7,'Aaron','Brown',60,'paul79@example.com','(518)964-9596x9564','intermidiate'),(8,'Joseph','Thornton',35,'gparker@example.com','962.967.7859x93674','intermidiate'),(9,'Victoria','Wall',32,'shodge@example.org','943-692-6249x2299','beginer'),(10,'John','Wilson',52,'jacob05@example.org','484-519-6571x28239','beginer'),(11,'Eric','Mann',55,'ballardjenna@example.com','632-540-6295x04972','very_experienced'),(12,'Angie','Day',46,'huntmegan@example.com','(997)294-1456','experienced'),(13,'Matthew','Burton',39,'dwilliams@example.com','883-946-3730x606','beginer'),(14,'Emily','Shelton',21,'bryan40@example.com','529-748-3483x3667','intern'),(15,'Michael','Hall',48,'kylereilly@example.net','9644140611','intern'),(16,'Wendy','Rojas',35,'egarcia@example.com','328-430-2583x5873','beginer'),(17,'Bryce','Espinoza',26,'xdonaldson@example.org','3789362288','intermidiate'),(18,'Joanna','May',34,'jmeza@example.org','639-260-9339x871','very_experienced'),(19,'John','Mcmillan',23,'kevin47@example.net','001-662-594-4580x261','experienced'),(20,'Michele','Carlson',25,'hhorne@example.com','+1-582-247-6745x4842','experienced'),(21,'Shirley','Bauer',57,'gregory08@example.net','001-285-205-0242','experienced'),(22,'Deborah','Kidd',60,'kwood@example.org','454-316-4856x406','experienced'),(23,'Erik','Johnson',28,'sonyapowell@example.com','(960)618-3555','very_experienced'),(24,'Anna','Mcdonald',43,'ramireztaylor@example.com','753.659.6745x83280','beginer'),(25,'Paul','Robinson',46,'ilewis@example.net','+1-695-251-8929','beginer'),(26,'Catherine','Hoffman',34,'macklaura@example.net','(598)486-2935x9656','intermidiate'),(27,'Michelle','Richardson',52,'yshelton@example.com','220.988.6359x425','experienced'),(28,'Jesse','Cooke',56,'josefreeman@example.org','+1-711-368-1391x3458','beginer'),(29,'Elizabeth','Parker',32,'reginabell@example.net','001-212-899-5070','intern'),(30,'Rebecca','Robinson',32,'nking@example.com','+1-297-205-6422x8533','intern'),(31,'Mark','Huber',35,'jennysavage@example.net','608-772-9310x367','very_experienced'),(32,'Devin','Roberts',58,'olarson@example.net','658.796.1326x52856','very_experienced'),(33,'Michael','Greene',29,'thomasmontgomery@example.com','215.524.3524','intern'),(34,'Heather','Jones',38,'gcervantes@example.net','397.542.8660x205','intern'),(35,'Richard','Brown',52,'santiagorobert@example.org','5635759429','intermidiate'),(36,'Alan','Jones',25,'stewartchristopher@example.org','001-776-983-6516x769','experienced'),(37,'Derek','Reed',57,'jill21@example.com','001-481-731-3217x323','beginer'),(38,'Anita','Gomez',47,'lynchvanessa@example.com','001-632-862-5333x087','intermidiate'),(39,'Kathryn','Wright',28,'jalexander@example.org','697.573.7099x503','very_experienced'),(40,'Carrie','Stevenson',55,'jennifer17@example.com','290.322.0689','intern'),(41,'Darren','Williams',45,'karen89@example.com','(688)344-9472x587','intern'),(42,'Paul','Henderson',31,'clarkjoseph@example.com','5578786945','beginer'),(43,'Barbara','Hampton',25,'huntwilliam@example.net','4422376789','beginer'),(44,'Christine','Medina',24,'mejiarachel@example.com','(586)501-7659x6729','intermidiate'),(45,'Matthew','Thompson',49,'ryanjimenez@example.com','+1-478-979-1956','very_experienced'),(46,'Virginia','Wilson',57,'elizabethtaylor@example.net','001-852-269-8756x162','experienced'),(47,'Cynthia','Bradley',46,'ymartinez@example.com','625-891-5753x7319','intermidiate'),(48,'Lori','Hughes',25,'reyesmaria@example.com','2407953372','beginer'),(49,'Zachary','Travis',60,'sarahmarsh@example.org','9767577926','very_experienced'),(50,'Erin','David',54,'maria92@example.org','+1-229-392-6696x405','intermidiate'),(51,'Mariah','Lawrence',26,'zfranklin@example.net','606.678.3029','beginer'),(52,'Meagan','Lee',33,'smithkelly@example.net','566.602.0574x4145','beginer'),(53,'Robert','Scott',32,'brian67@example.net','+1-481-546-2218x789','intermidiate'),(54,'Christina','Harris',22,'dperez@example.net','001-819-278-7355','very_experienced'),(55,'David','Jenkins',55,'ttorres@example.org','281.371.2649','very_experienced'),(56,'Benjamin','Kelley',52,'carrollkenneth@example.com','001-594-801-8528','experienced'),(57,'Hannah','Welch',44,'teresaanderson@example.net','001-899-861-8191x738','intermidiate'),(58,'Ashley','Brown',36,'fergusonmichael@example.com','455-526-9982','intermidiate'),(59,'Kelli','Zimmerman',32,'osmith@example.com','617.778.7664x87644','experienced'),(60,'Nancy','Mercer',22,'jeffrey98@example.com','001-577-598-5760x865','experienced'),(61,'John','Miller',40,'igonzales@example.net','3025431283','experienced'),(62,'Jessica','Higgins',32,'kristenbailey@example.net','466-875-1143x96207','very_experienced'),(63,'Robin','Huerta',55,'nicholasschwartz@example.org','+1-893-503-2731x172','beginer'),(64,'Sean','Aguirre',35,'jackrios@example.org','886.951.6172','intern'),(65,'Jennifer','Brown',54,'dyershelley@example.org','338-822-3700x8587','very_experienced'),(66,'Eric','Evans',21,'holmesbarbara@example.com','365-234-6212x571','intern'),(67,'Michelle','Rose',42,'longlarry@example.com','+1-825-485-9472','beginer'),(68,'Stephen','Reynolds',41,'stephen87@example.org','001-665-701-7300x494','intern'),(69,'Clifford','Anderson',39,'alexalexander@example.org','399-224-6514x93662','intermidiate'),(70,'Elizabeth','Flores',37,'andrew61@example.net','915.800.9325','beginer'),(71,'Nicholas','Anderson',49,'vmiller@example.net','001-340-622-0975x914','experienced'),(72,'Christopher','Cunningham',38,'robinsonbrenda@example.net','(495)932-2798x4085','intermidiate'),(73,'Jacqueline','Navarro',43,'lisa82@example.net','+1-503-590-2632x5916','very_experienced'),(74,'Tracy','Cochran',44,'kenneth89@example.com','001-541-241-5345x062','intermidiate'),(75,'Meredith','Barber',55,'wporter@example.net','001-667-737-8970x051','beginer'),(76,'Edward','Jones',25,'wangabigail@example.net','972.458.2665','beginer'),(77,'Michelle','Weber',27,'zvargas@example.com','+1-609-625-0859x1683','very_experienced'),(78,'Jill','Adams',53,'ddoyle@example.net','338.742.0185x550','very_experienced'),(79,'Kristine','Carter',55,'madison83@example.com','(368)940-8056x6327','beginer'),(80,'Kyle','Woods',49,'perryadam@example.net','001-381-378-1219','intern'),(81,'Joseph','Morris',42,'gabriel62@example.net','938-340-0048x436','intermidiate'),(82,'Patricia','Gilmore',48,'sthornton@example.net','277.207.1805','beginer'),(83,'Roberta','Murphy',56,'romerosara@example.com','676.899.1827x9918','intern'),(84,'Lisa','Lopez',57,'karen00@example.net','(715)776-9934','very_experienced'),(85,'Madison','Harris',54,'emily70@example.net','4789467292','intermidiate'),(86,'Daniel','Brady',20,'christopherclarke@example.com','(289)974-3011x0866','experienced'),(87,'Christopher','Rodriguez',52,'sampsonmary@example.org','200.423.7767x905','very_experienced'),(88,'Andrea','Gilbert',60,'james12@example.org','6534601815','intern'),(89,'Donald','Rogers',34,'heather88@example.net','+1-550-740-6443','beginer'),(90,'Timothy','Nelson',22,'fischerrodney@example.net','(897)297-4055','very_experienced'),(91,'Heather','Kramer',42,'qwebster@example.net','387-469-3157x8445','intern'),(92,'Steven','Phillips',35,'pamelatran@example.org','968.948.3160x80508','intern'),(93,'John','Smith',42,'william47@example.com','246-912-2297x949','experienced'),(94,'Alexandra','Martinez',45,'harrisjoshua@example.com','(999)667-2120','intern'),(95,'Arthur','Stark',53,'kristen52@example.com','292-651-2440','beginer'),(96,'Brent','Bradley',33,'sthomas@example.org','513.697.6754x967','beginer'),(97,'Matthew','Baker',52,'carolyn15@example.net','+1-818-846-3945x225','intern'),(98,'Willie','Ellis',41,'williamcameron@example.org','(360)655-3762','experienced'),(99,'Beth','Davis',27,'ccontreras@example.com','+1-431-337-6707x7864','beginer'),(100,'Michael','Rush',60,'donaldadams@example.org','581-340-5066x001','very_experienced'),(101,'Andrew','Tucker',22,'cindy79@example.net','518-431-5224x2757','very_experienced'),(102,'Connie','Miller',47,'pattersonjohn@example.org','206-280-9965x49324','experienced'),(103,'Mario','Webb',38,'janderson@example.org','001-852-557-8904x303','intermidiate'),(104,'Wendy','Williams',60,'erin73@example.com','+1-335-744-5233x7500','very_experienced'),(105,'Matthew','Weiss',56,'jacob55@example.net','001-909-282-2901x589','beginer'),(106,'Hannah','Taylor',20,'burnsjennifer@example.com','2693748945','very_experienced'),(107,'Michelle','Harris',59,'erinscott@example.com','783.755.6410x21462','experienced'),(108,'David','Chandler',53,'pporter@example.org','9978710383','experienced'),(109,'Julie','Campos',29,'pricemonica@example.net','754.544.4192x73433','intern'),(110,'Margaret','Phillips',31,'michelle75@example.org','(374)621-7577x8930','experienced'),(111,'John','Little',30,'ijenkins@example.org','(857)358-6465x32103','intern'),(112,'James','Hunter',57,'jenniferoliver@example.net','(563)472-4375x197','intern'),(113,'Michelle','Chambers',55,'mrogers@example.org','+1-278-476-7265x9878','experienced'),(114,'Kristin','Johnson',37,'debrarusso@example.org','652-756-5961x1348','beginer'),(115,'John','Smith',33,'jmartin@example.org','001-958-339-8080x080','experienced'),(116,'Eric','Small',33,'tiffany09@example.com','001-829-429-6020x139','experienced'),(117,'Connie','Tran',52,'kelsey45@example.net','+1-748-498-0068','experienced'),(118,'Jeffrey','Jackson',53,'kristile@example.com','999-522-7682x45790','beginer'),(119,'Ricky','Allen',22,'garciakathy@example.com','+1-613-463-9759x5862','intermidiate'),(120,'Steven','Robinson',51,'ymiller@example.net','353-274-2587x0502','experienced'),(121,'Jennifer','Cruz',53,'clarkmelanie@example.org','579.927.4461x9772','beginer'),(122,'Jennifer','Espinoza',20,'mariamccarthy@example.com','+1-395-742-3055x556','beginer'),(123,'Charles','Pearson',21,'carol98@example.com','+1-665-783-1443','very_experienced'),(124,'William','Smith',24,'rscott@example.org','348.369.0381','very_experienced'),(125,'Victoria','Richardson',25,'wrightemily@example.org','001-640-379-3001x872','experienced'),(126,'Lorraine','Davis',27,'michael55@example.com','001-847-591-9341x068','intern'),(127,'John','Garcia',49,'tylerwiley@example.org','984-401-9991','very_experienced'),(128,'James','Duncan',26,'erios@example.org','+1-273-324-9498','very_experienced'),(129,'Alejandro','Duncan',30,'jamiewolf@example.net','+1-684-296-8332x7402','intermidiate'),(130,'Robert','Wilson',50,'smithmarissa@example.net','5174339934','very_experienced'),(131,'Desiree','Ramirez',58,'skeller@example.net','001-284-697-6988x351','very_experienced'),(132,'Grace','Bowers',58,'kathy02@example.com','001-865-205-0987x070','experienced'),(133,'Jennifer','Owen',56,'stephen28@example.org','405.277.9354x955','experienced'),(134,'Daniel','Morrison',48,'ogood@example.net','2079449821','intern'),(135,'Anthony','Anderson',58,'conniepotter@example.net','606-516-7496x527','very_experienced'),(136,'Scott','Frank',23,'taylorcynthia@example.org','3328332903','experienced'),(137,'Travis','Richards',28,'taylorkenneth@example.com','+1-956-609-9706x3484','experienced'),(138,'Michele','Chan',54,'kingdavid@example.net','+1-657-909-0260','intermidiate'),(139,'Brian','Scott',38,'dixonelizabeth@example.net','286-876-8038x7946','beginer'),(140,'Jeffrey','Williamson',27,'jennapeters@example.net','001-619-522-3598x559','intern'),(141,'Susan','Salinas',25,'pauledwards@example.com','001-721-304-7456x487','experienced'),(142,'Mandy','Rodriguez',33,'walkerjulia@example.com','634-807-6671x99602','very_experienced'),(143,'Alexis','Mason',38,'caitlin13@example.org','001-549-217-1120','intermidiate'),(144,'Samuel','Tran',30,'woodclifford@example.org','+1-821-432-8830','intern'),(145,'Billy','Collins',20,'barbara39@example.net','001-278-309-6783','beginer'),(146,'Christina','Sanders',27,'sabrina52@example.net','406.463.3143x2207','beginer'),(147,'Douglas','Cooley',42,'lucasclark@example.net','362-312-2582x974','experienced'),(148,'Patrick','Wiley',56,'sgould@example.com','390-448-4711','intermidiate'),(149,'Molly','Davenport',36,'ryan91@example.net','440-944-1695x17356','experienced'),(150,'Richard','Berger',28,'hallkeith@example.net','+1-478-648-8304x7767','beginer'),(151,'Margaret','Scott',30,'michael64@example.net','(824)291-9721x23559','experienced'),(152,'Brian','Allen',52,'bennettrichard@example.org','915.779.9906x88318','intern'),(153,'Justin','Parrish',43,'bmartinez@example.com','8286929913','beginer'),(154,'Sara','Mccoy',36,'daviskimberly@example.org','(710)833-1425','intern'),(155,'Daniel','Rodriguez',29,'lindsayjames@example.com','001-846-663-2089','intern'),(156,'Bradley','Graham',53,'tammy98@example.org','+1-241-800-7373x6122','intern'),(157,'Timothy','Wiggins',49,'jessicajohnson@example.net','347.535.6739x674','experienced'),(158,'Clinton','Davis',48,'jamespowers@example.org','+1-647-570-3313x5513','beginer'),(159,'Heather','Butler',48,'garrettrice@example.org','+1-574-512-2212x7887','beginer'),(160,'Rodney','Carter',24,'aaronortega@example.net','001-600-835-2050x150','very_experienced'),(161,'Mary','Johnson',27,'craig17@example.org','001-245-793-0565','very_experienced'),(162,'Cindy','Gonzales',37,'amybrooks@example.net','948.733.8099','intermidiate'),(163,'Eduardo','Mullins',58,'gregorymoore@example.com','(533)330-2373x51427','experienced'),(164,'Amanda','Guzman',33,'shelia19@example.net','970.781.2361x77927','intermidiate'),(165,'Joshua','Johnson',58,'rose85@example.com','001-429-902-1640','very_experienced'),(166,'Collin','Schultz',46,'rowlandholly@example.net','397.384.2012x362','very_experienced'),(167,'Joshua','Camacho',33,'dwayne31@example.net','359.331.0479x848','beginer'),(168,'Karen','Mcdonald',52,'wwilkinson@example.org','570.981.1381x3701','intermidiate'),(169,'Matthew','Martin',37,'brockbruce@example.org','644-848-6212x43567','beginer'),(170,'Beth','White',29,'wendy19@example.org','(798)654-4383','very_experienced'),(171,'Steven','Williams',38,'stevephillips@example.net','(960)220-9438','intermidiate'),(172,'Carlos','Craig',46,'melissadudley@example.net','2702200671','beginer'),(173,'Thomas','Mccarthy',50,'rcastillo@example.org','+1-641-850-9575x3288','experienced'),(174,'Kevin','Wagner',49,'erica08@example.net','001-242-391-9222x480','experienced'),(175,'April','Thompson',47,'griffinsamantha@example.net','001-620-884-0368x000','intermidiate'),(176,'Amy','Evans',33,'turnervalerie@example.net','(594)945-1384x39190','intern'),(177,'Brendan','Diaz',43,'munozchristopher@example.com','001-726-576-6823x047','intern'),(178,'Susan','Taylor',23,'tanner48@example.net','636-365-8192x26511','intermidiate'),(179,'Larry','Perry',55,'andrea24@example.net','869-659-4077','intern'),(180,'Carolyn','Graves',22,'toddjohnson@example.org','(705)525-6998x9680','intermidiate'),(181,'Elizabeth','Barnes',53,'njones@example.net','234.315.8863x58295','experienced'),(182,'Jeffrey','Santos',48,'ronaldgolden@example.com','972.210.5177','experienced'),(183,'Adrian','Gregory',25,'zrichardson@example.org','(366)612-4292','beginer'),(184,'Ricky','Hendrix',59,'joel21@example.com','001-748-685-3928','very_experienced'),(185,'Richard','Marsh',60,'robert30@example.net','9559414336','very_experienced'),(186,'Donna','Chavez',46,'william76@example.org','915-853-0313','experienced'),(187,'Lisa','Adams',38,'andersonbrian@example.org','+1-344-951-1857x072','intermidiate'),(188,'Claudia','Patterson',34,'apierce@example.com','(736)408-6887x2162','very_experienced'),(189,'Tiffany','Santana',48,'lwilliams@example.org','001-347-883-4701x370','intern'),(190,'Larry','Collins',39,'iwade@example.org','322-350-8127','intermidiate'),(191,'Thomas','Marshall',22,'erichardson@example.org','(368)370-4785','very_experienced'),(192,'Leslie','Gregory',41,'kurt28@example.net','(280)247-9260x8045','intern'),(193,'Michelle','Walter',30,'veronicaduncan@example.org','906-312-6688x913','intern'),(194,'David','Thompson',53,'michelleanderson@example.com','(827)990-8384x6899','intermidiate'),(195,'Joshua','Brown',46,'philip31@example.net','001-204-240-1580x868','experienced'),(196,'Maria','Finley',55,'vharrell@example.org','+1-891-944-1422x7296','experienced'),(197,'Jill','Perry',38,'veronica28@example.net','6045428626','experienced'),(198,'Megan','Orozco',29,'wrightjustin@example.org','+1-741-301-7211x2991','very_experienced'),(199,'William','Ferguson',58,'barberjeremy@example.com','593-289-5783x8829','intern'),(200,'Rebecca','Kane',32,'myang@example.net','902-444-9740','experienced');
/*!40000 ALTER TABLE `personel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `photo_ID` int(11) NOT NULL AUTO_INCREMENT,
  `photo_name` varchar(255) NOT NULL,
  `photo_description` text NOT NULL,
  `artist_ID` int(11) DEFAULT NULL,
  `group_ID` int(11) DEFAULT NULL,
  `performance_ID` int(11) DEFAULT NULL,
  `event_ID` int(11) DEFAULT NULL,
  `festival_ID` int(11) DEFAULT NULL,
  `technical_equipment_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`photo_ID`),
  KEY `artist_ID` (`artist_ID`),
  KEY `group_ID` (`group_ID`),
  KEY `performance_ID` (`performance_ID`),
  KEY `event_ID` (`event_ID`),
  KEY `festival_ID` (`festival_ID`),
  KEY `technical_equipment_ID` (`technical_equipment_ID`),
  CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`artist_ID`) REFERENCES `artist` (`artist_ID`),
  CONSTRAINT `photo_ibfk_2` FOREIGN KEY (`group_ID`) REFERENCES `group` (`group_ID`),
  CONSTRAINT `photo_ibfk_3` FOREIGN KEY (`performance_ID`) REFERENCES `performances` (`performance_ID`),
  CONSTRAINT `photo_ibfk_4` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`),
  CONSTRAINT `photo_ibfk_5` FOREIGN KEY (`festival_ID`) REFERENCES `festival` (`festival_ID`),
  CONSTRAINT `photo_ibfk_6` FOREIGN KEY (`technical_equipment_ID`) REFERENCES `technical_equipment` (`technical_equipment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1,'images\\IMG_1.jpg','Edge behind ever tax discussion receive.',NULL,9,NULL,NULL,NULL,NULL),(2,'images\\IMG_2.jpg','Simply according best wife.',NULL,NULL,NULL,NULL,10,NULL),(3,'images\\IMG_3.jpg','Commercial site prove system concern.',NULL,14,NULL,NULL,NULL,NULL),(4,'images\\IMG_4.jpg','East important age head.',NULL,NULL,223,NULL,NULL,NULL),(5,'images\\IMG_5.jpg','Television also a officer create.',NULL,7,NULL,NULL,NULL,NULL),(6,'images\\IMG_6.jpg','Significant open really sort serve.',32,NULL,NULL,NULL,NULL,NULL),(7,'images\\IMG_7.jpg','Tv laugh member choice group almost good.',NULL,NULL,NULL,NULL,NULL,118),(8,'images\\IMG_8.jpg','Various similar on for key.',NULL,7,NULL,NULL,NULL,NULL),(9,'images\\IMG_9.jpg','Rest tough center move start.',NULL,NULL,NULL,NULL,6,NULL),(10,'images\\IMG_10.jpg','Fire base bag group water.',NULL,NULL,NULL,NULL,NULL,199),(11,'images\\IMG_11.jpg','Always age likely front sure.',42,NULL,NULL,NULL,NULL,NULL),(12,'images\\IMG_12.jpg','General detail dinner activity sport.',NULL,14,NULL,NULL,NULL,NULL),(13,'images\\IMG_13.jpg','Save throughout TV spend spring professional prevent.',NULL,15,NULL,NULL,NULL,NULL),(14,'images\\IMG_14.jpg','Around help develop.',NULL,NULL,NULL,NULL,NULL,207),(15,'images\\IMG_15.jpg','Against chair international practice since task year.',NULL,NULL,NULL,NULL,NULL,142),(16,'images\\IMG_16.jpg','International activity crime walk structure his.',NULL,6,NULL,NULL,NULL,NULL),(17,'images\\IMG_17.jpg','Thing law compare.',NULL,NULL,NULL,1,NULL,NULL),(18,'images\\IMG_18.jpg','Recently various box foot.',NULL,NULL,NULL,140,NULL,NULL),(19,'images\\IMG_19.jpg','Another including mission growth character choose.',NULL,8,NULL,NULL,NULL,NULL),(20,'images\\IMG_20.jpg','Other mind forget administration support.',33,NULL,NULL,NULL,NULL,NULL),(21,'images\\IMG_21.jpg','On no education.',NULL,NULL,142,NULL,NULL,NULL),(22,'images\\IMG_22.jpg','Possible argue special consider.',50,NULL,NULL,NULL,NULL,NULL),(23,'images\\IMG_23.jpg','Weight hold coach.',NULL,NULL,NULL,113,NULL,NULL),(24,'images\\IMG_24.jpg','Simple property beat commercial.',NULL,14,NULL,NULL,NULL,NULL),(25,'images\\IMG_25.jpg','City area fire.',13,NULL,NULL,NULL,NULL,NULL),(26,'images\\IMG_26.jpg','Join table staff cell remember.',36,NULL,NULL,NULL,NULL,NULL),(27,'images\\IMG_27.jpg','Laugh unit manage power successful over international.',NULL,NULL,15,NULL,NULL,NULL),(28,'images\\IMG_28.jpg','Participant other dog.',29,NULL,NULL,NULL,NULL,NULL),(29,'images\\IMG_29.jpg','Any throw already lawyer skin.',NULL,NULL,NULL,168,NULL,NULL),(30,'images\\IMG_30.jpg','Someone again professional.',NULL,NULL,NULL,NULL,NULL,303),(31,'images\\IMG_31.jpg','Year region paper.',NULL,14,NULL,NULL,NULL,NULL),(32,'images\\IMG_32.jpg','Simply society gun leg without.',20,NULL,NULL,NULL,NULL,NULL),(33,'images\\IMG_33.jpg','Stock weight reveal reveal food.',31,NULL,NULL,NULL,NULL,NULL),(34,'images\\IMG_34.jpg','Mean box story art whose staff ten.',31,NULL,NULL,NULL,NULL,NULL),(35,'images\\IMG_35.jpg','Often product build carry word.',NULL,NULL,72,NULL,NULL,NULL),(36,'images\\IMG_36.jpg','Yard less money send include.',NULL,NULL,81,NULL,NULL,NULL),(37,'images\\IMG_37.jpg','Degree religious tax write bar spend.',NULL,NULL,NULL,167,NULL,NULL),(38,'images\\IMG_38.jpg','Possible prepare eat.',NULL,NULL,NULL,NULL,1,NULL),(39,'images\\IMG_39.jpg','Power fear mouth join relationship probably view determine.',NULL,NULL,NULL,NULL,NULL,187),(40,'images\\IMG_40.jpg','Protect situation history range.',15,NULL,NULL,NULL,NULL,NULL),(41,'images\\IMG_41.jpg','Military unit pick art attack.',35,NULL,NULL,NULL,NULL,NULL),(42,'images\\IMG_42.jpg','Reach sort discuss consider.',NULL,NULL,NULL,167,NULL,NULL),(43,'images\\IMG_43.jpg','Cell walk beat popular among much.',23,NULL,NULL,NULL,NULL,NULL),(44,'images\\IMG_44.jpg','Whether physical always eat increase performance.',NULL,NULL,NULL,NULL,NULL,22),(45,'images\\IMG_45.jpg','Least whom indicate bag everyone perform.',NULL,NULL,NULL,25,NULL,NULL),(46,'images\\IMG_46.jpg','Win Republican former power glass night gas area.',NULL,NULL,NULL,NULL,NULL,291),(47,'images\\IMG_47.jpg','Skill forward possible black plan investment.',NULL,NULL,NULL,NULL,NULL,67),(48,'images\\IMG_48.jpg','Yourself level vote entire image group realize.',NULL,NULL,NULL,NULL,6,NULL),(49,'images\\IMG_49.jpg','Strong yourself house approach.',NULL,3,NULL,NULL,NULL,NULL),(50,'images\\IMG_50.jpg','Someone research small partner number south certainly own.',NULL,NULL,NULL,38,NULL,NULL);
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resale_queue`
--

LOCK TABLES `resale_queue` WRITE;
/*!40000 ALTER TABLE `resale_queue` DISABLE KEYS */;
INSERT INTO `resale_queue` VALUES (1,NULL,138,'Day Concert','backstage',123,'2025-04-22 09:45:00'),(3,NULL,133,'Responsibility Concert','backstage',68,'2021-08-19 10:30:00'),(4,32,NULL,'Although Concert','backstage',NULL,'2025-04-23 19:00:00'),(6,NULL,52,'Trip Concert','backstage',12,'2019-08-08 13:00:00'),(7,NULL,16,'Green Concert','backstage',181,'2025-04-27 09:45:00'),(8,NULL,55,'American Concert','backstage',14,'2025-04-27 12:45:00'),(9,NULL,9,'Else Concert','backstage',137,'2025-04-25 14:30:00'),(10,NULL,103,'Single Concert','backstage',176,'2018-08-20 12:45:00'),(11,NULL,3,'Life Concert','backstage',21,'2025-04-29 09:30:00'),(12,142,NULL,'List Concert','backstage',NULL,'2025-04-20 18:15:00'),(13,NULL,26,'Idea Concert','backstage',206,'2025-04-24 09:30:00'),(15,NULL,84,'True Concert','backstage',97,'2025-04-22 14:30:00'),(16,NULL,99,'Clear Concert','backstage',184,'2025-04-27 11:00:00'),(17,NULL,91,'List Concert','backstage',37,'2025-04-28 17:45:00'),(18,150,NULL,'Professional Concert','backstage',NULL,'2025-04-22 11:00:00'),(21,NULL,10,'Style Concert','backstage',166,'2025-04-21 13:00:00'),(22,125,NULL,NULL,NULL,123,'2019-08-11 18:45:00'),(23,86,NULL,NULL,NULL,68,'2025-04-21 17:00:00'),(24,13,NULL,NULL,NULL,137,'2025-04-21 13:00:00'),(25,111,NULL,NULL,NULL,206,'2025-04-26 12:30:00'),(26,59,NULL,NULL,NULL,184,'2023-07-24 11:45:00');
/*!40000 ALTER TABLE `resale_queue` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_check_soldout_before_resale
BEFORE INSERT ON resale_queue
FOR EACH ROW
BEGIN
    DECLARE event_id_val INT;
    DECLARE ticket_type_val ENUM('general_admission', 'VIP', 'backstage');
    DECLARE total_available INT;
    DECLARE sold_count INT;
    DECLARE msg_text VARCHAR(255);

    
    IF ticket_type_val = 'VIP' THEN
        SELECT VIP_total INTO total_available FROM events WHERE event_ID = event_id_val;
    ELSEIF ticket_type_val = 'backstage' THEN
        SELECT backstage_total INTO total_available FROM events WHERE event_ID = event_id_val;
    ELSE
        SELECT general_total INTO total_available FROM events WHERE event_ID = event_id_val;
    END IF;

    
    SELECT COUNT(*) INTO sold_count
    FROM ticket
    WHERE event_ID = event_id_val AND ticket_type = ticket_type_val;

    
    IF sold_count < total_available THEN
        SET msg_text = CONCAT('Resale not allowed: ', ticket_type_val, ' tickets are not sold out yet.');
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = msg_text;
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,182,'4','4','4','3','5'),(2,2,170,'5','2','3','4','2'),(3,5,140,'1','1','1','1','4'),(4,6,181,'3','1','1','2','5'),(5,9,93,'1','5','3','3','1'),(6,10,136,'3','4','5','1','2'),(7,13,194,'2','1','5','2','1'),(8,16,87,'2','4','1','5','2'),(9,18,191,'3','3','3','3','5'),(10,19,97,'4','4','3','1','3'),(11,20,118,'5','4','1','2','1'),(12,22,199,'4','4','1','4','5'),(13,23,92,'3','5','4','3','1'),(14,24,194,'4','4','4','4','4'),(15,25,36,'3','4','2','5','3'),(16,26,35,'3','5','3','2','3'),(17,27,124,'2','4','4','1','5'),(18,28,65,'2','5','5','3','1'),(19,29,92,'1','4','5','2','2'),(20,30,132,'4','3','1','4','2'),(21,31,10,'1','5','3','2','3'),(22,32,198,'4','5','3','5','2'),(23,33,20,'2','2','3','3','1'),(24,34,105,'1','1','3','5','4'),(25,35,176,'2','2','4','1','2'),(26,38,145,'4','5','3','2','4'),(27,39,173,'4','2','5','3','5'),(28,40,199,'3','1','5','3','3'),(29,41,131,'4','5','5','5','5'),(30,43,151,'2','2','5','4','2'),(31,44,99,'3','2','1','1','5'),(32,47,179,'2','5','5','2','3'),(33,48,144,'4','3','1','3','3'),(34,49,115,'5','2','2','3','1'),(35,50,122,'2','3','3','3','4'),(36,51,181,'5','1','2','1','1'),(37,53,169,'5','3','1','2','2'),(38,54,27,'2','1','4','3','5'),(39,55,202,'1','4','2','3','2'),(40,56,54,'1','3','5','3','4'),(41,57,148,'5','1','5','1','5'),(42,58,111,'3','4','3','1','4'),(43,59,188,'1','3','4','2','3'),(44,60,190,'2','1','4','3','3'),(45,62,127,'2','1','3','2','4'),(46,63,123,'5','4','5','3','4'),(47,64,68,'1','5','5','1','2'),(48,65,24,'2','3','1','1','1'),(49,67,155,'2','1','2','1','2'),(50,69,180,'2','2','4','3','2'),(51,71,202,'3','3','2','1','3'),(52,72,18,'2','2','1','2','3'),(53,73,203,'3','4','5','5','5'),(54,74,31,'3','4','3','1','2'),(55,76,154,'4','1','4','3','2'),(56,77,124,'4','2','4','2','3'),(57,79,145,'1','1','3','4','4'),(58,80,121,'2','4','5','1','1'),(59,81,179,'4','5','5','3','2'),(60,83,33,'4','1','1','4','5'),(61,84,78,'5','5','1','5','3'),(62,85,102,'2','3','5','2','2'),(63,86,95,'2','5','3','4','4'),(64,87,181,'4','1','3','4','4'),(65,88,73,'4','4','3','2','2'),(66,91,100,'1','5','5','2','1'),(67,92,16,'1','2','4','3','1'),(68,93,189,'1','5','5','1','2'),(69,94,12,'1','4','5','1','5'),(70,95,120,'5','4','2','5','1'),(71,96,165,'4','1','1','3','1'),(72,98,172,'1','1','2','2','1'),(73,103,125,'4','2','2','1','3'),(74,104,175,'2','2','1','3','3'),(75,106,185,'1','1','3','5','3'),(76,107,98,'3','5','3','5','2'),(77,109,154,'4','2','3','5','2'),(78,110,128,'1','5','4','4','4'),(79,112,31,'5','2','3','1','5'),(80,117,82,'4','3','1','1','1'),(81,118,181,'5','5','4','1','2'),(82,119,129,'2','4','4','4','1'),(83,120,80,'2','4','2','4','3'),(84,121,177,'1','1','3','3','3'),(85,122,193,'1','3','4','1','1'),(86,126,150,'5','5','1','5','4'),(87,128,52,'1','1','3','5','5'),(88,130,91,'3','4','4','1','4'),(89,131,3,'1','4','5','2','1'),(90,133,13,'3','4','1','3','5'),(91,134,7,'5','5','5','1','2'),(92,135,147,'3','1','1','2','5'),(93,138,9,'5','5','2','2','5'),(94,139,195,'1','5','1','3','4'),(95,140,66,'2','5','5','3','5'),(96,142,160,'2','2','3','3','3'),(97,144,134,'5','3','3','1','2'),(98,145,143,'3','4','4','1','1'),(99,146,185,'5','2','2','1','5'),(100,147,186,'3','1','5','3','4'),(101,148,197,'5','2','1','1','5'),(102,149,83,'3','4','4','2','2'),(103,150,116,'5','5','5','2','1'),(104,151,186,'2','2','4','4','3'),(105,152,125,'2','1','4','1','3'),(106,153,184,'4','2','4','1','4'),(107,157,130,'4','5','3','5','5'),(108,158,31,'2','3','3','2','5'),(109,160,20,'1','5','2','3','2'),(110,163,141,'3','1','1','5','4'),(111,164,53,'3','2','1','1','1'),(112,165,63,'4','1','3','4','3'),(113,167,18,'4','1','3','4','2'),(114,168,100,'2','5','5','2','2'),(115,169,155,'2','1','5','1','4'),(116,171,5,'3','5','1','5','5'),(117,173,162,'4','4','1','1','4'),(118,174,52,'5','1','2','4','2'),(119,175,145,'2','4','1','3','2'),(120,177,187,'3','5','4','3','5'),(121,179,204,'4','3','4','1','1'),(122,180,114,'2','1','1','5','3'),(123,182,126,'2','1','4','4','3'),(124,185,177,'2','2','2','2','4'),(125,187,168,'3','5','3','1','5'),(126,188,26,'4','2','5','1','2'),(127,190,93,'5','2','2','4','2'),(128,192,139,'3','1','1','3','4'),(129,193,72,'1','5','5','1','1'),(130,194,72,'4','2','1','4','4'),(131,196,115,'1','2','5','4','1'),(132,199,87,'2','2','3','1','2'),(133,200,43,'4','2','3','1','1'),(134,201,12,'2','5','1','2','4'),(135,203,126,'1','2','3','1','1'),(136,204,112,'4','5','2','5','4'),(137,207,191,'5','3','2','2','5'),(138,208,69,'3','3','5','1','5'),(139,210,92,'4','2','1','3','1'),(140,212,149,'3','1','4','5','3'),(141,214,46,'3','2','1','5','1'),(142,215,11,'1','2','4','1','3'),(143,217,104,'3','5','5','5','2');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
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
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
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

IF is_active = FALSE THEN
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
  KEY `idx_role_event_role_personel` (`role`,`personel_ID`,`event_ID`),
  CONSTRAINT `role_of_personel_on_event_ibfk_1` FOREIGN KEY (`personel_ID`) REFERENCES `personel` (`personel_ID`),
  CONSTRAINT `role_of_personel_on_event_ibfk_2` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_of_personel_on_event`
--

LOCK TABLES `role_of_personel_on_event` WRITE;
/*!40000 ALTER TABLE `role_of_personel_on_event` DISABLE KEYS */;
INSERT INTO `role_of_personel_on_event` VALUES (30,1,'technical'),(58,1,'technical'),(77,1,'technical'),(129,1,'technical'),(173,1,'technical'),(5,1,'security'),(21,1,'security'),(54,1,'security'),(69,1,'security'),(128,1,'security'),(64,1,'support'),(195,1,'support'),(49,2,'technical'),(53,2,'technical'),(109,2,'technical'),(170,2,'technical'),(198,2,'technical'),(103,2,'security'),(131,2,'security'),(147,2,'security'),(177,2,'security'),(186,2,'security'),(41,2,'support'),(88,2,'support'),(48,3,'technical'),(144,3,'technical'),(160,3,'technical'),(165,3,'technical'),(197,3,'technical'),(128,3,'security'),(146,3,'security'),(154,3,'security'),(184,3,'security'),(194,3,'security'),(33,3,'support'),(133,3,'support'),(18,4,'technical'),(32,4,'technical'),(73,4,'technical'),(108,4,'technical'),(153,4,'technical'),(50,4,'security'),(67,4,'security'),(75,4,'security'),(84,4,'security'),(102,4,'security'),(139,4,'security'),(126,4,'support'),(179,4,'support'),(9,5,'technical'),(12,5,'technical'),(30,5,'technical'),(109,5,'technical'),(170,5,'technical'),(2,5,'security'),(52,5,'security'),(77,5,'security'),(81,5,'security'),(189,5,'security'),(190,5,'security'),(4,5,'support'),(176,5,'support'),(29,6,'technical'),(33,6,'technical'),(124,6,'technical'),(177,6,'technical'),(180,6,'technical'),(52,6,'security'),(62,6,'security'),(69,6,'security'),(77,6,'security'),(165,6,'security'),(190,6,'security'),(35,6,'support'),(57,6,'support'),(40,7,'technical'),(80,7,'technical'),(109,7,'technical'),(115,7,'technical'),(151,7,'technical'),(81,7,'security'),(128,7,'security'),(137,7,'security'),(142,7,'security'),(180,7,'security'),(45,7,'support'),(92,7,'support'),(22,8,'technical'),(26,8,'technical'),(60,8,'technical'),(81,8,'technical'),(96,8,'technical'),(1,8,'security'),(19,8,'security'),(74,8,'security'),(88,8,'security'),(137,8,'security'),(168,8,'security'),(52,8,'support'),(113,8,'support'),(19,9,'technical'),(51,9,'technical'),(89,9,'technical'),(100,9,'technical'),(133,9,'technical'),(5,9,'security'),(56,9,'security'),(92,9,'security'),(159,9,'security'),(171,9,'security'),(144,9,'support'),(187,9,'support'),(8,10,'technical'),(13,10,'technical'),(149,10,'technical'),(160,10,'technical'),(182,10,'technical'),(3,10,'security'),(112,10,'security'),(131,10,'security'),(145,10,'security'),(191,10,'security'),(162,10,'support'),(177,10,'support'),(7,11,'technical'),(43,11,'technical'),(71,11,'technical'),(101,11,'technical'),(108,11,'technical'),(63,11,'security'),(106,11,'security'),(124,11,'security'),(174,11,'security'),(194,11,'security'),(97,11,'support'),(148,11,'support'),(22,12,'technical'),(46,12,'technical'),(90,12,'technical'),(162,12,'technical'),(196,12,'technical'),(39,12,'security'),(48,12,'security'),(57,12,'security'),(73,12,'security'),(105,12,'security'),(21,12,'support'),(153,12,'support'),(71,13,'technical'),(117,13,'technical'),(151,13,'technical'),(164,13,'technical'),(174,13,'technical'),(110,13,'security'),(128,13,'security'),(143,13,'security'),(149,13,'security'),(159,13,'security'),(20,13,'support'),(69,13,'support'),(15,14,'technical'),(45,14,'technical'),(72,14,'technical'),(79,14,'technical'),(92,14,'technical'),(48,14,'security'),(126,14,'security'),(144,14,'security'),(172,14,'security'),(191,14,'security'),(200,14,'security'),(17,14,'support'),(37,14,'support'),(44,15,'technical'),(51,15,'technical'),(97,15,'technical'),(177,15,'technical'),(188,15,'technical'),(36,15,'security'),(48,15,'security'),(55,15,'security'),(133,15,'security'),(151,15,'security'),(30,15,'support'),(187,15,'support'),(22,16,'technical'),(51,16,'technical'),(75,16,'technical'),(103,16,'technical'),(126,16,'technical'),(3,16,'security'),(7,16,'security'),(19,16,'security'),(30,16,'security'),(68,16,'security'),(44,16,'support'),(159,16,'support'),(49,17,'technical'),(50,17,'technical'),(115,17,'technical'),(144,17,'technical'),(151,17,'technical'),(116,17,'security'),(121,17,'security'),(132,17,'security'),(166,17,'security'),(179,17,'security'),(96,17,'support'),(199,17,'support'),(88,18,'technical'),(96,18,'technical'),(170,18,'technical'),(188,18,'technical'),(190,18,'technical'),(101,18,'security'),(114,18,'security'),(149,18,'security'),(189,18,'security'),(199,18,'security'),(32,18,'support'),(70,18,'support'),(2,19,'technical'),(44,19,'technical'),(104,19,'technical'),(146,19,'technical'),(180,19,'technical'),(30,19,'security'),(47,19,'security'),(144,19,'security'),(145,19,'security'),(193,19,'security'),(108,19,'support'),(169,19,'support'),(61,20,'technical'),(105,20,'technical'),(106,20,'technical'),(121,20,'technical'),(143,20,'technical'),(9,20,'security'),(83,20,'security'),(117,20,'security'),(149,20,'security'),(186,20,'security'),(25,20,'support'),(155,20,'support'),(11,21,'technical'),(27,21,'technical'),(72,21,'technical'),(123,21,'technical'),(171,21,'technical'),(56,21,'security'),(78,21,'security'),(90,21,'security'),(110,21,'security'),(156,21,'security'),(138,21,'support'),(190,21,'support'),(12,22,'technical'),(16,22,'technical'),(106,22,'technical'),(144,22,'technical'),(170,22,'technical'),(51,22,'security'),(55,22,'security'),(60,22,'security'),(64,22,'security'),(74,22,'security'),(157,22,'security'),(66,22,'support'),(195,22,'support'),(35,23,'technical'),(104,23,'technical'),(116,23,'technical'),(169,23,'technical'),(186,23,'technical'),(36,23,'security'),(67,23,'security'),(130,23,'security'),(132,23,'security'),(167,23,'security'),(53,23,'support'),(181,23,'support'),(38,24,'technical'),(82,24,'technical'),(100,24,'technical'),(148,24,'technical'),(150,24,'technical'),(3,24,'security'),(116,24,'security'),(135,24,'security'),(151,24,'security'),(165,24,'security'),(22,24,'support'),(105,24,'support'),(14,25,'technical'),(18,25,'technical'),(62,25,'technical'),(110,25,'technical'),(127,25,'technical'),(28,25,'security'),(67,25,'security'),(123,25,'security'),(148,25,'security'),(173,25,'security'),(48,25,'support'),(112,25,'support'),(10,26,'technical'),(68,26,'technical'),(133,26,'technical'),(148,26,'technical'),(166,26,'technical'),(30,26,'security'),(55,26,'security'),(141,26,'security'),(171,26,'security'),(185,26,'security'),(8,26,'support'),(162,26,'support'),(108,27,'technical'),(154,27,'technical'),(159,27,'technical'),(171,27,'technical'),(188,27,'technical'),(32,27,'security'),(34,27,'security'),(55,27,'security'),(79,27,'security'),(176,27,'security'),(80,27,'support'),(155,27,'support'),(14,28,'technical'),(61,28,'technical'),(119,28,'technical'),(148,28,'technical'),(162,28,'technical'),(21,28,'security'),(73,28,'security'),(86,28,'security'),(107,28,'security'),(191,28,'security'),(192,28,'security'),(15,28,'support'),(99,28,'support'),(44,29,'technical'),(110,29,'technical'),(118,29,'technical'),(121,29,'technical'),(132,29,'technical'),(48,29,'security'),(62,29,'security'),(81,29,'security'),(90,29,'security'),(183,29,'security'),(50,29,'support'),(180,29,'support'),(44,30,'technical'),(51,30,'technical'),(60,30,'technical'),(109,30,'technical'),(127,30,'technical'),(39,30,'security'),(57,30,'security'),(106,30,'security'),(142,30,'security'),(149,30,'security'),(24,30,'support'),(148,30,'support'),(17,31,'technical'),(34,31,'technical'),(136,31,'technical'),(159,31,'technical'),(175,31,'technical'),(1,31,'security'),(15,31,'security'),(148,31,'security'),(163,31,'security'),(166,31,'security'),(198,31,'security'),(95,31,'support'),(142,31,'support'),(7,32,'technical'),(13,32,'technical'),(19,32,'technical'),(60,32,'technical'),(69,32,'technical'),(20,32,'security'),(65,32,'security'),(93,32,'security'),(102,32,'security'),(134,32,'security'),(52,32,'support'),(84,32,'support'),(19,33,'technical'),(41,33,'technical'),(92,33,'technical'),(118,33,'technical'),(152,33,'technical'),(24,33,'security'),(32,33,'security'),(79,33,'security'),(147,33,'security'),(200,33,'security'),(72,33,'support'),(99,33,'support'),(1,34,'technical'),(20,34,'technical'),(49,34,'technical'),(122,34,'technical'),(173,34,'technical'),(4,34,'security'),(23,34,'security'),(26,34,'security'),(66,34,'security'),(171,34,'security'),(105,34,'support'),(141,34,'support'),(6,35,'technical'),(25,35,'technical'),(75,35,'technical'),(84,35,'technical'),(199,35,'technical'),(37,35,'security'),(74,35,'security'),(81,35,'security'),(89,35,'security'),(149,35,'security'),(55,35,'support'),(128,35,'support'),(54,36,'technical'),(79,36,'technical'),(84,36,'technical'),(89,36,'technical'),(181,36,'technical'),(106,36,'security'),(133,36,'security'),(153,36,'security'),(187,36,'security'),(195,36,'security'),(128,36,'support'),(172,36,'support'),(22,37,'technical'),(145,37,'technical'),(186,37,'technical'),(193,37,'technical'),(196,37,'technical'),(87,37,'security'),(93,37,'security'),(111,37,'security'),(131,37,'security'),(164,37,'security'),(8,37,'support'),(70,37,'support'),(8,38,'technical'),(46,38,'technical'),(64,38,'technical'),(91,38,'technical'),(159,38,'technical'),(107,38,'security'),(124,38,'security'),(129,38,'security'),(153,38,'security'),(161,38,'security'),(55,38,'support'),(138,38,'support'),(58,39,'technical'),(93,39,'technical'),(99,39,'technical'),(110,39,'technical'),(145,39,'technical'),(66,39,'security'),(76,39,'security'),(79,39,'security'),(105,39,'security'),(108,39,'security'),(158,39,'security'),(68,39,'support'),(149,39,'support'),(8,40,'technical'),(65,40,'technical'),(122,40,'technical'),(138,40,'technical'),(169,40,'technical'),(3,40,'security'),(9,40,'security'),(148,40,'security'),(171,40,'security'),(184,40,'security'),(16,40,'support'),(103,40,'support'),(51,41,'technical'),(68,41,'technical'),(75,41,'technical'),(76,41,'technical'),(119,41,'technical'),(27,41,'security'),(30,41,'security'),(45,41,'security'),(107,41,'security'),(199,41,'security'),(95,41,'support'),(191,41,'support'),(17,42,'technical'),(45,42,'technical'),(151,42,'technical'),(164,42,'technical'),(178,42,'technical'),(10,42,'security'),(99,42,'security'),(107,42,'security'),(110,42,'security'),(145,42,'security'),(191,42,'security'),(65,42,'support'),(132,42,'support'),(5,43,'technical'),(13,43,'technical'),(29,43,'technical'),(94,43,'technical'),(200,43,'technical'),(38,43,'security'),(54,43,'security'),(135,43,'security'),(142,43,'security'),(143,43,'security'),(195,43,'security'),(70,43,'support'),(148,43,'support'),(19,44,'technical'),(52,44,'technical'),(57,44,'technical'),(110,44,'technical'),(177,44,'technical'),(30,44,'security'),(96,44,'security'),(100,44,'security'),(137,44,'security'),(158,44,'security'),(67,44,'support'),(98,44,'support'),(34,45,'technical'),(38,45,'technical'),(81,45,'technical'),(88,45,'technical'),(90,45,'technical'),(25,45,'security'),(70,45,'security'),(120,45,'security'),(136,45,'security'),(183,45,'security'),(186,45,'security'),(83,45,'support'),(99,45,'support'),(7,46,'technical'),(40,46,'technical'),(74,46,'technical'),(128,46,'technical'),(137,46,'technical'),(82,46,'security'),(125,46,'security'),(163,46,'security'),(177,46,'security'),(189,46,'security'),(56,46,'support'),(141,46,'support'),(6,47,'technical'),(23,47,'technical'),(113,47,'technical'),(140,47,'technical'),(145,47,'technical'),(13,47,'security'),(20,47,'security'),(74,47,'security'),(139,47,'security'),(178,47,'security'),(182,47,'support'),(185,47,'support'),(51,48,'technical'),(105,48,'technical'),(115,48,'technical'),(120,48,'technical'),(140,48,'technical'),(4,48,'security'),(41,48,'security'),(53,48,'security'),(126,48,'security'),(147,48,'security'),(69,48,'support'),(189,48,'support'),(27,49,'technical'),(41,49,'technical'),(74,49,'technical'),(160,49,'technical'),(184,49,'technical'),(8,49,'security'),(17,49,'security'),(107,49,'security'),(118,49,'security'),(199,49,'security'),(73,49,'support'),(117,49,'support'),(47,50,'technical'),(55,50,'technical'),(71,50,'technical'),(105,50,'technical'),(148,50,'technical'),(96,50,'security'),(157,50,'security'),(164,50,'security'),(179,50,'security'),(184,50,'security'),(80,50,'support'),(91,50,'support'),(17,51,'technical'),(21,51,'technical'),(55,51,'technical'),(74,51,'technical'),(85,51,'technical'),(3,51,'security'),(15,51,'security'),(71,51,'security'),(116,51,'security'),(136,51,'security'),(75,51,'support'),(164,51,'support'),(17,52,'technical'),(45,52,'technical'),(72,52,'technical'),(84,52,'technical'),(86,52,'technical'),(32,52,'security'),(88,52,'security'),(112,52,'security'),(135,52,'security'),(198,52,'security'),(65,52,'support'),(121,52,'support'),(38,53,'technical'),(57,53,'technical'),(153,53,'technical'),(167,53,'technical'),(177,53,'technical'),(22,53,'security'),(30,53,'security'),(112,53,'security'),(113,53,'security'),(174,53,'security'),(191,53,'security'),(4,53,'support'),(172,53,'support'),(6,54,'technical'),(38,54,'technical'),(42,54,'technical'),(51,54,'technical'),(163,54,'technical'),(32,54,'security'),(71,54,'security'),(105,54,'security'),(111,54,'security'),(169,54,'security'),(171,54,'security'),(57,54,'support'),(185,54,'support'),(64,55,'technical'),(93,55,'technical'),(103,55,'technical'),(104,55,'technical'),(192,55,'technical'),(46,55,'security'),(68,55,'security'),(73,55,'security'),(98,55,'security'),(127,55,'security'),(6,55,'support'),(34,55,'support'),(103,56,'technical'),(156,56,'technical'),(157,56,'technical'),(159,56,'technical'),(186,56,'technical'),(19,56,'security'),(20,56,'security'),(137,56,'security'),(139,56,'security'),(144,56,'security'),(101,56,'support'),(163,56,'support'),(8,57,'technical'),(23,57,'technical'),(58,57,'technical'),(61,57,'technical'),(181,57,'technical'),(29,57,'security'),(59,57,'security'),(122,57,'security'),(178,57,'security'),(198,57,'security'),(140,57,'support'),(186,57,'support'),(5,58,'technical'),(52,58,'technical'),(57,58,'technical'),(126,58,'technical'),(192,58,'technical'),(22,58,'security'),(38,58,'security'),(51,58,'security'),(66,58,'security'),(119,58,'security'),(134,58,'security'),(46,58,'support'),(54,58,'support'),(19,59,'technical'),(34,59,'technical'),(35,59,'technical'),(88,59,'technical'),(171,59,'technical'),(1,59,'security'),(15,59,'security'),(17,59,'security'),(18,59,'security'),(40,59,'security'),(49,59,'support'),(161,59,'support'),(27,60,'technical'),(30,60,'technical'),(31,60,'technical'),(52,60,'technical'),(155,60,'technical'),(90,60,'security'),(120,60,'security'),(124,60,'security'),(162,60,'security'),(183,60,'security'),(59,60,'support'),(180,60,'support'),(9,61,'technical'),(49,61,'technical'),(83,61,'technical'),(110,61,'technical'),(195,61,'technical'),(24,61,'security'),(57,61,'security'),(94,61,'security'),(159,61,'security'),(187,61,'security'),(32,61,'support'),(66,61,'support'),(57,62,'technical'),(89,62,'technical'),(166,62,'technical'),(174,62,'technical'),(177,62,'technical'),(15,62,'security'),(121,62,'security'),(127,62,'security'),(145,62,'security'),(164,62,'security'),(56,62,'support'),(199,62,'support'),(29,63,'technical'),(132,63,'technical'),(170,63,'technical'),(172,63,'technical'),(200,63,'technical'),(110,63,'security'),(147,63,'security'),(155,63,'security'),(174,63,'security'),(187,63,'security'),(88,63,'support'),(177,63,'support'),(3,64,'technical'),(11,64,'technical'),(51,64,'technical'),(172,64,'technical'),(193,64,'technical'),(86,64,'security'),(91,64,'security'),(100,64,'security'),(157,64,'security'),(178,64,'security'),(147,64,'support'),(150,64,'support'),(83,65,'technical'),(107,65,'technical'),(175,65,'technical'),(181,65,'technical'),(195,65,'technical'),(7,65,'security'),(20,65,'security'),(34,65,'security'),(68,65,'security'),(178,65,'security'),(48,65,'support'),(91,65,'support'),(14,66,'technical'),(47,66,'technical'),(59,66,'technical'),(79,66,'technical'),(95,66,'technical'),(71,66,'security'),(87,66,'security'),(94,66,'security'),(97,66,'security'),(142,66,'security'),(64,66,'support'),(161,66,'support'),(32,67,'technical'),(111,67,'technical'),(143,67,'technical'),(176,67,'technical'),(183,67,'technical'),(9,67,'security'),(82,67,'security'),(119,67,'security'),(126,67,'security'),(141,67,'security'),(19,67,'support'),(127,67,'support'),(17,68,'technical'),(107,68,'technical'),(114,68,'technical'),(161,68,'technical'),(167,68,'technical'),(1,68,'security'),(134,68,'security'),(153,68,'security'),(173,68,'security'),(197,68,'security'),(196,68,'support'),(199,68,'support'),(16,69,'technical'),(44,69,'technical'),(45,69,'technical'),(51,69,'technical'),(107,69,'technical'),(35,69,'security'),(53,69,'security'),(95,69,'security'),(144,69,'security'),(190,69,'security'),(86,69,'support'),(104,69,'support'),(29,70,'technical'),(40,70,'technical'),(80,70,'technical'),(101,70,'technical'),(116,70,'technical'),(10,70,'security'),(46,70,'security'),(112,70,'security'),(115,70,'security'),(148,70,'security'),(11,70,'support'),(18,70,'support'),(60,71,'technical'),(73,71,'technical'),(126,71,'technical'),(151,71,'technical'),(176,71,'technical'),(2,71,'security'),(9,71,'security'),(35,71,'security'),(169,71,'security'),(196,71,'security'),(106,71,'support'),(165,71,'support'),(1,72,'technical'),(8,72,'technical'),(93,72,'technical'),(100,72,'technical'),(156,72,'technical'),(2,72,'security'),(29,72,'security'),(39,72,'security'),(141,72,'security'),(173,72,'security'),(193,72,'security'),(42,72,'support'),(158,72,'support'),(18,73,'technical'),(40,73,'technical'),(147,73,'technical'),(160,73,'technical'),(183,73,'technical'),(37,73,'security'),(68,73,'security'),(152,73,'security'),(161,73,'security'),(178,73,'security'),(48,73,'support'),(61,73,'support'),(14,74,'technical'),(59,74,'technical'),(79,74,'technical'),(105,74,'technical'),(149,74,'technical'),(45,74,'security'),(78,74,'security'),(85,74,'security'),(96,74,'security'),(113,74,'security'),(11,74,'support'),(175,74,'support'),(43,75,'technical'),(106,75,'technical'),(187,75,'technical'),(189,75,'technical'),(193,75,'technical'),(33,75,'security'),(64,75,'security'),(69,75,'security'),(80,75,'security'),(104,75,'security'),(93,75,'support'),(150,75,'support'),(61,76,'technical'),(66,76,'technical'),(95,76,'technical'),(132,76,'technical'),(143,76,'technical'),(13,76,'security'),(35,76,'security'),(40,76,'security'),(121,76,'security'),(155,76,'security'),(165,76,'security'),(69,76,'support'),(133,76,'support'),(19,77,'technical'),(58,77,'technical'),(153,77,'technical'),(154,77,'technical'),(187,77,'technical'),(23,77,'security'),(27,77,'security'),(63,77,'security'),(71,77,'security'),(146,77,'security'),(35,77,'support'),(133,77,'support'),(35,78,'technical'),(57,78,'technical'),(59,78,'technical'),(112,78,'technical'),(165,78,'technical'),(44,78,'security'),(72,78,'security'),(109,78,'security'),(135,78,'security'),(188,78,'security'),(65,78,'support'),(119,78,'support'),(38,79,'technical'),(63,79,'technical'),(91,79,'technical'),(105,79,'technical'),(181,79,'technical'),(83,79,'security'),(84,79,'security'),(166,79,'security'),(171,79,'security'),(183,79,'security'),(31,79,'support'),(160,79,'support'),(45,80,'technical'),(63,80,'technical'),(121,80,'technical'),(133,80,'technical'),(199,80,'technical'),(39,80,'security'),(72,80,'security'),(93,80,'security'),(156,80,'security'),(163,80,'security'),(17,80,'support'),(159,80,'support'),(22,81,'technical'),(24,81,'technical'),(93,81,'technical'),(130,81,'technical'),(153,81,'technical'),(49,81,'security'),(99,81,'security'),(115,81,'security'),(128,81,'security'),(156,81,'security'),(197,81,'security'),(96,81,'support'),(172,81,'support'),(21,82,'technical'),(59,82,'technical'),(106,82,'technical'),(121,82,'technical'),(138,82,'technical'),(75,82,'security'),(79,82,'security'),(126,82,'security'),(139,82,'security'),(152,82,'security'),(134,82,'support'),(164,82,'support'),(28,83,'technical'),(66,83,'technical'),(86,83,'technical'),(162,83,'technical'),(185,83,'technical'),(10,83,'security'),(42,83,'security'),(87,83,'security'),(88,83,'security'),(102,83,'security'),(176,83,'security'),(137,83,'support'),(193,83,'support'),(16,84,'technical'),(59,84,'technical'),(91,84,'technical'),(163,84,'technical'),(179,84,'technical'),(12,84,'security'),(29,84,'security'),(58,84,'security'),(71,84,'security'),(136,84,'security'),(2,84,'support'),(186,84,'support'),(23,85,'technical'),(29,85,'technical'),(33,85,'technical'),(41,85,'technical'),(160,85,'technical'),(16,85,'security'),(17,85,'security'),(48,85,'security'),(81,85,'security'),(198,85,'security'),(25,85,'support'),(162,85,'support'),(22,86,'technical'),(42,86,'technical'),(95,86,'technical'),(135,86,'technical'),(184,86,'technical'),(63,86,'security'),(79,86,'security'),(84,86,'security'),(158,86,'security'),(186,86,'security'),(77,86,'support'),(148,86,'support'),(47,87,'technical'),(105,87,'technical'),(135,87,'technical'),(155,87,'technical'),(182,87,'technical'),(51,87,'security'),(93,87,'security'),(119,87,'security'),(183,87,'security'),(198,87,'security'),(20,87,'support'),(58,87,'support'),(37,88,'technical'),(73,88,'technical'),(74,88,'technical'),(78,88,'technical'),(121,88,'technical'),(4,88,'security'),(25,88,'security'),(33,88,'security'),(71,88,'security'),(86,88,'security'),(132,88,'security'),(54,88,'support'),(59,88,'support'),(43,89,'technical'),(55,89,'technical'),(123,89,'technical'),(135,89,'technical'),(159,89,'technical'),(32,89,'security'),(95,89,'security'),(119,89,'security'),(127,89,'security'),(145,89,'security'),(48,89,'support'),(85,89,'support'),(7,90,'technical'),(61,90,'technical'),(70,90,'technical'),(97,90,'technical'),(112,90,'technical'),(110,90,'security'),(127,90,'security'),(128,90,'security'),(145,90,'security'),(151,90,'security'),(13,90,'support'),(49,90,'support'),(36,91,'technical'),(65,91,'technical'),(67,91,'technical'),(100,91,'technical'),(146,91,'technical'),(57,91,'security'),(60,91,'security'),(88,91,'security'),(92,91,'security'),(155,91,'security'),(180,91,'security'),(3,91,'support'),(138,91,'support'),(51,92,'technical'),(73,92,'technical'),(105,92,'technical'),(131,92,'technical'),(158,92,'technical'),(48,92,'security'),(123,92,'security'),(150,92,'security'),(160,92,'security'),(171,92,'security'),(30,92,'support'),(87,92,'support'),(5,93,'technical'),(15,93,'technical'),(43,93,'technical'),(50,93,'technical'),(162,93,'technical'),(89,93,'security'),(112,93,'security'),(151,93,'security'),(165,93,'security'),(169,93,'security'),(22,93,'support'),(107,93,'support'),(11,94,'technical'),(65,94,'technical'),(96,94,'technical'),(163,94,'technical'),(188,94,'technical'),(30,94,'security'),(38,94,'security'),(112,94,'security'),(139,94,'security'),(142,94,'security'),(13,94,'support'),(174,94,'support'),(65,95,'technical'),(66,95,'technical'),(83,95,'technical'),(153,95,'technical'),(177,95,'technical'),(63,95,'security'),(103,95,'security'),(150,95,'security'),(174,95,'security'),(200,95,'security'),(93,95,'support'),(142,95,'support'),(40,96,'technical'),(123,96,'technical'),(137,96,'technical'),(175,96,'technical'),(179,96,'technical'),(52,96,'security'),(79,96,'security'),(83,96,'security'),(92,96,'security'),(160,96,'security'),(35,96,'support'),(62,96,'support'),(46,97,'technical'),(78,97,'technical'),(100,97,'technical'),(115,97,'technical'),(132,97,'technical'),(3,97,'security'),(6,97,'security'),(37,97,'security'),(77,97,'security'),(130,97,'security'),(18,97,'support'),(55,97,'support'),(39,98,'technical'),(115,98,'technical'),(117,98,'technical'),(135,98,'technical'),(146,98,'technical'),(11,98,'security'),(47,98,'security'),(62,98,'security'),(82,98,'security'),(133,98,'security'),(44,98,'support'),(140,98,'support'),(87,99,'technical'),(118,99,'technical'),(125,99,'technical'),(126,99,'technical'),(141,99,'technical'),(68,99,'security'),(138,99,'security'),(147,99,'security'),(176,99,'security'),(200,99,'security'),(3,99,'support'),(134,99,'support'),(47,100,'technical'),(91,100,'technical'),(101,100,'technical'),(187,100,'technical'),(195,100,'technical'),(20,100,'security'),(124,100,'security'),(186,100,'security'),(194,100,'security'),(196,100,'security'),(29,100,'support'),(35,100,'support'),(5,101,'technical'),(16,101,'technical'),(96,101,'technical'),(128,101,'technical'),(198,101,'technical'),(3,101,'security'),(8,101,'security'),(52,101,'security'),(112,101,'security'),(122,101,'security'),(6,101,'support'),(98,101,'support'),(17,102,'technical'),(33,102,'technical'),(51,102,'technical'),(76,102,'technical'),(108,102,'technical'),(19,102,'security'),(43,102,'security'),(70,102,'security'),(118,102,'security'),(185,102,'security'),(136,102,'support'),(155,102,'support'),(33,103,'technical'),(73,103,'technical'),(116,103,'technical'),(142,103,'technical'),(150,103,'technical'),(38,103,'security'),(56,103,'security'),(84,103,'security'),(95,103,'security'),(106,103,'security'),(115,103,'support'),(200,103,'support'),(26,104,'technical'),(78,104,'technical'),(115,104,'technical'),(167,104,'technical'),(177,104,'technical'),(6,104,'security'),(32,104,'security'),(53,104,'security'),(71,104,'security'),(188,104,'security'),(119,104,'support'),(136,104,'support'),(41,105,'technical'),(96,105,'technical'),(117,105,'technical'),(175,105,'technical'),(179,105,'technical'),(49,105,'security'),(64,105,'security'),(75,105,'security'),(168,105,'security'),(174,105,'security'),(178,105,'security'),(83,105,'support'),(197,105,'support'),(49,106,'technical'),(81,106,'technical'),(114,106,'technical'),(168,106,'technical'),(173,106,'technical'),(39,106,'security'),(59,106,'security'),(62,106,'security'),(78,106,'security'),(91,106,'security'),(176,106,'security'),(44,106,'support'),(48,106,'support'),(68,107,'technical'),(78,107,'technical'),(87,107,'technical'),(141,107,'technical'),(187,107,'technical'),(85,107,'security'),(98,107,'security'),(121,107,'security'),(148,107,'security'),(176,107,'security'),(26,107,'support'),(173,107,'support'),(94,108,'technical'),(95,108,'technical'),(113,108,'technical'),(143,108,'technical'),(182,108,'technical'),(1,108,'security'),(97,108,'security'),(140,108,'security'),(170,108,'security'),(173,108,'security'),(28,108,'support'),(192,108,'support'),(125,109,'technical'),(126,109,'technical'),(167,109,'technical'),(174,109,'technical'),(181,109,'technical'),(11,109,'security'),(20,109,'security'),(79,109,'security'),(128,109,'security'),(200,109,'security'),(31,109,'support'),(186,109,'support'),(45,110,'technical'),(67,110,'technical'),(117,110,'technical'),(118,110,'technical'),(144,110,'technical'),(35,110,'security'),(79,110,'security'),(110,110,'security'),(145,110,'security'),(162,110,'security'),(174,110,'security'),(53,110,'support'),(170,110,'support'),(118,111,'technical'),(162,111,'technical'),(174,111,'technical'),(181,111,'technical'),(182,111,'technical'),(23,111,'security'),(37,111,'security'),(93,111,'security'),(166,111,'security'),(195,111,'security'),(177,111,'support'),(183,111,'support'),(11,112,'technical'),(80,112,'technical'),(83,112,'technical'),(161,112,'technical'),(184,112,'technical'),(6,112,'security'),(18,112,'security'),(25,112,'security'),(73,112,'security'),(77,112,'security'),(88,112,'security'),(20,112,'support'),(53,112,'support'),(82,113,'technical'),(114,113,'technical'),(167,113,'technical'),(171,113,'technical'),(179,113,'technical'),(21,113,'security'),(29,113,'security'),(40,113,'security'),(73,113,'security'),(135,113,'security'),(136,113,'support'),(190,113,'support'),(3,114,'technical'),(31,114,'technical'),(110,114,'technical'),(118,114,'technical'),(165,114,'technical'),(71,114,'security'),(127,114,'security'),(169,114,'security'),(178,114,'security'),(197,114,'security'),(49,114,'support'),(74,114,'support'),(22,115,'technical'),(60,115,'technical'),(75,115,'technical'),(131,115,'technical'),(170,115,'technical'),(78,115,'security'),(97,115,'security'),(113,115,'security'),(157,115,'security'),(196,115,'security'),(122,115,'support'),(187,115,'support'),(5,116,'technical'),(24,116,'technical'),(68,116,'technical'),(100,116,'technical'),(151,116,'technical'),(45,116,'security'),(75,116,'security'),(102,116,'security'),(147,116,'security'),(173,116,'security'),(84,116,'support'),(195,116,'support'),(102,117,'technical'),(131,117,'technical'),(146,117,'technical'),(155,117,'technical'),(161,117,'technical'),(27,117,'security'),(31,117,'security'),(152,117,'security'),(171,117,'security'),(177,117,'security'),(112,117,'support'),(113,117,'support'),(2,118,'technical'),(17,118,'technical'),(24,118,'technical'),(93,118,'technical'),(183,118,'technical'),(9,118,'security'),(13,118,'security'),(55,118,'security'),(111,118,'security'),(122,118,'security'),(128,118,'security'),(42,118,'support'),(176,118,'support'),(4,119,'technical'),(31,119,'technical'),(143,119,'technical'),(157,119,'technical'),(163,119,'technical'),(85,119,'security'),(96,119,'security'),(124,119,'security'),(137,119,'security'),(144,119,'security'),(195,119,'security'),(43,119,'support'),(61,119,'support'),(18,120,'technical'),(59,120,'technical'),(155,120,'technical'),(160,120,'technical'),(198,120,'technical'),(23,120,'security'),(37,120,'security'),(49,120,'security'),(101,120,'security'),(158,120,'security'),(42,120,'support'),(84,120,'support'),(14,121,'technical'),(16,121,'technical'),(40,121,'technical'),(129,121,'technical'),(175,121,'technical'),(10,121,'security'),(25,121,'security'),(86,121,'security'),(132,121,'security'),(141,121,'security'),(136,121,'support'),(185,121,'support'),(20,122,'technical'),(98,122,'technical'),(106,122,'technical'),(190,122,'technical'),(197,122,'technical'),(2,122,'security'),(19,122,'security'),(35,122,'security'),(64,122,'security'),(118,122,'security'),(168,122,'security'),(94,122,'support'),(143,122,'support'),(9,123,'technical'),(18,123,'technical'),(21,123,'technical'),(40,123,'technical'),(137,123,'technical'),(81,123,'security'),(126,123,'security'),(147,123,'security'),(170,123,'security'),(179,123,'security'),(91,123,'support'),(143,123,'support'),(12,124,'technical'),(44,124,'technical'),(49,124,'technical'),(65,124,'technical'),(122,124,'technical'),(69,124,'security'),(111,124,'security'),(113,124,'security'),(163,124,'security'),(172,124,'security'),(184,124,'security'),(89,124,'support'),(132,124,'support'),(20,125,'technical'),(74,125,'technical'),(126,125,'technical'),(140,125,'technical'),(153,125,'technical'),(83,125,'security'),(105,125,'security'),(147,125,'security'),(177,125,'security'),(180,125,'security'),(123,125,'support'),(179,125,'support'),(36,126,'technical'),(68,126,'technical'),(107,126,'technical'),(168,126,'technical'),(182,126,'technical'),(79,126,'security'),(103,126,'security'),(113,126,'security'),(125,126,'security'),(173,126,'security'),(9,126,'support'),(163,126,'support'),(18,127,'technical'),(93,127,'technical'),(140,127,'technical'),(147,127,'technical'),(186,127,'technical'),(10,127,'security'),(20,127,'security'),(64,127,'security'),(83,127,'security'),(177,127,'security'),(68,127,'support'),(111,127,'support'),(23,128,'technical'),(38,128,'technical'),(59,128,'technical'),(83,128,'technical'),(191,128,'technical'),(35,128,'security'),(90,128,'security'),(165,128,'security'),(166,128,'security'),(194,128,'security'),(21,128,'support'),(48,128,'support'),(50,129,'technical'),(88,129,'technical'),(99,129,'technical'),(161,129,'technical'),(164,129,'technical'),(28,129,'security'),(52,129,'security'),(112,129,'security'),(145,129,'security'),(170,129,'security'),(98,129,'support'),(194,129,'support'),(8,130,'technical'),(28,130,'technical'),(47,130,'technical'),(124,130,'technical'),(130,130,'technical'),(55,130,'security'),(63,130,'security'),(89,130,'security'),(166,130,'security'),(195,130,'security'),(36,130,'support'),(115,130,'support'),(19,131,'technical'),(52,131,'technical'),(56,131,'technical'),(66,131,'technical'),(82,131,'technical'),(27,131,'security'),(30,131,'security'),(59,131,'security'),(86,131,'security'),(113,131,'security'),(121,131,'security'),(125,131,'support'),(174,131,'support'),(101,132,'technical'),(148,132,'technical'),(178,132,'technical'),(185,132,'technical'),(195,132,'technical'),(4,132,'security'),(22,132,'security'),(61,132,'security'),(69,132,'security'),(86,132,'security'),(198,132,'security'),(71,132,'support'),(192,132,'support'),(9,133,'technical'),(15,133,'technical'),(35,133,'technical'),(39,133,'technical'),(143,133,'technical'),(3,133,'security'),(6,133,'security'),(87,133,'security'),(136,133,'security'),(137,133,'security'),(190,133,'security'),(145,133,'support'),(151,133,'support'),(73,134,'technical'),(111,134,'technical'),(122,134,'technical'),(125,134,'technical'),(145,134,'technical'),(20,134,'security'),(35,134,'security'),(49,134,'security'),(105,134,'security'),(135,134,'security'),(133,134,'support'),(158,134,'support'),(6,135,'technical'),(84,135,'technical'),(128,135,'technical'),(162,135,'technical'),(167,135,'technical'),(3,135,'security'),(11,135,'security'),(62,135,'security'),(185,135,'security'),(188,135,'security'),(200,135,'security'),(44,135,'support'),(176,135,'support'),(3,136,'technical'),(132,136,'technical'),(158,136,'technical'),(163,136,'technical'),(177,136,'technical'),(38,136,'security'),(135,136,'security'),(153,136,'security'),(179,136,'security'),(182,136,'security'),(131,136,'support'),(141,136,'support'),(6,137,'technical'),(42,137,'technical'),(173,137,'technical'),(186,137,'technical'),(194,137,'technical'),(16,137,'security'),(107,137,'security'),(153,137,'security'),(160,137,'security'),(192,137,'security'),(96,137,'support'),(108,137,'support'),(81,138,'technical'),(98,138,'technical'),(114,138,'technical'),(128,138,'technical'),(163,138,'technical'),(74,138,'security'),(91,138,'security'),(96,138,'security'),(132,138,'security'),(154,138,'security'),(22,138,'support'),(164,138,'support'),(24,139,'technical'),(42,139,'technical'),(68,139,'technical'),(134,139,'technical'),(164,139,'technical'),(41,139,'security'),(63,139,'security'),(91,139,'security'),(131,139,'security'),(137,139,'security'),(183,139,'security'),(18,139,'support'),(186,139,'support'),(8,140,'technical'),(44,140,'technical'),(51,140,'technical'),(141,140,'technical'),(142,140,'technical'),(28,140,'security'),(39,140,'security'),(120,140,'security'),(184,140,'security'),(197,140,'security'),(158,140,'support'),(167,140,'support'),(1,141,'technical'),(32,141,'technical'),(105,141,'technical'),(160,141,'technical'),(161,141,'technical'),(13,141,'security'),(63,141,'security'),(88,141,'security'),(109,141,'security'),(156,141,'security'),(168,141,'security'),(94,141,'support'),(146,141,'support'),(48,142,'technical'),(61,142,'technical'),(87,142,'technical'),(96,142,'technical'),(171,142,'technical'),(30,142,'security'),(36,142,'security'),(137,142,'security'),(141,142,'security'),(152,142,'security'),(122,142,'support'),(200,142,'support'),(17,143,'technical'),(76,143,'technical'),(84,143,'technical'),(93,143,'technical'),(156,143,'technical'),(7,143,'security'),(75,143,'security'),(78,143,'security'),(124,143,'security'),(160,143,'security'),(174,143,'security'),(43,143,'support'),(180,143,'support'),(23,144,'technical'),(90,144,'technical'),(92,144,'technical'),(127,144,'technical'),(129,144,'technical'),(54,144,'security'),(71,144,'security'),(79,144,'security'),(81,144,'security'),(93,144,'security'),(184,144,'security'),(30,144,'support'),(98,144,'support'),(5,145,'technical'),(61,145,'technical'),(97,145,'technical'),(114,145,'technical'),(195,145,'technical'),(20,145,'security'),(81,145,'security'),(126,145,'security'),(135,145,'security'),(174,145,'security'),(46,145,'support'),(165,145,'support'),(10,146,'technical'),(64,146,'technical'),(122,146,'technical'),(149,146,'technical'),(165,146,'technical'),(42,146,'security'),(80,146,'security'),(84,146,'security'),(101,146,'security'),(152,146,'security'),(48,146,'support'),(97,146,'support'),(36,147,'technical'),(38,147,'technical'),(82,147,'technical'),(92,147,'technical'),(183,147,'technical'),(100,147,'security'),(108,147,'security'),(129,147,'security'),(154,147,'security'),(196,147,'security'),(113,147,'support'),(127,147,'support'),(11,148,'technical'),(20,148,'technical'),(44,148,'technical'),(89,148,'technical'),(129,148,'technical'),(14,148,'security'),(107,148,'security'),(122,148,'security'),(154,148,'security'),(156,148,'security'),(25,148,'support'),(92,148,'support'),(53,149,'technical'),(118,149,'technical'),(137,149,'technical'),(142,149,'technical'),(159,149,'technical'),(15,149,'security'),(35,149,'security'),(106,149,'security'),(110,149,'security'),(160,149,'security'),(3,149,'support'),(102,149,'support'),(40,150,'technical'),(97,150,'technical'),(107,150,'technical'),(167,150,'technical'),(190,150,'technical'),(4,150,'security'),(6,150,'security'),(18,150,'security'),(105,150,'security'),(177,150,'security'),(20,150,'support'),(165,150,'support'),(64,151,'technical'),(77,151,'technical'),(103,151,'technical'),(135,151,'technical'),(187,151,'technical'),(52,151,'security'),(112,151,'security'),(139,151,'security'),(167,151,'security'),(183,151,'security'),(16,151,'support'),(188,151,'support'),(77,152,'technical'),(89,152,'technical'),(95,152,'technical'),(153,152,'technical'),(171,152,'technical'),(7,152,'security'),(33,152,'security'),(81,152,'security'),(161,152,'security'),(190,152,'security'),(108,152,'support'),(117,152,'support'),(49,153,'technical'),(105,153,'technical'),(170,153,'technical'),(177,153,'technical'),(186,153,'technical'),(2,153,'security'),(57,153,'security'),(96,153,'security'),(113,153,'security'),(137,153,'security'),(18,153,'support'),(194,153,'support'),(16,154,'technical'),(93,154,'technical'),(150,154,'technical'),(171,154,'technical'),(197,154,'technical'),(4,154,'security'),(27,154,'security'),(106,154,'security'),(155,154,'security'),(168,154,'security'),(12,154,'support'),(147,154,'support'),(71,155,'technical'),(123,155,'technical'),(148,155,'technical'),(178,155,'technical'),(198,155,'technical'),(17,155,'security'),(35,155,'security'),(41,155,'security'),(154,155,'security'),(157,155,'security'),(99,155,'support'),(175,155,'support'),(61,156,'technical'),(66,156,'technical'),(92,156,'technical'),(162,156,'technical'),(181,156,'technical'),(78,156,'security'),(98,156,'security'),(130,156,'security'),(172,156,'security'),(180,156,'security'),(182,156,'security'),(3,156,'support'),(150,156,'support'),(5,157,'technical'),(115,157,'technical'),(133,157,'technical'),(138,157,'technical'),(199,157,'technical'),(15,157,'security'),(26,157,'security'),(41,157,'security'),(65,157,'security'),(150,157,'security'),(12,157,'support'),(93,157,'support'),(44,158,'technical'),(48,158,'technical'),(70,158,'technical'),(83,158,'technical'),(143,158,'technical'),(5,158,'security'),(36,158,'security'),(45,158,'security'),(86,158,'security'),(101,158,'security'),(137,158,'support'),(184,158,'support'),(17,159,'technical'),(24,159,'technical'),(37,159,'technical'),(151,159,'technical'),(177,159,'technical'),(60,159,'security'),(140,159,'security'),(147,159,'security'),(172,159,'security'),(196,159,'security'),(44,159,'support'),(145,159,'support'),(6,160,'technical'),(15,160,'technical'),(63,160,'technical'),(108,160,'technical'),(109,160,'technical'),(43,160,'security'),(45,160,'security'),(55,160,'security'),(62,160,'security'),(155,160,'security'),(134,160,'support'),(147,160,'support'),(12,161,'technical'),(21,161,'technical'),(47,161,'technical'),(56,161,'technical'),(74,161,'technical'),(82,161,'security'),(87,161,'security'),(98,161,'security'),(165,161,'security'),(179,161,'security'),(53,161,'support'),(58,161,'support'),(19,162,'technical'),(21,162,'technical'),(40,162,'technical'),(104,162,'technical'),(123,162,'technical'),(30,162,'security'),(119,162,'security'),(130,162,'security'),(139,162,'security'),(152,162,'security'),(160,162,'security'),(7,162,'support'),(62,162,'support'),(51,163,'technical'),(53,163,'technical'),(84,163,'technical'),(161,163,'technical'),(188,163,'technical'),(35,163,'security'),(40,163,'security'),(61,163,'security'),(90,163,'security'),(148,163,'security'),(87,163,'support'),(191,163,'support'),(28,164,'technical'),(68,164,'technical'),(73,164,'technical'),(132,164,'technical'),(142,164,'technical'),(7,164,'security'),(29,164,'security'),(57,164,'security'),(83,164,'security'),(123,164,'security'),(135,164,'security'),(92,164,'support'),(165,164,'support'),(22,165,'technical'),(23,165,'technical'),(32,165,'technical'),(53,165,'technical'),(174,165,'technical'),(5,165,'security'),(46,165,'security'),(83,165,'security'),(114,165,'security'),(142,165,'security'),(186,165,'security'),(65,165,'support'),(98,165,'support'),(9,166,'technical'),(76,166,'technical'),(143,166,'technical'),(156,166,'technical'),(191,166,'technical'),(6,166,'security'),(72,166,'security'),(95,166,'security'),(117,166,'security'),(132,166,'security'),(49,166,'support'),(161,166,'support'),(22,167,'technical'),(93,167,'technical'),(151,167,'technical'),(159,167,'technical'),(198,167,'technical'),(26,167,'security'),(56,167,'security'),(74,167,'security'),(130,167,'security'),(152,167,'security'),(173,167,'support'),(184,167,'support'),(30,168,'technical'),(37,168,'technical'),(45,168,'technical'),(103,168,'technical'),(163,168,'technical'),(12,168,'security'),(80,168,'security'),(82,168,'security'),(162,168,'security'),(184,168,'security'),(169,168,'support'),(200,168,'support'),(26,169,'technical'),(69,169,'technical'),(116,169,'technical'),(155,169,'technical'),(186,169,'technical'),(2,169,'security'),(16,169,'security'),(42,169,'security'),(71,169,'security'),(95,169,'security'),(14,169,'support'),(111,169,'support'),(45,170,'technical'),(71,170,'technical'),(88,170,'technical'),(136,170,'technical'),(177,170,'technical'),(16,170,'security'),(51,170,'security'),(153,170,'security'),(164,170,'security'),(175,170,'security'),(1,170,'support'),(117,170,'support'),(20,171,'technical'),(99,171,'technical'),(154,171,'technical'),(184,171,'technical'),(197,171,'technical'),(17,171,'security'),(46,171,'security'),(66,171,'security'),(123,171,'security'),(194,171,'security'),(2,171,'support'),(63,171,'support'),(6,172,'technical'),(88,172,'technical'),(102,172,'technical'),(154,172,'technical'),(193,172,'technical'),(23,172,'security'),(47,172,'security'),(127,172,'security'),(148,172,'security'),(158,172,'security'),(170,172,'security'),(66,172,'support'),(146,172,'support'),(21,173,'technical'),(89,173,'technical'),(98,173,'technical'),(180,173,'technical'),(194,173,'technical'),(8,173,'security'),(19,173,'security'),(24,173,'security'),(133,173,'security'),(142,173,'security'),(92,173,'support'),(172,173,'support'),(29,174,'technical'),(47,174,'technical'),(55,174,'technical'),(113,174,'technical'),(140,174,'technical'),(13,174,'security'),(57,174,'security'),(120,174,'security'),(154,174,'security'),(175,174,'security'),(7,174,'support'),(143,174,'support'),(23,175,'technical'),(70,175,'technical'),(112,175,'technical'),(122,175,'technical'),(163,175,'technical'),(16,175,'security'),(65,175,'security'),(82,175,'security'),(140,175,'security'),(152,175,'security'),(161,175,'security'),(135,175,'support'),(160,175,'support'),(10,176,'technical'),(66,176,'technical'),(81,176,'technical'),(123,176,'technical'),(184,176,'technical'),(29,176,'security'),(63,176,'security'),(131,176,'security'),(167,176,'security'),(197,176,'security'),(36,176,'support'),(196,176,'support'),(27,177,'technical'),(64,177,'technical'),(91,177,'technical'),(103,177,'technical'),(125,177,'technical'),(28,177,'security'),(51,177,'security'),(57,177,'security'),(152,177,'security'),(183,177,'security'),(58,177,'support'),(131,177,'support'),(99,178,'technical'),(124,178,'technical'),(138,178,'technical'),(140,178,'technical'),(188,178,'technical'),(41,178,'security'),(79,178,'security'),(161,178,'security'),(173,178,'security'),(192,178,'security'),(68,178,'support'),(174,178,'support'),(16,179,'technical'),(44,179,'technical'),(117,179,'technical'),(136,179,'technical'),(171,179,'technical'),(11,179,'security'),(41,179,'security'),(83,179,'security'),(104,179,'security'),(162,179,'security'),(197,179,'security'),(32,179,'support'),(89,179,'support'),(13,180,'technical'),(35,180,'technical'),(142,180,'technical'),(146,180,'technical'),(193,180,'technical'),(42,180,'security'),(45,180,'security'),(96,180,'security'),(136,180,'security'),(160,180,'security'),(98,180,'support'),(173,180,'support'),(15,181,'technical'),(69,181,'technical'),(100,181,'technical'),(126,181,'technical'),(183,181,'technical'),(40,181,'security'),(43,181,'security'),(176,181,'security'),(181,181,'security'),(200,181,'security'),(17,181,'support'),(76,181,'support'),(14,182,'technical'),(26,182,'technical'),(68,182,'technical'),(100,182,'technical'),(145,182,'technical'),(75,182,'security'),(79,182,'security'),(161,182,'security'),(192,182,'security'),(199,182,'security'),(112,182,'support'),(152,182,'support');
/*!40000 ALTER TABLE `role_of_personel_on_event` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_personel_availability
BEFORE INSERT ON role_of_personel_on_event
FOR EACH ROW
BEGIN
    DECLARE overlap_count INT;

    SELECT COUNT(*) INTO overlap_count
    FROM role_of_personel_on_event r
    JOIN events e1 ON r.event_ID = e1.event_ID
    JOIN events e2 ON NEW.event_ID = e2.event_ID
    WHERE r.personel_ID = NEW.personel_ID
      AND (
           (e1.event_start_time <= e2.event_end_time AND e1.event_end_time >= e2.event_start_time)
          );

    IF overlap_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'This person is already assigned to an overlapping event.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,1,0),(2,2,0),(3,3,1),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(9,9,1),(10,10,1),(11,11,0),(12,12,0),(13,13,0),(14,14,0),(15,15,0),(16,16,1),(17,17,0),(18,18,0),(19,19,0),(20,20,0),(21,21,0),(22,22,0),(23,23,0),(24,24,0),(25,25,0),(26,26,1),(27,27,0),(28,28,0),(29,29,0),(30,30,0),(31,31,0),(32,32,0),(33,33,0),(34,34,0),(35,35,0),(36,36,0),(37,37,0),(38,38,0),(39,39,0),(40,40,0),(41,41,0),(42,42,0),(43,43,0),(44,44,0),(45,45,0),(46,46,0),(47,47,0),(48,48,0),(49,49,0),(50,50,0),(51,51,0),(52,52,1),(53,53,0),(54,54,0),(55,55,1),(56,56,0),(57,57,0),(58,58,0),(59,59,0),(60,60,0),(61,61,0),(62,62,0),(63,63,0),(64,64,0),(65,65,0),(66,66,0),(67,67,0),(68,68,0),(69,69,0),(70,70,0),(71,71,0),(72,72,0),(73,73,0),(74,74,0),(75,75,0),(76,76,0),(77,77,0),(78,78,0),(79,79,0),(80,80,0),(81,81,0),(82,82,0),(83,83,0),(84,84,1),(85,85,0),(86,86,0),(87,87,0),(88,88,0),(89,89,0),(90,90,0),(91,91,1),(92,92,0),(93,93,0),(94,94,0),(95,95,0),(96,96,0),(97,97,0),(98,98,0),(99,99,1),(100,100,0),(101,101,0),(102,102,0),(103,103,1),(104,104,0),(105,105,0),(106,106,0),(107,107,0),(108,108,0),(109,109,0),(110,110,0),(111,111,0),(112,112,0),(113,113,0),(114,114,0),(115,115,0),(116,116,0),(117,117,0),(118,118,0),(119,119,0),(120,120,0),(121,121,0),(122,122,0),(123,123,0),(124,124,0),(125,125,0),(126,126,0),(127,127,0),(128,128,0),(129,129,0),(130,130,0),(131,131,0),(132,132,0),(133,133,1),(134,134,0),(135,135,0),(136,136,0),(137,137,0),(138,138,1),(139,139,0),(140,140,0),(141,141,0),(142,142,0),(143,143,0),(144,144,0),(145,145,0),(146,146,0),(147,147,0),(148,148,0),(149,149,0),(150,150,0),(151,1,0),(152,2,0),(153,3,0),(154,4,0),(155,5,0),(156,6,0),(157,7,0),(158,8,0),(159,9,0),(160,10,0),(161,11,0),(162,12,0),(163,13,0),(164,14,0),(165,15,0),(166,16,0),(167,17,0),(168,18,0),(169,19,0),(170,20,0),(171,21,0),(172,22,0),(173,23,0),(174,24,0),(175,25,0),(176,26,0),(177,27,0),(178,28,0),(179,29,0),(180,30,0),(181,31,0),(182,32,0),(183,33,0),(184,34,0),(185,35,0),(186,36,0),(187,37,0),(188,38,0),(189,39,0),(190,40,0),(191,41,0),(192,42,0),(193,43,0),(194,44,0),(195,45,0),(196,46,0),(197,47,0),(198,48,0),(199,49,0),(200,50,0),(201,51,0),(202,52,0),(203,53,0),(204,54,0),(205,55,0),(206,56,0),(207,57,0),(208,58,0),(209,59,0),(210,60,0),(211,61,0),(212,62,0),(213,63,0),(214,64,0),(215,65,0),(216,66,0),(217,67,0),(218,68,0),(219,69,0),(220,70,0),(221,71,0),(222,72,0),(223,73,0),(224,74,0),(225,75,0),(226,76,0),(227,77,0),(228,78,0),(229,79,0),(230,80,0),(231,81,0),(232,82,0),(233,83,0),(234,84,0),(235,85,0),(236,86,0),(237,87,0),(238,88,0),(239,89,0),(240,90,0),(241,91,0),(242,92,0),(243,93,0),(244,94,0),(245,95,0),(246,96,0),(247,97,0),(248,98,0),(249,99,0),(250,100,0),(251,101,0),(252,102,0),(253,103,0),(254,104,0),(255,105,0),(256,106,0),(257,107,0),(258,108,0),(259,109,0),(260,110,0),(261,111,0),(262,112,0),(263,113,0),(264,114,0),(265,115,0),(266,116,0),(267,117,0),(268,118,0),(269,119,0),(270,120,0),(271,121,0),(272,122,0),(273,123,0),(274,124,0),(275,125,0),(276,126,0),(277,127,0),(278,128,0),(279,129,0),(280,130,0),(281,131,0),(282,132,0),(283,133,0),(284,134,0),(285,135,0),(286,136,0),(287,137,0),(288,138,0),(289,139,0),(290,140,0),(291,141,0),(292,142,0),(293,143,0),(294,144,0),(295,145,0),(296,146,0),(297,147,0),(298,148,0),(299,149,0),(300,150,0);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technical_equipment`
--

DROP TABLE IF EXISTS `technical_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technical_equipment` (
  `technical_equipment_ID` int(11) NOT NULL AUTO_INCREMENT,
  `building_ID` int(11) DEFAULT NULL,
  `equipment_name` varchar(255) NOT NULL,
  `equipment_description` text NOT NULL,
  PRIMARY KEY (`technical_equipment_ID`),
  KEY `building_ID` (`building_ID`),
  CONSTRAINT `technical_equipment_ibfk_1` FOREIGN KEY (`building_ID`) REFERENCES `building` (`building_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technical_equipment`
--

LOCK TABLES `technical_equipment` WRITE;
/*!40000 ALTER TABLE `technical_equipment` DISABLE KEYS */;
INSERT INTO `technical_equipment` VALUES (1,1,'Speaker','Want tell such debate up evidence there.\nSmall performance against campaign foreign when success.'),(2,1,'Console','Majority main particularly worker. Sit course meeting student off. Particular partner interview bit me.\nMind discuss city. Early relate leg ago glass mouth.'),(3,1,'Light','Action owner western water tough close film book. Great top employee drug industry. Painting bank of second.'),(4,1,'Light','During source know land behind. Wait trial her east account want. Compare piece per agreement.'),(5,1,'Light','What of article decision. Draw become middle piece election. Rock scientist unit decade fast somebody.\nDefense success sure during last. Those feel only scientist. Significant board get citizen.'),(6,1,'Light','Would I professor for election hit point. Other cause should most ok. Art former food stuff right fast chair.'),(7,1,'Light','Sit during big husband without change.\nNo sign age same area. This adult ago sort usually watch action.'),(8,1,'Console','Along politics environmental girl for eight. Card game street poor name building blue.\nGo technology agency early these study interest yes. Report unit store story national around.'),(9,2,'Light','Wait exactly well animal leg try generation share. Summer what city should central new. Property lay usually leave quality laugh.'),(10,2,'Light','Fly prove response teach year. Put meeting difference. Maybe very particular few rich four brother deep. Term civil he.'),(11,2,'Speaker','Standard child born his school energy budget trial. Guess machine college ready smile. Will memory property thing current soldier spring.'),(12,2,'Microphone','Clear tonight simple difference. Fact husband seven argue identify born. Big do low movie everybody what.'),(13,2,'Console','Bring believe during enjoy tonight voice. Reality every conference us exactly natural. Team military any democratic exactly score whatever.'),(14,3,'Light','Attorney police catch bar meet. Tree specific manage home world whose. Summer customer nation family appear amount teacher. Situation six player.'),(15,3,'Light','Gun determine choice step. Book resource professional herself environment argue. More close budget.\nLetter only door everything another. Above spend key.'),(16,3,'Special effect','Network institution mouth change. President month new value protect best almost. Lot finally history expert continue clearly.'),(17,3,'Console','Town wear for light. Game degree talk method.'),(18,3,'Microphone','Company laugh past report close month participant be. Summer believe argue skill world eat major win. Away remain billion positive culture explain go evening.'),(19,3,'Microphone','Those adult issue let new science. Form dog join Congress.\nExpect event her effect foreign hear nature.'),(20,3,'Light','Section sense order radio central. Yourself difficult cut central worker remain. Discuss teacher whom then full risk hard collection.'),(21,3,'Light','Because new rest case list. Individual western sit resource same reflect focus sometimes. Magazine choose different economic speak black read.'),(22,3,'Microphone','I across true ever deal.\nSpecific left court reality may. More type name appear low show. Admit item indeed simply word.'),(23,3,'Console','Matter design nearly control because. Husband place thing trouble.\nTry some fast. Because knowledge first public.'),(24,3,'Light','Third team budget garden article until commercial. Study become attorney under.\nTrade expert probably minute cup. Admit ever item cause. Than nor up require.'),(25,3,'Speaker','Marriage need goal arrive our. Guess coach approach partner ground identify discover situation. Of hit it item.'),(26,3,'Console','Better because while soon specific outside control event. Ever catch range instead my type as.'),(27,3,'Console','Lot other action happen. Race use morning article too adult outside.\nInterest peace building game senior real. Final may learn Congress thought whom something.'),(28,4,'Speaker','Suddenly prevent both model you trip technology. One election sit gun song environmental reduce.'),(29,4,'Microphone','Necessary make standard above executive music reality. Learn level chance edge data approach.\nChallenge current Mrs. Often likely discover skill water.'),(30,4,'Light','Hard bad wonder food. Something tree easy challenge generation per executive.'),(31,4,'Speaker','View firm turn I without reduce. Base any onto generation. All space cost before successful where.'),(32,4,'Microphone','Magazine thank prevent rise. Build feeling area.'),(33,5,'Special effect','Rate you win see responsibility. Reveal resource security voice their.\nEight executive professional media decision little. Green assume city size prevent former business.'),(34,5,'Microphone','Late letter believe to run. Perform fund left hundred office discussion nearly. College ground rest. Not join fire medical.'),(35,5,'Console','Consider mission office school pass since as. Finish practice possible increase.\nThreat value yes walk. First agency as effect her.'),(36,5,'Light','Blood officer long wish read one phone. Song whom hope positive body. Itself less five recognize teacher near.'),(37,5,'Microphone','Half care reality father measure list. Movie chance seven age which seek.'),(38,5,'Speaker','Race worry bit throw serious seek. Thought describe any agent agree summer debate. Must check most evening growth rule. Walk suddenly late strategy perhaps.'),(39,5,'Light','Parent deep Democrat company wind bad. Very paper future least. Republican child we plant cultural author push.'),(40,5,'Light','Phone true only why day level. Various single everyone. Board trip from few evening we price.'),(41,5,'Light','Official similar scientist physical go power water ground. Rather bring force stage figure feeling.\nWorker management little me issue may talk.'),(42,5,'Microphone','Could newspaper information toward professor low cup. Rule alone president though.\nOwner fish right take. Thousand develop last.'),(43,5,'Microphone','Listen very training organization imagine method agency. Little day hold image sure.\nSpecific reduce inside war.'),(44,5,'Light','Itself sound early reality sea allow. General professional nice down house.'),(45,6,'Speaker','Floor above more behavior image rather already she. Choice cover challenge make clear. Make last possible mother home table family.'),(46,6,'Console','Present turn cut how short machine which. President free fast husband. Mr spend marriage stand believe floor oil.'),(47,6,'Speaker','Similar only peace week picture.\nAlways ever out pressure. Either still administration city teacher school. Create tonight score pass shake wrong.'),(48,6,'Special effect','Space tend pay figure cut. Off table home speech like coach. Room point sound pretty than responsibility.'),(49,6,'Light','Herself everybody world car. Now interest property.\nBeyond budget actually natural. Opportunity size organization quickly.'),(50,6,'Special effect','Sign imagine stay director star. Until hot institution ready oil rich.'),(51,6,'Microphone','Save kitchen glass difficult necessary determine myself. Rule defense my low. Paper see raise.'),(52,7,'Microphone','Describe much successful later until. Doctor have we against work meeting. Front growth significant issue.\nPlayer them allow own both knowledge.'),(53,7,'Light','Cover individual interesting audience. Station thousand specific spring official break easy. War technology system determine commercial south.'),(54,7,'Microphone','Kitchen follow cover out. Morning herself recognize serve simple read buy position. Nice development continue image scene.'),(55,7,'Microphone','Beautiful wait bad once table clearly visit trouble. Program big much small practice away sometimes. Management try plan drug rise.'),(56,7,'Special effect','Book word second.\nClass arrive herself ahead worry executive. Down high argue hear. Six past executive education air measure.'),(57,7,'Light','Discover often avoid open thing rather base. Reduce fish seem hit. Fly just year medical accept history both.'),(58,7,'Light','Recently under action food thing half consider. Risk million including market power party clearly.'),(59,7,'Console','Detail from be across them sit from religious. Environmental top course ground.'),(60,7,'Console','Ready same arrive support can or board. Center eight magazine adult college another some.\nTreat thus teach social. Prevent control technology year.'),(61,8,'Console','Threat result its their toward study. Red hope their goal behavior. Respond ever movie citizen issue.'),(62,8,'Console','Manage outside new amount approach. Child house surface else husband. Nice song describe exactly.'),(63,8,'Microphone','Individual morning score talk discuss easy. Idea style wide anyone.'),(64,8,'Light','Market significant hear test surface the. Available check will plan game.'),(65,8,'Speaker','On eye still know property call. Million thus business fall author become smile. Almost day side tend hit. Mr couple to eight.'),(66,8,'Special effect','Art officer woman board ahead my positive. Congress off major data degree according.'),(67,8,'Light','Cup south certainly but market return travel answer. Determine animal yeah break grow campaign. Be boy professor eat trip.'),(68,8,'Special effect','Product arm everyone. Arrive poor Mr performance.\nGood probably agreement once you. Eat newspaper hand rest.\nRole list issue end federal practice world. Enter in course.'),(69,8,'Speaker','Ask market cut with piece. Condition economy popular although sound deal so serve.'),(70,8,'Microphone','Class feeling arrive appear professional people.\nRequire everything end best per protect site. True address remember newspaper imagine yard very.'),(71,8,'Special effect','Data south condition color kid case. Beautiful right always.'),(72,9,'Special effect','Manager some finish federal star often. Assume would pattern wife develop wind.'),(73,9,'Speaker','Major center bag player key politics. Responsibility option charge through those. Citizen city truth director beyond whether.'),(74,9,'Console','My affect pick democratic agree idea manage late. Check rise economy raise enjoy sort. Yeah development back experience star.'),(75,9,'Speaker','Possible opportunity radio determine could. Attention put late itself leader improve. Government floor cell develop.\nCivil music condition late movement. Happy own our step mention.'),(76,9,'Console','Feeling whole moment. Section threat bar Republican add. Should particular other sit fill perform.'),(77,9,'Microphone','Thousand who religious under born school protect. Meet already during author it.\nArm security today. Unit southern ten hour. Range friend reality over memory foreign.'),(78,9,'Light','Each start pass over including since. Response and stand participant.\nPart statement that sound within.'),(79,9,'Console','Citizen training not seek may process. Management reflect production deep trade happen only.\nWhy level truth create manage.\nOf man husband one artist.'),(80,10,'Special effect','Employee no career leave ever. Language more sport in.'),(81,10,'Speaker','Evidence choose one. Court throughout beat. International national project sing even room ever strong.'),(82,10,'Special effect','Pattern exactly smile rich cover. Spend before among police.\nAfter people current real trial marriage space daughter.\nStuff popular play property guy room change.'),(83,10,'Speaker','Rest affect live focus say. Thank section design drop traditional move mission. Institution section our.\nWill society be single. With bit successful tax general pick then.'),(84,10,'Console','Board debate home budget. Pattern garden lead feeling security common. Anything suddenly their manage amount.'),(85,10,'Light','Mrs local stand leader. Baby difference explain push one reveal. Art daughter situation myself. Although goal month.'),(86,10,'Microphone','A style everything above attack. Result young type get. Option former vote tough executive plan these. Serve read play hear law model style.'),(87,11,'Light','Fill business skill who support fact design. Sure through off seek foreign wrong. Woman identify into evening impact.'),(88,11,'Special effect','Even knowledge family final size side. Grow stay woman form.'),(89,11,'Light','Guy change page seat. School Congress capital effect decision.\nIt become exactly appear. Hospital international company reason let score.'),(90,11,'Microphone','Your manager suffer. Only exactly police herself agreement.\nNewspaper cell possible final just main participant. Religious gas listen what present. Daughter arm fill face use form.'),(91,11,'Special effect','Such rock evening thank. Daughter hope real senior.\nEnjoy director outside interesting eye. Some fast Mrs.'),(92,11,'Console','Put state guy environmental remember. Girl back address teach discuss. Beat power others exist road knowledge.'),(93,11,'Console','Once relationship lot bill. Why leave fly three something. Need whatever successful try.'),(94,11,'Speaker','Bar yeah whether son. They nature forget how.'),(95,11,'Special effect','Anyone city get join music than. Current film expert report always degree half. Position bill manage.'),(96,11,'Special effect','So process social collection challenge. Smile himself buy subject individual.\nNation staff billion along personal. Appear show lose when near hair.\nThank season fight. Leader arm across it social.'),(97,11,'Speaker','Wrong somebody against contain boy.\nHand hair behavior treat manage improve. Health room reason pay our skill physical.'),(98,11,'Speaker','Require baby country occur. Heart something run team.\nCut note knowledge everything. Trip do term fact ago top. Try parent your. Those man ten we keep turn.'),(99,11,'Console','Miss spend could represent carry west alone. Congress us bag whether. Learn someone imagine someone.\nBillion sell three stand table. Event lawyer interest ok.'),(100,12,'Microphone','Free garden nature address indeed central station carry. Fly father husband responsibility pattern.\nPeople his both. Something father but how.'),(101,12,'Speaker','Win tree town it talk head enter. Ready by church lay member.\nResearch half certain table create early. Though although end data idea. Region office ready hope.'),(102,12,'Console','Letter training public more world. Article school note begin. Chair get other simple significant ability age.'),(103,12,'Special effect','Recently and position nice real. Over either grow pretty tax how.'),(104,12,'Console','Professional scientist two speak dream report. Message born there pattern cold. Ago market agreement between officer project inside foot.'),(105,12,'Microphone','Security ready oil. Garden run go hold. Against answer Congress mind ok minute.'),(106,12,'Console','Specific newspaper society newspaper. Course write smile woman through moment loss. Hot return well word fill dinner pay.'),(107,12,'Speaker','Education whatever subject middle major food avoid under. Window than collection miss country teacher hand. Just head else seven.'),(108,12,'Console','Development effort avoid allow third edge always. During check key.'),(109,13,'Microphone','Fund among issue care author wrong risk. Thousand protect continue task rich owner. Actually worry standard start really still.'),(110,13,'Special effect','Trouble without however common every final world everybody. Beat off evening fly. Wait interesting star land.'),(111,13,'Console','Board drive trouble action field machine. Billion trade trade couple hit full kind clearly.\nBetween support discuss above born choose sure particular.'),(112,13,'Console','Particularly letter inside film forward let total visit. Generation gas plant so.\nReceive sort tell general hot coach season. Owner particularly where.'),(113,13,'Light','Game music man even wear. Particular rich high life democratic. Finally truth third maybe attention section future.'),(114,13,'Microphone','Listen pass share drive. Station feeling inside talk former friend.\nGas cover specific industry stop where. Design board no.'),(115,13,'Special effect','Believe range could far notice court main. Personal remain dark one box.'),(116,13,'Light','Daughter live friend feel design player. Between television cover suddenly too traditional large.'),(117,13,'Speaker','Ball common claim wind hope budget mouth. Professional check adult. Mind half stay.'),(118,13,'Microphone','Explain people garden garden low degree man. Decide cold service talk so along foreign. Prevent citizen cost plan so. Truth cup nothing none later.'),(119,13,'Speaker','Matter call turn safe feeling. Television reach base marriage kitchen clearly.'),(120,13,'Speaker','Food miss according themselves through. Rich place number.\nSomeone ok expect. Look girl production build.'),(121,14,'Speaker','Behavior protect data mind every knowledge. Hope leave speak report mind.\nMay year bill. Media type image second.\nStructure personal worker job into. Vote knowledge toward sometimes.'),(122,14,'Light','By adult expect office include property. Resource order report school.\nConsumer front small. Example family might form bit.'),(123,14,'Speaker','System however accept blood hear win maintain. Employee pull interesting total. Ahead mouth good deal.'),(124,14,'Special effect','Short professor attention build TV hard fund.\nScene music measure best season. Professional enjoy democratic fund computer project join.'),(125,14,'Special effect','South after room range bill. Drive sister region. Meet ahead director have staff.'),(126,14,'Light','Finally second too cause his human whatever. Interview practice world. President notice guess deep position section.'),(127,14,'Microphone','Political watch assume. Range only those until consumer hotel. Strategy lose beat foot it.'),(128,14,'Special effect','Power build recently west.\nResponsibility yeah American ball relate. Whether career laugh source four culture recently.'),(129,14,'Speaker','Yourself image month may. Probably address citizen support.'),(130,15,'Console','Even professor finish moment within time seven. Factor air wrong security class through. Crime training field street.\nWhether clear thought building.'),(131,15,'Speaker','Statement health science then opportunity throw lay. Term recently somebody ok.'),(132,15,'Console','Walk role board easy network foot. Quickly office pull study. Quality music until teacher wrong enter though.'),(133,15,'Speaker','Season vote everything. Lead grow sign tend although.\nTonight perform in. Born PM size as trade under opportunity.'),(134,15,'Light','Challenge fear project peace down PM no. Choose table painting.\nDiscussion than social spend. Police small run oil.'),(135,15,'Special effect','Often senior good. Former hope but including actually change senior defense. Address trip son my same when kid. Improve win situation indicate throw.\nWill practice little myself mission.'),(136,15,'Light','Process defense finish why program high benefit. Office ahead operation production keep. Would your effect skin.'),(137,15,'Microphone','Fast few study speak coach peace. Get bill wall common finish amount start.'),(138,15,'Microphone','Paper management investment exist. Take ten truth explain. Rock hold interesting level development view everybody.'),(139,15,'Microphone','Them apply store us study. Ahead coach tax himself beautiful.'),(140,15,'Special effect','Ok concern family. Although money note statement ball two.\nReduce option ready play brother. Charge common figure politics speak girl. Before them expert affect.'),(141,15,'Microphone','Official prevent official finish serve artist. Reason west eye career value spring. Teacher today around.'),(142,16,'Special effect','Upon bill service service scientist itself brother. Fact line after finish little debate. Worker perhaps home.'),(143,16,'Console','Own minute involve month player give. Yet light social music others.\nInformation moment near perhaps argue information. Environment sell particular would candidate.'),(144,16,'Special effect','Crime sure imagine career. Beat water most suddenly.'),(145,16,'Microphone','Thus identify wind anyone live. Cost certainly claim involve.\nCut this why final war change. A loss pay box participant.'),(146,16,'Special effect','Think parent back budget traditional performance. Year light sign pick list never.\nSeat them choice.'),(147,16,'Light','Past through whom fear above his. Process wall learn name positive.'),(148,16,'Console','Expect stock answer across huge. Include explain easy before detail. Return physical people thank.\nBring east past already reflect which half. Prove behavior attention go hard keep film.'),(149,16,'Microphone','Police choice management direction. Something opportunity believe technology college.'),(150,16,'Speaker','Along daughter off drug. Ahead simply mention personal easy tough.'),(151,16,'Microphone','Life nature purpose coach direction scene across. Only will notice stuff street statement success. Series woman wish fight right role color school.'),(152,17,'Light','Force skin create year race. Catch training finish data knowledge or population.'),(153,17,'Light','Resource sometimes detail music ago. Pm admit employee toward play anything. They firm light cup brother turn police few.'),(154,17,'Special effect','Possible rise attack main us. White discover single cold talk standard.'),(155,17,'Microphone','Agency film fire one nothing hundred. Soon poor matter research. Week north news car attorney different.'),(156,17,'Light','Tell note ready choice amount chance according. Board free beautiful. Red to fill real. Me arrive country your.'),(157,17,'Speaker','Food throughout billion short include begin.\nPolitical employee quickly push. Amount pattern box do reveal.'),(158,18,'Light','Experience certain member music standard without. Happen attorney bad situation. Particular audience car fund.'),(159,18,'Console','Step save challenge away bed yourself better teacher. Reason baby raise physical money hundred. Cell life bit discover reflect Mrs fight history.'),(160,18,'Special effect','Simple enjoy natural catch. Firm they wall baby.'),(161,18,'Speaker','Clearly capital outside although least probably. Easy phone information necessary enter. Citizen offer simple.'),(162,18,'Special effect','Mouth gas with. Bar north bar own president. Police crime particularly.'),(163,18,'Special effect','First effort environmental thing participant.'),(164,18,'Console','Meeting prevent imagine college within. Yes TV contain become.'),(165,18,'Special effect','His television must kid leg policy miss. Drive account already start.'),(166,18,'Special effect','Again a particular hundred both eye begin. Arm network prepare sea point. Keep national reason.\nMouth reason reduce community. Seem because box.'),(167,18,'Microphone','End method instead ability trip. Free him side must. Entire short final success.'),(168,18,'Light','Offer sort nature bill ever book. Spend open issue community foot past question. Reality artist common lawyer claim medical. Seek medical forward.'),(169,18,'Microphone','Sense room leg agent. Thank simple after health term. Animal under name management compare what discuss.'),(170,19,'Console','Red lead certain something them operation forget term. Sign direction authority ten control unit Democrat school. Certainly who seek final performance answer.'),(171,19,'Speaker','Else baby establish everyone turn reason spring.\nStyle blue pressure action write cover. Act film remain machine stop use while take. Guy week peace just wonder.'),(172,19,'Microphone','Feel respond six authority. Senior later half hold huge result so. Technology go speak else establish.'),(173,19,'Speaker','See record accept town. Drug seven everything suddenly environmental drop ahead. Agree down computer scene teacher second.'),(174,19,'Special effect','Since occur force loss. General ahead hair less statement.\nItem marriage stop indeed these. Writer so white already.'),(175,19,'Microphone','College watch daughter technology them life hot him. Blue everyone hand stage. During different page chair.'),(176,19,'Light','On form artist his such far despite. Produce style even.\nIndicate real peace nice amount treatment.'),(177,19,'Microphone','Security positive tell black almost. Dark when interesting trial question billion. Also simple record charge one.\nSpend process occur mention stuff instead.'),(178,19,'Special effect','Herself drug whole former road. Improve democratic music message born.'),(179,20,'Speaker','Much radio model item theory heart idea good. Second industry political thought.'),(180,20,'Console','Glass vote again. Thousand magazine name property stock yard. Candidate take he speak cell nothing.'),(181,20,'Microphone','Fast future of half leader travel ability view. I focus left western also series. Resource customer situation peace price true.'),(182,20,'Special effect','Would glass article oil country two impact. Pick environment among international. Front western report truth. Each move front dog make red nearly.'),(183,20,'Special effect','Behavior kid attention carry section long throughout. Against other health property arm.'),(184,20,'Console','Avoid long white stuff heavy blood two. Few likely gas.\nCandidate grow agent song treatment week safe. With onto manager particularly this.'),(185,20,'Speaker','Account growth become.\nForm military sure military us thus charge. For radio market personal. Out work a he.'),(186,20,'Special effect','Hit perform role memory court truth matter. Language good hair heart.\nNature feeling light hit figure. Until concern surface. How deal second from.'),(187,20,'Microphone','Return hit determine mission enough compare drug real. Thus arm magazine better news help.\nAgent room dinner early. Crime yet education popular consider.'),(188,20,'Speaker','Them ground stop tell language there staff. Between score sell along husband. Matter pretty red. Real feel find score bill position.'),(189,20,'Light','Establish teacher watch finally laugh shoulder. Close hard amount head policy act them. Owner join herself never near should moment about.'),(190,20,'Speaker','Author once likely point learn military. Two pass value peace reduce. Consumer develop tax population wind second support.'),(191,20,'Light','Protect without accept sign idea beautiful money building. Alone real a science law together.'),(192,20,'Console','Something human attention write for summer. Its position degree next. Oil their business.\nNor ago at design cover. Development score size interest nor.'),(193,20,'Microphone','Organization heavy property best top compare. Commercial see stop theory recent.\nFirm dog shake rich. Operation subject send question.'),(194,21,'Special effect','Remain final but and whose must goal.'),(195,21,'Microphone','Better kind range plant recent energy buy just. Yet chance society physical take family peace phone.'),(196,21,'Console','Election fear cup again. Professor miss care owner standard left couple.\nAt decision husband plant main. Face push range they their social easy. Similar part film guess ten.'),(197,21,'Light','Line old agree similar field step news. Early line soon try whether later anything.'),(198,21,'Light','Heart happen thousand friend last break all. While message ago. Discussion represent spring sister degree dinner sense.'),(199,21,'Console','Nation hotel team most. Agreement system dream expect above prepare add term.'),(200,21,'Speaker','Her reflect fact.\nWhich catch couple cold technology rest. Main authority lot continue daughter anyone institution. Specific others forward direction wall.'),(201,21,'Speaker','Create work itself white. Author into want particular eight we without.\nIndividual himself PM last.'),(202,21,'Console','Me image task main tax. North offer himself strategy. Issue market try necessary artist sit.'),(203,21,'Light','Option every use become. Quality dark step inside police class however generation. Rest cause vote hope avoid quite sign southern.'),(204,21,'Light','Customer program clear second these be. Former thank themselves hold.'),(205,21,'Console','Music on live control.\nTraditional worker hour.'),(206,22,'Console','Thank fine study. Require heavy head themselves. Both avoid inside popular agent offer consumer you. Determine treatment sure heart box.'),(207,22,'Light','Explain back assume popular along measure opportunity. After turn PM whatever. Join toward certain figure high condition.'),(208,22,'Light','Standard set dinner cultural easy. Government black third final become federal exactly. Room low later reality strategy.'),(209,22,'Speaker','Sing analysis city. Land much event training. System eye population yet finish rule best. Nation firm group off capital.'),(210,22,'Light','Beyond single director player. Plant billion fall friend financial here believe perform.'),(211,22,'Light','Take effect view reveal hear sign six program. Baby themselves why member this medical.\nDegree whether your. Whether win little lay report me nation.'),(212,23,'Speaker','Wear accept evidence fish eat simply. Be sure little suggest point baby here.'),(213,23,'Console','Ability box society tax. Alone fire plant pull attention image area. World production also buy fast gun water day.'),(214,23,'Microphone','Course glass help tonight. Alone fire its any son start wind. Call government feel physical into son open.\nDoor study record begin. Source water weight news practice.'),(215,23,'Console','Let partner top certainly. Guess lose season job.\nIf between subject as claim. Air sell condition stop. Less situation blue imagine thus site.'),(216,23,'Special effect','Region family home trip hold energy human. Century really director ago student himself.\nCollege their skill wall radio. Key light on green ahead TV common.'),(217,23,'Light','Economic gas drop evidence. Strategy do parent act. Green wrong remain floor hit.\nBed person whole bank. Save increase knowledge speech high. Have she language memory source.'),(218,23,'Speaker','Stop what week nor. Which next economic mean turn magazine. Serious beautiful point off draw admit difficult.'),(219,23,'Light','Over through gun home in offer early. Bed as type front late. Art magazine hot.'),(220,23,'Light','Always region center her health theory start. Dog key painting relate. Watch time star.'),(221,23,'Light','Whatever certain more evidence pull least sometimes. Find front difficult foreign voice. Understand since try owner staff help.'),(222,23,'Special effect','Arrive writer behind. One door of show word sit. Address conference throughout truth.\nPm within those term network stand. Factor old kid like. Chair whole six forget enough.'),(223,23,'Console','Statement or half detail order knowledge. Idea board their everything. Respond boy begin government represent.\nCurrent gun factor. Strong investment perform.'),(224,23,'Console','Quality task force step call then.'),(225,23,'Microphone','Feeling within now father goal major analysis fill. Dog gas keep show account new nothing.\nIt until indicate reflect off short. Soldier so say travel.'),(226,24,'Light','Allow dinner among occur mouth responsibility. Play itself coach gas. Painting series respond once benefit his job.'),(227,24,'Speaker','Son single anyone take local just next. List road child bill able. Probably field street expert teach human feel.'),(228,24,'Speaker','Available house single public find Democrat never. Least rise remember official.'),(229,24,'Light','Back laugh society process. Area close little institution above consider training perform. Southern fact court blue tax simply us which.'),(230,24,'Console','Whose last avoid letter Democrat alone for.\nPolitics firm eat head middle. Front man challenge age name firm toward.'),(231,24,'Light','Bag understand impact camera.\nKind long determine team. Blue just discover wish push. Central education draw enter lay.'),(232,24,'Special effect','A their boy career. Before help prove street half require paper.\nDrive billion bag myself allow within one. Cold much smile degree. White any home degree whom what follow.'),(233,24,'Microphone','Whole high dog something risk write star. Economic town interest sister plant gun body.\nLarge born get join. Garden raise table worry song. Dream official month indicate.'),(234,24,'Special effect','Cup human condition medical summer environment test. Describe board own fast executive main deep. Sort not military market main letter light.'),(235,24,'Speaker','Born at nearly. Hand organization cover. Each she everyone official major.\nWife describe mean.\nMyself peace deep doctor.'),(236,24,'Speaker','Class break experience foot everything. Stop little spring city. When none treatment plant which they.'),(237,24,'Console','Light however go eat site last. Our war sell agency.\nSuccess land couple successful. Manage design garden should guess born listen girl.'),(238,25,'Special effect','Send production best rich add. Left drive science almost. Recent someone maybe without company.'),(239,25,'Microphone','Set woman leader often information. South old budget tax.'),(240,25,'Light','Standard its ever often foot responsibility forget. Then money dinner finally whether official.'),(241,25,'Console','Middle impact young property. Whom yourself scene ok cause prepare military. Down dinner home TV politics western.'),(242,25,'Console','Wrong add east technology possible order. Fill structure beyond seem suggest daughter nothing.'),(243,25,'Special effect','Range product moment however sort. Need media charge smile line. Tax commercial possible lead again author prepare five.'),(244,25,'Console','Start here south these bit ok director. Material player receive.'),(245,25,'Console','Skill really per really key popular measure.\nAlways later trade probably game reach time thought. Cell property per nor yard bag economy.'),(246,25,'Console','Television own year action. Moment appear young.'),(247,26,'Light','Agree discuss officer common discover sound walk. They north attention my compare notice.'),(248,26,'Special effect','Imagine more senior recently turn final glass real. Direction management two ever.'),(249,26,'Console','Consumer believe family with key station design. Dog air long than.\nThrow section economic much. Several debate positive air tell.'),(250,26,'Special effect','Either number yes role Mrs area difference. Hope something can game safe. Wear wish exactly expert eat leader.'),(251,26,'Speaker','Military again threat care. Staff reality clearly truth those yard not. Decide sit ball west among management follow.'),(252,26,'Special effect','It really he price. Young approach push low.\nWar full on five. Boy fish total three speech.'),(253,26,'Special effect','Scientist day whom game energy center. Evidence stay late standard.\nAcross risk require ready reflect soon. Character large newspaper according let.'),(254,26,'Console','Meeting technology treat first provide strategy. Past idea in car group air run.'),(255,26,'Special effect','Leader difficult today exist. Maintain manage seven event under pretty sister. Her idea cup brother keep man car. Carry join really.'),(256,26,'Microphone','Detail knowledge five picture baby include cover. Society upon control star television land.'),(257,26,'Microphone','None act pay city sit positive season argue. Itself newspaper record.'),(258,26,'Speaker','Yet boy case yes face. Personal theory rate off which part.\nSenior week purpose. System tonight into finish challenge.'),(259,27,'Special effect','Design green middle.\nNatural energy bad others strong serious. Challenge nation space determine include financial.'),(260,27,'Special effect','Deal region remain avoid easy. Number guess name fight drive. Take world leader site.'),(261,27,'Microphone','Star bar recently worker send. Success same significant respond age modern value. Practice sport budget yourself onto. Coach after day.'),(262,27,'Microphone','Staff see remember. Produce special even speak rather song. Democrat that lay yourself.\nContinue every food large. These firm best read simply.'),(263,27,'Console','Number effort trade all. Need billion government main. Likely carry here agency particular door worry.\nExpect pretty you east save development pass. Guy sport pick life.'),(264,28,'Console','Feeling consumer game recognize brother seat business meeting. Soon by true crime film they hope yeah. South though data friend month continue provide compare. Kid four way.'),(265,28,'Console','Compare administration figure assume area. Speech case receive certainly. Can create clearly laugh politics population.'),(266,28,'Speaker','Management necessary air class note. American want seem similar. Almost beautiful high reality.'),(267,28,'Light','Second newspaper unit. Happen blood by security drive. Ability lose measure.'),(268,28,'Light','She sea fund life. Social window prepare thank big range note president.'),(269,28,'Microphone','Field while marriage forget. Indeed contain value life.'),(270,28,'Special effect','Score behavior miss week begin. Factor detail hard receive ability. Beautiful sign red laugh.\nReason north about. Sort oil perhaps occur.'),(271,28,'Light','Customer side him manage former with. Military certainly serve lead your develop.'),(272,28,'Special effect','Phone all suffer plan room. Hospital serve reduce left north movie early. Tree parent budget dream.\nHigh full suggest true.'),(273,28,'Speaker','General heavy lot there house quickly. Price move claim culture personal draw executive.'),(274,28,'Light','Improve exactly begin movie. Family medical human shoulder. During movement season. Reduce form think leader positive.'),(275,28,'Light','Bad provide involve visit suggest gas article. Drug whom health conference outside music often.'),(276,28,'Microphone','Remain maybe lawyer. Medical president rate final.\nSound provide tend today buy agency but group.'),(277,28,'Console','Agreement pick hundred pay. Total response weight window everyone Mr PM.'),(278,28,'Speaker','Whatever bit population shoulder feel agree clear agreement. Land too fall section. Late another enough expert economic.'),(279,29,'Light','Team before common measure safe offer. Image argue she focus suffer enjoy so. Food under authority participant.'),(280,29,'Console','Day sometimes individual official. Site phone fear song few shake leader hard.\nMeeting herself quite. Among as civil one when add buy.'),(281,29,'Light','Follow ago performance world throughout rich yes.'),(282,29,'Light','Society feel why. Him choice must.\nEverything view no college this stock measure which. Across about ever on seven. Party either three.'),(283,29,'Speaker','Significant increase seek discover. Push sport hour avoid. Get perhaps court note increase choice stock even. Style none show evidence production risk.'),(284,29,'Microphone','Arrive commercial amount huge. Tonight think important candidate learn. Shoulder nice car other president.'),(285,29,'Console','First local finish bed.\nAccount authority board them. Important happy family.\nPresent future increase apply example risk degree expect. Pm western nature consumer later.'),(286,29,'Speaker','Ago order difference anything site recognize. Debate card up easy animal impact.\nPerson bed fly inside certainly begin. Military industry local.'),(287,29,'Light','Care seat window process note. Long billion firm director wife. Help man then.\nWear culture professor course rise prepare remember. Particular ten leave PM.'),(288,29,'Speaker','Will avoid American return level put camera. Market cultural born water evening movie decade. End everyone radio purpose degree day.'),(289,29,'Microphone','Realize college begin no citizen. Common weight yourself. Suddenly perform present nice out represent hear blue.'),(290,29,'Microphone','American force rule everybody along start. Surface decision offer.\nDevelopment we door job herself then. Year so every effect although painting.'),(291,30,'Speaker','Would must example. Service cut less.\nPrevent single standard boy since.\nInvestment thought his full military. Possible usually respond.'),(292,30,'Speaker','Point better can two against hot. Rich network sister we. Ability contain address these second program so.'),(293,30,'Special effect','Pay sense you cost brother Mr natural. Everything certain happy nature on middle.'),(294,30,'Special effect','Human way whose Mrs sing fact end. Draw culture city detail.'),(295,30,'Special effect','Woman answer probably million. Religious city inside exist during. Far over pattern man make center glass mention.'),(296,30,'Light','Without network interesting national statement state begin. Tonight crime safe professor who. Player citizen amount bar a.'),(297,30,'Special effect','We degree watch send activity customer. Event indeed whole short leave. Book town quality fund industry bag.'),(298,30,'Console','Guess material power green side compare. Place soldier still method something carry agent.'),(299,30,'Light','Amount offer state culture seven nothing. Forget choice evening try. Home reflect serious better.'),(300,30,'Microphone','Compare population within reality such just. Several so debate take activity let. Meet perhaps miss Mrs. Find whatever try ability sell.'),(301,30,'Speaker','Land church unit green price could close.\nThey someone attorney involve both. Hand star first new mother. Dream production might somebody allow least.'),(302,30,'Special effect','May worker author image. Rich well address form spend. Meet seek well view find industry size.'),(303,30,'Microphone','Well attack assume. Deal major beautiful who key yourself.\nHouse evidence hour finally moment. Modern such let simple common.');
/*!40000 ALTER TABLE `technical_equipment` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_resale_matches`
--

LOCK TABLES `temp_resale_matches` WRITE;
/*!40000 ALTER TABLE `temp_resale_matches` DISABLE KEYS */;
INSERT INTO `temp_resale_matches` VALUES (1,125,138,123),(2,86,133,68),(3,13,9,137),(4,111,26,206),(5,59,99,184),(6,125,138,123),(7,86,133,68),(8,13,9,137),(9,111,26,206),(10,59,99,184);
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
  `barcode` char(13) DEFAULT NULL,
  `ticket_type` enum('general_admission','VIP','backstage') NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_price` decimal(10,2) DEFAULT NULL,
  `payment_method` enum('debit_card','credit_card','I-BAN') DEFAULT NULL,
  `activated_status` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`ticket_ID`),
  KEY `idx_ticket_visitor_event` (`visitor_ID`,`event_ID`),
  KEY `idx_ticket_event` (`event_ID`),
  KEY `idx_ticket_purchase_year_price` (`purchase_date`,`purchase_price`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`visitor_ID`) REFERENCES `visitor` (`visitor_ID`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,131,86,'0000000000017','general_admission','2024-08-21',51.07,'debit_card',1),(2,121,1,'0000000000024','general_admission','2023-07-27',64.83,'credit_card',1),(3,133,80,'0000000000031','general_admission','2024-08-22',45.37,'credit_card',1),(4,98,2,'0000000000048','general_admission','2021-08-31',52.09,'I-BAN',0),(5,98,53,'0000000000055','general_admission','2021-09-01',99.79,'credit_card',1),(6,130,109,'0000000000062','general_admission','2024-08-20',98.03,'I-BAN',1),(7,162,111,'0000000000079','backstage','2025-04-29',29.94,'credit_card',0),(8,153,93,'0000000000086','general_admission','2025-05-01',43.78,'credit_card',0),(9,66,21,'0000000000093','backstage','2020-07-14',35.53,'debit_card',1),(10,96,100,'0000000000109','general_admission','2021-08-31',93.83,'debit_card',1),(11,127,14,'0000000000116','general_admission','2023-07-27',55.09,'I-BAN',1),(12,51,52,'0000000000123','backstage','2019-08-13',60.42,'credit_card',0),(13,141,126,'0000000000130','backstage','2024-08-18',26.45,'I-BAN',1),(14,177,55,'0000000000147','backstage','2025-05-01',39.08,'I-BAN',0),(15,174,18,'0000000000154','general_admission','2025-05-02',73.43,'credit_card',0),(16,61,29,'0000000000161','general_admission','2020-07-16',45.19,'debit_card',1),(17,145,83,'0000000000178','general_admission','2024-08-20',63.05,'debit_card',0),(18,139,122,'0000000000185','general_admission','2024-08-20',82.85,'debit_card',1),(19,68,146,'0000000000192','general_admission','2020-07-13',73.77,'credit_card',1),(20,85,68,'0000000000208','backstage','2021-09-01',50.35,'debit_card',1),(21,165,3,'0000000000215','backstage','2025-05-02',81.74,'credit_card',0),(22,146,63,'0000000000222','general_admission','2024-08-20',80.38,'credit_card',1),(23,65,67,'0000000000239','general_admission','2020-07-16',63.93,'I-BAN',1),(24,141,130,'0000000000246','general_admission','2024-08-20',88.70,'I-BAN',1),(25,27,99,'0000000000253','backstage','2018-08-25',22.39,'debit_card',1),(26,25,47,'0000000000260','backstage','2017-08-31',68.62,'I-BAN',1),(27,88,108,'0000000000277','general_admission','2021-09-02',25.67,'credit_card',1),(28,44,26,'0000000000284','general_admission','2019-08-11',58.31,'debit_card',1),(29,65,21,'0000000000291','backstage','2020-07-16',77.42,'I-BAN',1),(30,92,54,'0000000000307','backstage','2021-08-29',39.42,'debit_card',1),(31,7,92,'0000000000314','backstage','2017-09-01',69.65,'credit_card',1),(32,145,33,'0000000000321','general_admission','2024-08-22',63.00,'I-BAN',1),(33,14,134,'0000000000338','general_admission','2017-09-02',24.72,'I-BAN',1),(34,74,112,'0000000000345','backstage','2021-08-29',37.24,'debit_card',1),(35,125,56,'0000000000352','general_admission','2023-07-28',68.85,'I-BAN',1),(36,125,123,'0000000000369','general_admission','2023-07-26',69.05,'credit_card',0),(37,157,91,'0000000000376','backstage','2025-04-30',32.36,'credit_card',0),(38,101,60,'0000000000383','backstage','2022-09-11',45.38,'credit_card',1),(39,123,78,'0000000000390','general_admission','2023-07-26',68.35,'credit_card',1),(40,146,127,'0000000000406','general_admission','2024-08-21',87.77,'credit_card',1),(41,92,84,'0000000000413','general_admission','2021-09-01',21.15,'debit_card',1),(42,157,142,'0000000000420','backstage','2025-04-28',51.45,'debit_card',0),(43,106,85,'0000000000437','backstage','2022-09-10',97.61,'debit_card',1),(44,71,76,'0000000000444','general_admission','2020-07-15',30.74,'credit_card',1),(45,6,82,'0000000000451','general_admission','2017-09-02',67.05,'I-BAN',1),(46,109,47,'0000000000468','general_admission','2022-09-11',78.60,'credit_card',1),(47,128,60,'0000000000475','backstage','2023-07-29',56.29,'credit_card',1),(48,100,90,'0000000000482','general_admission','2021-08-30',60.29,'credit_card',1),(49,83,92,'0000000000499','general_admission','2021-08-31',24.84,'credit_card',1),(50,88,20,'0000000000505','backstage','2021-09-01',20.92,'debit_card',1),(51,130,122,'0000000000512','backstage','2024-08-18',97.56,'debit_card',1),(52,51,75,'0000000000529','backstage','2019-08-15',86.78,'credit_card',1),(53,120,105,'0000000000536','general_admission','2023-07-27',97.11,'debit_card',1),(54,22,101,'0000000000543','backstage','2017-09-01',52.17,'I-BAN',1),(55,148,44,'0000000000550','general_admission','2024-08-19',20.26,'I-BAN',1),(56,37,115,'0000000000567','general_admission','2018-08-24',22.71,'debit_card',1),(57,103,50,'0000000000574','backstage','2022-09-10',50.75,'debit_card',1),(58,78,77,'0000000000581','backstage','2021-08-29',94.87,'I-BAN',1),(59,137,18,'0000000000598','general_admission','2024-08-18',41.17,'credit_card',1),(60,138,95,'0000000000604','general_admission','2024-08-22',62.93,'debit_card',1),(61,118,131,'0000000000611','general_admission','2023-07-26',96.25,'I-BAN',1),(62,90,77,'0000000000628','general_admission','2021-08-31',82.23,'I-BAN',1),(63,88,114,'0000000000635','backstage','2021-09-01',51.46,'debit_card',1),(64,47,8,'0000000000642','backstage','2019-08-11',37.74,'I-BAN',1),(65,18,105,'0000000000659','backstage','2017-08-29',69.78,'debit_card',1),(66,173,49,'0000000000666','general_admission','2025-04-30',81.70,'I-BAN',0),(67,110,107,'0000000000673','general_admission','2022-09-10',42.59,'I-BAN',1),(68,94,133,'0000000000680','backstage','2021-08-29',86.70,'credit_card',0),(69,129,16,'0000000000697','backstage','2023-07-28',20.54,'credit_card',1),(70,57,97,'0000000000703','backstage','2019-08-11',55.21,'credit_card',1),(71,148,148,'0000000000710','backstage','2024-08-18',74.12,'credit_card',1),(72,13,136,'0000000000727','backstage','2017-09-01',40.39,'I-BAN',1),(73,149,70,'0000000000734','backstage','2024-08-21',41.80,'credit_card',1),(74,24,87,'0000000000741','general_admission','2017-08-30',32.55,'credit_card',1),(75,152,82,'0000000000758','general_admission','2025-04-29',77.55,'credit_card',0),(76,108,29,'0000000000765','general_admission','2022-09-10',52.91,'credit_card',1),(77,88,29,'0000000000772','general_admission','2021-09-02',58.86,'debit_card',1),(78,15,124,'0000000000789','general_admission','2017-09-02',86.43,'debit_card',1),(79,101,27,'0000000000796','general_admission','2022-09-13',46.80,'I-BAN',1),(80,86,124,'0000000000802','backstage','2021-08-30',92.09,'credit_card',1),(81,128,31,'0000000000819','general_admission','2023-07-29',29.60,'credit_card',1),(82,75,110,'0000000000826','general_admission','2021-09-02',57.57,'debit_card',1),(83,24,125,'0000000000833','general_admission','2017-08-31',57.06,'I-BAN',1),(84,55,118,'0000000000840','backstage','2019-08-11',53.55,'I-BAN',1),(85,72,125,'0000000000857','backstage','2021-08-30',80.56,'debit_card',1),(86,67,101,'0000000000864','backstage','2020-07-14',81.19,'I-BAN',1),(87,130,81,'0000000000871','backstage','2024-08-21',32.89,'credit_card',1),(88,52,34,'0000000000888','general_admission','2019-08-13',85.95,'credit_card',1),(89,161,47,'0000000000895','general_admission','2025-05-01',95.42,'debit_card',0),(90,51,141,'0000000000901','backstage','2019-08-14',31.90,'I-BAN',1),(91,71,91,'0000000000918','general_admission','2020-07-13',88.46,'credit_card',1),(92,12,110,'0000000000925','general_admission','2017-08-31',55.96,'credit_card',1),(93,138,125,'0000000000932','general_admission','2024-08-22',93.70,'credit_card',1),(94,9,98,'0000000000949','backstage','2017-09-01',34.05,'I-BAN',1),(95,86,139,'0000000000956','backstage','2021-08-30',87.70,'I-BAN',1),(96,116,97,'0000000000963','backstage','2023-07-29',55.18,'debit_card',1),(97,181,84,'0000000000970','backstage','2025-04-28',47.52,'credit_card',0),(98,122,122,'0000000000987','backstage','2023-07-27',75.90,'credit_card',1),(99,82,141,'0000000000994','general_admission','2021-09-01',76.07,'debit_card',1),(100,46,112,'0000000001007','general_admission','2019-08-13',44.60,'credit_card',1),(101,46,47,'0000000001014','backstage','2019-08-11',80.66,'credit_card',1),(102,165,73,'0000000001021','backstage','2025-05-02',75.88,'credit_card',0),(103,89,58,'0000000001038','backstage','2021-09-01',61.80,'credit_card',1),(104,124,48,'0000000001045','general_admission','2023-07-29',48.13,'I-BAN',1),(105,159,146,'0000000001052','general_admission','2025-05-01',57.52,'credit_card',0),(106,134,14,'0000000001069','backstage','2024-08-19',75.26,'credit_card',1),(107,70,107,'0000000001076','backstage','2020-07-15',56.97,'I-BAN',1),(108,21,132,'0000000001083','general_admission','2017-09-02',36.10,'credit_card',1),(109,108,75,'0000000001090','general_admission','2022-09-12',69.37,'debit_card',1),(110,90,85,'0000000001106','general_admission','2021-08-30',93.28,'I-BAN',1),(111,168,32,'0000000001113','backstage','2025-04-28',92.33,'credit_card',0),(112,24,88,'0000000001120','backstage','2017-08-31',56.10,'I-BAN',1),(113,75,136,'0000000001137','general_admission','2021-08-29',51.11,'debit_card',1),(114,124,54,'0000000001144','general_admission','2023-07-28',90.33,'I-BAN',0),(115,150,117,'0000000001151','general_admission','2025-04-28',44.71,'debit_card',0),(116,160,83,'0000000001168','general_admission','2025-04-29',61.11,'credit_card',0),(117,58,125,'0000000001175','backstage','2019-08-12',98.44,'I-BAN',1),(118,130,20,'0000000001182','backstage','2024-08-19',20.85,'I-BAN',1),(119,91,122,'0000000001199','backstage','2021-08-30',77.47,'debit_card',1),(120,56,140,'0000000001205','general_admission','2019-08-14',96.72,'credit_card',1),(121,125,127,'0000000001212','backstage','2023-07-26',81.64,'I-BAN',1),(122,141,44,'0000000001229','general_admission','2024-08-22',21.46,'I-BAN',1),(123,164,138,'0000000001236','backstage','2025-04-30',73.59,'credit_card',0),(124,162,13,'0000000001243','backstage','2025-04-28',89.12,'debit_card',0),(125,127,15,'0000000001250','backstage','2023-07-29',28.15,'I-BAN',1),(126,105,57,'0000000001267','general_admission','2022-09-11',58.49,'debit_card',1),(127,15,65,'0000000001274','general_admission','2017-09-01',35.67,'I-BAN',1),(128,36,117,'0000000001281','general_admission','2018-08-28',50.14,'I-BAN',1),(129,139,4,'0000000001298','general_admission','2024-08-20',55.35,'credit_card',0),(130,64,141,'0000000001304','backstage','2020-07-14',47.60,'debit_card',1),(131,2,103,'0000000001311','general_admission','2017-08-31',69.13,'debit_card',1),(132,154,23,'0000000001328','backstage','2025-04-29',61.55,'credit_card',0),(133,10,137,'0000000001335','general_admission','2017-09-01',43.57,'credit_card',1),(134,5,50,'0000000001342','backstage','2017-08-30',84.72,'credit_card',1),(135,102,7,'0000000001359','general_admission','2022-09-12',29.11,'I-BAN',1),(136,143,115,'0000000001366','general_admission','2024-08-18',29.73,'credit_card',0),(137,179,9,'0000000001373','backstage','2025-05-01',33.48,'credit_card',0),(138,7,25,'0000000001380','general_admission','2017-08-30',75.41,'I-BAN',1),(139,142,111,'0000000001397','backstage','2024-08-21',59.74,'debit_card',1),(140,45,77,'0000000001403','general_admission','2019-08-12',81.80,'credit_card',1),(141,172,115,'0000000001410','general_admission','2025-05-02',87.43,'I-BAN',0),(142,113,134,'0000000001427','general_admission','2022-09-12',96.30,'I-BAN',1),(143,51,91,'0000000001434','general_admission','2019-08-15',23.00,'debit_card',1),(144,94,145,'0000000001441','general_admission','2021-08-30',69.89,'credit_card',1),(145,100,96,'0000000001458','backstage','2021-09-02',86.55,'debit_card',1),(146,134,101,'0000000001465','general_admission','2024-08-18',73.57,'debit_card',1),(147,135,5,'0000000001472','general_admission','2024-08-21',72.52,'debit_card',1),(148,144,98,'0000000001489','backstage','2024-08-20',53.44,'I-BAN',1),(149,58,148,'0000000001496','general_admission','2019-08-11',44.97,'debit_card',1),(150,84,66,'0000000001502','general_admission','2021-08-31',34.52,'I-BAN',1),(151,135,131,'0000000001519','general_admission','2024-08-18',55.97,'credit_card',1),(152,89,32,'0000000001526','backstage','2021-08-30',28.33,'debit_card',1),(153,132,77,'0000000001533','backstage','2024-08-21',89.13,'debit_card',1),(154,75,111,'0000000001540','general_admission','2021-08-31',34.78,'I-BAN',1),(155,51,11,'0000000001557','backstage','2019-08-12',45.60,'credit_card',1),(156,151,58,'0000000001564','general_admission','2025-04-29',95.82,'credit_card',0),(157,91,1,'0000000001571','general_admission','2021-09-02',65.41,'credit_card',1),(158,24,126,'0000000001588','backstage','2017-08-29',73.66,'credit_card',1),(159,129,59,'0000000001595','backstage','2023-07-29',38.50,'I-BAN',0),(160,14,45,'0000000001601','general_admission','2017-08-31',75.21,'debit_card',1),(161,15,148,'0000000001618','backstage','2017-08-30',42.73,'I-BAN',1),(162,87,51,'0000000001625','general_admission','2021-09-01',48.09,'debit_card',1),(163,99,41,'0000000001632','general_admission','2021-09-01',91.42,'debit_card',1),(164,36,99,'0000000001649','backstage','2018-08-28',76.23,'debit_card',1),(165,43,6,'0000000001656','backstage','2019-08-12',36.53,'I-BAN',1),(166,154,10,'0000000001663','backstage','2025-04-30',23.06,'credit_card',0),(167,13,84,'0000000001670','general_admission','2017-08-30',78.15,'credit_card',1),(168,71,92,'0000000001687','backstage','2020-07-13',97.01,'debit_card',1),(169,110,140,'0000000001694','backstage','2022-09-10',92.05,'I-BAN',1),(170,147,118,'0000000001700','backstage','2024-08-18',53.54,'I-BAN',1),(171,4,6,'0000000001717','general_admission','2017-09-01',83.80,'credit_card',1),(172,167,147,'0000000001724','general_admission','2025-05-02',37.41,'I-BAN',0),(173,114,134,'0000000001731','backstage','2022-09-10',42.37,'credit_card',1),(174,36,50,'0000000001748','backstage','2018-08-28',49.07,'I-BAN',1),(175,101,109,'0000000001755','general_admission','2022-09-13',85.97,'I-BAN',1),(176,38,103,'0000000001762','backstage','2018-08-26',37.71,'credit_card',0),(177,136,8,'0000000001779','backstage','2024-08-20',62.36,'I-BAN',1),(178,174,146,'0000000001786','general_admission','2025-05-01',57.93,'I-BAN',0),(179,149,89,'0000000001793','backstage','2024-08-18',24.22,'debit_card',1),(180,81,116,'0000000001809','general_admission','2021-08-31',42.13,'credit_card',1),(181,174,16,'0000000001816','backstage','2025-04-30',98.20,'credit_card',0),(182,89,85,'0000000001823','general_admission','2021-08-31',62.34,'credit_card',1),(183,75,30,'0000000001830','backstage','2021-09-02',21.89,'I-BAN',1),(184,153,99,'0000000001847','backstage','2025-04-30',40.91,'credit_card',0),(185,125,135,'0000000001854','general_admission','2023-07-30',82.14,'I-BAN',1),(186,159,55,'0000000001861','general_admission','2025-04-29',70.49,'credit_card',0),(187,120,54,'0000000001878','backstage','2023-07-30',81.42,'I-BAN',1),(188,20,43,'0000000001885','backstage','2017-08-31',33.93,'credit_card',1),(189,152,103,'0000000001892','backstage','2025-04-30',44.57,'credit_card',0),(190,66,100,'0000000001908','general_admission','2020-07-13',29.03,'I-BAN',1),(191,169,148,'0000000001915','general_admission','2025-04-29',64.13,'debit_card',0),(192,97,85,'0000000001922','backstage','2021-08-30',29.36,'credit_card',1),(193,50,142,'0000000001939','general_admission','2019-08-13',31.60,'I-BAN',1),(194,50,11,'0000000001946','backstage','2019-08-15',56.83,'I-BAN',1),(195,136,43,'0000000001953','general_admission','2024-08-20',46.15,'debit_card',0),(196,83,41,'0000000001960','backstage','2021-09-02',35.01,'I-BAN',1),(197,166,71,'0000000001977','general_admission','2025-04-30',48.76,'credit_card',0),(198,182,118,'0000000001984','backstage','2025-04-29',78.90,'credit_card',0),(199,61,5,'0000000001991','backstage','2020-07-14',69.02,'debit_card',1),(200,31,146,'0000000002004','backstage','2018-08-24',89.00,'I-BAN',1),(201,9,108,'0000000002011','general_admission','2017-09-02',57.39,'debit_card',1),(202,162,150,'0000000002028','backstage','2025-04-28',90.76,'I-BAN',0),(203,89,95,'0000000002035','general_admission','2021-09-02',90.54,'I-BAN',1),(204,79,133,'0000000002042','backstage','2021-09-02',23.15,'credit_card',1),(205,104,57,'0000000002059','backstage','2022-09-12',53.01,'I-BAN',1),(206,163,26,'0000000002066','backstage','2025-05-02',70.05,'credit_card',0),(207,139,116,'0000000002073','general_admission','2024-08-18',56.71,'debit_card',1),(208,48,113,'0000000002080','backstage','2019-08-11',34.40,'debit_card',1),(209,95,140,'0000000002097','general_admission','2021-09-02',76.79,'debit_card',1),(210,65,56,'0000000002103','backstage','2020-07-12',41.96,'credit_card',1),(211,52,125,'0000000002110','backstage','2019-08-13',32.07,'credit_card',0),(212,103,52,'0000000002127','general_admission','2022-09-11',37.56,'I-BAN',1),(213,21,111,'0000000002134','backstage','2017-08-30',88.92,'I-BAN',1),(214,33,79,'0000000002141','general_admission','2018-08-28',41.18,'credit_card',1),(215,8,36,'0000000002158','backstage','2017-09-02',99.33,'I-BAN',1),(216,156,86,'0000000002165','backstage','2025-05-01',42.58,'debit_card',0),(217,73,42,'0000000002172','general_admission','2021-08-30',74.96,'credit_card',1),(218,182,78,'0000000002189','general_admission','2025-04-29',60.19,'debit_card',0);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
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
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER prevent_duplicate_ticket
BEFORE INSERT ON ticket
FOR EACH ROW
BEGIN
    DECLARE duplicate_count INT;

    SELECT COUNT(*) INTO duplicate_count
    FROM ticket
    WHERE event_ID = NEW.event_ID
      AND visitor_ID = NEW.visitor_ID;

    IF duplicate_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Visitor already has a ticket for this event.';
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
INSERT INTO `visitor` VALUES (1,'Michelle','Bridges','+1-552-275-5999x8641','zbeltran@example.com',34),(2,'Tyler','Stevens','+1-527-987-6624x742','hhardy@example.com',40),(3,'Victor','Stokes','9874797311','adriana06@example.net',56),(4,'Alyssa','Greer','001-705-314-0245x5956','charles05@example.org',32),(5,'Jody','Payne','(349)817-5086x3002','jramos@example.org',18),(6,'Jason','Barber','226-357-9887x728','wperry@example.com',48),(7,'Allison','Hernandez','001-783-659-8193x07759','perezjesus@example.net',58),(8,'Jillian','Johnson','888-724-4537x069','joshuasalinas@example.net',31),(9,'Brenda','Holt','(379)988-1484','brownamy@example.net',37),(10,'Leslie','Blackwell','+1-250-261-2305x2749','michaelpatrick@example.org',33),(11,'Christopher','Collins','+1-928-488-7797x297','robertwest@example.net',43),(12,'Phillip','Miller','(458)710-0599x325','comptonjames@example.org',53),(13,'Joseph','Guerrero','389.542.9680x5151','margaretdavis@example.com',53),(14,'Daniel','White','(435)629-3279x2479','otaylor@example.org',27),(15,'John','Miller','385.689.6174x13017','chad87@example.org',43),(16,'Erica','Browning','(316)247-5702','sweeneyjacob@example.net',47),(17,'Gloria','Carr','810.637.7553x1202','michael10@example.org',33),(18,'Kirsten','Hamilton','417-771-8921','mjohnson@example.net',58),(19,'Caitlyn','Fleming','(397)678-9915x25885','iortiz@example.com',27),(20,'Rebecca','Weber','+1-608-499-9868x7524','andrew13@example.org',63),(21,'Traci','Freeman','(924)580-9805x80985','wtaylor@example.org',30),(22,'Frank','Lawson','(257)445-9049','jesseortega@example.net',29),(23,'James','Green','001-936-232-0289','psilva@example.org',62),(24,'Joseph','Herrera','001-707-264-3449','reneepope@example.net',29),(25,'Katherine','Keller','001-795-947-9982x397','hansonvictoria@example.org',60),(26,'Eric','Robinson','508.505.7531','vegadeborah@example.org',40),(27,'James','Guerra','+1-492-424-5221x15507','michael73@example.org',31),(28,'Christopher','Sanchez','+1-724-510-0006','emilyburton@example.net',23),(29,'Brianna','Reed','001-933-605-8885x236','nguyenkristina@example.org',24),(30,'Carla','Ibarra','335-724-4107x4444','williamscatherine@example.com',48),(31,'Alicia','Smith','(222)916-1669','bowensara@example.org',52),(32,'John','Morgan','411.360.2126x66730','paige46@example.org',55),(33,'Elizabeth','Castillo','286-897-8116x7563','sarahwhitehead@example.net',22),(34,'Vanessa','Benson','782.919.0093x3268','amypeters@example.com',58),(35,'John','Daniels','(857)623-9247x71332','esparzajames@example.net',18),(36,'Amber','Maddox','5983925810','gonzalezsabrina@example.com',57),(37,'Shelly','Jones','884.221.5274','perezaaron@example.org',65),(38,'Shelby','Boyd','001-625-732-9632x9489','joseph44@example.com',65),(39,'Caitlin','Harris','+1-469-291-1238x6848','barbarabradley@example.com',32),(40,'Trevor','Scott','308.702.5995x2239','christopherross@example.org',59),(41,'Julia','Hernandez','999-494-7560','bellalexander@example.net',54),(42,'Jacob','Smith','(518)911-8492','hartmanglenn@example.org',57),(43,'Cody','Stout','001-983-690-6683','iberry@example.com',29),(44,'Jason','Hunt','315-607-3252x21486','samanthanicholson@example.com',45),(45,'Brian','Contreras','001-220-575-5479x85422','davidpennington@example.org',30),(46,'Jennifer','Gardner','238.373.0551','paul70@example.com',65),(47,'Evelyn','Kennedy','335.427.7310','alexpineda@example.net',27),(48,'Susan','Parker','551-996-6661x758','hmorse@example.com',39),(49,'Robert','Rodriguez','745-739-8876','thomasrogers@example.net',54),(50,'John','Frey','621-337-3409','uhall@example.org',35),(51,'Kyle','Wood','(661)898-0645x76838','douglasrachel@example.org',51),(52,'Robert','Martinez','295.897.6507x97810','meganwilliams@example.org',44),(53,'Janet','Howard','+1-331-467-4587x77893','sryan@example.net',19),(54,'Lisa','Johnson','946.637.8960x4176','danielsherry@example.org',33),(55,'Nicholas','Banks','9168200322','christinesmith@example.org',24),(56,'Devin','Walker','(509)774-1686','kellyjoyce@example.org',32),(57,'Kayla','Chen','(974)866-5158','gvillanueva@example.net',30),(58,'James','Allison','+1-248-343-8478x055','pberry@example.com',37),(59,'Cynthia','Garcia','760.665.2591','hickmanlaura@example.com',57),(60,'Alexandria','Hall','001-691-987-4287','sandraschroeder@example.com',64),(61,'Cheryl','Cain','4537969799','fieldsaaron@example.com',39),(62,'Angela','Russell','+1-536-375-1469x110','tnelson@example.net',46),(63,'Bobby','Lam','231.842.7142','annlin@example.net',63),(64,'Victoria','Santiago','001-672-846-8089x500','jesse98@example.com',47),(65,'Nancy','Long','518-436-1389','veronicanixon@example.com',40),(66,'Jamie','Schneider','(771)884-9092','fmccormick@example.com',58),(67,'Michael','Rich','605-888-9856','yharrington@example.com',19),(68,'Rick','Mcknight','+1-936-821-2130x4192','sheatommy@example.com',42),(69,'Alexandra','Smith','+1-716-763-9156x56494','kevin64@example.org',52),(70,'Alexandra','Williamson','(679)566-6255x1962','eharris@example.net',56),(71,'Kimberly','Bell','001-974-393-4953x7667','maryhughes@example.com',53),(72,'Alexander','Morgan','882.505.8149x835','calvin88@example.net',29),(73,'Kim','Mckee','+1-691-346-1298','dorseyelizabeth@example.net',25),(74,'Roberto','Carter','438-308-0819x52918','ycardenas@example.net',57),(75,'Donna','Johnson','830-859-5172','wendycastaneda@example.org',22),(76,'Dana','Wise','2326973972','scottjulian@example.net',34),(77,'Morgan','Dominguez','602-361-3125x6331','bryantstephanie@example.com',63),(78,'Kevin','Taylor','001-966-448-6429x5832','jonathanmartin@example.com',25),(79,'Mitchell','Hopkins','(218)471-4355','villamelissa@example.org',29),(80,'Stephanie','Singleton','(887)617-3192','clarkleah@example.com',42),(81,'Cindy','Duffy','001-405-981-7330','laura27@example.net',36),(82,'Kathryn','Rosales','2969002216','gardnertara@example.com',59),(83,'Michael','Coleman','001-331-274-2334x0328','oramos@example.net',46),(84,'Steven','Cooper','001-209-727-5728x3339','williamsjoseph@example.com',55),(85,'Lacey','Marsh','001-752-944-8209x21273','idixon@example.net',56),(86,'Stephanie','Wong','001-288-916-6559x11566','dsmith@example.com',46),(87,'Jasmine','Riggs','+1-597-600-1806x410','nlucas@example.org',61),(88,'Ashley','Frey','247-311-7667','linda23@example.org',57),(89,'Annette','Hicks','4662944187','manningleon@example.com',43),(90,'Alfred','Blanchard','001-534-346-8302x77935','margaretreynolds@example.org',34),(91,'Barbara','Chandler','001-589-353-5991x46513','tmccann@example.org',56),(92,'Timothy','Mays','566-806-3476','erindunn@example.org',24),(93,'Courtney','Sandoval','691-231-5536x3530','jmooney@example.com',20),(94,'Nathan','Hernandez','581.735.6376x352','cindy07@example.org',30),(95,'Michelle','Sampson','962.895.9106','colejennifer@example.net',56),(96,'Malik','Wood','951-970-5540x603','jeffreypetersen@example.org',65),(97,'James','Miller','513.638.6449','shirley21@example.com',50),(98,'Diana','Robinson','+1-936-393-3325x441','lcamacho@example.org',28),(99,'Ashley','Armstrong','+1-683-445-2088x209','lbrown@example.org',55),(100,'Michael','Odonnell','001-366-496-9462x5192','johnsontimothy@example.com',60),(101,'Erika','Delgado','(429)922-3214','morrisonbrian@example.org',49),(102,'Ana','Bradley','001-759-451-4001x77074','harrisonkevin@example.org',61),(103,'Kevin','Armstrong','(600)506-1831','williamsjason@example.net',30),(104,'Ricardo','Gonzalez','(891)400-8931x208','timothy67@example.org',55),(105,'Donald','Hall','928-666-4192x0698','stephaniemiranda@example.net',41),(106,'Lauren','Romero','492.639.2586','michaelbennett@example.com',62),(107,'Lawrence','Brown','+1-245-650-3207x77047','wlong@example.com',65),(108,'Diana','Benjamin','5753984460','gcarlson@example.com',31),(109,'Stacy','Martinez','516-872-0621x717','williamsjason@example.com',39),(110,'Adam','Robertson','(844)252-7657','stephenyoung@example.net',18),(111,'Julia','Vargas','498-392-6527','idavid@example.net',39),(112,'Joshua','Abbott','+1-273-555-5261x72452','timothyday@example.org',61),(113,'Sarah','Barron','3284856616','alice81@example.net',19),(114,'Thomas','Norton','634.493.3483x55075','christina09@example.net',61),(115,'Jennifer','Riley','498-329-7663x5036','heatherhampton@example.net',37),(116,'Kayla','Briggs','333-998-1300x052','qjohnston@example.net',24),(117,'Travis','Lutz','001-758-829-5026x769','meagan87@example.com',52),(118,'Austin','Cabrera','(225)227-3603x5446','gsmith@example.net',45),(119,'Shelly','Kline','6238970103','mcclureedward@example.com',21),(120,'Amanda','Patton','693-703-2071','carolyn02@example.com',24),(121,'Lindsey','Phillips','567-894-6400','mhenderson@example.net',52),(122,'Jeffrey','Bullock','001-621-260-3455x484','michael65@example.org',38),(123,'Christian','Dillon','(402)800-5740x2787','jsmith@example.com',60),(124,'Alejandro','Hoffman','001-990-628-8845x7379','hayeslinda@example.org',23),(125,'Carol','Jones','001-577-961-0879x84878','moorejulie@example.com',33),(126,'Gregory','Grimes','227.909.2962x692','jorge17@example.com',38),(127,'Laura','Miller','(307)266-1461','anthonybennett@example.com',63),(128,'Tyler','Martin','309.626.6025x0966','davilascott@example.org',31),(129,'Michael','Cole','622.630.2861','edwardpatel@example.org',28),(130,'Nicolas','Stokes','801-655-4187','gmiller@example.com',38),(131,'Erin','Phillips','+1-622-857-5052x562','mollymullins@example.org',48),(132,'Sara','Hall','001-485-876-8682x109','mark01@example.net',36),(133,'Monica','Zavala','490-543-5397','mackjacqueline@example.net',33),(134,'Christopher','Rodriguez','001-897-782-8242','fmcknight@example.com',24),(135,'Lance','Hunter','468-282-7185x293','barry61@example.org',58),(136,'Thomas','Shah','+1-673-685-1387x94380','znicholson@example.com',37),(137,'Brittney','Landry','(291)677-9364x0154','hunter20@example.com',48),(138,'Kimberly','Lawson','216-783-5697x968','whart@example.net',42),(139,'James','Ward','(319)843-3297','asmith@example.org',33),(140,'Robin','Sanford','+1-484-358-4597x43847','kennethwoodard@example.net',55),(141,'Joshua','Taylor','376-858-3331x06690','johnsontimothy@example.org',46),(142,'Albert','Levine','7787419033','john14@example.org',41),(143,'David','Norton','350.511.1803x069','nicoleluna@example.com',23),(144,'Christine','Harris','(628)797-5063x151','ashley92@example.net',21),(145,'Kathy','Miller','+1-831-668-7411x27902','laurie32@example.com',42),(146,'Michael','Morrison','001-498-276-3415x5597','erodriguez@example.com',57),(147,'Timothy','Robinson','454-736-3055x01389','gmorgan@example.com',58),(148,'Pedro','Walker','392-610-6674','larryhall@example.org',65),(149,'Stephen','Berry','827-926-2347','troylawson@example.net',36),(150,'Kevin','Long','652-893-8154','marciarichards@example.com',38);
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
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
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
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

-- Dump completed on 2025-05-08 23:06:20
