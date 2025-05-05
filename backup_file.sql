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
  `artist_genre` varchar(100) NOT NULL,
  `artist_subgenre` varchar(100) DEFAULT NULL,
  `artist_website` varchar(255) DEFAULT NULL,
  `artist_instagram` varchar(255) DEFAULT NULL,
  `num_of_consecutive_years_participating` int(11) DEFAULT 0,
  PRIMARY KEY (`artist_ID`),
  CONSTRAINT `CONSTRAINT_1` CHECK (0 <= `num_of_consecutive_years_participating` and `num_of_consecutive_years_participating` <= 3)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'Kathleen Olsen','Kimberly','1988-04-29','2003-04-26','pop','jazz','https://www.collins-anderson.com/','http://moore.net/',3),(2,'Christopher Morris','Matthew','1996-03-04','2001-03-03','rock','pop','http://ware-gonzales.com/','https://little-carter.com/',1),(3,'Donna Mckay','Thomas','1992-08-17','1997-08-16','hip hop','jazz','https://www.baker-randall.com/','http://schaefer.com/',3),(4,'Stephen Jones',NULL,'1991-10-24','1994-10-23','rock','electronic','http://banks-austin.com/','http://webb.com/',3),(5,'Katie Wise','Dawn','1993-06-08','1995-06-08','hip hop','jazz','http://davidson.info/','http://smith.com/',2),(6,'Brian Zimmerman','Raymond','1976-12-24','1981-12-23','pop','jazz','https://www.day.info/','http://jackson.com/',1),(7,'Tyler Thomas','Nicole','2001-04-20','2020-04-15','hip hop','jazz','https://smith-davis.com/','http://www.phillips-velasquez.biz/',2),(8,'Terry Jones','Dustin','2003-02-06','2013-02-03','rock','electronic','http://www.berry.com/','http://houston-brown.biz/',2),(9,'John Sparks','Tonya','1996-12-23','1997-12-23','hip hop','jazz','https://www.serrano-burns.biz/','https://burke-brown.com/',3),(10,'Tina Baldwin','Benjamin','1982-12-25','1987-12-24','pop','rock','https://www.williams.info/','https://www.weiss.org/',0),(11,'Daniel Pruitt','Jennifer','2000-11-04','2013-11-01','jazz','hip hop','http://clark.com/','http://nelson.com/',1),(12,'Sylvia Welch',NULL,'2004-08-07','2018-08-04','jazz','pop','https://steele-cain.net/','http://nguyen.net/',0),(13,'Christine Valentine','Susan','1992-10-24','1994-10-24','pop','hip hop','https://griffin-pierce.com/','https://clark-rodriguez.com/',0),(14,'James Warner','Richard','1984-01-24','1989-01-22','rock','electronic','https://www.smith-watson.org/','https://www.beck.com/',0),(15,'Jonathan Beltran','Joan','1984-08-25','1999-08-22','rock','electronic','https://ramirez.com/','http://allen.com/',1),(16,'Nancy Harvey','Timothy','1992-12-21','2008-12-17','jazz','hip hop','https://white.com/','https://www.woodward-davis.info/',2),(17,'Kevin Flores','Ivan','1987-10-28','2001-10-24','pop','electronic','https://www.cole.biz/','http://www.jones.com/',3),(18,'Thomas Roberts','Jillian','1986-04-18','2005-04-13','electronic','pop','https://small.com/','https://evans.com/',2),(19,'William Medina','Brittany','2004-06-23','2020-06-19','hip hop','jazz','http://long.info/','http://www.robinson.com/',0),(20,'Lori Smith','Ashley','1984-09-02','1988-09-01','jazz','pop','http://www.berg.com/','https://www.navarro-thomas.net/',2),(21,'James Butler',NULL,'1993-03-13','2000-03-11','hip hop','jazz','http://jones-rivera.info/','http://ford-hardy.com/',0),(22,'Katherine Mendez','Shelby','1990-04-02','2004-03-29','electronic','rock','http://www.garza-gray.biz/','http://huber.org/',3),(23,'Glenda Richardson',NULL,'1997-05-04','2013-04-30','jazz','hip hop','https://www.smith-jordan.org/','https://miller.com/',2),(24,'Robert Barnes','Diana','1981-02-01','1985-01-31','hip hop','rock','http://hill.net/','http://www.callahan-cox.com/',0),(25,'Summer Wolfe','Erik','1983-07-11','2002-07-06','pop','rock','http://bass-browning.com/','https://wood.info/',0),(26,'Jill Yoder','Jennifer','1989-05-23','2009-05-18','pop','rock','https://lewis.com/','https://www.rojas-harris.com/',3),(27,'Jeffrey Davis','Jeffrey','1988-06-30','1998-06-28','pop','rock','https://www.kelley.org/','http://taylor.info/',3),(28,'Christopher English','Tyler','1990-01-13','2007-01-09','jazz','electronic','https://smith-hale.com/','http://oneill-snyder.com/',0),(29,'Emily Harris','Phillip','1985-10-08','2002-10-04','jazz','rock','http://www.bishop-lin.com/','https://martinez.org/',2),(30,'Robert Arroyo',NULL,'1977-09-06','1990-09-03','electronic','hip hop','http://smith.com/','http://yang.com/',2),(31,'Shelby Little','Michelle','1985-11-24','2003-11-20','rock','hip hop','http://www.cohen.com/','https://walker.com/',3),(32,'Antonio Davis','Ashley','1980-12-10','1998-12-06','rock','pop','http://henderson.com/','http://hanson-elliott.net/',3),(33,'Tammy Rodriguez','Nichole','2001-03-01','2014-02-26','rock','jazz','https://www.hernandez.biz/','https://www.dominguez.com/',0),(34,'Antonio Stewart',NULL,'1977-06-10','1993-06-06','electronic','pop','https://www.jacobs.net/','https://www.arnold-medina.net/',2),(35,'Samantha Colon',NULL,'1995-04-10','1999-04-09','rock','hip hop','http://www.jensen.net/','https://www.townsend.net/',2),(36,'David Nunez','Tommy','1993-12-01','2005-11-28','hip hop','pop','http://www.smith-williams.com/','https://www.stark.com/',1),(37,'Brooke Hernandez','Jeremy','1988-11-13','1993-11-12','hip hop','electronic','https://www.moran.com/','https://www.maldonado.biz/',3),(38,'Shane Larsen',NULL,'1996-12-03','2001-12-02','electronic','hip hop','http://www.dodson.net/','https://www.brown-levy.com/',2),(39,'Angela Riggs','Joseph','1990-11-07','2006-11-03','rock','electronic','http://wade.biz/','http://gibson-turner.biz/',3),(40,'Rebecca Rowe','James','1976-10-16','1977-10-16','hip hop','rock','https://decker-manning.biz/','https://lopez.info/',3),(41,'Diana Johnson',NULL,'2002-06-04','2019-05-31','electronic','pop','https://page.com/','https://www.goodwin-nash.biz/',1),(42,'Philip Reed','Katelyn','2004-06-13','2021-06-09','pop','electronic','http://scott-caldwell.com/','https://www.bowen.com/',3),(43,'Marcus Shaw',NULL,'1979-11-17','1993-11-13','rock','jazz','http://www.solomon-mills.com/','http://jordan-marks.org/',0),(44,'Theresa Rivera',NULL,'1988-06-20','2002-06-17','rock','hip hop','http://www.bell.net/','https://www.brown-walker.com/',1),(45,'Angelica Gibson','Robert','1977-12-29','1991-12-26','pop','rock','https://curry-snyder.org/','http://vang.com/',1),(46,'Amber Harvey','Holly','1994-08-13','2014-08-08','rock','pop','http://www.jackson.com/','http://www.wood-parker.org/',1),(47,'Daniel Wilson','Jane','1997-05-02','2016-04-27','hip hop','rock','http://delgado.com/','https://graves-oneal.com/',3),(48,'Karen Miller',NULL,'2002-05-21','2010-05-19','pop','rock','https://www.barrett.net/','https://www.griffin.com/',1),(49,'George Curtis','Christopher','1984-03-30','1997-03-27','hip hop','rock','http://www.martin.biz/','https://www.gibson-berry.com/',3),(50,'Donna Walker','George','1981-05-26','1995-05-23','pop','jazz','http://www.park-richardson.org/','https://www.escobar.com/',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,'Yates-Marsh','White good throw. To leader specific close leader Democrat assume. Bank question figure kind. Prepare create past staff.',655,'service, general, take, example, while'),(2,'Martinez, Young and Walker','Entire choice section get. Government might everyone their take chance hard.\nCampaign economic not least image.\nArt keep fear.\nPositive fact line. Begin sure network appear material.',754,'others, head, hope, citizen, what'),(3,'Martinez, Walker and Hall','Energy white do design because. Right market suddenly successful care.\nPlan send allow environment dinner court. War much hospital.',712,'fight, level, senior, network, difference'),(4,'Alexander, Andrews and White','Other policy everyone foot worry. At free you chair interesting really. Commercial cup front never girl treat beautiful.',799,'deep, guess, onto, throw, save'),(5,'Rangel, Jones and Jones','Control save sit poor gun just. But second if cultural like near drive.\nSuffer administration compare say yes. Especially phone message drug you.',720,'not, difficult, policy, yard, international'),(6,'West-Jones','Always figure available onto strong form. Democratic box message large guess huge. Before agree parent crime model.\nNear up outside city wait ball citizen part. Management yet bag art country face.',783,'others, position, age, daughter, here'),(7,'Phillips, Mitchell and Lee','Name field body majority friend try. Add particularly teacher eye. Series car such west evidence light break.\nDaughter girl three everybody inside hit. Skill president full ball.',685,'they, should, late, receive, indeed'),(8,'Melton, Kelly and Rogers','Office another others fish order rich. Admit wonder nothing defense mission practice must. Well alone there improve.',483,'nation, network, the, property, method'),(9,'Hunt-Rodriguez','Agency when hospital outside authority hour pay. House his item physical civil back.\nDrive interest degree try cause rate. Alone rather outside tree. Bad charge mind parent evening set manage.',986,'accept, meet, find, campaign, outside'),(10,'Williams LLC','Purpose school field without before painting. Perform ago education high.\nCourt it morning vote sure deal.',244,'rock, organization, nice, reflect, build'),(11,'Cohen-Gaines','Science tax buy up truth. Federal particular how address. Year team table none relationship director.',218,'move, particular, blue, first, stop'),(12,'Garcia, Gray and Todd','Pm hair reason factor PM station. Red human almost avoid media often physical. Offer move grow employee buy rock.\nFirm much film doctor owner. Much my impact base out.',708,'performance, social, once, development, occur'),(13,'Tran and Sons','Again again federal nearly wife cover put. Item painting peace buy song matter. Environmental apply size increase.\nIndeed and ability main type.',919,'often, per, candidate, year, material'),(14,'Maynard LLC','Green according audience story capital. Product have dinner. Customer letter when.\nHand light positive next. Far color may run.',863,'opportunity, seat, establish, grow, list'),(15,'Davis-Bailey','Trouble relate collection television consumer bit chance necessary. Any edge left only nothing. Car market thing beautiful stuff car fill.',330,'else, build, truth, author, get'),(16,'Martinez Inc','Standard report area toward player former. Industry air challenge. Blue full even play.',201,'speech, ten, institution, nature, minute'),(17,'Gregory, Mercer and Tanner','Note the enough. Raise would never join billion job discussion life.\nFar because free green red.',793,'his, board, interview, choice, network'),(18,'Roberts, Stephenson and Sandoval','Media easy subject less actually.\nSpace travel see develop research figure save region. Defense company write scene prepare out front beat.',904,'kind, election, during, fund, half'),(19,'Anderson-Lawson','Drug throughout not important. Better music majority scientist identify.\nBuilding room whom other dinner test expert health. Miss enter government. Both them provide we.\nDown city father ok.',159,'certainly, decision, share, lose, kind'),(20,'Haynes LLC','Enjoy you friend computer control approach. Table financial beat. Night reality future stay ground admit would moment.',706,'support, third, where, everything, cultural'),(21,'Andrade-Hernandez','Plant red wear statement probably. Choose idea follow per significant.\nKitchen consumer use child well tonight close. Maintain better serious.',314,'husband, piece, water, deep, sister'),(22,'Conley LLC','True skill among deal apply could.\nSpace knowledge return call. Upon who keep such.\nFront investment water lose they worry run. Control of power experience sure.',856,'seven, religious, role, marriage, quickly'),(23,'Gordon-Payne','Be cut can. Statement soon close keep market process thought. Artist piece such everything himself more up. Seat war attack opportunity everyone edge.',473,'sea, break, seek, deep, only'),(24,'Johnson Inc','Assume although important travel reach. Gun site lawyer share.\nSurface use early green society capital.\nTruth forget practice live painting without free. Dream hit individual. Follow great test.',322,'certain, determine, hold, realize, event'),(25,'King-Wood','Subject clearly any organization charge. Clear task out news gun.\nCold field green level western manage. Often church yet president. Market address seem a my.',867,'dog, ability, out, yourself, anyone'),(26,'Duarte-Ellison','Civil season middle tax subject become.\nPrice nice get a medical. Direction police road rather clear.\nBreak cell answer inside sense themselves effort. Where issue paper Congress east fund.',170,'land, smile, rise, several, test'),(27,'Costa-Rogers','Painting be look have.\nWeight fish image network. Short resource miss campaign list.\nFollow themselves agent floor. Fight arm movie population represent.',963,'arrive, wall, billion, Congress, evidence'),(28,'Stephens-Johnson','Happy tonight boy four enjoy. Human hope next scientist front morning summer analysis. Wife dog most kind doctor.',369,'star, accept, under, security, rich'),(29,'Guzman-Hicks','Recent act stand travel best. Some cost cup project. Authority firm red particular.\nThose suffer study consumer always. Compare several leave others. Down yet who up low accept number.',456,'religious, appear, use, safe, production'),(30,'Shepherd and Sons','Production unit people grow. View face together perform discover. Can front seem beat executive.',644,'doctor, economic, from, success, expect');
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
INSERT INTO `buyer` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(9,9,0),(10,10,0),(11,11,0),(12,12,0),(13,13,0),(14,14,0),(15,15,0),(16,16,0),(17,17,0),(18,18,0),(19,19,0),(20,20,0),(21,21,0),(22,22,0),(23,23,0),(24,24,0),(25,25,0),(26,26,0),(27,27,0),(28,28,0),(29,29,0),(30,30,1),(31,31,0),(32,32,0),(33,33,0),(34,34,0),(35,35,0),(36,36,0),(37,37,0),(38,38,0),(39,39,0),(40,40,0),(41,41,0),(42,42,0),(43,43,0),(44,44,0),(45,45,0),(46,46,0),(47,47,0),(48,48,0),(49,49,0),(50,50,0),(51,51,0),(52,52,0),(53,53,0),(54,54,0),(55,55,0),(56,56,0),(57,57,0),(58,58,0),(59,59,0),(60,60,0),(61,61,0),(62,62,0),(63,63,0),(64,64,0),(65,65,0),(66,66,0),(67,67,0),(68,68,0),(69,69,0),(70,70,0),(71,71,0),(72,72,0),(73,73,0),(74,74,0),(75,75,0),(76,76,0),(77,77,0),(78,78,0),(79,79,0),(80,80,0),(81,81,0),(82,82,0),(83,83,0),(84,84,0),(85,85,0),(86,86,0),(87,87,0),(88,88,0),(89,89,0),(90,90,0),(91,91,0),(92,92,0),(93,93,1),(94,94,0),(95,95,0),(96,96,0),(97,97,0),(98,98,0),(99,99,0),(100,100,0),(101,101,0),(102,102,0),(103,103,0),(104,104,0),(105,105,0),(106,106,0),(107,107,0),(108,108,0),(109,109,0),(110,110,0),(111,111,0),(112,112,0),(113,113,1),(114,114,0),(115,115,0),(116,116,0),(117,117,0),(118,118,0),(119,119,0),(120,120,0),(121,121,0),(122,122,0),(123,123,0),(124,124,0),(125,125,0),(126,126,0),(127,127,0),(128,128,0),(129,129,0),(130,130,0),(131,131,0),(132,132,0),(133,133,0),(134,134,0),(135,135,0),(136,136,0),(137,137,0),(138,138,0),(139,139,0),(140,140,0),(141,141,0),(142,142,0),(143,143,0),(144,144,0),(145,145,0),(146,146,0),(147,147,0),(148,148,0),(149,149,0),(150,150,0);
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
  PRIMARY KEY (`event_ID`),
  KEY `building_ID` (`building_ID`),
  KEY `festival_ID` (`festival_ID`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`building_ID`) REFERENCES `building` (`building_ID`),
  CONSTRAINT `events_ibfk_2` FOREIGN KEY (`festival_ID`) REFERENCES `festival` (`festival_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,'Television Concert',1,'2017-07-09 08:32:00','2017-07-09 11:55:00',16,203),(2,1,'Official Concert',1,'2017-07-09 13:01:00','2017-07-09 16:17:00',26,196),(3,1,'Product Concert',1,'2017-07-09 16:56:00','2017-07-09 20:23:00',28,207),(4,1,'Here Concert',1,'2017-07-09 21:54:00','2017-07-09 01:30:00',27,216),(5,1,'Effort Concert',2,'2017-07-10 08:39:00','2017-07-10 12:02:00',18,203),(6,1,'However Concert',2,'2017-07-10 12:25:00','2017-07-10 15:43:00',30,198),(7,1,'Up Concert',2,'2017-07-10 16:40:00','2017-07-10 20:06:00',20,206),(8,1,'Minute Concert',2,'2017-07-10 21:13:00','2017-07-10 00:24:00',6,191),(9,1,'They Concert',2,'2017-07-10 01:37:00','2017-07-10 05:16:00',13,219),(10,1,'Technology Concert',2,'2017-07-10 06:36:00','2017-07-10 09:45:00',1,189),(11,1,'Service Concert',2,'2017-07-10 10:21:00','2017-07-10 13:35:00',2,194),(12,1,'Draw Concert',3,'2017-07-11 08:39:00','2017-07-11 11:45:00',26,186),(13,2,'Class Concert',1,'2018-09-08 09:40:00','2018-09-08 12:41:00',12,181),(14,2,'Discuss Concert',1,'2018-09-08 13:37:00','2018-09-08 17:13:00',5,216),(15,2,'Table Concert',2,'2018-09-09 08:35:00','2018-09-09 12:00:00',8,205),(16,2,'Assume Concert',2,'2018-09-09 13:36:00','2018-09-09 17:10:00',6,214),(17,2,'Size Concert',2,'2018-09-09 18:03:00','2018-09-09 21:06:00',1,183),(18,2,'Practice Concert',2,'2018-09-09 21:42:00','2018-09-09 01:10:00',11,208),(19,2,'Policy Concert',2,'2018-09-09 02:44:00','2018-09-09 05:50:00',18,186),(20,2,'Despite Concert',2,'2018-09-09 06:13:00','2018-09-09 09:35:00',26,202),(21,2,'Camera Concert',2,'2018-09-09 10:51:00','2018-09-09 14:28:00',2,217),(22,2,'Onto Concert',3,'2018-09-10 08:20:00','2018-09-10 11:24:00',11,184),(23,2,'Race Concert',3,'2018-09-10 12:27:00','2018-09-10 15:32:00',23,185),(24,2,'Leader Concert',3,'2018-09-10 16:03:00','2018-09-10 19:12:00',18,189),(25,2,'Describe Concert',3,'2018-09-10 19:39:00','2018-09-10 22:52:00',29,193),(26,2,'This Concert',3,'2018-09-10 23:27:00','2018-09-10 02:30:00',21,183),(27,2,'Arm Concert',3,'2018-09-10 03:32:00','2018-09-10 07:12:00',30,220),(28,2,'Talk Concert',3,'2018-09-10 08:01:00','2018-09-10 11:04:00',3,183),(29,2,'Bill Concert',4,'2018-09-11 09:19:00','2018-09-11 12:51:00',1,212),(30,3,'Business Concert',1,'2019-07-05 09:26:00','2019-07-05 13:01:00',7,215),(31,3,'East Concert',1,'2019-07-05 14:16:00','2019-07-05 17:37:00',5,201),(32,3,'Yet Concert',1,'2019-07-05 18:26:00','2019-07-05 21:51:00',29,205),(33,3,'Choose Concert',1,'2019-07-05 23:15:00','2019-07-05 02:48:00',27,213),(34,3,'Short Concert',1,'2019-07-05 03:09:00','2019-07-05 06:17:00',5,188),(35,3,'Fear Concert',1,'2019-07-05 06:38:00','2019-07-05 09:47:00',6,189),(36,3,'Leg Concert',1,'2019-07-05 11:21:00','2019-07-05 14:46:00',27,205),(37,3,'Education Concert',1,'2019-07-05 15:31:00','2019-07-05 18:47:00',25,196),(38,3,'Poor Concert',1,'2019-07-05 19:38:00','2019-07-05 22:52:00',6,194),(39,3,'Eight Concert',1,'2019-07-05 23:52:00','2019-07-05 03:17:00',30,205),(40,3,'Successful Concert',1,'2019-07-05 03:52:00','2019-07-05 07:02:00',9,190),(41,3,'Success Concert',2,'2019-07-06 09:27:00','2019-07-06 12:29:00',7,182),(42,3,'Draw Concert',2,'2019-07-06 14:07:00','2019-07-06 17:29:00',17,202),(43,3,'Record Concert',2,'2019-07-06 19:06:00','2019-07-06 22:43:00',7,217),(44,3,'Nation Concert',2,'2019-07-06 00:06:00','2019-07-06 03:16:00',3,190),(45,3,'Tell Concert',2,'2019-07-06 04:15:00','2019-07-06 07:18:00',23,183),(46,3,'Chair Concert',2,'2019-07-06 08:34:00','2019-07-06 11:36:00',16,182),(47,3,'Follow Concert',2,'2019-07-06 12:02:00','2019-07-06 15:17:00',29,195),(48,3,'True Concert',2,'2019-07-06 16:48:00','2019-07-06 20:01:00',18,193),(49,3,'Improve Concert',2,'2019-07-06 20:24:00','2019-07-06 23:31:00',12,187),(50,3,'Attorney Concert',2,'2019-07-06 00:53:00','2019-07-06 04:06:00',9,193),(51,3,'Company Concert',2,'2019-07-06 04:57:00','2019-07-06 08:34:00',23,217),(52,4,'Drive Concert',1,'2020-07-04 09:31:00','2020-07-04 12:36:00',19,185),(53,4,'Hear Concert',1,'2020-07-04 13:57:00','2020-07-04 17:04:00',22,187),(54,4,'Left Concert',1,'2020-07-04 17:38:00','2020-07-04 21:03:00',18,205),(55,4,'Store Concert',1,'2020-07-04 22:29:00','2020-07-04 01:38:00',25,189),(56,4,'Watch Concert',1,'2020-07-04 02:29:00','2020-07-04 06:09:00',15,220),(57,4,'Draw Concert',2,'2020-07-05 09:09:00','2020-07-05 12:27:00',13,198),(58,4,'Per Concert',3,'2020-07-06 09:27:00','2020-07-06 12:41:00',2,194),(59,4,'Great Concert',3,'2020-07-06 13:36:00','2020-07-06 16:44:00',7,188),(60,4,'Matter Concert',3,'2020-07-06 17:39:00','2020-07-06 21:02:00',25,203),(61,4,'Little Concert',3,'2020-07-06 22:01:00','2020-07-06 01:12:00',21,191),(62,4,'Quality Concert',3,'2020-07-06 02:19:00','2020-07-06 05:29:00',18,190),(63,4,'Ability Concert',3,'2020-07-06 06:04:00','2020-07-06 09:06:00',7,182),(64,4,'College Concert',3,'2020-07-06 09:33:00','2020-07-06 13:03:00',19,210),(65,4,'Address Concert',3,'2020-07-06 14:35:00','2020-07-06 18:14:00',9,219),(66,4,'Collection Concert',3,'2020-07-06 18:36:00','2020-07-06 21:54:00',11,198),(67,4,'Edge Concert',4,'2020-07-07 09:11:00','2020-07-07 12:42:00',29,211),(68,4,'Trade Concert',4,'2020-07-07 13:56:00','2020-07-07 17:33:00',6,217),(69,4,'Inside Concert',4,'2020-07-07 19:04:00','2020-07-07 22:42:00',6,218),(70,4,'Discuss Concert',4,'2020-07-07 00:19:00','2020-07-07 03:21:00',21,182),(71,4,'Realize Concert',4,'2020-07-07 04:25:00','2020-07-07 07:42:00',27,197),(72,5,'Range Concert',1,'2021-08-20 09:25:00','2021-08-20 12:59:00',9,214),(73,5,'Individual Concert',1,'2021-08-20 14:39:00','2021-08-20 17:53:00',27,194),(74,5,'Show Concert',1,'2021-08-20 18:21:00','2021-08-20 21:44:00',15,203),(75,5,'Important Concert',1,'2021-08-20 22:27:00','2021-08-20 01:48:00',8,201),(76,5,'Consumer Concert',1,'2021-08-20 03:15:00','2021-08-20 06:27:00',4,192),(77,5,'Hour Concert',1,'2021-08-20 07:11:00','2021-08-20 10:12:00',20,181),(78,5,'Nor Concert',1,'2021-08-20 11:43:00','2021-08-20 15:06:00',13,203),(79,5,'Thousand Concert',1,'2021-08-20 16:20:00','2021-08-20 19:50:00',6,210),(80,5,'Situation Concert',2,'2021-08-21 09:14:00','2021-08-21 12:44:00',22,210),(81,5,'Long Concert',2,'2021-08-21 13:47:00','2021-08-21 17:09:00',29,202),(82,5,'Citizen Concert',2,'2021-08-21 18:03:00','2021-08-21 21:35:00',20,212),(83,5,'Church Concert',2,'2021-08-21 23:03:00','2021-08-21 02:42:00',21,219),(84,5,'Player Concert',2,'2021-08-21 03:16:00','2021-08-21 06:18:00',30,182),(85,5,'Help Concert',2,'2021-08-21 07:08:00','2021-08-21 10:46:00',26,218),(86,5,'Image Concert',2,'2021-08-21 11:36:00','2021-08-21 15:10:00',8,214),(87,5,'Themselves Concert',2,'2021-08-21 15:46:00','2021-08-21 19:06:00',7,200),(88,5,'Character Concert',2,'2021-08-21 19:51:00','2021-08-21 23:25:00',18,214),(89,5,'Fish Concert',2,'2021-08-21 00:58:00','2021-08-21 04:24:00',6,206),(90,5,'Season Concert',3,'2021-08-22 08:22:00','2021-08-22 11:58:00',5,216),(91,5,'Five Concert',3,'2021-08-22 12:58:00','2021-08-22 16:33:00',7,215),(92,5,'No Concert',3,'2021-08-22 17:59:00','2021-08-22 21:20:00',6,201),(93,5,'Party Concert',4,'2021-08-23 09:07:00','2021-08-23 12:41:00',24,214),(94,6,'Police Concert',1,'2022-09-11 08:49:00','2022-09-11 12:02:00',12,193),(95,6,'By Concert',2,'2022-09-12 09:01:00','2022-09-12 12:37:00',10,216),(96,6,'Present Concert',2,'2022-09-12 13:17:00','2022-09-12 16:38:00',27,201),(97,6,'Whether Concert',3,'2022-09-13 08:20:00','2022-09-13 11:31:00',11,191),(98,6,'If Concert',3,'2022-09-13 12:38:00','2022-09-13 16:02:00',14,204),(99,7,'Realize Concert',1,'2023-09-27 09:16:00','2023-09-27 12:55:00',26,219),(100,7,'Bring Concert',1,'2023-09-27 13:59:00','2023-09-27 17:21:00',28,202),(101,7,'Several Concert',1,'2023-09-27 18:41:00','2023-09-27 21:43:00',28,182),(102,7,'Expert Concert',2,'2023-09-28 09:12:00','2023-09-28 12:17:00',24,185),(103,7,'Rock Concert',2,'2023-09-28 12:47:00','2023-09-28 15:51:00',19,184),(104,8,'With Concert',1,'2024-09-20 09:01:00','2024-09-20 12:39:00',19,218),(105,8,'Point Concert',1,'2024-09-20 13:04:00','2024-09-20 16:19:00',16,195),(106,8,'Purpose Concert',1,'2024-09-20 16:48:00','2024-09-20 20:04:00',2,196),(107,8,'Spring Concert',2,'2024-09-21 08:38:00','2024-09-21 12:17:00',2,219),(108,8,'Call Concert',2,'2024-09-21 12:44:00','2024-09-21 16:21:00',29,217),(109,8,'These Concert',3,'2024-09-22 09:02:00','2024-09-22 12:25:00',12,203),(110,8,'Raise Concert',3,'2024-09-22 12:50:00','2024-09-22 16:16:00',7,206),(111,8,'Already Concert',4,'2024-09-23 08:38:00','2024-09-23 12:00:00',8,202),(112,8,'Space Concert',4,'2024-09-23 13:27:00','2024-09-23 16:38:00',14,191),(113,8,'Certainly Concert',4,'2024-09-23 18:00:00','2024-09-23 21:32:00',16,212),(114,8,'Main Concert',5,'2024-09-24 09:17:00','2024-09-24 12:20:00',10,183),(115,8,'About Concert',5,'2024-09-24 13:53:00','2024-09-24 17:12:00',24,199),(116,8,'Imagine Concert',5,'2024-09-24 18:13:00','2024-09-24 21:50:00',30,217),(117,8,'Worry Concert',5,'2024-09-24 22:50:00','2024-09-24 01:54:00',15,184),(118,8,'Total Concert',5,'2024-09-24 03:29:00','2024-09-24 06:54:00',4,205),(119,8,'Quite Concert',5,'2024-09-24 07:58:00','2024-09-24 11:20:00',13,202),(120,8,'Know Concert',5,'2024-09-24 12:30:00','2024-09-24 15:41:00',15,191),(121,8,'Hand Concert',5,'2024-09-24 16:21:00','2024-09-24 19:43:00',29,202),(122,9,'Week Concert',1,'2025-07-19 09:20:00','2025-07-19 12:41:00',2,201),(123,9,'Ago Concert',1,'2025-07-19 13:13:00','2025-07-19 16:28:00',12,195),(124,9,'Worry Concert',1,'2025-07-19 16:49:00','2025-07-19 19:54:00',5,185),(125,9,'Safe Concert',1,'2025-07-19 20:54:00','2025-07-19 00:16:00',1,202),(126,9,'People Concert',1,'2025-07-19 01:34:00','2025-07-19 04:41:00',30,187),(127,9,'Assume Concert',1,'2025-07-19 06:16:00','2025-07-19 09:48:00',28,212),(128,9,'Exactly Concert',2,'2025-07-20 09:31:00','2025-07-20 12:33:00',14,182),(129,9,'Whose Concert',3,'2025-07-21 09:36:00','2025-07-21 12:58:00',20,202),(130,9,'Author Concert',3,'2025-07-21 13:43:00','2025-07-21 17:08:00',16,205),(131,9,'Woman Concert',3,'2025-07-21 17:51:00','2025-07-21 20:54:00',16,183),(132,9,'Trade Concert',3,'2025-07-21 21:56:00','2025-07-21 01:26:00',14,210),(133,9,'Back Concert',3,'2025-07-21 02:25:00','2025-07-21 05:32:00',13,187),(134,9,'Wife Concert',3,'2025-07-21 06:38:00','2025-07-21 10:05:00',22,207),(135,9,'Wall Concert',3,'2025-07-21 10:59:00','2025-07-21 14:19:00',24,200),(136,9,'Adult Concert',4,'2025-07-22 09:07:00','2025-07-22 12:20:00',15,193),(137,9,'Land Concert',4,'2025-07-22 13:14:00','2025-07-22 16:29:00',5,195),(138,9,'Character Concert',4,'2025-07-22 17:09:00','2025-07-22 20:24:00',9,195),(139,9,'Street Concert',4,'2025-07-22 21:44:00','2025-07-22 00:51:00',29,187),(140,9,'Bring Concert',4,'2025-07-22 01:44:00','2025-07-22 04:45:00',9,181),(141,9,'Hot Concert',4,'2025-07-22 05:45:00','2025-07-22 09:16:00',10,211),(142,10,'Then Concert',1,'2026-08-27 08:53:00','2026-08-27 12:11:00',19,198),(143,10,'Main Concert',1,'2026-08-27 13:45:00','2026-08-27 17:17:00',24,212),(144,10,'Attorney Concert',1,'2026-08-27 18:41:00','2026-08-27 22:17:00',8,216),(145,10,'Seat Concert',2,'2026-08-28 08:51:00','2026-08-28 11:54:00',6,183),(146,10,'Discussion Concert',2,'2026-08-28 12:45:00','2026-08-28 16:12:00',3,207),(147,10,'Question Concert',2,'2026-08-28 17:47:00','2026-08-28 21:22:00',18,215),(148,10,'Drive Concert',2,'2026-08-28 21:45:00','2026-08-28 01:14:00',4,209),(149,10,'Population Concert',2,'2026-08-28 02:01:00','2026-08-28 05:24:00',24,203),(150,10,'Rock Concert',2,'2026-08-28 06:49:00','2026-08-28 09:53:00',19,184),(151,10,'Cut Concert',2,'2026-08-28 11:22:00','2026-08-28 14:40:00',23,198),(152,10,'Order Concert',3,'2026-08-29 09:26:00','2026-08-29 12:34:00',12,188),(153,10,'Fact Concert',3,'2026-08-29 13:38:00','2026-08-29 17:17:00',18,219),(154,10,'Level Concert',4,'2026-08-30 09:31:00','2026-08-30 12:47:00',19,196),(155,10,'Car Concert',4,'2026-08-30 13:43:00','2026-08-30 17:20:00',20,217),(156,10,'Likely Concert',4,'2026-08-30 18:21:00','2026-08-30 21:31:00',12,190),(157,10,'Ready Concert',4,'2026-08-30 22:59:00','2026-08-30 02:20:00',30,201),(158,10,'Agree Concert',4,'2026-08-30 03:59:00','2026-08-30 07:25:00',18,206),(159,10,'Security Concert',4,'2026-08-30 09:04:00','2026-08-30 12:24:00',1,200),(160,10,'Better Concert',4,'2026-08-30 13:20:00','2026-08-30 16:37:00',26,197),(161,10,'Boy Concert',4,'2026-08-30 17:40:00','2026-08-30 21:14:00',25,214),(162,10,'Arm Concert',4,'2026-08-30 22:04:00','2026-08-30 01:22:00',14,198),(163,10,'Usually Concert',5,'2026-08-31 08:56:00','2026-08-31 12:07:00',13,191),(164,10,'Against Concert',5,'2026-08-31 13:03:00','2026-08-31 16:13:00',7,190);
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
INSERT INTO `festival` VALUES (1,'2017-07-09',3),(2,'2018-09-08',4),(3,'2019-07-05',2),(4,'2020-07-04',4),(5,'2021-08-20',4),(6,'2022-09-11',3),(7,'2023-09-27',2),(8,'2024-09-20',5),(9,'2025-07-19',4),(10,'2026-08-27',5);
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
  KEY `festival_ID` (`festival_ID`),
  CONSTRAINT `festival_location_ibfk_1` FOREIGN KEY (`festival_ID`) REFERENCES `festival` (`festival_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festival_location`
--

LOCK TABLES `festival_location` WRITE;
/*!40000 ALTER TABLE `festival_location` DISABLE KEYS */;
INSERT INTO `festival_location` VALUES (1,1,'85737 George Crest','Hodgesberg','Afghanistan','Europe','29.9653865,-11.205842'),(2,2,'2437 James Mount','Andrewport','Barbados','Europe','8.1774925,-86.834768'),(3,3,'09954 Peter Green','Bakerville','Heard Island and McDonald Islands','Europe','-83.341796,33.011605'),(4,4,'123 Cunningham Harbors','Clarketon','Mexico','Europe','-20.0089955,-5.788834'),(5,5,'388 Phelps Locks','Coxland','Venezuela','Europe','-88.088453,151.572491'),(6,6,'7717 Brown Forge Apt. 848','Port Davidchester','Australia','Europe','85.183608,27.415023'),(7,7,'007 Gloria Drives Suite 948','Nataliemouth','Saudi Arabia','Europe','14.781339,-131.787992'),(8,8,'31431 Arroyo Mission','Bookerborough','Norfolk Island','Europe','-72.2186245,-16.173354'),(9,9,'195 Wall Brook','Chasebury','Guernsey','Europe','-43.000948,105.352888'),(10,10,'0961 Ortiz Isle','East Lori','Tanzania','Europe','-17.0598615,177.793941');
/*!40000 ALTER TABLE `festival_location` ENABLE KEYS */;
UNLOCK TABLES;

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
  `group_genre` varchar(100) NOT NULL,
  `group_subgerne` varchar(100) DEFAULT NULL,
  `group_website` varchar(255) DEFAULT NULL,
  `group_instagram` varchar(255) DEFAULT NULL,
  `member_names` text DEFAULT '',
  PRIMARY KEY (`group_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'Angela Owens Band','1984-07-04','1993-07-02','pop','electronic','http://www.martinez-welch.info/','https://www.baker.info/','Katie Wise, David Nunez, '),(2,'Brianna Hebert Band','1991-10-12','2011-10-07','rock','jazz','https://www.cherry.org/','https://www.gutierrez-schmitt.com/','Christopher Morris, Amber Harvey, '),(3,'Amy Leonard Band','1978-05-19','1981-05-18','electronic','pop','http://www.jenkins.biz/','http://johnson.org/','Theresa Rivera, Tammy Rodriguez, Rebecca Rowe, '),(4,'John Morgan Band','1986-08-26','1995-08-24','pop','hip hop','https://walker.com/','https://www.ellis.info/','Daniel Wilson, Jill Yoder, Angela Riggs, '),(5,'Kristen Young Band','1977-10-01','1984-09-29','jazz','hip hop','http://collins-myers.com/','http://ramirez.com/','Tammy Rodriguez, Lori Smith, Sylvia Welch, Diana Johnson, Shane Larsen, '),(6,'Molly Goodwin Band','2000-10-25','2017-10-21','hip hop','pop','https://miller.com/','https://www.bailey.com/','Shane Larsen, Emily Harris, '),(7,'Crystal Gray Band','2003-07-09','2021-07-04','rock','hip hop','http://perez.biz/','https://mcintosh.com/','Jonathan Beltran, Tammy Rodriguez, Theresa Rivera, Thomas Roberts, William Medina, '),(8,'Dominique Johnson Band','2002-10-26','2008-10-24','pop','hip hop','http://miller.com/','https://www.chen-turner.com/','David Nunez, Emily Harris, Terry Jones, Kathleen Olsen, '),(9,'Nicole Carroll Band','1986-03-01','2002-02-25','jazz','electronic','https://www.small-wilson.info/','http://knight-jones.com/','Nancy Harvey, George Curtis, Samantha Colon, '),(10,'Colton Cruz Band','1985-08-30','1993-08-28','jazz','hip hop','http://thomas-everett.com/','http://murphy.biz/','Robert Arroyo, Tammy Rodriguez, Angelica Gibson, Kathleen Olsen, '),(11,'Kari Shelton Band','1980-05-29','1982-05-29','rock','electronic','https://stevenson.com/','http://gilmore.info/','Antonio Davis, Antonio Stewart, '),(12,'Michelle Pope Band','1974-11-11','1993-11-06','rock','pop','http://owens-kent.info/','http://garcia-james.com/','Philip Reed, Rebecca Rowe, Robert Barnes, '),(13,'Alexandra Jones Band','1993-01-28','2006-01-25','hip hop','jazz','http://www.wells.com/','http://nielsen-ponce.biz/','Christopher Morris, Diana Johnson, Samantha Colon, '),(14,'Jordan Johnson Band','1975-04-20','1983-04-18','pop','hip hop','https://www.dominguez.com/','https://www.mitchell-armstrong.org/','Jeffrey Davis, Antonio Davis, Daniel Wilson, George Curtis, Brooke Hernandez, '),(15,'Jennifer Ramos Band','1994-02-12','2010-02-08','pop','jazz','http://www.jackson-novak.com/','https://harvey-jackson.com/','Robert Arroyo, Angela Riggs, Terry Jones, John Sparks, Kevin Flores, ');
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
  KEY `artist_ID` (`artist_ID`),
  CONSTRAINT `group_members_ibfk_1` FOREIGN KEY (`group_ID`) REFERENCES `group` (`group_ID`),
  CONSTRAINT `group_members_ibfk_2` FOREIGN KEY (`artist_ID`) REFERENCES `artist` (`artist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_members`
--

LOCK TABLES `group_members` WRITE;
/*!40000 ALTER TABLE `group_members` DISABLE KEYS */;
INSERT INTO `group_members` VALUES (1,5),(1,36),(2,2),(2,46),(3,33),(3,40),(3,44),(4,26),(4,39),(4,47),(5,12),(5,20),(5,33),(5,38),(5,41),(6,29),(6,38),(7,15),(7,18),(7,19),(7,33),(7,44),(8,1),(8,8),(8,29),(8,36),(9,16),(9,35),(9,49),(10,1),(10,30),(10,33),(10,45),(11,32),(11,34),(12,24),(12,40),(12,42),(13,2),(13,35),(13,41),(14,27),(14,32),(14,37),(14,47),(14,49),(15,8),(15,9),(15,17),(15,30),(15,39);
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
  KEY `event_ID` (`event_ID`),
  KEY `building_ID` (`building_ID`),
  CONSTRAINT `performances_ibfk_1` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`),
  CONSTRAINT `performances_ibfk_2` FOREIGN KEY (`building_ID`) REFERENCES `building` (`building_ID`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`performance_start_time` < `performance_end_time`),
  CONSTRAINT `CONSTRAINT_2` CHECK (`performance_duration` <= 180)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performances`
--

LOCK TABLES `performances` WRITE;
/*!40000 ALTER TABLE `performances` DISABLE KEYS */;
INSERT INTO `performances` VALUES (1,1,'headline','2017-07-09 08:32:00','2017-07-09 10:11:00',99,16,'Martinez Inc',NULL,11),(2,2,'special_guest','2017-07-09 13:01:00','2017-07-09 14:09:00',68,26,'Duarte-Ellison',37,NULL),(3,2,'special_guest','2017-07-09 14:15:00','2017-07-09 15:10:00',55,26,'Duarte-Ellison',50,NULL),(4,3,'finale','2017-07-09 16:56:00','2017-07-09 18:05:00',69,28,'Stephens-Johnson',NULL,2),(5,5,'warm up','2017-07-10 08:39:00','2017-07-10 10:07:00',88,18,'Roberts, Stephenson and Sandoval',NULL,12),(6,5,'headline','2017-07-10 10:16:00','2017-07-10 11:01:00',45,18,'Roberts, Stephenson and Sandoval',NULL,3),(7,5,'headline','2017-07-10 11:13:00','2017-07-10 11:56:00',43,18,'Roberts, Stephenson and Sandoval',NULL,14),(8,6,'warm up','2017-07-10 12:25:00','2017-07-10 13:59:00',94,30,'Shepherd and Sons',NULL,5),(9,7,'warm up','2017-07-10 16:40:00','2017-07-10 17:20:00',40,20,'Haynes LLC',NULL,7),(10,9,'warm up','2017-07-10 01:37:00','2017-07-10 03:01:00',84,13,'Tran and Sons',NULL,10),(11,9,'headline','2017-07-10 03:16:00','2017-07-10 04:12:00',56,13,'Tran and Sons',21,NULL),(12,10,'warm up','2017-07-10 06:36:00','2017-07-10 07:10:00',34,1,'Yates-Marsh',9,NULL),(13,11,'warm up','2017-07-10 10:21:00','2017-07-10 11:49:00',88,2,'Martinez, Young and Walker',34,NULL),(14,12,'warm up','2017-07-11 08:39:00','2017-07-11 09:31:00',52,26,'Duarte-Ellison',NULL,15),(15,13,'special_guest','2018-09-08 09:40:00','2018-09-08 11:37:00',117,12,'Garcia, Gray and Todd',26,NULL),(16,13,'special_guest','2018-09-08 11:49:00','2018-09-08 12:33:00',44,12,'Garcia, Gray and Todd',48,NULL),(17,14,'headline','2018-09-08 13:37:00','2018-09-08 14:27:00',50,5,'Rangel, Jones and Jones',46,NULL),(18,14,'special_guest','2018-09-08 14:38:00','2018-09-08 15:10:00',32,5,'Rangel, Jones and Jones',11,NULL),(19,15,'special_guest','2018-09-09 08:35:00','2018-09-09 09:13:00',38,8,'Melton, Kelly and Rogers',NULL,11),(20,16,'finale','2018-09-09 13:36:00','2018-09-09 15:33:00',117,6,'West-Jones',NULL,7),(21,16,'special_guest','2018-09-09 15:40:00','2018-09-09 16:13:00',33,6,'West-Jones',NULL,5),(22,17,'finale','2018-09-09 18:03:00','2018-09-09 18:53:00',50,1,'Yates-Marsh',NULL,8),(23,17,'finale','2018-09-09 19:08:00','2018-09-09 19:59:00',51,1,'Yates-Marsh',37,NULL),(24,19,'finale','2018-09-09 02:44:00','2018-09-09 04:35:00',111,18,'Roberts, Stephenson and Sandoval',NULL,11),(25,20,'headline','2018-09-09 06:13:00','2018-09-09 07:57:00',104,26,'Duarte-Ellison',NULL,3),(26,20,'headline','2018-09-09 08:12:00','2018-09-09 09:06:00',54,26,'Duarte-Ellison',41,NULL),(27,21,'finale','2018-09-09 10:51:00','2018-09-09 11:52:00',61,2,'Martinez, Young and Walker',19,NULL),(28,21,'special_guest','2018-09-09 12:07:00','2018-09-09 13:02:00',55,2,'Martinez, Young and Walker',30,NULL),(29,21,'special_guest','2018-09-09 13:13:00','2018-09-09 13:49:00',36,2,'Martinez, Young and Walker',NULL,10),(30,22,'special_guest','2018-09-10 08:20:00','2018-09-10 09:04:00',44,11,'Cohen-Gaines',NULL,6),(31,23,'special_guest','2018-09-10 12:27:00','2018-09-10 13:55:00',88,23,'Gordon-Payne',NULL,7),(32,24,'headline','2018-09-10 16:03:00','2018-09-10 17:32:00',89,18,'Roberts, Stephenson and Sandoval',NULL,4),(33,25,'warm up','2018-09-10 19:39:00','2018-09-10 20:18:00',39,29,'Guzman-Hicks',NULL,5),(34,25,'finale','2018-09-10 20:30:00','2018-09-10 22:04:00',94,29,'Guzman-Hicks',NULL,15),(35,27,'special_guest','2018-09-10 03:32:00','2018-09-10 04:07:00',35,30,'Shepherd and Sons',NULL,10),(36,28,'headline','2018-09-10 08:01:00','2018-09-10 09:41:00',100,3,'Martinez, Walker and Hall',NULL,2),(37,29,'warm up','2018-09-11 09:19:00','2018-09-11 11:07:00',108,1,'Yates-Marsh',NULL,13),(38,30,'special_guest','2019-07-05 09:26:00','2019-07-05 09:56:00',30,7,'Phillips, Mitchell and Lee',NULL,11),(39,31,'warm up','2019-07-05 14:16:00','2019-07-05 16:10:00',114,5,'Rangel, Jones and Jones',49,NULL),(40,31,'finale','2019-07-05 16:25:00','2019-07-05 17:18:00',53,5,'Rangel, Jones and Jones',NULL,14),(41,32,'special_guest','2019-07-05 18:26:00','2019-07-05 19:02:00',36,29,'Guzman-Hicks',11,NULL),(42,34,'warm up','2019-07-05 03:09:00','2019-07-05 04:58:00',109,5,'Rangel, Jones and Jones',NULL,2),(43,35,'headline','2019-07-05 06:38:00','2019-07-05 08:35:00',117,6,'West-Jones',33,NULL),(44,36,'special_guest','2019-07-05 11:21:00','2019-07-05 12:30:00',69,27,'Costa-Rogers',NULL,6),(45,37,'warm up','2019-07-05 15:31:00','2019-07-05 16:44:00',73,25,'King-Wood',NULL,9),(46,37,'headline','2019-07-05 16:51:00','2019-07-05 18:36:00',105,25,'King-Wood',NULL,14),(47,38,'warm up','2019-07-05 19:38:00','2019-07-05 21:33:00',115,6,'West-Jones',28,NULL),(48,38,'finale','2019-07-05 21:44:00','2019-07-05 22:30:00',46,6,'West-Jones',NULL,7),(49,40,'finale','2019-07-05 03:52:00','2019-07-05 05:26:00',94,9,'Hunt-Rodriguez',NULL,3),(50,40,'headline','2019-07-05 05:34:00','2019-07-05 06:25:00',51,9,'Hunt-Rodriguez',NULL,6),(51,41,'special_guest','2019-07-06 09:27:00','2019-07-06 10:25:00',58,7,'Phillips, Mitchell and Lee',NULL,11),(52,42,'finale','2019-07-06 14:07:00','2019-07-06 15:16:00',69,17,'Gregory, Mercer and Tanner',15,NULL),(53,43,'warm up','2019-07-06 19:06:00','2019-07-06 20:20:00',74,7,'Phillips, Mitchell and Lee',35,NULL),(54,43,'special_guest','2019-07-06 20:28:00','2019-07-06 22:26:00',118,7,'Phillips, Mitchell and Lee',NULL,5),(55,44,'special_guest','2019-07-06 00:06:00','2019-07-06 00:38:00',32,3,'Martinez, Walker and Hall',NULL,13),(56,45,'special_guest','2019-07-06 04:15:00','2019-07-06 06:15:00',120,23,'Gordon-Payne',NULL,12),(57,46,'warm up','2019-07-06 08:34:00','2019-07-06 10:10:00',96,16,'Martinez Inc',44,NULL),(58,46,'finale','2019-07-06 10:22:00','2019-07-06 11:06:00',44,16,'Martinez Inc',NULL,2),(59,47,'finale','2019-07-06 12:02:00','2019-07-06 13:24:00',82,29,'Guzman-Hicks',NULL,4),(60,47,'headline','2019-07-06 13:30:00','2019-07-06 14:56:00',86,29,'Guzman-Hicks',NULL,1),(61,48,'headline','2019-07-06 16:48:00','2019-07-06 17:18:00',30,18,'Roberts, Stephenson and Sandoval',NULL,9),(62,49,'headline','2019-07-06 20:24:00','2019-07-06 21:21:00',57,12,'Garcia, Gray and Todd',NULL,13),(63,49,'warm up','2019-07-06 21:26:00','2019-07-06 22:22:00',56,12,'Garcia, Gray and Todd',13,NULL),(64,50,'finale','2019-07-06 00:53:00','2019-07-06 02:51:00',118,9,'Hunt-Rodriguez',18,NULL),(65,51,'finale','2019-07-06 04:57:00','2019-07-06 06:01:00',64,23,'Gordon-Payne',NULL,4),(66,51,'special_guest','2019-07-06 06:16:00','2019-07-06 07:22:00',66,23,'Gordon-Payne',41,NULL),(67,52,'warm up','2020-07-04 09:31:00','2020-07-04 10:57:00',86,19,'Anderson-Lawson',NULL,14),(68,52,'headline','2020-07-04 11:10:00','2020-07-04 12:19:00',69,19,'Anderson-Lawson',NULL,15),(69,53,'warm up','2020-07-04 13:57:00','2020-07-04 15:01:00',64,22,'Conley LLC',6,NULL),(70,53,'special_guest','2020-07-04 15:07:00','2020-07-04 16:12:00',65,22,'Conley LLC',NULL,7),(71,54,'headline','2020-07-04 17:38:00','2020-07-04 19:29:00',111,18,'Roberts, Stephenson and Sandoval',NULL,10),(72,54,'special_guest','2020-07-04 19:39:00','2020-07-04 20:54:00',75,18,'Roberts, Stephenson and Sandoval',2,NULL),(73,56,'special_guest','2020-07-04 02:29:00','2020-07-04 03:08:00',39,15,'Davis-Bailey',NULL,14),(74,56,'headline','2020-07-04 03:21:00','2020-07-04 03:53:00',32,15,'Davis-Bailey',NULL,10),(75,56,'finale','2020-07-04 04:07:00','2020-07-04 05:38:00',91,15,'Davis-Bailey',NULL,13),(76,57,'finale','2020-07-05 09:09:00','2020-07-05 10:37:00',88,13,'Tran and Sons',NULL,2),(77,57,'special_guest','2020-07-05 10:48:00','2020-07-05 11:40:00',52,13,'Tran and Sons',47,NULL),(78,58,'warm up','2020-07-06 09:27:00','2020-07-06 10:47:00',80,2,'Martinez, Young and Walker',17,NULL),(79,59,'warm up','2020-07-06 13:36:00','2020-07-06 14:37:00',61,7,'Phillips, Mitchell and Lee',NULL,14),(80,60,'special_guest','2020-07-06 17:39:00','2020-07-06 18:58:00',79,25,'King-Wood',NULL,5),(81,60,'warm up','2020-07-06 19:07:00','2020-07-06 20:25:00',78,25,'King-Wood',NULL,2),(82,62,'finale','2020-07-06 02:19:00','2020-07-06 03:13:00',54,18,'Roberts, Stephenson and Sandoval',37,NULL),(83,62,'finale','2020-07-06 03:18:00','2020-07-06 04:34:00',76,18,'Roberts, Stephenson and Sandoval',NULL,3),(84,62,'headline','2020-07-06 04:40:00','2020-07-06 05:10:00',30,18,'Roberts, Stephenson and Sandoval',NULL,12),(85,63,'warm up','2020-07-06 06:04:00','2020-07-06 07:40:00',96,7,'Phillips, Mitchell and Lee',NULL,13),(86,63,'special_guest','2020-07-06 07:52:00','2020-07-06 08:41:00',49,7,'Phillips, Mitchell and Lee',NULL,15),(87,64,'headline','2020-07-06 09:33:00','2020-07-06 11:00:00',87,19,'Anderson-Lawson',NULL,2),(88,65,'finale','2020-07-06 14:35:00','2020-07-06 15:59:00',84,9,'Hunt-Rodriguez',NULL,7),(89,65,'special_guest','2020-07-06 16:14:00','2020-07-06 18:02:00',108,9,'Hunt-Rodriguez',NULL,5),(90,66,'headline','2020-07-06 18:36:00','2020-07-06 19:48:00',72,11,'Cohen-Gaines',NULL,8),(91,66,'special_guest','2020-07-06 19:53:00','2020-07-06 20:28:00',35,11,'Cohen-Gaines',NULL,5),(92,67,'special_guest','2020-07-07 09:11:00','2020-07-07 09:47:00',36,29,'Guzman-Hicks',41,NULL),(93,67,'special_guest','2020-07-07 09:55:00','2020-07-07 11:45:00',110,29,'Guzman-Hicks',NULL,8),(94,68,'warm up','2020-07-07 13:56:00','2020-07-07 15:06:00',70,6,'West-Jones',NULL,12),(95,68,'headline','2020-07-07 15:18:00','2020-07-07 16:44:00',86,6,'West-Jones',NULL,12),(96,69,'finale','2020-07-07 19:04:00','2020-07-07 20:18:00',74,6,'West-Jones',NULL,3),(97,69,'warm up','2020-07-07 20:25:00','2020-07-07 21:58:00',93,6,'West-Jones',47,NULL),(98,70,'special_guest','2020-07-07 00:19:00','2020-07-07 01:20:00',61,21,'Andrade-Hernandez',6,NULL),(99,71,'warm up','2020-07-07 04:25:00','2020-07-07 05:37:00',72,27,'Costa-Rogers',24,NULL),(100,71,'special_guest','2020-07-07 05:50:00','2020-07-07 07:07:00',77,27,'Costa-Rogers',NULL,13),(101,72,'headline','2021-08-20 09:25:00','2021-08-20 10:33:00',68,9,'Hunt-Rodriguez',6,NULL),(102,73,'finale','2021-08-20 14:39:00','2021-08-20 15:53:00',74,27,'Costa-Rogers',NULL,13),(103,73,'finale','2021-08-20 16:05:00','2021-08-20 16:57:00',52,27,'Costa-Rogers',NULL,13),(104,74,'finale','2021-08-20 18:21:00','2021-08-20 20:04:00',103,15,'Davis-Bailey',NULL,14),(105,76,'headline','2021-08-20 03:15:00','2021-08-20 05:12:00',117,4,'Alexander, Andrews and White',43,NULL),(106,76,'headline','2021-08-20 05:17:00','2021-08-20 05:55:00',38,4,'Alexander, Andrews and White',NULL,5),(107,77,'special_guest','2021-08-20 07:11:00','2021-08-20 07:50:00',39,20,'Haynes LLC',NULL,6),(108,77,'special_guest','2021-08-20 08:02:00','2021-08-20 08:44:00',42,20,'Haynes LLC',19,NULL),(109,78,'finale','2021-08-20 11:43:00','2021-08-20 12:28:00',45,13,'Tran and Sons',NULL,7),(110,79,'headline','2021-08-20 16:20:00','2021-08-20 17:21:00',61,6,'West-Jones',NULL,2),(111,80,'headline','2021-08-21 09:14:00','2021-08-21 09:51:00',37,22,'Conley LLC',NULL,2),(112,80,'warm up','2021-08-21 10:06:00','2021-08-21 10:41:00',35,22,'Conley LLC',NULL,4),(113,80,'headline','2021-08-21 10:51:00','2021-08-21 12:36:00',105,22,'Conley LLC',38,NULL),(114,81,'finale','2021-08-21 13:47:00','2021-08-21 15:30:00',103,29,'Guzman-Hicks',NULL,1),(115,82,'finale','2021-08-21 18:03:00','2021-08-21 18:53:00',50,20,'Haynes LLC',NULL,15),(116,82,'finale','2021-08-21 18:59:00','2021-08-21 20:39:00',100,20,'Haynes LLC',NULL,6),(117,84,'headline','2021-08-21 03:16:00','2021-08-21 04:30:00',74,30,'Shepherd and Sons',NULL,2),(118,85,'warm up','2021-08-21 07:08:00','2021-08-21 08:25:00',77,26,'Duarte-Ellison',NULL,6),(119,86,'headline','2021-08-21 11:36:00','2021-08-21 12:26:00',50,8,'Melton, Kelly and Rogers',NULL,3),(120,86,'headline','2021-08-21 12:41:00','2021-08-21 14:24:00',103,8,'Melton, Kelly and Rogers',27,NULL),(121,87,'headline','2021-08-21 15:46:00','2021-08-21 16:46:00',60,7,'Phillips, Mitchell and Lee',NULL,11),(122,88,'finale','2021-08-21 19:51:00','2021-08-21 20:57:00',66,18,'Roberts, Stephenson and Sandoval',NULL,9),(123,88,'special_guest','2021-08-21 21:04:00','2021-08-21 22:52:00',108,18,'Roberts, Stephenson and Sandoval',NULL,3),(124,89,'special_guest','2021-08-21 00:58:00','2021-08-21 02:33:00',95,6,'West-Jones',NULL,14),(125,90,'headline','2021-08-22 08:22:00','2021-08-22 09:38:00',76,5,'Rangel, Jones and Jones',NULL,10),(126,91,'finale','2021-08-22 12:58:00','2021-08-22 14:51:00',113,7,'Phillips, Mitchell and Lee',NULL,11),(127,92,'special_guest','2021-08-22 17:59:00','2021-08-22 18:57:00',58,6,'West-Jones',NULL,15),(128,92,'warm up','2021-08-22 19:09:00','2021-08-22 21:07:00',118,6,'West-Jones',NULL,10),(129,93,'warm up','2021-08-23 09:07:00','2021-08-23 10:26:00',79,24,'Johnson Inc',NULL,12),(130,94,'finale','2022-09-11 08:49:00','2022-09-11 09:50:00',61,12,'Garcia, Gray and Todd',NULL,8),(131,94,'special_guest','2022-09-11 09:58:00','2022-09-11 11:25:00',87,12,'Garcia, Gray and Todd',NULL,14),(132,95,'special_guest','2022-09-12 09:01:00','2022-09-12 10:04:00',63,10,'Williams LLC',7,NULL),(133,95,'headline','2022-09-12 10:17:00','2022-09-12 12:08:00',111,10,'Williams LLC',28,NULL),(134,96,'finale','2022-09-12 13:17:00','2022-09-12 14:32:00',75,27,'Costa-Rogers',15,NULL),(135,96,'special_guest','2022-09-12 14:47:00','2022-09-12 16:28:00',101,27,'Costa-Rogers',NULL,13),(136,97,'finale','2022-09-13 08:20:00','2022-09-13 09:48:00',88,11,'Cohen-Gaines',NULL,12),(137,97,'special_guest','2022-09-13 09:53:00','2022-09-13 10:46:00',53,11,'Cohen-Gaines',NULL,5),(138,98,'finale','2022-09-13 12:38:00','2022-09-13 14:26:00',108,14,'Maynard LLC',NULL,12),(139,99,'headline','2023-09-27 09:16:00','2023-09-27 10:16:00',60,26,'Duarte-Ellison',NULL,1),(140,99,'finale','2023-09-27 10:25:00','2023-09-27 12:17:00',112,26,'Duarte-Ellison',43,NULL),(141,100,'headline','2023-09-27 13:59:00','2023-09-27 15:50:00',111,28,'Stephens-Johnson',NULL,1),(142,101,'warm up','2023-09-27 18:41:00','2023-09-27 20:06:00',85,28,'Stephens-Johnson',21,NULL),(143,101,'special_guest','2023-09-27 20:19:00','2023-09-27 21:15:00',56,28,'Stephens-Johnson',NULL,1),(144,102,'finale','2023-09-28 09:12:00','2023-09-28 10:44:00',92,24,'Johnson Inc',NULL,11),(145,102,'finale','2023-09-28 10:54:00','2023-09-28 11:55:00',61,24,'Johnson Inc',18,NULL),(146,103,'warm up','2023-09-28 12:47:00','2023-09-28 13:27:00',40,19,'Anderson-Lawson',NULL,4),(147,104,'special_guest','2024-09-20 09:01:00','2024-09-20 09:43:00',42,19,'Anderson-Lawson',NULL,3),(148,105,'warm up','2024-09-20 13:04:00','2024-09-20 14:07:00',63,16,'Martinez Inc',NULL,10),(149,105,'special_guest','2024-09-20 14:15:00','2024-09-20 16:08:00',113,16,'Martinez Inc',NULL,11),(150,106,'finale','2024-09-20 16:48:00','2024-09-20 18:47:00',119,2,'Martinez, Young and Walker',NULL,4),(151,107,'finale','2024-09-21 08:38:00','2024-09-21 10:28:00',110,2,'Martinez, Young and Walker',45,NULL),(152,107,'finale','2024-09-21 10:43:00','2024-09-21 11:44:00',61,2,'Martinez, Young and Walker',NULL,12),(153,108,'headline','2024-09-21 12:44:00','2024-09-21 14:09:00',85,29,'Guzman-Hicks',33,NULL),(154,108,'finale','2024-09-21 14:22:00','2024-09-21 16:00:00',98,29,'Guzman-Hicks',NULL,6),(155,109,'special_guest','2024-09-22 09:02:00','2024-09-22 10:31:00',89,12,'Garcia, Gray and Todd',36,NULL),(156,109,'finale','2024-09-22 10:42:00','2024-09-22 11:48:00',66,12,'Garcia, Gray and Todd',NULL,12),(157,110,'headline','2024-09-22 12:50:00','2024-09-22 14:15:00',85,7,'Phillips, Mitchell and Lee',NULL,11),(158,110,'headline','2024-09-22 14:23:00','2024-09-22 15:30:00',67,7,'Phillips, Mitchell and Lee',NULL,3),(159,111,'finale','2024-09-23 08:38:00','2024-09-23 09:53:00',75,8,'Melton, Kelly and Rogers',NULL,2),(160,112,'warm up','2024-09-23 13:27:00','2024-09-23 15:07:00',100,14,'Maynard LLC',NULL,5),(161,112,'warm up','2024-09-23 15:17:00','2024-09-23 16:34:00',77,14,'Maynard LLC',NULL,2),(162,113,'finale','2024-09-23 18:00:00','2024-09-23 18:59:00',59,16,'Martinez Inc',NULL,13),(163,113,'warm up','2024-09-23 19:05:00','2024-09-23 20:26:00',81,16,'Martinez Inc',NULL,7),(164,113,'warm up','2024-09-23 20:41:00','2024-09-23 21:22:00',41,16,'Martinez Inc',35,NULL),(165,114,'finale','2024-09-24 09:17:00','2024-09-24 11:13:00',116,10,'Williams LLC',35,NULL),(166,115,'finale','2024-09-24 13:53:00','2024-09-24 15:51:00',118,24,'Johnson Inc',NULL,7),(167,115,'special_guest','2024-09-24 16:03:00','2024-09-24 17:12:00',69,24,'Johnson Inc',NULL,5),(168,116,'warm up','2024-09-24 18:13:00','2024-09-24 20:01:00',108,30,'Shepherd and Sons',NULL,3),(169,118,'finale','2024-09-24 03:29:00','2024-09-24 04:21:00',52,4,'Alexander, Andrews and White',41,NULL),(170,119,'special_guest','2024-09-24 07:58:00','2024-09-24 09:46:00',108,13,'Tran and Sons',NULL,3),(171,120,'warm up','2024-09-24 12:30:00','2024-09-24 14:12:00',102,15,'Davis-Bailey',NULL,1),(172,120,'special_guest','2024-09-24 14:25:00','2024-09-24 15:24:00',59,15,'Davis-Bailey',12,NULL),(173,121,'warm up','2024-09-24 16:21:00','2024-09-24 16:54:00',33,29,'Guzman-Hicks',NULL,14),(174,121,'finale','2024-09-24 17:01:00','2024-09-24 18:31:00',90,29,'Guzman-Hicks',NULL,6),(175,122,'special_guest','2025-07-19 09:20:00','2025-07-19 11:05:00',105,2,'Martinez, Young and Walker',NULL,13),(176,123,'headline','2025-07-19 13:13:00','2025-07-19 14:06:00',53,12,'Garcia, Gray and Todd',46,NULL),(177,124,'finale','2025-07-19 16:49:00','2025-07-19 17:39:00',50,5,'Rangel, Jones and Jones',27,NULL),(178,124,'headline','2025-07-19 17:51:00','2025-07-19 19:50:00',119,5,'Rangel, Jones and Jones',28,NULL),(179,126,'headline','2025-07-19 01:34:00','2025-07-19 03:24:00',110,30,'Shepherd and Sons',11,NULL),(180,127,'warm up','2025-07-19 06:16:00','2025-07-19 07:34:00',78,28,'Stephens-Johnson',NULL,3),(181,128,'finale','2025-07-20 09:31:00','2025-07-20 10:37:00',66,14,'Maynard LLC',NULL,6),(182,129,'finale','2025-07-21 09:36:00','2025-07-21 11:25:00',109,20,'Haynes LLC',NULL,3),(183,130,'warm up','2025-07-21 13:43:00','2025-07-21 14:38:00',55,16,'Martinez Inc',NULL,15),(184,130,'warm up','2025-07-21 14:47:00','2025-07-21 16:35:00',108,16,'Martinez Inc',NULL,11),(185,131,'special_guest','2025-07-21 17:51:00','2025-07-21 19:40:00',109,16,'Martinez Inc',NULL,3),(186,133,'special_guest','2025-07-21 02:25:00','2025-07-21 03:12:00',47,13,'Tran and Sons',NULL,11),(187,133,'headline','2025-07-21 03:23:00','2025-07-21 04:17:00',54,13,'Tran and Sons',NULL,14),(188,134,'special_guest','2025-07-21 06:38:00','2025-07-21 08:04:00',86,22,'Conley LLC',NULL,1),(189,135,'special_guest','2025-07-21 10:59:00','2025-07-21 11:55:00',56,24,'Johnson Inc',NULL,7),(190,136,'finale','2025-07-22 09:07:00','2025-07-22 10:29:00',82,15,'Davis-Bailey',NULL,1),(191,137,'headline','2025-07-22 13:14:00','2025-07-22 14:42:00',88,5,'Rangel, Jones and Jones',20,NULL),(192,138,'warm up','2025-07-22 17:09:00','2025-07-22 18:41:00',92,9,'Hunt-Rodriguez',30,NULL),(193,138,'finale','2025-07-22 18:55:00','2025-07-22 19:55:00',60,9,'Hunt-Rodriguez',NULL,15),(194,140,'headline','2025-07-22 01:44:00','2025-07-22 02:48:00',64,9,'Hunt-Rodriguez',NULL,12),(195,140,'finale','2025-07-22 03:01:00','2025-07-22 04:27:00',86,9,'Hunt-Rodriguez',13,NULL),(196,141,'finale','2025-07-22 05:45:00','2025-07-22 06:35:00',50,10,'Williams LLC',44,NULL),(197,141,'special_guest','2025-07-22 06:44:00','2025-07-22 07:41:00',57,10,'Williams LLC',26,NULL),(198,142,'finale','2026-08-27 08:53:00','2026-08-27 09:44:00',51,19,'Anderson-Lawson',5,NULL),(199,143,'warm up','2026-08-27 13:45:00','2026-08-27 15:16:00',91,24,'Johnson Inc',NULL,12),(200,143,'headline','2026-08-27 15:30:00','2026-08-27 16:34:00',64,24,'Johnson Inc',28,NULL),(201,144,'special_guest','2026-08-27 18:41:00','2026-08-27 19:38:00',57,8,'Melton, Kelly and Rogers',49,NULL),(202,144,'finale','2026-08-27 19:49:00','2026-08-27 20:35:00',46,8,'Melton, Kelly and Rogers',NULL,11),(203,145,'warm up','2026-08-28 08:51:00','2026-08-28 10:14:00',83,6,'West-Jones',NULL,13),(204,145,'headline','2026-08-28 10:22:00','2026-08-28 11:47:00',85,6,'West-Jones',NULL,2),(205,146,'finale','2026-08-28 12:45:00','2026-08-28 14:44:00',119,3,'Martinez, Walker and Hall',NULL,1),(206,147,'headline','2026-08-28 17:47:00','2026-08-28 18:35:00',48,18,'Roberts, Stephenson and Sandoval',NULL,2),(207,147,'finale','2026-08-28 18:48:00','2026-08-28 20:39:00',111,18,'Roberts, Stephenson and Sandoval',NULL,6),(208,149,'headline','2026-08-28 02:01:00','2026-08-28 03:22:00',81,24,'Johnson Inc',34,NULL),(209,150,'special_guest','2026-08-28 06:49:00','2026-08-28 08:44:00',115,19,'Anderson-Lawson',NULL,2),(210,151,'finale','2026-08-28 11:22:00','2026-08-28 13:03:00',101,23,'Gordon-Payne',NULL,8),(211,151,'warm up','2026-08-28 13:08:00','2026-08-28 14:05:00',57,23,'Gordon-Payne',NULL,1),(212,152,'warm up','2026-08-29 09:26:00','2026-08-29 11:02:00',96,12,'Garcia, Gray and Todd',NULL,2),(213,152,'headline','2026-08-29 11:07:00','2026-08-29 12:24:00',77,12,'Garcia, Gray and Todd',16,NULL),(214,153,'warm up','2026-08-29 13:38:00','2026-08-29 14:09:00',31,18,'Roberts, Stephenson and Sandoval',NULL,13),(215,153,'special_guest','2026-08-29 14:24:00','2026-08-29 16:21:00',117,18,'Roberts, Stephenson and Sandoval',25,NULL),(216,154,'finale','2026-08-30 09:31:00','2026-08-30 10:44:00',73,19,'Anderson-Lawson',9,NULL),(217,155,'headline','2026-08-30 13:43:00','2026-08-30 14:32:00',49,20,'Haynes LLC',NULL,9),(218,155,'special_guest','2026-08-30 14:40:00','2026-08-30 15:32:00',52,20,'Haynes LLC',NULL,14),(219,156,'warm up','2026-08-30 18:21:00','2026-08-30 19:03:00',42,12,'Garcia, Gray and Todd',NULL,7),(220,156,'special_guest','2026-08-30 19:12:00','2026-08-30 20:56:00',104,12,'Garcia, Gray and Todd',NULL,6),(221,158,'headline','2026-08-30 03:59:00','2026-08-30 05:43:00',104,18,'Roberts, Stephenson and Sandoval',28,NULL),(222,159,'finale','2026-08-30 09:04:00','2026-08-30 10:25:00',81,1,'Yates-Marsh',NULL,4),(223,160,'headline','2026-08-30 13:20:00','2026-08-30 13:58:00',38,26,'Duarte-Ellison',NULL,7),(224,161,'headline','2026-08-30 17:40:00','2026-08-30 19:18:00',98,25,'King-Wood',NULL,10),(225,161,'headline','2026-08-30 19:30:00','2026-08-30 20:01:00',31,25,'King-Wood',NULL,12),(226,163,'headline','2026-08-31 08:56:00','2026-08-31 10:18:00',82,13,'Tran and Sons',NULL,11),(227,163,'headline','2026-08-31 10:30:00','2026-08-31 11:13:00',43,13,'Tran and Sons',NULL,7),(228,164,'special_guest','2026-08-31 13:03:00','2026-08-31 14:24:00',81,7,'Phillips, Mitchell and Lee',NULL,14),(229,164,'headline','2026-08-31 14:39:00','2026-08-31 15:46:00',67,7,'Phillips, Mitchell and Lee',NULL,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personel`
--

LOCK TABLES `personel` WRITE;
/*!40000 ALTER TABLE `personel` DISABLE KEYS */;
INSERT INTO `personel` VALUES (1,'Nicole','Brown',38,'debrabuchanan@example.net','506-351-6153','intern'),(2,'Frank','Stanley',55,'bondlindsay@example.com','+1-503-518-5917x769','very_experienced'),(3,'Mark','Garcia',22,'elizabethlam@example.org','776-261-8011','intermidiate'),(4,'Brian','Smith',46,'kaylaburton@example.com','443-225-6233','very_experienced'),(5,'Heidi','Morgan',33,'sherriclark@example.com','453.434.5072','beginer'),(6,'Charles','Terry',32,'deborah42@example.com','+1-618-339-0726','very_experienced'),(7,'Nathan','Foster',34,'carolynvaughan@example.com','001-300-835-3778x784','intern'),(8,'Taylor','Williams',21,'diazjennifer@example.org','865.324.0360x86551','very_experienced'),(9,'Gary','Baker',43,'waynewashington@example.com','741.816.0103','beginer'),(10,'Susan','Barajas',59,'xthomas@example.com','9227668599','experienced');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resale_queue`
--

LOCK TABLES `resale_queue` WRITE;
/*!40000 ALTER TABLE `resale_queue` DISABLE KEYS */;
INSERT INTO `resale_queue` VALUES (1,NULL,85,'Back Concert','backstage',43,'2025-04-23 15:15:00'),(2,NULL,37,'Drive Concert','backstage',134,'2025-04-21 16:45:00'),(3,113,NULL,NULL,NULL,43,'2021-08-01 12:45:00'),(4,NULL,111,'Security Concert','backstage',62,'2025-04-16 12:15:00'),(5,NULL,39,'Hot Concert','general_admission',161,'2025-04-22 17:30:00'),(6,NULL,87,'Car Concert','backstage',56,'2025-04-20 18:30:00'),(7,30,NULL,NULL,NULL,56,'2025-04-20 17:15:00'),(8,93,NULL,'Party Concert','general_admission',NULL,'2021-08-09 10:45:00');
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

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_ID` int(11) DEFAULT NULL,
  `artist_performance` enum('1','2','3','4','5') DEFAULT NULL,
  `sound_and_lighting` enum('1','2','3','4','5') DEFAULT NULL,
  `stage_presence` enum('1','2','3','4','5') DEFAULT NULL,
  `event_organization` enum('1','2','3','4','5') DEFAULT NULL,
  `overall_impression` enum('1','2','3','4','5') DEFAULT NULL,
  PRIMARY KEY (`review_ID`),
  KEY `ticket_ID` (`ticket_ID`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`ticket_ID`) REFERENCES `ticket` (`ticket_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,2,'1','4','4','4','5'),(2,6,'2','2','4','5','1'),(3,7,'3','5','4','3','5'),(4,8,'4','5','2','5','2'),(5,9,'4','3','2','2','4'),(6,10,'1','2','5','5','2'),(7,11,'4','1','4','1','3'),(8,12,'5','5','4','2','5'),(9,14,'4','1','2','4','1'),(10,15,'5','3','3','3','1'),(11,16,'1','3','3','2','2'),(12,17,'1','5','1','1','4'),(13,18,'4','5','4','1','3'),(14,20,'3','1','3','5','5'),(15,21,'2','5','1','5','5'),(16,22,'3','3','5','1','1'),(17,24,'1','5','5','5','1'),(18,25,'5','5','3','3','2'),(19,26,'3','5','4','2','5'),(20,27,'2','1','2','2','2'),(21,28,'4','3','2','3','1'),(22,29,'1','3','1','1','4'),(23,32,'1','3','5','3','2'),(24,33,'1','3','5','2','5'),(25,37,'3','5','1','1','3'),(26,38,'2','4','3','5','4'),(27,40,'1','3','2','4','5'),(28,41,'4','1','5','3','3'),(29,45,'1','2','4','4','2'),(30,46,'3','3','4','5','5'),(31,47,'4','4','4','3','3'),(32,49,'2','1','3','2','1'),(33,50,'3','4','4','3','3'),(34,51,'5','4','5','2','5'),(35,52,'3','1','4','2','3'),(36,53,'4','1','2','5','2'),(37,54,'3','5','1','2','2'),(38,55,'3','3','4','5','1'),(39,57,'4','3','4','1','2'),(40,60,'5','3','5','5','5'),(41,61,'5','3','3','5','1'),(42,64,'1','5','3','5','2'),(43,65,'4','4','5','4','5'),(44,66,'2','2','5','3','4'),(45,67,'5','4','2','5','2'),(46,69,'1','3','1','4','3'),(47,71,'5','2','3','5','3'),(48,72,'5','2','2','5','1'),(49,73,'4','2','4','4','2'),(50,74,'1','4','1','4','5'),(51,75,'5','5','2','4','2'),(52,81,'4','5','1','2','4'),(53,82,'2','2','5','3','1'),(54,85,'1','2','2','5','5'),(55,86,'3','1','2','5','1'),(56,87,'3','5','4','2','3'),(57,89,'1','4','5','1','3'),(58,90,'2','4','2','1','1'),(59,91,'2','2','3','5','5'),(60,95,'2','5','5','5','1'),(61,96,'2','1','5','4','4'),(62,97,'3','1','1','2','1'),(63,98,'5','1','3','1','4'),(64,99,'3','4','5','3','1'),(65,103,'1','4','2','4','5'),(66,104,'1','3','3','4','4'),(67,105,'5','4','1','5','1'),(68,106,'3','4','4','2','5'),(69,107,'1','2','5','4','4'),(70,108,'1','3','2','1','1'),(71,110,'3','5','5','3','2'),(72,111,'4','3','2','4','1'),(73,112,'5','5','1','5','2'),(74,113,'2','3','3','1','3'),(75,115,'3','4','3','1','1'),(76,116,'4','1','1','2','4'),(77,117,'3','4','2','4','2'),(78,118,'3','5','4','1','4'),(79,121,'3','2','3','3','4'),(80,122,'3','5','5','2','3'),(81,126,'5','5','1','4','1'),(82,127,'1','1','1','3','1'),(83,128,'2','3','4','1','2'),(84,131,'1','1','5','5','4'),(85,132,'2','1','4','5','2'),(86,133,'2','2','4','5','3'),(87,135,'3','1','2','2','2'),(88,136,'4','3','2','5','4'),(89,137,'1','1','4','4','3'),(90,138,'5','3','1','4','2'),(91,140,'1','4','4','3','5'),(92,142,'1','4','4','5','5'),(93,143,'1','2','5','5','4'),(94,145,'4','4','5','1','4'),(95,146,'2','1','4','4','5'),(96,147,'3','1','5','5','2'),(97,148,'5','3','4','4','1'),(98,149,'4','4','1','5','5'),(99,150,'3','4','5','4','3'),(100,151,'1','1','1','5','4'),(101,152,'5','1','4','1','5'),(102,154,'4','4','2','4','5'),(103,156,'5','3','5','4','3'),(104,157,'2','1','3','4','4'),(105,158,'4','1','5','4','5'),(106,162,'4','1','4','5','4'),(107,163,'3','1','4','5','4'),(108,164,'1','3','1','1','4'),(109,165,'5','1','4','5','2'),(110,166,'4','2','4','1','4'),(111,168,'4','2','3','3','5'),(112,169,'1','5','1','4','2'),(113,171,'5','5','1','4','4'),(114,172,'5','2','4','4','5'),(115,173,'1','1','5','2','4'),(116,174,'2','3','4','1','3'),(117,175,'1','2','1','2','4'),(118,178,'4','3','3','4','2'),(119,180,'1','4','2','4','1'),(120,181,'4','1','2','3','2'),(121,183,'2','4','5','3','3'),(122,186,'1','3','2','5','4'),(123,188,'1','1','3','2','5'),(124,189,'1','1','4','1','3'),(125,190,'5','5','2','3','5'),(126,191,'4','2','3','5','3'),(127,192,'2','5','2','3','2'),(128,193,'2','2','1','3','1'),(129,194,'3','5','4','4','1'),(130,195,'3','1','3','5','5'),(131,196,'5','5','2','1','5'),(132,197,'2','3','3','5','4'),(133,199,'4','5','5','2','3'),(134,200,'1','1','4','1','3'),(135,201,'2','5','3','4','5'),(136,202,'5','4','5','1','5'),(137,203,'1','2','3','5','2'),(138,205,'2','4','4','4','3'),(139,207,'1','1','2','5','3'),(140,208,'4','4','5','2','5'),(141,209,'1','2','5','3','1'),(142,212,'1','2','4','1','1'),(143,214,'2','5','2','3','4'),(144,216,'4','2','4','4','2'),(145,217,'1','2','5','5','1'),(146,218,'4','5','1','3','4'),(147,219,'3','4','5','2','5');
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
  `role` enum('techincal','security','support') NOT NULL,
  PRIMARY KEY (`personel_ID`,`event_ID`),
  KEY `event_ID` (`event_ID`),
  CONSTRAINT `role_of_personel_on_event_ibfk_1` FOREIGN KEY (`personel_ID`) REFERENCES `personel` (`personel_ID`),
  CONSTRAINT `role_of_personel_on_event_ibfk_2` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_of_personel_on_event`
--

LOCK TABLES `role_of_personel_on_event` WRITE;
/*!40000 ALTER TABLE `role_of_personel_on_event` DISABLE KEYS */;
INSERT INTO `role_of_personel_on_event` VALUES (1,1,'security'),(1,5,'techincal'),(1,7,'techincal'),(1,8,'support'),(1,11,'techincal'),(1,14,'techincal'),(1,16,'support'),(1,19,'support'),(1,21,'security'),(1,25,'support'),(1,28,'security'),(1,30,'techincal'),(1,32,'techincal'),(1,33,'techincal'),(1,36,'support'),(1,38,'support'),(1,45,'support'),(1,52,'support'),(1,59,'techincal'),(1,60,'security'),(1,64,'security'),(1,67,'security'),(1,69,'techincal'),(1,71,'support'),(1,74,'security'),(1,81,'techincal'),(1,86,'techincal'),(1,88,'security'),(1,89,'techincal'),(1,92,'techincal'),(1,93,'techincal'),(1,95,'techincal'),(1,99,'security'),(1,102,'security'),(1,103,'security'),(1,109,'security'),(1,110,'support'),(1,111,'security'),(1,113,'support'),(1,116,'security'),(1,117,'security'),(1,118,'techincal'),(1,126,'support'),(1,131,'support'),(1,134,'support'),(1,139,'techincal'),(1,143,'techincal'),(1,150,'support'),(1,158,'support'),(1,161,'techincal'),(2,1,'techincal'),(2,3,'security'),(2,4,'security'),(2,6,'security'),(2,7,'security'),(2,10,'support'),(2,12,'techincal'),(2,14,'security'),(2,15,'support'),(2,19,'security'),(2,22,'techincal'),(2,35,'support'),(2,37,'support'),(2,39,'support'),(2,40,'techincal'),(2,42,'support'),(2,44,'support'),(2,45,'techincal'),(2,46,'support'),(2,51,'security'),(2,56,'support'),(2,57,'support'),(2,58,'security'),(2,59,'support'),(2,63,'security'),(2,65,'techincal'),(2,73,'support'),(2,76,'security'),(2,78,'security'),(2,89,'techincal'),(2,91,'techincal'),(2,92,'techincal'),(2,93,'support'),(2,101,'support'),(2,102,'support'),(2,104,'techincal'),(2,106,'security'),(2,107,'techincal'),(2,111,'techincal'),(2,117,'support'),(2,123,'techincal'),(2,124,'techincal'),(2,127,'support'),(2,135,'security'),(2,141,'support'),(2,144,'support'),(2,146,'techincal'),(2,151,'support'),(2,153,'support'),(2,156,'security'),(2,162,'security'),(3,4,'techincal'),(3,10,'security'),(3,18,'techincal'),(3,19,'security'),(3,21,'support'),(3,23,'security'),(3,37,'support'),(3,41,'support'),(3,47,'techincal'),(3,48,'support'),(3,50,'security'),(3,54,'techincal'),(3,56,'techincal'),(3,60,'techincal'),(3,61,'security'),(3,64,'security'),(3,65,'support'),(3,68,'techincal'),(3,69,'support'),(3,76,'security'),(3,79,'support'),(3,83,'support'),(3,85,'support'),(3,86,'techincal'),(3,88,'security'),(3,90,'techincal'),(3,97,'support'),(3,98,'security'),(3,101,'techincal'),(3,105,'support'),(3,107,'security'),(3,110,'techincal'),(3,115,'support'),(3,116,'techincal'),(3,119,'support'),(3,121,'techincal'),(3,122,'techincal'),(3,125,'support'),(3,126,'support'),(3,131,'techincal'),(3,132,'security'),(3,133,'support'),(3,134,'security'),(3,136,'security'),(3,142,'techincal'),(3,145,'techincal'),(3,149,'techincal'),(3,153,'techincal'),(3,160,'support'),(3,161,'techincal'),(3,162,'support'),(4,16,'techincal'),(4,29,'security'),(4,32,'security'),(4,43,'support'),(4,53,'techincal'),(4,57,'security'),(4,61,'techincal'),(4,66,'security'),(4,70,'techincal'),(4,75,'support'),(4,76,'security'),(4,82,'security'),(4,84,'techincal'),(4,90,'support'),(4,106,'security'),(4,108,'support'),(4,111,'support'),(4,114,'security'),(4,117,'security'),(4,119,'security'),(4,121,'techincal'),(4,123,'security'),(4,124,'security'),(4,125,'techincal'),(4,128,'support'),(4,131,'techincal'),(4,135,'support'),(4,141,'techincal'),(4,147,'security'),(4,148,'techincal'),(4,149,'support'),(4,151,'techincal'),(4,155,'techincal'),(4,159,'support'),(5,3,'security'),(5,10,'support'),(5,12,'security'),(5,13,'support'),(5,16,'techincal'),(5,17,'support'),(5,18,'support'),(5,25,'support'),(5,26,'support'),(5,28,'support'),(5,37,'techincal'),(5,38,'security'),(5,40,'security'),(5,41,'support'),(5,42,'support'),(5,46,'security'),(5,48,'techincal'),(5,49,'techincal'),(5,55,'support'),(5,57,'security'),(5,63,'security'),(5,64,'techincal'),(5,72,'techincal'),(5,77,'techincal'),(5,80,'techincal'),(5,92,'security'),(5,100,'security'),(5,101,'security'),(5,105,'security'),(5,107,'techincal'),(5,109,'security'),(5,112,'security'),(5,114,'security'),(5,123,'support'),(5,129,'techincal'),(5,134,'support'),(5,137,'security'),(5,139,'security'),(5,140,'security'),(5,144,'support'),(5,150,'techincal'),(5,154,'support'),(5,155,'techincal'),(5,156,'support'),(5,158,'techincal'),(5,162,'techincal'),(6,5,'support'),(6,9,'security'),(6,17,'support'),(6,21,'techincal'),(6,23,'techincal'),(6,36,'techincal'),(6,37,'techincal'),(6,39,'techincal'),(6,45,'support'),(6,49,'security'),(6,50,'support'),(6,53,'techincal'),(6,55,'security'),(6,61,'techincal'),(6,66,'security'),(6,70,'techincal'),(6,72,'support'),(6,73,'techincal'),(6,74,'techincal'),(6,75,'security'),(6,79,'security'),(6,81,'security'),(6,85,'security'),(6,87,'security'),(6,90,'techincal'),(6,94,'techincal'),(6,95,'security'),(6,97,'security'),(6,110,'support'),(6,112,'techincal'),(6,116,'techincal'),(6,121,'security'),(6,122,'techincal'),(6,125,'security'),(6,126,'support'),(6,129,'techincal'),(6,136,'support'),(6,139,'support'),(6,143,'support'),(6,145,'security'),(6,150,'techincal'),(6,151,'support'),(6,156,'security'),(6,157,'support'),(6,159,'support'),(6,163,'support'),(7,2,'techincal'),(7,4,'support'),(7,5,'security'),(7,15,'support'),(7,19,'techincal'),(7,20,'security'),(7,22,'support'),(7,24,'security'),(7,27,'security'),(7,29,'security'),(7,32,'techincal'),(7,34,'security'),(7,35,'support'),(7,38,'support'),(7,39,'techincal'),(7,47,'support'),(7,52,'security'),(7,53,'support'),(7,54,'security'),(7,62,'security'),(7,69,'techincal'),(7,75,'techincal'),(7,77,'security'),(7,80,'techincal'),(7,81,'security'),(7,86,'security'),(7,92,'techincal'),(7,93,'support'),(7,94,'security'),(7,96,'support'),(7,97,'techincal'),(7,98,'support'),(7,105,'security'),(7,108,'security'),(7,115,'security'),(7,117,'security'),(7,119,'security'),(7,120,'security'),(7,124,'security'),(7,127,'security'),(7,129,'techincal'),(7,130,'support'),(7,131,'security'),(7,132,'techincal'),(7,133,'techincal'),(7,135,'support'),(7,137,'support'),(7,138,'security'),(7,139,'support'),(7,140,'techincal'),(7,155,'support'),(7,158,'techincal'),(7,159,'security'),(8,3,'support'),(8,6,'security'),(8,8,'support'),(8,9,'security'),(8,11,'support'),(8,12,'security'),(8,15,'security'),(8,17,'support'),(8,20,'support'),(8,22,'security'),(8,24,'security'),(8,25,'techincal'),(8,30,'security'),(8,31,'support'),(8,34,'techincal'),(8,35,'techincal'),(8,36,'security'),(8,38,'security'),(8,42,'techincal'),(8,43,'support'),(8,46,'support'),(8,49,'support'),(8,52,'security'),(8,53,'security'),(8,54,'security'),(8,55,'techincal'),(8,57,'security'),(8,61,'support'),(8,67,'security'),(8,71,'techincal'),(8,72,'techincal'),(8,74,'support'),(8,79,'security'),(8,80,'techincal'),(8,81,'security'),(8,84,'support'),(8,93,'support'),(8,94,'support'),(8,95,'support'),(8,96,'security'),(8,97,'support'),(8,100,'security'),(8,104,'security'),(8,106,'security'),(8,112,'support'),(8,118,'security'),(8,120,'techincal'),(8,124,'support'),(8,128,'security'),(8,148,'security'),(8,152,'techincal'),(8,153,'support'),(8,157,'support'),(8,159,'support'),(8,164,'techincal'),(9,6,'techincal'),(9,8,'techincal'),(9,13,'support'),(9,15,'security'),(9,16,'support'),(9,20,'security'),(9,22,'security'),(9,23,'techincal'),(9,26,'support'),(9,28,'techincal'),(9,31,'support'),(9,33,'techincal'),(9,35,'techincal'),(9,42,'techincal'),(9,44,'security'),(9,47,'techincal'),(9,51,'techincal'),(9,54,'support'),(9,56,'support'),(9,59,'support'),(9,63,'support'),(9,64,'security'),(9,65,'techincal'),(9,68,'security'),(9,69,'support'),(9,71,'security'),(9,76,'techincal'),(9,77,'techincal'),(9,78,'security'),(9,79,'security'),(9,82,'techincal'),(9,86,'security'),(9,89,'support'),(9,90,'techincal'),(9,91,'techincal'),(9,99,'support'),(9,100,'support'),(9,103,'security'),(9,104,'techincal'),(9,116,'security'),(9,120,'techincal'),(9,127,'techincal'),(9,129,'security'),(9,130,'security'),(9,132,'support'),(9,137,'security'),(9,138,'support'),(9,146,'security'),(9,147,'support'),(9,149,'security'),(9,152,'support'),(9,154,'techincal'),(9,158,'security'),(9,160,'support'),(9,162,'techincal'),(9,164,'security'),(10,2,'support'),(10,18,'support'),(10,21,'techincal'),(10,27,'security'),(10,30,'support'),(10,33,'techincal'),(10,34,'techincal'),(10,41,'techincal'),(10,44,'security'),(10,45,'security'),(10,46,'security'),(10,47,'techincal'),(10,51,'security'),(10,52,'security'),(10,55,'security'),(10,58,'security'),(10,62,'security'),(10,63,'support'),(10,68,'techincal'),(10,71,'support'),(10,72,'security'),(10,74,'security'),(10,75,'support'),(10,80,'support'),(10,83,'support'),(10,84,'techincal'),(10,87,'security'),(10,95,'support'),(10,96,'support'),(10,106,'support'),(10,107,'security'),(10,110,'techincal'),(10,113,'support'),(10,115,'support'),(10,121,'techincal'),(10,123,'support'),(10,135,'support'),(10,136,'security'),(10,137,'security'),(10,138,'security'),(10,142,'techincal'),(10,143,'techincal'),(10,147,'security'),(10,152,'security'),(10,153,'techincal'),(10,154,'techincal'),(10,155,'support'),(10,163,'techincal'),(10,164,'techincal');
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
INSERT INTO `seller` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(9,9,0),(10,10,0),(11,11,0),(12,12,0),(13,13,0),(14,14,0),(15,15,0),(16,16,0),(17,17,0),(18,18,0),(19,19,0),(20,20,0),(21,21,0),(22,22,0),(23,23,0),(24,24,0),(25,25,0),(26,26,0),(27,27,0),(28,28,0),(29,29,0),(30,30,0),(31,31,0),(32,32,0),(33,33,0),(34,34,0),(35,35,0),(36,36,0),(37,37,1),(38,38,0),(39,39,1),(40,40,0),(41,41,0),(42,42,0),(43,43,0),(44,44,0),(45,45,0),(46,46,0),(47,47,0),(48,48,0),(49,49,0),(50,50,0),(51,51,0),(52,52,0),(53,53,0),(54,54,0),(55,55,0),(56,56,0),(57,57,0),(58,58,0),(59,59,0),(60,60,0),(61,61,0),(62,62,0),(63,63,0),(64,64,0),(65,65,0),(66,66,0),(67,67,0),(68,68,0),(69,69,0),(70,70,0),(71,71,0),(72,72,0),(73,73,0),(74,74,0),(75,75,0),(76,76,0),(77,77,0),(78,78,0),(79,79,0),(80,80,0),(81,81,0),(82,82,0),(83,83,0),(84,84,0),(85,85,1),(86,86,0),(87,87,1),(88,88,0),(89,89,0),(90,90,0),(91,91,0),(92,92,0),(93,93,0),(94,94,0),(95,95,0),(96,96,0),(97,97,0),(98,98,0),(99,99,0),(100,100,0),(101,101,0),(102,102,0),(103,103,0),(104,104,0),(105,105,0),(106,106,0),(107,107,0),(108,108,0),(109,109,0),(110,110,0),(111,111,1),(112,112,0),(113,113,0),(114,114,0),(115,115,0),(116,116,0),(117,117,0),(118,118,0),(119,119,0),(120,120,0),(121,121,0),(122,122,0),(123,123,0),(124,124,0),(125,125,0),(126,126,0),(127,127,0),(128,128,0),(129,129,0),(130,130,0),(131,131,0),(132,132,0),(133,133,0),(134,134,0),(135,135,0),(136,136,0),(137,137,0),(138,138,0),(139,139,0),(140,140,0),(141,141,0),(142,142,0),(143,143,0),(144,144,0),(145,145,0),(146,146,0),(147,147,0),(148,148,0),(149,149,0),(150,150,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_resale_matches`
--

LOCK TABLES `temp_resale_matches` WRITE;
/*!40000 ALTER TABLE `temp_resale_matches` DISABLE KEYS */;
INSERT INTO `temp_resale_matches` VALUES (1,113,85,43),(2,30,87,56);
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
  KEY `visitor_ID` (`visitor_ID`),
  KEY `event_ID` (`event_ID`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`visitor_ID`) REFERENCES `visitor` (`visitor_ID`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,139,98,'general_admission','2025-04-26',28.05,'debit_card',0),(2,47,138,'general_admission','2019-06-29',92.29,'credit_card',1),(3,141,52,'backstage','2025-04-26',60.64,'I-BAN',0),(4,14,41,'general_admission','2018-09-02',86.60,'debit_card',0),(5,139,51,'general_admission','2025-04-25',56.63,'debit_card',0),(6,82,38,'general_admission','2021-08-10',47.52,'I-BAN',1),(7,64,103,'general_admission','2020-06-26',29.93,'I-BAN',1),(8,57,31,'general_admission','2020-06-25',99.65,'debit_card',1),(9,7,45,'general_admission','2017-06-29',32.34,'debit_card',1),(10,35,23,'backstage','2019-06-29',77.78,'debit_card',1),(11,98,117,'general_admission','2022-09-03',53.54,'credit_card',1),(12,6,79,'backstage','2017-06-30',68.53,'I-BAN',1),(13,137,113,'backstage','2025-04-25',78.61,'I-BAN',0),(14,48,26,'general_admission','2019-06-27',73.67,'I-BAN',1),(15,1,74,'general_admission','2017-07-01',60.63,'credit_card',1),(16,61,105,'general_admission','2020-06-24',47.53,'I-BAN',1),(17,115,96,'backstage','2024-09-13',94.59,'credit_card',1),(18,34,104,'backstage','2019-06-28',90.20,'debit_card',1),(19,132,134,'general_admission','2025-04-28',67.72,'debit_card',0),(20,111,68,'general_admission','2024-09-11',80.70,'debit_card',1),(21,106,138,'backstage','2024-09-12',34.12,'credit_card',1),(22,112,11,'general_admission','2024-09-13',70.47,'credit_card',1),(23,15,141,'general_admission','2018-09-02',66.43,'I-BAN',0),(24,23,135,'backstage','2018-08-30',43.48,'debit_card',1),(25,102,63,'backstage','2023-09-18',32.32,'credit_card',1),(26,2,55,'backstage','2017-06-29',49.44,'credit_card',1),(27,112,7,'general_admission','2024-09-12',67.36,'debit_card',1),(28,6,87,'general_admission','2017-06-30',46.67,'I-BAN',1),(29,39,9,'general_admission','2019-06-27',50.89,'debit_card',1),(30,152,45,'backstage','2025-04-26',32.79,'credit_card',0),(31,163,57,'backstage','2025-04-27',32.13,'credit_card',0),(32,62,121,'backstage','2020-06-27',90.24,'credit_card',1),(33,69,91,'general_admission','2020-06-27',72.62,'I-BAN',1),(34,162,86,'general_admission','2025-04-26',46.01,'debit_card',0),(35,152,51,'backstage','2025-04-27',59.07,'I-BAN',0),(36,156,87,'backstage','2025-04-26',31.93,'debit_card',0),(37,109,131,'backstage','2024-09-14',88.07,'credit_card',1),(38,17,142,'general_admission','2018-08-31',25.75,'debit_card',1),(39,155,77,'general_admission','2025-04-28',63.85,'debit_card',0),(40,5,118,'general_admission','2017-06-29',86.39,'debit_card',1),(41,39,88,'backstage','2019-06-29',22.45,'debit_card',1),(42,139,87,'general_admission','2025-04-26',55.50,'debit_card',0),(43,133,85,'backstage','2025-04-25',39.49,'debit_card',0),(44,162,30,'backstage','2025-04-27',23.94,'credit_card',0),(45,118,105,'general_admission','2024-09-12',76.76,'debit_card',1),(46,1,14,'backstage','2017-06-29',83.31,'credit_card',1),(47,3,97,'backstage','2017-07-02',42.28,'debit_card',1),(48,144,83,'general_admission','2025-04-25',83.85,'credit_card',0),(49,15,102,'backstage','2018-08-30',40.78,'I-BAN',1),(50,25,38,'general_admission','2018-08-29',71.92,'credit_card',1),(51,70,60,'backstage','2020-06-26',93.51,'credit_card',1),(52,89,139,'backstage','2021-08-14',58.77,'credit_card',1),(53,46,11,'general_admission','2019-06-27',59.58,'I-BAN',1),(54,113,132,'general_admission','2024-09-14',54.15,'credit_card',1),(55,82,87,'general_admission','2021-08-12',55.35,'debit_card',1),(56,155,87,'backstage','2025-04-25',27.28,'credit_card',0),(57,111,148,'backstage','2024-09-11',80.80,'credit_card',1),(58,71,127,'backstage','2020-06-26',61.62,'debit_card',0),(59,155,125,'backstage','2025-04-26',33.55,'I-BAN',0),(60,12,7,'backstage','2017-06-29',68.24,'debit_card',1),(61,27,115,'backstage','2018-08-31',95.28,'credit_card',1),(62,159,111,'backstage','2025-04-25',64.55,'I-BAN',0),(63,142,30,'backstage','2025-04-27',50.10,'debit_card',0),(64,90,34,'backstage','2021-08-14',27.82,'I-BAN',1),(65,6,145,'backstage','2017-07-01',84.35,'debit_card',1),(66,32,100,'backstage','2019-06-27',58.67,'debit_card',1),(67,16,122,'backstage','2018-09-02',91.99,'I-BAN',1),(68,142,112,'backstage','2025-04-26',56.26,'I-BAN',0),(69,20,44,'general_admission','2018-08-31',41.76,'credit_card',1),(70,134,75,'backstage','2025-04-25',24.25,'debit_card',0),(71,24,103,'backstage','2018-08-30',83.78,'I-BAN',1),(72,44,80,'backstage','2019-06-27',89.73,'I-BAN',1),(73,53,116,'backstage','2020-06-26',51.22,'debit_card',1),(74,110,82,'backstage','2024-09-14',79.60,'credit_card',1),(75,78,23,'backstage','2021-08-12',87.56,'I-BAN',1),(76,102,55,'backstage','2023-09-20',79.87,'credit_card',0),(77,9,35,'general_admission','2017-07-01',53.65,'credit_card',0),(78,130,16,'backstage','2025-04-27',42.54,'I-BAN',0),(79,136,74,'general_admission','2025-04-28',56.41,'I-BAN',0),(80,148,95,'general_admission','2025-04-25',82.95,'I-BAN',0),(81,23,91,'backstage','2018-09-01',32.88,'credit_card',1),(82,37,8,'backstage','2019-06-26',40.18,'I-BAN',1),(83,151,55,'general_admission','2025-04-25',26.13,'I-BAN',0),(84,159,13,'general_admission','2025-04-28',89.17,'I-BAN',0),(85,30,113,'general_admission','2019-06-26',97.98,'credit_card',1),(86,25,64,'backstage','2018-09-02',20.61,'credit_card',1),(87,86,71,'backstage','2021-08-10',44.45,'debit_card',1),(88,138,149,'backstage','2025-04-28',73.48,'credit_card',0),(89,117,116,'backstage','2024-09-11',89.90,'credit_card',1),(90,117,27,'backstage','2024-09-13',31.71,'credit_card',1),(91,6,60,'general_admission','2017-06-29',35.40,'I-BAN',1),(92,128,8,'backstage','2025-04-27',83.45,'I-BAN',0),(93,145,119,'backstage','2025-04-27',40.06,'debit_card',0),(94,138,135,'backstage','2025-04-26',49.61,'I-BAN',0),(95,37,29,'general_admission','2019-06-29',73.29,'credit_card',1),(96,88,51,'backstage','2021-08-13',29.93,'debit_card',1),(97,87,110,'general_admission','2021-08-10',67.88,'credit_card',1),(98,45,127,'general_admission','2019-06-26',74.36,'debit_card',1),(99,100,64,'backstage','2023-09-18',56.22,'I-BAN',1),(100,130,4,'backstage','2025-04-26',30.16,'debit_card',0),(101,129,68,'general_admission','2025-04-29',92.55,'credit_card',0),(102,135,12,'backstage','2025-04-27',71.03,'debit_card',0),(103,49,19,'backstage','2019-06-25',64.71,'credit_card',1),(104,6,109,'general_admission','2017-06-29',22.97,'I-BAN',1),(105,4,78,'general_admission','2017-07-03',51.79,'debit_card',1),(106,13,104,'general_admission','2018-08-30',29.63,'I-BAN',1),(107,42,111,'general_admission','2019-06-29',83.14,'credit_card',1),(108,56,92,'general_admission','2020-06-24',69.80,'debit_card',1),(109,129,79,'general_admission','2025-04-27',68.16,'I-BAN',0),(110,79,15,'general_admission','2021-08-11',59.96,'I-BAN',1),(111,113,27,'backstage','2024-09-11',64.73,'I-BAN',1),(112,20,123,'backstage','2018-09-01',89.41,'credit_card',1),(113,21,136,'backstage','2018-08-29',95.93,'debit_card',1),(114,1,66,'backstage','2017-07-02',63.84,'credit_card',0),(115,61,85,'backstage','2020-06-28',21.63,'credit_card',1),(116,81,24,'backstage','2021-08-13',90.64,'I-BAN',1),(117,112,107,'general_admission','2024-09-13',26.93,'credit_card',1),(118,50,56,'backstage','2019-06-27',78.93,'debit_card',1),(119,155,121,'backstage','2025-04-26',38.24,'credit_card',0),(120,90,113,'backstage','2021-08-10',22.54,'debit_card',0),(121,43,16,'backstage','2019-06-26',46.20,'debit_card',1),(122,107,52,'backstage','2024-09-12',79.87,'I-BAN',1),(123,157,92,'backstage','2025-04-29',28.73,'I-BAN',0),(124,161,136,'general_admission','2025-04-27',96.71,'credit_card',0),(125,128,136,'backstage','2025-04-26',38.33,'debit_card',0),(126,50,26,'backstage','2019-06-29',38.11,'debit_card',1),(127,38,2,'backstage','2019-06-28',94.07,'debit_card',1),(128,50,114,'general_admission','2019-06-25',77.17,'debit_card',1),(129,134,138,'general_admission','2025-04-26',31.52,'credit_card',0),(130,126,4,'backstage','2025-04-29',61.10,'I-BAN',0),(131,105,127,'general_admission','2024-09-10',79.34,'credit_card',1),(132,85,3,'backstage','2021-08-12',88.87,'credit_card',1),(133,113,25,'backstage','2024-09-14',50.89,'credit_card',1),(134,148,37,'backstage','2025-04-29',38.22,'debit_card',0),(135,12,138,'backstage','2017-07-01',94.45,'debit_card',1),(136,70,24,'backstage','2020-06-25',25.97,'debit_card',1),(137,74,25,'general_admission','2021-08-12',55.11,'I-BAN',1),(138,64,88,'backstage','2020-06-26',80.19,'credit_card',1),(139,77,100,'general_admission','2021-08-13',65.26,'credit_card',0),(140,62,135,'backstage','2020-06-27',98.41,'credit_card',1),(141,155,27,'backstage','2025-04-28',20.04,'I-BAN',0),(142,81,113,'backstage','2021-08-11',26.39,'debit_card',1),(143,59,61,'general_admission','2020-06-28',41.01,'credit_card',1),(144,111,79,'backstage','2024-09-12',34.47,'credit_card',0),(145,81,89,'general_admission','2021-08-13',21.59,'I-BAN',1),(146,11,122,'backstage','2017-07-03',82.01,'credit_card',1),(147,65,36,'general_admission','2020-06-27',31.57,'credit_card',1),(148,41,139,'backstage','2019-06-29',40.99,'credit_card',1),(149,46,51,'general_admission','2019-06-29',57.07,'credit_card',1),(150,38,133,'general_admission','2019-06-26',30.77,'credit_card',1),(151,103,72,'backstage','2023-09-20',88.02,'credit_card',1),(152,51,30,'general_admission','2019-06-27',84.27,'I-BAN',1),(153,131,123,'backstage','2025-04-28',84.78,'credit_card',0),(154,20,19,'backstage','2018-08-29',42.51,'credit_card',1),(155,135,101,'backstage','2025-04-25',37.38,'credit_card',0),(156,94,73,'general_admission','2022-09-01',43.74,'debit_card',1),(157,44,145,'general_admission','2019-06-27',21.73,'I-BAN',1),(158,103,2,'general_admission','2023-09-18',49.69,'debit_card',1),(159,151,29,'general_admission','2025-04-28',29.11,'credit_card',0),(160,137,30,'general_admission','2025-04-26',99.53,'debit_card',0),(161,141,39,'general_admission','2025-04-29',79.77,'credit_card',0),(162,25,78,'general_admission','2018-08-31',50.26,'debit_card',1),(163,113,96,'general_admission','2024-09-11',57.41,'credit_card',1),(164,96,127,'backstage','2022-09-04',57.40,'I-BAN',1),(165,29,97,'backstage','2018-09-02',70.49,'debit_card',1),(166,7,23,'general_admission','2017-06-29',70.26,'debit_card',1),(167,158,39,'backstage','2025-04-26',48.90,'debit_card',0),(168,37,54,'general_admission','2019-06-26',53.26,'I-BAN',1),(169,10,16,'backstage','2017-07-02',85.74,'credit_card',1),(170,150,95,'backstage','2025-04-28',99.89,'debit_card',0),(171,72,46,'backstage','2021-08-13',50.41,'I-BAN',1),(172,17,128,'backstage','2018-08-30',33.36,'I-BAN',1),(173,87,82,'backstage','2021-08-12',45.65,'debit_card',1),(174,77,33,'general_admission','2021-08-11',54.39,'debit_card',1),(175,22,121,'general_admission','2018-08-30',86.29,'credit_card',1),(176,164,64,'general_admission','2025-04-26',25.09,'I-BAN',0),(177,42,94,'general_admission','2019-06-25',62.12,'credit_card',0),(178,118,13,'general_admission','2024-09-14',53.90,'credit_card',1),(179,158,78,'general_admission','2025-04-25',63.28,'debit_card',0),(180,115,10,'general_admission','2024-09-14',58.50,'I-BAN',1),(181,75,9,'backstage','2021-08-13',72.92,'I-BAN',1),(182,122,8,'general_admission','2025-04-25',40.06,'I-BAN',0),(183,120,60,'backstage','2024-09-12',66.79,'credit_card',1),(184,162,68,'backstage','2025-04-27',71.28,'debit_card',0),(185,146,111,'general_admission','2025-04-27',20.12,'debit_card',0),(186,34,74,'general_admission','2019-06-29',69.28,'credit_card',1),(187,93,93,'general_admission','2021-08-12',54.65,'credit_card',0),(188,13,69,'general_admission','2018-08-29',59.52,'I-BAN',1),(189,66,124,'backstage','2020-06-24',68.01,'I-BAN',1),(190,43,14,'backstage','2019-06-29',77.32,'debit_card',1),(191,73,116,'general_admission','2021-08-13',92.08,'credit_card',1),(192,115,118,'general_admission','2024-09-13',35.50,'debit_card',1),(193,45,29,'general_admission','2019-06-27',57.03,'credit_card',1),(194,78,99,'general_admission','2021-08-13',55.72,'I-BAN',1),(195,112,100,'general_admission','2024-09-11',48.02,'debit_card',1),(196,4,74,'backstage','2017-07-02',93.07,'I-BAN',1),(197,99,83,'general_admission','2023-09-21',60.93,'debit_card',1),(198,32,150,'general_admission','2019-06-29',57.10,'credit_card',0),(199,71,73,'backstage','2020-06-25',51.73,'credit_card',1),(200,69,132,'backstage','2020-06-24',73.45,'debit_card',1),(201,95,110,'backstage','2022-09-01',75.03,'I-BAN',1),(202,18,91,'backstage','2018-09-01',44.37,'I-BAN',1),(203,84,4,'general_admission','2021-08-14',90.03,'debit_card',1),(204,123,148,'general_admission','2025-04-27',68.93,'I-BAN',0),(205,112,42,'backstage','2024-09-10',21.21,'credit_card',1),(206,162,31,'backstage','2025-04-27',64.08,'I-BAN',0),(207,19,56,'backstage','2018-08-29',62.00,'credit_card',1),(208,54,98,'backstage','2020-06-24',21.05,'I-BAN',1),(209,31,51,'general_admission','2019-06-25',50.21,'credit_card',1),(210,134,78,'backstage','2025-04-28',28.27,'I-BAN',0),(211,148,144,'backstage','2025-04-27',87.54,'debit_card',0),(212,67,133,'backstage','2020-06-26',26.03,'I-BAN',1),(213,127,91,'general_admission','2025-04-26',25.14,'I-BAN',0),(214,32,76,'general_admission','2019-06-29',98.01,'debit_card',1),(215,152,76,'general_admission','2025-04-29',90.09,'credit_card',0),(216,53,45,'general_admission','2020-06-27',65.86,'credit_card',1),(217,60,71,'general_admission','2020-06-28',28.52,'credit_card',1),(218,31,30,'backstage','2019-06-28',64.23,'credit_card',1),(219,31,115,'backstage','2019-06-28',44.48,'debit_card',1);
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
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES (1,'Tina','Davis','763-880-0285','webbjerry@example.org',52),(2,'Linda','Shepherd','977-753-9553x2822','antonioarias@example.com',58),(3,'Alexa','Lee','757.944.0271x84280','broy@example.net',58),(4,'Joel','Quinn','529.420.7879','ryan15@example.com',30),(5,'Lonnie','Brown','+1-263-495-4173x935','hoganjose@example.net',54),(6,'Ashley','Lopez','900.269.3299x059','nicolelewis@example.net',39),(7,'Timothy','Austin','+1-852-456-0041','lauren77@example.net',32),(8,'Bethany','Terry','(456)873-0113','heathermoore@example.com',31),(9,'Oscar','Moody','001-236-557-4538','dominguezmary@example.org',58),(10,'Kathryn','Fuller','+1-304-481-1856x44146','aharris@example.net',35),(11,'Chad','Hughes','507.300.5721x212','rodgersbrooke@example.com',28),(12,'Emily','Ramirez','742-253-2779x08776','ricky15@example.com',29),(13,'Jessica','Evans','+1-372-477-6573x01272','fhill@example.net',53),(14,'Sandra','Bell','+1-664-572-5627x28328','wolfefelicia@example.net',38),(15,'Patricia','Alexander','(452)533-5001x8658','jasonoliver@example.net',60),(16,'Brooke','Simpson','+1-779-589-9327x0657','pattersonrichard@example.com',48),(17,'Kristen','Johnson','(470)616-0011x45712','austindunlap@example.com',48),(18,'Ann','Buckley','(250)993-7097x702','uallen@example.net',19),(19,'Kevin','Dennis','(526)774-8201','victoria00@example.com',28),(20,'Gary','Smith','968-453-4209x132','carrie07@example.org',46),(21,'Robert','Daugherty','+1-983-278-9246','trevormcfarland@example.net',65),(22,'Lawrence','Parker','+1-717-892-2235x98915','judithmartinez@example.com',22),(23,'Amber','Yang','+1-202-349-8563','andrewgutierrez@example.net',38),(24,'Laura','Harding','001-396-732-9929x62349','vsmith@example.com',30),(25,'Justin','Bridges','001-316-948-6178x3170','zwilliamson@example.org',26),(26,'Lisa','Guerrero','(271)400-1266x50042','timothy94@example.org',64),(27,'Jesus','Shepherd','+1-364-691-8419x4105','xosborne@example.com',25),(28,'Lisa','Berg','723.353.5501x074','tyler82@example.org',22),(29,'Nicole','Reynolds','825.313.0568x0969','lisajohnson@example.org',37),(30,'Thomas','James','408-856-2931','gregory52@example.com',41),(31,'Sally','Taylor','343-981-8686','amanda25@example.net',62),(32,'Gina','Chaney','(208)254-1358x067','tkelly@example.net',23),(33,'Monica','Taylor','9914390579','milesjustin@example.net',48),(34,'Megan','Wells','903.969.8063','davisjames@example.net',32),(35,'David','Schmitt','252.411.1920','tammy67@example.net',53),(36,'Amber','Fisher','380.335.3225x041','rhoffman@example.net',29),(37,'Joshua','Reyes','498.285.9121','williamsmichael@example.com',31),(38,'Natalie','Bauer','(492)508-7145x9952','parksarah@example.com',57),(39,'Kayla','Johnson','001-349-573-5538x0715','joshua15@example.org',44),(40,'Lisa','Mitchell','+1-224-553-1988x00383','derek77@example.com',38),(41,'Joshua','Johns','598-596-0363x1568','fgreen@example.com',41),(42,'Monica','Pollard','+1-253-560-3376','cherrygrant@example.net',25),(43,'Jason','Wright','(397)707-9823','leeadam@example.org',28),(44,'Nicholas','Prince','+1-274-432-2410x28543','odomstephanie@example.net',42),(45,'John','Hale','001-236-396-9798x0698','mackheather@example.com',63),(46,'Gregory','Valencia','001-689-991-0503x3116','johnfitzgerald@example.com',57),(47,'Ryan','Thompson','859-362-7665','christy87@example.net',31),(48,'William','Bass','+1-648-755-8959','ehernandez@example.org',49),(49,'Jennifer','Graham','+1-632-809-0829x31175','johnbrown@example.net',38),(50,'Edward','Moore','(895)944-2037x3449','qbrooks@example.org',31),(51,'Michael','Smith','(446)969-2532x19669','crosbyjuan@example.org',22),(52,'Christopher','Manning','(826)236-1718','estradaeileen@example.net',65),(53,'John','Brown','990.621.0990x281','stephencunningham@example.net',31),(54,'Carol','Tyler','001-427-916-0090','alexandraward@example.net',33),(55,'Lisa','Harding','589.647.0315x67649','anita24@example.net',41),(56,'Donna','Garcia','791-906-6679','frenchtimothy@example.com',63),(57,'Cynthia','Garcia','8544093394','eric35@example.net',35),(58,'Destiny','Roberts','001-448-899-2600','moorelauren@example.com',49),(59,'Sean','Copeland','3005750443','cmorris@example.net',53),(60,'Lisa','Brown','(572)567-5826x331','yfigueroa@example.com',42),(61,'Natasha','Morales','+1-921-626-7743x86538','heididodson@example.com',30),(62,'Alex','Peters','745-806-3063','vking@example.net',59),(63,'Veronica','Martin','555.917.9761x82082','whitejuan@example.org',38),(64,'Emily','Wagner','410.650.2681x0759','robertbates@example.net',25),(65,'Bradley','Santos','+1-954-249-6031x02603','johnsilva@example.org',44),(66,'Michael','Graham','209-527-4541','davilajeremy@example.org',35),(67,'Nicholas','Novak','(487)821-4361x8130','hernandezbrandon@example.net',47),(68,'Kyle','Moss','+1-771-732-7318','victoria35@example.com',61),(69,'Alexandra','Fernandez','+1-392-765-7667','egibson@example.org',49),(70,'Paula','Guerrero','(819)983-6715x06961','smithcassandra@example.net',47),(71,'Craig','Rodriguez','+1-643-898-6804x94848','tanyawebb@example.com',58),(72,'Catherine','Montoya','478.579.3540x1321','shannon57@example.org',39),(73,'Kelly','Nelson','001-750-813-5676x71773','joshuajones@example.net',60),(74,'Alejandra','Jimenez','(611)562-4496x8785','lopezcaleb@example.com',62),(75,'Jennifer','Watson','216.728.8530x8710','vmcguire@example.org',44),(76,'Sharon','Foster','(282)859-1530','andreaestes@example.com',23),(77,'Erin','Knight','(260)731-6904x979','garciakayla@example.org',27),(78,'Kristen','Jarvis','001-543-573-5771x783','aroach@example.org',21),(79,'Rebecca','Vasquez','+1-742-496-9645x823','masonrogers@example.com',61),(80,'Jose','Rocha','(406)357-6492','jack67@example.org',37),(81,'Timothy','Brown','311-649-8969x1425','agraves@example.net',42),(82,'Michelle','Moore','720-419-3314','courtney56@example.org',44),(83,'Sandy','Johnson','381-698-7879','rgreen@example.org',35),(84,'Lori','Acevedo','001-926-362-6985x64163','danny08@example.net',58),(85,'Monica','Jones','001-485-295-7866x6168','hogangeorge@example.net',53),(86,'Jasmine','Lee','+1-487-354-8273x09391','zjohnson@example.net',32),(87,'Christopher','Larsen','856-423-1053','greenetroy@example.org',22),(88,'Bryan','Bush','001-835-627-1658x810','tporter@example.net',31),(89,'Russell','Baird','(633)427-4495x357','barbarahernandez@example.org',47),(90,'Daryl','Price','4182287383','mdelgado@example.com',60),(91,'Veronica','Mcclain','241.861.9389x68554','grahamjessica@example.org',22),(92,'Shane','Cummings','941.318.5063x3356','johnvazquez@example.net',51),(93,'Malik','Miller','(752)948-6214x08452','cvega@example.net',40),(94,'Kevin','Hampton','(725)631-4733x32896','diazjoshua@example.net',40),(95,'Jeanette','Martinez','+1-333-889-8507x0309','haroldcampbell@example.com',21),(96,'James','Lewis','9188779080','smoreno@example.com',50),(97,'Ann','Young','(230)570-0913x3306','petersmichael@example.net',25),(98,'Antonio','Hobbs','303.387.8867x2493','jessicamcdowell@example.com',61),(99,'John','Bernard','(320)980-1297','sabrina13@example.net',51),(100,'Rachel','Mccoy','208.981.8771x294','ywilliams@example.com',45),(101,'Adrian','Wilcox','001-254-378-3157x49360','hrichmond@example.net',53),(102,'Ashley','Nelson','(426)754-8552','haroldmiller@example.net',56),(103,'Nicholas','Morgan','661-987-5333x4730','andre54@example.net',30),(104,'Pedro','Thompson','(269)376-6651x160','matthew23@example.net',35),(105,'Ryan','White','603.418.9592','murphydustin@example.com',60),(106,'James','Hernandez','448-728-8204','millerjessica@example.net',52),(107,'Katie','Banks','750-233-3458x28821','andrea26@example.net',22),(108,'Amanda','Nelson','(748)300-4203','teresasimon@example.org',64),(109,'Renee','Burton','+1-412-479-6735','flopez@example.org',35),(110,'Paul','Farmer','001-623-510-0752x1843','dustinellison@example.com',43),(111,'Kendra','Allen','(456)272-9091','jamesblackburn@example.org',21),(112,'Lisa','Peterson','6944891305','jessica06@example.org',30),(113,'Roy','Brown','001-906-995-4993x384','pfox@example.net',32),(114,'Misty','Brown','+1-506-991-0899x8879','robinsonalexander@example.com',18),(115,'Laura','Davis','574-478-4727x9283','forddestiny@example.com',43),(116,'Scott','Cooper','956.250.6871x8173','markchavez@example.org',65),(117,'David','Baker','8737350470','randall56@example.org',43),(118,'Corey','Perez','001-612-437-8727','timothybauer@example.org',55),(119,'Nina','Aguilar','001-374-961-7856x6842','stewartmatthew@example.com',58),(120,'Jessica','Baker','566.274.5466','qthomas@example.com',49),(121,'Ashley','Torres','(636)554-9679','michael11@example.org',62),(122,'Victoria','Rios','001-469-717-4323x9786','robinsoncynthia@example.net',38),(123,'Amanda','Carter','2312758469','reedcaroline@example.org',32),(124,'Jesse','Hull','526-685-9332','andersonann@example.net',60),(125,'Lorraine','Jackson','404-923-5000x30336','nicholas32@example.com',46),(126,'Peter','Thomas','282-305-1734x99702','daniel05@example.net',45),(127,'Catherine','Dixon','442-341-2215','wilsontiffany@example.org',30),(128,'Keith','Morales','7379812769','adamsmith@example.net',43),(129,'Antonio','Taylor','001-643-357-4151','hoffmanangel@example.org',49),(130,'Jennifer','Finley','2609953392','ggregory@example.org',24),(131,'Tara','Turner','+1-895-786-0661','eball@example.net',53),(132,'Johnny','Miller','001-735-976-9478x4678','kylejones@example.com',30),(133,'Michael','Allen','+1-661-614-6528x0349','xpeters@example.org',63),(134,'Michael','Summers','357.570.1543','riddlejohn@example.org',64),(135,'Joshua','Clay','001-420-485-2050x690','janice18@example.net',23),(136,'Ronald','Gardner','(881)971-9497','collinsjacqueline@example.net',28),(137,'Wayne','Harris','001-629-325-5929x5977','ugarcia@example.org',36),(138,'Susan','Welch','(363)394-7538','mcfarlandsandra@example.net',54),(139,'Joshua','Morris','(557)584-7782','nwalker@example.org',51),(140,'Ricky','Wong','802.866.1559x34034','leroyjohnson@example.org',37),(141,'Brian','Williams','001-528-412-4407x210','samantha89@example.net',53),(142,'Dana','Davis','+1-811-261-4157','ashleydakota@example.org',30),(143,'Derrick','Morales','+1-319-582-2209x9394','omar66@example.org',26),(144,'Mark','Wong','001-943-662-9231x3172','samantha87@example.net',36),(145,'Jillian','Harrington','001-389-851-3745','gloriaguzman@example.net',32),(146,'Amanda','Vang','660.713.3430','andrew89@example.net',62),(147,'Rose','Harrell','(577)799-7160x26103','yowen@example.org',29),(148,'Rhonda','Mann','(455)672-9226','nhurst@example.org',64),(149,'Melissa','Vasquez','636.358.5660x351','benjamin05@example.org',27),(150,'Craig','Mccall','916-852-6318x481','carolynrichard@example.net',22);
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

-- Dump completed on 2025-05-05 22:41:35
