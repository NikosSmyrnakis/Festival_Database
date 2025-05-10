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
INSERT INTO `artist` VALUES (1,'Joshua Rodriguez','Drew','1981-09-06','1992-09-03','https://www.cooper-sanchez.com/','https://jackson.com/',3),(2,'Marie Wilson',NULL,'1979-09-11','1998-09-06','https://doyle-miller.com/','http://howell.com/',2),(3,'Joanne Osborne','Michael','1987-01-05','1992-01-04','http://bentley.org/','http://www.sullivan.org/',2),(4,'Philip Bennett','Kimberly','1983-06-22','1997-06-18','https://salazar-ferguson.com/','http://www.chambers-prince.com/',2),(5,'Mark Villegas',NULL,'1975-05-29','1985-05-26','http://woodard.org/','http://www.allison-garcia.org/',3),(6,'Anthony Lamb','James','2004-02-20','2017-02-16','https://www.black.com/','https://www.weaver.com/',1),(7,'Ronald Mendoza','Carly','1976-09-28','1989-09-25','https://www.stevens.info/','https://www.estes.org/',1),(8,'Brian Moses',NULL,'1980-09-18','1989-09-16','http://www.jackson.com/','https://www.wells.com/',3),(9,'Melanie Lamb','Paul','1978-10-26','1988-10-23','http://www.keith.com/','https://www.hunter-sweeney.biz/',3),(10,'Melissa Mendoza','Lauren','1997-11-27','2006-11-25','https://www.davis-rocha.biz/','http://robinson.org/',3),(11,'Jeremy Byrd','Joseph','2002-05-06','2013-05-03','http://logan.com/','http://moore-long.com/',2),(12,'Brandon Brown',NULL,'2003-10-28','2007-10-27','https://ayala-walker.com/','http://wilcox.com/',3),(13,'Christine Tran',NULL,'1988-12-17','2000-12-14','https://marks.com/','http://www.clarke-carter.net/',0),(14,'Barbara Hughes','David','1995-09-10','2007-09-07','http://wells-stark.com/','https://www.barron.com/',1),(15,'Ashley Garner',NULL,'1991-08-20','1992-08-19','http://www.greene.com/','https://www.garner-carrillo.net/',1),(16,'Christopher Wilson','Bruce','1997-10-26','2008-10-23','http://www.pope.net/','http://www.smith-paul.net/',1),(17,'Jennifer Lewis',NULL,'1978-01-23','1992-01-20','http://www.raymond.com/','http://brown.com/',0),(18,'Kyle Chavez','Kristina','1983-01-23','2001-01-18','http://lee.com/','https://cardenas-copeland.com/',1),(19,'Yolanda Randolph',NULL,'1979-08-19','1995-08-15','https://www.fisher-jones.com/','https://www.roberts.com/',1),(20,'Jonathan Carter','Jonathon','2003-09-30','2006-09-29','http://www.hamilton.com/','http://www.edwards.biz/',3),(21,'Philip Owens','Julia','1991-07-14','2004-07-10','http://www.hancock-montgomery.com/','http://www.clark.com/',1),(22,'Marie Parker','Jessica','1985-12-30','2000-12-26','http://lopez.org/','https://www.ingram.info/',1),(23,'Adrienne Perez',NULL,'1992-06-18','2004-06-15','http://www.gibbs.com/','https://hansen-mckenzie.com/',2),(24,'Jamie Mitchell','Daniel','1990-06-10','1999-06-08','https://bennett-escobar.com/','https://holder-middleton.com/',0),(25,'Dawn Hickman','Anna','1977-02-07','1983-02-06','http://rivera.com/','http://www.rivera.com/',1),(26,'John Young','Julie','1999-10-04','2002-10-03','https://www.osborne-novak.com/','https://pearson.com/',2),(27,'Charles Price','Donna','1980-11-07','1987-11-06','https://www.mcgee.com/','https://williams.com/',0),(28,'Anna Clark','Jason','1991-10-11','2002-10-08','http://hamilton.com/','http://jimenez.net/',1),(29,'Richard Long',NULL,'1990-08-12','2010-08-07','https://clay-ruiz.biz/','http://www.hanson-brandt.com/',1),(30,'Suzanne Santos','John','1993-11-28','1998-11-27','http://boyd-ruiz.com/','http://www.mack-cooper.com/',1),(31,'Alyssa Lopez',NULL,'1985-07-02','1998-06-29','https://www.schultz-griffith.info/','https://edwards-miller.biz/',1),(32,'Tammie Davis',NULL,'1996-05-30','1997-05-30','http://jordan.com/','http://blackburn.com/',0),(33,'Cheryl Brown','Theodore','1987-04-14','1995-04-12','https://www.mcmillan.info/','https://miller.com/',0),(34,'Jennifer Le',NULL,'1984-12-20','1989-12-19','http://www.graves.biz/','https://www.martinez.com/',2),(35,'Andrew Ross',NULL,'2000-07-24','2011-07-22','http://bonilla.com/','http://www.rivera.net/',3),(36,'Kenneth Douglas',NULL,'1985-09-06','1989-09-05','https://www.jones.org/','https://www.pratt-thompson.com/',1),(37,'Diana Young',NULL,'1983-07-01','1999-06-27','https://rodriguez.net/','https://collins.com/',2),(38,'Michael Marshall','Paula','1998-03-03','2018-02-26','http://young-romero.com/','https://pitts.com/',0),(39,'James Callahan',NULL,'1984-09-04','2003-08-31','https://schroeder.com/','http://perez.com/',3),(40,'Shawn Allen','Amber','1981-10-08','1987-10-07','https://www.wolfe.com/','https://www.harris.biz/',2),(41,'Jay Michael',NULL,'1997-08-28','2013-08-24','http://www.goodwin.net/','https://www.martin.com/',3),(42,'Crystal Braun','Herbert','2005-03-26','2021-03-22','http://www.gomez.com/','http://potter-blake.com/',2),(43,'Amanda Valdez','Frank','2001-09-25','2007-09-24','http://black.org/','https://www.castillo.biz/',3),(44,'Christopher Hunter',NULL,'2000-01-08','2015-01-04','https://salazar.com/','http://www.garcia.info/',1),(45,'Richard Houston','Michael','1995-11-06','2012-11-01','http://www.james.com/','https://www.hansen-freeman.net/',0),(46,'Eric James','Sonya','2004-08-06','2006-08-06','http://www.park-luna.com/','https://buckley.com/',3),(47,'Sharon Bradshaw',NULL,'1979-08-15','1998-08-10','https://www.walker.biz/','http://www.torres.com/',3),(48,'Adrienne Young','Jacqueline','1978-12-26','1988-12-23','http://www.flores.biz/','https://www.alvarez.com/',1),(49,'Jack Lynch','Laura','1985-03-07','1994-03-05','http://www.hoffman.com/','http://waller.biz/',0),(50,'Miss Kristina Brown',NULL,'2005-04-15','2013-04-13','http://www.jackson.com/','http://munoz-baxter.info/',2);
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
INSERT INTO `building` VALUES (1,'Campbell, Harris and Hill','Road crime development common. Something parent turn.\nServe open hit trip. Let far foreign avoid final full.\nYoung future economy forget. Know fear garden million some style.',382),(2,'Jenkins, Watson and Anderson','Budget me ball important. Into piece spring nearly debate like.',316),(3,'Bonilla, Thornton and Jones','After option thus bag executive. Five follow describe.\nVarious join toward PM. Current agree ok the other employee. Direction statement very development full nearly.',678),(4,'Reese Ltd','Base me system agent new animal represent. Bed under including and.\nStart heart leave oil candidate view. First good in figure rest should.',563),(5,'Roberts-Ballard','These continue collection country. Young work old democratic cover within again try.\nFor exist teach defense fall. Production begin organization cause include foot.',904),(6,'Orr-Clarke','Wide set camera.\nUnit card economy.\nPositive concern receive within son sell vote.\nTop nothing understand total time start.\nTwo follow father themselves. Rule issue particular line.',511),(7,'Reese Inc','Father information possible research believe. Happy source surface.\nGreat these too style computer. Trip then one fire. Foot want receive against world.',559),(8,'Wright-Howe','Anything name upon whom common hospital keep address. Behind main produce safe six local trouble.\nValue industry international religious. These recognize the.',362),(9,'Rasmussen-Holmes','Write professional free such pass certain remain gun. National decision father type few what. Land someone site method enter performance.',360),(10,'Bullock Inc','Event decide apply free fish necessary answer safe. Future today behind director. Campaign source between join include enjoy right wind. Painting myself easy view quite many growth.',335),(11,'Gonzalez-Lynn','Executive receive go back third north back. Make democratic decide structure.\nAttention better market serious with. Finally list least professor house although. Direction woman any gun concern.',330),(12,'Thomas PLC','Sometimes would contain. Down writer baby address herself particular nothing. Quickly feeling follow happy decade would let.',313),(13,'Chavez, Stevens and Henderson','Large white true. Question know point hand I involve vote see.\nAdd enough him movie significant few oil.',338),(14,'Stewart, Gonzalez and Carlson','Forget politics or environment memory.\nMy anyone member leave activity. Result word include weight piece have tell allow. Foot difficult some threat.\nPer pretty significant church test to.',783),(15,'Watts, Jones and Brown','Good who age daughter with push politics. Because discover resource explain. Yourself truth clearly medical assume. Watch summer involve smile character program.',666),(16,'Hopkins-Wallace','According data adult including lawyer onto director.\nWork develop word bring edge soldier interesting. Black quite western kitchen often by. Admit Republican often various carry.',471),(17,'Whitehead-Johnson','Father wear face the meet certain community. Respond story character ask. Claim parent surface think upon decision. Community talk personal growth.',118),(18,'Gonzales PLC','Reduce professor exactly find town address race. Name citizen cut four anything teacher certainly. What what visit important mean image its.',683),(19,'Santos-Chen','Loss evidence player available security stop. Art window forget body.\nRegion at general close across. Relationship Democrat listen nor. All group degree business at west.',653),(20,'Murray, Wilson and Porter','Medical day manage admit eight truth. Collection source amount hotel. Report nation would boy.\nFocus type well listen sister. Water seven player morning material.',935),(21,'Bautista, Ruiz and Harrison','Buy watch lot plant. Politics conference physical simply left sea Mrs likely. Conference run main experience.\nAuthor fight remember.',448),(22,'Dyer-Wallace','Quality hope family dream gas magazine industry. Tell matter light its morning letter.\nAnother side get involve street oil. Increase need get hotel. Tonight anyone south while edge industry see.',244),(23,'Meyers and Sons','Business say sister. Rather hard college prepare. Size wish choose though black become clear often.\nField seek ground those suddenly arrive reach. Democrat decade five admit minute debate few.',256),(24,'Tyler, Hayes and Gonzales','Speech baby sister pull above. A affect reason.\nDetermine many nature happen force operation.',924),(25,'Lewis, Johnson and Williams','Then shoulder conference check space we. Onto Democrat example begin north.\nBed hope person same usually clear. Ahead light up song citizen decision.',773),(26,'Brandt, Mitchell and Johnson','Safe smile story difficult middle reality skin. Every happy cup support Republican reason behavior. Economic especially early gas it.\nService research today because south. Let body mind stuff.',990),(27,'Foster, Anderson and Horton','Certain worry great teach. Lay not support only painting ball. This clearly science expect watch. Exactly why later season positive.\nImportant suggest reflect.',455),(28,'King-Burke','Arm nature arm right let mean interesting. Line somebody first step business necessary figure service.\nBoth note shoulder region issue too here. Low property strong skin can poor develop.',162),(29,'Levine Ltd','Good national like economic than.\nAddress people Mrs item total quite southern. I marriage the. Radio white officer.',880),(30,'Taylor-Barr','Base gun first since out. Western that concern know.\nThemselves man catch southern. Any anyone visit job road stock miss generation.',151);
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
INSERT INTO `buyer` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(9,9,0),(10,10,0),(11,11,0),(12,12,0),(13,13,0),(14,14,0),(15,15,0),(16,16,0),(17,17,0),(18,18,0),(19,19,0),(20,20,0),(21,21,0),(22,22,0),(23,23,0),(24,24,0),(25,25,0),(26,26,0),(27,27,0),(28,28,0),(29,29,0),(30,30,0),(31,31,0),(32,32,1),(33,33,0),(34,34,0),(35,35,1),(36,36,1),(37,37,0),(38,38,0),(39,39,0),(40,40,0),(41,41,0),(42,42,0),(43,43,0),(44,44,0),(45,45,0),(46,46,0),(47,47,0),(48,48,1),(49,49,0),(50,50,0),(51,51,0),(52,52,0),(53,53,0),(54,54,0),(55,55,0),(56,56,0),(57,57,0),(58,58,0),(59,59,0),(60,60,0),(61,61,0),(62,62,0),(63,63,0),(64,64,0),(65,65,0),(66,66,0),(67,67,0),(68,68,0),(69,69,1),(70,70,0),(71,71,0),(72,72,0),(73,73,0),(74,74,0),(75,75,0),(76,76,0),(77,77,0),(78,78,1),(79,79,0),(80,80,0),(81,81,0),(82,82,0),(83,83,0),(84,84,0),(85,85,0),(86,86,0),(87,87,0),(88,88,0),(89,89,0),(90,90,0),(91,91,0),(92,92,0),(93,93,0),(94,94,0),(95,95,0),(96,96,0),(97,97,0),(98,98,0),(99,99,0),(100,100,1),(101,101,0),(102,102,0),(103,103,0),(104,104,0),(105,105,0),(106,106,0),(107,107,0),(108,108,0),(109,109,0),(110,110,0),(111,111,0),(112,112,0),(113,113,0),(114,114,0),(115,115,0),(116,116,0),(117,117,0),(118,118,0),(119,119,0),(120,120,0),(121,121,0),(122,122,0),(123,123,0),(124,124,0),(125,125,0),(126,126,0),(127,127,0),(128,128,0),(129,129,0),(130,130,0),(131,131,0),(132,132,0),(133,133,0),(134,134,0),(135,135,0),(136,136,0),(137,137,0),(138,138,0),(139,139,0),(140,140,0),(141,141,0),(142,142,0),(143,143,1),(144,144,0),(145,145,0),(146,146,0),(147,147,0),(148,148,0),(149,149,0),(150,150,0);
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
  `VIP_total` int(11) DEFAULT NULL,
  `backstage_total` int(11) DEFAULT NULL,
  `general_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`event_ID`),
  KEY `building_ID` (`building_ID`),
  KEY `idx_events_festival` (`festival_ID`),
  KEY `idx_events_start_time` (`event_start_time`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`building_ID`) REFERENCES `building` (`building_ID`),
  CONSTRAINT `events_ibfk_2` FOREIGN KEY (`festival_ID`) REFERENCES `festival` (`festival_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,'Parent Concert',1,'2017-09-27 08:35:00','2017-09-27 11:38:00',11,183,8,1,89),(2,1,'Already Concert',1,'2017-09-27 12:18:00','2017-09-27 15:40:00',19,202,5,7,87),(3,1,'Head Concert',1,'2017-09-27 16:41:00','2017-09-27 19:44:00',8,183,7,6,81),(4,1,'Break Concert',1,'2017-09-27 21:03:00','2017-09-27 00:22:00',12,199,5,10,89),(5,1,'Occur Concert',1,'2017-09-27 00:45:00','2017-09-27 04:14:00',19,209,8,8,82),(6,1,'Parent Concert',2,'2017-09-28 09:26:00','2017-09-28 12:44:00',5,198,7,8,84),(7,1,'How Concert',2,'2017-09-28 14:09:00','2017-09-28 17:17:00',1,188,6,9,85),(8,1,'Within Concert',2,'2017-09-28 18:23:00','2017-09-28 21:59:00',21,216,8,6,81),(9,1,'Address Concert',2,'2017-09-28 22:49:00','2017-09-28 01:58:00',30,189,6,10,99),(10,1,'Summer Concert',2,'2017-09-28 02:47:00','2017-09-28 06:26:00',7,219,8,7,86),(11,1,'Mission Concert',2,'2017-09-28 07:59:00','2017-09-28 11:25:00',6,206,6,7,97),(12,1,'Cup Concert',2,'2017-09-28 12:10:00','2017-09-28 15:42:00',18,212,10,5,87),(13,1,'Center Concert',3,'2017-09-29 09:08:00','2017-09-29 12:31:00',3,203,9,8,100),(14,1,'Record Concert',3,'2017-09-29 13:15:00','2017-09-29 16:40:00',30,205,9,8,100),(15,1,'Than Concert',3,'2017-09-29 17:41:00','2017-09-29 20:53:00',4,192,10,7,95),(16,1,'Compare Concert',3,'2017-09-29 21:58:00','2017-09-29 01:12:00',9,194,9,5,100),(17,1,'Method Concert',3,'2017-09-29 02:03:00','2017-09-29 05:23:00',27,200,6,9,81),(18,1,'Science Concert',3,'2017-09-29 06:44:00','2017-09-29 10:14:00',3,210,9,5,94),(19,1,'Spend Concert',3,'2017-09-29 11:05:00','2017-09-29 14:41:00',6,216,8,9,99),(20,1,'Evidence Concert',3,'2017-09-29 15:31:00','2017-09-29 18:50:00',30,199,8,5,97),(21,1,'Tell Concert',4,'2017-09-30 08:50:00','2017-09-30 12:00:00',11,190,7,2,85),(22,1,'Newspaper Concert',4,'2017-09-30 12:52:00','2017-09-30 16:06:00',25,194,6,2,89),(23,2,'Person Concert',1,'2018-08-10 09:35:00','2018-08-10 13:10:00',6,215,7,5,97),(24,2,'Measure Concert',1,'2018-08-10 14:37:00','2018-08-10 17:55:00',16,198,7,8,88),(25,2,'During Concert',1,'2018-08-10 19:15:00','2018-08-10 22:44:00',8,209,8,9,97),(26,2,'Who Concert',2,'2018-08-11 09:15:00','2018-08-11 12:27:00',25,192,7,5,88),(27,2,'Player Concert',2,'2018-08-11 13:51:00','2018-08-11 17:11:00',7,200,6,10,98),(28,2,'Anything Concert',2,'2018-08-11 17:48:00','2018-08-11 21:05:00',9,197,8,9,100),(29,2,'Election Concert',2,'2018-08-11 22:32:00','2018-08-11 01:34:00',17,182,5,7,90),(30,2,'Still Concert',3,'2018-08-12 09:04:00','2018-08-12 12:44:00',19,220,9,8,93),(31,2,'Interview Concert',3,'2018-08-12 13:38:00','2018-08-12 17:01:00',11,203,6,5,95),(32,2,'Yeah Concert',3,'2018-08-12 17:27:00','2018-08-12 20:34:00',11,187,8,9,80),(33,2,'Prove Concert',3,'2018-08-12 20:59:00','2018-08-12 00:27:00',29,208,8,10,82),(34,3,'Trouble Concert',1,'2019-07-14 08:54:00','2019-07-14 12:27:00',3,213,7,9,91),(35,3,'Method Concert',1,'2019-07-14 13:10:00','2019-07-14 16:30:00',13,200,6,6,89),(36,3,'Everything Concert',1,'2019-07-14 17:51:00','2019-07-14 21:12:00',29,201,10,6,82),(37,3,'Eat Concert',1,'2019-07-14 22:31:00','2019-07-14 01:41:00',6,190,10,6,81),(38,3,'Else Concert',1,'2019-07-14 03:10:00','2019-07-14 06:47:00',22,217,5,7,92),(39,3,'Audience Concert',1,'2019-07-14 07:56:00','2019-07-14 11:01:00',30,185,5,6,83),(40,3,'During Concert',1,'2019-07-14 12:12:00','2019-07-14 15:50:00',13,218,9,8,99),(41,3,'Baby Concert',1,'2019-07-14 17:30:00','2019-07-14 20:32:00',30,182,9,8,82),(42,3,'Building Concert',2,'2019-07-15 08:50:00','2019-07-15 12:18:00',26,208,5,7,81),(43,3,'Necessary Concert',2,'2019-07-15 13:00:00','2019-07-15 16:14:00',24,194,8,10,93),(44,3,'Occur Concert',2,'2019-07-15 17:50:00','2019-07-15 20:53:00',5,183,10,5,92),(45,3,'Always Concert',2,'2019-07-15 21:20:00','2019-07-15 00:51:00',6,211,9,9,92),(46,3,'As Concert',2,'2019-07-15 01:43:00','2019-07-15 05:19:00',14,216,5,9,89),(47,3,'Hit Concert',3,'2019-07-16 08:50:00','2019-07-16 12:02:00',15,192,6,8,100),(48,3,'Memory Concert',3,'2019-07-16 12:41:00','2019-07-16 15:53:00',21,192,9,5,93),(49,3,'Particular Concert',3,'2019-07-16 17:20:00','2019-07-16 20:53:00',22,213,6,5,96),(50,3,'Glass Concert',3,'2019-07-16 22:07:00','2019-07-16 01:46:00',12,219,6,9,86),(51,3,'Quite Concert',3,'2019-07-16 03:15:00','2019-07-16 06:30:00',7,195,5,5,82),(52,3,'Kid Concert',4,'2019-07-17 09:13:00','2019-07-17 12:48:00',20,215,5,9,94),(53,3,'Would Concert',4,'2019-07-17 13:19:00','2019-07-17 16:55:00',6,216,8,10,91),(54,3,'Can Concert',4,'2019-07-17 17:57:00','2019-07-17 21:22:00',16,205,10,6,83),(55,3,'Eight Concert',4,'2019-07-17 22:24:00','2019-07-17 01:44:00',7,200,6,8,97),(56,3,'Final Concert',4,'2019-07-17 03:10:00','2019-07-17 06:35:00',8,205,5,5,81),(57,3,'Task Concert',5,'2019-07-18 08:40:00','2019-07-18 12:01:00',9,201,8,8,82),(58,3,'Over Concert',5,'2019-07-18 13:17:00','2019-07-18 16:25:00',26,188,6,8,96),(59,3,'Yet Concert',5,'2019-07-18 16:55:00','2019-07-18 20:20:00',29,205,10,5,82),(60,3,'Sure Concert',5,'2019-07-18 20:54:00','2019-07-18 23:55:00',7,181,9,7,97),(61,3,'Cover Concert',5,'2019-07-18 01:23:00','2019-07-18 04:33:00',19,190,7,7,80),(62,3,'Serve Concert',5,'2019-07-18 05:01:00','2019-07-18 08:14:00',20,193,5,8,89),(63,3,'Ten Concert',5,'2019-07-18 09:04:00','2019-07-18 12:36:00',26,212,7,7,83),(64,3,'Wall Concert',5,'2019-07-18 13:50:00','2019-07-18 16:55:00',3,185,6,7,98),(65,4,'Story Concert',1,'2020-09-06 08:43:00','2020-09-06 11:59:00',28,196,10,10,92),(66,4,'Seem Concert',1,'2020-09-06 13:37:00','2020-09-06 17:17:00',18,220,5,10,82),(67,4,'Through Concert',1,'2020-09-06 18:47:00','2020-09-06 21:53:00',11,186,7,10,81),(68,4,'Response Concert',1,'2020-09-06 22:43:00','2020-09-06 02:08:00',9,205,9,6,96),(69,4,'Speech Concert',1,'2020-09-06 02:55:00','2020-09-06 06:27:00',18,212,7,7,93),(70,4,'Number Concert',1,'2020-09-06 07:23:00','2020-09-06 10:26:00',29,183,9,7,100),(71,4,'Bar Concert',1,'2020-09-06 10:57:00','2020-09-06 14:20:00',23,203,6,10,99),(72,4,'Number Concert',2,'2020-09-07 08:29:00','2020-09-07 12:03:00',27,214,7,2,83),(73,4,'Card Concert',2,'2020-09-07 12:26:00','2020-09-07 15:47:00',24,201,7,7,99),(74,4,'Leader Concert',2,'2020-09-07 16:12:00','2020-09-07 19:18:00',15,186,7,10,83),(75,4,'Challenge Concert',2,'2020-09-07 20:01:00','2020-09-07 23:38:00',20,217,7,9,92),(76,5,'Yourself Concert',1,'2021-07-26 09:34:00','2021-07-26 13:08:00',11,214,7,6,96),(77,5,'Near Concert',1,'2021-07-26 13:34:00','2021-07-26 16:54:00',30,200,9,8,92),(78,5,'Writer Concert',1,'2021-07-26 18:13:00','2021-07-26 21:39:00',1,206,5,5,98),(79,5,'Discuss Concert',1,'2021-07-26 22:12:00','2021-07-26 01:22:00',24,190,9,8,98),(80,5,'Number Concert',1,'2021-07-26 02:23:00','2021-07-26 05:28:00',13,185,7,8,93),(81,5,'Our Concert',1,'2021-07-26 05:52:00','2021-07-26 09:25:00',28,213,6,8,98),(82,5,'Leave Concert',1,'2021-07-26 11:00:00','2021-07-26 14:02:00',24,182,9,9,80),(83,5,'Senior Concert',2,'2021-07-27 09:21:00','2021-07-27 12:42:00',5,201,10,9,97),(84,5,'Reason Concert',2,'2021-07-27 13:44:00','2021-07-27 16:59:00',21,195,7,9,94),(85,6,'Prepare Concert',1,'2022-09-17 08:35:00','2022-09-17 11:36:00',14,181,8,6,99),(86,6,'Sport Concert',1,'2022-09-17 12:28:00','2022-09-17 15:38:00',6,190,7,5,88),(87,6,'Produce Concert',1,'2022-09-17 16:22:00','2022-09-17 19:49:00',21,207,10,6,85),(88,6,'Paper Concert',2,'2022-09-18 09:37:00','2022-09-18 13:03:00',10,206,9,5,88),(89,6,'Fast Concert',2,'2022-09-18 14:11:00','2022-09-18 17:22:00',28,191,10,8,93),(90,6,'Night Concert',2,'2022-09-18 17:51:00','2022-09-18 21:24:00',11,213,10,10,89),(91,6,'Make Concert',3,'2022-09-19 08:35:00','2022-09-19 11:41:00',22,186,10,7,89),(92,6,'Five Concert',4,'2022-09-20 09:11:00','2022-09-20 12:29:00',26,198,5,7,81),(93,6,'Respond Concert',4,'2022-09-20 12:49:00','2022-09-20 16:13:00',23,204,5,9,88),(94,6,'Road Concert',4,'2022-09-20 16:38:00','2022-09-20 20:09:00',8,211,7,10,86),(95,6,'She Concert',5,'2022-09-21 08:57:00','2022-09-21 12:09:00',28,192,10,6,90),(96,6,'Local Concert',5,'2022-09-21 12:50:00','2022-09-21 15:59:00',9,189,9,3,83),(97,6,'Wrong Concert',5,'2022-09-21 17:24:00','2022-09-21 20:26:00',7,182,8,6,99),(98,7,'Executive Concert',1,'2023-07-20 09:11:00','2023-07-20 12:28:00',3,197,6,9,98),(99,7,'Upon Concert',1,'2023-07-20 13:46:00','2023-07-20 17:21:00',9,215,6,8,100),(100,7,'Four Concert',1,'2023-07-20 18:07:00','2023-07-20 21:21:00',2,194,8,6,80),(101,7,'Visit Concert',1,'2023-07-20 22:55:00','2023-07-20 01:59:00',28,184,6,1,80),(102,7,'Charge Concert',1,'2023-07-20 02:35:00','2023-07-20 06:10:00',4,215,5,9,97),(103,7,'Official Concert',1,'2023-07-20 06:49:00','2023-07-20 10:23:00',27,214,5,6,81),(104,7,'Their Concert',1,'2023-07-20 11:13:00','2023-07-20 14:16:00',2,183,7,7,100),(105,7,'Painting Concert',1,'2023-07-20 15:03:00','2023-07-20 18:38:00',10,215,6,7,88),(106,7,'Only Concert',1,'2023-07-20 19:19:00','2023-07-20 22:25:00',5,186,5,7,93),(107,7,'Paper Concert',1,'2023-07-20 22:52:00','2023-07-20 02:05:00',23,193,9,6,80),(108,7,'Wide Concert',1,'2023-07-20 03:34:00','2023-07-20 06:45:00',2,191,6,10,100),(109,7,'Quality Concert',2,'2023-07-21 09:10:00','2023-07-21 12:25:00',19,195,8,10,90),(110,7,'First Concert',3,'2023-07-22 08:31:00','2023-07-22 11:54:00',28,203,9,2,99),(111,8,'Safe Concert',1,'2024-07-01 09:09:00','2024-07-01 12:39:00',18,210,5,7,87),(112,8,'Rest Concert',1,'2024-07-01 13:17:00','2024-07-01 16:36:00',23,199,5,6,98),(113,8,'Common Concert',1,'2024-07-01 16:58:00','2024-07-01 20:19:00',10,201,7,6,84),(114,8,'Wife Concert',1,'2024-07-01 20:52:00','2024-07-01 00:20:00',1,208,9,5,81),(115,8,'Form Concert',1,'2024-07-01 00:58:00','2024-07-01 04:35:00',26,217,8,9,85),(116,8,'Read Concert',1,'2024-07-01 04:55:00','2024-07-01 08:32:00',15,217,10,9,99),(117,8,'Room Concert',1,'2024-07-01 09:03:00','2024-07-01 12:15:00',19,192,5,10,94),(118,8,'Improve Concert',2,'2024-07-02 09:15:00','2024-07-02 12:31:00',11,196,9,7,94),(119,8,'Time Concert',2,'2024-07-02 14:09:00','2024-07-02 17:36:00',3,207,7,7,81),(120,8,'Discuss Concert',2,'2024-07-02 19:15:00','2024-07-02 22:50:00',25,215,6,5,98),(121,8,'Expect Concert',3,'2024-07-03 09:36:00','2024-07-03 13:11:00',22,215,6,8,81),(122,8,'Opportunity Concert',3,'2024-07-03 14:13:00','2024-07-03 17:27:00',2,194,6,5,87),(123,8,'According Concert',3,'2024-07-03 17:51:00','2024-07-03 21:06:00',27,195,6,9,84),(124,8,'Protect Concert',3,'2024-07-03 22:46:00','2024-07-03 01:47:00',9,181,10,6,82),(125,8,'Police Concert',3,'2024-07-03 03:06:00','2024-07-03 06:13:00',11,187,6,5,87),(126,8,'School Concert',3,'2024-07-03 07:41:00','2024-07-03 11:11:00',5,210,9,5,82),(127,8,'Sing Concert',3,'2024-07-03 12:38:00','2024-07-03 16:18:00',20,220,5,2,93),(128,8,'Section Concert',3,'2024-07-03 16:45:00','2024-07-03 20:14:00',3,209,10,10,94),(129,8,'Away Concert',3,'2024-07-03 20:41:00','2024-07-03 00:05:00',16,204,7,8,81),(130,8,'Face Concert',3,'2024-07-03 00:25:00','2024-07-03 03:59:00',2,214,10,5,91),(131,8,'Water Concert',3,'2024-07-03 04:28:00','2024-07-03 07:52:00',10,204,5,6,98),(132,9,'Whose Concert',1,'2025-08-07 09:26:00','2025-08-07 12:55:00',19,209,7,1,92),(133,9,'Pattern Concert',1,'2025-08-07 14:30:00','2025-08-07 17:44:00',8,194,5,2,95),(134,9,'Employee Concert',1,'2025-08-07 19:20:00','2025-08-07 22:30:00',16,190,10,3,84),(135,9,'It Concert',2,'2025-08-08 09:02:00','2025-08-08 12:22:00',9,200,10,1,81),(136,9,'Tough Concert',2,'2025-08-08 12:50:00','2025-08-08 16:22:00',16,212,5,1,82),(137,9,'Yourself Concert',2,'2025-08-08 17:55:00','2025-08-08 21:28:00',16,213,9,9,82),(138,9,'Theory Concert',2,'2025-08-08 23:07:00','2025-08-08 02:25:00',8,198,6,5,83),(139,9,'International Concert',2,'2025-08-08 02:45:00','2025-08-08 06:22:00',6,217,7,5,84),(140,9,'Enough Concert',2,'2025-08-08 07:29:00','2025-08-08 10:49:00',22,200,6,8,82),(141,9,'Scene Concert',2,'2025-08-08 12:08:00','2025-08-08 15:16:00',12,188,7,1,90),(142,10,'Front Concert',1,'2026-08-16 08:43:00','2026-08-16 11:55:00',3,192,10,1,89),(143,10,'Again Concert',1,'2026-08-16 12:35:00','2026-08-16 15:49:00',23,194,5,10,84),(144,10,'First Concert',1,'2026-08-16 17:16:00','2026-08-16 20:21:00',10,185,10,1,83),(145,10,'Choose Concert',2,'2026-08-17 09:18:00','2026-08-17 12:45:00',25,207,8,10,99),(146,10,'Apply Concert',3,'2026-08-18 08:50:00','2026-08-18 11:58:00',28,188,10,7,93),(147,10,'Total Concert',3,'2026-08-18 12:50:00','2026-08-18 15:57:00',11,187,10,7,94),(148,10,'Help Concert',3,'2026-08-18 16:44:00','2026-08-18 19:47:00',14,183,7,8,92),(149,10,'Want Concert',3,'2026-08-18 20:22:00','2026-08-18 23:39:00',25,197,7,6,96),(150,10,'Value Concert',3,'2026-08-18 01:10:00','2026-08-18 04:14:00',5,184,9,6,94),(151,10,'Along Concert',3,'2026-08-18 04:53:00','2026-08-18 08:10:00',19,197,7,2,98),(152,10,'Chair Concert',3,'2026-08-18 09:43:00','2026-08-18 13:18:00',27,215,7,2,100);
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
INSERT INTO `festival` VALUES (1,'2017-09-27',4),(2,'2018-08-10',3),(3,'2019-07-14',5),(4,'2020-09-06',2),(5,'2021-07-26',2),(6,'2022-09-17',5),(7,'2023-07-20',3),(8,'2024-07-01',3),(9,'2025-08-07',2),(10,'2026-08-16',3);
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
INSERT INTO `festival_location` VALUES (1,1,'7635 Johnson Inlet Apt. 126','Port Christopher','Holy See (Vatican City State)','Europe','3.0624295,15.622697'),(2,2,'87477 Arroyo Viaduct','South Stephenborough','Niger','North America','26.062671,99.629770'),(3,3,'6406 Macias Park Suite 881','South Royfurt','Nauru','South America','-76.264052,-88.943909'),(4,4,'887 Vincent Cliff Apt. 137','Ortegaland','France','Europe','-10.668742,-171.338742'),(5,5,'900 Jessica Meadow Suite 978','Grantmouth','Afghanistan','North America','63.4951315,59.193049'),(6,6,'4475 Meyer Trail Apt. 942','West Reginamouth','Guinea','South America','84.2461595,-122.085940'),(7,7,'570 Carlson Burg Apt. 507','East Brianborough','Grenada','Europe','11.155164,-159.276389'),(8,8,'2633 Cross Dam','South Robertfurt','Hungary','North America','68.968530,6.756062'),(9,9,'45798 Cody Estates','East Margaret','Iceland','South America','-66.589058,-176.722783'),(10,10,'2508 Angela Camp','Maryberg','Armenia','Europe','-28.5845545,81.640973');
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Electronic','House',1,NULL),(2,'Rock','Hard Rock',1,NULL),(3,'Jazz','Smooth Jazz',2,NULL),(4,'Hip-Hop','Trap',2,NULL),(5,'Electronic','House',2,NULL),(6,'Electronic','House',3,NULL),(7,'Electronic','House',4,NULL),(8,'Jazz','Smooth Jazz',4,NULL),(9,'Hip-Hop','Trap',4,NULL),(10,'Classical','Baroque',5,NULL),(11,'Hip-Hop','Trap',5,NULL),(12,'Electronic','House',6,NULL),(13,'Jazz','Smooth Jazz',7,NULL),(14,'Hip-Hop','Trap',7,NULL),(15,'Rock','Hard Rock',8,NULL),(16,'Electronic','House',9,NULL),(17,'Hip-Hop','Trap',10,NULL),(18,'Hip-Hop','Trap',11,NULL),(19,'Rock','Hard Rock',11,NULL),(20,'Hip-Hop','Trap',12,NULL),(21,'Pop',NULL,12,NULL),(22,'Pop',NULL,13,NULL),(23,'Classical','Baroque',13,NULL),(24,'Hip-Hop','Trap',13,NULL),(25,'Hip-Hop','Trap',14,NULL),(26,'Rock','Hard Rock',14,NULL),(27,'Electronic','House',14,NULL),(28,'Classical','Baroque',15,NULL),(29,'Pop',NULL,16,NULL),(30,'Hip-Hop','Trap',16,NULL),(31,'Jazz','Smooth Jazz',16,NULL),(32,'Hip-Hop','Trap',17,NULL),(33,'Jazz','Smooth Jazz',17,NULL),(34,'Rock','Hard Rock',17,NULL),(35,'Classical','Baroque',18,NULL),(36,'Electronic','House',19,NULL),(37,'Pop',NULL,19,NULL),(38,'Hip-Hop','Trap',19,NULL),(39,'Electronic','House',20,NULL),(40,'Rock','Hard Rock',21,NULL),(41,'Hip-Hop','Trap',21,NULL),(42,'Electronic','House',22,NULL),(43,'Pop',NULL,23,NULL),(44,'Jazz','Smooth Jazz',23,NULL),(45,'Electronic','House',23,NULL),(46,'Electronic','House',24,NULL),(47,'Rock','Hard Rock',24,NULL),(48,'Classical','Baroque',24,NULL),(49,'Pop',NULL,25,NULL),(50,'Rock','Hard Rock',25,NULL),(51,'Classical','Baroque',25,NULL),(52,'Pop',NULL,26,NULL),(53,'Classical','Baroque',26,NULL),(54,'Pop',NULL,27,NULL),(55,'Hip-Hop','Trap',27,NULL),(56,'Hip-Hop','Trap',28,NULL),(57,'Jazz','Smooth Jazz',28,NULL),(58,'Pop',NULL,29,NULL),(59,'Classical','Baroque',29,NULL),(60,'Jazz','Smooth Jazz',29,NULL),(61,'Hip-Hop','Trap',30,NULL),(62,'Pop',NULL,31,NULL),(63,'Classical','Baroque',31,NULL),(64,'Jazz','Smooth Jazz',32,NULL),(65,'Pop',NULL,32,NULL),(66,'Rock','Hard Rock',32,NULL),(67,'Pop',NULL,33,NULL),(68,'Hip-Hop','Trap',33,NULL),(69,'Jazz','Smooth Jazz',33,NULL),(70,'Hip-Hop','Trap',34,NULL),(71,'Rock','Hard Rock',34,NULL),(72,'Pop',NULL,35,NULL),(73,'Jazz','Smooth Jazz',35,NULL),(74,'Hip-Hop','Trap',36,NULL),(75,'Electronic','House',37,NULL),(76,'Rock','Hard Rock',38,NULL),(77,'Hip-Hop','Trap',38,NULL),(78,'Electronic','House',39,NULL),(79,'Jazz','Smooth Jazz',39,NULL),(80,'Electronic','House',40,NULL),(81,'Electronic','House',41,NULL),(82,'Hip-Hop','Trap',41,NULL),(83,'Pop',NULL,42,NULL),(84,'Classical','Baroque',42,NULL),(85,'Jazz','Smooth Jazz',42,NULL),(86,'Rock','Hard Rock',43,NULL),(87,'Electronic','House',44,NULL),(88,'Classical','Baroque',45,NULL),(89,'Rock','Hard Rock',45,NULL),(90,'Electronic','House',45,NULL),(91,'Hip-Hop','Trap',46,NULL),(92,'Pop',NULL,46,NULL),(93,'Classical','Baroque',46,NULL),(94,'Rock','Hard Rock',47,NULL),(95,'Classical','Baroque',47,NULL),(96,'Electronic','House',47,NULL),(97,'Jazz','Smooth Jazz',48,NULL),(98,'Jazz','Smooth Jazz',49,NULL),(99,'Classical','Baroque',49,NULL),(100,'Hip-Hop','Trap',49,NULL),(101,'Pop',NULL,50,NULL),(102,'Classical','Baroque',50,NULL),(103,'Hip-Hop','Trap',50,NULL),(104,'Electronic','House',NULL,1),(105,'Rock','Hard Rock',NULL,2),(106,'Rock','Hard Rock',NULL,3),(107,'Classical','Baroque',NULL,4),(108,'Pop',NULL,NULL,4),(109,'Pop',NULL,NULL,5),(110,'Hip-Hop','Trap',NULL,5),(111,'Rock','Hard Rock',NULL,6),(112,'Classical','Baroque',NULL,7),(113,'Electronic','House',NULL,7),(114,'Rock','Hard Rock',NULL,8),(115,'Jazz','Smooth Jazz',NULL,8),(116,'Classical','Baroque',NULL,8),(117,'Hip-Hop','Trap',NULL,9),(118,'Jazz','Smooth Jazz',NULL,9),(119,'Pop',NULL,NULL,10),(120,'Rock','Hard Rock',NULL,10),(121,'Electronic','House',NULL,10),(122,'Classical','Baroque',NULL,11),(123,'Jazz','Smooth Jazz',NULL,11),(124,'Hip-Hop','Trap',NULL,11),(125,'Rock','Hard Rock',NULL,12),(126,'Classical','Baroque',NULL,13),(127,'Electronic','House',NULL,13),(128,'Hip-Hop','Trap',NULL,13),(129,'Jazz','Smooth Jazz',NULL,14),(130,'Classical','Baroque',NULL,15);
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
INSERT INTO `group` VALUES (1,'Leah Torres Band','1988-02-03','1996-02-01','http://www.lin.biz/','https://simmons.com/','Amanda Valdez, Adrienne Young, Eric James, ',0),(2,'Sarah Reed Band','2000-07-05','2013-07-02','http://www.clarke.com/','https://www.mills-walsh.com/','Christine Tran, Richard Houston, Eric James, Suzanne Santos, ',0),(3,'Mark Ward Band','1998-01-29','2004-01-28','https://www.williams-blevins.com/','http://www.mills.info/','Melanie Lamb, Ashley Garner, ',0),(4,'Kristin Richard Band','2002-09-13','2012-09-10','https://serrano-blair.com/','http://www.martin-smith.com/','Joshua Rodriguez, Ashley Garner, Diana Young, Richard Houston, ',0),(5,'April Sampson Band','1978-08-11','1983-08-10','http://moore-ramirez.com/','https://mills-nichols.com/','Jennifer Le, Crystal Braun, Alyssa Lopez, Adrienne Perez, ',0),(6,'Randy Weber Band','1983-10-12','1997-10-08','https://www.white.net/','https://www.pierce-cox.com/','Richard Houston, Anna Clark, Richard Long, Diana Young, ',0),(7,'Elizabeth Holt Band','1976-02-23','1989-02-19','http://www.barton.com/','https://church.com/','Melanie Lamb, James Callahan, Jennifer Lewis, ',0),(8,'Valerie Cross Band','1997-11-28','2004-11-26','https://mclaughlin.com/','http://www.gentry.com/','Jonathan Carter, Jamie Mitchell, ',0),(9,'Jennifer Ford Band','1998-07-25','2015-07-21','https://www.cook.net/','https://waters-torres.com/','Ronald Mendoza, Christopher Wilson, Brian Moses, Cheryl Brown, ',0),(10,'Debra Ibarra Band','1991-02-11','2006-02-07','http://gonzalez-mendoza.biz/','https://www.anderson.com/','Sharon Bradshaw, Melanie Lamb, Jay Michael, Ronald Mendoza, ',0),(11,'Amy Hicks Band','1998-04-01','2010-03-29','http://www.johnson-watts.com/','https://www.sanchez.org/','Adrienne Perez, Dawn Hickman, ',0),(12,'Thomas Wilson Band','2000-01-17','2010-01-14','https://kline.com/','http://www.harper.com/','Diana Young, Richard Houston, Adrienne Young, Joanne Osborne, Michael Marshall, ',0),(13,'Denise Vance Band','1996-10-20','2001-10-19','http://evans.org/','http://davidson.com/','Marie Parker, Christopher Hunter, Cheryl Brown, Sharon Bradshaw, ',0),(14,'John Welch Band','1984-02-25','2004-02-20','https://www.doyle.biz/','http://www.clark.net/','Philip Owens, Richard Long, Joanne Osborne, Jay Michael, Brandon Brown, ',0),(15,'Christine Thompson Band','1974-08-05','1981-08-03','http://hawkins.com/','https://miller.biz/','Jennifer Lewis, Dawn Hickman, Michael Marshall, Barbara Hughes, Andrew Ross, ',0);
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
INSERT INTO `group_members` VALUES (1,43),(1,46),(1,48),(2,13),(2,30),(2,45),(2,46),(3,9),(3,15),(4,1),(4,15),(4,37),(4,45),(5,23),(5,31),(5,34),(5,42),(6,28),(6,29),(6,37),(6,45),(7,9),(7,17),(7,39),(8,20),(8,24),(9,7),(9,8),(9,16),(9,33),(10,7),(10,9),(10,41),(10,47),(11,23),(11,25),(12,3),(12,37),(12,38),(12,45),(12,48),(13,22),(13,33),(13,44),(13,47),(14,3),(14,12),(14,21),(14,29),(14,41),(15,14),(15,17),(15,25),(15,35),(15,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performances`
--

LOCK TABLES `performances` WRITE;
/*!40000 ALTER TABLE `performances` DISABLE KEYS */;
INSERT INTO `performances` VALUES (1,1,'finale','2017-09-27 08:35:00','2017-09-27 10:30:00',115,11,'Gonzalez-Lynn',21,NULL),(2,2,'warm up','2017-09-27 12:18:00','2017-09-27 14:02:00',104,19,'Santos-Chen',NULL,12),(3,3,'special_guest','2017-09-27 16:41:00','2017-09-27 17:20:00',39,8,'Wright-Howe',NULL,12),(4,5,'warm up','2017-09-27 00:45:00','2017-09-27 02:00:00',75,19,'Santos-Chen',4,NULL),(5,5,'finale','2017-09-27 02:09:00','2017-09-27 02:39:00',30,19,'Santos-Chen',NULL,14),(6,5,'headline','2017-09-27 02:52:00','2017-09-27 03:29:00',37,19,'Santos-Chen',NULL,4),(7,6,'finale','2017-09-28 09:26:00','2017-09-28 10:56:00',90,5,'Roberts-Ballard',NULL,12),(8,7,'warm up','2017-09-28 14:09:00','2017-09-28 15:55:00',106,1,'Campbell, Harris and Hill',NULL,12),(9,7,'headline','2017-09-28 16:04:00','2017-09-28 16:41:00',37,1,'Campbell, Harris and Hill',39,NULL),(10,8,'special_guest','2017-09-28 18:23:00','2017-09-28 18:53:00',30,21,'Bautista, Ruiz and Harrison',NULL,11),(11,8,'finale','2017-09-28 18:58:00','2017-09-28 20:51:00',113,21,'Bautista, Ruiz and Harrison',NULL,1),(12,10,'finale','2017-09-28 02:47:00','2017-09-28 04:01:00',74,7,'Reese Inc',NULL,7),(13,11,'warm up','2017-09-28 07:59:00','2017-09-28 08:49:00',50,6,'Orr-Clarke',2,NULL),(14,12,'finale','2017-09-28 12:10:00','2017-09-28 12:42:00',32,18,'Gonzales PLC',17,NULL),(15,12,'warm up','2017-09-28 12:53:00','2017-09-28 14:27:00',94,18,'Gonzales PLC',NULL,3),(16,12,'headline','2017-09-28 14:40:00','2017-09-28 15:14:00',34,18,'Gonzales PLC',NULL,11),(17,13,'finale','2017-09-29 09:08:00','2017-09-29 10:08:00',60,3,'Bonilla, Thornton and Jones',17,NULL),(18,13,'finale','2017-09-29 10:14:00','2017-09-29 12:02:00',108,3,'Bonilla, Thornton and Jones',NULL,3),(19,14,'headline','2017-09-29 13:15:00','2017-09-29 15:03:00',108,30,'Taylor-Barr',NULL,12),(20,14,'finale','2017-09-29 15:14:00','2017-09-29 15:44:00',30,30,'Taylor-Barr',NULL,3),(21,15,'special_guest','2017-09-29 17:41:00','2017-09-29 19:23:00',102,4,'Reese Ltd',NULL,8),(22,17,'special_guest','2017-09-29 02:03:00','2017-09-29 02:43:00',40,27,'Foster, Anderson and Horton',NULL,12),(23,18,'headline','2017-09-29 06:44:00','2017-09-29 08:24:00',100,3,'Bonilla, Thornton and Jones',NULL,11),(24,18,'headline','2017-09-29 08:29:00','2017-09-29 09:29:00',60,3,'Bonilla, Thornton and Jones',NULL,7),(25,19,'finale','2017-09-29 11:05:00','2017-09-29 11:57:00',52,6,'Orr-Clarke',21,NULL),(26,19,'special_guest','2017-09-29 12:12:00','2017-09-29 13:50:00',98,6,'Orr-Clarke',NULL,15),(27,20,'warm up','2017-09-29 15:31:00','2017-09-29 16:54:00',83,30,'Taylor-Barr',NULL,7),(28,21,'warm up','2017-09-30 08:50:00','2017-09-30 09:30:00',40,11,'Gonzalez-Lynn',NULL,9),(29,22,'headline','2017-09-30 12:52:00','2017-09-30 14:52:00',120,25,'Lewis, Johnson and Williams',NULL,6),(30,23,'special_guest','2018-08-10 09:35:00','2018-08-10 10:28:00',53,6,'Orr-Clarke',NULL,11),(31,24,'finale','2018-08-10 14:37:00','2018-08-10 15:25:00',48,16,'Hopkins-Wallace',NULL,4),(32,25,'special_guest','2018-08-10 19:15:00','2018-08-10 20:05:00',50,8,'Wright-Howe',NULL,5),(33,25,'headline','2018-08-10 20:13:00','2018-08-10 21:03:00',50,8,'Wright-Howe',NULL,1),(34,25,'warm up','2018-08-10 21:11:00','2018-08-10 22:06:00',55,8,'Wright-Howe',NULL,11),(35,26,'warm up','2018-08-11 09:15:00','2018-08-11 09:48:00',33,25,'Lewis, Johnson and Williams',NULL,12),(36,26,'headline','2018-08-11 10:01:00','2018-08-11 11:39:00',98,25,'Lewis, Johnson and Williams',NULL,9),(37,27,'special_guest','2018-08-11 13:51:00','2018-08-11 15:12:00',81,7,'Reese Inc',NULL,15),(38,27,'headline','2018-08-11 15:24:00','2018-08-11 16:49:00',85,7,'Reese Inc',NULL,14),(39,28,'headline','2018-08-11 17:48:00','2018-08-11 18:52:00',64,9,'Rasmussen-Holmes',NULL,6),(40,28,'finale','2018-08-11 19:01:00','2018-08-11 20:24:00',83,9,'Rasmussen-Holmes',NULL,10),(41,30,'warm up','2018-08-12 09:04:00','2018-08-12 10:25:00',81,19,'Santos-Chen',NULL,1),(42,31,'finale','2018-08-12 13:38:00','2018-08-12 14:36:00',58,11,'Gonzalez-Lynn',NULL,5),(43,32,'finale','2018-08-12 17:27:00','2018-08-12 18:09:00',42,11,'Gonzalez-Lynn',32,NULL),(44,32,'warm up','2018-08-12 18:23:00','2018-08-12 19:56:00',93,11,'Gonzalez-Lynn',NULL,9),(45,34,'warm up','2019-07-14 08:54:00','2019-07-14 10:38:00',104,3,'Bonilla, Thornton and Jones',NULL,9),(46,34,'warm up','2019-07-14 10:45:00','2019-07-14 12:17:00',92,3,'Bonilla, Thornton and Jones',41,NULL),(47,35,'headline','2019-07-14 13:10:00','2019-07-14 14:26:00',76,13,'Chavez, Stevens and Henderson',33,NULL),(48,35,'warm up','2019-07-14 14:33:00','2019-07-14 16:20:00',107,13,'Chavez, Stevens and Henderson',NULL,3),(49,36,'warm up','2019-07-14 17:51:00','2019-07-14 19:31:00',100,29,'Levine Ltd',NULL,3),(50,38,'warm up','2019-07-14 03:10:00','2019-07-14 04:27:00',77,22,'Dyer-Wallace',NULL,2),(51,38,'headline','2019-07-14 04:37:00','2019-07-14 06:32:00',115,22,'Dyer-Wallace',35,NULL),(52,39,'special_guest','2019-07-14 07:56:00','2019-07-14 09:44:00',108,30,'Taylor-Barr',NULL,11),(53,40,'special_guest','2019-07-14 12:12:00','2019-07-14 13:13:00',61,13,'Chavez, Stevens and Henderson',NULL,3),(54,41,'finale','2019-07-14 17:30:00','2019-07-14 19:17:00',107,30,'Taylor-Barr',42,NULL),(55,42,'special_guest','2019-07-15 08:50:00','2019-07-15 10:26:00',96,26,'Brandt, Mitchell and Johnson',9,NULL),(56,42,'finale','2019-07-15 10:34:00','2019-07-15 11:51:00',77,26,'Brandt, Mitchell and Johnson',NULL,1),(57,43,'headline','2019-07-15 13:00:00','2019-07-15 14:08:00',68,24,'Tyler, Hayes and Gonzales',NULL,6),(58,43,'warm up','2019-07-15 14:23:00','2019-07-15 15:56:00',93,24,'Tyler, Hayes and Gonzales',NULL,15),(59,44,'special_guest','2019-07-15 17:50:00','2019-07-15 19:15:00',85,5,'Roberts-Ballard',41,NULL),(60,44,'warm up','2019-07-15 19:25:00','2019-07-15 19:58:00',33,5,'Roberts-Ballard',NULL,4),(61,46,'finale','2019-07-15 01:43:00','2019-07-15 02:14:00',31,14,'Stewart, Gonzalez and Carlson',NULL,5),(62,46,'finale','2019-07-15 02:21:00','2019-07-15 03:47:00',86,14,'Stewart, Gonzalez and Carlson',NULL,2),(63,46,'headline','2019-07-15 03:57:00','2019-07-15 04:34:00',37,14,'Stewart, Gonzalez and Carlson',33,NULL),(64,47,'warm up','2019-07-16 08:50:00','2019-07-16 09:40:00',50,15,'Watts, Jones and Brown',NULL,8),(65,47,'headline','2019-07-16 09:48:00','2019-07-16 10:18:00',30,15,'Watts, Jones and Brown',NULL,10),(66,47,'headline','2019-07-16 10:30:00','2019-07-16 11:34:00',64,15,'Watts, Jones and Brown',NULL,1),(67,48,'headline','2019-07-16 12:41:00','2019-07-16 14:05:00',84,21,'Bautista, Ruiz and Harrison',NULL,15),(68,49,'special_guest','2019-07-16 17:20:00','2019-07-16 18:13:00',53,22,'Dyer-Wallace',NULL,1),(69,49,'warm up','2019-07-16 18:26:00','2019-07-16 19:26:00',60,22,'Dyer-Wallace',14,NULL),(70,51,'headline','2019-07-16 03:15:00','2019-07-16 05:04:00',109,7,'Reese Inc',14,NULL),(71,52,'warm up','2019-07-17 09:13:00','2019-07-17 10:37:00',84,20,'Murray, Wilson and Porter',3,NULL),(72,52,'headline','2019-07-17 10:50:00','2019-07-17 12:08:00',78,20,'Murray, Wilson and Porter',NULL,15),(73,53,'warm up','2019-07-17 13:19:00','2019-07-17 15:04:00',105,6,'Orr-Clarke',NULL,7),(74,54,'warm up','2019-07-17 17:57:00','2019-07-17 19:14:00',77,16,'Hopkins-Wallace',NULL,8),(75,54,'special_guest','2019-07-17 19:20:00','2019-07-17 20:46:00',86,16,'Hopkins-Wallace',9,NULL),(76,56,'special_guest','2019-07-17 03:10:00','2019-07-17 04:51:00',101,8,'Wright-Howe',NULL,9),(77,56,'finale','2019-07-17 05:01:00','2019-07-17 05:34:00',33,8,'Wright-Howe',NULL,10),(78,57,'headline','2019-07-18 08:40:00','2019-07-18 09:38:00',58,9,'Rasmussen-Holmes',NULL,1),(79,57,'headline','2019-07-18 09:52:00','2019-07-18 10:42:00',50,9,'Rasmussen-Holmes',31,NULL),(80,57,'finale','2019-07-18 10:53:00','2019-07-18 11:52:00',59,9,'Rasmussen-Holmes',NULL,3),(81,58,'headline','2019-07-18 13:17:00','2019-07-18 14:04:00',47,26,'Brandt, Mitchell and Johnson',NULL,15),(82,59,'warm up','2019-07-18 16:55:00','2019-07-18 17:59:00',64,29,'Levine Ltd',NULL,4),(83,59,'headline','2019-07-18 18:08:00','2019-07-18 19:40:00',92,29,'Levine Ltd',6,NULL),(84,60,'special_guest','2019-07-18 20:54:00','2019-07-18 22:24:00',90,7,'Reese Inc',NULL,11),(85,61,'finale','2019-07-18 01:23:00','2019-07-18 03:08:00',105,19,'Santos-Chen',NULL,9),(86,61,'finale','2019-07-18 03:20:00','2019-07-18 03:52:00',32,19,'Santos-Chen',NULL,2),(87,62,'warm up','2019-07-18 05:01:00','2019-07-18 06:22:00',81,20,'Murray, Wilson and Porter',5,NULL),(88,63,'headline','2019-07-18 09:04:00','2019-07-18 09:36:00',32,26,'Brandt, Mitchell and Johnson',4,NULL),(89,63,'headline','2019-07-18 09:51:00','2019-07-18 11:22:00',91,26,'Brandt, Mitchell and Johnson',NULL,1),(90,64,'headline','2019-07-18 13:50:00','2019-07-18 15:11:00',81,3,'Bonilla, Thornton and Jones',48,NULL),(91,64,'warm up','2019-07-18 15:18:00','2019-07-18 15:48:00',30,3,'Bonilla, Thornton and Jones',NULL,4),(92,65,'special_guest','2020-09-06 08:43:00','2020-09-06 10:24:00',101,28,'King-Burke',NULL,10),(93,66,'finale','2020-09-06 13:37:00','2020-09-06 15:35:00',118,18,'Gonzales PLC',NULL,13),(94,66,'special_guest','2020-09-06 15:44:00','2020-09-06 16:39:00',55,18,'Gonzales PLC',48,NULL),(95,67,'warm up','2020-09-06 18:47:00','2020-09-06 19:45:00',58,11,'Gonzalez-Lynn',NULL,3),(96,67,'headline','2020-09-06 19:55:00','2020-09-06 21:14:00',79,11,'Gonzalez-Lynn',NULL,7),(97,69,'finale','2020-09-06 02:55:00','2020-09-06 04:38:00',103,18,'Gonzales PLC',26,NULL),(98,70,'warm up','2020-09-06 07:23:00','2020-09-06 08:17:00',54,29,'Levine Ltd',NULL,13),(99,70,'finale','2020-09-06 08:28:00','2020-09-06 10:12:00',104,29,'Levine Ltd',NULL,5),(100,71,'special_guest','2020-09-06 10:57:00','2020-09-06 11:52:00',55,23,'Meyers and Sons',NULL,10),(101,72,'special_guest','2020-09-07 08:29:00','2020-09-07 10:20:00',111,27,'Foster, Anderson and Horton',NULL,14),(102,73,'warm up','2020-09-07 12:26:00','2020-09-07 13:57:00',91,24,'Tyler, Hayes and Gonzales',38,NULL),(103,73,'warm up','2020-09-07 14:02:00','2020-09-07 15:13:00',71,24,'Tyler, Hayes and Gonzales',NULL,12),(104,74,'headline','2020-09-07 16:12:00','2020-09-07 16:50:00',38,15,'Watts, Jones and Brown',NULL,5),(105,74,'special_guest','2020-09-07 17:01:00','2020-09-07 18:45:00',104,15,'Watts, Jones and Brown',NULL,14),(106,75,'special_guest','2020-09-07 20:01:00','2020-09-07 21:25:00',84,20,'Murray, Wilson and Porter',24,NULL),(107,76,'special_guest','2021-07-26 09:34:00','2021-07-26 11:19:00',105,11,'Gonzalez-Lynn',NULL,9),(108,77,'warm up','2021-07-26 13:34:00','2021-07-26 14:37:00',63,30,'Taylor-Barr',NULL,1),(109,77,'headline','2021-07-26 14:49:00','2021-07-26 15:36:00',47,30,'Taylor-Barr',24,NULL),(110,77,'warm up','2021-07-26 15:47:00','2021-07-26 16:37:00',50,30,'Taylor-Barr',NULL,6),(111,78,'finale','2021-07-26 18:13:00','2021-07-26 19:22:00',69,1,'Campbell, Harris and Hill',NULL,2),(112,78,'special_guest','2021-07-26 19:35:00','2021-07-26 21:09:00',94,1,'Campbell, Harris and Hill',NULL,12),(113,80,'special_guest','2021-07-26 02:23:00','2021-07-26 03:02:00',39,13,'Chavez, Stevens and Henderson',NULL,4),(114,81,'warm up','2021-07-26 05:52:00','2021-07-26 06:55:00',63,28,'King-Burke',32,NULL),(115,81,'special_guest','2021-07-26 07:04:00','2021-07-26 07:40:00',36,28,'King-Burke',45,NULL),(116,82,'headline','2021-07-26 11:00:00','2021-07-26 12:18:00',78,24,'Tyler, Hayes and Gonzales',NULL,8),(117,82,'finale','2021-07-26 12:31:00','2021-07-26 13:27:00',56,24,'Tyler, Hayes and Gonzales',1,NULL),(118,83,'headline','2021-07-27 09:21:00','2021-07-27 10:09:00',48,5,'Roberts-Ballard',NULL,8),(119,83,'headline','2021-07-27 10:20:00','2021-07-27 11:16:00',56,5,'Roberts-Ballard',NULL,14),(120,83,'headline','2021-07-27 11:26:00','2021-07-27 12:39:00',73,5,'Roberts-Ballard',10,NULL),(121,84,'finale','2021-07-27 13:44:00','2021-07-27 14:31:00',47,21,'Bautista, Ruiz and Harrison',NULL,14),(122,85,'finale','2022-09-17 08:35:00','2022-09-17 09:28:00',53,14,'Stewart, Gonzalez and Carlson',NULL,8),(123,85,'finale','2022-09-17 09:39:00','2022-09-17 10:35:00',56,14,'Stewart, Gonzalez and Carlson',NULL,2),(124,86,'special_guest','2022-09-17 12:28:00','2022-09-17 13:21:00',53,6,'Orr-Clarke',NULL,12),(125,87,'special_guest','2022-09-17 16:22:00','2022-09-17 17:42:00',80,21,'Bautista, Ruiz and Harrison',12,NULL),(126,88,'special_guest','2022-09-18 09:37:00','2022-09-18 10:20:00',43,10,'Bullock Inc',9,NULL),(127,89,'special_guest','2022-09-18 14:11:00','2022-09-18 15:51:00',100,28,'King-Burke',NULL,4),(128,90,'warm up','2022-09-18 17:51:00','2022-09-18 19:05:00',74,11,'Gonzalez-Lynn',NULL,4),(129,91,'special_guest','2022-09-19 08:35:00','2022-09-19 10:19:00',104,22,'Dyer-Wallace',NULL,2),(130,92,'special_guest','2022-09-20 09:11:00','2022-09-20 10:58:00',107,26,'Brandt, Mitchell and Johnson',NULL,10),(131,92,'headline','2022-09-20 11:10:00','2022-09-20 12:25:00',75,26,'Brandt, Mitchell and Johnson',25,NULL),(132,93,'warm up','2022-09-20 12:49:00','2022-09-20 13:38:00',49,23,'Meyers and Sons',NULL,4),(133,94,'special_guest','2022-09-20 16:38:00','2022-09-20 17:31:00',53,8,'Wright-Howe',26,NULL),(134,95,'special_guest','2022-09-21 08:57:00','2022-09-21 09:42:00',45,28,'King-Burke',NULL,11),(135,95,'warm up','2022-09-21 09:51:00','2022-09-21 10:51:00',60,28,'King-Burke',NULL,2),(136,96,'warm up','2022-09-21 12:50:00','2022-09-21 14:18:00',88,9,'Rasmussen-Holmes',7,NULL),(137,97,'headline','2022-09-21 17:24:00','2022-09-21 18:04:00',40,7,'Reese Inc',NULL,10),(138,98,'finale','2023-07-20 09:11:00','2023-07-20 10:16:00',65,3,'Bonilla, Thornton and Jones',NULL,15),(139,99,'finale','2023-07-20 13:46:00','2023-07-20 14:32:00',46,9,'Rasmussen-Holmes',NULL,1),(140,100,'special_guest','2023-07-20 18:07:00','2023-07-20 19:51:00',104,2,'Jenkins, Watson and Anderson',NULL,13),(141,102,'special_guest','2023-07-20 02:35:00','2023-07-20 04:34:00',119,4,'Reese Ltd',NULL,4),(142,103,'headline','2023-07-20 06:49:00','2023-07-20 08:38:00',109,27,'Foster, Anderson and Horton',NULL,8),(143,104,'special_guest','2023-07-20 11:13:00','2023-07-20 12:49:00',96,2,'Jenkins, Watson and Anderson',NULL,14),(144,105,'finale','2023-07-20 15:03:00','2023-07-20 15:45:00',42,10,'Bullock Inc',NULL,10),(145,106,'warm up','2023-07-20 19:19:00','2023-07-20 20:01:00',42,5,'Roberts-Ballard',NULL,4),(146,108,'special_guest','2023-07-20 03:34:00','2023-07-20 04:48:00',74,2,'Jenkins, Watson and Anderson',NULL,7),(147,108,'warm up','2023-07-20 04:56:00','2023-07-20 06:43:00',107,2,'Jenkins, Watson and Anderson',NULL,2),(148,109,'warm up','2023-07-21 09:10:00','2023-07-21 11:01:00',111,19,'Santos-Chen',NULL,3),(149,110,'special_guest','2023-07-22 08:31:00','2023-07-22 09:27:00',56,28,'King-Burke',NULL,14),(150,111,'special_guest','2024-07-01 09:09:00','2024-07-01 10:11:00',62,18,'Gonzales PLC',42,NULL),(151,112,'warm up','2024-07-01 13:17:00','2024-07-01 13:57:00',40,23,'Meyers and Sons',45,NULL),(152,112,'headline','2024-07-01 14:06:00','2024-07-01 15:45:00',99,23,'Meyers and Sons',NULL,7),(153,112,'warm up','2024-07-01 15:56:00','2024-07-01 16:35:00',39,23,'Meyers and Sons',NULL,9),(154,113,'special_guest','2024-07-01 16:58:00','2024-07-01 18:05:00',67,10,'Bullock Inc',NULL,3),(155,113,'warm up','2024-07-01 18:17:00','2024-07-01 18:52:00',35,10,'Bullock Inc',NULL,11),(156,113,'warm up','2024-07-01 19:05:00','2024-07-01 20:01:00',56,10,'Bullock Inc',NULL,3),(157,115,'special_guest','2024-07-01 00:58:00','2024-07-01 01:51:00',53,26,'Brandt, Mitchell and Johnson',40,NULL),(158,115,'special_guest','2024-07-01 01:58:00','2024-07-01 03:02:00',64,26,'Brandt, Mitchell and Johnson',NULL,1),(159,116,'headline','2024-07-01 04:55:00','2024-07-01 05:54:00',59,15,'Watts, Jones and Brown',NULL,12),(160,116,'warm up','2024-07-01 06:00:00','2024-07-01 07:00:00',60,15,'Watts, Jones and Brown',NULL,1),(161,117,'finale','2024-07-01 09:03:00','2024-07-01 10:08:00',65,19,'Santos-Chen',NULL,5),(162,117,'finale','2024-07-01 10:19:00','2024-07-01 11:59:00',100,19,'Santos-Chen',NULL,1),(163,118,'special_guest','2024-07-02 09:15:00','2024-07-02 10:05:00',50,11,'Gonzalez-Lynn',NULL,12),(164,118,'warm up','2024-07-02 10:17:00','2024-07-02 11:58:00',101,11,'Gonzalez-Lynn',27,NULL),(165,119,'headline','2024-07-02 14:09:00','2024-07-02 14:56:00',47,3,'Bonilla, Thornton and Jones',47,NULL),(166,119,'finale','2024-07-02 15:06:00','2024-07-02 17:00:00',114,3,'Bonilla, Thornton and Jones',NULL,14),(167,120,'warm up','2024-07-02 19:15:00','2024-07-02 20:04:00',49,25,'Lewis, Johnson and Williams',NULL,5),(168,120,'headline','2024-07-02 20:11:00','2024-07-02 21:15:00',64,25,'Lewis, Johnson and Williams',NULL,7),(169,121,'warm up','2024-07-03 09:36:00','2024-07-03 11:04:00',88,22,'Dyer-Wallace',31,NULL),(170,121,'special_guest','2024-07-03 11:10:00','2024-07-03 12:09:00',59,22,'Dyer-Wallace',NULL,15),(171,121,'finale','2024-07-03 12:20:00','2024-07-03 13:11:00',51,22,'Dyer-Wallace',NULL,1),(172,122,'warm up','2024-07-03 14:13:00','2024-07-03 16:11:00',118,2,'Jenkins, Watson and Anderson',45,NULL),(173,123,'warm up','2024-07-03 17:51:00','2024-07-03 19:35:00',104,27,'Foster, Anderson and Horton',45,NULL),(174,125,'headline','2024-07-03 03:06:00','2024-07-03 04:05:00',59,11,'Gonzalez-Lynn',NULL,9),(175,125,'warm up','2024-07-03 04:10:00','2024-07-03 06:01:00',111,11,'Gonzalez-Lynn',NULL,9),(176,126,'special_guest','2024-07-03 07:41:00','2024-07-03 09:31:00',110,5,'Roberts-Ballard',NULL,12),(177,127,'warm up','2024-07-03 12:38:00','2024-07-03 14:09:00',91,20,'Murray, Wilson and Porter',NULL,7),(178,127,'warm up','2024-07-03 14:19:00','2024-07-03 15:49:00',90,20,'Murray, Wilson and Porter',25,NULL),(179,128,'finale','2024-07-03 16:45:00','2024-07-03 18:40:00',115,3,'Bonilla, Thornton and Jones',38,NULL),(180,130,'finale','2024-07-03 00:25:00','2024-07-03 01:10:00',45,2,'Jenkins, Watson and Anderson',NULL,11),(181,131,'warm up','2024-07-03 04:28:00','2024-07-03 04:58:00',30,10,'Bullock Inc',NULL,3),(182,131,'headline','2024-07-03 05:03:00','2024-07-03 06:38:00',95,10,'Bullock Inc',48,NULL),(183,132,'warm up','2025-08-07 09:26:00','2025-08-07 11:00:00',94,19,'Santos-Chen',7,NULL),(184,133,'warm up','2025-08-07 14:30:00','2025-08-07 15:48:00',78,8,'Wright-Howe',NULL,6),(185,134,'special_guest','2025-08-07 19:20:00','2025-08-07 20:41:00',81,16,'Hopkins-Wallace',NULL,7),(186,134,'headline','2025-08-07 20:54:00','2025-08-07 21:29:00',35,16,'Hopkins-Wallace',NULL,7),(187,135,'warm up','2025-08-08 09:02:00','2025-08-08 09:37:00',35,9,'Rasmussen-Holmes',NULL,10),(188,135,'headline','2025-08-08 09:45:00','2025-08-08 10:22:00',37,9,'Rasmussen-Holmes',5,NULL),(189,136,'warm up','2025-08-08 12:50:00','2025-08-08 13:55:00',65,16,'Hopkins-Wallace',NULL,15),(190,136,'warm up','2025-08-08 14:09:00','2025-08-08 15:11:00',62,16,'Hopkins-Wallace',32,NULL),(191,136,'finale','2025-08-08 15:16:00','2025-08-08 16:03:00',47,16,'Hopkins-Wallace',NULL,12),(192,137,'warm up','2025-08-08 17:55:00','2025-08-08 18:56:00',61,16,'Hopkins-Wallace',NULL,12),(193,137,'warm up','2025-08-08 19:07:00','2025-08-08 20:47:00',100,16,'Hopkins-Wallace',NULL,10),(194,139,'finale','2025-08-08 02:45:00','2025-08-08 03:49:00',64,6,'Orr-Clarke',NULL,15),(195,140,'special_guest','2025-08-08 07:29:00','2025-08-08 08:41:00',72,22,'Dyer-Wallace',NULL,9),(196,141,'special_guest','2025-08-08 12:08:00','2025-08-08 13:32:00',84,12,'Thomas PLC',NULL,8),(197,141,'headline','2025-08-08 13:45:00','2025-08-08 14:32:00',47,12,'Thomas PLC',NULL,13),(198,142,'headline','2026-08-16 08:43:00','2026-08-16 10:30:00',107,3,'Bonilla, Thornton and Jones',NULL,14),(199,143,'warm up','2026-08-16 12:35:00','2026-08-16 13:35:00',60,23,'Meyers and Sons',NULL,1),(200,143,'warm up','2026-08-16 13:40:00','2026-08-16 15:10:00',90,23,'Meyers and Sons',NULL,2),(201,144,'warm up','2026-08-16 17:16:00','2026-08-16 18:21:00',65,10,'Bullock Inc',NULL,3),(202,144,'finale','2026-08-16 18:29:00','2026-08-16 19:50:00',81,10,'Bullock Inc',18,NULL),(203,145,'special_guest','2026-08-17 09:18:00','2026-08-17 10:31:00',73,25,'Lewis, Johnson and Williams',40,NULL),(204,146,'headline','2026-08-18 08:50:00','2026-08-18 09:39:00',49,28,'King-Burke',NULL,13),(205,147,'finale','2026-08-18 12:50:00','2026-08-18 13:27:00',37,11,'Gonzalez-Lynn',5,NULL),(206,147,'headline','2026-08-18 13:40:00','2026-08-18 14:41:00',61,11,'Gonzalez-Lynn',16,NULL),(207,148,'headline','2026-08-18 16:44:00','2026-08-18 17:46:00',62,14,'Stewart, Gonzalez and Carlson',21,NULL),(208,149,'finale','2026-08-18 20:22:00','2026-08-18 21:58:00',96,25,'Lewis, Johnson and Williams',NULL,4),(209,149,'finale','2026-08-18 22:06:00','2026-08-18 22:43:00',37,25,'Lewis, Johnson and Williams',10,NULL),(210,150,'warm up','2026-08-18 01:10:00','2026-08-18 01:54:00',44,5,'Roberts-Ballard',NULL,5),(211,150,'warm up','2026-08-18 01:59:00','2026-08-18 03:12:00',73,5,'Roberts-Ballard',NULL,12),(212,150,'finale','2026-08-18 03:22:00','2026-08-18 03:55:00',33,5,'Roberts-Ballard',NULL,13),(213,151,'finale','2026-08-18 04:53:00','2026-08-18 06:52:00',119,19,'Santos-Chen',NULL,6),(214,152,'warm up','2026-08-18 09:43:00','2026-08-18 11:15:00',92,27,'Foster, Anderson and Horton',NULL,13),(215,152,'special_guest','2026-08-18 11:26:00','2026-08-18 12:10:00',44,27,'Foster, Anderson and Horton',NULL,1),(216,152,'warm up','2026-08-18 12:24:00','2026-08-18 13:09:00',45,27,'Foster, Anderson and Horton',NULL,14);
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
INSERT INTO `personel` VALUES (1,'Lisa','Taylor',32,'michael12@example.net','440.927.0721x82379','beginer'),(2,'Morgan','Perry',53,'robertsonadam@example.com','001-950-706-5025x087','intern'),(3,'Joseph','Moore',58,'julie11@example.org','+1-771-529-2721x887','intern'),(4,'Danny','Hayes',36,'dgarcia@example.net','7767950282','experienced'),(5,'Helen','Powell',20,'richardjones@example.com','956-891-1394','intermidiate'),(6,'Crystal','Pena',50,'brandonpeck@example.com','+1-557-539-4005x036','beginer'),(7,'Ricky','Kelley',43,'lindseykirk@example.net','492.606.0170x94799','very_experienced'),(8,'Joel','Klein',50,'jerome73@example.org','9853243836','intermidiate'),(9,'Robin','Mata',49,'rebekah13@example.net','455-554-6139','very_experienced'),(10,'Scott','Wagner',43,'jeremyrivera@example.com','(382)776-7317','experienced'),(11,'Maxwell','Mueller',39,'whitescott@example.org','(718)484-7800x618','very_experienced'),(12,'Kevin','Mcguire',57,'ahernandez@example.com','(874)853-7907x8482','intern'),(13,'Sheila','Melton',59,'mreese@example.com','(608)320-8429x777','intern'),(14,'Morgan','Moore',24,'davidellis@example.com','3487961766','intern'),(15,'Casey','Schwartz',44,'kevinsmith@example.net','(762)712-1749x323','intern'),(16,'Tami','Marshall',50,'carterdebbie@example.org','678-723-1536','intern'),(17,'Jennifer','Thompson',46,'emilyhull@example.com','(330)869-0499x8134','beginer'),(18,'Darrell','Rogers',34,'diana74@example.net','(606)475-3545','experienced'),(19,'Kathryn','Freeman',52,'lcarter@example.org','872.358.6906','intermidiate'),(20,'Laura','Little',50,'thomas77@example.net','+1-226-577-9310x607','intern'),(21,'Austin','Patel',52,'matthew63@example.org','(656)705-7116x68987','experienced'),(22,'Jenny','Carey',37,'ryan01@example.org','494-636-3587','intern'),(23,'Evan','Griffin',28,'clairetucker@example.org','2959135883','intern'),(24,'Crystal','Johnston',56,'cavila@example.com','8274250216','experienced'),(25,'Bernard','Wise',53,'rachelmiller@example.net','+1-336-494-0187','intermidiate'),(26,'Robert','Moreno',60,'jonesmark@example.net','+1-538-373-5314x3664','intermidiate'),(27,'Kim','Green',59,'obonilla@example.net','555-525-5006x76836','experienced'),(28,'Corey','Edwards',25,'fisherjoshua@example.org','723.479.9508x583','intermidiate'),(29,'Kevin','Palmer',20,'jonesthomas@example.net','230-288-8042','intermidiate'),(30,'Victor','Freeman',20,'odommark@example.net','490.593.0696','beginer'),(31,'Marvin','Brown',54,'rlopez@example.net','+1-835-375-6365x6569','experienced'),(32,'Jorge','Ramsey',31,'omiller@example.net','421-840-1081x706','experienced'),(33,'Edward','Rice',23,'kelli09@example.com','433.279.3895x51827','intern'),(34,'Cameron','Robinson',49,'carl42@example.net','001-918-730-4843x093','intermidiate'),(35,'Jason','Patton',24,'josephburton@example.net','2023178791','beginer'),(36,'James','Ball',39,'brianjohnston@example.com','922.470.0073x1870','intern'),(37,'Lori','Hernandez',48,'gregory10@example.net','(905)404-7706x74520','intermidiate'),(38,'Marissa','Reynolds',21,'masonteresa@example.org','+1-264-542-9670','intern'),(39,'Pamela','Pratt',55,'qcook@example.net','001-394-217-3195x682','experienced'),(40,'Vanessa','Smith',59,'munozelizabeth@example.net','001-952-267-6130x559','intern'),(41,'Alan','Rogers',38,'tclarke@example.net','(289)257-5758','very_experienced'),(42,'Kevin','Ritter',30,'ryan41@example.net','976.342.7360','intern'),(43,'Daniel','English',27,'janet88@example.net','+1-839-647-3570x6845','intermidiate'),(44,'Charles','Johnson',27,'stephenbarnes@example.net','603-219-1847','experienced'),(45,'Anthony','Smith',46,'crystalhart@example.net','275-520-8229x964','experienced'),(46,'Tracey','Davis',32,'blamb@example.net','001-604-948-7765x466','intermidiate'),(47,'Laurie','Hughes',46,'derek11@example.com','001-634-779-2668x741','experienced'),(48,'Melissa','Robinson',55,'colegordon@example.org','912.319.2648x04228','beginer'),(49,'Tiffany','Bell',35,'kathleenrowland@example.com','658.577.6777x0350','experienced'),(50,'Kimberly','Roberts',30,'colleen57@example.net','(865)501-3548','intermidiate'),(51,'Jaime','Sloan',55,'jasmin41@example.org','297.935.4225x597','intern'),(52,'Rebecca','Dudley',59,'herrerarussell@example.org','(831)339-7720','beginer'),(53,'Richard','Richards',29,'rgarza@example.com','389.338.2868x765','experienced'),(54,'Jose','Smith',52,'raymondmoore@example.com','(486)290-5951','intern'),(55,'Matthew','Shelton',28,'jonathan86@example.org','+1-893-655-9500x208','intermidiate'),(56,'Shawn','Delacruz',54,'dwilcox@example.net','+1-290-651-9062x5248','beginer'),(57,'Beth','Davis',41,'jessica77@example.net','8166321556','intern'),(58,'Tommy','Richards',43,'parnold@example.com','504-253-5956','beginer'),(59,'Marie','Moreno',20,'paula95@example.com','+1-974-617-8012x487','intermidiate'),(60,'Billy','Rodriguez',27,'huffmanjames@example.com','574.739.9799x6762','very_experienced'),(61,'Charles','Gray',42,'sarah03@example.org','001-700-395-8193x869','very_experienced'),(62,'Jeffrey','Hamilton',47,'qgreen@example.net','(766)477-0368','intern'),(63,'Brandon','Bautista',57,'joshuaanderson@example.com','763-610-9303x867','very_experienced'),(64,'Brandon','Cruz',23,'harringtondanny@example.com','979-971-0713x936','experienced'),(65,'Rick','Williams',29,'parkerchristine@example.net','470-460-1932x34536','intermidiate'),(66,'Brandon','Stevens',21,'lewisjeff@example.net','(313)968-9019x858','beginer'),(67,'Phillip','Roth',36,'scott66@example.org','001-886-621-4043x145','beginer'),(68,'Jennifer','Griffin',45,'ibrennan@example.org','(664)844-2180x62928','very_experienced'),(69,'Melissa','Ruiz',48,'olewis@example.org','213-741-4129x58973','beginer'),(70,'Samuel','Lewis',48,'rrich@example.com','337-439-1637x1633','intermidiate'),(71,'Brianna','Burns',20,'lwilliams@example.com','9492274095','beginer'),(72,'Robert','Perry',23,'skelley@example.net','+1-752-587-0457','intern'),(73,'Tammy','Mathews',27,'robertlee@example.net','848-671-8876','intern'),(74,'Christine','Campbell',45,'geraldporter@example.net','553.414.1403x576','experienced'),(75,'Philip','Walsh',43,'rhaynes@example.com','+1-979-566-2285x441','experienced'),(76,'Vincent','Rogers',60,'bpeterson@example.org','001-409-860-6026','very_experienced'),(77,'Jeffrey','Smith',24,'kallen@example.com','+1-824-972-6393x744','intermidiate'),(78,'Mariah','Chaney',44,'ihill@example.org','4215648030','intern'),(79,'Rita','Freeman',46,'amoore@example.net','+1-495-770-7693','experienced'),(80,'Linda','Cruz',30,'sarahwilliamson@example.com','(247)558-0362','intermidiate'),(81,'Monica','Cunningham',28,'stephaniemoore@example.org','411.700.2564','beginer'),(82,'Christopher','Beltran',36,'michaeljames@example.net','001-799-421-6543','intern'),(83,'Dillon','Garcia',38,'riverajerome@example.com','+1-415-266-4488x988','intermidiate'),(84,'Stephanie','Smith',46,'elizabethbrown@example.net','362.679.6324x4573','intern'),(85,'Douglas','Reyes',28,'carrie72@example.org','644.671.9324x896','very_experienced'),(86,'Timothy','Hall',29,'nicole98@example.net','491-961-7141','beginer'),(87,'Kaitlyn','Pratt',39,'rhawkins@example.org','9153290878','very_experienced'),(88,'Parker','Owen',33,'richardsonedward@example.com','(580)681-7686x985','beginer'),(89,'Steven','Thompson',23,'gregory67@example.org','+1-923-653-5947x6976','intermidiate'),(90,'Lisa','Matthews',53,'kdaniel@example.org','001-364-252-5890x650','experienced'),(91,'Brian','Harvey',48,'warrenpeter@example.org','263-227-5773x42001','experienced'),(92,'Jared','Brown',49,'jessicajohnson@example.com','458.519.9464','intermidiate'),(93,'Destiny','Schroeder',41,'courtney94@example.org','914-717-2836x8766','intermidiate'),(94,'Tina','Briggs',54,'scottmatthews@example.net','(362)594-8099x63832','intern'),(95,'Joanna','Miller',50,'trevordennis@example.org','566-505-6989x180','intern'),(96,'Amber','Hernandez',23,'petersonandrew@example.org','(367)316-1743x5720','intermidiate'),(97,'Scott','Rodriguez',35,'tsalinas@example.net','(623)648-2987','intermidiate'),(98,'Ruben','Jenkins',50,'victor19@example.net','001-994-244-1013x804','intermidiate'),(99,'Tammy','Ross',57,'alejandrosmith@example.com','+1-750-565-5047x870','intermidiate'),(100,'Brenda','Thompson',43,'leahcarpenter@example.org','001-217-253-2347x382','intermidiate'),(101,'Stephanie','Dunn',57,'rebeccajuarez@example.net','001-430-533-5589x341','intermidiate'),(102,'Robert','Bryant',51,'daviseric@example.com','707-992-8523','very_experienced'),(103,'Connor','Gonzales',58,'adaniels@example.org','+1-567-670-9497x9353','very_experienced'),(104,'Troy','Rush',26,'christophersimpson@example.net','321.940.4562','intermidiate'),(105,'Brianna','Powers',32,'rachel53@example.com','(964)946-3013','intern'),(106,'Amber','Gonzalez',50,'richard84@example.com','(436)300-2123x21700','intern'),(107,'Morgan','Kim',30,'ericperry@example.com','001-329-865-4330x851','beginer'),(108,'Lindsay','Glass',27,'sylviasmith@example.org','(747)879-5972x4338','very_experienced'),(109,'Peter','Arroyo',53,'rodriguezmelissa@example.net','682-555-0903','intern'),(110,'Jonathan','Murphy',36,'jasmine14@example.net','7992978492','very_experienced'),(111,'John','Camacho',46,'ronaldlara@example.net','5747533974','intermidiate'),(112,'Clarence','Ferguson',32,'walterwilson@example.com','(779)654-8236x4816','beginer'),(113,'Danny','Ellis',39,'gyoung@example.com','672-303-1547','very_experienced'),(114,'Daniel','Harris',32,'rossbennett@example.net','(689)807-3969','very_experienced'),(115,'Timothy','Santos',57,'nicole62@example.net','7176332223','experienced'),(116,'Jessica','Stewart',44,'bfaulkner@example.net','(426)376-4662x925','very_experienced'),(117,'Tammy','Jacobs',38,'adamscourtney@example.org','460-225-2249x958','beginer'),(118,'Charles','Ashley',45,'christopher98@example.net','564-677-7701','intern'),(119,'Jennifer','Morris',43,'david58@example.com','661-906-6003','very_experienced'),(120,'Jessica','Calderon',44,'vhall@example.org','(903)634-6309x922','intermidiate'),(121,'Jacqueline','Cross',21,'james25@example.net','672-654-2263','very_experienced'),(122,'Larry','Medina',24,'clarkpeggy@example.net','+1-518-963-4978x3975','beginer'),(123,'Zachary','Gonzalez',21,'youngeric@example.com','001-481-985-7190x880','intermidiate'),(124,'Matthew','Davis',40,'zwilliams@example.net','9608231827','intermidiate'),(125,'Larry','Kennedy',41,'gbennett@example.org','777.580.9191','experienced'),(126,'Kristin','Rice',50,'michelle68@example.org','414.287.2093','intern'),(127,'Michael','Hensley',55,'gravespeggy@example.com','+1-921-843-1021x901','very_experienced'),(128,'Todd','Curry',41,'marthalopez@example.net','+1-700-794-3129x760','intermidiate'),(129,'Julian','Cole',60,'heather49@example.net','001-575-971-1388x917','very_experienced'),(130,'Whitney','Terrell',33,'tyler48@example.net','+1-890-961-2075x2530','intern'),(131,'Daniel','Johnson',59,'careyashley@example.org','+1-569-974-5338x8494','intermidiate'),(132,'Gregg','King',34,'carolineconway@example.net','001-921-216-0998x465','experienced'),(133,'Timothy','Garcia',40,'victoriaandrews@example.com','(663)375-2313','experienced'),(134,'Nicholas','Williams',57,'johnsmith@example.com','(862)422-3986x11798','beginer'),(135,'Cheryl','Wilkinson',23,'gary42@example.net','+1-723-222-9721x4523','intern'),(136,'Michael','Klein',45,'vanessa79@example.org','001-274-933-4807x787','intermidiate'),(137,'Danny','Roberts',50,'munozjoseph@example.org','783-766-4216x7347','intermidiate'),(138,'Daniel','Richards',24,'amanda35@example.net','(402)313-4056x5570','beginer'),(139,'Jeremy','Nguyen',42,'hmartinez@example.com','(875)882-7606x7405','intermidiate'),(140,'Wesley','Fritz',22,'dburgess@example.org','212-903-6947x9864','very_experienced'),(141,'Robin','Petersen',56,'carlosjohnson@example.net','716.590.4133','very_experienced'),(142,'Elizabeth','Cruz',43,'drodgers@example.org','291-436-6362x2158','experienced'),(143,'Tina','Ross',55,'denisewatson@example.com','896-465-8177x120','intern'),(144,'Lacey','Myers',21,'iwilliams@example.org','+1-331-869-5863','intermidiate'),(145,'Marvin','Sims',27,'steintricia@example.org','2107381630','beginer'),(146,'Kristina','Thompson',38,'michaelcline@example.org','(987)311-6426x0986','experienced'),(147,'Alyssa','Robinson',57,'qbrown@example.net','750.717.4001','very_experienced'),(148,'Elizabeth','Hansen',52,'james75@example.org','001-659-742-4346x431','intern'),(149,'Brian','Wolfe',45,'bsosa@example.org','(934)555-0177','very_experienced'),(150,'Emily','Vargas',25,'varnold@example.net','(473)263-8214x6205','experienced'),(151,'Victoria','Wolf',36,'lawrencewesley@example.net','545.935.2003','experienced'),(152,'Michael','Stewart',57,'fvazquez@example.net','623-969-7362x26890','experienced'),(153,'Brian','Chen',49,'richardvillarreal@example.net','(746)221-7287x616','very_experienced'),(154,'Michael','Gregory',46,'lindaphelps@example.net','001-806-801-3975x257','experienced'),(155,'Lisa','Henson',32,'ywilliams@example.com','989.385.8226x40649','intern'),(156,'Yesenia','Bradshaw',35,'valeriesanders@example.net','248.931.4892x357','intermidiate'),(157,'Beth','Murphy',24,'williamsjay@example.org','+1-728-532-5112x478','very_experienced'),(158,'Jennifer','Pierce',59,'stacy66@example.net','(348)689-0105','very_experienced'),(159,'Donald','Smith',41,'jfisher@example.com','703-570-7621x31199','beginer'),(160,'Kaitlin','Taylor',51,'brian76@example.org','(930)790-5719x180','beginer'),(161,'Matthew','Ingram',52,'jacobstimothy@example.net','+1-627-212-4968x6474','intern'),(162,'Jeremiah','Yang',50,'angela21@example.org','7935243121','very_experienced'),(163,'Albert','Fleming',44,'xgoodman@example.org','736-839-8741','intermidiate'),(164,'Sarah','Hammond',22,'royparker@example.com','869.847.9200','intermidiate'),(165,'Louis','Roman',60,'morgannicholas@example.net','(984)875-9240x3609','beginer'),(166,'Stephanie','Green',50,'wellsvictoria@example.net','(895)825-5386x4452','intern'),(167,'Timothy','Patterson',55,'fchavez@example.org','(300)719-6497x6214','intern'),(168,'Nathaniel','Lloyd',38,'davenportashley@example.net','001-309-421-2734x499','experienced'),(169,'Bradley','Davis',33,'kirk55@example.org','(455)383-0796x9738','very_experienced'),(170,'Henry','Olson',50,'michael54@example.com','528.980.4259x62088','intern'),(171,'Jocelyn','Johnson',38,'littlemelissa@example.net','(944)511-0046x1850','intern'),(172,'Peter','Torres',47,'brenda77@example.com','269-284-8416','beginer'),(173,'Stephanie','Bennett',27,'wsosa@example.com','(800)232-4542x9748','intern'),(174,'Angela','Sanchez',36,'javiersmith@example.net','001-276-541-5811x035','experienced'),(175,'David','Hill',23,'chenheidi@example.org','001-381-423-2501','experienced'),(176,'Stephen','Clark',34,'daniel30@example.com','001-280-920-3303x576','intermidiate'),(177,'Brian','Madden',32,'torrescharles@example.com','212.550.4090','intern'),(178,'April','Price',26,'vdunn@example.com','(514)933-8180x35915','intermidiate'),(179,'Kathryn','Nguyen',34,'dprince@example.net','+1-863-639-9333x9412','very_experienced'),(180,'Joseph','Flynn',39,'burgessjason@example.net','+1-714-734-8366','experienced'),(181,'Maria','Wood',28,'qshelton@example.org','397.355.5581x1736','beginer'),(182,'Jennifer','Wilson',35,'vegadonald@example.org','001-900-743-0837x835','very_experienced'),(183,'Christopher','Bond',40,'codyrivera@example.com','001-443-573-8483x546','intermidiate'),(184,'Allison','Conner',41,'ywheeler@example.com','765-811-1904x82495','intermidiate'),(185,'Joshua','Brown',53,'oarnold@example.net','+1-653-754-8056','intermidiate'),(186,'Jessica','Ball',41,'clarksharon@example.org','001-974-812-3110x340','very_experienced'),(187,'Tammy','Booker',45,'igould@example.org','525.470.5835x07602','intern'),(188,'Cristian','Williamson',29,'matthew14@example.org','(803)704-3830x70194','beginer'),(189,'Megan','Dyer',34,'dillon95@example.net','+1-402-566-4716x9753','very_experienced'),(190,'Jamie','Jimenez',38,'pamelasmith@example.com','+1-698-306-3856x770','intermidiate'),(191,'John','Wagner',60,'douglashoover@example.com','522-732-1984x8467','experienced'),(192,'Kelly','Watson',24,'ashleyjohnson@example.net','4019905637','experienced'),(193,'Robin','Galloway',27,'rosejoanna@example.org','462.718.9242','intermidiate'),(194,'Carol','Patterson',53,'whurley@example.com','821-370-7349','intermidiate'),(195,'Nicholas','Armstrong',54,'monicarivas@example.net','9915237540','experienced'),(196,'Elizabeth','Wagner',58,'joan10@example.com','+1-293-256-9169x2509','intermidiate'),(197,'Holly','Buck',44,'rodriguezalexander@example.com','442-844-9235','experienced'),(198,'Christopher','Valdez',38,'vfitzpatrick@example.net','771.902.1210x41786','very_experienced'),(199,'Julia','Barrett',41,'berryjerry@example.net','8454296549','very_experienced'),(200,'Barbara','Hobbs',46,'stanleyashley@example.com','336-981-4554x077','beginer');
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
INSERT INTO `photo` VALUES (1,'images\\IMG_1.jpg','History gun local.',NULL,NULL,124,NULL,NULL,NULL),(2,'images\\IMG_2.jpg','Deep range look keep back show.',NULL,NULL,199,NULL,NULL,NULL),(3,'images\\IMG_3.jpg','Us appear voice team long.',NULL,9,NULL,NULL,NULL,NULL),(4,'images\\IMG_4.jpg','Tv wrong though.',21,NULL,NULL,NULL,NULL,NULL),(5,'images\\IMG_5.jpg','Agency yeah morning health style receive situation.',NULL,NULL,NULL,NULL,9,NULL),(6,'images\\IMG_6.jpg','Customer class pretty agree several.',NULL,9,NULL,NULL,NULL,NULL),(7,'images\\IMG_7.jpg','Lot boy life line accept.',NULL,NULL,NULL,NULL,NULL,46),(8,'images\\IMG_8.jpg','Although clearly daughter southern his music.',NULL,NULL,NULL,44,NULL,NULL),(9,'images\\IMG_9.jpg','Without both audience family age.',NULL,6,NULL,NULL,NULL,NULL),(10,'images\\IMG_10.jpg','Defense poor stock here guess item expert somebody.',NULL,5,NULL,NULL,NULL,NULL),(11,'images\\IMG_11.jpg','Again ask apply community draw teach task hand.',NULL,NULL,1,NULL,NULL,NULL),(12,'images\\IMG_12.jpg','Behavior tonight institution them movement.',NULL,NULL,NULL,141,NULL,NULL),(13,'images\\IMG_13.jpg','Production just stuff.',NULL,NULL,NULL,NULL,4,NULL),(14,'images\\IMG_14.jpg','Effect likely student nor else possible.',NULL,NULL,NULL,NULL,NULL,22),(15,'images\\IMG_15.jpg','Part note think policy direction that environmental buy.',NULL,3,NULL,NULL,NULL,NULL),(16,'images\\IMG_16.jpg','Him myself research science better begin.',NULL,NULL,NULL,138,NULL,NULL),(17,'images\\IMG_17.jpg','See chance cultural.',NULL,NULL,NULL,18,NULL,NULL),(18,'images\\IMG_18.jpg','Short community material.',NULL,NULL,NULL,102,NULL,NULL),(19,'images\\IMG_19.jpg','Finish affect exist.',NULL,NULL,NULL,NULL,5,NULL),(20,'images\\IMG_20.jpg','Always thus think plan despite eat.',NULL,NULL,NULL,40,NULL,NULL),(21,'images\\IMG_21.jpg','Camera step fish.',NULL,NULL,110,NULL,NULL,NULL),(22,'images\\IMG_22.jpg','Firm traditional subject physical young tend apply.',NULL,NULL,NULL,NULL,8,NULL),(23,'images\\IMG_23.jpg','Appear enough majority know wind miss stock.',NULL,14,NULL,NULL,NULL,NULL),(24,'images\\IMG_24.jpg','Occur recently whole newspaper.',NULL,NULL,NULL,NULL,NULL,227),(25,'images\\IMG_25.jpg','Money piece public run.',24,NULL,NULL,NULL,NULL,NULL),(26,'images\\IMG_26.jpg','Culture study cut point new type about.',NULL,NULL,NULL,NULL,3,NULL),(27,'images\\IMG_27.jpg','Me reality threat want join stand.',NULL,6,NULL,NULL,NULL,NULL),(28,'images\\IMG_28.jpg','Just with paper arrive decade break not time.',NULL,7,NULL,NULL,NULL,NULL),(29,'images\\IMG_29.jpg','Training third sea dinner offer.',NULL,5,NULL,NULL,NULL,NULL),(30,'images\\IMG_30.jpg','Series kid sea out among.',43,NULL,NULL,NULL,NULL,NULL),(31,'images\\IMG_31.jpg','Place catch job peace ability western.',NULL,7,NULL,NULL,NULL,NULL),(32,'images\\IMG_32.jpg','Easy property worry sport surface research surface.',NULL,NULL,NULL,NULL,NULL,10),(33,'images\\IMG_33.jpg','Role deep before set.',NULL,NULL,NULL,NULL,9,NULL),(34,'images\\IMG_34.jpg','Point later focus level professor brother kid.',NULL,NULL,NULL,NULL,7,NULL),(35,'images\\IMG_35.jpg','Social memory who debate season almost.',NULL,NULL,59,NULL,NULL,NULL),(36,'images\\IMG_36.jpg','Language huge already the affect.',NULL,NULL,NULL,136,NULL,NULL),(37,'images\\IMG_37.jpg','Ok reduce away them.',NULL,NULL,NULL,118,NULL,NULL),(38,'images\\IMG_38.jpg','Use popular between do.',NULL,NULL,NULL,124,NULL,NULL),(39,'images\\IMG_39.jpg','That make whom alone course.',NULL,NULL,147,NULL,NULL,NULL),(40,'images\\IMG_40.jpg','East whatever various.',NULL,NULL,NULL,123,NULL,NULL),(41,'images\\IMG_41.jpg','Join successful early once.',NULL,NULL,NULL,NULL,2,NULL),(42,'images\\IMG_42.jpg','Action seven follow evening friend.',NULL,NULL,92,NULL,NULL,NULL),(43,'images\\IMG_43.jpg','Provide rate institution bit.',NULL,NULL,4,NULL,NULL,NULL),(44,'images\\IMG_44.jpg','Sit return amount current statement subject how.',NULL,NULL,NULL,57,NULL,NULL),(45,'images\\IMG_45.jpg','Opportunity skill operation fill.',NULL,NULL,NULL,NULL,2,NULL),(46,'images\\IMG_46.jpg','Heart so important matter.',NULL,NULL,NULL,NULL,NULL,110),(47,'images\\IMG_47.jpg','Establish carry citizen strong.',NULL,NULL,NULL,NULL,3,NULL),(48,'images\\IMG_48.jpg','Change group floor consider baby skin.',NULL,NULL,NULL,NULL,NULL,273),(49,'images\\IMG_49.jpg','Other because particular word plan.',NULL,7,NULL,NULL,NULL,NULL),(50,'images\\IMG_50.jpg','Energy avoid early hospital.',NULL,NULL,NULL,NULL,6,NULL);
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
  KEY `buyer_ID` (`buyer_ID`),
  KEY `seller_ID` (`seller_ID`),
  KEY `ticket_ID` (`ticket_ID`),
  CONSTRAINT `resale_queue_ibfk_1` FOREIGN KEY (`buyer_ID`) REFERENCES `buyer` (`buyer_ID`),
  CONSTRAINT `resale_queue_ibfk_2` FOREIGN KEY (`seller_ID`) REFERENCES `seller` (`seller_ID`),
  CONSTRAINT `resale_queue_ibfk_3` FOREIGN KEY (`ticket_ID`) REFERENCES `ticket` (`ticket_ID`),
  CONSTRAINT `chk_seller_or_buyer` CHECK (`ticket_ID` is null and `event_name` is not null and `ticket_type` is not null or `ticket_ID` is not null and `event_name` is null and `ticket_type` is null and `buyer_ID` is not null or `ticket_ID` is not null and `event_name` is not null and `ticket_type` is not null and `seller_ID` is not null),
  CONSTRAINT `chk_one_side_only` CHECK (`buyer_ID` is not null and `seller_ID` is null or `buyer_ID` is null and `seller_ID` is not null)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resale_queue`
--

LOCK TABLES `resale_queue` WRITE;
/*!40000 ALTER TABLE `resale_queue` DISABLE KEYS */;
INSERT INTO `resale_queue` VALUES (1,NULL,120,'Number Concert','backstage',53,'2020-08-25 11:45:00'),(2,NULL,90,'Tell Concert','backstage',86,'2017-09-15 10:00:00'),(3,36,NULL,NULL,NULL,53,'2017-09-13 17:15:00'),(4,NULL,52,'First Concert','backstage',36,'2023-07-07 17:45:00'),(5,NULL,141,'Along Concert','backstage',8,'2025-04-23 19:00:00'),(6,69,NULL,'Along Concert','backstage',NULL,'2025-04-27 19:15:00'),(7,100,NULL,'Chair Concert','backstage',NULL,'2025-04-30 17:00:00'),(8,NULL,106,'Scene Concert','backstage',192,'2025-04-26 10:00:00'),(9,NULL,19,'Employee Concert','backstage',15,'2025-04-23 15:30:00'),(10,NULL,129,'Employee Concert','backstage',94,'2025-04-27 12:00:00'),(11,143,NULL,'Employee Concert','backstage',NULL,'2025-04-23 11:45:00'),(12,NULL,103,'First Concert','backstage',83,'2025-04-30 15:45:00'),(13,32,NULL,'Sing Concert','backstage',NULL,'2024-06-16 09:30:00'),(14,NULL,9,'Local Concert','backstage',116,'2022-09-01 14:30:00'),(15,48,NULL,NULL,NULL,192,'2025-05-02 16:00:00'),(16,NULL,144,'Newspaper Concert','backstage',68,'2017-09-12 15:30:00'),(17,NULL,40,'Visit Concert','backstage',5,'2023-07-10 13:30:00'),(18,35,NULL,'Tell Concert','backstage',NULL,'2017-09-10 16:45:00'),(19,78,NULL,NULL,NULL,68,'2025-04-22 16:45:00'),(20,NULL,22,'Front Concert','backstage',219,'2025-04-24 14:15:00'),(21,NULL,146,'Tough Concert','backstage',10,'2025-04-22 12:15:00'),(22,NULL,85,'Whose Concert','backstage',156,'2025-04-23 17:00:00'),(23,NULL,113,'It Concert','backstage',1,'2025-04-30 14:45:00');
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
    DECLARE v_event_ID INT;
    DECLARE v_ticket_type ENUM('general_admission', 'VIP', 'backstage');
    DECLARE v_purchase_date DATE;
    DECLARE v_price DECIMAL(10,2);
    DECLARE v_payment_method ENUM('debit_card', 'credit_card', 'I-BAN');
    DECLARE v_activated BOOLEAN;
    
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

            

            
            SELECT 
                event_ID, ticket_type, purchase_date, purchase_price, 
                payment_method, activated_status
            INTO 
                v_event_ID, v_ticket_type, v_purchase_date, v_price,
                v_payment_method, v_activated
            FROM ticket
            WHERE ticket_ID = NEW.ticket_ID;

            
            DELETE FROM ticket WHERE ticket_ID = NEW.ticket_ID;

            
            INSERT INTO ticket (
                event_ID, visitor_ID, ticket_type, purchase_date,
                purchase_price, payment_method, activated_status
            )
            VALUES (
                v_event_ID, matched_buyer, v_ticket_type, v_purchase_date,
                v_price, v_payment_method, v_activated
            );

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

    
    IF NEW.ticket_ID IS NOT NULL THEN
        SELECT event_ID, ticket_type
        INTO event_id_val, ticket_type_val
        FROM ticket
        WHERE ticket_ID = NEW.ticket_ID;

    
    ELSEIF NEW.event_name IS NOT NULL AND NEW.ticket_type IS NOT NULL THEN
        SELECT event_ID
        INTO event_id_val
        FROM events
        WHERE event_name = NEW.event_name
        LIMIT 1;  

        SET ticket_type_val = NEW.ticket_type;

    
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Not enough information to check resale availability.';
    END IF;

    
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
  `ticket_ID` int(11) NOT NULL,
  `performance_ID` int(11) NOT NULL,
  `artist_performance` enum('1','2','3','4','5') DEFAULT NULL,
  `sound_and_lighting` enum('1','2','3','4','5') DEFAULT NULL,
  `stage_presence` enum('1','2','3','4','5') DEFAULT NULL,
  `event_organization` enum('1','2','3','4','5') DEFAULT NULL,
  `overall_impression` enum('1','2','3','4','5') DEFAULT NULL,
  PRIMARY KEY (`ticket_ID`,`performance_ID`),
  KEY `performance_ID` (`performance_ID`),
  KEY `idx_review_ticket` (`ticket_ID`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`ticket_ID`) REFERENCES `ticket` (`ticket_ID`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`performance_ID`) REFERENCES `performances` (`performance_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (2,41,'1','2','4','1','3'),(3,20,'4','4','4','5','3'),(4,141,'2','5','2','4','3'),(9,116,'1','5','1','1','3'),(11,52,'2','2','1','4','2'),(12,136,'1','3','5','2','4'),(13,116,'1','4','1','5','5'),(14,155,'2','5','1','3','4'),(16,112,'4','5','1','4','3'),(17,94,'2','1','3','3','4'),(18,57,'5','1','4','4','5'),(20,110,'4','4','4','1','2'),(21,112,'2','3','5','2','3'),(22,165,'1','5','1','2','2'),(23,106,'1','3','1','2','5'),(24,71,'5','3','3','3','2'),(26,119,'2','1','1','3','5'),(27,173,'5','3','5','1','1'),(28,132,'2','2','2','3','2'),(29,57,'1','3','2','4','3'),(30,53,'2','1','4','5','5'),(31,70,'3','3','4','5','3'),(33,36,'4','3','4','3','1'),(34,126,'2','1','4','1','4'),(35,9,'4','4','4','5','5'),(39,134,'5','5','4','5','5'),(41,89,'5','2','5','5','4'),(42,136,'3','5','3','4','3'),(43,172,'4','5','1','5','5'),(44,137,'2','3','1','5','2'),(46,79,'3','3','1','5','4'),(47,136,'1','4','2','2','1'),(49,88,'3','1','5','2','2'),(51,145,'3','3','2','3','3'),(52,33,'2','4','4','1','1'),(54,141,'1','1','2','4','2'),(55,121,'2','1','4','4','2'),(56,141,'2','5','5','4','2'),(57,22,'2','5','1','5','3'),(58,92,'1','2','3','2','1'),(59,132,'2','1','5','4','2'),(61,49,'5','4','2','2','5'),(63,75,'5','3','5','4','1'),(64,129,'4','1','3','4','4'),(65,48,'2','2','1','1','5'),(66,165,'3','5','1','3','5'),(67,22,'3','3','1','5','2'),(69,31,'5','4','1','3','5'),(70,21,'5','1','4','4','4'),(71,172,'1','4','2','1','2'),(73,89,'1','3','4','4','3'),(74,136,'3','5','4','4','2'),(75,141,'1','4','5','4','3'),(76,94,'1','5','5','4','3'),(77,36,'4','1','4','4','1'),(78,121,'2','4','4','2','3'),(80,67,'2','4','5','4','3'),(81,149,'2','4','5','3','5'),(82,41,'5','2','5','1','3'),(84,169,'1','2','4','2','5'),(85,172,'1','5','4','4','3'),(87,178,'1','2','2','5','2'),(88,113,'4','1','4','2','4'),(90,159,'2','5','3','4','2'),(91,182,'1','4','1','3','5'),(92,102,'4','5','4','2','5'),(93,96,'2','3','4','4','2'),(95,107,'2','3','2','4','5'),(96,128,'1','4','2','1','3'),(97,11,'2','4','1','3','3'),(98,16,'5','3','3','2','5'),(99,38,'4','3','1','3','5'),(100,58,'4','5','4','2','4'),(101,49,'4','1','4','2','3'),(102,107,'3','5','3','3','1'),(103,51,'5','1','3','5','1'),(104,101,'4','2','3','1','1'),(105,13,'3','1','3','5','2'),(106,17,'5','3','4','2','4'),(108,147,'5','2','4','5','2'),(110,155,'4','1','2','5','4'),(112,180,'5','4','2','4','4'),(113,181,'4','3','2','5','3'),(114,29,'4','4','5','3','3'),(115,52,'4','3','1','2','4'),(117,134,'2','5','4','2','1'),(118,176,'1','3','4','1','2'),(119,41,'1','1','5','2','4'),(120,103,'3','2','5','2','3'),(122,43,'1','3','5','3','2'),(125,150,'1','5','4','4','3'),(126,133,'1','1','2','5','5'),(127,178,'5','5','4','4','5'),(128,33,'1','4','3','2','1'),(129,4,'2','4','2','2','4'),(134,139,'2','4','3','1','4'),(135,24,'3','5','1','2','1'),(136,163,'4','3','5','5','1'),(139,25,'4','3','5','4','2'),(140,100,'4','1','5','3','3'),(143,43,'5','3','4','3','5'),(144,149,'2','2','5','5','2'),(145,30,'3','1','4','2','2'),(146,17,'4','4','5','3','2'),(149,69,'2','5','3','3','1'),(151,131,'1','4','3','4','4'),(155,42,'3','1','1','2','2'),(157,139,'4','3','3','4','3'),(158,34,'1','4','2','5','3'),(159,169,'5','3','3','1','1'),(160,172,'1','4','1','3','1'),(161,149,'1','5','3','1','2'),(162,143,'3','3','2','3','3'),(163,2,'5','1','4','4','1'),(164,125,'4','1','4','3','2'),(165,35,'3','2','5','4','4'),(166,93,'3','3','2','3','4'),(167,21,'5','4','3','4','5'),(168,9,'3','4','3','1','3'),(170,103,'1','1','2','4','1'),(172,179,'4','5','2','1','1'),(173,52,'5','4','2','2','4'),(175,177,'3','5','2','4','4'),(176,101,'4','3','2','2','5'),(177,52,'1','3','5','2','4'),(178,7,'5','3','5','4','5'),(179,174,'2','1','5','2','1'),(180,22,'3','1','3','1','3'),(181,180,'5','4','1','1','3'),(182,45,'4','5','4','3','5'),(183,151,'2','3','3','5','2'),(184,121,'1','3','1','2','4'),(185,107,'3','5','5','4','4'),(187,58,'5','2','4','3','1'),(188,143,'2','4','5','1','4'),(189,75,'1','3','5','2','3'),(190,32,'4','4','2','4','3'),(193,59,'2','1','4','1','4'),(194,55,'1','5','2','2','3'),(195,71,'2','5','2','3','1'),(196,107,'1','1','4','1','3'),(197,160,'5','4','2','1','1'),(198,43,'5','3','2','3','3'),(199,111,'3','1','3','3','2'),(200,41,'1','4','4','1','5'),(202,101,'1','5','5','5','5'),(205,88,'2','2','5','1','1'),(206,125,'5','5','1','5','2'),(207,72,'4','5','2','3','4'),(209,63,'4','3','5','3','4'),(211,143,'3','5','2','2','3'),(212,49,'2','2','3','5','2'),(216,70,'3','3','2','2','4');
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
INSERT INTO `role_of_personel_on_event` VALUES (3,1,'technical'),(29,1,'technical'),(66,1,'technical'),(119,1,'technical'),(151,1,'technical'),(65,1,'security'),(84,1,'security'),(93,1,'security'),(144,1,'security'),(154,1,'security'),(12,1,'support'),(142,1,'support'),(70,2,'technical'),(78,2,'technical'),(91,2,'technical'),(129,2,'technical'),(173,2,'technical'),(22,2,'security'),(60,2,'security'),(141,2,'security'),(170,2,'security'),(180,2,'security'),(24,2,'support'),(93,2,'support'),(16,3,'technical'),(34,3,'technical'),(59,3,'technical'),(139,3,'technical'),(178,3,'technical'),(90,3,'security'),(141,3,'security'),(151,3,'security'),(181,3,'security'),(187,3,'security'),(132,3,'support'),(133,3,'support'),(34,4,'technical'),(117,4,'technical'),(158,4,'technical'),(162,4,'technical'),(198,4,'technical'),(16,4,'security'),(84,4,'security'),(100,4,'security'),(107,4,'security'),(189,4,'security'),(153,4,'support'),(174,4,'support'),(30,5,'technical'),(34,5,'technical'),(165,5,'technical'),(167,5,'technical'),(179,5,'technical'),(28,5,'security'),(94,5,'security'),(104,5,'security'),(145,5,'security'),(162,5,'security'),(101,5,'support'),(183,5,'support'),(48,6,'technical'),(84,6,'technical'),(99,6,'technical'),(123,6,'technical'),(181,6,'technical'),(4,6,'security'),(80,6,'security'),(96,6,'security'),(119,6,'security'),(194,6,'security'),(59,6,'support'),(73,6,'support'),(75,7,'technical'),(92,7,'technical'),(113,7,'technical'),(123,7,'technical'),(151,7,'technical'),(2,7,'security'),(62,7,'security'),(93,7,'security'),(120,7,'security'),(173,7,'security'),(153,7,'support'),(194,7,'support'),(19,8,'technical'),(58,8,'technical'),(100,8,'technical'),(142,8,'technical'),(195,8,'technical'),(5,8,'security'),(28,8,'security'),(92,8,'security'),(96,8,'security'),(193,8,'security'),(4,8,'support'),(97,8,'support'),(1,9,'technical'),(31,9,'technical'),(90,9,'technical'),(119,9,'technical'),(167,9,'technical'),(18,9,'security'),(33,9,'security'),(73,9,'security'),(107,9,'security'),(124,9,'security'),(153,9,'security'),(35,9,'support'),(96,9,'support'),(48,10,'technical'),(65,10,'technical'),(96,10,'technical'),(130,10,'technical'),(134,10,'technical'),(15,10,'security'),(52,10,'security'),(57,10,'security'),(72,10,'security'),(93,10,'security'),(58,10,'support'),(108,10,'support'),(30,11,'technical'),(35,11,'technical'),(159,11,'technical'),(176,11,'technical'),(198,11,'technical'),(17,11,'security'),(25,11,'security'),(43,11,'security'),(91,11,'security'),(118,11,'security'),(146,11,'security'),(37,11,'support'),(125,11,'support'),(25,12,'technical'),(68,12,'technical'),(69,12,'technical'),(152,12,'technical'),(177,12,'technical'),(27,12,'security'),(41,12,'security'),(83,12,'security'),(160,12,'security'),(198,12,'security'),(58,12,'support'),(81,12,'support'),(48,13,'technical'),(49,13,'technical'),(56,13,'technical'),(83,13,'technical'),(177,13,'technical'),(42,13,'security'),(126,13,'security'),(149,13,'security'),(157,13,'security'),(160,13,'security'),(163,13,'security'),(85,13,'support'),(114,13,'support'),(12,14,'technical'),(29,14,'technical'),(44,14,'technical'),(63,14,'technical'),(68,14,'technical'),(77,14,'security'),(78,14,'security'),(82,14,'security'),(87,14,'security'),(90,14,'security'),(146,14,'security'),(97,14,'support'),(117,14,'support'),(30,15,'technical'),(42,15,'technical'),(80,15,'technical'),(136,15,'technical'),(185,15,'technical'),(22,15,'security'),(61,15,'security'),(116,15,'security'),(123,15,'security'),(187,15,'security'),(200,15,'security'),(8,15,'support'),(19,15,'support'),(12,16,'technical'),(127,16,'technical'),(128,16,'technical'),(181,16,'technical'),(198,16,'technical'),(8,16,'security'),(18,16,'security'),(40,16,'security'),(44,16,'security'),(62,16,'security'),(178,16,'security'),(85,16,'support'),(157,16,'support'),(59,17,'technical'),(114,17,'technical'),(134,17,'technical'),(136,17,'technical'),(191,17,'technical'),(32,17,'security'),(37,17,'security'),(99,17,'security'),(122,17,'security'),(196,17,'security'),(5,17,'support'),(74,17,'support'),(40,18,'technical'),(46,18,'technical'),(62,18,'technical'),(111,18,'technical'),(171,18,'technical'),(19,18,'security'),(47,18,'security'),(100,18,'security'),(166,18,'security'),(176,18,'security'),(183,18,'support'),(185,18,'support'),(8,19,'technical'),(75,19,'technical'),(119,19,'technical'),(159,19,'technical'),(186,19,'technical'),(62,19,'security'),(92,19,'security'),(103,19,'security'),(113,19,'security'),(141,19,'security'),(145,19,'security'),(39,19,'support'),(175,19,'support'),(1,20,'technical'),(113,20,'technical'),(114,20,'technical'),(135,20,'technical'),(178,20,'technical'),(45,20,'security'),(52,20,'security'),(74,20,'security'),(86,20,'security'),(88,20,'security'),(125,20,'security'),(101,20,'support'),(150,20,'support'),(17,21,'technical'),(49,21,'technical'),(117,21,'technical'),(125,21,'technical'),(149,21,'technical'),(79,21,'security'),(88,21,'security'),(141,21,'security'),(163,21,'security'),(200,21,'security'),(109,21,'support'),(173,21,'support'),(42,22,'technical'),(65,22,'technical'),(111,22,'technical'),(140,22,'technical'),(172,22,'technical'),(7,22,'security'),(22,22,'security'),(33,22,'security'),(97,22,'security'),(145,22,'security'),(93,22,'support'),(146,22,'support'),(11,23,'technical'),(101,23,'technical'),(103,23,'technical'),(109,23,'technical'),(116,23,'technical'),(13,23,'security'),(48,23,'security'),(52,23,'security'),(106,23,'security'),(138,23,'security'),(33,23,'support'),(94,23,'support'),(22,24,'technical'),(38,24,'technical'),(79,24,'technical'),(97,24,'technical'),(154,24,'technical'),(10,24,'security'),(29,24,'security'),(98,24,'security'),(118,24,'security'),(142,24,'security'),(73,24,'support'),(93,24,'support'),(37,25,'technical'),(41,25,'technical'),(83,25,'technical'),(168,25,'technical'),(189,25,'technical'),(8,25,'security'),(9,25,'security'),(47,25,'security'),(72,25,'security'),(150,25,'security'),(183,25,'security'),(36,25,'support'),(69,25,'support'),(105,26,'technical'),(111,26,'technical'),(153,26,'technical'),(172,26,'technical'),(190,26,'technical'),(50,26,'security'),(57,26,'security'),(67,26,'security'),(82,26,'security'),(175,26,'security'),(48,26,'support'),(160,26,'support'),(48,27,'technical'),(157,27,'technical'),(174,27,'technical'),(177,27,'technical'),(198,27,'technical'),(4,27,'security'),(25,27,'security'),(54,27,'security'),(61,27,'security'),(63,27,'security'),(173,27,'security'),(76,27,'support'),(102,27,'support'),(5,28,'technical'),(22,28,'technical'),(30,28,'technical'),(67,28,'technical'),(125,28,'technical'),(13,28,'security'),(37,28,'security'),(44,28,'security'),(145,28,'security'),(148,28,'security'),(187,28,'security'),(43,28,'support'),(48,28,'support'),(29,29,'technical'),(106,29,'technical'),(122,29,'technical'),(146,29,'technical'),(197,29,'technical'),(48,29,'security'),(76,29,'security'),(142,29,'security'),(184,29,'security'),(198,29,'security'),(18,29,'support'),(123,29,'support'),(1,30,'technical'),(39,30,'technical'),(74,30,'technical'),(123,30,'technical'),(173,30,'technical'),(95,30,'security'),(102,30,'security'),(152,30,'security'),(168,30,'security'),(172,30,'security'),(185,30,'security'),(108,30,'support'),(114,30,'support'),(52,31,'technical'),(82,31,'technical'),(163,31,'technical'),(182,31,'technical'),(200,31,'technical'),(79,31,'security'),(111,31,'security'),(152,31,'security'),(154,31,'security'),(165,31,'security'),(66,31,'support'),(185,31,'support'),(59,32,'technical'),(90,32,'technical'),(167,32,'technical'),(179,32,'technical'),(185,32,'technical'),(10,32,'security'),(12,32,'security'),(85,32,'security'),(133,32,'security'),(174,32,'security'),(5,32,'support'),(168,32,'support'),(31,33,'technical'),(50,33,'technical'),(154,33,'technical'),(168,33,'technical'),(194,33,'technical'),(33,33,'security'),(45,33,'security'),(74,33,'security'),(80,33,'security'),(141,33,'security'),(124,33,'support'),(127,33,'support'),(33,34,'technical'),(50,34,'technical'),(88,34,'technical'),(106,34,'technical'),(150,34,'technical'),(6,34,'security'),(79,34,'security'),(91,34,'security'),(102,34,'security'),(107,34,'security'),(114,34,'support'),(168,34,'support'),(66,35,'technical'),(81,35,'technical'),(116,35,'technical'),(148,35,'technical'),(150,35,'technical'),(13,35,'security'),(69,35,'security'),(151,35,'security'),(187,35,'security'),(197,35,'security'),(182,35,'support'),(192,35,'support'),(48,36,'technical'),(69,36,'technical'),(78,36,'technical'),(172,36,'technical'),(180,36,'technical'),(23,36,'security'),(49,36,'security'),(58,36,'security'),(110,36,'security'),(193,36,'security'),(72,36,'support'),(127,36,'support'),(33,37,'technical'),(52,37,'technical'),(104,37,'technical'),(165,37,'technical'),(197,37,'technical'),(32,37,'security'),(99,37,'security'),(108,37,'security'),(112,37,'security'),(198,37,'security'),(37,37,'support'),(155,37,'support'),(2,38,'technical'),(81,38,'technical'),(83,38,'technical'),(99,38,'technical'),(148,38,'technical'),(8,38,'security'),(10,38,'security'),(18,38,'security'),(123,38,'security'),(145,38,'security'),(128,38,'support'),(193,38,'support'),(118,39,'technical'),(135,39,'technical'),(149,39,'technical'),(153,39,'technical'),(183,39,'technical'),(47,39,'security'),(53,39,'security'),(62,39,'security'),(72,39,'security'),(138,39,'security'),(127,39,'support'),(195,39,'support'),(20,40,'technical'),(40,40,'technical'),(130,40,'technical'),(153,40,'technical'),(190,40,'technical'),(19,40,'security'),(23,40,'security'),(68,40,'security'),(94,40,'security'),(136,40,'security'),(186,40,'security'),(98,40,'support'),(104,40,'support'),(27,41,'technical'),(85,41,'technical'),(99,41,'technical'),(149,41,'technical'),(182,41,'technical'),(21,41,'security'),(47,41,'security'),(60,41,'security'),(143,41,'security'),(146,41,'security'),(40,41,'support'),(178,41,'support'),(51,42,'technical'),(68,42,'technical'),(74,42,'technical'),(103,42,'technical'),(181,42,'technical'),(4,42,'security'),(110,42,'security'),(112,42,'security'),(175,42,'security'),(191,42,'security'),(127,42,'support'),(141,42,'support'),(51,43,'technical'),(52,43,'technical'),(84,43,'technical'),(89,43,'technical'),(146,43,'technical'),(6,43,'security'),(17,43,'security'),(116,43,'security'),(120,43,'security'),(143,43,'security'),(149,43,'security'),(140,43,'support'),(148,43,'support'),(21,44,'technical'),(46,44,'technical'),(52,44,'technical'),(171,44,'technical'),(198,44,'technical'),(5,44,'security'),(36,44,'security'),(57,44,'security'),(59,44,'security'),(75,44,'security'),(53,44,'support'),(195,44,'support'),(37,45,'technical'),(68,45,'technical'),(96,45,'technical'),(99,45,'technical'),(183,45,'technical'),(1,45,'security'),(71,45,'security'),(119,45,'security'),(140,45,'security'),(173,45,'security'),(191,45,'security'),(80,45,'support'),(177,45,'support'),(52,46,'technical'),(102,46,'technical'),(107,46,'technical'),(127,46,'technical'),(133,46,'technical'),(17,46,'security'),(20,46,'security'),(23,46,'security'),(165,46,'security'),(200,46,'security'),(40,46,'support'),(116,46,'support'),(35,47,'technical'),(84,47,'technical'),(93,47,'technical'),(112,47,'technical'),(154,47,'technical'),(46,47,'security'),(79,47,'security'),(128,47,'security'),(147,47,'security'),(169,47,'security'),(197,47,'security'),(28,47,'support'),(95,47,'support'),(33,48,'technical'),(43,48,'technical'),(49,48,'technical'),(50,48,'technical'),(140,48,'technical'),(57,48,'security'),(61,48,'security'),(62,48,'security'),(177,48,'security'),(181,48,'security'),(12,48,'support'),(180,48,'support'),(31,49,'technical'),(55,49,'technical'),(73,49,'technical'),(106,49,'technical'),(163,49,'technical'),(6,49,'security'),(80,49,'security'),(125,49,'security'),(162,49,'security'),(185,49,'security'),(128,49,'support'),(196,49,'support'),(19,50,'technical'),(76,50,'technical'),(145,50,'technical'),(148,50,'technical'),(192,50,'technical'),(8,50,'security'),(60,50,'security'),(129,50,'security'),(161,50,'security'),(173,50,'security'),(22,50,'support'),(108,50,'support'),(12,51,'technical'),(23,51,'technical'),(60,51,'technical'),(120,51,'technical'),(157,51,'technical'),(53,51,'security'),(134,51,'security'),(139,51,'security'),(164,51,'security'),(167,51,'security'),(6,51,'support'),(174,51,'support'),(14,52,'technical'),(54,52,'technical'),(109,52,'technical'),(113,52,'technical'),(141,52,'technical'),(6,52,'security'),(16,52,'security'),(18,52,'security'),(33,52,'security'),(150,52,'security'),(120,52,'support'),(172,52,'support'),(12,53,'technical'),(43,53,'technical'),(133,53,'technical'),(178,53,'technical'),(194,53,'technical'),(2,53,'security'),(29,53,'security'),(78,53,'security'),(122,53,'security'),(138,53,'security'),(125,53,'support'),(140,53,'support'),(19,54,'technical'),(42,54,'technical'),(48,54,'technical'),(176,54,'technical'),(194,54,'technical'),(93,54,'security'),(110,54,'security'),(112,54,'security'),(120,54,'security'),(182,54,'security'),(111,54,'support'),(143,54,'support'),(24,55,'technical'),(68,55,'technical'),(69,55,'technical'),(153,55,'technical'),(192,55,'technical'),(9,55,'security'),(62,55,'security'),(83,55,'security'),(90,55,'security'),(111,55,'security'),(121,55,'security'),(22,55,'support'),(197,55,'support'),(36,56,'technical'),(88,56,'technical'),(115,56,'technical'),(122,56,'technical'),(183,56,'technical'),(44,56,'security'),(98,56,'security'),(139,56,'security'),(141,56,'security'),(142,56,'security'),(77,56,'support'),(103,56,'support'),(36,57,'technical'),(61,57,'technical'),(96,57,'technical'),(124,57,'technical'),(131,57,'technical'),(51,57,'security'),(87,57,'security'),(113,57,'security'),(126,57,'security'),(175,57,'security'),(91,57,'support'),(193,57,'support'),(50,58,'technical'),(91,58,'technical'),(117,58,'technical'),(183,58,'technical'),(193,58,'technical'),(99,58,'security'),(109,58,'security'),(113,58,'security'),(159,58,'security'),(185,58,'security'),(188,58,'security'),(42,58,'support'),(187,58,'support'),(2,59,'technical'),(43,59,'technical'),(68,59,'technical'),(138,59,'technical'),(164,59,'technical'),(96,59,'security'),(159,59,'security'),(171,59,'security'),(193,59,'security'),(198,59,'security'),(49,59,'support'),(91,59,'support'),(13,60,'technical'),(25,60,'technical'),(56,60,'technical'),(89,60,'technical'),(179,60,'technical'),(3,60,'security'),(35,60,'security'),(39,60,'security'),(62,60,'security'),(151,60,'security'),(200,60,'security'),(124,60,'support'),(144,60,'support'),(70,61,'technical'),(84,61,'technical'),(132,61,'technical'),(161,61,'technical'),(170,61,'technical'),(10,61,'security'),(55,61,'security'),(75,61,'security'),(167,61,'security'),(180,61,'security'),(5,61,'support'),(182,61,'support'),(106,62,'technical'),(132,62,'technical'),(133,62,'technical'),(136,62,'technical'),(141,62,'technical'),(2,62,'security'),(18,62,'security'),(54,62,'security'),(178,62,'security'),(187,62,'security'),(23,62,'support'),(193,62,'support'),(11,63,'technical'),(50,63,'technical'),(55,63,'technical'),(58,63,'technical'),(155,63,'technical'),(27,63,'security'),(56,63,'security'),(84,63,'security'),(99,63,'security'),(165,63,'security'),(180,63,'support'),(185,63,'support'),(9,64,'technical'),(88,64,'technical'),(144,64,'technical'),(170,64,'technical'),(184,64,'technical'),(30,64,'security'),(34,64,'security'),(67,64,'security'),(95,64,'security'),(124,64,'security'),(125,64,'security'),(32,64,'support'),(158,64,'support'),(1,65,'technical'),(14,65,'technical'),(63,65,'technical'),(117,65,'technical'),(138,65,'technical'),(26,65,'security'),(45,65,'security'),(96,65,'security'),(100,65,'security'),(103,65,'security'),(187,65,'security'),(61,65,'support'),(71,65,'support'),(44,66,'technical'),(58,66,'technical'),(60,66,'technical'),(63,66,'technical'),(102,66,'technical'),(21,66,'security'),(133,66,'security'),(152,66,'security'),(153,66,'security'),(159,66,'security'),(56,66,'support'),(82,66,'support'),(6,67,'technical'),(67,67,'technical'),(93,67,'technical'),(100,67,'technical'),(127,67,'technical'),(68,67,'security'),(138,67,'security'),(158,67,'security'),(160,67,'security'),(182,67,'security'),(69,67,'support'),(139,67,'support'),(22,68,'technical'),(49,68,'technical'),(128,68,'technical'),(137,68,'technical'),(184,68,'technical'),(47,68,'security'),(79,68,'security'),(92,68,'security'),(99,68,'security'),(141,68,'security'),(197,68,'security'),(179,68,'support'),(185,68,'support'),(22,69,'technical'),(28,69,'technical'),(46,69,'technical'),(121,69,'technical'),(167,69,'technical'),(35,69,'security'),(60,69,'security'),(142,69,'security'),(146,69,'security'),(162,69,'security'),(32,69,'support'),(191,69,'support'),(60,70,'technical'),(95,70,'technical'),(126,70,'technical'),(127,70,'technical'),(149,70,'technical'),(41,70,'security'),(58,70,'security'),(109,70,'security'),(130,70,'security'),(156,70,'security'),(188,70,'security'),(28,70,'support'),(81,70,'support'),(9,71,'technical'),(33,71,'technical'),(34,71,'technical'),(88,71,'technical'),(127,71,'technical'),(67,71,'security'),(70,71,'security'),(83,71,'security'),(151,71,'security'),(161,71,'security'),(174,71,'security'),(123,71,'support'),(162,71,'support'),(68,72,'technical'),(72,72,'technical'),(73,72,'technical'),(77,72,'technical'),(90,72,'technical'),(45,72,'security'),(54,72,'security'),(91,72,'security'),(161,72,'security'),(176,72,'security'),(6,72,'support'),(128,72,'support'),(17,73,'technical'),(58,73,'technical'),(108,73,'technical'),(129,73,'technical'),(159,73,'technical'),(16,73,'security'),(34,73,'security'),(118,73,'security'),(119,73,'security'),(120,73,'security'),(157,73,'security'),(72,73,'support'),(164,73,'support'),(3,74,'technical'),(54,74,'technical'),(87,74,'technical'),(119,74,'technical'),(192,74,'technical'),(19,74,'security'),(71,74,'security'),(127,74,'security'),(141,74,'security'),(150,74,'security'),(90,74,'support'),(199,74,'support'),(28,75,'technical'),(44,75,'technical'),(83,75,'technical'),(140,75,'technical'),(198,75,'technical'),(15,75,'security'),(18,75,'security'),(29,75,'security'),(64,75,'security'),(148,75,'security'),(79,75,'support'),(93,75,'support'),(22,76,'technical'),(76,76,'technical'),(128,76,'technical'),(183,76,'technical'),(199,76,'technical'),(65,76,'security'),(100,76,'security'),(152,76,'security'),(176,76,'security'),(178,76,'security'),(26,76,'support'),(46,76,'support'),(102,77,'technical'),(120,77,'technical'),(130,77,'technical'),(179,77,'technical'),(182,77,'technical'),(13,77,'security'),(20,77,'security'),(87,77,'security'),(89,77,'security'),(101,77,'security'),(74,77,'support'),(110,77,'support'),(51,78,'technical'),(126,78,'technical'),(164,78,'technical'),(171,78,'technical'),(176,78,'technical'),(55,78,'security'),(80,78,'security'),(162,78,'security'),(194,78,'security'),(199,78,'security'),(67,78,'support'),(85,78,'support'),(12,79,'technical'),(41,79,'technical'),(173,79,'technical'),(174,79,'technical'),(192,79,'technical'),(9,79,'security'),(19,79,'security'),(73,79,'security'),(90,79,'security'),(126,79,'security'),(145,79,'security'),(22,79,'support'),(109,79,'support'),(3,80,'technical'),(57,80,'technical'),(157,80,'technical'),(180,80,'technical'),(193,80,'technical'),(38,80,'security'),(56,80,'security'),(103,80,'security'),(118,80,'security'),(181,80,'security'),(141,80,'support'),(184,80,'support'),(37,81,'technical'),(76,81,'technical'),(141,81,'technical'),(144,81,'technical'),(185,81,'technical'),(34,81,'security'),(63,81,'security'),(72,81,'security'),(112,81,'security'),(130,81,'security'),(152,81,'security'),(51,81,'support'),(69,81,'support'),(18,82,'technical'),(33,82,'technical'),(67,82,'technical'),(97,82,'technical'),(172,82,'technical'),(52,82,'security'),(71,82,'security'),(92,82,'security'),(117,82,'security'),(159,82,'security'),(141,82,'support'),(174,82,'support'),(114,83,'technical'),(166,83,'technical'),(167,83,'technical'),(178,83,'technical'),(198,83,'technical'),(1,83,'security'),(56,83,'security'),(65,83,'security'),(75,83,'security'),(101,83,'security'),(112,83,'security'),(102,83,'support'),(179,83,'support'),(36,84,'technical'),(40,84,'technical'),(108,84,'technical'),(127,84,'technical'),(132,84,'technical'),(96,84,'security'),(111,84,'security'),(120,84,'security'),(123,84,'security'),(142,84,'security'),(200,84,'security'),(24,84,'support'),(131,84,'support'),(2,85,'technical'),(14,85,'technical'),(124,85,'technical'),(132,85,'technical'),(176,85,'technical'),(8,85,'security'),(34,85,'security'),(50,85,'security'),(82,85,'security'),(151,85,'security'),(161,85,'security'),(120,85,'support'),(125,85,'support'),(82,86,'technical'),(115,86,'technical'),(131,86,'technical'),(142,86,'technical'),(199,86,'technical'),(46,86,'security'),(68,86,'security'),(83,86,'security'),(90,86,'security'),(117,86,'security'),(164,86,'support'),(180,86,'support'),(13,87,'technical'),(124,87,'technical'),(157,87,'technical'),(168,87,'technical'),(171,87,'technical'),(4,87,'security'),(30,87,'security'),(52,87,'security'),(67,87,'security'),(94,87,'security'),(95,87,'support'),(107,87,'support'),(38,88,'technical'),(120,88,'technical'),(151,88,'technical'),(156,88,'technical'),(187,88,'technical'),(63,88,'security'),(94,88,'security'),(108,88,'security'),(128,88,'security'),(189,88,'security'),(126,88,'support'),(200,88,'support'),(18,89,'technical'),(19,89,'technical'),(131,89,'technical'),(152,89,'technical'),(189,89,'technical'),(72,89,'security'),(83,89,'security'),(129,89,'security'),(150,89,'security'),(191,89,'security'),(198,89,'security'),(45,89,'support'),(75,89,'support'),(27,90,'technical'),(45,90,'technical'),(98,90,'technical'),(147,90,'technical'),(191,90,'technical'),(78,90,'security'),(123,90,'security'),(151,90,'security'),(155,90,'security'),(165,90,'security'),(112,90,'support'),(152,90,'support'),(35,91,'technical'),(49,91,'technical'),(79,91,'technical'),(114,91,'technical'),(198,91,'technical'),(69,91,'security'),(73,91,'security'),(86,91,'security'),(116,91,'security'),(139,91,'security'),(65,91,'support'),(92,91,'support'),(15,92,'technical'),(20,92,'technical'),(33,92,'technical'),(104,92,'technical'),(156,92,'technical'),(10,92,'security'),(76,92,'security'),(114,92,'security'),(157,92,'security'),(167,92,'security'),(170,92,'support'),(183,92,'support'),(1,93,'technical'),(2,93,'technical'),(27,93,'technical'),(46,93,'technical'),(176,93,'technical'),(80,93,'security'),(111,93,'security'),(154,93,'security'),(170,93,'security'),(174,93,'security'),(7,93,'support'),(137,93,'support'),(13,94,'technical'),(119,94,'technical'),(134,94,'technical'),(168,94,'technical'),(173,94,'technical'),(29,94,'security'),(91,94,'security'),(128,94,'security'),(129,94,'security'),(188,94,'security'),(7,94,'support'),(123,94,'support'),(45,95,'technical'),(78,95,'technical'),(85,95,'technical'),(147,95,'technical'),(196,95,'technical'),(62,95,'security'),(92,95,'security'),(110,95,'security'),(118,95,'security'),(119,95,'security'),(107,95,'support'),(160,95,'support'),(40,96,'technical'),(76,96,'technical'),(93,96,'technical'),(108,96,'technical'),(164,96,'technical'),(43,96,'security'),(57,96,'security'),(58,96,'security'),(123,96,'security'),(132,96,'security'),(115,96,'support'),(118,96,'support'),(21,97,'technical'),(27,97,'technical'),(57,97,'technical'),(62,97,'technical'),(69,97,'technical'),(5,97,'security'),(41,97,'security'),(81,97,'security'),(90,97,'security'),(92,97,'security'),(194,97,'security'),(59,97,'support'),(142,97,'support'),(9,98,'technical'),(58,98,'technical'),(147,98,'technical'),(168,98,'technical'),(195,98,'technical'),(29,98,'security'),(67,98,'security'),(101,98,'security'),(102,98,'security'),(139,98,'security'),(157,98,'security'),(11,98,'support'),(111,98,'support'),(8,99,'technical'),(120,99,'technical'),(177,99,'technical'),(178,99,'technical'),(189,99,'technical'),(13,99,'security'),(24,99,'security'),(94,99,'security'),(133,99,'security'),(148,99,'security'),(187,99,'security'),(68,99,'support'),(167,99,'support'),(27,100,'technical'),(39,100,'technical'),(53,100,'technical'),(82,100,'technical'),(147,100,'technical'),(12,100,'security'),(16,100,'security'),(25,100,'security'),(109,100,'security'),(163,100,'security'),(76,100,'support'),(84,100,'support'),(35,101,'technical'),(41,101,'technical'),(52,101,'technical'),(77,101,'technical'),(160,101,'technical'),(31,101,'security'),(109,101,'security'),(114,101,'security'),(115,101,'security'),(193,101,'security'),(7,101,'support'),(195,101,'support'),(61,102,'technical'),(121,102,'technical'),(134,102,'technical'),(161,102,'technical'),(170,102,'technical'),(47,102,'security'),(131,102,'security'),(145,102,'security'),(156,102,'security'),(159,102,'security'),(172,102,'security'),(66,102,'support'),(109,102,'support'),(14,103,'technical'),(26,103,'technical'),(103,103,'technical'),(169,103,'technical'),(200,103,'technical'),(32,103,'security'),(45,103,'security'),(48,103,'security'),(116,103,'security'),(156,103,'security'),(95,103,'support'),(114,103,'support'),(23,104,'technical'),(136,104,'technical'),(140,104,'technical'),(162,104,'technical'),(196,104,'technical'),(91,104,'security'),(99,104,'security'),(145,104,'security'),(151,104,'security'),(170,104,'security'),(193,104,'security'),(12,104,'support'),(146,104,'support'),(38,105,'technical'),(40,105,'technical'),(118,105,'technical'),(182,105,'technical'),(198,105,'technical'),(65,105,'security'),(66,105,'security'),(67,105,'security'),(126,105,'security'),(131,105,'security'),(74,105,'support'),(192,105,'support'),(17,106,'technical'),(99,106,'technical'),(141,106,'technical'),(165,106,'technical'),(185,106,'technical'),(1,106,'security'),(30,106,'security'),(145,106,'security'),(170,106,'security'),(177,106,'security'),(115,106,'support'),(132,106,'support'),(84,107,'technical'),(144,107,'technical'),(160,107,'technical'),(164,107,'technical'),(176,107,'technical'),(73,107,'security'),(114,107,'security'),(129,107,'security'),(158,107,'security'),(181,107,'security'),(5,107,'support'),(172,107,'support'),(6,108,'technical'),(15,108,'technical'),(37,108,'technical'),(99,108,'technical'),(142,108,'technical'),(23,108,'security'),(42,108,'security'),(62,108,'security'),(93,108,'security'),(103,108,'security'),(176,108,'security'),(50,108,'support'),(168,108,'support'),(18,109,'technical'),(21,109,'technical'),(105,109,'technical'),(116,109,'technical'),(140,109,'technical'),(60,109,'security'),(94,109,'security'),(126,109,'security'),(157,109,'security'),(178,109,'security'),(1,109,'support'),(86,109,'support'),(91,110,'technical'),(122,110,'technical'),(132,110,'technical'),(158,110,'technical'),(197,110,'technical'),(19,110,'security'),(78,110,'security'),(102,110,'security'),(105,110,'security'),(154,110,'security'),(170,110,'security'),(127,110,'support'),(194,110,'support'),(17,111,'technical'),(79,111,'technical'),(117,111,'technical'),(161,111,'technical'),(181,111,'technical'),(4,111,'security'),(7,111,'security'),(11,111,'security'),(24,111,'security'),(84,111,'security'),(28,111,'support'),(78,111,'support'),(23,112,'technical'),(24,112,'technical'),(99,112,'technical'),(113,112,'technical'),(158,112,'technical'),(37,112,'security'),(88,112,'security'),(94,112,'security'),(108,112,'security'),(200,112,'security'),(27,112,'support'),(110,112,'support'),(12,113,'technical'),(16,113,'technical'),(27,113,'technical'),(30,113,'technical'),(87,113,'technical'),(28,113,'security'),(79,113,'security'),(93,113,'security'),(99,113,'security'),(189,113,'security'),(180,113,'support'),(186,113,'support'),(74,114,'technical'),(90,114,'technical'),(161,114,'technical'),(164,114,'technical'),(168,114,'technical'),(20,114,'security'),(30,114,'security'),(76,114,'security'),(115,114,'security'),(120,114,'security'),(72,114,'support'),(177,114,'support'),(20,115,'technical'),(39,115,'technical'),(65,115,'technical'),(130,115,'technical'),(183,115,'technical'),(19,115,'security'),(136,115,'security'),(154,115,'security'),(161,115,'security'),(182,115,'security'),(60,115,'support'),(111,115,'support'),(51,116,'technical'),(64,116,'technical'),(113,116,'technical'),(181,116,'technical'),(187,116,'technical'),(6,116,'security'),(40,116,'security'),(59,116,'security'),(75,116,'security'),(146,116,'security'),(177,116,'security'),(84,116,'support'),(126,116,'support'),(32,117,'technical'),(145,117,'technical'),(152,117,'technical'),(166,117,'technical'),(200,117,'technical'),(57,117,'security'),(65,117,'security'),(81,117,'security'),(167,117,'security'),(195,117,'security'),(66,117,'support'),(94,117,'support'),(5,118,'technical'),(133,118,'technical'),(141,118,'technical'),(179,118,'technical'),(188,118,'technical'),(49,118,'security'),(59,118,'security'),(120,118,'security'),(167,118,'security'),(168,118,'security'),(180,118,'security'),(39,118,'support'),(70,118,'support'),(75,119,'technical'),(123,119,'technical'),(140,119,'technical'),(161,119,'technical'),(168,119,'technical'),(35,119,'security'),(49,119,'security'),(101,119,'security'),(159,119,'security'),(164,119,'security'),(83,119,'support'),(128,119,'support'),(7,120,'technical'),(49,120,'technical'),(79,120,'technical'),(116,120,'technical'),(144,120,'technical'),(10,120,'security'),(110,120,'security'),(160,120,'security'),(173,120,'security'),(182,120,'security'),(97,120,'support'),(105,120,'support'),(44,121,'technical'),(55,121,'technical'),(77,121,'technical'),(129,121,'technical'),(184,121,'technical'),(8,121,'security'),(50,121,'security'),(135,121,'security'),(141,121,'security'),(189,121,'security'),(133,121,'support'),(194,121,'support'),(62,122,'technical'),(115,122,'technical'),(117,122,'technical'),(124,122,'technical'),(135,122,'technical'),(15,122,'security'),(20,122,'security'),(84,122,'security'),(148,122,'security'),(190,122,'security'),(54,122,'support'),(92,122,'support'),(20,123,'technical'),(44,123,'technical'),(80,123,'technical'),(100,123,'technical'),(105,123,'technical'),(96,123,'security'),(110,123,'security'),(151,123,'security'),(191,123,'security'),(200,123,'security'),(119,123,'support'),(167,123,'support'),(44,124,'technical'),(98,124,'technical'),(103,124,'technical'),(116,124,'technical'),(181,124,'technical'),(61,124,'security'),(80,124,'security'),(125,124,'security'),(139,124,'security'),(161,124,'security'),(184,124,'support'),(187,124,'support'),(112,125,'technical'),(115,125,'technical'),(181,125,'technical'),(191,125,'technical'),(199,125,'technical'),(34,125,'security'),(58,125,'security'),(130,125,'security'),(131,125,'security'),(177,125,'security'),(134,125,'support'),(140,125,'support'),(18,126,'technical'),(23,126,'technical'),(87,126,'technical'),(96,126,'technical'),(144,126,'technical'),(31,126,'security'),(33,126,'security'),(47,126,'security'),(108,126,'security'),(188,126,'security'),(9,126,'support'),(49,126,'support'),(98,127,'technical'),(128,127,'technical'),(132,127,'technical'),(169,127,'technical'),(176,127,'technical'),(24,127,'security'),(86,127,'security'),(91,127,'security'),(93,127,'security'),(122,127,'security'),(29,127,'support'),(82,127,'support'),(138,128,'technical'),(143,128,'technical'),(160,128,'technical'),(164,128,'technical'),(199,128,'technical'),(19,128,'security'),(34,128,'security'),(58,128,'security'),(65,128,'security'),(118,128,'security'),(140,128,'security'),(12,128,'support'),(93,128,'support'),(63,129,'technical'),(72,129,'technical'),(83,129,'technical'),(133,129,'technical'),(160,129,'technical'),(41,129,'security'),(81,129,'security'),(121,129,'security'),(137,129,'security'),(189,129,'security'),(31,129,'support'),(144,129,'support'),(3,130,'technical'),(78,130,'technical'),(138,130,'technical'),(160,130,'technical'),(161,130,'technical'),(21,130,'security'),(35,130,'security'),(39,130,'security'),(93,130,'security'),(163,130,'security'),(48,130,'support'),(103,130,'support'),(5,131,'technical'),(28,131,'technical'),(54,131,'technical'),(151,131,'technical'),(154,131,'technical'),(10,131,'security'),(66,131,'security'),(120,131,'security'),(152,131,'security'),(162,131,'security'),(73,131,'support'),(83,131,'support'),(5,132,'technical'),(66,132,'technical'),(84,132,'technical'),(93,132,'technical'),(179,132,'technical'),(23,132,'security'),(36,132,'security'),(68,132,'security'),(140,132,'security'),(181,132,'security'),(12,132,'support'),(64,132,'support'),(5,133,'technical'),(72,133,'technical'),(98,133,'technical'),(192,133,'technical'),(196,133,'technical'),(68,133,'security'),(77,133,'security'),(83,133,'security'),(107,133,'security'),(172,133,'security'),(141,133,'support'),(195,133,'support'),(21,134,'technical'),(52,134,'technical'),(79,134,'technical'),(108,134,'technical'),(187,134,'technical'),(126,134,'security'),(127,134,'security'),(163,134,'security'),(165,134,'security'),(197,134,'security'),(14,134,'support'),(90,134,'support'),(10,135,'technical'),(54,135,'technical'),(115,135,'technical'),(177,135,'technical'),(195,135,'technical'),(36,135,'security'),(43,135,'security'),(66,135,'security'),(158,135,'security'),(163,135,'security'),(127,135,'support'),(165,135,'support'),(20,136,'technical'),(64,136,'technical'),(98,136,'technical'),(100,136,'technical'),(107,136,'technical'),(86,136,'security'),(103,136,'security'),(113,136,'security'),(182,136,'security'),(183,136,'security'),(19,136,'support'),(143,136,'support'),(37,137,'technical'),(84,137,'technical'),(116,137,'technical'),(145,137,'technical'),(159,137,'technical'),(33,137,'security'),(85,137,'security'),(124,137,'security'),(127,137,'security'),(138,137,'security'),(59,137,'support'),(158,137,'support'),(7,138,'technical'),(37,138,'technical'),(57,138,'technical'),(95,138,'technical'),(124,138,'technical'),(29,138,'security'),(93,138,'security'),(117,138,'security'),(171,138,'security'),(178,138,'security'),(52,138,'support'),(150,138,'support'),(25,139,'technical'),(47,139,'technical'),(79,139,'technical'),(161,139,'technical'),(164,139,'technical'),(8,139,'security'),(11,139,'security'),(109,139,'security'),(127,139,'security'),(191,139,'security'),(167,139,'support'),(194,139,'support'),(30,140,'technical'),(52,140,'technical'),(78,140,'technical'),(109,140,'technical'),(153,140,'technical'),(40,140,'security'),(69,140,'security'),(151,140,'security'),(152,140,'security'),(176,140,'security'),(23,140,'support'),(117,140,'support'),(23,141,'technical'),(52,141,'technical'),(61,141,'technical'),(151,141,'technical'),(192,141,'technical'),(48,141,'security'),(49,141,'security'),(81,141,'security'),(102,141,'security'),(131,141,'security'),(117,141,'support'),(119,141,'support'),(60,142,'technical'),(109,142,'technical'),(141,142,'technical'),(143,142,'technical'),(199,142,'technical'),(43,142,'security'),(78,142,'security'),(91,142,'security'),(151,142,'security'),(186,142,'security'),(134,142,'support'),(171,142,'support'),(19,143,'technical'),(62,143,'technical'),(142,143,'technical'),(143,143,'technical'),(165,143,'technical'),(6,143,'security'),(109,143,'security'),(125,143,'security'),(153,143,'security'),(190,143,'security'),(9,143,'support'),(84,143,'support'),(76,144,'technical'),(101,144,'technical'),(169,144,'technical'),(174,144,'technical'),(180,144,'technical'),(75,144,'security'),(96,144,'security'),(102,144,'security'),(109,144,'security'),(135,144,'security'),(8,144,'support'),(82,144,'support'),(5,145,'technical'),(68,145,'technical'),(122,145,'technical'),(141,145,'technical'),(170,145,'technical'),(24,145,'security'),(52,145,'security'),(58,145,'security'),(96,145,'security'),(119,145,'security'),(148,145,'security'),(36,145,'support'),(93,145,'support'),(76,146,'technical'),(104,146,'technical'),(119,146,'technical'),(146,146,'technical'),(177,146,'technical'),(2,146,'security'),(70,146,'security'),(113,146,'security'),(128,146,'security'),(137,146,'security'),(139,146,'security'),(4,146,'support'),(107,146,'support'),(40,147,'technical'),(88,147,'technical'),(91,147,'technical'),(134,147,'technical'),(194,147,'technical'),(12,147,'security'),(41,147,'security'),(68,147,'security'),(90,147,'security'),(101,147,'security'),(123,147,'security'),(65,147,'support'),(162,147,'support'),(48,148,'technical'),(93,148,'technical'),(117,148,'technical'),(150,148,'technical'),(185,148,'technical'),(32,148,'security'),(46,148,'security'),(52,148,'security'),(155,148,'security'),(181,148,'security'),(121,148,'support'),(130,148,'support'),(57,149,'technical'),(90,149,'technical'),(100,149,'technical'),(174,149,'technical'),(198,149,'technical'),(28,149,'security'),(43,149,'security'),(54,149,'security'),(151,149,'security'),(179,149,'security'),(73,149,'support'),(145,149,'support'),(20,150,'technical'),(59,150,'technical'),(111,150,'technical'),(139,150,'technical'),(141,150,'technical'),(38,150,'security'),(91,150,'security'),(144,150,'security'),(179,150,'security'),(185,150,'security'),(2,150,'support'),(55,150,'support'),(116,151,'technical'),(136,151,'technical'),(144,151,'technical'),(155,151,'technical'),(194,151,'technical'),(34,151,'security'),(36,151,'security'),(86,151,'security'),(125,151,'security'),(143,151,'security'),(186,151,'security'),(20,151,'support'),(198,151,'support'),(85,152,'technical'),(110,152,'technical'),(155,152,'technical'),(172,152,'technical'),(180,152,'technical'),(17,152,'security'),(22,152,'security'),(39,152,'security'),(59,152,'security'),(129,152,'security'),(198,152,'security'),(48,152,'support'),(127,152,'support');
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(9,9,1),(10,10,0),(11,11,0),(12,12,0),(13,13,0),(14,14,0),(15,15,0),(16,16,0),(17,17,0),(18,18,0),(19,19,1),(20,20,0),(21,21,0),(22,22,1),(23,23,0),(24,24,0),(25,25,0),(26,26,0),(27,27,0),(28,28,0),(29,29,0),(30,30,0),(31,31,0),(32,32,0),(33,33,0),(34,34,0),(35,35,0),(36,36,0),(37,37,0),(38,38,0),(39,39,0),(40,40,1),(41,41,0),(42,42,0),(43,43,0),(44,44,0),(45,45,0),(46,46,0),(47,47,0),(48,48,0),(49,49,0),(50,50,0),(51,51,0),(52,52,1),(53,53,0),(54,54,0),(55,55,0),(56,56,0),(57,57,0),(58,58,0),(59,59,0),(60,60,0),(61,61,0),(62,62,0),(63,63,0),(64,64,0),(65,65,0),(66,66,0),(67,67,0),(68,68,0),(69,69,0),(70,70,0),(71,71,0),(72,72,0),(73,73,0),(74,74,0),(75,75,0),(76,76,0),(77,77,0),(78,78,0),(79,79,0),(80,80,0),(81,81,0),(82,82,0),(83,83,0),(84,84,0),(85,85,1),(86,86,0),(87,87,0),(88,88,0),(89,89,0),(90,90,1),(91,91,0),(92,92,0),(93,93,0),(94,94,0),(95,95,0),(96,96,0),(97,97,0),(98,98,0),(99,99,0),(100,100,0),(101,101,0),(102,102,0),(103,103,1),(104,104,0),(105,105,0),(106,106,1),(107,107,0),(108,108,0),(109,109,0),(110,110,0),(111,111,0),(112,112,0),(113,113,1),(114,114,0),(115,115,0),(116,116,0),(117,117,0),(118,118,0),(119,119,0),(120,120,1),(121,121,0),(122,122,0),(123,123,0),(124,124,0),(125,125,0),(126,126,0),(127,127,0),(128,128,0),(129,129,1),(130,130,0),(131,131,0),(132,132,0),(133,133,0),(134,134,0),(135,135,0),(136,136,0),(137,137,0),(138,138,0),(139,139,0),(140,140,0),(141,141,1),(142,142,0),(143,143,0),(144,144,1),(145,145,0),(146,146,1),(147,147,0),(148,148,0),(149,149,0),(150,150,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technical_equipment`
--

LOCK TABLES `technical_equipment` WRITE;
/*!40000 ALTER TABLE `technical_equipment` DISABLE KEYS */;
INSERT INTO `technical_equipment` VALUES (1,1,'Microphone','Teacher four lawyer common. Occur or third.'),(2,1,'Special effect','Range actually back never along specific old. Conference reflect debate form help. Song sort just where.'),(3,1,'Speaker','Put across big my for land score. Church trip once floor.\nReal politics player industry talk establish stop room. Store technology fight realize push Congress bank.'),(4,1,'Speaker','Front find bad market first those experience. Half available occur reason it. Walk power evening tonight plant.\nHuman walk prepare sit positive again population.'),(5,1,'Microphone','Music he base. Yeah draw assume just each operation military. Left establish both top morning enjoy face.'),(6,1,'Speaker','Fly onto argue good staff newspaper admit care. Family travel form traditional.'),(7,1,'Light','Tend talk seek wife street.\nLeave walk itself agreement prepare. Draw long off concern today edge black. Long set where indeed. Inside specific all down type somebody.'),(8,1,'Light','Including hear reflect range piece some. Important individual would. Responsibility ok food name ball get our conference.'),(9,1,'Light','Method half able material east energy piece. Happy outside spend discussion.'),(10,2,'Speaker','If trip phone notice second police. Which member set financial. Dark may then week against.'),(11,2,'Microphone','Agency commercial night find at. Throughout book authority half art. Old exist lay wonder least develop lay. Without happy dark form trip form food.'),(12,2,'Special effect','Statement stage send. Exactly big organization could. Away upon number worry recent art.\nClearly feel reason affect upon. Kind possible visit current skill matter. Police cut myself fund.'),(13,2,'Console','Board add help order TV front water.\nYou summer debate anyone customer sit. Agent give human fear nation front why.'),(14,2,'Light','Current western list stay send. Political no factor election size will.'),(15,2,'Microphone','Black drug per although memory town improve. Analysis space consumer painting contain miss.'),(16,2,'Light','Fear red commercial week positive recent become. Hand born increase actually.\nAlready beautiful owner pretty sign soldier since.'),(17,2,'Microphone','Bar heavy long office late line. Gas design matter view all leave.'),(18,2,'Light','Career only back full here state line science. Star TV region at me list audience.'),(19,2,'Light','Arrive modern agent before. Section stage either service. Per beat eye the.'),(20,2,'Console','Choose effect condition couple foot. Fact charge court bank ago. Role data region stop citizen season computer drop.'),(21,3,'Speaker','Voice care stock treatment provide. Agent surface effect some. Form skin near senior.\nOf your special. Social while for may.'),(22,3,'Light','Hear president why design. Why radio star choice. Open hospital dark him sense quickly Republican.'),(23,3,'Microphone','Information reflect interesting. Cause have tonight effort never treat speech.'),(24,3,'Microphone','Cover newspaper writer only audience. Raise anyone church game per dog. Dinner fear opportunity scientist. New card hospital inside language.'),(25,3,'Light','Peace become avoid. Practice nice nothing require physical stop reflect. Yourself budget leave there.'),(26,3,'Speaker','Alone his close more clearly occur direction. Member trouble guess letter sure population region feeling. Letter itself author particular.'),(27,4,'Light','Month city you participant. Street idea paper more. Sister management network both.'),(28,4,'Microphone','Why year be contain popular like. Safe the general prevent activity activity development magazine.'),(29,4,'Console','South official various bad himself analysis. Keep until pressure pressure.\nBrother any it during whose play blue. Determine rule city international community once seek.'),(30,4,'Speaker','Join some for trouble south. Everything floor possible want simple fly. Here rate thus. Fear four candidate southern well TV together population.'),(31,4,'Speaker','Nature impact whole use. Onto staff third a begin. Give three traditional everyone per nature production attorney. Protect consider ground trial city.'),(32,4,'Console','Remember cost nor quickly pressure wonder fly. Fight TV with human society act continue.'),(33,4,'Console','Ground specific tax later. Help determine show top with.\nWe happy son. Investment specific spend thank least firm commercial agree.'),(34,4,'Light','Situation establish name share. Perhaps without writer wall exist.\nLead away yourself tree response. Part man soon those inside certainly drug.'),(35,4,'Light','Cold everyone cause. Himself sense sure piece indeed American. City say itself individual himself.'),(36,5,'Microphone','Southern simple house trouble. Be why financial yourself ask box. Day same method network however. Under bar study sort toward.'),(37,5,'Special effect','Message Republican seem during writer least health. Take personal Mrs perform.\nStock short economy. Kitchen style move skin certainly describe.'),(38,5,'Speaker','Itself for very standard feel least. Organization itself dark me his part blood. Blue all bank arm account laugh its.'),(39,5,'Speaker','Thank start less join. Dream born poor wife employee.\nStep particularly magazine central film and certainly. Material check soldier just bag walk table property.'),(40,5,'Light','Expect throw have nature matter well.\nTest question use guess program perhaps customer. Final away floor whole teach feeling.'),(41,5,'Special effect','Ball consumer relate. Serious pattern project prevent. Girl student carry own wrong.'),(42,5,'Light','City necessary blue without too performance sometimes personal. Option magazine country first choose data.'),(43,5,'Special effect','Course maintain adult economic per occur. Opportunity medical soon lay which night level film. Ten step others protect policy here.'),(44,5,'Console','Model probably candidate name democratic example. Note generation player mission those. Manage avoid seat ten even single pattern.'),(45,6,'Console','Peace building poor health. Their what today ability option.'),(46,6,'Speaker','They who page begin professor material should. Suddenly education well explain economic role.\nMillion away summer individual herself science. When two than enough other many whole.'),(47,6,'Console','Music administration low new. Sister my good hope month our author. Hospital poor son beyond thus beautiful.'),(48,6,'Speaker','Daughter project me receive campaign. Provide industry mission cost partner. Must writer rich mission recently central safe.'),(49,6,'Speaker','Most late total center wait well. Benefit perform edge girl language traditional wife.\nPerson look young simply. Issue bag give.\nUnit treat until. Adult affect whether difference contain.'),(50,7,'Console','Nearly indeed close mind policy provide really poor. Doctor check relate black house.\nMan together travel go executive environment. Training gas newspaper company plan feel.'),(51,7,'Special effect','Institution reach great agreement take. Physical pay field ground TV real. Apply baby throw system television author.'),(52,7,'Light','Support maintain family stop meeting. Sport new heavy message threat discover. Year realize major science turn. Impact animal world although.'),(53,7,'Special effect','Pressure black economic free movie. Network month total campaign including garden since.'),(54,7,'Speaker','Assume against argue significant school social record. Arrive rock you push simple involve. Between part ability human.'),(55,7,'Speaker','Modern order exactly. College as team cut cup because line.'),(56,7,'Light','Base color although be authority. Avoid building computer four man treatment pick.'),(57,7,'Speaker','Join interesting sense check color talk theory. Leader bring thousand.'),(58,7,'Microphone','Police space case material bit. Upon alone bank training maintain for Republican. Tough month ten still without.'),(59,7,'Speaker','Family it act anyone likely house eye foreign. Let become room discussion whether nature safe.\nSignificant should church their boy. Pay week return show look court.'),(60,8,'Console','Always clear fine door low attention. Base control single seat society sister try program.\nPaper himself health study state different budget former.'),(61,8,'Speaker','Cell beat those seem. In establish several read.'),(62,8,'Speaker','Government among when reduce pressure member. Employee decade price natural trouble fly prevent. Tax push market catch pretty listen size.'),(63,8,'Special effect','Suggest list age message how themselves magazine simple. Son social happen exactly. Talk PM century deal drop.'),(64,8,'Speaker','North course himself single. Exist talk professional none forget hair paper end.'),(65,8,'Console','Fire act indicate figure speak certainly several. Size fire two hard will.'),(66,8,'Light','Another start best live significant. His military quite significant low mention environmental.\nEffort long decide top. Answer firm history direction happy voice expert.'),(67,8,'Speaker','Time buy recent institution their anyone. Year yet local so recent improve. So low budget pressure do.'),(68,8,'Microphone','Major their form hair upon citizen. Answer money realize technology budget. Describe and door very compare.\nFact our rise sometimes.'),(69,8,'Special effect','Apply because art put different place single. Line performance organization risk.'),(70,9,'Special effect','Those next different leave million camera. Positive read list past identify responsibility.\nInvestment wind hard our. Business four daughter interesting.'),(71,9,'Microphone','Call moment rest staff design effort. Success as environment picture. Region education cell out information.'),(72,9,'Console','President follow determine along recognize. Area call office consumer. Early piece game produce kitchen career yet eat.'),(73,9,'Light','Accept production science after. Public ahead Republican than north.\nPer simply bit science.\nAny become investment or.'),(74,9,'Speaker','Pressure kid hundred worry. Back watch present child.\nAbility woman new. Picture million factor yeah.\nCard size road gun. Pretty either without.'),(75,9,'Special effect','Either crime age at baby. Positive hear see state many generation within. Simple let project training.\nYard your project. Since red people we.'),(76,9,'Console','Charge long budget specific month improve either. Pattern will effect adult doctor both sense.'),(77,9,'Special effect','Represent protect across magazine seat phone. Because edge do.\nImage skill find arrive. Health evidence key long news example senior. Discover nearly all could now.'),(78,9,'Microphone','Parent suffer high nothing oil number. View customer answer indeed stuff. Leader themselves now.\nSomebody lay reach standard three spend east.'),(79,9,'Microphone','Show some anyone. Guy could according doctor brother. Pm wife item individual former.\nSeem cover tonight leader. Anything light task manage.'),(80,9,'Microphone','Machine task see mission serious girl ready drop. Even woman operation special husband like. Effort opportunity open rate conference.'),(81,9,'Speaker','Effort truth paper why already. Outside performance arrive deep tell could. Blood six indicate public could view more likely.'),(82,9,'Microphone','Step best claim culture who mean war. Society marriage bar traditional how member itself.'),(83,9,'Speaker','Republican television magazine strategy up enjoy. Maintain dog summer hold city important.'),(84,9,'Console','Assume forget who. Land real side interesting friend worry push.\nPeople race child college question. It indeed apply walk season coach tax.'),(85,10,'Speaker','Either boy east wide policy hotel. Involve throughout beautiful perhaps firm high. Dark necessary page Mrs child scientist group prevent.'),(86,10,'Special effect','Paper manager meeting serious analysis everybody necessary. Democratic language teacher company grow model. Important expect town still five hand sea.'),(87,10,'Microphone','Himself ready improve nor over or enough son. Assume say voice near something response fight.'),(88,10,'Microphone','Nature deep member fill. Me itself worry each. Little notice employee card ten.'),(89,10,'Microphone','Fight picture political allow. House heavy nature I big hotel. Community born see performance rich career.'),(90,11,'Speaker','Shoulder team reflect go concern. Trip life change arm. Either young job sure lose color rest able.'),(91,11,'Microphone','Them degree less attorney. Keep resource movement action someone plan question. Tax smile floor brother since pull.'),(92,11,'Microphone','Computer level official east health north themselves. Worker think reflect or during land.'),(93,11,'Console','Hot their discover each parent. Mother product center they action. Away cell range laugh place cost sea.'),(94,11,'Microphone','Fine nice should. Paper run speak back if main one.'),(95,11,'Light','Line culture human page agreement. Heart rule fish everybody. Final future husband south customer ok anything paper.'),(96,11,'Console','Space data peace if admit. Organization buy task.'),(97,11,'Console','Beautiful floor community. Or than fight amount. Day tonight take. Thought discover question give.\nWear floor across wife. Although democratic change throw.'),(98,11,'Console','Hard machine specific rather head follow most. Later try ball sport arrive.\nEither bit think who customer type recent. Head agency ever region direction interview.'),(99,11,'Microphone','Under main into family couple weight. Call clear act fly really each kind.\nSubject hotel music third eye do if. Commercial happy goal name.'),(100,11,'Speaker','Condition explain yes be. Suddenly summer he. Side project sport peace fly raise. Store sport attorney gas.'),(101,12,'Light','Glass remain each long three carry shoulder. Not blood prove west necessary woman raise. Court show might hospital business spring.'),(102,12,'Light','Suggest another draw upon. Work box since size.\nSet identify American later spend. Better develop set radio pressure century age.'),(103,12,'Light','After hard ball Democrat. Amount investment value child. Tv quickly down five.\nRelate better although happen far financial. Try out main example.'),(104,12,'Speaker','Age significant everyone series four common. Arrive few when. Effort allow suffer evidence food according week crime.'),(105,12,'Speaker','Standard more because bank. President pressure society course sport student. Campaign production other could poor.'),(106,12,'Speaker','History walk tax audience. Both us race want piece.\nNothing relate none east wife. Really for language environment with difference.'),(107,12,'Special effect','Debate time and help to fear. Course action play the she where. Some go wear court enjoy stop.\nStrategy imagine memory cost boy month top.'),(108,12,'Console','Again debate protect husband push author. Note sit where on.'),(109,12,'Microphone','Especially let base day name including allow. Beyond person sing middle stay maybe Mr anyone.'),(110,12,'Microphone','Question region eat yeah together set mother. Color hot state set sing. Lead east citizen indeed phone sea.'),(111,12,'Console','Tough give Congress. Number approach occur over who.'),(112,12,'Special effect','Ask most score argue chance call two. Fast forget draw activity than action.'),(113,12,'Light','Wrong yes participant today. Ahead value high fish suggest investment.\nSouth life former down. Week subject process.'),(114,12,'Special effect','Result author ahead. Similar leave notice not how. Decade do interest stop road.'),(115,12,'Speaker','Fall executive employee into production campaign air TV. Image radio nothing learn nor today together. Position minute they happen science fall office.'),(116,13,'Microphone','Our while last institution community less. Significant thought true work.'),(117,13,'Light','Trade although food. My want between.'),(118,13,'Special effect','Continue case nature.\nInstead she what trouble. Effort vote a per like walk. Anyone impact less so real wait.'),(119,13,'Speaker','Those green general strategy five maybe ball. Site east guy strategy trade. Opportunity will member garden statement.'),(120,13,'Console','Surface matter clear name. Enjoy service area wide itself miss. Across man trouble concern.'),(121,13,'Console','Court although either option drive run.'),(122,13,'Light','Discussion wall social become strong. Fast and can. Behind amount since radio bag day.'),(123,13,'Light','Low mission gas firm. Stuff call no pull level. Recognize able down break assume management company across.'),(124,13,'Microphone','Require option why culture ground thus be add.'),(125,13,'Console','Either else wife culture accept. Eight woman network film need everybody help. Many wrong research any break. There detail pattern foreign.'),(126,13,'Console','Side travel however speech threat wide seek. Cut reach long science night weight past.'),(127,13,'Speaker','Best spend nor table. New decade officer finish well. Foreign what stop seem.\nManager eat focus live wait. Month consumer human base those consumer.'),(128,13,'Light','All hold inside choice help mother. Environment three reveal end range baby onto live.'),(129,14,'Speaker','Hard with key white whom soon cut. Husband bar risk represent always bar tend this. Already political play teach identify.\nIt down this girl over. Commercial win memory understand.'),(130,14,'Microphone','Enjoy everyone cover dog. Technology main several.'),(131,14,'Special effect','Side girl traditional accept western. Often dog source ball shake agreement. Him practice man threat own.'),(132,14,'Light','Plant pay there another great put black amount. Up price something television interview affect type.'),(133,14,'Microphone','Husband life current him between drug special rock. Address than form power. Word inside enjoy people year off part center.'),(134,14,'Special effect','Place cultural risk respond exist upon art.'),(135,14,'Special effect','Hold little we easy. Represent arrive should student. Interest through staff must.\nPolice little role nothing until huge. Edge white step simply instead.'),(136,14,'Special effect','Factor everybody growth age. Life pressure beautiful moment interview animal.'),(137,14,'Console','Red middle employee whole relationship between. Everyone office population research economic.'),(138,14,'Light','She our matter thought watch. Imagine night card deal fish message. If today company trade listen administration follow. Management challenge attack also center bill deal.'),(139,14,'Microphone','Position according give be stay dog art own. Fight store hit no big. Drive those fall life attack.'),(140,14,'Speaker','Upon guess girl player himself run worry. Can both section number. Protect place offer student.'),(141,14,'Special effect','Fall center artist itself offer life debate. Human upon see house occur. East student professor training check affect.'),(142,15,'Special effect','Future add eye.\nAway this choose draw study control. Morning fight who baby. Admit movie several material those population. Fill performance direction most response activity.'),(143,15,'Light','Might collection certain energy increase throughout. Former college style type poor.'),(144,15,'Console','Positive lose player check fill accept. Cup task serious positive almost peace notice. However court really identify decade.'),(145,15,'Light','New imagine assume parent. During smile service between significant go mind sense.'),(146,15,'Light','Weight establish region fast. About government stop reduce market try. Tonight reflect challenge right onto fall.'),(147,15,'Console','Member realize machine manager around. Decide why treat quickly pattern specific.'),(148,15,'Console','Condition direction direction ten page them voice. Simply several our consider day make.'),(149,15,'Microphone','Sign goal night behavior music. Weight to development them everything tough factor. For later enough produce quality family situation.'),(150,15,'Microphone','Report trip wife group everybody him boy. Activity about expert since turn popular build care. Spend under government happen modern base determine.'),(151,16,'Special effect','Unit white fund catch beat. Say age benefit local across treat society. Central physical computer save experience.'),(152,16,'Console','Choice alone likely none like positive. Class staff rather while pattern now.\nLanguage practice book business people firm. Suggest cup prevent occur half home full.'),(153,16,'Special effect','Space matter protect fall play effort daughter.\nDifferent drop star challenge. Bring you enjoy political stage. Service guess later win.'),(154,16,'Speaker','Work tax network especially truth contain. From child official campaign.\nWithin experience wonder decade use. Much past expert within head data.'),(155,16,'Light','Great close realize president. Cause Democrat upon too Mrs. Appear behavior guess population film. Situation pay personal every live.'),(156,16,'Special effect','Several bill easy guess front. Center music wish draw ago. Short control traditional region get evening.'),(157,16,'Special effect','Town account ready report paper beautiful. Environment other work care free his rule performance. More direction sign bar power.'),(158,16,'Special effect','Think here both. Call brother foreign project land energy cell. Fly hope truth method western result nice.\nAgreement all data speech same society.'),(159,16,'Speaker','Analysis scientist society election I the lot. Store contain before economic reflect water.'),(160,16,'Microphone','Keep give visit citizen himself unit friend and. Appear each look I chance business. This main save throw.'),(161,16,'Speaker','Current hour garden agent nature necessary. Better part why far.\nFirm develop leg far item. Impact or government care child. Nothing such short attorney tax.'),(162,16,'Speaker','Stop know fund interest image apply expert. Again there common purpose.\nCollection get western simple. Hair church week out.'),(163,16,'Speaker','Wind recently particularly maybe over generation activity. When college bar read war large especially institution. Occur movie certainly capital quickly what eight.'),(164,16,'Special effect','Special move pattern center office social own. Edge blue little professional study.'),(165,16,'Console','Much have compare focus. Travel girl blue. Voice throughout dark ahead feeling start.\nStreet attention together industry level after. Page call thousand music.'),(166,17,'Console','Country consider land trade everybody central. Clearly trouble together perform important meeting performance.'),(167,17,'Speaker','Ever probably itself life bring those. Total clearly mind responsibility door. Choice manager clear level.'),(168,17,'Special effect','Security treat culture national. Yeah someone condition personal style offer everyone everything.'),(169,17,'Speaker','High rather adult government. American share north above human reach play.'),(170,17,'Light','Fast five four deep physical. Particularly sea view. Responsibility walk recognize easy.'),(171,17,'Light','White exactly strategy style ready. Bank together coach cover always right.'),(172,17,'Light','Live pressure land study. Section just attention chair professor into.'),(173,17,'Microphone','Enough be involve. Within blue together central strong government benefit.'),(174,17,'Speaker','Tv ball at sometimes. Born for voice cause else.'),(175,17,'Speaker','Own mother contain lot. About attack without star four analysis both. Better civil nice whole toward job good.'),(176,17,'Special effect','Red program series might find beautiful. Prove news company personal recently law defense.\nMaybe find own sit. Member picture this woman happen young security.'),(177,17,'Special effect','Plant receive partner run. Never billion leg interview.'),(178,17,'Microphone','Traditional inside professor operation. Chance southern speech environment.\nWeek notice draw most. Seem finish man yes.'),(179,17,'Console','True gas have bring coach. Democratic commercial thing. How home week history drive church floor from.'),(180,18,'Console','Because can some trouble protect man. Bed small sound stock write.\nYeah kitchen land quality sport. Building fact their rich man size.'),(181,18,'Speaker','Place board employee crime on couple nor. Lay woman what half far. Especially ready how. Form human why picture professional take.'),(182,18,'Light','Minute role west after low fly word. Nearly fine conference. Morning story hit design bar.'),(183,18,'Console','Each reality from. Figure environmental total near possible camera work believe. Two word accept lose.'),(184,18,'Light','Return responsibility discussion.'),(185,18,'Console','Three run person daughter street three. Effect world fear from rich else. Report suddenly she seat heavy yes.\nCulture drug sign political him several. Avoid meeting long listen.'),(186,18,'Console','Move action analysis with serious address. Girl if eat save author.\nSuccessful especially always artist part leave. Ten although whom Republican.'),(187,19,'Special effect','War size matter yet to phone. Billion bill arrive weight fly condition class box. Form interesting key fish within.'),(188,19,'Microphone','Voice a me. Trial likely almost color suffer. Some author heart project.\nAnswer piece down. Policy officer require front plan dog. Voice toward listen shoulder. Friend increase happen.'),(189,19,'Console','Drop why speak model.\nMake former she they score method start. Class contain page.'),(190,19,'Special effect','Listen theory wait floor toward table. Cultural full over. Great computer decision perhaps serve street.'),(191,19,'Speaker','Blood about campaign find early. Per gas star rock.\nRequire who recent role general start big certainly. Admit far relate community.'),(192,19,'Console','Measure indeed direction note.\nParticularly song significant staff perhaps price market. Nice require technology. Risk rock together blood.'),(193,19,'Speaker','Close nation police prove. Resource serious into top share win care.\nDream reflect work cut star response floor. Individual hour law throw phone rather accept range.'),(194,19,'Speaker','How laugh than TV. Will total perhaps face off.\nSuccess often agree dog pass weight middle.'),(195,19,'Light','Away material national grow finally company. Present reason energy. Themselves the job during kind.'),(196,19,'Microphone','Discussion woman arrive nation inside seven something. Least standard step radio adult else.'),(197,19,'Speaker','Number baby chair. Throughout including effort particular population. Attention live thought. Thought yeah live television.'),(198,19,'Console','Network difficult pick bar she. Power table outside entire clear news receive money.'),(199,19,'Microphone','Suddenly dinner operation market win. Usually relationship ready onto note.\nStaff and respond office. Head affect still pick bag weight.'),(200,20,'Speaker','Impact begin bad resource case attention. Cause worker much effort threat next. Once current less ok service beat.'),(201,20,'Microphone','Late generation happy western nothing also.'),(202,20,'Speaker','Lead clearly road. Firm series cell responsibility without. Task soldier born cup anything.\nFormer across floor road detail voice. Song gun to doctor activity arrive policy.'),(203,20,'Console','Ever dog ok during have himself discussion. Debate heart red home because financial attorney.'),(204,20,'Special effect','Production dinner too first. Road war quite woman actually thank child.\nActually leg here word respond than.'),(205,20,'Light','End structure quite teach floor. Traditional structure do if exactly fast later store. Physical hour practice beautiful director. Budget entire theory performance.'),(206,21,'Light','Man one house research beat. Carry move guess blue improve listen return. How same generation pass dinner customer.'),(207,21,'Speaker','Serve feeling fill. Budget hundred finally focus not. Item out response husband. Where among world see room.'),(208,21,'Console','Lay model parent easy. Shoulder lay walk institution style what yeah.'),(209,21,'Light','Hope official lot cost development while.'),(210,21,'Console','Project Mr score deal box. Beautiful race choose film person job.'),(211,21,'Light','Although apply positive. Church test thousand. Always protect entire site concern require phone resource. Current state while thought late religious film.'),(212,21,'Speaker','List reduce drug member drive. Bed ground arm subject position region cut.'),(213,21,'Console','Article at audience strong industry.\nEye their increase man coach deep financial. Color cell catch on billion professional central. Like all purpose few suggest leg.'),(214,22,'Special effect','Seat factor amount today. Relate rich for movie task. Rule safe address that.'),(215,22,'Microphone','Hour half lead sell hotel morning war. Reduce as water. Three special full enjoy.'),(216,22,'Special effect','Free chance create cell common. Care yes certain develop authority remember PM.\nHusband ball guy if fly against. He better coach sure on want him. Career country star word only.'),(217,22,'Console','Alone short computer number south direction.\nDrop wait gun fight. Item on including outside see mean travel full.'),(218,22,'Console','Property yourself like music experience the view.'),(219,22,'Special effect','Everyone be red base near may.\nTonight professional then power tend bill tree. Land fact nor top sister.'),(220,22,'Speaker','Finally final back. Cold office lead area case tend take.'),(221,22,'Special effect','Through test go computer. Cut tough result yard fast simple. Animal water mother wife course find. This be determine his agency level.'),(222,23,'Microphone','Clear modern tonight religious beyond its. Method fill soldier sea growth practice later bring. Yes table see model young.'),(223,23,'Speaker','Popular our miss. Organization democratic who eat happy scene hour certain.\nNever provide fight beat. Color standard modern present. Carry middle social much.'),(224,23,'Special effect','Use trouble two big.\nImportant summer everything reality off director run hour. History really fight far. Dog east authority pass.\nThen face eat magazine eye TV. Level herself color feeling.'),(225,23,'Special effect','Admit hit trade then. Under other marriage work matter wall change voice. Degree you rule two according.'),(226,23,'Speaker','Laugh they other politics. Answer tough group large.\nLight send sister space. Game possible until pattern put short process. Finally short already model newspaper sell.'),(227,23,'Console','Follow star customer all. Economy skill where usually seat mouth. Young soon name different meeting.'),(228,23,'Console','Others economy travel season. Responsibility can them able allow boy else. No point according loss energy art.'),(229,24,'Light','Particular recent project across exist important detail why. Four issue matter much term research. Manager total foreign.'),(230,24,'Special effect','On close finish. Two stop outside and. Also PM loss girl we offer.'),(231,24,'Light','Company raise provide several recently. Writer very central process message writer realize. Ok several idea no charge sea staff. Local reflect before movement.'),(232,24,'Microphone','Down return able present wind owner want. Common know heart part scene current. Choice hope realize strategy customer. Pull church want claim rate worker participant.'),(233,24,'Special effect','Perhaps change heart animal both. Some soon own type among what adult.'),(234,24,'Light','Space sing full wife discuss. Daughter national now report would out dog. Here maybe market recently its.\nMedia teach play seven chair. Across truth hot per.'),(235,24,'Console','Know subject us within scene service. Season term early student wind now.\nWall cultural trade speech.'),(236,24,'Microphone','Paper seek discussion road. Education worker apply production.\nSay green seven list. Yeah in morning near one career. Some attorney result next.'),(237,24,'Console','Put use into last question. Certain owner series.\nMake factor nice part between. Of college book write glass describe. Deal where much yeah positive boy drop.'),(238,24,'Console','Or relate indicate action. We enjoy land.\nEveryone whom their nor city language ever trip. Low expect interview food car.'),(239,24,'Light','Like threat eight piece. Court anyone what week vote process.\nAlthough probably no often almost. Evening water age help.'),(240,25,'Microphone','Off red expert skill.\nForeign but even. Republican sound herself cause professional. Like already standard organization all key.'),(241,25,'Light','Peace pick idea soldier begin area. Bank follow teach. Hand country during instead police.'),(242,25,'Console','Figure garden any war night start through ground. Everyone sure act. Entire increase rise employee trial.'),(243,25,'Special effect','Sit probably west up task. Both assume term consider start. No do read remember news.'),(244,25,'Microphone','Ten truth term father easy direction sit. Cup energy film difference speech daughter change.'),(245,26,'Microphone','Painting son bring adult hard party. Two allow through interesting. Sometimes lose choose some because.'),(246,26,'Console','If stage offer resource source lot watch family. May else where. My case walk reach wide.'),(247,26,'Special effect','Property along example yes almost. Agency his rich. During dark sometimes firm. Clearly science response.'),(248,26,'Speaker','Then employee must inside prevent week body. None professor than difference PM. Leave traditional end.'),(249,26,'Speaker','Mean raise range similar entire wonder. International behavior book matter consider. Door official stand bar director against direction.'),(250,26,'Microphone','Why matter skin food north difference feeling. East simple truth try character surface never.'),(251,26,'Light','Door simple born fear race do. Population discover about person reality. Four good work fight address own series.'),(252,26,'Special effect','Task apply money. Pass plan certainly magazine. Day difference ago east.'),(253,26,'Speaker','Collection feeling treatment ok. Human whose nice record life sound.'),(254,27,'Light','Service shoulder under free article. Candidate fill boy.\nFive push other back treat they method wear. Others change offer must region.'),(255,27,'Light','Detail local catch south out participant really.\nWalk difference PM top necessary available shoulder fear.'),(256,27,'Speaker','Few second dark audience decide exist down black. Paper mind plan quite leader decide.'),(257,27,'Console','Enter teach gas behavior challenge yes probably. Six end probably political example citizen.\nSell appear remain here challenge run sea act. City note use between could hospital.'),(258,27,'Console','Last professional thus agency. Key hotel old of especially doctor next. Fly win television modern.'),(259,27,'Light','Head determine official sound tree career. Store never serious success last. Cold dark by opportunity pick house.\nCollege amount raise far arm.'),(260,27,'Microphone','Suffer score thousand learn attorney. Someone deal oil yes new. Information travel for feel east.'),(261,27,'Microphone','Citizen institution popular artist mother treatment state. After lot class goal nature service these.'),(262,27,'Special effect','Such mission better fill. Night take dog less spend. Rather sign so such quality speech analysis reduce. Single student medical realize.'),(263,27,'Microphone','Through nation soon full authority carry rate. Popular radio physical effect.'),(264,27,'Special effect','Sit thus trip few can during left song. Indeed list study. Compare Congress around improve chair. Agent type Democrat city result act.'),(265,27,'Console','Mr can his. After main relate simply Mr quite. Help along its like treat paper.\nBelieve son word alone system spend cover. Chair alone speak purpose almost.'),(266,28,'Console','Hair year easy lose. Myself writer area range cost officer former.'),(267,28,'Speaker','Baby seat American now house.\nFind bar rest decide return western better. Discover enough artist fact fact contain stock. Any west while brother.'),(268,28,'Special effect','Oil above question ability money very. Every notice control once. Rock everybody moment woman research short specific rest. Officer support me girl.'),(269,28,'Console','Sound take politics kid capital. Scientist form lot purpose dinner. War follow whose third black.'),(270,28,'Console','Yard health but knowledge either alone. Yeah black picture seek director program mouth.'),(271,28,'Special effect','Task home matter more without reality. Exactly science trip big action.'),(272,28,'Speaker','Leg boy good increase above huge. Send item second somebody.'),(273,28,'Console','Approach bring buy east. By two material student hundred at executive.'),(274,28,'Console','Doctor someone design exactly. Realize later future rise magazine chair.\nTheory culture west would expect family. His fund north enough sister.'),(275,28,'Light','Country area region public. Opportunity fire possible table two sound nothing.\nAgainst often always end. Actually east under. Far citizen individual education.'),(276,28,'Special effect','Environment under such matter threat. Beautiful public fund hot likely member thing. Behavior central worry officer.'),(277,28,'Microphone','Defense many lawyer thus nice. Democratic view wind power service reach affect help. Network box environment hear ten.'),(278,28,'Microphone','Degree mention poor debate family edge. College executive article offer shoulder top.'),(279,28,'Special effect','Rest resource star commercial successful as two treatment. Will safe or factor ball. Free receive send smile much scientist.'),(280,29,'Console','Its thousand those professional everything lawyer last. Point especially sign scientist.\nDiscussion writer machine stock data. Style just wait first history near economic.'),(281,29,'Special effect','Outside garden plan sound. Able what prove let.'),(282,29,'Microphone','Indeed model effect government move model many. Huge somebody tree then never.'),(283,29,'Light','Same woman member occur process his myself. Learn like past tough a college. Require point end none themselves doctor.'),(284,29,'Console','Couple then majority early skin then difficult technology. Listen finish arrive instead serve buy crime public.'),(285,29,'Speaker','Gun door generation break career fill. Cold where particularly others without allow opportunity miss. Ask expert available inside.'),(286,29,'Microphone','Change ready local but federal. Keep resource executive memory quite laugh.\nHeart traditional no own voice draw name. Main finish democratic after policy forward.'),(287,29,'Special effect','Age miss western medical. Employee each into sign. Near music yourself traditional little.'),(288,29,'Special effect','Stay capital today wrong.'),(289,29,'Console','Though work issue likely leg marriage. Such something painting reality. Ability TV ask thank admit.'),(290,30,'Special effect','Between million a believe.\nSort whether behind the rise fire.\nEat expect it worry across article mission. Often avoid set middle. Tv resource final want.'),(291,30,'Speaker','Note enjoy toward list five various onto.'),(292,30,'Microphone','Become wait southern kid appear. Under behavior situation anything. Let baby family she language.'),(293,30,'Special effect','Leg ready improve north according situation.\nSystem pass itself current once. Environment fly mean.\nA carry if sense. Serve skill best remember always.'),(294,30,'Light','Stage pick executive prepare anything help her south. Look grow significant interesting mouth bed as. Citizen your commercial quickly authority poor.'),(295,30,'Console','Head around race around nor eye consumer.\nEnd think scene long. Television miss few investment.'),(296,30,'Special effect','Again near staff six like option shake. Part care do should law choose health.\nFoot improve matter medical move ask especially population.'),(297,30,'Console','Chance wish book expert. Oil among open. Evening lead level second alone anything two.'),(298,30,'Light','Trouble time many hundred weight throughout on. Respond improve care camera argue central.'),(299,30,'Microphone','Data article best wait interesting pretty. Return appear yourself the research suggest.'),(300,30,'Microphone','Whether price clear region continue trouble past against. Follow sort its listen.'),(301,30,'Light','Nice color rock concern marriage society section three. Couple anything gas fund city contain.'),(302,30,'Microphone','Live I adult either admit nice. Election fire no. Agent owner fire skill. Piece type nothing he many a fund.');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_resale_matches`
--

LOCK TABLES `temp_resale_matches` WRITE;
/*!40000 ALTER TABLE `temp_resale_matches` DISABLE KEYS */;
INSERT INTO `temp_resale_matches` VALUES (1,36,120,53),(2,48,106,192),(3,78,144,68);
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
  `visitor_name` varchar(100) DEFAULT NULL,
  `visitor_last_name` varchar(100) DEFAULT NULL,
  `visitor_email` varchar(100) DEFAULT NULL,
  `visitor_telephone` varchar(20) DEFAULT NULL,
  `visitor_age` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticket_ID`),
  KEY `idx_ticket_visitor_event` (`visitor_ID`,`event_ID`),
  KEY `idx_ticket_event` (`event_ID`),
  KEY `idx_ticket_purchase_year_price` (`purchase_date`,`purchase_price`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`visitor_ID`) REFERENCES `visitor` (`visitor_ID`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,135,113,'0000000000017','backstage','2025-05-03',91.81,'I-BAN',0,'Sara','Watts','mollywilliams@example.net','+1-782-634-1201x2278',27),(2,30,133,'0000000000024','general_admission','2018-08-04',87.10,'credit_card',1,'Shaun','Gray','ttravis@example.com','(585)585-5446x69225',44),(3,14,4,'0000000000031','general_admission','2017-09-19',24.33,'debit_card',1,'Stephanie','Thomas','larsonkimberly@example.org','5073473409',18),(4,102,1,'0000000000048','backstage','2023-07-13',30.26,'credit_card',1,'Katrina','Martin','csmith@example.net','+1-830-574-3546x058',40),(5,101,40,'0000000000055','backstage','2023-07-12',71.34,'I-BAN',0,'Erika','Watkins','adamsmargaret@example.net','914.878.2294x488',58),(6,116,148,'0000000000062','general_admission','2024-06-22',71.19,'debit_card',0,'Michael','Williams','gramirez@example.org','842.277.9310x97301',32),(7,129,8,'0000000000079','general_admission','2024-06-22',98.08,'debit_card',1,'Yvonne','Daniels','john98@example.com','765-818-1007',53),(8,151,141,'0000000000086','backstage','2025-04-30',51.13,'I-BAN',0,'Matthew','Shaw','yjohnson@example.com','7008149829',32),(9,82,74,'0000000000093','backstage','2021-07-18',34.41,'debit_card',1,'Nicole','Thomas','wallacewilliam@example.com','+1-833-512-8868x132',55),(10,136,146,'0000000000109','backstage','2025-05-01',45.60,'I-BAN',0,'Lisa','Carrillo','jonesanthony@example.com','5947273476',37),(11,39,80,'0000000000116','backstage','2019-07-04',47.63,'I-BAN',1,'Brittany','West','susanhernandez@example.org','615-955-6445',44),(12,96,128,'0000000000123','backstage','2022-09-08',44.78,'credit_card',1,'David','Shaw','bryangentry@example.net','821.604.6295',29),(13,82,9,'0000000000130','general_admission','2021-07-20',42.46,'debit_card',1,'Eileen','Hamilton','timothygonzalez@example.com','(566)293-1058x668',43),(14,113,100,'0000000000147','general_admission','2024-06-24',90.83,'credit_card',1,'Richard','Schultz','tgreene@example.com','3918178498',51),(15,134,19,'0000000000154','backstage','2025-04-30',70.85,'debit_card',0,'Stacy','Everett','watsontodd@example.org','737-365-9842',18),(16,78,127,'0000000000161','backstage','2021-07-17',52.94,'I-BAN',1,'Patrick','Bates','jennifer57@example.net','001-465-560-5943x331',28),(17,66,132,'0000000000178','backstage','2020-08-27',38.50,'I-BAN',1,'Jessica','Taylor','harmonkenneth@example.net','(386)390-1236x934',54),(18,43,102,'0000000000185','general_admission','2019-07-05',62.64,'credit_card',1,'Peter','Williams','panderson@example.com','(397)249-0475x14443',41),(19,25,128,'0000000000192','general_admission','2018-07-31',31.33,'I-BAN',0,'David','Shaw','bryangentry@example.net','821.604.6295',29),(20,77,4,'0000000000208','backstage','2021-07-17',87.97,'credit_card',1,'Stephanie','Thomas','larsonkimberly@example.org','5073473409',18),(21,78,43,'0000000000215','general_admission','2021-07-16',91.36,'debit_card',1,'Cindy','Kennedy','sandy09@example.com','(434)251-9715x49830',50),(22,119,50,'0000000000222','general_admission','2024-06-22',67.83,'I-BAN',1,'Caroline','House','maria58@example.com','(790)854-6569',18),(23,75,32,'0000000000239','general_admission','2020-08-30',76.26,'debit_card',1,'Carmen','Moore','palmermichael@example.net','8626768738',34),(24,52,39,'0000000000246','general_admission','2019-07-04',79.32,'I-BAN',1,'John','Anderson','riostroy@example.net','(241)373-8728',55),(25,152,130,'0000000000253','backstage','2025-05-03',32.74,'debit_card',0,'Dylan','Reynolds','hillpeter@example.org','8535243580',56),(26,83,42,'0000000000260','general_admission','2021-07-16',47.47,'I-BAN',1,'Amanda','Jacobs','gwilson@example.com','619.294.5929',26),(27,123,77,'0000000000277','backstage','2024-06-24',82.19,'debit_card',1,'Tiffany','Hill','dmejia@example.com','(665)220-2258x4679',25),(28,93,19,'0000000000284','general_admission','2022-09-07',37.24,'I-BAN',1,'Stacy','Everett','watsontodd@example.org','737-365-9842',18),(29,43,62,'0000000000291','backstage','2019-07-05',21.94,'credit_card',1,'Albert','Smith','twoods@example.com','231-411-5787x265',48),(30,40,70,'0000000000307','general_admission','2019-07-04',49.95,'credit_card',1,'Sarah','Carter','juanlynn@example.net','6589506011',59),(31,51,64,'0000000000314','backstage','2019-07-05',95.34,'I-BAN',1,'Jason','Brown','millercarl@example.net','280-299-5003x21763',24),(32,150,15,'0000000000321','general_admission','2025-04-30',91.21,'debit_card',0,'Alex','Brown','prestonsherry@example.com','001-677-328-4961x230',52),(33,26,52,'0000000000338','backstage','2018-08-01',25.85,'debit_card',1,'Jamie','Jones','stricklandmark@example.com','(355)877-0163x054',18),(34,88,47,'0000000000345','general_admission','2022-09-10',68.63,'debit_card',1,'Erik','Martin','angeldavid@example.com','(765)801-3264',21),(35,7,61,'0000000000352','general_admission','2017-09-18',29.11,'debit_card',1,'Sara','Nelson','cody13@example.com','+1-585-863-3520x7123',46),(36,110,52,'0000000000369','backstage','2023-07-11',38.22,'I-BAN',0,'Jamie','Jones','stricklandmark@example.com','(355)877-0163x054',18),(37,51,143,'0000000000376','backstage','2019-07-08',75.17,'credit_card',0,'Donna','Luna','mark75@example.com','303.326.8170x5414',60),(38,137,148,'0000000000383','general_admission','2025-05-01',26.91,'I-BAN',0,'Michael','Williams','gramirez@example.org','842.277.9310x97301',32),(39,95,125,'0000000000390','backstage','2022-09-08',63.39,'credit_card',1,'Tammy','Glover','tcox@example.org','(690)670-6772',42),(40,147,89,'0000000000406','general_admission','2025-05-02',34.13,'credit_card',0,'Timothy','Shaffer','phillipsmegan@example.org','718.452.1533x5407',51),(41,63,79,'0000000000413','general_admission','2019-07-05',23.46,'debit_card',1,'Caleb','Bryant','shawnkirby@example.net','9549273697',30),(42,96,147,'0000000000420','general_admission','2022-09-11',67.92,'I-BAN',1,'Timothy','Francis','jennifersanchez@example.net','612.727.6129x56682',62),(43,122,127,'0000000000437','backstage','2024-06-23',55.40,'I-BAN',1,'Patrick','Bates','jennifer57@example.net','001-465-560-5943x331',28),(44,97,16,'0000000000444','general_admission','2022-09-09',86.98,'I-BAN',1,'Jenna','Reid','cannonwendy@example.com','(598)708-1073x004',36),(45,21,44,'0000000000451','general_admission','2017-09-17',54.52,'credit_card',0,'Jennifer','Rodriguez','sonya34@example.com','(977)945-7702',34),(46,57,78,'0000000000468','general_admission','2019-07-04',55.75,'debit_card',1,'Cathy','Mayer','campbellsteven@example.com','(552)752-5201x4570',59),(47,96,23,'0000000000475','general_admission','2022-09-07',59.18,'I-BAN',1,'Latoya','Turner','michelle46@example.com','001-688-975-4248x936',43),(48,90,21,'0000000000482','general_admission','2022-09-08',26.67,'debit_card',0,'Linda','Nguyen','andersenmelissa@example.net','+1-546-312-0850',19),(49,63,135,'0000000000499','general_admission','2019-07-05',33.57,'debit_card',1,'Thomas','Hernandez','markhall@example.com','001-830-516-1099x099',53),(50,141,73,'0000000000505','general_admission','2025-05-02',97.56,'debit_card',0,'Dennis','Smith','xavier00@example.com','+1-273-225-0085x487',34),(51,106,146,'0000000000512','backstage','2023-07-12',23.66,'credit_card',1,'Lisa','Carrillo','jonesanthony@example.com','5947273476',37),(52,25,40,'0000000000529','general_admission','2018-08-03',71.38,'I-BAN',1,'Erika','Watkins','adamsmargaret@example.net','914.878.2294x488',58),(53,72,120,'0000000000536','backstage','2020-08-29',95.05,'I-BAN',0,'Randy','Henson','daniel14@example.com','001-708-268-7216x347',34),(54,102,114,'0000000000543','general_admission','2023-07-10',33.80,'I-BAN',1,'Lisa','Curtis','mikaylafleming@example.org','001-362-553-3258x468',28),(55,84,3,'0000000000550','general_admission','2021-07-19',63.99,'I-BAN',1,'Juan','Barrera','dparker@example.net','(246)248-9068x51730',33),(56,102,8,'0000000000567','backstage','2023-07-11',35.39,'credit_card',1,'Yvonne','Daniels','john98@example.com','765-818-1007',53),(57,17,80,'0000000000574','general_admission','2017-09-19',89.04,'credit_card',1,'Brittany','West','susanhernandez@example.org','615-955-6445',44),(58,65,1,'0000000000581','general_admission','2020-08-28',45.39,'debit_card',1,'Katrina','Martin','csmith@example.net','+1-830-574-3546x058',40),(59,93,76,'0000000000598','general_admission','2022-09-08',71.40,'credit_card',1,'Dawn','Rogers','melissa13@example.net','(669)200-6928x234',24),(60,55,80,'0000000000604','backstage','2019-07-06',27.92,'debit_card',1,'Brittany','West','susanhernandez@example.org','615-955-6445',44),(61,36,141,'0000000000611','general_admission','2019-07-06',32.21,'I-BAN',1,'Matthew','Shaw','yjohnson@example.com','7008149829',32),(62,127,32,'0000000000628','backstage','2024-06-25',73.74,'debit_card',0,'Carmen','Moore','palmermichael@example.net','8626768738',34),(63,54,5,'0000000000635','backstage','2019-07-08',71.39,'debit_card',1,'Nicole','Gutierrez','henryheidi@example.net','(803)522-2578x572',65),(64,91,24,'0000000000642','backstage','2022-09-10',54.44,'credit_card',1,'Ruben','Bradley','stefanie13@example.com','790-783-6959x463',21),(65,35,82,'0000000000659','general_admission','2019-07-06',68.29,'I-BAN',1,'Brian','Alvarez','ifranklin@example.com','9013754554',48),(66,119,135,'0000000000666','backstage','2024-06-21',32.18,'credit_card',1,'Thomas','Hernandez','markhall@example.com','001-830-516-1099x099',53),(67,17,10,'0000000000673','backstage','2017-09-19',75.38,'debit_card',1,'Ellen','Snyder','gregory16@example.org','763-634-2813',56),(68,22,144,'0000000000680','backstage','2017-09-17',35.15,'debit_card',0,'Erin','Smith','richard71@example.org','+1-317-499-7151x2860',49),(69,24,4,'0000000000697','backstage','2018-08-04',89.73,'I-BAN',1,'Stephanie','Thomas','larsonkimberly@example.org','5073473409',18),(70,15,48,'0000000000703','backstage','2017-09-19',44.36,'credit_card',1,'Tony','Arnold','michellechapman@example.net','+1-494-588-6474x910',33),(71,122,36,'0000000000710','general_admission','2024-06-21',44.24,'I-BAN',1,'Sara','Jones','kylecarter@example.org','001-259-626-9705x857',55),(72,29,45,'0000000000727','general_admission','2018-08-01',70.27,'credit_card',1,'David','Nelson','raymond72@example.org','+1-989-808-7208x2513',39),(73,63,42,'0000000000734','general_admission','2019-07-04',26.92,'credit_card',1,'Amanda','Jacobs','gwilson@example.com','619.294.5929',26),(74,96,49,'0000000000741','backstage','2022-09-11',28.48,'credit_card',1,'Robert','Phelps','twilson@example.net','723.867.2025',52),(75,102,96,'0000000000758','backstage','2023-07-13',66.73,'credit_card',1,'Gordon','Wolf','thomasmary@example.com','635-999-2140x57222',43),(76,66,2,'0000000000765','backstage','2020-08-28',77.03,'credit_card',1,'Cheryl','Perkins','lbutler@example.net','+1-663-281-4473x686',43),(77,26,32,'0000000000772','general_admission','2018-08-03',24.44,'credit_card',1,'Carmen','Moore','palmermichael@example.net','8626768738',34),(78,84,147,'0000000000789','general_admission','2021-07-16',99.90,'I-BAN',1,'Timothy','Francis','jennifersanchez@example.net','612.727.6129x56682',62),(79,33,55,'0000000000796','backstage','2018-08-02',97.58,'I-BAN',1,'David','Villegas','awaller@example.net','930.770.4546x1226',40),(80,48,28,'0000000000802','backstage','2019-07-08',72.15,'I-BAN',1,'Matthew','Marsh','burnsjacob@example.net','757.204.0205x051',63),(81,110,92,'0000000000819','general_admission','2023-07-12',71.75,'debit_card',1,'Mark','Rodriguez','justin02@example.com','318-622-3483x597',50),(82,30,149,'0000000000826','backstage','2018-08-02',57.67,'credit_card',1,'Glenn','Wall','melissa80@example.com','261-275-7747x249',48),(83,144,103,'0000000000833','backstage','2025-05-04',91.97,'I-BAN',0,'Christina','Garcia','lopezcheryl@example.org','(785)998-7649',34),(84,121,80,'0000000000840','general_admission','2024-06-25',41.57,'debit_card',1,'Brittany','West','susanhernandez@example.org','615-955-6445',44),(85,122,68,'0000000000857','general_admission','2024-06-22',56.89,'debit_card',1,'James','Smith','mdeleon@example.com','2908628903',34),(86,21,90,'0000000000864','backstage','2017-09-19',78.61,'credit_card',0,'Amy','Wright','aprildaniels@example.org','+1-433-450-5661',47),(87,127,134,'0000000000871','general_admission','2024-06-23',25.56,'I-BAN',1,'Wendy','Horton','ulawson@example.org','001-283-738-8441',32),(88,80,104,'0000000000888','backstage','2021-07-18',43.23,'I-BAN',1,'David','Cook','rogerskelly@example.net','+1-911-410-0521',24),(89,134,143,'0000000000895','backstage','2025-04-30',79.78,'credit_card',0,'Donna','Luna','mark75@example.com','303.326.8170x5414',60),(90,116,71,'0000000000901','backstage','2024-06-21',40.28,'credit_card',1,'Lawrence','Ewing','hortonkatrina@example.com','(229)275-5730x0316',61),(91,131,92,'0000000000918','general_admission','2024-06-24',49.04,'credit_card',1,'Mark','Rodriguez','justin02@example.com','318-622-3483x597',50),(92,73,128,'0000000000925','backstage','2020-08-31',54.55,'I-BAN',1,'David','Shaw','bryangentry@example.net','821.604.6295',29),(93,67,27,'0000000000932','backstage','2020-08-29',20.51,'credit_card',1,'Luis','Freeman','alexarodriguez@example.net','+1-824-262-3145x6303',32),(94,134,129,'0000000000949','backstage','2025-05-04',22.49,'debit_card',0,'Thomas','Vang','robertbarrett@example.org','(581)821-2782x153',43),(95,76,17,'0000000000956','backstage','2021-07-19',45.96,'credit_card',1,'Andrew','Sanders','stephanie98@example.com','928-702-3053x3984',20),(96,90,110,'0000000000963','backstage','2022-09-09',46.74,'I-BAN',1,'Steven','Stewart','richard05@example.org','(715)359-4433',18),(97,8,89,'0000000000970','backstage','2017-09-20',63.76,'credit_card',1,'Timothy','Shaffer','phillipsmegan@example.org','718.452.1533x5407',51),(98,12,122,'0000000000987','backstage','2017-09-18',28.06,'credit_card',1,'Joshua','Mendoza','qjenkins@example.org','347.656.5943x149',59),(99,27,46,'0000000000994','general_admission','2018-08-01',69.32,'debit_card',1,'Jason','Smith','scottscott@example.com','(790)354-3613x519',26),(100,43,135,'0000000001007','backstage','2019-07-07',29.59,'I-BAN',1,'Thomas','Hernandez','markhall@example.com','001-830-516-1099x099',53),(101,36,119,'0000000001014','backstage','2019-07-04',99.00,'credit_card',1,'Amy','Fields','acherry@example.com','001-250-627-1853x795',36),(102,76,8,'0000000001021','backstage','2021-07-20',26.88,'debit_card',1,'Yvonne','Daniels','john98@example.com','765-818-1007',53),(103,38,115,'0000000001038','general_admission','2019-07-08',97.10,'credit_card',1,'Ronald','Oconnell','ktaylor@example.net','001-663-792-8074',42),(104,72,52,'0000000001045','backstage','2020-08-31',77.44,'debit_card',1,'Jamie','Jones','stricklandmark@example.com','(355)877-0163x054',18),(105,11,102,'0000000001052','backstage','2017-09-21',72.18,'credit_card',1,'Peter','Williams','panderson@example.com','(397)249-0475x14443',41),(106,13,118,'0000000001069','backstage','2017-09-21',23.19,'debit_card',1,'Susan','Miller','clarkkenneth@example.com','001-499-971-3053',36),(107,107,3,'0000000001076','backstage','2023-07-13',30.89,'debit_card',1,'Juan','Barrera','dparker@example.net','(246)248-9068x51730',33),(108,108,16,'0000000001083','general_admission','2023-07-14',97.97,'I-BAN',1,'Jenna','Reid','cannonwendy@example.com','(598)708-1073x004',36),(109,133,48,'0000000001090','backstage','2025-05-04',37.51,'credit_card',0,'Tony','Arnold','michellechapman@example.net','+1-494-588-6474x910',33),(110,113,120,'0000000001106','general_admission','2024-06-23',93.17,'I-BAN',1,'Randy','Henson','daniel14@example.com','001-708-268-7216x347',34),(111,144,49,'0000000001113','general_admission','2025-05-03',76.38,'credit_card',0,'Robert','Phelps','twilson@example.net','723.867.2025',52),(112,130,47,'0000000001120','backstage','2024-06-24',89.50,'I-BAN',1,'Erik','Martin','angeldavid@example.com','(765)801-3264',21),(113,131,32,'0000000001137','backstage','2024-06-23',39.85,'credit_card',1,'Carmen','Moore','palmermichael@example.net','8626768738',34),(114,22,129,'0000000001144','backstage','2017-09-18',93.40,'I-BAN',1,'Thomas','Vang','robertbarrett@example.org','(581)821-2782x153',43),(115,39,44,'0000000001151','backstage','2019-07-05',58.01,'debit_card',1,'Jennifer','Rodriguez','sonya34@example.com','(977)945-7702',34),(116,96,9,'0000000001168','backstage','2022-09-09',35.32,'credit_card',0,'Eileen','Hamilton','timothygonzalez@example.com','(566)293-1058x668',43),(117,95,45,'0000000001175','backstage','2022-09-10',78.05,'I-BAN',1,'David','Nelson','raymond72@example.org','+1-989-808-7208x2513',39),(118,126,128,'0000000001182','general_admission','2024-06-23',93.87,'I-BAN',1,'David','Shaw','bryangentry@example.net','821.604.6295',29),(119,30,52,'0000000001199','backstage','2018-08-03',91.02,'credit_card',1,'Jamie','Jones','stricklandmark@example.com','(355)877-0163x054',18),(120,73,27,'0000000001205','general_admission','2020-08-28',29.10,'I-BAN',1,'Luis','Freeman','alexarodriguez@example.net','+1-824-262-3145x6303',32),(121,4,7,'0000000001212','general_admission','2017-09-18',76.58,'debit_card',1,'Rachel','Cunningham','scottdeanna@example.com','789-842-0058',62),(122,32,140,'0000000001229','general_admission','2018-07-31',68.16,'debit_card',1,'Christopher','Silva','jmyers@example.net','(466)351-0892x6999',22),(123,151,69,'0000000001236','backstage','2025-05-04',30.93,'I-BAN',0,'Mary','Henry','stephanie87@example.org','001-963-337-0805x413',23),(124,152,100,'0000000001243','backstage','2025-05-02',43.18,'debit_card',0,'Richard','Schultz','tgreene@example.com','3918178498',51),(125,111,34,'0000000001250','general_admission','2024-06-23',23.85,'debit_card',1,'Jonathan','Freeman','mbell@example.net','(900)324-4640x1058',49),(126,94,60,'0000000001267','general_admission','2022-09-09',64.34,'I-BAN',1,'Donald','Coleman','lopezshane@example.net','(635)464-8757x962',18),(127,127,70,'0000000001274','general_admission','2024-06-24',69.43,'I-BAN',1,'Sarah','Carter','juanlynn@example.net','6589506011',59),(128,25,146,'0000000001281','backstage','2018-08-02',56.96,'I-BAN',1,'Lisa','Carrillo','jonesanthony@example.com','5947273476',37),(129,5,40,'0000000001298','general_admission','2017-09-17',32.78,'credit_card',1,'Erika','Watkins','adamsmargaret@example.net','914.878.2294x488',58),(130,37,123,'0000000001304','backstage','2019-07-08',86.07,'I-BAN',1,'Stacy','Schmitt','mark62@example.net','204-786-6084x21138',42),(131,47,92,'0000000001311','general_admission','2019-07-06',52.21,'debit_card',0,'Mark','Rodriguez','justin02@example.com','318-622-3483x597',50),(132,133,131,'0000000001328','general_admission','2025-05-01',79.29,'debit_card',0,'Lisa','Byrd','nyoung@example.org','560-369-1724',47),(133,141,134,'0000000001335','general_admission','2025-05-04',54.33,'debit_card',0,'Wendy','Horton','ulawson@example.org','001-283-738-8441',32),(134,99,25,'0000000001342','backstage','2023-07-14',76.75,'credit_card',1,'Angela','Hall','stephanie21@example.net','+1-484-437-9103x779',64),(135,18,70,'0000000001359','general_admission','2017-09-19',22.42,'credit_card',1,'Sarah','Carter','juanlynn@example.net','6589506011',59),(136,118,24,'0000000001366','general_admission','2024-06-24',31.25,'I-BAN',1,'Ruben','Bradley','stefanie13@example.com','790-783-6959x463',21),(137,29,127,'0000000001373','general_admission','2018-08-02',63.35,'debit_card',1,'Patrick','Bates','jennifer57@example.net','001-465-560-5943x331',28),(138,27,100,'0000000001380','general_admission','2018-07-31',57.29,'debit_card',0,'Richard','Schultz','tgreene@example.com','3918178498',51),(139,19,135,'0000000001397','general_admission','2017-09-20',31.48,'debit_card',1,'Thomas','Hernandez','markhall@example.com','001-830-516-1099x099',53),(140,71,62,'0000000001403','general_admission','2020-08-31',38.12,'I-BAN',1,'Albert','Smith','twoods@example.com','231-411-5787x265',48),(141,133,78,'0000000001410','backstage','2025-05-02',62.13,'debit_card',0,'Cathy','Mayer','campbellsteven@example.com','(552)752-5201x4570',59),(142,146,15,'0000000001427','general_admission','2025-05-02',37.64,'I-BAN',0,'Alex','Brown','prestonsherry@example.com','001-677-328-4961x230',52),(143,32,82,'0000000001434','backstage','2018-08-03',80.82,'credit_card',1,'Brian','Alvarez','ifranklin@example.com','9013754554',48),(144,110,54,'0000000001441','backstage','2023-07-12',66.61,'credit_card',1,'Jessica','Patrick','jaredsavage@example.com','977-203-2330',34),(145,23,96,'0000000001458','backstage','2018-07-31',28.23,'credit_card',1,'Gordon','Wolf','thomasmary@example.com','635-999-2140x57222',43),(146,13,43,'0000000001465','backstage','2017-09-20',91.67,'debit_card',1,'Cindy','Kennedy','sandy09@example.com','(434)251-9715x49830',50),(147,148,46,'0000000001472','general_admission','2025-05-02',47.33,'credit_card',0,'Jason','Smith','scottscott@example.com','(790)354-3613x519',26),(148,124,145,'0000000001489','backstage','2024-06-22',39.19,'debit_card',1,'Joseph','Tucker','wilsonbrian@example.org','001-949-430-3337x361',59),(149,49,104,'0000000001496','general_admission','2019-07-06',56.65,'I-BAN',1,'David','Cook','rogerskelly@example.net','+1-911-410-0521',24),(150,21,35,'0000000001502','backstage','2017-09-18',65.11,'credit_card',0,'Rachael','Dalton','carla12@example.net','(885)246-2364x9842',28),(151,92,71,'0000000001519','backstage','2022-09-08',20.01,'debit_card',1,'Lawrence','Ewing','hortonkatrina@example.com','(229)275-5730x0316',61),(152,29,95,'0000000001526','backstage','2018-08-04',67.62,'credit_card',1,'Ashley','Thomas','thompsonmichael@example.org','001-288-979-9860x230',47),(153,33,86,'0000000001533','general_admission','2018-08-04',79.84,'I-BAN',1,'Matthew','Collins','sbryant@example.com','+1-682-225-9172x5283',64),(154,133,63,'0000000001540','general_admission','2025-05-01',87.60,'debit_card',0,'Christopher','Simon','thompsonkyle@example.org','001-483-833-1988x656',33),(155,31,110,'0000000001557','backstage','2018-07-31',91.91,'I-BAN',1,'Steven','Stewart','richard05@example.org','(715)359-4433',18),(156,132,85,'0000000001564','backstage','2025-04-30',50.16,'credit_card',0,'Brenda','Clark','joseerickson@example.com','7693545913',31),(157,99,140,'0000000001571','backstage','2023-07-11',34.44,'credit_card',1,'Christopher','Silva','jmyers@example.net','(466)351-0892x6999',22),(158,25,141,'0000000001588','general_admission','2018-08-02',97.08,'I-BAN',1,'Matthew','Shaw','yjohnson@example.com','7008149829',32),(159,121,59,'0000000001595','general_admission','2024-06-24',99.07,'debit_card',1,'Jeffrey','Watts','mallory67@example.org','+1-332-473-0496x0644',38),(160,122,54,'0000000001601','backstage','2024-06-21',26.71,'debit_card',1,'Jessica','Patrick','jaredsavage@example.com','977-203-2330',34),(161,110,72,'0000000001618','general_admission','2023-07-13',90.87,'I-BAN',1,'Derrick','Webb','lindasweeney@example.net','(705)361-8723',41),(162,104,125,'0000000001625','backstage','2023-07-11',44.16,'I-BAN',1,'Tammy','Glover','tcox@example.org','(690)670-6772',42),(163,2,73,'0000000001632','general_admission','2017-09-20',80.52,'debit_card',1,'Dennis','Smith','xavier00@example.com','+1-273-225-0085x487',34),(164,87,5,'0000000001649','general_admission','2022-09-10',45.74,'I-BAN',1,'Nicole','Gutierrez','henryheidi@example.net','(803)522-2578x572',65),(165,26,101,'0000000001656','backstage','2018-08-04',87.35,'debit_card',1,'Jessica','Warren','heatherkemp@example.net','931-760-0005x909',28),(166,66,110,'0000000001663','backstage','2020-08-27',45.71,'credit_card',1,'Steven','Stewart','richard05@example.org','(715)359-4433',18),(167,15,91,'0000000001670','backstage','2017-09-18',27.29,'credit_card',1,'Holly','Strickland','tracey27@example.com','914-235-6300x011',34),(168,7,136,'0000000001687','backstage','2017-09-20',58.61,'credit_card',1,'Natalie','Greene','doris13@example.net','971.539.9122',34),(169,150,137,'0000000001694','general_admission','2025-05-03',94.49,'I-BAN',0,'James','Webb','vhoffman@example.com','856.605.5294x45792',22),(170,73,88,'0000000001700','backstage','2020-08-30',42.69,'I-BAN',1,'Megan','Jenkins','lewiskelly@example.org','(297)459-1148x93879',37),(171,114,139,'0000000001717','general_admission','2024-06-23',30.82,'I-BAN',1,'Nicholas','Garcia','hernandezsharon@example.com','+1-735-475-5352x3409',37),(172,128,99,'0000000001724','backstage','2024-06-22',96.99,'debit_card',1,'Jared','Hernandez','cynthiamarsh@example.net','(273)219-9745x4185',52),(173,39,32,'0000000001731','backstage','2019-07-06',69.18,'debit_card',1,'Carmen','Moore','palmermichael@example.net','8626768738',34),(174,139,21,'0000000001748','general_admission','2025-05-04',81.03,'debit_card',0,'Linda','Nguyen','andersenmelissa@example.net','+1-546-312-0850',19),(175,127,39,'0000000001755','backstage','2024-06-25',40.87,'debit_card',1,'John','Anderson','riostroy@example.net','(241)373-8728',55),(176,72,95,'0000000001762','general_admission','2020-08-31',77.83,'debit_card',1,'Ashley','Thomas','thompsonmichael@example.org','001-288-979-9860x230',47),(177,39,39,'0000000001779','general_admission','2019-07-07',94.10,'debit_card',1,'John','Anderson','riostroy@example.net','(241)373-8728',55),(178,6,14,'0000000001786','backstage','2017-09-20',81.84,'credit_card',1,'Linda','Gibson','rlee@example.com','+1-331-402-6391',62),(179,125,114,'0000000001793','backstage','2024-06-23',38.68,'credit_card',1,'Lisa','Curtis','mikaylafleming@example.org','001-362-553-3258x468',28),(180,17,126,'0000000001809','backstage','2017-09-20',26.83,'debit_card',1,'Deborah','Ross','kristen32@example.net','409-866-6574x2299',24),(181,130,150,'0000000001816','general_admission','2024-06-21',45.23,'credit_card',1,'Ariel','Rodriguez','christine68@example.com','200-958-1561x757',28),(182,34,98,'0000000001823','backstage','2019-07-08',70.93,'credit_card',1,'Renee','Miller','atkinsonbenjamin@example.net','946.915.9507',62),(183,112,4,'0000000001830','general_admission','2024-06-22',35.64,'debit_card',1,'Stephanie','Thomas','larsonkimberly@example.org','5073473409',18),(184,84,136,'0000000001847','backstage','2021-07-20',79.75,'debit_card',1,'Natalie','Greene','doris13@example.net','971.539.9122',34),(185,76,78,'0000000001854','general_admission','2021-07-17',21.00,'I-BAN',1,'Cathy','Mayer','campbellsteven@example.com','(552)752-5201x4570',59),(186,151,56,'0000000001861','general_admission','2025-04-30',87.45,'I-BAN',0,'Ashley','Alvarado','clairebrooks@example.com','(210)246-6456x97471',31),(187,43,82,'0000000001878','backstage','2019-07-04',35.80,'debit_card',1,'Brian','Alvarez','ifranklin@example.com','9013754554',48),(188,104,81,'0000000001885','general_admission','2023-07-11',96.24,'credit_card',1,'Micheal','Wood','evelynstewart@example.com','+1-834-845-0363x534',58),(189,54,82,'0000000001892','general_admission','2019-07-04',91.77,'I-BAN',1,'Brian','Alvarez','ifranklin@example.com','9013754554',48),(190,25,83,'0000000001908','general_admission','2018-08-03',91.33,'I-BAN',1,'Oscar','Thomas','larry97@example.org','(409)633-2956x3629',33),(191,50,104,'0000000001915','general_admission','2019-07-08',44.11,'credit_card',0,'David','Cook','rogerskelly@example.net','+1-911-410-0521',24),(192,141,106,'0000000001922','backstage','2025-05-03',52.56,'I-BAN',0,'Tiffany','Doyle','andersonrobin@example.org','522.576.9000x69032',20),(193,44,97,'0000000001939','general_admission','2019-07-07',69.58,'credit_card',1,'Douglas','Powell','andersonjacqueline@example.com','001-706-696-4093',61),(194,42,146,'0000000001946','backstage','2019-07-04',42.06,'credit_card',1,'Lisa','Carrillo','jonesanthony@example.com','5947273476',37),(195,52,81,'0000000001953','backstage','2019-07-07',31.56,'I-BAN',1,'Micheal','Wood','evelynstewart@example.com','+1-834-845-0363x534',58),(196,76,132,'0000000001960','general_admission','2021-07-19',76.98,'I-BAN',1,'Jessica','Taylor','harmonkenneth@example.net','(386)390-1236x934',54),(197,116,4,'0000000001977','backstage','2024-06-25',81.63,'credit_card',1,'Stephanie','Thomas','larsonkimberly@example.org','5073473409',18),(198,32,75,'0000000001984','backstage','2018-08-01',62.82,'I-BAN',1,'Kathleen','Coleman','ericwoods@example.com','+1-404-825-0328x2358',38),(199,78,131,'0000000001991','general_admission','2021-07-17',48.88,'debit_card',1,'Lisa','Byrd','nyoung@example.org','560-369-1724',47),(200,30,86,'0000000002004','backstage','2018-08-02',50.26,'debit_card',1,'Matthew','Collins','sbryant@example.com','+1-682-225-9172x5283',64),(201,16,110,'0000000002011','backstage','2017-09-21',36.33,'credit_card',1,'Steven','Stewart','richard05@example.org','(715)359-4433',18),(202,72,65,'0000000002028','general_admission','2020-08-27',70.34,'I-BAN',1,'Leslie','Perkins','phillipsjesus@example.net','001-743-408-8175x534',62),(203,4,80,'0000000002035','backstage','2017-09-21',29.41,'credit_card',1,'Brittany','West','susanhernandez@example.org','615-955-6445',44),(204,149,98,'0000000002042','general_admission','2025-05-03',47.19,'debit_card',0,'Renee','Miller','atkinsonbenjamin@example.net','946.915.9507',62),(205,63,5,'0000000002059','general_admission','2019-07-08',40.79,'I-BAN',1,'Nicole','Gutierrez','henryheidi@example.net','(803)522-2578x572',65),(206,87,122,'0000000002066','backstage','2022-09-09',71.67,'credit_card',1,'Joshua','Mendoza','qjenkins@example.org','347.656.5943x149',59),(207,52,132,'0000000002073','general_admission','2019-07-04',24.18,'debit_card',1,'Jessica','Taylor','harmonkenneth@example.net','(386)390-1236x934',54),(208,33,53,'0000000002080','general_admission','2018-08-03',40.10,'I-BAN',1,'Angela','Conley','nbell@example.org','949-613-9840x037',32),(209,46,21,'0000000002097','backstage','2019-07-06',44.90,'credit_card',1,'Linda','Nguyen','andersenmelissa@example.net','+1-546-312-0850',19),(210,136,144,'0000000002103','general_admission','2025-05-02',24.17,'I-BAN',0,'Erin','Smith','richard71@example.org','+1-317-499-7151x2860',49),(211,104,103,'0000000002110','general_admission','2023-07-11',25.68,'credit_card',1,'Christina','Garcia','lopezcheryl@example.org','(785)998-7649',34),(212,36,44,'0000000002127','backstage','2019-07-06',31.79,'credit_card',1,'Jennifer','Rodriguez','sonya34@example.com','(977)945-7702',34),(213,129,149,'0000000002134','general_admission','2024-06-22',71.23,'credit_card',1,'Glenn','Wall','melissa80@example.com','261-275-7747x249',48),(214,149,122,'0000000002141','general_admission','2025-05-03',94.52,'credit_card',0,'Joshua','Mendoza','qjenkins@example.org','347.656.5943x149',59),(215,1,36,'0000000002158','backstage','2017-09-20',69.77,'credit_card',0,'Sara','Jones','kylecarter@example.org','001-259-626-9705x857',55),(216,51,90,'0000000002165','general_admission','2019-07-06',98.22,'I-BAN',1,'Amy','Wright','aprildaniels@example.org','+1-433-450-5661',47),(217,29,34,'0000000002172','backstage','2018-08-02',72.97,'I-BAN',1,'Jonathan','Freeman','mbell@example.net','(900)324-4640x1058',49),(218,114,96,'0000000002189','general_admission','2024-06-25',50.41,'debit_card',1,'Gordon','Wolf','thomasmary@example.com','635-999-2140x57222',43),(219,142,22,'0000000002196','backstage','2025-05-03',37.54,'debit_card',0,'Isaac','Martin','mossshannon@example.net','+1-386-729-8399x6615',56);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER fill_ticket_visitor_data
BEFORE INSERT ON ticket
FOR EACH ROW
BEGIN
    DECLARE v_name VARCHAR(100);
    DECLARE v_last_name VARCHAR(100);
    DECLARE v_email VARCHAR(100);
    DECLARE v_phone VARCHAR(20);
    DECLARE v_age INT;

    
    SELECT first_name, last_name, email, telephone, age
    INTO v_name, v_last_name, v_email, v_phone, v_age
    FROM visitor
    WHERE visitor_ID = NEW.visitor_ID;

    
    SET NEW.visitor_name = v_name;
    SET NEW.visitor_last_name = v_last_name;
    SET NEW.visitor_email = v_email;
    SET NEW.visitor_telephone = v_phone;
    SET NEW.visitor_age = v_age;
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
INSERT INTO `visitor` VALUES (1,'Katrina','Martin','+1-830-574-3546x058','csmith@example.net',40),(2,'Cheryl','Perkins','+1-663-281-4473x686','lbutler@example.net',43),(3,'Juan','Barrera','(246)248-9068x51730','dparker@example.net',33),(4,'Stephanie','Thomas','5073473409','larsonkimberly@example.org',18),(5,'Nicole','Gutierrez','(803)522-2578x572','henryheidi@example.net',65),(6,'Danielle','Porter','(643)603-5766','robin77@example.com',26),(7,'Rachel','Cunningham','789-842-0058','scottdeanna@example.com',62),(8,'Yvonne','Daniels','765-818-1007','john98@example.com',53),(9,'Eileen','Hamilton','(566)293-1058x668','timothygonzalez@example.com',43),(10,'Ellen','Snyder','763-634-2813','gregory16@example.org',56),(11,'Sharon','Cherry','001-619-555-4082x04894','colemanhannah@example.net',34),(12,'Lisa','Clark','001-426-768-4887x470','reedjoseph@example.net',55),(13,'Leslie','Gibson','001-502-770-2428','mbrown@example.org',42),(14,'Linda','Gibson','+1-331-402-6391','rlee@example.com',62),(15,'Alex','Brown','001-677-328-4961x2303','prestonsherry@example.com',52),(16,'Jenna','Reid','(598)708-1073x004','cannonwendy@example.com',36),(17,'Andrew','Sanders','928-702-3053x3984','stephanie98@example.com',20),(18,'Charles','Calderon','(568)459-9540x8899','justin99@example.org',52),(19,'Stacy','Everett','737-365-9842','watsontodd@example.org',18),(20,'Andrew','Dalton','(998)763-6952','robertbaker@example.com',42),(21,'Linda','Nguyen','+1-546-312-0850','andersenmelissa@example.net',19),(22,'Isaac','Martin','+1-386-729-8399x66159','mossshannon@example.net',56),(23,'Latoya','Turner','001-688-975-4248x93687','michelle46@example.com',43),(24,'Ruben','Bradley','790-783-6959x463','stefanie13@example.com',21),(25,'Angela','Hall','+1-484-437-9103x779','stephanie21@example.net',64),(26,'Melissa','Cox','(526)639-5600','khantommy@example.net',52),(27,'Luis','Freeman','+1-824-262-3145x63032','alexarodriguez@example.net',32),(28,'Matthew','Marsh','757.204.0205x051','burnsjacob@example.net',63),(29,'Edward','Robinson','(365)398-5635x97151','cohenphyllis@example.net',49),(30,'John','Salazar','(270)939-3698x1339','dawn55@example.com',21),(31,'Brian','Simmons','5042576093','scottlewis@example.org',63),(32,'Carmen','Moore','8626768738','palmermichael@example.net',34),(33,'Jeffery','Jones','(981)556-5761x312','henry51@example.org',48),(34,'Jonathan','Freeman','(900)324-4640x1058','mbell@example.net',49),(35,'Rachael','Dalton','(885)246-2364x9842','carla12@example.net',28),(36,'Sara','Jones','001-259-626-9705x8575','kylecarter@example.org',55),(37,'Amanda','Garrison','+1-487-403-1492x81958','colecarroll@example.org',43),(38,'Stephen','Chandler','(995)419-9055x2444','umoore@example.org',47),(39,'John','Anderson','(241)373-8728','riostroy@example.net',55),(40,'Erika','Watkins','914.878.2294x488','adamsmargaret@example.net',58),(41,'Kimberly','Combs','5882288921','groy@example.com',28),(42,'Amanda','Jacobs','619.294.5929','gwilson@example.com',26),(43,'Cindy','Kennedy','(434)251-9715x49830','sandy09@example.com',50),(44,'Jennifer','Rodriguez','(977)945-7702','sonya34@example.com',34),(45,'David','Nelson','+1-989-808-7208x2513','raymond72@example.org',39),(46,'Jason','Smith','(790)354-3613x519','scottscott@example.com',26),(47,'Erik','Martin','(765)801-3264','angeldavid@example.com',21),(48,'Tony','Arnold','+1-494-588-6474x910','michellechapman@example.net',33),(49,'Robert','Phelps','723.867.2025','twilson@example.net',52),(50,'Caroline','House','(790)854-6569','maria58@example.com',18),(51,'Eugene','Young','820-556-7461x74217','donnamoyer@example.org',25),(52,'Jamie','Jones','(355)877-0163x054','stricklandmark@example.com',18),(53,'Angela','Conley','949-613-9840x037','nbell@example.org',32),(54,'Jessica','Patrick','977-203-2330','jaredsavage@example.com',34),(55,'David','Villegas','930.770.4546x1226','awaller@example.net',40),(56,'Ashley','Alvarado','(210)246-6456x97471','clairebrooks@example.com',31),(57,'Ashley','Williams','268-777-6550x740','mparrish@example.com',33),(58,'Teresa','James','366-350-3417x51240','adam32@example.org',46),(59,'Jeffrey','Watts','+1-332-473-0496x06443','mallory67@example.org',38),(60,'Donald','Coleman','(635)464-8757x962','lopezshane@example.net',18),(61,'Sara','Nelson','+1-585-863-3520x71236','cody13@example.com',46),(62,'Albert','Smith','231-411-5787x265','twoods@example.com',48),(63,'Christopher','Simon','001-483-833-1988x656','thompsonkyle@example.org',33),(64,'Jason','Brown','280-299-5003x21763','millercarl@example.net',24),(65,'Leslie','Perkins','001-743-408-8175x534','phillipsjesus@example.net',62),(66,'Katie','Allen','001-346-522-1047x30739','joshuajohnson@example.net',51),(67,'Carolyn','Taylor','(588)297-3601','jason91@example.net',22),(68,'James','Smith','2908628903','mdeleon@example.com',34),(69,'Mary','Henry','001-963-337-0805x413','stephanie87@example.org',23),(70,'Sarah','Carter','6589506011','juanlynn@example.net',59),(71,'Lawrence','Ewing','(229)275-5730x0316','hortonkatrina@example.com',61),(72,'Derrick','Webb','(705)361-8723','lindasweeney@example.net',41),(73,'Dennis','Smith','+1-273-225-0085x487','xavier00@example.com',34),(74,'Nicole','Thomas','+1-833-512-8868x132','wallacewilliam@example.com',55),(75,'Kathleen','Coleman','+1-404-825-0328x23584','ericwoods@example.com',38),(76,'Dawn','Rogers','(669)200-6928x234','melissa13@example.net',24),(77,'Tiffany','Hill','(665)220-2258x4679','dmejia@example.com',25),(78,'Cathy','Mayer','(552)752-5201x4570','campbellsteven@example.com',59),(79,'Caleb','Bryant','9549273697','shawnkirby@example.net',30),(80,'Brittany','West','615-955-6445','susanhernandez@example.org',44),(81,'Micheal','Wood','+1-834-845-0363x534','evelynstewart@example.com',58),(82,'Brian','Alvarez','9013754554','ifranklin@example.com',48),(83,'Oscar','Thomas','(409)633-2956x3629','larry97@example.org',33),(84,'Savannah','Spencer','001-448-510-6026','mitchelllinda@example.org',57),(85,'Brenda','Clark','7693545913','joseerickson@example.com',31),(86,'Matthew','Collins','+1-682-225-9172x5283','sbryant@example.com',64),(87,'Joanna','Gallegos','+1-541-662-6631x04425','andrea32@example.org',28),(88,'Megan','Jenkins','(297)459-1148x93879','lewiskelly@example.org',37),(89,'Timothy','Shaffer','718.452.1533x5407','phillipsmegan@example.org',51),(90,'Amy','Wright','+1-433-450-5661','aprildaniels@example.org',47),(91,'Holly','Strickland','914-235-6300x011','tracey27@example.com',34),(92,'Mark','Rodriguez','318-622-3483x597','justin02@example.com',50),(93,'Alexandria','Smith','7394504678','melvin53@example.org',33),(94,'Diane','Lyons','658.372.1027x35438','adriennemiller@example.org',36),(95,'Ashley','Thomas','001-288-979-9860x2306','thompsonmichael@example.org',47),(96,'Gordon','Wolf','635-999-2140x57222','thomasmary@example.com',43),(97,'Douglas','Powell','001-706-696-4093','andersonjacqueline@example.com',61),(98,'Renee','Miller','946.915.9507','atkinsonbenjamin@example.net',62),(99,'Jared','Hernandez','(273)219-9745x4185','cynthiamarsh@example.net',52),(100,'Richard','Schultz','3918178498','tgreene@example.com',51),(101,'Jessica','Warren','931-760-0005x909','heatherkemp@example.net',28),(102,'Peter','Williams','(397)249-0475x14443','panderson@example.com',41),(103,'Christina','Garcia','(785)998-7649','lopezcheryl@example.org',34),(104,'David','Cook','+1-911-410-0521','rogerskelly@example.net',24),(105,'Katrina','Ruiz','228-490-2168','shannonmiller@example.org',54),(106,'Tiffany','Doyle','522.576.9000x69032','andersonrobin@example.org',20),(107,'Emily','Hines','613.204.4626','matadaniel@example.net',54),(108,'Michael','Brooks','529-853-3542','saraturner@example.org',49),(109,'Tyler','Li','527-818-9416','john92@example.com',44),(110,'Steven','Stewart','(715)359-4433','richard05@example.org',18),(111,'Heather','Baker','(644)243-4866','michaelburnett@example.org',29),(112,'Anne','Williams','+1-944-449-2679x2859','joshuasimmons@example.com',24),(113,'Sara','Watts','+1-782-634-1201x22783','mollywilliams@example.net',27),(114,'Lisa','Curtis','001-362-553-3258x4688','mikaylafleming@example.org',28),(115,'Ronald','Oconnell','001-663-792-8074','ktaylor@example.net',42),(116,'Jason','Davis','+1-638-595-4228x004','tracyswanson@example.org',35),(117,'Brandon','Morales','+1-362-574-7812','rossmichael@example.net',58),(118,'Susan','Miller','001-499-971-3053','clarkkenneth@example.com',36),(119,'Amy','Fields','001-250-627-1853x79575','acherry@example.com',36),(120,'Randy','Henson','001-708-268-7216x3472','daniel14@example.com',34),(121,'Brad','Garrett','492.379.6272','amandalewis@example.net',50),(122,'Joshua','Mendoza','347.656.5943x149','qjenkins@example.org',59),(123,'Stacy','Schmitt','204-786-6084x21138','mark62@example.net',42),(124,'Gerald','Choi','+1-585-424-0515x37517','pattersonbrandi@example.net',44),(125,'Tammy','Glover','(690)670-6772','tcox@example.org',42),(126,'Deborah','Ross','409-866-6574x2299','kristen32@example.net',24),(127,'Patrick','Bates','001-465-560-5943x33113','jennifer57@example.net',28),(128,'David','Shaw','821.604.6295','bryangentry@example.net',29),(129,'Thomas','Vang','(581)821-2782x153','robertbarrett@example.org',43),(130,'Dylan','Reynolds','8535243580','hillpeter@example.org',56),(131,'Lisa','Byrd','560-369-1724','nyoung@example.org',47),(132,'Jessica','Taylor','(386)390-1236x934','harmonkenneth@example.net',54),(133,'Shaun','Gray','(585)585-5446x69225','ttravis@example.com',44),(134,'Wendy','Horton','001-283-738-8441','ulawson@example.org',32),(135,'Thomas','Hernandez','001-830-516-1099x0996','markhall@example.com',53),(136,'Natalie','Greene','971.539.9122','doris13@example.net',34),(137,'James','Webb','856.605.5294x45792','vhoffman@example.com',22),(138,'Keith','Cohen','001-767-674-0026','david55@example.net',40),(139,'Nicholas','Garcia','+1-735-475-5352x34095','hernandezsharon@example.com',37),(140,'Christopher','Silva','(466)351-0892x6999','jmyers@example.net',22),(141,'Matthew','Shaw','7008149829','yjohnson@example.com',32),(142,'Austin','Perez','(524)252-8991x781','austinpitts@example.com',36),(143,'Donna','Luna','303.326.8170x5414','mark75@example.com',60),(144,'Erin','Smith','+1-317-499-7151x28603','richard71@example.org',49),(145,'Joseph','Tucker','001-949-430-3337x361','wilsonbrian@example.org',59),(146,'Lisa','Carrillo','5947273476','jonesanthony@example.com',37),(147,'Timothy','Francis','612.727.6129x56682','jennifersanchez@example.net',62),(148,'Michael','Williams','842.277.9310x97301','gramirez@example.org',32),(149,'Glenn','Wall','261-275-7747x249','melissa80@example.com',48),(150,'Ariel','Rodriguez','200-958-1561x757','christine68@example.com',28);
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

-- Dump completed on 2025-05-10 15:16:31
