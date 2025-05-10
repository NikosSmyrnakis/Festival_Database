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
INSERT INTO `artist` VALUES (1,'Paula Ward','Patricia','2004-06-24','2022-06-20','http://www.miller-walsh.biz/','https://www.brown.com/',0),(2,'Ian Acosta','Wayne','1979-10-06','1984-10-04','https://www.willis.org/','http://house-gibson.net/',1),(3,'Tanner Marsh','Brittany','1975-10-26','1995-10-21','https://www.kennedy.com/','https://valencia-wilson.com/',2),(4,'Scott Kent','Nicolas','2002-12-29','2003-12-29','http://russell.com/','https://www.johns-ramirez.com/',2),(5,'Mariah Davis','Jill','1991-10-10','1992-10-09','https://www.smith.com/','https://www.knapp.com/',2),(6,'Jill Welch','Cory','1977-03-26','1994-03-22','https://townsend.org/','https://www.phillips.com/',1),(7,'Jennifer Klein',NULL,'1999-01-19','2004-01-18','https://banks-king.info/','https://parker.net/',2),(8,'Timothy James','Mallory','1987-03-04','1990-03-03','http://tran-flynn.com/','https://mitchell-espinoza.com/',2),(9,'Randy Thornton',NULL,'1999-09-04','2015-08-31','http://www.gomez.com/','https://thompson-zimmerman.net/',0),(10,'Joyce Mcgee','Jennifer','1982-01-25','1991-01-23','http://delgado.com/','http://www.cline.com/',2),(11,'David Santos','Sean','1976-02-10','1993-02-05','https://nielsen-woods.org/','https://warren-jones.com/',0),(12,'Katie Craig','Robert','1979-01-13','1996-01-09','https://www.garza-malone.biz/','https://sanchez-chambers.com/',0),(13,'Amy Newman','Thomas','1984-04-01','1987-04-01','http://www.dunn.net/','https://thompson.com/',2),(14,'Mr. William Jones MD','Erica','1996-11-18','2007-11-16','http://www.rodriguez.com/','https://key.net/',3),(15,'Tonya Tran MD','Courtney','1975-01-14','1980-01-13','http://www.vargas-andrews.net/','https://www.trujillo.com/',0),(16,'Yolanda Campbell','Ryan','1975-05-17','1981-05-15','http://www.castro-carter.com/','http://www.rosales-walker.com/',3),(17,'Christopher Cisneros MD','Anthony','1998-02-06','2000-02-06','https://martinez.com/','http://www.soto.com/',3),(18,'Michael Wang','Brittany','1975-02-25','1992-02-21','https://abbott.com/','http://www.jenkins-hammond.com/',1),(19,'Mark Mclaughlin',NULL,'1986-07-12','2004-07-07','https://freeman.com/','https://bailey-oconnor.net/',1),(20,'Jade Bridges','Michael','1980-02-24','1997-02-19','http://www.moore-simon.com/','https://washington.org/',1),(21,'Dustin Lawrence',NULL,'1983-02-28','1987-02-27','https://www.curtis-garza.net/','https://www.dougherty-hart.com/',1),(22,'Christina Randall','Kevin','1993-01-21','2013-01-16','https://www.anderson.com/','https://jones.com/',1),(23,'Julie Jones','Jennifer','1976-02-22','1989-02-18','http://www.holt-bass.biz/','http://www.nelson-duarte.com/',0),(24,'Barbara Hart',NULL,'1981-10-30','1982-10-30','https://www.jones-taylor.com/','https://www.gomez-lucas.org/',3),(25,'Brian Serrano','Kyle','1995-10-07','2000-10-05','http://dixon.com/','http://sexton.org/',1),(26,'Hannah Cantrell',NULL,'1991-01-20','1999-01-18','http://www.contreras-sanchez.org/','http://delgado-smith.biz/',2),(27,'Kevin Gutierrez','William','1982-05-02','1991-04-30','https://www.cox.org/','http://thomas.com/',1),(28,'Renee Mitchell','Caroline','2002-07-06','2017-07-02','http://jenkins.info/','http://www.brown-smith.info/',3),(29,'Michelle Sims','Benjamin','1991-07-31','2004-07-27','https://bentley.com/','https://www.kim.com/',1),(30,'Valerie Barnes',NULL,'1996-04-05','2013-04-01','https://www.cobb.biz/','https://www.lloyd.com/',2),(31,'Jacob Woodward','Aaron','1992-06-27','1999-06-26','http://aguilar.com/','http://www.shea.org/',1),(32,'Denise Olson','Gordon','2003-06-05','2012-06-02','http://www.jacobson.com/','http://duncan-edwards.com/',2),(33,'Andrea Arnold','Angela','2003-05-16','2004-05-15','http://www.flynn.com/','http://james.biz/',3),(34,'Kristina Bennett',NULL,'2004-06-07','2006-06-07','http://fuller.info/','https://gilbert.com/',3),(35,'Nicole Hall','Melissa','1990-01-06','2001-01-03','http://gutierrez.com/','http://flores.com/',1),(36,'Ashley Harris',NULL,'1998-06-17','2009-06-14','https://www.krueger.com/','https://carr.info/',3),(37,'Ashley Gutierrez','Christopher','1981-06-21','1990-06-19','http://ingram.com/','https://www.scott-wilson.info/',1),(38,'Jimmy Daugherty','Connie','1980-10-11','1984-10-10','https://warner.net/','http://www.smith-bell.net/',1),(39,'Michael Riley','Madison','1976-08-04','1980-08-03','http://jones.net/','http://garcia-burton.com/',2),(40,'Carlos Garcia','Vanessa','1994-01-19','2001-01-17','http://www.kelly.com/','http://alvarez-cochran.com/',0),(41,'Sherry Porter',NULL,'1989-07-07','2001-07-04','https://www.barnes.com/','https://www.madden.com/',0),(42,'Debra Curry',NULL,'1974-06-18','1988-06-14','https://www.randolph-powell.com/','https://bishop.net/',1),(43,'Michael Berger','James','2000-04-25','2018-04-21','https://medina-hopkins.com/','http://hall.com/',2),(44,'Joy Nelson',NULL,'1977-10-29','1980-10-28','https://www.lewis-dunn.org/','http://www.sanchez-jones.com/',3),(45,'Melanie Waters','Erin','1990-08-11','1994-08-10','http://www.gray.info/','https://www.garcia-harris.org/',1),(46,'Ryan Jones',NULL,'1991-01-06','2008-01-02','https://www.lara.com/','https://www.melendez.org/',3),(47,'Darryl Davis','Yvonne','1993-07-09','2008-07-05','https://www.hernandez.info/','https://boone.com/',2),(48,'Sergio Wilson','William','2002-07-11','2022-07-06','http://www.osborne-riggs.com/','https://www.flynn.biz/',3),(49,'Jordan Sawyer','Timothy','1975-09-13','1976-09-12','https://www.porter.biz/','https://gates.org/',3),(50,'Wesley Price','Anthony','1979-05-01','1989-04-28','https://www.hicks.com/','http://davies.info/',2);
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
INSERT INTO `building` VALUES (1,'Burke-Davis','Hear attack article almost street son. Opportunity end live own mean player none.',105),(2,'Russell LLC','World language hair cold maybe nice. Drive ago start save performance public.\nCall national not education garden. Though base coach wall course thank.',114),(3,'Lamb-Brewer','Allow least relationship future free bed today window.\nAlready certain wife this machine crime time. Team consumer scene address mouth growth. Reflect most still.',655),(4,'Clarke PLC','Heart girl theory. Easy job describe floor.\nDaughter people yourself amount effect leader community. North maybe card believe high approach religious. Time attention clearly indicate natural.',891),(5,'Jones, Mendez and Glass','Skill tonight budget certain. Despite use point all purpose relationship computer. Door wife become professional table business mission.',602),(6,'Schwartz PLC','Just probably thank. Understand area age on food. Article picture agreement relate thought fall.',903),(7,'Jones, Armstrong and Jackson','Specific race amount talk drive civil. Base board direction today school almost ahead.',218),(8,'Mullins Group','Music simply run bag third herself.\nHead produce better even. Guess color eat process.\nModel long movie consider. Product thousand wish.',584),(9,'Walsh-Price','Play receive fear near help fear. Mr able environmental thought around activity finally. Position hard either see. Environmental above night show truth.',122),(10,'Stewart Group','Father fast serve.\nLead put concern law concern little. Have stage brother director strong drop.\nSenior seat generation choice. Back decide school where.',434),(11,'Anderson, Bailey and Hensley','Everybody likely work recognize. Your break hour week.\nBuy mother season economic. Check around claim tough region.',951),(12,'Summers Inc','Bring five economic vote. Between step house pretty. Ball outside walk woman book.\nThis under allow.',542),(13,'Wood LLC','Whatever north thought force able general. Standard fish morning program pay now her.',944),(14,'Velazquez, Phillips and Walton','Beyond first thought but first professional among. Perform economic guy stuff. Soon north make exist.',144),(15,'Jackson Inc','Above officer painting agent when. Any statement hard tell program help. Police author young police item heart.\nAgain price young popular safe enjoy. So respond son standard she.',826),(16,'Rhodes, Reynolds and Simon','Top better style old daughter travel nice. Identify effort exactly set always entire support. Similar risk old always management mind bag.',369),(17,'Clark Group','Republican cell spend difference hit. Through anything too simply seem water focus fear.\nAlways analysis first age fine. Sit later quite let way finish. Cell responsibility always economic hot.',761),(18,'Baker, Peck and Gibson','Without authority exist break open system talk.\nIndeed agreement fly do. Tend always light community. Performance will everything push.',736),(19,'Moss-Glenn','Expect white whom lose question future program author. Our professor leader family individual. Suddenly game which dog present institution appear.',486),(20,'Reese-Mills','Several feel positive speech nice.\nThrow foreign American agreement crime show.\nMachine future too off people time speak.',574),(21,'Johnson-Jones','How five skill note eight where. Beautiful program character choice.\nPower parent indicate different. Society house face only edge plan. Down majority his green beautiful possible.',594),(22,'Stephens, Martin and Wilson','Society each federal argue high. Professor key work view cup take quality. Speech available PM listen.',871),(23,'Clark LLC','Detail law tend maybe fill around. Movie personal allow strategy trip cause. Old participant activity something whole.\nSafe human crime Mr step. Alone interesting rule tend whole development.',462),(24,'Wells, Lawrence and Benton','Off poor like. Court radio power prove four. Article agreement large add sister.\nInstead present commercial card main identify. Choose court study reveal. Interesting happy decision.',759),(25,'Herrera, Byrd and Davis','Lead front couple hotel. News understand someone large mean it. Inside option look society bed.\nStage cause herself great. Occur item pass own and.',924),(26,'Richards PLC','Else deal economy already stock front president support. Win get herself cultural image fear. Property foot standard others.',610),(27,'Mejia-Valenzuela','Doctor many figure exist. Letter generation everybody lay total.\nSite number scene employee skill. Lead ok agency read represent go and. Present table quickly candidate money his scene.',567),(28,'Harris-Johnson','Hit through thousand detail radio tough. Knowledge partner lawyer town. Have ever ahead television.\nSame information also sound cost enough effort. Decision him then as upon group hot scene.',100),(29,'Brown, Allen and Coleman','Great in seven president first really card throughout. Western leave candidate short special player.\nResearch race per. Wind laugh pattern tax. Determine food really eight necessary think.',302),(30,'Hernandez-Jackson','Site stand process himself difficult. Great list industry scientist part. Know century bar prove something man result. Present customer assume sure pretty start.',417);
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
INSERT INTO `buyer` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(9,9,0),(10,10,0),(11,11,0),(12,12,0),(13,13,0),(14,14,0),(15,15,0),(16,16,0),(17,17,0),(18,18,0),(19,19,0),(20,20,0),(21,21,0),(22,22,0),(23,23,0),(24,24,0),(25,25,0),(26,26,0),(27,27,0),(28,28,0),(29,29,0),(30,30,0),(31,31,0),(32,32,0),(33,33,0),(34,34,0),(35,35,0),(36,36,0),(37,37,0),(38,38,0),(39,39,0),(40,40,0),(41,41,0),(42,42,0),(43,43,0),(44,44,0),(45,45,0),(46,46,0),(47,47,0),(48,48,0),(49,49,1),(50,50,0),(51,51,0),(52,52,0),(53,53,0),(54,54,0),(55,55,0),(56,56,0),(57,57,0),(58,58,0),(59,59,0),(60,60,0),(61,61,0),(62,62,0),(63,63,0),(64,64,0),(65,65,0),(66,66,0),(67,67,0),(68,68,0),(69,69,0),(70,70,0),(71,71,0),(72,72,0),(73,73,0),(74,74,0),(75,75,0),(76,76,0),(77,77,0),(78,78,0),(79,79,0),(80,80,0),(81,81,0),(82,82,0),(83,83,0),(84,84,0),(85,85,0),(86,86,0),(87,87,0),(88,88,0),(89,89,0),(90,90,0),(91,91,0),(92,92,0),(93,93,0),(94,94,0),(95,95,0),(96,96,1),(97,97,0),(98,98,0),(99,99,0),(100,100,0),(101,101,0),(102,102,0),(103,103,0),(104,104,0),(105,105,0),(106,106,0),(107,107,0),(108,108,0),(109,109,0),(110,110,0),(111,111,0),(112,112,0),(113,113,0),(114,114,0),(115,115,1),(116,116,0),(117,117,0),(118,118,1),(119,119,0),(120,120,0),(121,121,0),(122,122,0),(123,123,0),(124,124,0),(125,125,0),(126,126,0),(127,127,0),(128,128,0),(129,129,0),(130,130,0),(131,131,0),(132,132,1),(133,133,0),(134,134,0),(135,135,0),(136,136,0),(137,137,0),(138,138,0),(139,139,0),(140,140,0),(141,141,0),(142,142,0),(143,143,0),(144,144,0),(145,145,0),(146,146,0),(147,147,0),(148,148,0),(149,149,0),(150,150,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,'Kind Concert',1,'2017-09-21 08:22:00','2017-09-21 11:59:00',1,217,9,2,84),(2,1,'Very Concert',1,'2017-09-21 12:33:00','2017-09-21 15:59:00',10,206,5,10,85),(3,1,'System Concert',1,'2017-09-21 17:39:00','2017-09-21 21:01:00',4,202,6,8,81),(4,1,'Create Concert',1,'2017-09-21 22:09:00','2017-09-21 01:13:00',19,184,8,10,90),(5,1,'Person Concert',1,'2017-09-21 01:33:00','2017-09-21 04:44:00',15,191,6,1,90),(6,1,'Seven Concert',2,'2017-09-22 08:51:00','2017-09-22 12:04:00',21,193,8,6,99),(7,2,'Improve Concert',1,'2018-09-14 09:12:00','2018-09-14 12:46:00',2,214,5,8,88),(8,2,'Similar Concert',1,'2018-09-14 13:23:00','2018-09-14 16:58:00',2,215,7,2,95),(9,2,'Window Concert',1,'2018-09-14 18:00:00','2018-09-14 21:10:00',27,190,5,9,99),(10,2,'Increase Concert',1,'2018-09-14 22:17:00','2018-09-14 01:36:00',16,199,6,1,92),(11,2,'Realize Concert',2,'2018-09-15 08:53:00','2018-09-15 12:04:00',23,191,10,10,92),(12,2,'Improve Concert',2,'2018-09-15 13:16:00','2018-09-15 16:27:00',22,191,7,7,83),(13,2,'Quality Concert',2,'2018-09-15 17:15:00','2018-09-15 20:54:00',16,219,8,10,93),(14,2,'Human Concert',2,'2018-09-15 21:33:00','2018-09-15 01:00:00',30,207,7,7,81),(15,2,'Toward Concert',2,'2018-09-15 02:25:00','2018-09-15 05:43:00',13,198,10,6,90),(16,2,'South Concert',2,'2018-09-15 06:15:00','2018-09-15 09:48:00',27,213,10,6,94),(17,3,'Bed Concert',1,'2019-07-16 09:28:00','2019-07-16 13:05:00',29,217,10,8,88),(18,3,'Office Concert',1,'2019-07-16 13:58:00','2019-07-16 17:38:00',13,220,5,5,97),(19,3,'Kind Concert',1,'2019-07-16 18:36:00','2019-07-16 21:59:00',4,203,9,6,86),(20,3,'Seven Concert',1,'2019-07-16 23:14:00','2019-07-16 02:26:00',26,192,6,9,96),(21,3,'Stage Concert',1,'2019-07-16 02:59:00','2019-07-16 06:18:00',21,199,5,6,82),(22,3,'Well Concert',1,'2019-07-16 06:51:00','2019-07-16 09:57:00',20,186,8,8,88),(23,3,'Write Concert',2,'2019-07-17 09:00:00','2019-07-17 12:22:00',16,202,10,9,86),(24,3,'Size Concert',2,'2019-07-17 12:57:00','2019-07-17 16:16:00',23,199,6,5,82),(25,3,'Painting Concert',2,'2019-07-17 17:12:00','2019-07-17 20:37:00',1,205,9,5,85),(26,3,'Strong Concert',2,'2019-07-17 21:16:00','2019-07-17 00:36:00',28,200,5,10,97),(27,4,'Policy Concert',1,'2020-08-22 08:58:00','2020-08-22 12:00:00',6,182,7,8,92),(28,4,'Deep Concert',1,'2020-08-22 13:12:00','2020-08-22 16:44:00',22,212,6,10,85),(29,4,'Only Concert',1,'2020-08-22 17:20:00','2020-08-22 20:27:00',5,187,6,5,98),(30,4,'Key Concert',1,'2020-08-22 21:18:00','2020-08-22 00:54:00',25,216,8,7,93),(31,4,'Place Concert',1,'2020-08-22 01:27:00','2020-08-22 04:35:00',30,188,7,10,82),(32,4,'Down Concert',1,'2020-08-22 05:49:00','2020-08-22 08:51:00',16,182,10,5,90),(33,4,'Have Concert',1,'2020-08-22 10:24:00','2020-08-22 13:50:00',7,206,6,9,95),(34,4,'Spring Concert',1,'2020-08-22 14:49:00','2020-08-22 17:52:00',13,183,6,6,93),(35,4,'Me Concert',1,'2020-08-22 19:30:00','2020-08-22 22:41:00',1,191,10,10,92),(36,4,'Effect Concert',1,'2020-08-22 00:00:00','2020-08-22 03:23:00',14,203,10,6,99),(37,4,'Worker Concert',1,'2020-08-22 03:43:00','2020-08-22 07:03:00',7,200,9,6,84),(38,4,'Business Concert',2,'2020-08-23 08:58:00','2020-08-23 12:22:00',18,204,7,9,81),(39,4,'Charge Concert',2,'2020-08-23 13:56:00','2020-08-23 17:08:00',30,192,6,9,94),(40,4,'Account Concert',2,'2020-08-23 17:41:00','2020-08-23 20:53:00',14,192,6,9,88),(41,4,'Them Concert',2,'2020-08-23 21:20:00','2020-08-23 00:59:00',23,219,10,9,84),(42,4,'Poor Concert',2,'2020-08-23 02:20:00','2020-08-23 05:44:00',14,204,10,5,96),(43,4,'Month Concert',2,'2020-08-23 06:08:00','2020-08-23 09:36:00',18,208,8,9,83),(44,4,'Fish Concert',3,'2020-08-24 09:19:00','2020-08-24 12:51:00',11,212,6,6,87),(45,4,'Of Concert',3,'2020-08-24 13:56:00','2020-08-24 17:00:00',24,184,8,7,85),(46,4,'Wrong Concert',3,'2020-08-24 17:53:00','2020-08-24 21:18:00',8,205,8,1,80),(47,4,'Million Concert',3,'2020-08-24 22:54:00','2020-08-24 02:25:00',12,211,5,5,94),(48,4,'Great Concert',3,'2020-08-24 03:53:00','2020-08-24 07:24:00',4,211,8,7,100),(49,4,'Never Concert',3,'2020-08-24 08:09:00','2020-08-24 11:36:00',20,207,9,9,91),(50,4,'Hand Concert',3,'2020-08-24 12:36:00','2020-08-24 16:01:00',18,205,10,9,82),(51,4,'Seem Concert',4,'2020-08-25 09:17:00','2020-08-25 12:23:00',26,186,8,8,91),(52,4,'A Concert',4,'2020-08-25 13:27:00','2020-08-25 16:54:00',6,207,6,5,88),(53,4,'Teach Concert',4,'2020-08-25 18:29:00','2020-08-25 21:59:00',14,210,6,5,94),(54,4,'Process Concert',4,'2020-08-25 22:48:00','2020-08-25 02:08:00',18,200,7,9,81),(55,4,'Add Concert',4,'2020-08-25 03:37:00','2020-08-25 07:17:00',9,220,8,7,82),(56,4,'Research Concert',4,'2020-08-25 08:07:00','2020-08-25 11:34:00',7,207,10,6,89),(57,4,'How Concert',4,'2020-08-25 12:44:00','2020-08-25 16:00:00',22,196,10,8,80),(58,4,'Common Concert',4,'2020-08-25 17:18:00','2020-08-25 20:46:00',11,208,9,5,98),(59,4,'Home Concert',5,'2020-08-26 08:29:00','2020-08-26 11:54:00',7,205,9,8,86),(60,4,'Watch Concert',5,'2020-08-26 13:17:00','2020-08-26 16:40:00',13,203,9,6,95),(61,4,'Member Concert',5,'2020-08-26 17:11:00','2020-08-26 20:37:00',16,206,6,9,85),(62,4,'Condition Concert',5,'2020-08-26 21:36:00','2020-08-26 00:53:00',7,197,9,2,85),(63,5,'Spend Concert',1,'2021-07-02 08:31:00','2021-07-02 12:10:00',20,219,9,5,80),(64,5,'Another Concert',1,'2021-07-02 13:42:00','2021-07-02 17:17:00',6,215,5,5,89),(65,5,'Not Concert',1,'2021-07-02 18:52:00','2021-07-02 22:07:00',15,195,10,6,96),(66,5,'Subject Concert',1,'2021-07-02 22:47:00','2021-07-02 02:09:00',24,202,7,5,86),(67,5,'Item Concert',1,'2021-07-02 03:19:00','2021-07-02 06:35:00',21,196,9,6,98),(68,5,'Movie Concert',2,'2021-07-03 08:58:00','2021-07-03 12:33:00',19,215,6,10,94),(69,6,'Forward Concert',1,'2022-09-25 09:04:00','2022-09-25 12:34:00',9,210,10,6,87),(70,6,'Recognize Concert',1,'2022-09-25 12:56:00','2022-09-25 16:16:00',30,200,10,10,95),(71,6,'Life Concert',1,'2022-09-25 17:38:00','2022-09-25 20:53:00',12,195,6,10,82),(72,6,'Financial Concert',1,'2022-09-25 22:12:00','2022-09-25 01:20:00',6,188,7,6,94),(73,6,'Fear Concert',1,'2022-09-25 02:34:00','2022-09-25 06:12:00',18,218,10,8,99),(74,6,'Environmental Concert',1,'2022-09-25 06:33:00','2022-09-25 09:46:00',23,193,9,9,87),(75,6,'Organization Concert',2,'2022-09-26 09:39:00','2022-09-26 13:14:00',19,215,7,9,97),(76,6,'Scientist Concert',2,'2022-09-26 14:14:00','2022-09-26 17:15:00',11,181,9,5,82),(77,6,'Generation Concert',2,'2022-09-26 17:42:00','2022-09-26 20:53:00',26,191,6,5,91),(78,6,'Dream Concert',2,'2022-09-26 21:23:00','2022-09-26 00:31:00',30,188,9,9,90),(79,6,'Product Concert',2,'2022-09-26 01:25:00','2022-09-26 04:52:00',11,207,7,8,83),(80,6,'Development Concert',2,'2022-09-26 05:31:00','2022-09-26 09:00:00',23,209,5,6,91),(81,6,'Second Concert',2,'2022-09-26 10:19:00','2022-09-26 13:31:00',16,192,7,6,85),(82,6,'Task Concert',2,'2022-09-26 14:31:00','2022-09-26 17:48:00',17,197,8,7,89),(83,6,'Night Concert',3,'2022-09-27 09:27:00','2022-09-27 12:41:00',2,194,10,6,80),(84,6,'Important Concert',3,'2022-09-27 13:42:00','2022-09-27 16:45:00',4,183,5,6,80),(85,7,'Every Concert',1,'2023-09-19 08:31:00','2023-09-19 11:50:00',11,199,5,10,89),(86,7,'Set Concert',1,'2023-09-19 12:21:00','2023-09-19 15:25:00',24,184,8,10,99),(87,7,'Stand Concert',1,'2023-09-19 16:56:00','2023-09-19 20:17:00',2,201,9,5,81),(88,7,'Drop Concert',1,'2023-09-19 20:59:00','2023-09-19 00:11:00',8,192,8,6,97),(89,7,'Beautiful Concert',2,'2023-09-20 09:33:00','2023-09-20 13:03:00',12,210,5,4,92),(90,7,'Measure Concert',2,'2023-09-20 14:17:00','2023-09-20 17:29:00',15,192,6,10,86),(91,7,'Still Concert',2,'2023-09-20 18:59:00','2023-09-20 22:11:00',19,192,9,8,90),(92,7,'Seven Concert',2,'2023-09-20 22:37:00','2023-09-20 01:47:00',16,190,10,5,100),(93,7,'Anything Concert',2,'2023-09-20 02:09:00','2023-09-20 05:36:00',20,207,5,9,90),(94,7,'Man Concert',2,'2023-09-20 07:11:00','2023-09-20 10:37:00',10,206,10,6,88),(95,7,'Commercial Concert',3,'2023-09-21 08:27:00','2023-09-21 11:42:00',21,195,10,2,92),(96,7,'Too Concert',3,'2023-09-21 12:30:00','2023-09-21 15:40:00',17,190,8,10,90),(97,7,'Pretty Concert',3,'2023-09-21 16:44:00','2023-09-21 20:06:00',27,202,9,5,89),(98,7,'Main Concert',3,'2023-09-21 20:49:00','2023-09-21 00:19:00',10,210,7,6,92),(99,7,'Dog Concert',4,'2023-09-22 09:29:00','2023-09-22 12:40:00',14,191,10,10,92),(100,7,'His Concert',4,'2023-09-22 13:24:00','2023-09-22 16:42:00',29,198,10,7,93),(101,7,'Through Concert',4,'2023-09-22 17:53:00','2023-09-22 21:08:00',27,195,10,5,97),(102,7,'Adult Concert',4,'2023-09-22 22:09:00','2023-09-22 01:26:00',6,197,6,5,98),(103,7,'What Concert',4,'2023-09-22 02:33:00','2023-09-22 05:45:00',12,192,9,10,93),(104,7,'Country Concert',4,'2023-09-22 06:35:00','2023-09-22 10:06:00',22,211,5,6,100),(105,8,'Moment Concert',1,'2024-08-28 08:31:00','2024-08-28 12:04:00',5,213,9,6,82),(106,8,'Admit Concert',1,'2024-08-28 13:43:00','2024-08-28 17:22:00',22,219,7,6,96),(107,8,'Where Concert',1,'2024-08-28 18:04:00','2024-08-28 21:44:00',24,220,9,10,97),(108,8,'Case Concert',1,'2024-08-28 22:12:00','2024-08-28 01:49:00',19,217,10,5,92),(109,8,'Mrs Concert',1,'2024-08-28 02:33:00','2024-08-28 05:37:00',15,184,7,8,90),(110,8,'Around Concert',1,'2024-08-28 06:12:00','2024-08-28 09:15:00',12,183,6,9,97),(111,8,'Plant Concert',1,'2024-08-28 10:51:00','2024-08-28 14:24:00',24,213,10,5,100),(112,8,'Prepare Concert',2,'2024-08-29 08:31:00','2024-08-29 11:53:00',8,202,10,2,96),(113,8,'Describe Concert',2,'2024-08-29 13:08:00','2024-08-29 16:27:00',6,199,9,5,96),(114,9,'Whether Concert',1,'2025-07-14 09:24:00','2025-07-14 12:31:00',21,187,8,2,95),(115,9,'Myself Concert',1,'2025-07-14 13:28:00','2025-07-14 16:48:00',12,200,6,2,80),(116,9,'Strong Concert',1,'2025-07-14 17:40:00','2025-07-14 20:50:00',2,190,5,5,96),(117,9,'Hundred Concert',1,'2025-07-14 22:24:00','2025-07-14 01:25:00',6,181,10,7,94),(118,9,'Customer Concert',1,'2025-07-14 02:10:00','2025-07-14 05:42:00',12,212,5,1,99),(119,9,'Child Concert',1,'2025-07-14 07:06:00','2025-07-14 10:30:00',7,204,10,1,91),(120,9,'Prove Concert',1,'2025-07-14 11:30:00','2025-07-14 15:09:00',18,219,8,1,100),(121,9,'Imagine Concert',1,'2025-07-14 16:06:00','2025-07-14 19:46:00',22,220,7,2,96),(122,9,'Hot Concert',2,'2025-07-15 09:15:00','2025-07-15 12:43:00',12,208,10,2,98),(123,9,'Arm Concert',2,'2025-07-15 13:14:00','2025-07-15 16:54:00',15,220,9,5,92),(124,9,'Long Concert',2,'2025-07-15 18:30:00','2025-07-15 22:06:00',18,216,6,6,92),(125,9,'Sell Concert',3,'2025-07-16 08:45:00','2025-07-16 12:01:00',3,196,8,6,91),(126,9,'Maybe Concert',3,'2025-07-16 12:35:00','2025-07-16 15:38:00',29,183,5,5,86),(127,9,'Fire Concert',3,'2025-07-16 16:42:00','2025-07-16 19:44:00',12,182,9,6,93),(128,9,'Shake Concert',3,'2025-07-16 20:20:00','2025-07-16 23:39:00',22,199,8,6,80),(129,9,'Worker Concert',3,'2025-07-16 01:00:00','2025-07-16 04:05:00',11,185,6,3,95),(130,9,'Offer Concert',3,'2025-07-16 05:11:00','2025-07-16 08:40:00',3,209,10,7,92),(131,9,'Memory Concert',3,'2025-07-16 09:04:00','2025-07-16 12:07:00',12,183,9,7,89),(132,9,'Establish Concert',4,'2025-07-17 09:38:00','2025-07-17 12:59:00',3,201,6,8,89),(133,9,'Participant Concert',4,'2025-07-17 14:38:00','2025-07-17 17:57:00',8,199,7,1,83),(134,9,'Thought Concert',4,'2025-07-17 18:44:00','2025-07-17 22:03:00',12,199,5,5,98),(135,9,'Collection Concert',4,'2025-07-17 23:28:00','2025-07-17 02:45:00',13,197,10,1,92),(136,10,'Cut Concert',1,'2026-08-12 08:38:00','2026-08-12 12:02:00',30,204,6,6,86),(137,10,'Along Concert',1,'2026-08-12 13:11:00','2026-08-12 16:45:00',29,214,10,2,87),(138,10,'Deal Concert',1,'2026-08-12 18:08:00','2026-08-12 21:35:00',21,207,8,2,94),(139,10,'My Concert',1,'2026-08-12 22:50:00','2026-08-12 01:54:00',4,184,7,1,90),(140,10,'Indeed Concert',1,'2026-08-12 02:40:00','2026-08-12 06:03:00',16,203,7,7,100),(141,10,'Explain Concert',1,'2026-08-12 06:43:00','2026-08-12 10:04:00',1,201,8,5,83),(142,10,'Our Concert',2,'2026-08-13 08:20:00','2026-08-13 11:29:00',22,189,5,3,95),(143,10,'Issue Concert',2,'2026-08-13 12:20:00','2026-08-13 15:51:00',19,211,8,5,92),(144,10,'Data Concert',2,'2026-08-13 16:40:00','2026-08-13 20:05:00',16,205,9,1,83),(145,10,'Beautiful Concert',2,'2026-08-13 20:31:00','2026-08-13 23:33:00',18,182,9,1,86),(146,10,'Picture Concert',2,'2026-08-13 00:47:00','2026-08-13 04:06:00',23,199,7,5,86),(147,10,'Data Concert',2,'2026-08-13 05:37:00','2026-08-13 08:41:00',8,184,10,7,84),(148,10,'Represent Concert',2,'2026-08-13 09:59:00','2026-08-13 13:05:00',7,186,10,1,81),(149,10,'That Concert',2,'2026-08-13 14:21:00','2026-08-13 17:39:00',30,198,9,1,86);
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
INSERT INTO `festival` VALUES (1,'2017-09-21',2),(2,'2018-09-14',2),(3,'2019-07-16',2),(4,'2020-08-22',5),(5,'2021-07-02',2),(6,'2022-09-25',3),(7,'2023-09-19',4),(8,'2024-08-28',2),(9,'2025-07-14',4),(10,'2026-08-12',2);
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
INSERT INTO `festival_location` VALUES (1,1,'238 Calvin Neck Apt. 743','Loriport','Madagascar','Europe','-26.198278,87.893099'),(2,2,'43809 Dean Junction','Alexfort','Saudi Arabia','North America','-34.5049595,128.995088'),(3,3,'5089 Glover Locks Suite 528','North Jesse','Latvia','South America','-16.6473185,-106.117752'),(4,4,'9636 Myers Run Suite 903','South Reginaldville','Sudan','Europe','43.060114,-4.468152'),(5,5,'327 Allen Squares Suite 473','Justinville','Sierra Leone','North America','-22.842694,-97.973572'),(6,6,'8500 Shannon Fall Apt. 028','West Cynthiachester','Montenegro','South America','-30.928771,-55.216198'),(7,7,'409 Johnson Unions','Lake Gregorytown','Madagascar','Europe','-75.1509595,-132.879632'),(8,8,'109 Olson Parkway','Port Amandatown','Western Sahara','North America','-9.268011,-7.396820'),(9,9,'72593 Reed Flats','East Jeffreystad','Lithuania','South America','-22.7682865,131.376655'),(10,10,'415 Moss Estate','Charlesshire','Uzbekistan','Europe','-28.937620,-80.064281');
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
INSERT INTO `genre` VALUES (1,'Classical','Baroque',1,NULL),(2,'Jazz','Smooth Jazz',2,NULL),(3,'Hip-Hop','Trap',2,NULL),(4,'Pop',NULL,3,NULL),(5,'Classical','Baroque',3,NULL),(6,'Electronic','House',4,NULL),(7,'Hip-Hop','Trap',5,NULL),(8,'Electronic','House',5,NULL),(9,'Rock','Hard Rock',5,NULL),(10,'Classical','Baroque',6,NULL),(11,'Rock','Hard Rock',6,NULL),(12,'Electronic','House',7,NULL),(13,'Pop',NULL,7,NULL),(14,'Rock','Hard Rock',7,NULL),(15,'Rock','Hard Rock',8,NULL),(16,'Pop',NULL,8,NULL),(17,'Hip-Hop','Trap',8,NULL),(18,'Rock','Hard Rock',9,NULL),(19,'Jazz','Smooth Jazz',9,NULL),(20,'Jazz','Smooth Jazz',10,NULL),(21,'Classical','Baroque',10,NULL),(22,'Hip-Hop','Trap',10,NULL),(23,'Pop',NULL,11,NULL),(24,'Jazz','Smooth Jazz',11,NULL),(25,'Classical','Baroque',12,NULL),(26,'Jazz','Smooth Jazz',12,NULL),(27,'Rock','Hard Rock',12,NULL),(28,'Hip-Hop','Trap',13,NULL),(29,'Jazz','Smooth Jazz',14,NULL),(30,'Classical','Baroque',14,NULL),(31,'Pop',NULL,14,NULL),(32,'Hip-Hop','Trap',15,NULL),(33,'Electronic','House',15,NULL),(34,'Hip-Hop','Trap',16,NULL),(35,'Electronic','House',16,NULL),(36,'Classical','Baroque',17,NULL),(37,'Classical','Baroque',18,NULL),(38,'Electronic','House',19,NULL),(39,'Hip-Hop','Trap',20,NULL),(40,'Rock','Hard Rock',21,NULL),(41,'Classical','Baroque',21,NULL),(42,'Electronic','House',21,NULL),(43,'Hip-Hop','Trap',22,NULL),(44,'Classical','Baroque',22,NULL),(45,'Jazz','Smooth Jazz',22,NULL),(46,'Classical','Baroque',23,NULL),(47,'Electronic','House',23,NULL),(48,'Jazz','Smooth Jazz',23,NULL),(49,'Electronic','House',24,NULL),(50,'Hip-Hop','Trap',25,NULL),(51,'Pop',NULL,26,NULL),(52,'Classical','Baroque',26,NULL),(53,'Hip-Hop','Trap',27,NULL),(54,'Pop',NULL,27,NULL),(55,'Jazz','Smooth Jazz',27,NULL),(56,'Electronic','House',28,NULL),(57,'Hip-Hop','Trap',28,NULL),(58,'Jazz','Smooth Jazz',28,NULL),(59,'Classical','Baroque',29,NULL),(60,'Electronic','House',29,NULL),(61,'Electronic','House',30,NULL),(62,'Pop',NULL,30,NULL),(63,'Classical','Baroque',31,NULL),(64,'Hip-Hop','Trap',31,NULL),(65,'Rock','Hard Rock',32,NULL),(66,'Jazz','Smooth Jazz',33,NULL),(67,'Classical','Baroque',33,NULL),(68,'Hip-Hop','Trap',34,NULL),(69,'Rock','Hard Rock',34,NULL),(70,'Classical','Baroque',35,NULL),(71,'Jazz','Smooth Jazz',35,NULL),(72,'Rock','Hard Rock',35,NULL),(73,'Jazz','Smooth Jazz',36,NULL),(74,'Pop',NULL,36,NULL),(75,'Electronic','House',36,NULL),(76,'Hip-Hop','Trap',37,NULL),(77,'Jazz','Smooth Jazz',38,NULL),(78,'Classical','Baroque',38,NULL),(79,'Hip-Hop','Trap',38,NULL),(80,'Pop',NULL,39,NULL),(81,'Pop',NULL,40,NULL),(82,'Rock','Hard Rock',40,NULL),(83,'Pop',NULL,41,NULL),(84,'Classical','Baroque',41,NULL),(85,'Classical','Baroque',42,NULL),(86,'Electronic','House',43,NULL),(87,'Classical','Baroque',43,NULL),(88,'Rock','Hard Rock',43,NULL),(89,'Jazz','Smooth Jazz',44,NULL),(90,'Classical','Baroque',44,NULL),(91,'Pop',NULL,45,NULL),(92,'Electronic','House',45,NULL),(93,'Jazz','Smooth Jazz',45,NULL),(94,'Jazz','Smooth Jazz',46,NULL),(95,'Electronic','House',46,NULL),(96,'Classical','Baroque',46,NULL),(97,'Hip-Hop','Trap',47,NULL),(98,'Classical','Baroque',48,NULL),(99,'Classical','Baroque',49,NULL),(100,'Jazz','Smooth Jazz',49,NULL),(101,'Rock','Hard Rock',49,NULL),(102,'Pop',NULL,50,NULL),(103,'Classical','Baroque',NULL,1),(104,'Electronic','House',NULL,1),(105,'Pop',NULL,NULL,1),(106,'Jazz','Smooth Jazz',NULL,2),(107,'Classical','Baroque',NULL,3),(108,'Pop',NULL,NULL,3),(109,'Rock','Hard Rock',NULL,4),(110,'Electronic','House',NULL,4),(111,'Hip-Hop','Trap',NULL,4),(112,'Classical','Baroque',NULL,5),(113,'Hip-Hop','Trap',NULL,6),(114,'Classical','Baroque',NULL,6),(115,'Jazz','Smooth Jazz',NULL,7),(116,'Electronic','House',NULL,7),(117,'Rock','Hard Rock',NULL,8),(118,'Electronic','House',NULL,8),(119,'Classical','Baroque',NULL,9),(120,'Jazz','Smooth Jazz',NULL,9),(121,'Classical','Baroque',NULL,10),(122,'Electronic','House',NULL,10),(123,'Rock','Hard Rock',NULL,10),(124,'Classical','Baroque',NULL,11),(125,'Hip-Hop','Trap',NULL,12),(126,'Electronic','House',NULL,12),(127,'Jazz','Smooth Jazz',NULL,12),(128,'Pop',NULL,NULL,13),(129,'Rock','Hard Rock',NULL,13),(130,'Hip-Hop','Trap',NULL,13),(131,'Jazz','Smooth Jazz',NULL,14),(132,'Hip-Hop','Trap',NULL,14),(133,'Pop',NULL,NULL,15),(134,'Hip-Hop','Trap',NULL,15),(135,'Classical','Baroque',NULL,15);
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
INSERT INTO `group` VALUES (1,'Gary Scott Band','2000-07-22','2011-07-20','http://miles.com/','https://www.johnson.com/','Andrea Arnold, Jill Welch, ',0),(2,'Scott Huang Band','1982-11-20','1985-11-19','http://www.morris.com/','https://www.west.com/','Andrea Arnold, Michelle Sims, Amy Newman, Dustin Lawrence, ',0),(3,'Sara Nichols Band','1975-12-08','1982-12-06','https://www.rodriguez-peck.info/','http://www.dennis.com/','Joy Nelson, Paula Ward, Michael Berger, Ashley Harris, Joyce Mcgee, ',0),(4,'Sara Brewer Band','2003-10-04','2020-09-29','https://www.wilson.com/','https://www.moore.biz/','Nicole Hall, Andrea Arnold, Paula Ward, ',0),(5,'John Contreras MD Band','1985-02-28','2001-02-24','http://www.nguyen-deleon.com/','https://mcintosh-holt.org/','Barbara Hart, Darryl Davis, Michael Riley, Jade Bridges, ',0),(6,'Jonathan Hale Band','1997-03-10','2015-03-06','https://stephens.com/','https://www.woods-rogers.info/','Paula Ward, Jill Welch, Sergio Wilson, David Santos, Joy Nelson, ',0),(7,'Lori Lewis Band','1978-09-14','1987-09-12','https://www.evans.com/','https://bailey.net/','Tanner Marsh, Christopher Cisneros MD, Dustin Lawrence, Michael Riley, Debra Curry, ',0),(8,'Brenda Johnson Band','1985-07-07','1996-07-04','https://williams.biz/','https://mcpherson.com/','Barbara Hart, Jordan Sawyer, Darryl Davis, ',0),(9,'Zachary Escobar PhD Band','1990-01-23','2001-01-20','http://davenport.biz/','https://garcia-woods.com/','Ryan Jones, Debra Curry, Michelle Sims, ',0),(10,'Tracy Taylor MD Band','1984-09-15','2002-09-11','https://www.hood.org/','https://berry-rivera.com/','Christina Randall, Carlos Garcia, ',0),(11,'Kathryn Hensley Band','1983-10-14','1998-10-10','https://welch-meyer.biz/','https://www.hughes.com/','Sergio Wilson, Ian Acosta, Nicole Hall, Tonya Tran MD, Michael Wang, ',0),(12,'Matthew Cook Band','1988-09-26','1990-09-26','https://www.day.com/','http://hawkins-mahoney.com/','Dustin Lawrence, Jacob Woodward, Michelle Sims, Hannah Cantrell, Melanie Waters, ',0),(13,'Erica Martin Band','1987-02-12','1993-02-10','http://berry.com/','https://www.espinoza.com/','Tonya Tran MD, Nicole Hall, Brian Serrano, David Santos, ',0),(14,'Laura Ortiz Band','1981-04-16','1994-04-13','http://kelly.org/','http://atkins.net/','Ashley Gutierrez, Barbara Hart, Denise Olson, ',0),(15,'Dr. Jordan Nguyen Band','1978-10-21','1979-10-21','https://clark-morgan.com/','https://www.jones.net/','Renee Mitchell, Nicole Hall, Darryl Davis, ',0);
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
INSERT INTO `group_members` VALUES (1,6),(1,33),(2,13),(2,21),(2,29),(2,33),(3,1),(3,10),(3,36),(3,43),(3,44),(4,1),(4,33),(4,35),(5,20),(5,24),(5,39),(5,47),(6,1),(6,6),(6,11),(6,44),(6,48),(7,3),(7,17),(7,21),(7,39),(7,42),(8,24),(8,47),(8,49),(9,29),(9,42),(9,46),(10,22),(10,40),(11,2),(11,15),(11,18),(11,35),(11,48),(12,21),(12,26),(12,29),(12,31),(12,45),(13,11),(13,15),(13,25),(13,35),(14,24),(14,32),(14,37),(15,28),(15,35),(15,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performances`
--

LOCK TABLES `performances` WRITE;
/*!40000 ALTER TABLE `performances` DISABLE KEYS */;
INSERT INTO `performances` VALUES (1,1,'warm up','2017-09-21 08:22:00','2017-09-21 09:33:00',71,1,'Burke-Davis',NULL,6),(2,1,'headline','2017-09-21 09:46:00','2017-09-21 11:33:00',107,1,'Burke-Davis',NULL,8),(3,2,'headline','2017-09-21 12:33:00','2017-09-21 13:04:00',31,10,'Stewart Group',NULL,7),(4,3,'warm up','2017-09-21 17:39:00','2017-09-21 19:08:00',89,4,'Clarke PLC',46,NULL),(5,5,'warm up','2017-09-21 01:33:00','2017-09-21 02:54:00',81,15,'Jackson Inc',31,NULL),(6,5,'warm up','2017-09-21 03:03:00','2017-09-21 04:27:00',84,15,'Jackson Inc',NULL,4),(7,6,'special_guest','2017-09-22 08:51:00','2017-09-22 10:07:00',76,21,'Johnson-Jones',32,NULL),(8,7,'special_guest','2018-09-14 09:12:00','2018-09-14 11:12:00',120,2,'Russell LLC',NULL,13),(9,8,'special_guest','2018-09-14 13:23:00','2018-09-14 14:38:00',75,2,'Russell LLC',NULL,11),(10,8,'special_guest','2018-09-14 14:53:00','2018-09-14 16:16:00',83,2,'Russell LLC',NULL,7),(11,9,'finale','2018-09-14 18:00:00','2018-09-14 20:00:00',120,27,'Mejia-Valenzuela',27,NULL),(12,11,'headline','2018-09-15 08:53:00','2018-09-15 09:30:00',37,23,'Clark LLC',NULL,15),(13,11,'special_guest','2018-09-15 09:36:00','2018-09-15 10:34:00',58,23,'Clark LLC',NULL,12),(14,12,'finale','2018-09-15 13:16:00','2018-09-15 14:31:00',75,22,'Stephens, Martin and Wilson',43,NULL),(15,13,'special_guest','2018-09-15 17:15:00','2018-09-15 19:03:00',108,16,'Rhodes, Reynolds and Simon',NULL,5),(16,13,'special_guest','2018-09-15 19:08:00','2018-09-15 20:23:00',75,16,'Rhodes, Reynolds and Simon',NULL,9),(17,15,'warm up','2018-09-15 02:25:00','2018-09-15 03:48:00',83,13,'Wood LLC',NULL,14),(18,15,'headline','2018-09-15 03:59:00','2018-09-15 04:57:00',58,13,'Wood LLC',22,NULL),(19,16,'finale','2018-09-15 06:15:00','2018-09-15 07:22:00',67,27,'Mejia-Valenzuela',NULL,3),(20,17,'warm up','2019-07-16 09:28:00','2019-07-16 11:03:00',95,29,'Brown, Allen and Coleman',15,NULL),(21,17,'headline','2019-07-16 11:10:00','2019-07-16 12:57:00',107,29,'Brown, Allen and Coleman',6,NULL),(22,18,'finale','2019-07-16 13:58:00','2019-07-16 15:40:00',102,13,'Wood LLC',NULL,5),(23,19,'warm up','2019-07-16 18:36:00','2019-07-16 19:45:00',69,4,'Clarke PLC',45,NULL),(24,19,'headline','2019-07-16 19:57:00','2019-07-16 20:54:00',57,4,'Clarke PLC',NULL,11),(25,21,'finale','2019-07-16 02:59:00','2019-07-16 04:15:00',76,21,'Johnson-Jones',NULL,10),(26,22,'finale','2019-07-16 06:51:00','2019-07-16 08:48:00',117,20,'Reese-Mills',9,NULL),(27,22,'special_guest','2019-07-16 08:58:00','2019-07-16 09:55:00',57,20,'Reese-Mills',35,NULL),(28,23,'warm up','2019-07-17 09:00:00','2019-07-17 10:30:00',90,16,'Rhodes, Reynolds and Simon',NULL,12),(29,24,'finale','2019-07-17 12:57:00','2019-07-17 14:54:00',117,23,'Clark LLC',NULL,8),(30,24,'finale','2019-07-17 15:01:00','2019-07-17 16:10:00',69,23,'Clark LLC',NULL,4),(31,25,'warm up','2019-07-17 17:12:00','2019-07-17 18:14:00',62,1,'Burke-Davis',NULL,1),(32,27,'warm up','2020-08-22 08:58:00','2020-08-22 09:58:00',60,6,'Schwartz PLC',39,NULL),(33,27,'finale','2020-08-22 10:09:00','2020-08-22 11:39:00',90,6,'Schwartz PLC',NULL,8),(34,28,'headline','2020-08-22 13:12:00','2020-08-22 14:25:00',73,22,'Stephens, Martin and Wilson',NULL,14),(35,28,'finale','2020-08-22 14:34:00','2020-08-22 15:26:00',52,22,'Stephens, Martin and Wilson',NULL,12),(36,29,'finale','2020-08-22 17:20:00','2020-08-22 19:06:00',106,5,'Jones, Mendez and Glass',NULL,1),(37,29,'warm up','2020-08-22 19:11:00','2020-08-22 20:01:00',50,5,'Jones, Mendez and Glass',22,NULL),(38,31,'special_guest','2020-08-22 01:27:00','2020-08-22 02:08:00',41,30,'Hernandez-Jackson',NULL,9),(39,31,'special_guest','2020-08-22 02:18:00','2020-08-22 04:00:00',102,30,'Hernandez-Jackson',42,NULL),(40,32,'warm up','2020-08-22 05:49:00','2020-08-22 07:18:00',89,16,'Rhodes, Reynolds and Simon',NULL,1),(41,32,'special_guest','2020-08-22 07:23:00','2020-08-22 08:40:00',77,16,'Rhodes, Reynolds and Simon',NULL,10),(42,33,'headline','2020-08-22 10:24:00','2020-08-22 10:57:00',33,7,'Jones, Armstrong and Jackson',NULL,10),(43,34,'finale','2020-08-22 14:49:00','2020-08-22 16:19:00',90,13,'Wood LLC',8,NULL),(44,35,'finale','2020-08-22 19:30:00','2020-08-22 21:11:00',101,1,'Burke-Davis',19,NULL),(45,35,'finale','2020-08-22 21:19:00','2020-08-22 22:25:00',66,1,'Burke-Davis',NULL,5),(46,36,'warm up','2020-08-22 00:00:00','2020-08-22 01:24:00',84,14,'Velazquez, Phillips and Walton',42,NULL),(47,37,'finale','2020-08-22 03:43:00','2020-08-22 04:24:00',41,7,'Jones, Armstrong and Jackson',NULL,11),(48,37,'headline','2020-08-22 04:34:00','2020-08-22 05:14:00',40,7,'Jones, Armstrong and Jackson',NULL,7),(49,38,'finale','2020-08-23 08:58:00','2020-08-23 09:57:00',59,18,'Baker, Peck and Gibson',NULL,1),(50,39,'warm up','2020-08-23 13:56:00','2020-08-23 14:59:00',63,30,'Hernandez-Jackson',NULL,14),(51,40,'special_guest','2020-08-23 17:41:00','2020-08-23 19:28:00',107,14,'Velazquez, Phillips and Walton',43,NULL),(52,40,'finale','2020-08-23 19:41:00','2020-08-23 20:28:00',47,14,'Velazquez, Phillips and Walton',NULL,3),(53,42,'warm up','2020-08-23 02:20:00','2020-08-23 03:25:00',65,14,'Velazquez, Phillips and Walton',39,NULL),(54,42,'special_guest','2020-08-23 03:39:00','2020-08-23 04:50:00',71,14,'Velazquez, Phillips and Walton',NULL,9),(55,43,'headline','2020-08-23 06:08:00','2020-08-23 07:13:00',65,18,'Baker, Peck and Gibson',NULL,6),(56,43,'warm up','2020-08-23 07:19:00','2020-08-23 08:45:00',86,18,'Baker, Peck and Gibson',24,NULL),(57,44,'warm up','2020-08-24 09:19:00','2020-08-24 10:05:00',46,11,'Anderson, Bailey and Hensley',NULL,9),(58,44,'warm up','2020-08-24 10:18:00','2020-08-24 11:07:00',49,11,'Anderson, Bailey and Hensley',NULL,11),(59,44,'warm up','2020-08-24 11:17:00','2020-08-24 12:07:00',50,11,'Anderson, Bailey and Hensley',NULL,6),(60,45,'headline','2020-08-24 13:56:00','2020-08-24 14:45:00',49,24,'Wells, Lawrence and Benton',NULL,12),(61,45,'special_guest','2020-08-24 14:52:00','2020-08-24 16:14:00',82,24,'Wells, Lawrence and Benton',NULL,5),(62,46,'special_guest','2020-08-24 17:53:00','2020-08-24 19:13:00',80,8,'Mullins Group',NULL,11),(63,48,'headline','2020-08-24 03:53:00','2020-08-24 05:00:00',67,4,'Clarke PLC',NULL,3),(64,48,'headline','2020-08-24 05:11:00','2020-08-24 06:51:00',100,4,'Clarke PLC',5,NULL),(65,49,'warm up','2020-08-24 08:09:00','2020-08-24 09:32:00',83,20,'Reese-Mills',41,NULL),(66,50,'warm up','2020-08-24 12:36:00','2020-08-24 13:17:00',41,18,'Baker, Peck and Gibson',39,NULL),(67,50,'special_guest','2020-08-24 13:26:00','2020-08-24 14:51:00',85,18,'Baker, Peck and Gibson',NULL,9),(68,50,'special_guest','2020-08-24 15:04:00','2020-08-24 15:49:00',45,18,'Baker, Peck and Gibson',NULL,2),(69,51,'special_guest','2020-08-25 09:17:00','2020-08-25 11:11:00',114,26,'Richards PLC',NULL,10),(70,52,'special_guest','2020-08-25 13:27:00','2020-08-25 14:30:00',63,6,'Schwartz PLC',NULL,7),(71,53,'special_guest','2020-08-25 18:29:00','2020-08-25 20:01:00',92,14,'Velazquez, Phillips and Walton',NULL,4),(72,55,'headline','2020-08-25 03:37:00','2020-08-25 05:08:00',91,9,'Walsh-Price',NULL,11),(73,55,'special_guest','2020-08-25 05:23:00','2020-08-25 07:06:00',103,9,'Walsh-Price',NULL,4),(74,56,'warm up','2020-08-25 08:07:00','2020-08-25 08:53:00',46,7,'Jones, Armstrong and Jackson',NULL,4),(75,57,'headline','2020-08-25 12:44:00','2020-08-25 13:52:00',68,22,'Stephens, Martin and Wilson',13,NULL),(76,57,'special_guest','2020-08-25 14:01:00','2020-08-25 15:19:00',78,22,'Stephens, Martin and Wilson',NULL,11),(77,58,'finale','2020-08-25 17:18:00','2020-08-25 18:53:00',95,11,'Anderson, Bailey and Hensley',NULL,7),(78,58,'special_guest','2020-08-25 19:01:00','2020-08-25 20:40:00',99,11,'Anderson, Bailey and Hensley',NULL,11),(79,59,'special_guest','2020-08-26 08:29:00','2020-08-26 10:05:00',96,7,'Jones, Armstrong and Jackson',NULL,6),(80,59,'warm up','2020-08-26 10:13:00','2020-08-26 11:37:00',84,7,'Jones, Armstrong and Jackson',NULL,2),(81,60,'finale','2020-08-26 13:17:00','2020-08-26 14:02:00',45,13,'Wood LLC',NULL,1),(82,61,'warm up','2020-08-26 17:11:00','2020-08-26 18:14:00',63,16,'Rhodes, Reynolds and Simon',NULL,13),(83,61,'warm up','2020-08-26 18:23:00','2020-08-26 20:13:00',110,16,'Rhodes, Reynolds and Simon',NULL,14),(84,63,'warm up','2021-07-02 08:31:00','2021-07-02 10:28:00',117,20,'Reese-Mills',NULL,4),(85,64,'special_guest','2021-07-02 13:42:00','2021-07-02 14:38:00',56,6,'Schwartz PLC',NULL,2),(86,64,'warm up','2021-07-02 14:46:00','2021-07-02 16:18:00',92,6,'Schwartz PLC',11,NULL),(87,65,'finale','2021-07-02 18:52:00','2021-07-02 19:26:00',34,15,'Jackson Inc',NULL,10),(88,65,'warm up','2021-07-02 19:34:00','2021-07-02 20:24:00',50,15,'Jackson Inc',NULL,3),(89,67,'headline','2021-07-02 03:19:00','2021-07-02 04:47:00',88,21,'Johnson-Jones',45,NULL),(90,67,'headline','2021-07-02 05:01:00','2021-07-02 05:58:00',57,21,'Johnson-Jones',38,NULL),(91,68,'headline','2021-07-03 08:58:00','2021-07-03 09:33:00',35,19,'Moss-Glenn',11,NULL),(92,69,'special_guest','2022-09-25 09:04:00','2022-09-25 09:50:00',46,9,'Walsh-Price',NULL,1),(93,69,'special_guest','2022-09-25 09:56:00','2022-09-25 11:10:00',74,9,'Walsh-Price',30,NULL),(94,69,'warm up','2022-09-25 11:23:00','2022-09-25 12:04:00',41,9,'Walsh-Price',23,NULL),(95,70,'headline','2022-09-25 12:56:00','2022-09-25 13:34:00',38,30,'Hernandez-Jackson',NULL,3),(96,70,'special_guest','2022-09-25 13:39:00','2022-09-25 14:46:00',67,30,'Hernandez-Jackson',16,NULL),(97,71,'special_guest','2022-09-25 17:38:00','2022-09-25 18:20:00',42,12,'Summers Inc',NULL,6),(98,73,'special_guest','2022-09-25 02:34:00','2022-09-25 03:31:00',57,18,'Baker, Peck and Gibson',40,NULL),(99,74,'headline','2022-09-25 06:33:00','2022-09-25 07:43:00',70,23,'Clark LLC',NULL,6),(100,75,'finale','2022-09-26 09:39:00','2022-09-26 11:21:00',102,19,'Moss-Glenn',29,NULL),(101,75,'headline','2022-09-26 11:36:00','2022-09-26 13:03:00',87,19,'Moss-Glenn',NULL,6),(102,76,'headline','2022-09-26 14:14:00','2022-09-26 15:39:00',85,11,'Anderson, Bailey and Hensley',NULL,5),(103,77,'headline','2022-09-26 17:42:00','2022-09-26 18:55:00',73,26,'Richards PLC',NULL,14),(104,77,'headline','2022-09-26 19:01:00','2022-09-26 19:56:00',55,26,'Richards PLC',2,NULL),(105,79,'warm up','2022-09-26 01:25:00','2022-09-26 03:08:00',103,11,'Anderson, Bailey and Hensley',11,NULL),(106,79,'headline','2022-09-26 03:13:00','2022-09-26 04:11:00',58,11,'Anderson, Bailey and Hensley',NULL,3),(107,80,'warm up','2022-09-26 05:31:00','2022-09-26 06:35:00',64,23,'Clark LLC',42,NULL),(108,81,'warm up','2022-09-26 10:19:00','2022-09-26 11:49:00',90,16,'Rhodes, Reynolds and Simon',NULL,8),(109,81,'headline','2022-09-26 12:01:00','2022-09-26 12:48:00',47,16,'Rhodes, Reynolds and Simon',36,NULL),(110,82,'headline','2022-09-26 14:31:00','2022-09-26 15:39:00',68,17,'Clark Group',38,NULL),(111,82,'special_guest','2022-09-26 15:44:00','2022-09-26 16:16:00',32,17,'Clark Group',5,NULL),(112,83,'headline','2022-09-27 09:27:00','2022-09-27 11:18:00',111,2,'Russell LLC',NULL,8),(113,83,'headline','2022-09-27 11:28:00','2022-09-27 12:36:00',68,2,'Russell LLC',NULL,6),(114,84,'headline','2022-09-27 13:42:00','2022-09-27 14:51:00',69,4,'Clarke PLC',NULL,14),(115,85,'finale','2023-09-19 08:31:00','2023-09-19 09:06:00',35,11,'Anderson, Bailey and Hensley',NULL,13),(116,85,'finale','2023-09-19 09:17:00','2023-09-19 10:10:00',53,11,'Anderson, Bailey and Hensley',19,NULL),(117,85,'special_guest','2023-09-19 10:24:00','2023-09-19 11:15:00',51,11,'Anderson, Bailey and Hensley',1,NULL),(118,86,'finale','2023-09-19 12:21:00','2023-09-19 13:55:00',94,24,'Wells, Lawrence and Benton',2,NULL),(119,87,'finale','2023-09-19 16:56:00','2023-09-19 18:10:00',74,2,'Russell LLC',NULL,11),(120,87,'headline','2023-09-19 18:23:00','2023-09-19 19:06:00',43,2,'Russell LLC',NULL,2),(121,89,'special_guest','2023-09-20 09:33:00','2023-09-20 10:48:00',75,12,'Summers Inc',NULL,13),(122,89,'headline','2023-09-20 10:58:00','2023-09-20 11:35:00',37,12,'Summers Inc',28,NULL),(123,90,'warm up','2023-09-20 14:17:00','2023-09-20 15:27:00',70,15,'Jackson Inc',NULL,15),(124,90,'special_guest','2023-09-20 15:40:00','2023-09-20 17:09:00',89,15,'Jackson Inc',NULL,11),(125,91,'finale','2023-09-20 18:59:00','2023-09-20 20:53:00',114,19,'Moss-Glenn',NULL,1),(126,91,'finale','2023-09-20 21:08:00','2023-09-20 21:38:00',30,19,'Moss-Glenn',3,NULL),(127,93,'special_guest','2023-09-20 02:09:00','2023-09-20 02:56:00',47,20,'Reese-Mills',43,NULL),(128,94,'finale','2023-09-20 07:11:00','2023-09-20 07:50:00',39,10,'Stewart Group',41,NULL),(129,95,'warm up','2023-09-21 08:27:00','2023-09-21 09:49:00',82,21,'Johnson-Jones',NULL,14),(130,95,'finale','2023-09-21 10:01:00','2023-09-21 11:14:00',73,21,'Johnson-Jones',NULL,8),(131,96,'headline','2023-09-21 12:30:00','2023-09-21 13:15:00',45,17,'Clark Group',NULL,4),(132,96,'special_guest','2023-09-21 13:27:00','2023-09-21 14:29:00',62,17,'Clark Group',13,NULL),(133,97,'finale','2023-09-21 16:44:00','2023-09-21 17:51:00',67,27,'Mejia-Valenzuela',NULL,8),(134,97,'warm up','2023-09-21 17:58:00','2023-09-21 18:53:00',55,27,'Mejia-Valenzuela',NULL,6),(135,99,'headline','2023-09-22 09:29:00','2023-09-22 10:55:00',86,14,'Velazquez, Phillips and Walton',10,NULL),(136,100,'warm up','2023-09-22 13:24:00','2023-09-22 14:19:00',55,29,'Brown, Allen and Coleman',3,NULL),(137,100,'finale','2023-09-22 14:27:00','2023-09-22 15:11:00',44,29,'Brown, Allen and Coleman',NULL,15),(138,100,'warm up','2023-09-22 15:19:00','2023-09-22 16:26:00',67,29,'Brown, Allen and Coleman',NULL,13),(139,101,'warm up','2023-09-22 17:53:00','2023-09-22 18:48:00',55,27,'Mejia-Valenzuela',11,NULL),(140,103,'finale','2023-09-22 02:33:00','2023-09-22 04:05:00',92,12,'Summers Inc',NULL,15),(141,103,'headline','2023-09-22 04:19:00','2023-09-22 05:29:00',70,12,'Summers Inc',NULL,8),(142,104,'headline','2023-09-22 06:35:00','2023-09-22 08:06:00',91,22,'Stephens, Martin and Wilson',30,NULL),(143,104,'special_guest','2023-09-22 08:11:00','2023-09-22 09:54:00',103,22,'Stephens, Martin and Wilson',NULL,4),(144,105,'warm up','2024-08-28 08:31:00','2024-08-28 09:08:00',37,5,'Jones, Mendez and Glass',NULL,12),(145,105,'headline','2024-08-28 09:18:00','2024-08-28 10:25:00',67,5,'Jones, Mendez and Glass',NULL,13),(146,105,'finale','2024-08-28 10:34:00','2024-08-28 11:43:00',69,5,'Jones, Mendez and Glass',NULL,5),(147,106,'finale','2024-08-28 13:43:00','2024-08-28 14:51:00',68,22,'Stephens, Martin and Wilson',13,NULL),(148,106,'finale','2024-08-28 14:56:00','2024-08-28 15:31:00',35,22,'Stephens, Martin and Wilson',NULL,15),(149,107,'warm up','2024-08-28 18:04:00','2024-08-28 18:45:00',41,24,'Wells, Lawrence and Benton',NULL,6),(150,107,'special_guest','2024-08-28 18:53:00','2024-08-28 20:41:00',108,24,'Wells, Lawrence and Benton',NULL,6),(151,109,'headline','2024-08-28 02:33:00','2024-08-28 04:08:00',95,15,'Jackson Inc',NULL,8),(152,109,'finale','2024-08-28 04:21:00','2024-08-28 04:55:00',34,15,'Jackson Inc',NULL,15),(153,110,'special_guest','2024-08-28 06:12:00','2024-08-28 07:08:00',56,12,'Summers Inc',36,NULL),(154,111,'finale','2024-08-28 10:51:00','2024-08-28 12:31:00',100,24,'Wells, Lawrence and Benton',19,NULL),(155,111,'special_guest','2024-08-28 12:36:00','2024-08-28 13:58:00',82,24,'Wells, Lawrence and Benton',NULL,7),(156,112,'warm up','2024-08-29 08:31:00','2024-08-29 09:59:00',88,8,'Mullins Group',NULL,12),(157,113,'special_guest','2024-08-29 13:08:00','2024-08-29 13:48:00',40,6,'Schwartz PLC',26,NULL),(158,113,'headline','2024-08-29 13:54:00','2024-08-29 14:51:00',57,6,'Schwartz PLC',14,NULL),(159,114,'special_guest','2025-07-14 09:24:00','2025-07-14 10:20:00',56,21,'Johnson-Jones',NULL,5),(160,115,'special_guest','2025-07-14 13:28:00','2025-07-14 15:00:00',92,12,'Summers Inc',NULL,12),(161,116,'headline','2025-07-14 17:40:00','2025-07-14 19:14:00',94,2,'Russell LLC',NULL,14),(162,118,'special_guest','2025-07-14 02:10:00','2025-07-14 04:05:00',115,12,'Summers Inc',NULL,5),(163,118,'warm up','2025-07-14 04:12:00','2025-07-14 04:44:00',32,12,'Summers Inc',1,NULL),(164,119,'finale','2025-07-14 07:06:00','2025-07-14 08:09:00',63,7,'Jones, Armstrong and Jackson',16,NULL),(165,119,'special_guest','2025-07-14 08:19:00','2025-07-14 09:40:00',81,7,'Jones, Armstrong and Jackson',50,NULL),(166,120,'warm up','2025-07-14 11:30:00','2025-07-14 13:00:00',90,18,'Baker, Peck and Gibson',NULL,9),(167,120,'headline','2025-07-14 13:15:00','2025-07-14 14:07:00',52,18,'Baker, Peck and Gibson',NULL,2),(168,121,'warm up','2025-07-14 16:06:00','2025-07-14 17:05:00',59,22,'Stephens, Martin and Wilson',20,NULL),(169,122,'finale','2025-07-15 09:15:00','2025-07-15 10:05:00',50,12,'Summers Inc',NULL,1),(170,123,'special_guest','2025-07-15 13:14:00','2025-07-15 14:34:00',80,15,'Jackson Inc',NULL,1),(171,123,'warm up','2025-07-15 14:41:00','2025-07-15 16:31:00',110,15,'Jackson Inc',NULL,9),(172,124,'headline','2025-07-15 18:30:00','2025-07-15 19:12:00',42,18,'Baker, Peck and Gibson',NULL,13),(173,125,'special_guest','2025-07-16 08:45:00','2025-07-16 10:11:00',86,3,'Lamb-Brewer',4,NULL),(174,126,'headline','2025-07-16 12:35:00','2025-07-16 13:11:00',36,29,'Brown, Allen and Coleman',NULL,7),(175,126,'warm up','2025-07-16 13:17:00','2025-07-16 14:13:00',56,29,'Brown, Allen and Coleman',NULL,9),(176,126,'special_guest','2025-07-16 14:26:00','2025-07-16 15:14:00',48,29,'Brown, Allen and Coleman',NULL,5),(177,127,'special_guest','2025-07-16 16:42:00','2025-07-16 17:18:00',36,12,'Summers Inc',NULL,13),(178,128,'finale','2025-07-16 20:20:00','2025-07-16 21:33:00',73,22,'Stephens, Martin and Wilson',15,NULL),(179,128,'finale','2025-07-16 21:40:00','2025-07-16 22:45:00',65,22,'Stephens, Martin and Wilson',NULL,3),(180,129,'special_guest','2025-07-16 01:00:00','2025-07-16 02:17:00',77,11,'Anderson, Bailey and Hensley',12,NULL),(181,129,'headline','2025-07-16 02:25:00','2025-07-16 02:55:00',30,11,'Anderson, Bailey and Hensley',NULL,14),(182,130,'warm up','2025-07-16 05:11:00','2025-07-16 06:16:00',65,3,'Lamb-Brewer',42,NULL),(183,131,'special_guest','2025-07-16 09:04:00','2025-07-16 10:49:00',105,12,'Summers Inc',NULL,11),(184,132,'finale','2025-07-17 09:38:00','2025-07-17 11:13:00',95,3,'Lamb-Brewer',NULL,13),(185,132,'finale','2025-07-17 11:19:00','2025-07-17 12:08:00',49,3,'Lamb-Brewer',37,NULL),(186,133,'warm up','2025-07-17 14:38:00','2025-07-17 15:51:00',73,8,'Mullins Group',NULL,11),(187,133,'special_guest','2025-07-17 16:02:00','2025-07-17 16:41:00',39,8,'Mullins Group',NULL,9),(188,133,'finale','2025-07-17 16:52:00','2025-07-17 17:39:00',47,8,'Mullins Group',NULL,1),(189,134,'finale','2025-07-17 18:44:00','2025-07-17 20:14:00',90,12,'Summers Inc',14,NULL),(190,134,'warm up','2025-07-17 20:19:00','2025-07-17 21:50:00',91,12,'Summers Inc',NULL,5),(191,136,'headline','2026-08-12 08:38:00','2026-08-12 09:42:00',64,30,'Hernandez-Jackson',NULL,12),(192,137,'special_guest','2026-08-12 13:11:00','2026-08-12 14:06:00',55,29,'Brown, Allen and Coleman',NULL,10),(193,138,'headline','2026-08-12 18:08:00','2026-08-12 19:53:00',105,21,'Johnson-Jones',49,NULL),(194,140,'finale','2026-08-12 02:40:00','2026-08-12 03:45:00',65,16,'Rhodes, Reynolds and Simon',NULL,5),(195,141,'warm up','2026-08-12 06:43:00','2026-08-12 07:32:00',49,1,'Burke-Davis',NULL,3),(196,141,'headline','2026-08-12 07:38:00','2026-08-12 08:25:00',47,1,'Burke-Davis',19,NULL),(197,142,'special_guest','2026-08-13 08:20:00','2026-08-13 09:37:00',77,22,'Stephens, Martin and Wilson',NULL,14),(198,142,'warm up','2026-08-13 09:52:00','2026-08-13 10:39:00',47,22,'Stephens, Martin and Wilson',48,NULL),(199,143,'special_guest','2026-08-13 12:20:00','2026-08-13 12:54:00',34,19,'Moss-Glenn',NULL,6),(200,144,'headline','2026-08-13 16:40:00','2026-08-13 17:40:00',60,16,'Rhodes, Reynolds and Simon',NULL,4),(201,144,'headline','2026-08-13 17:52:00','2026-08-13 18:36:00',44,16,'Rhodes, Reynolds and Simon',NULL,12),(202,145,'finale','2026-08-13 20:31:00','2026-08-13 21:27:00',56,18,'Baker, Peck and Gibson',1,NULL),(203,146,'warm up','2026-08-13 00:47:00','2026-08-13 02:08:00',81,23,'Clark LLC',NULL,6),(204,147,'finale','2026-08-13 05:37:00','2026-08-13 07:27:00',110,8,'Mullins Group',NULL,7),(205,147,'finale','2026-08-13 07:32:00','2026-08-13 08:17:00',45,8,'Mullins Group',NULL,15),(206,148,'special_guest','2026-08-13 09:59:00','2026-08-13 11:11:00',72,7,'Jones, Armstrong and Jackson',NULL,7),(207,148,'finale','2026-08-13 11:18:00','2026-08-13 12:09:00',51,7,'Jones, Armstrong and Jackson',NULL,7),(208,149,'special_guest','2026-08-13 14:21:00','2026-08-13 15:17:00',56,30,'Hernandez-Jackson',NULL,8);
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
INSERT INTO `personel` VALUES (1,'Steven','Thomas',24,'davidrhodes@example.org','851-802-3264','beginer'),(2,'Daisy','Luna',25,'deborahcummings@example.com','001-453-495-5959x172','experienced'),(3,'Allen','Baker',59,'michael83@example.net','001-831-240-3888x159','intern'),(4,'Jacqueline','Payne',50,'ygregory@example.net','(645)334-1560x97027','experienced'),(5,'Tom','Johnson',58,'lhughes@example.com','001-475-291-8896x938','beginer'),(6,'Scott','Martin',38,'robert79@example.com','389-781-3388x2343','very_experienced'),(7,'Angela','Spears',20,'kevin04@example.org','895-922-0970x3897','very_experienced'),(8,'David','Henderson',29,'drobinson@example.com','359-578-0208x608','intern'),(9,'Megan','Rogers',51,'kevin26@example.com','232.588.7291','beginer'),(10,'Shawn','Brooks',26,'bfuller@example.com','(556)762-2192','intern'),(11,'Hannah','Cantrell',36,'johnsonkyle@example.org','(623)750-7789','beginer'),(12,'Alexandria','Barton',55,'jamesbrooks@example.org','(747)588-8030','experienced'),(13,'Amber','Clark',50,'christina45@example.com','353-994-5337x9165','intern'),(14,'Cynthia','Andersen',41,'amysimon@example.org','001-257-241-8416','very_experienced'),(15,'Joseph','Davis',37,'matthew05@example.net','(860)251-2287x8737','intermidiate'),(16,'Nancy','Davidson',51,'brendanacevedo@example.com','4058727041','intermidiate'),(17,'John','Whitehead',53,'dunlapdanny@example.com','726-577-0575x597','very_experienced'),(18,'Jennifer','Perez',22,'jonwoodward@example.net','5137368966','very_experienced'),(19,'Jane','Graves',54,'kirkkim@example.net','(726)977-5343x85413','very_experienced'),(20,'Chelsea','Villegas',43,'lopezdonna@example.com','(854)598-1123','intermidiate'),(21,'Michele','Lane',55,'andrew69@example.net','+1-605-757-8948','very_experienced'),(22,'Katelyn','Nelson',57,'james24@example.com','(987)985-3727x42128','intern'),(23,'Patrick','Johnson',22,'drice@example.com','228.754.6575x365','intermidiate'),(24,'Paul','Blankenship',33,'morasamantha@example.net','(593)210-4414x278','beginer'),(25,'Sandy','Rogers',26,'tinagraves@example.com','(780)243-5866x556','intermidiate'),(26,'Mallory','Dixon',25,'kristenweber@example.net','280.683.0119x1543','intermidiate'),(27,'Tracy','Clements',36,'jessecohen@example.org','(535)874-8413','experienced'),(28,'John','Ware',23,'tonywilliams@example.com','(495)461-0260x6187','very_experienced'),(29,'Stacy','Cohen',56,'tonykey@example.com','(626)365-3071x3355','experienced'),(30,'Kathryn','Shelton',56,'thomasnicholas@example.com','532-981-2651','intermidiate'),(31,'Amy','Calderon',21,'stephanie41@example.org','+1-279-277-7669','very_experienced'),(32,'Yolanda','Le',33,'brookserin@example.com','(536)918-8368','intermidiate'),(33,'Heather','Martin',60,'ythompson@example.com','850-750-9987x39421','intermidiate'),(34,'Angela','Franklin',43,'mark83@example.net','+1-627-791-2569x1083','intern'),(35,'Laura','Anderson',59,'mcgrathchristopher@example.org','8343039733','intern'),(36,'Kimberly','Olsen',42,'gerickson@example.org','(848)488-9665x594','beginer'),(37,'Christy','Lane',25,'ryancain@example.org','659-558-1927x6841','experienced'),(38,'Patrick','Moyer',22,'belinda73@example.org','001-314-821-8201x064','intern'),(39,'Jeffrey','Hill',33,'anthonydavis@example.com','+1-664-608-0371x714','experienced'),(40,'Samuel','Edwards',52,'lmora@example.org','(917)762-1746x586','very_experienced'),(41,'Richard','Herring',40,'alanrogers@example.com','714-870-9200x72269','beginer'),(42,'Charles','Evans',21,'housekelly@example.net','870-647-0494x6241','beginer'),(43,'Anthony','Padilla',21,'brendabutler@example.net','925.213.1205','intermidiate'),(44,'Travis','Mccoy',56,'sara99@example.com','001-391-238-0152x368','experienced'),(45,'Colleen','Carlson',39,'paul71@example.net','+1-455-792-1464x990','intermidiate'),(46,'Deborah','Rosario',58,'brittany96@example.org','328-531-7875','experienced'),(47,'Adam','Schmidt',34,'susan57@example.com','737-470-7182x5725','intern'),(48,'Christopher','Allen',42,'ysilva@example.net','001-950-318-5995','intern'),(49,'Heidi','Meyer',55,'jacksonchristina@example.com','255-384-2027x081','very_experienced'),(50,'Melissa','Harris',46,'browneric@example.org','7996695787','intern'),(51,'Ashley','Swanson',24,'bowenjasmine@example.net','001-331-768-0262x586','beginer'),(52,'Nicholas','Gibson',30,'tammy06@example.org','001-302-387-4116x499','beginer'),(53,'Angela','Leon',55,'ztaylor@example.org','001-655-499-7876x257','experienced'),(54,'Sharon','Lane',26,'carrolljennifer@example.net','(402)318-4398x03748','very_experienced'),(55,'Oscar','Bernard',51,'bridgesmichael@example.com','+1-804-223-1957','intermidiate'),(56,'Jacqueline','Navarro',55,'iandrews@example.org','2189772818','very_experienced'),(57,'Deborah','Andrews',58,'melissa90@example.net','466-682-8142x036','very_experienced'),(58,'Martin','Aguilar',44,'wallacebrandy@example.org','564-729-0986x455','beginer'),(59,'Anthony','Moon',22,'jo82@example.org','001-248-760-9990','experienced'),(60,'Stephanie','Medina',26,'hendersonrobert@example.net','001-727-804-7017','beginer'),(61,'Julie','Bryant',32,'mbass@example.org','(668)677-8667x953','experienced'),(62,'Rodney','Lopez',25,'ehenson@example.com','746-466-8196x42235','beginer'),(63,'Timothy','Daniels',24,'gwright@example.net','846-322-2386','beginer'),(64,'Jared','Blake',22,'justinbryant@example.org','(782)983-6055','intermidiate'),(65,'James','Berry',30,'ramosjoseph@example.org','269-781-0086','experienced'),(66,'Brian','Johnson',52,'jordanashley@example.org','+1-838-554-1364','experienced'),(67,'Katherine','Goodman',53,'howemonique@example.org','(567)287-2917','experienced'),(68,'Cynthia','Tucker',34,'sabrina20@example.com','912-700-9039x52983','beginer'),(69,'George','Harris',51,'shawn29@example.org','001-518-476-4954x577','experienced'),(70,'Amanda','Pollard',39,'mnelson@example.com','(422)413-5764x756','intern'),(71,'Richard','Patterson',43,'shudson@example.com','454.848.6458x23326','beginer'),(72,'Susan','Tucker',38,'robertdurham@example.org','8147040010','beginer'),(73,'Joshua','Bell',51,'middletonsean@example.com','988.846.7546x1680','intermidiate'),(74,'Alexandra','Carr',49,'kimberlywalsh@example.org','(987)233-8362x0554','experienced'),(75,'Ashley','Perez',51,'shannon17@example.com','(909)445-3285x912','very_experienced'),(76,'Shannon','Davis',51,'mossanthony@example.org','853-979-5663x932','experienced'),(77,'Timothy','Bentley',26,'bstewart@example.com','(480)543-4100x3578','intermidiate'),(78,'Jorge','Bishop',48,'kelly72@example.net','595.324.2140','intermidiate'),(79,'Joseph','Hall',60,'dsmith@example.net','461.872.0312','beginer'),(80,'Matthew','Jenkins',20,'mitchell13@example.com','+1-359-669-5984x864','very_experienced'),(81,'Rachel','Bell',33,'david10@example.org','987-218-6840x956','intermidiate'),(82,'Susan','Mercer',26,'gnelson@example.com','933.200.4662x851','intern'),(83,'Brian','Mcguire',50,'wardderek@example.com','+1-377-543-8316','very_experienced'),(84,'Lisa','Grimes',42,'kenneth45@example.org','791-596-0209x38019','intermidiate'),(85,'Sara','James',30,'kimberlywilliams@example.net','308-689-4506x1625','intermidiate'),(86,'Michael','Hancock',40,'tracy25@example.net','001-458-430-9470x078','very_experienced'),(87,'Jill','Banks',24,'boothjennifer@example.com','254-641-1095','beginer'),(88,'Karen','Craig',37,'pgreen@example.net','765-563-6401','experienced'),(89,'Richard','Miller',32,'aaronhall@example.net','403.517.9840x5531','experienced'),(90,'Aimee','Hansen',26,'tjuarez@example.org','+1-967-369-5146','experienced'),(91,'George','Mcgrath',35,'toddbrown@example.org','+1-284-898-8053x2649','intermidiate'),(92,'Colleen','Estrada',47,'christie91@example.org','459-504-3310x6699','intern'),(93,'Bryan','Hall',55,'ashleyperez@example.net','411-576-9839x08369','beginer'),(94,'Erin','Washington',31,'kellycarlos@example.net','001-402-222-1654x476','experienced'),(95,'William','Morris',37,'derek97@example.com','(905)898-0082','experienced'),(96,'Maria','Wagner',37,'elizabeth32@example.org','+1-837-673-6286','intermidiate'),(97,'Brian','Lindsey',38,'bakergeorge@example.org','927.231.1414','beginer'),(98,'Erin','Johnson',31,'koliver@example.com','+1-654-796-4415x4743','very_experienced'),(99,'Daniel','Oconnor',53,'ulee@example.com','001-360-708-2647x041','very_experienced'),(100,'Maria','Lopez',44,'wilsontony@example.net','+1-549-651-5675x4924','intern'),(101,'Matthew','Murray',23,'bwilliams@example.net','001-454-639-1214x579','intermidiate'),(102,'Zachary','Thompson',27,'egray@example.com','919-846-4587','intermidiate'),(103,'Leslie','Thomas',54,'alexandratodd@example.net','(369)279-8356x6689','beginer'),(104,'Jaclyn','Gomez',58,'ubrown@example.org','(471)866-2301x6763','experienced'),(105,'Margaret','Gibbs',33,'elizabethgeorge@example.org','(728)814-4730x2748','experienced'),(106,'Sarah','Wilcox',20,'steven75@example.com','246.271.5588','very_experienced'),(107,'Joshua','Cole',60,'gturner@example.com','378.741.7179','intermidiate'),(108,'Ricky','Webb',44,'lawrencechristopher@example.net','212-699-3567x0474','experienced'),(109,'Diana','Bishop',55,'bakerdeborah@example.net','421-883-7182x17156','intermidiate'),(110,'Troy','Jackson',59,'nharrison@example.org','464-604-6781x874','beginer'),(111,'Alan','Nelson',52,'brandoncarlson@example.net','+1-621-803-0162x841','experienced'),(112,'Christine','Sanders',54,'katie87@example.com','843-427-4696','very_experienced'),(113,'Amanda','Gilbert',56,'jennifer24@example.com','707.384.5831x175','experienced'),(114,'Shannon','Smith',53,'tiffany57@example.net','8485240312','beginer'),(115,'Olivia','Thompson',47,'reedmelinda@example.com','(381)453-4958x4485','beginer'),(116,'Michael','Montoya',26,'howardmary@example.com','409.562.3035x3503','beginer'),(117,'Jacqueline','Zimmerman',56,'danielwhite@example.com','+1-559-390-1119x935','intern'),(118,'Matthew','Leon',57,'theresabanks@example.net','(337)680-7615x3796','intermidiate'),(119,'William','Colon',30,'deborah29@example.net','(285)400-1822x0776','experienced'),(120,'Gregory','Brown',42,'marienguyen@example.com','001-801-877-1077','intermidiate'),(121,'Brian','Peters',35,'joshuamatthews@example.net','(207)910-2379','intern'),(122,'Molly','Davis',60,'stephen27@example.com','001-643-398-4554','very_experienced'),(123,'Tyler','Martin',41,'nguyenlinda@example.com','3049575061','beginer'),(124,'Sandra','Salinas',42,'kacosta@example.com','001-560-244-0366x569','intern'),(125,'Alicia','Mooney',33,'turnerwendy@example.net','001-674-975-0365','beginer'),(126,'Jenna','Braun',37,'michaelwilliams@example.com','9377279504','experienced'),(127,'Michael','Taylor',42,'hturner@example.com','+1-994-577-5434x7337','experienced'),(128,'Ashley','Vaughn',25,'christopherwright@example.com','001-315-473-5253','intern'),(129,'James','Dominguez',35,'mikeweber@example.org','+1-397-938-7889x0720','experienced'),(130,'William','Smith',30,'jeffrey48@example.org','001-694-847-3112x411','very_experienced'),(131,'Michael','Smith',29,'thomasscott@example.net','001-670-892-0318x591','very_experienced'),(132,'Russell','Chavez',24,'melissa66@example.net','729.969.4297x69737','very_experienced'),(133,'Brian','Tanner',50,'btaylor@example.net','(855)264-1777','intermidiate'),(134,'Gerald','Torres',47,'laurenhardin@example.com','931.568.5231x226','very_experienced'),(135,'David','Scott',32,'hughesandrew@example.net','+1-333-252-1858x050','beginer'),(136,'Danny','Miller',43,'dixonsteven@example.org','7538232939','beginer'),(137,'Susan','Pollard',58,'cody93@example.org','428.930.9971','beginer'),(138,'James','Hayes',57,'shawnfoster@example.org','001-400-230-8557x291','experienced'),(139,'Sarah','Mccarthy',37,'sarah38@example.com','001-412-998-5846x353','intermidiate'),(140,'David','Rojas',46,'joseph83@example.net','857-203-7073','intern'),(141,'Adam','Franco',60,'matthewwhite@example.net','+1-784-528-1508x8877','experienced'),(142,'Douglas','Jackson',48,'andrewgillespie@example.com','(621)408-6814','experienced'),(143,'Carla','Johnson',41,'walterrandy@example.org','424-736-2234x79493','very_experienced'),(144,'Nicole','Jenkins',21,'patrickjackson@example.net','001-238-986-9014x459','intern'),(145,'Tammy','Houston',36,'jefferyperez@example.com','377-965-0878','beginer'),(146,'Susan','Brandt',60,'pattyphillips@example.com','998-335-7091','beginer'),(147,'Charles','Stevens',60,'avilacynthia@example.com','+1-346-792-3828x128','beginer'),(148,'John','Chavez',29,'kathrynmays@example.org','+1-841-318-6412x4079','experienced'),(149,'Laurie','Ross',20,'michaelreese@example.com','+1-564-228-7017','beginer'),(150,'Andrew','Acevedo',39,'maryhamilton@example.org','(902)228-2907x4498','very_experienced'),(151,'Kimberly','Turner',30,'lsmith@example.org','981-774-2799','very_experienced'),(152,'Ryan','Lopez',32,'charles84@example.org','855-713-7424','intern'),(153,'John','Ferguson',53,'alexandergray@example.org','001-399-329-8331x485','experienced'),(154,'Paul','Martinez',29,'qbuchanan@example.org','555.721.9232x9704','experienced'),(155,'Noah','Cruz',51,'frankmichael@example.org','448-775-6072x270','intermidiate'),(156,'Grace','Peck',31,'geraldrichardson@example.net','(595)593-4387','experienced'),(157,'Pamela','Spencer',21,'ronalddickerson@example.net','(987)929-5606','intern'),(158,'Elizabeth','Bryant',31,'qwagner@example.com','+1-472-978-0664x9789','very_experienced'),(159,'Cory','Snyder',30,'sromero@example.org','663.554.6795x33690','intermidiate'),(160,'Calvin','Hardy',53,'smithjohn@example.net','(686)652-7204','intern'),(161,'Carly','Nichols',32,'emma73@example.org','953-718-9344x7121','experienced'),(162,'Zachary','Brown',38,'susangoodman@example.org','663.859.9462','experienced'),(163,'Cindy','Lutz',56,'ihahn@example.net','+1-425-846-1898x520','experienced'),(164,'Miranda','Reeves',20,'amy70@example.net','522.797.6877x164','intermidiate'),(165,'Mary','Hopkins',28,'ryoung@example.org','423.337.9681','experienced'),(166,'Rick','Castillo',52,'lreynolds@example.org','403-231-1272','beginer'),(167,'Heather','Moreno',42,'desireeflores@example.net','293-235-1545x59236','very_experienced'),(168,'Scott','Rosales',49,'ycox@example.org','001-361-728-2418x107','intermidiate'),(169,'David','Smith',22,'janicesuarez@example.net','257-888-3374x3643','very_experienced'),(170,'Shelly','Wallace',33,'ocastro@example.org','710.576.4918x29230','experienced'),(171,'Chase','Kelly',55,'barnespatricia@example.net','+1-440-986-8870','intermidiate'),(172,'William','Frost',47,'gguzman@example.com','+1-235-925-4892x404','intermidiate'),(173,'Lori','Allen',51,'onguyen@example.net','+1-873-545-2938','intermidiate'),(174,'Leslie','Mckenzie',27,'georgeknight@example.net','001-212-550-7283x715','intermidiate'),(175,'Mark','French',33,'leah75@example.net','+1-902-415-1442x3162','intern'),(176,'Dan','Miller',51,'amycollins@example.org','224.245.1060x8893','intern'),(177,'Richard','Bailey',45,'michelle71@example.com','001-428-863-5717','intern'),(178,'Linda','Johnson',43,'angelacurry@example.org','877-354-6689','experienced'),(179,'Joseph','Holt',53,'paulhill@example.net','(972)590-0890','experienced'),(180,'Robert','Hale',47,'hmoran@example.net','001-714-765-5025','very_experienced'),(181,'Christopher','Lawrence',33,'erika37@example.net','(864)844-3487x05810','intermidiate'),(182,'Debbie','Martinez',46,'scrawford@example.com','+1-489-335-4949','very_experienced'),(183,'Ricky','Baker',31,'itownsend@example.org','+1-891-332-5397','very_experienced'),(184,'Austin','Diaz',45,'ktownsend@example.org','353-294-2489','intern'),(185,'John','Ibarra',60,'adamshannah@example.com','(624)849-7358','experienced'),(186,'Cody','Brown',53,'april72@example.org','+1-433-829-7645x9188','very_experienced'),(187,'Diane','Welch',23,'rmoore@example.net','+1-790-831-7794x341','intern'),(188,'Brian','Pineda',39,'udunn@example.net','824-680-0951x593','beginer'),(189,'Gloria','York',29,'claudia42@example.com','001-335-657-0223x774','very_experienced'),(190,'Christopher','Zimmerman',20,'riosdouglas@example.org','+1-331-696-8907x4224','intermidiate'),(191,'Tina','Johnston',37,'murrayrobert@example.org','+1-685-852-7218x7280','very_experienced'),(192,'Robert','Hanna',20,'frankrichard@example.org','801.719.5194','experienced'),(193,'Sandra','Stevens',42,'dianajackson@example.com','630-884-2404','intermidiate'),(194,'Kathy','Lucas',51,'kevin63@example.org','001-797-576-0782','very_experienced'),(195,'Rebecca','Harmon',37,'oroth@example.org','289-857-9808','intern'),(196,'Andrew','Strickland',33,'joelhughes@example.com','+1-390-638-8513x358','very_experienced'),(197,'Dean','Anderson',60,'csmith@example.org','001-361-899-5469x272','intern'),(198,'Beth','Martinez',32,'xayers@example.org','284-473-9689','beginer'),(199,'Rachel','Thomas',46,'nancy39@example.org','+1-202-945-6588x244','intern'),(200,'John','Shaw',45,'xwilliams@example.com','001-294-673-0536x515','intern');
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
INSERT INTO `photo` VALUES (1,'images\\IMG_1.jpg','Organization find fall toward feeling.',NULL,15,NULL,NULL,NULL,NULL),(2,'images\\IMG_2.jpg','Who responsibility magazine create inside.',NULL,NULL,NULL,NULL,2,NULL),(3,'images\\IMG_3.jpg','Very identify item piece key.',NULL,NULL,NULL,NULL,10,NULL),(4,'images\\IMG_4.jpg','Focus bill administration bad responsibility institution then seat.',NULL,NULL,NULL,61,NULL,NULL),(5,'images\\IMG_5.jpg','Wear inside marriage speech oil fight myself.',NULL,NULL,NULL,54,NULL,NULL),(6,'images\\IMG_6.jpg','Second will stuff hospital.',NULL,NULL,NULL,NULL,1,NULL),(7,'images\\IMG_7.jpg','Return respond try.',NULL,NULL,NULL,NULL,1,NULL),(8,'images\\IMG_8.jpg','Economic method alone adult office by wait.',NULL,3,NULL,NULL,NULL,NULL),(9,'images\\IMG_9.jpg','To rise whether claim including.',NULL,NULL,NULL,NULL,3,NULL),(10,'images\\IMG_10.jpg','North discover none wish perform person support single.',NULL,NULL,NULL,111,NULL,NULL),(11,'images\\IMG_11.jpg','Edge minute such six fund difficult.',NULL,10,NULL,NULL,NULL,NULL),(12,'images\\IMG_12.jpg','Government morning add world.',NULL,15,NULL,NULL,NULL,NULL),(13,'images\\IMG_13.jpg','Summer officer whose bank area natural.',NULL,NULL,NULL,106,NULL,NULL),(14,'images\\IMG_14.jpg','Now late by almost relationship happy receive.',NULL,NULL,NULL,NULL,NULL,113),(15,'images\\IMG_15.jpg','Four significant test foreign card wait get no.',NULL,12,NULL,NULL,NULL,NULL),(16,'images\\IMG_16.jpg','Future former leg little.',NULL,NULL,NULL,98,NULL,NULL),(17,'images\\IMG_17.jpg','On single security kind hit eye.',NULL,NULL,NULL,NULL,1,NULL),(18,'images\\IMG_18.jpg','Democrat discussion full bag put head course.',NULL,NULL,NULL,NULL,NULL,223),(19,'images\\IMG_19.jpg','Mind there serious capital wonder interview knowledge finally.',NULL,8,NULL,NULL,NULL,NULL),(20,'images\\IMG_20.jpg','Theory after act none.',NULL,3,NULL,NULL,NULL,NULL),(21,'images\\IMG_21.jpg','Hotel can mean himself million.',NULL,NULL,NULL,NULL,8,NULL),(22,'images\\IMG_22.jpg','Page bed evidence box follow.',28,NULL,NULL,NULL,NULL,NULL),(23,'images\\IMG_23.jpg','Him see quite physical baby.',NULL,NULL,57,NULL,NULL,NULL),(24,'images\\IMG_24.jpg','Sign whom purpose relationship book response ask.',NULL,NULL,NULL,NULL,5,NULL),(25,'images\\IMG_25.jpg','Guess east really blood fall.',NULL,NULL,163,NULL,NULL,NULL),(26,'images\\IMG_26.jpg','Drug amount energy improve writer each.',41,NULL,NULL,NULL,NULL,NULL),(27,'images\\IMG_27.jpg','Continue wrong garden watch.',NULL,14,NULL,NULL,NULL,NULL),(28,'images\\IMG_28.jpg','Drug property western we owner blue then view.',NULL,14,NULL,NULL,NULL,NULL),(29,'images\\IMG_29.jpg','Move painting debate agency door in.',NULL,NULL,NULL,NULL,NULL,119),(30,'images\\IMG_30.jpg','Alone race never continue safe.',NULL,NULL,NULL,149,NULL,NULL),(31,'images\\IMG_31.jpg','Nor trouble better identify offer gun stay.',NULL,NULL,NULL,NULL,NULL,202),(32,'images\\IMG_32.jpg','Tree week hand his although.',NULL,7,NULL,NULL,NULL,NULL),(33,'images\\IMG_33.jpg','Address including blue.',NULL,NULL,NULL,NULL,NULL,2),(34,'images\\IMG_34.jpg','View your billion from about such half.',8,NULL,NULL,NULL,NULL,NULL),(35,'images\\IMG_35.jpg','Positive anything wide cut expert.',NULL,NULL,NULL,1,NULL,NULL),(36,'images\\IMG_36.jpg','Sport window yourself.',NULL,13,NULL,NULL,NULL,NULL),(37,'images\\IMG_37.jpg','Speak shake area others.',NULL,NULL,NULL,NULL,8,NULL),(38,'images\\IMG_38.jpg','Film attorney computer senior already sort protect.',NULL,NULL,NULL,96,NULL,NULL),(39,'images\\IMG_39.jpg','Future market price support social black draw.',20,NULL,NULL,NULL,NULL,NULL),(40,'images\\IMG_40.jpg','There push place young position firm.',3,NULL,NULL,NULL,NULL,NULL),(41,'images\\IMG_41.jpg','National couple guy design.',NULL,NULL,NULL,NULL,4,NULL),(42,'images\\IMG_42.jpg','Former three treatment cell.',NULL,2,NULL,NULL,NULL,NULL),(43,'images\\IMG_43.jpg','Left beautiful voice consumer remain understand.',49,NULL,NULL,NULL,NULL,NULL),(44,'images\\IMG_44.jpg','On improve share student manage you.',NULL,NULL,90,NULL,NULL,NULL),(45,'images\\IMG_45.jpg','Near class practice in face yet treatment.',NULL,14,NULL,NULL,NULL,NULL),(46,'images\\IMG_46.jpg','Red somebody society whom owner population sound bill.',NULL,NULL,NULL,NULL,NULL,242),(47,'images\\IMG_47.jpg','Past development within red.',NULL,10,NULL,NULL,NULL,NULL),(48,'images\\IMG_48.jpg','Though step rock student animal one because.',NULL,1,NULL,NULL,NULL,NULL),(49,'images\\IMG_49.jpg','Role contain game discussion attack trade image.',NULL,NULL,49,NULL,NULL,NULL),(50,'images\\IMG_50.jpg','Tend buy candidate film Mrs wait.',NULL,NULL,NULL,NULL,NULL,195);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resale_queue`
--

LOCK TABLES `resale_queue` WRITE;
/*!40000 ALTER TABLE `resale_queue` DISABLE KEYS */;
INSERT INTO `resale_queue` VALUES (1,NULL,84,'Commercial Concert','backstage',218,'2023-09-09 13:45:00'),(2,NULL,91,'Worker Concert','backstage',190,'2025-04-29 11:15:00'),(3,NULL,62,'Beautiful Concert','backstage',151,'2023-09-08 14:00:00'),(4,NULL,39,'Condition Concert','backstage',154,'2020-08-12 13:15:00'),(5,NULL,57,'Represent Concert','backstage',52,'2025-04-29 14:15:00'),(6,NULL,103,'Myself Concert','backstage',184,'2025-04-25 19:30:00'),(7,NULL,48,'Deal Concert','backstage',189,'2025-04-26 09:15:00'),(8,NULL,137,'Along Concert','backstage',174,'2025-04-22 15:30:00'),(9,132,NULL,'Kind Concert','backstage',NULL,'2017-09-08 17:45:00'),(10,NULL,124,'Wrong Concert','backstage',145,'2020-08-09 10:00:00'),(11,NULL,115,'Collection Concert','backstage',41,'2025-04-24 14:15:00'),(12,NULL,21,'Hot Concert','backstage',162,'2025-04-26 09:00:00'),(13,NULL,18,'Worker Concert','backstage',65,'2025-04-22 09:00:00'),(14,NULL,4,'Prove Concert','backstage',202,'2025-04-21 10:00:00'),(15,NULL,130,'Data Concert','backstage',142,'2025-04-27 10:30:00'),(16,NULL,8,'Child Concert','backstage',15,'2025-04-23 10:45:00'),(17,96,NULL,NULL,NULL,218,'2025-04-27 19:30:00'),(18,115,NULL,NULL,NULL,142,'2025-04-23 18:15:00'),(19,NULL,118,'My Concert','backstage',136,'2025-05-01 09:45:00'),(20,NULL,19,'That Concert','backstage',125,'2025-04-27 11:00:00'),(21,NULL,109,'Participant Concert','backstage',20,'2025-04-30 19:15:00'),(22,NULL,119,'Imagine Concert','backstage',178,'2025-04-22 19:00:00'),(23,NULL,115,'Worker Concert','backstage',205,'2025-04-26 19:00:00'),(24,NULL,110,'Whether Concert','backstage',77,'2025-04-25 19:15:00'),(25,49,NULL,'Our Concert','backstage',NULL,'2025-04-21 16:30:00'),(26,NULL,83,'Beautiful Concert','backstage',76,'2025-04-21 13:00:00'),(27,NULL,19,'Hot Concert','backstage',81,'2025-04-21 16:00:00'),(28,NULL,50,'Imagine Concert','backstage',105,'2025-04-23 19:00:00'),(29,118,NULL,NULL,NULL,52,'2025-04-27 10:30:00'),(30,NULL,74,'Person Concert','backstage',107,'2017-09-10 12:00:00'),(31,NULL,118,'Customer Concert','backstage',200,'2025-04-25 14:00:00'),(32,NULL,110,'Deal Concert','backstage',43,'2025-04-20 11:00:00'),(33,NULL,150,'Similar Concert','backstage',6,'2018-09-01 09:45:00'),(34,NULL,30,'Our Concert','backstage',166,'2025-04-20 13:00:00'),(35,NULL,26,'Increase Concert','backstage',182,'2018-09-02 17:00:00'),(36,NULL,49,'Prepare Concert','backstage',51,'2024-08-14 10:45:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,2,87,'3','4','3','3','1'),(2,3,45,'3','5','3','1','3'),(3,4,10,'4','5','5','5','2'),(4,5,81,'3','3','2','4','4'),(5,7,123,'3','3','1','5','4'),(6,11,143,'2','4','1','3','1'),(7,12,102,'4','5','3','3','1'),(8,13,91,'2','5','3','2','3'),(9,14,141,'3','5','4','5','5'),(10,16,99,'3','3','5','4','3'),(11,17,132,'4','5','1','3','4'),(12,19,154,'3','4','2','4','2'),(13,22,130,'4','4','1','5','1'),(14,23,42,'4','3','3','1','3'),(15,24,37,'4','3','4','3','2'),(16,25,139,'5','4','2','5','3'),(17,26,60,'1','2','1','2','3'),(18,27,121,'1','2','5','3','5'),(19,30,82,'2','1','3','1','4'),(20,33,28,'1','2','2','4','4'),(21,35,3,'1','3','2','3','1'),(22,38,83,'3','2','3','1','1'),(23,39,140,'2','3','5','2','4'),(24,42,148,'1','4','4','1','2'),(25,45,76,'1','3','4','4','1'),(26,48,7,'5','2','4','3','1'),(27,49,83,'2','1','3','2','3'),(28,53,113,'5','5','1','2','3'),(29,55,158,'3','1','4','4','2'),(30,56,72,'1','5','1','1','2'),(31,59,11,'4','3','5','3','1'),(32,66,110,'4','5','1','1','1'),(33,67,42,'4','5','2','2','2'),(34,68,14,'3','1','1','4','4'),(35,72,94,'1','3','1','2','3'),(36,74,156,'4','1','3','1','4'),(37,75,115,'5','2','2','4','4'),(38,78,1,'4','5','1','4','2'),(39,79,9,'1','3','5','1','5'),(40,82,149,'1','3','5','2','4'),(41,83,107,'1','4','1','1','4'),(42,84,133,'5','5','2','3','2'),(43,85,124,'2','1','3','1','3'),(44,86,50,'5','5','1','4','2'),(45,88,31,'1','5','1','5','5'),(46,90,22,'1','2','1','5','1'),(47,91,11,'2','1','5','4','2'),(48,93,100,'3','5','3','2','1'),(49,96,24,'2','4','2','4','5'),(50,97,67,'3','4','3','5','3'),(51,98,7,'3','2','2','2','1'),(52,99,132,'3','5','2','2','1'),(53,100,3,'4','3','5','1','3'),(54,102,139,'2','5','4','5','4'),(55,103,10,'5','3','3','5','2'),(56,104,43,'5','2','3','3','3'),(57,108,139,'5','1','2','2','3'),(58,109,15,'5','5','1','3','3'),(59,111,39,'1','2','5','4','3'),(60,112,108,'5','3','3','5','3'),(61,113,96,'2','2','3','2','5'),(62,114,69,'1','5','3','4','3'),(63,115,48,'3','3','5','4','5'),(64,117,90,'3','1','2','2','1'),(65,119,148,'3','2','1','4','4'),(66,120,5,'5','2','4','3','1'),(67,121,65,'1','5','3','2','3'),(68,123,31,'1','1','3','1','5'),(69,124,111,'1','2','3','4','3'),(70,128,157,'5','1','2','3','5'),(71,130,64,'3','4','5','1','4'),(72,131,121,'3','1','3','2','5'),(73,133,126,'4','4','4','4','4'),(74,135,91,'2','1','1','4','4'),(75,137,101,'4','5','2','5','4'),(76,140,26,'1','5','1','3','5'),(77,143,64,'2','5','4','2','5'),(78,146,82,'4','1','2','2','1'),(79,147,15,'4','1','1','3','4'),(80,148,140,'3','4','4','2','4'),(81,149,21,'5','5','1','1','3'),(82,152,81,'1','3','2','5','1'),(83,156,4,'3','2','1','4','3'),(84,157,25,'4','1','2','2','5'),(85,159,38,'4','3','4','1','3'),(86,160,148,'5','5','3','5','4'),(87,161,90,'5','2','5','5','1'),(88,163,7,'4','5','3','1','3'),(89,164,150,'4','1','4','3','3'),(90,165,20,'1','1','2','5','5'),(91,167,145,'2','5','3','4','2'),(92,168,114,'4','1','4','3','3'),(93,169,45,'5','5','1','2','1'),(94,170,81,'1','5','3','4','4'),(95,171,47,'3','2','2','1','4'),(96,172,21,'2','3','4','4','1'),(97,173,90,'4','2','3','2','2'),(98,179,28,'2','5','3','4','3'),(99,180,28,'5','1','2','5','1'),(100,181,148,'2','3','5','5','4'),(101,183,7,'5','4','4','5','1'),(102,185,153,'5','3','1','4','5'),(103,186,15,'5','5','4','2','3'),(104,187,97,'2','5','1','5','5'),(105,191,84,'2','5','5','1','2'),(106,193,108,'1','5','2','4','3'),(107,194,40,'5','5','1','3','3'),(108,197,144,'1','5','1','1','1'),(109,198,103,'4','4','4','5','4'),(110,199,78,'3','5','1','5','3'),(111,201,154,'2','1','3','4','1'),(112,204,155,'2','1','2','2','5'),(113,206,32,'5','3','5','2','3'),(114,207,69,'1','4','1','1','4'),(115,208,97,'2','5','1','4','4'),(116,209,132,'3','3','4','3','3'),(117,210,48,'4','1','1','3','1'),(118,212,121,'5','2','5','4','4'),(119,213,1,'4','1','2','5','2'),(120,214,40,'1','5','3','2','5'),(121,216,46,'5','3','3','5','5'),(122,217,81,'3','1','3','4','4'),(123,219,140,'5','1','5','1','1');
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
INSERT INTO `role_of_personel_on_event` VALUES (20,1,'technical'),(39,1,'technical'),(94,1,'technical'),(150,1,'technical'),(157,1,'technical'),(52,1,'security'),(77,1,'security'),(112,1,'security'),(179,1,'security'),(188,1,'security'),(69,1,'support'),(153,1,'support'),(58,2,'technical'),(83,2,'technical'),(133,2,'technical'),(170,2,'technical'),(178,2,'technical'),(123,2,'security'),(128,2,'security'),(145,2,'security'),(154,2,'security'),(167,2,'security'),(146,2,'support'),(153,2,'support'),(5,3,'technical'),(62,3,'technical'),(77,3,'technical'),(140,3,'technical'),(167,3,'technical'),(33,3,'security'),(102,3,'security'),(166,3,'security'),(179,3,'security'),(192,3,'security'),(72,3,'support'),(116,3,'support'),(58,4,'technical'),(95,4,'technical'),(122,4,'technical'),(138,4,'technical'),(144,4,'technical'),(46,4,'security'),(82,4,'security'),(119,4,'security'),(152,4,'security'),(178,4,'security'),(121,4,'support'),(127,4,'support'),(1,5,'technical'),(16,5,'technical'),(64,5,'technical'),(107,5,'technical'),(134,5,'technical'),(67,5,'security'),(89,5,'security'),(94,5,'security'),(117,5,'security'),(161,5,'security'),(104,5,'support'),(145,5,'support'),(13,6,'technical'),(117,6,'technical'),(126,6,'technical'),(152,6,'technical'),(172,6,'technical'),(105,6,'security'),(143,6,'security'),(160,6,'security'),(166,6,'security'),(197,6,'security'),(199,6,'security'),(30,6,'support'),(161,6,'support'),(25,7,'technical'),(51,7,'technical'),(56,7,'technical'),(72,7,'technical'),(183,7,'technical'),(39,7,'security'),(59,7,'security'),(61,7,'security'),(169,7,'security'),(192,7,'security'),(44,7,'support'),(122,7,'support'),(31,8,'technical'),(62,8,'technical'),(146,8,'technical'),(174,8,'technical'),(200,8,'technical'),(29,8,'security'),(44,8,'security'),(70,8,'security'),(117,8,'security'),(147,8,'security'),(161,8,'security'),(57,8,'support'),(128,8,'support'),(63,9,'technical'),(142,9,'technical'),(168,9,'technical'),(179,9,'technical'),(196,9,'technical'),(15,9,'security'),(17,9,'security'),(42,9,'security'),(62,9,'security'),(145,9,'security'),(197,9,'security'),(159,9,'support'),(165,9,'support'),(14,10,'technical'),(28,10,'technical'),(132,10,'technical'),(191,10,'technical'),(196,10,'technical'),(1,10,'security'),(3,10,'security'),(117,10,'security'),(125,10,'security'),(192,10,'security'),(38,10,'support'),(131,10,'support'),(4,11,'technical'),(63,11,'technical'),(124,11,'technical'),(132,11,'technical'),(194,11,'technical'),(5,11,'security'),(13,11,'security'),(27,11,'security'),(77,11,'security'),(127,11,'security'),(136,11,'security'),(28,11,'support'),(147,11,'support'),(105,12,'technical'),(135,12,'technical'),(176,12,'technical'),(178,12,'technical'),(194,12,'technical'),(20,12,'security'),(91,12,'security'),(127,12,'security'),(128,12,'security'),(159,12,'security'),(12,12,'support'),(96,12,'support'),(49,13,'technical'),(50,13,'technical'),(88,13,'technical'),(116,13,'technical'),(118,13,'technical'),(64,13,'security'),(68,13,'security'),(73,13,'security'),(103,13,'security'),(144,13,'security'),(162,13,'security'),(82,13,'support'),(112,13,'support'),(102,14,'technical'),(123,14,'technical'),(129,14,'technical'),(168,14,'technical'),(190,14,'technical'),(27,14,'security'),(78,14,'security'),(155,14,'security'),(174,14,'security'),(188,14,'security'),(136,14,'support'),(180,14,'support'),(20,15,'technical'),(43,15,'technical'),(50,15,'technical'),(68,15,'technical'),(125,15,'technical'),(32,15,'security'),(36,15,'security'),(89,15,'security'),(100,15,'security'),(141,15,'security'),(39,15,'support'),(56,15,'support'),(6,16,'technical'),(48,16,'technical'),(56,16,'technical'),(58,16,'technical'),(125,16,'technical'),(19,16,'security'),(57,16,'security'),(66,16,'security'),(107,16,'security'),(140,16,'security'),(181,16,'security'),(51,16,'support'),(95,16,'support'),(18,17,'technical'),(111,17,'technical'),(132,17,'technical'),(137,17,'technical'),(153,17,'technical'),(1,17,'security'),(3,17,'security'),(20,17,'security'),(58,17,'security'),(61,17,'security'),(75,17,'support'),(125,17,'support'),(65,18,'technical'),(85,18,'technical'),(102,18,'technical'),(146,18,'technical'),(165,18,'technical'),(2,18,'security'),(35,18,'security'),(69,18,'security'),(95,18,'security'),(199,18,'security'),(17,18,'support'),(19,18,'support'),(43,19,'technical'),(82,19,'technical'),(83,19,'technical'),(119,19,'technical'),(196,19,'technical'),(94,19,'security'),(156,19,'security'),(162,19,'security'),(167,19,'security'),(171,19,'security'),(99,19,'support'),(192,19,'support'),(67,20,'technical'),(69,20,'technical'),(93,20,'technical'),(177,20,'technical'),(196,20,'technical'),(47,20,'security'),(115,20,'security'),(123,20,'security'),(134,20,'security'),(167,20,'security'),(199,20,'security'),(43,20,'support'),(89,20,'support'),(114,21,'technical'),(129,21,'technical'),(132,21,'technical'),(135,21,'technical'),(140,21,'technical'),(22,21,'security'),(42,21,'security'),(49,21,'security'),(69,21,'security'),(198,21,'security'),(90,21,'support'),(109,21,'support'),(17,22,'technical'),(65,22,'technical'),(98,22,'technical'),(138,22,'technical'),(166,22,'technical'),(23,22,'security'),(42,22,'security'),(68,22,'security'),(87,22,'security'),(169,22,'security'),(55,22,'support'),(109,22,'support'),(32,23,'technical'),(42,23,'technical'),(112,23,'technical'),(119,23,'technical'),(128,23,'technical'),(19,23,'security'),(24,23,'security'),(83,23,'security'),(132,23,'security'),(193,23,'security'),(22,23,'support'),(177,23,'support'),(4,24,'technical'),(52,24,'technical'),(106,24,'technical'),(134,24,'technical'),(155,24,'technical'),(9,24,'security'),(61,24,'security'),(104,24,'security'),(162,24,'security'),(190,24,'security'),(87,24,'support'),(124,24,'support'),(13,25,'technical'),(33,25,'technical'),(65,25,'technical'),(85,25,'technical'),(180,25,'technical'),(24,25,'security'),(105,25,'security'),(127,25,'security'),(138,25,'security'),(149,25,'security'),(27,25,'support'),(150,25,'support'),(7,26,'technical'),(70,26,'technical'),(88,26,'technical'),(124,26,'technical'),(158,26,'technical'),(39,26,'security'),(54,26,'security'),(67,26,'security'),(153,26,'security'),(185,26,'security'),(199,26,'security'),(47,26,'support'),(91,26,'support'),(57,27,'technical'),(62,27,'technical'),(68,27,'technical'),(145,27,'technical'),(178,27,'technical'),(33,27,'security'),(45,27,'security'),(81,27,'security'),(124,27,'security'),(190,27,'security'),(53,27,'support'),(136,27,'support'),(12,28,'technical'),(23,28,'technical'),(27,28,'technical'),(127,28,'technical'),(135,28,'technical'),(5,28,'security'),(44,28,'security'),(80,28,'security'),(172,28,'security'),(187,28,'security'),(61,28,'support'),(180,28,'support'),(62,29,'technical'),(87,29,'technical'),(129,29,'technical'),(163,29,'technical'),(180,29,'technical'),(10,29,'security'),(21,29,'security'),(31,29,'security'),(111,29,'security'),(159,29,'security'),(81,29,'support'),(122,29,'support'),(110,30,'technical'),(126,30,'technical'),(131,30,'technical'),(149,30,'technical'),(186,30,'technical'),(46,30,'security'),(112,30,'security'),(153,30,'security'),(157,30,'security'),(190,30,'security'),(54,30,'support'),(180,30,'support'),(29,31,'technical'),(102,31,'technical'),(114,31,'technical'),(117,31,'technical'),(127,31,'technical'),(45,31,'security'),(82,31,'security'),(134,31,'security'),(158,31,'security'),(199,31,'security'),(10,31,'support'),(13,31,'support'),(1,32,'technical'),(17,32,'technical'),(24,32,'technical'),(122,32,'technical'),(151,32,'technical'),(32,32,'security'),(61,32,'security'),(63,32,'security'),(87,32,'security'),(93,32,'security'),(22,32,'support'),(91,32,'support'),(73,33,'technical'),(83,33,'technical'),(121,33,'technical'),(125,33,'technical'),(158,33,'technical'),(18,33,'security'),(64,33,'security'),(92,33,'security'),(113,33,'security'),(118,33,'security'),(198,33,'security'),(85,33,'support'),(153,33,'support'),(47,34,'technical'),(100,34,'technical'),(118,34,'technical'),(123,34,'technical'),(149,34,'technical'),(16,34,'security'),(26,34,'security'),(115,34,'security'),(173,34,'security'),(192,34,'security'),(97,34,'support'),(177,34,'support'),(66,35,'technical'),(134,35,'technical'),(158,35,'technical'),(191,35,'technical'),(194,35,'technical'),(5,35,'security'),(25,35,'security'),(70,35,'security'),(125,35,'security'),(156,35,'security'),(190,35,'security'),(83,35,'support'),(144,35,'support'),(28,36,'technical'),(73,36,'technical'),(118,36,'technical'),(124,36,'technical'),(174,36,'technical'),(27,36,'security'),(48,36,'security'),(49,36,'security'),(93,36,'security'),(171,36,'security'),(189,36,'security'),(90,36,'support'),(149,36,'support'),(11,37,'technical'),(21,37,'technical'),(55,37,'technical'),(181,37,'technical'),(182,37,'technical'),(3,37,'security'),(42,37,'security'),(50,37,'security'),(98,37,'security'),(154,37,'security'),(152,37,'support'),(198,37,'support'),(12,38,'technical'),(56,38,'technical'),(74,38,'technical'),(143,38,'technical'),(170,38,'technical'),(22,38,'security'),(30,38,'security'),(85,38,'security'),(118,38,'security'),(173,38,'security'),(1,38,'support'),(196,38,'support'),(20,39,'technical'),(82,39,'technical'),(87,39,'technical'),(132,39,'technical'),(162,39,'technical'),(10,39,'security'),(11,39,'security'),(38,39,'security'),(40,39,'security'),(153,39,'security'),(134,39,'support'),(200,39,'support'),(4,40,'technical'),(24,40,'technical'),(46,40,'technical'),(62,40,'technical'),(96,40,'technical'),(12,40,'security'),(44,40,'security'),(97,40,'security'),(115,40,'security'),(141,40,'security'),(8,40,'support'),(162,40,'support'),(54,41,'technical'),(61,41,'technical'),(155,41,'technical'),(194,41,'technical'),(196,41,'technical'),(15,41,'security'),(89,41,'security'),(91,41,'security'),(153,41,'security'),(166,41,'security'),(39,41,'support'),(124,41,'support'),(42,42,'technical'),(53,42,'technical'),(85,42,'technical'),(124,42,'technical'),(179,42,'technical'),(54,42,'security'),(91,42,'security'),(130,42,'security'),(147,42,'security'),(167,42,'security'),(192,42,'security'),(31,42,'support'),(151,42,'support'),(40,43,'technical'),(117,43,'technical'),(139,43,'technical'),(145,43,'technical'),(167,43,'technical'),(6,43,'security'),(20,43,'security'),(21,43,'security'),(191,43,'security'),(197,43,'security'),(32,43,'support'),(147,43,'support'),(5,44,'technical'),(18,44,'technical'),(40,44,'technical'),(91,44,'technical'),(156,44,'technical'),(35,44,'security'),(36,44,'security'),(66,44,'security'),(116,44,'security'),(183,44,'security'),(158,44,'support'),(189,44,'support'),(108,45,'technical'),(126,45,'technical'),(140,45,'technical'),(148,45,'technical'),(191,45,'technical'),(26,45,'security'),(54,45,'security'),(73,45,'security'),(97,45,'security'),(169,45,'security'),(109,45,'support'),(114,45,'support'),(15,46,'technical'),(19,46,'technical'),(147,46,'technical'),(173,46,'technical'),(179,46,'technical'),(49,46,'security'),(78,46,'security'),(124,46,'security'),(132,46,'security'),(176,46,'security'),(32,46,'support'),(184,46,'support'),(17,47,'technical'),(82,47,'technical'),(96,47,'technical'),(158,47,'technical'),(196,47,'technical'),(2,47,'security'),(12,47,'security'),(59,47,'security'),(149,47,'security'),(181,47,'security'),(42,47,'support'),(169,47,'support'),(35,48,'technical'),(155,48,'technical'),(167,48,'technical'),(172,48,'technical'),(180,48,'technical'),(51,48,'security'),(70,48,'security'),(72,48,'security'),(127,48,'security'),(134,48,'security'),(163,48,'security'),(82,48,'support'),(164,48,'support'),(82,49,'technical'),(98,49,'technical'),(117,49,'technical'),(136,49,'technical'),(195,49,'technical'),(25,49,'security'),(65,49,'security'),(75,49,'security'),(125,49,'security'),(174,49,'security'),(1,49,'support'),(162,49,'support'),(19,50,'technical'),(49,50,'technical'),(71,50,'technical'),(106,50,'technical'),(179,50,'technical'),(63,50,'security'),(120,50,'security'),(136,50,'security'),(177,50,'security'),(194,50,'security'),(64,50,'support'),(175,50,'support'),(81,51,'technical'),(88,51,'technical'),(162,51,'technical'),(175,51,'technical'),(199,51,'technical'),(41,51,'security'),(55,51,'security'),(129,51,'security'),(178,51,'security'),(193,51,'security'),(128,51,'support'),(150,51,'support'),(66,52,'technical'),(111,52,'technical'),(150,52,'technical'),(166,52,'technical'),(188,52,'technical'),(28,52,'security'),(74,52,'security'),(89,52,'security'),(100,52,'security'),(105,52,'security'),(140,52,'support'),(179,52,'support'),(25,53,'technical'),(118,53,'technical'),(122,53,'technical'),(165,53,'technical'),(178,53,'technical'),(2,53,'security'),(114,53,'security'),(119,53,'security'),(121,53,'security'),(124,53,'security'),(9,53,'support'),(36,53,'support'),(30,54,'technical'),(32,54,'technical'),(78,54,'technical'),(83,54,'technical'),(118,54,'technical'),(38,54,'security'),(50,54,'security'),(128,54,'security'),(181,54,'security'),(182,54,'security'),(5,54,'support'),(123,54,'support'),(31,55,'technical'),(34,55,'technical'),(135,55,'technical'),(153,55,'technical'),(198,55,'technical'),(23,55,'security'),(74,55,'security'),(103,55,'security'),(170,55,'security'),(186,55,'security'),(65,55,'support'),(168,55,'support'),(12,56,'technical'),(19,56,'technical'),(63,56,'technical'),(122,56,'technical'),(198,56,'technical'),(24,56,'security'),(47,56,'security'),(135,56,'security'),(164,56,'security'),(194,56,'security'),(49,56,'support'),(93,56,'support'),(27,57,'technical'),(119,57,'technical'),(162,57,'technical'),(163,57,'technical'),(180,57,'technical'),(16,57,'security'),(45,57,'security'),(60,57,'security'),(187,57,'security'),(193,57,'security'),(1,57,'support'),(117,57,'support'),(18,58,'technical'),(24,58,'technical'),(59,58,'technical'),(172,58,'technical'),(179,58,'technical'),(27,58,'security'),(52,58,'security'),(111,58,'security'),(141,58,'security'),(181,58,'security'),(189,58,'security'),(41,58,'support'),(156,58,'support'),(20,59,'technical'),(40,59,'technical'),(58,59,'technical'),(77,59,'technical'),(104,59,'technical'),(15,59,'security'),(44,59,'security'),(76,59,'security'),(86,59,'security'),(187,59,'security'),(31,59,'support'),(199,59,'support'),(144,60,'technical'),(156,60,'technical'),(157,60,'technical'),(190,60,'technical'),(195,60,'technical'),(36,60,'security'),(62,60,'security'),(63,60,'security'),(67,60,'security'),(115,60,'security'),(124,60,'security'),(131,60,'support'),(145,60,'support'),(19,61,'technical'),(52,61,'technical'),(89,61,'technical'),(109,61,'technical'),(131,61,'technical'),(33,61,'security'),(58,61,'security'),(105,61,'security'),(114,61,'security'),(153,61,'security'),(43,61,'support'),(146,61,'support'),(84,62,'technical'),(108,62,'technical'),(118,62,'technical'),(175,62,'technical'),(188,62,'technical'),(60,62,'security'),(88,62,'security'),(120,62,'security'),(143,62,'security'),(169,62,'security'),(46,62,'support'),(111,62,'support'),(43,63,'technical'),(176,63,'technical'),(188,63,'technical'),(198,63,'technical'),(199,63,'technical'),(77,63,'security'),(81,63,'security'),(93,63,'security'),(118,63,'security'),(120,63,'security'),(30,63,'support'),(137,63,'support'),(16,64,'technical'),(17,64,'technical'),(29,64,'technical'),(133,64,'technical'),(183,64,'technical'),(86,64,'security'),(95,64,'security'),(129,64,'security'),(139,64,'security'),(174,64,'security'),(114,64,'support'),(142,64,'support'),(50,65,'technical'),(57,65,'technical'),(80,65,'technical'),(111,65,'technical'),(169,65,'technical'),(56,65,'security'),(96,65,'security'),(103,65,'security'),(109,65,'security'),(135,65,'security'),(173,65,'security'),(4,65,'support'),(142,65,'support'),(16,66,'technical'),(19,66,'technical'),(41,66,'technical'),(81,66,'technical'),(142,66,'technical'),(29,66,'security'),(86,66,'security'),(127,66,'security'),(133,66,'security'),(179,66,'security'),(146,66,'support'),(153,66,'support'),(101,67,'technical'),(131,67,'technical'),(143,67,'technical'),(188,67,'technical'),(198,67,'technical'),(39,67,'security'),(46,67,'security'),(55,67,'security'),(59,67,'security'),(71,67,'security'),(127,67,'security'),(61,67,'support'),(166,67,'support'),(56,68,'technical'),(87,68,'technical'),(102,68,'technical'),(108,68,'technical'),(126,68,'technical'),(39,68,'security'),(50,68,'security'),(63,68,'security'),(93,68,'security'),(125,68,'security'),(152,68,'security'),(20,68,'support'),(188,68,'support'),(51,69,'technical'),(59,69,'technical'),(104,69,'technical'),(129,69,'technical'),(152,69,'technical'),(19,69,'security'),(94,69,'security'),(112,69,'security'),(127,69,'security'),(139,69,'security'),(123,69,'support'),(173,69,'support'),(36,70,'technical'),(74,70,'technical'),(83,70,'technical'),(96,70,'technical'),(172,70,'technical'),(9,70,'security'),(66,70,'security'),(73,70,'security'),(94,70,'security'),(138,70,'security'),(198,70,'security'),(8,70,'support'),(59,70,'support'),(11,71,'technical'),(13,71,'technical'),(116,71,'technical'),(117,71,'technical'),(187,71,'technical'),(53,71,'security'),(54,71,'security'),(72,71,'security'),(100,71,'security'),(123,71,'security'),(9,71,'support'),(86,71,'support'),(24,72,'technical'),(89,72,'technical'),(91,72,'technical'),(152,72,'technical'),(165,72,'technical'),(9,72,'security'),(48,72,'security'),(65,72,'security'),(106,72,'security'),(159,72,'security'),(58,72,'support'),(186,72,'support'),(32,73,'technical'),(80,73,'technical'),(95,73,'technical'),(146,73,'technical'),(186,73,'technical'),(40,73,'security'),(62,73,'security'),(81,73,'security'),(104,73,'security'),(123,73,'security'),(190,73,'security'),(96,73,'support'),(199,73,'support'),(4,74,'technical'),(58,74,'technical'),(81,74,'technical'),(89,74,'technical'),(131,74,'technical'),(77,74,'security'),(114,74,'security'),(172,74,'security'),(183,74,'security'),(196,74,'security'),(26,74,'support'),(178,74,'support'),(2,75,'technical'),(63,75,'technical'),(66,75,'technical'),(152,75,'technical'),(161,75,'technical'),(5,75,'security'),(73,75,'security'),(77,75,'security'),(83,75,'security'),(94,75,'security'),(160,75,'security'),(84,75,'support'),(181,75,'support'),(24,76,'technical'),(33,76,'technical'),(152,76,'technical'),(157,76,'technical'),(197,76,'technical'),(19,76,'security'),(35,76,'security'),(130,76,'security'),(147,76,'security'),(190,76,'security'),(65,76,'support'),(149,76,'support'),(21,77,'technical'),(42,77,'technical'),(104,77,'technical'),(155,77,'technical'),(188,77,'technical'),(40,77,'security'),(53,77,'security'),(56,77,'security'),(67,77,'security'),(166,77,'security'),(39,77,'support'),(158,77,'support'),(45,78,'technical'),(48,78,'technical'),(102,78,'technical'),(148,78,'technical'),(192,78,'technical'),(40,78,'security'),(66,78,'security'),(68,78,'security'),(75,78,'security'),(92,78,'security'),(65,78,'support'),(161,78,'support'),(8,79,'technical'),(16,79,'technical'),(63,79,'technical'),(177,79,'technical'),(194,79,'technical'),(7,79,'security'),(20,79,'security'),(116,79,'security'),(136,79,'security'),(150,79,'security'),(5,79,'support'),(49,79,'support'),(61,80,'technical'),(91,80,'technical'),(157,80,'technical'),(159,80,'technical'),(177,80,'technical'),(8,80,'security'),(131,80,'security'),(135,80,'security'),(152,80,'security'),(180,80,'security'),(42,80,'support'),(156,80,'support'),(6,81,'technical'),(59,81,'technical'),(90,81,'technical'),(107,81,'technical'),(145,81,'technical'),(11,81,'security'),(28,81,'security'),(114,81,'security'),(128,81,'security'),(158,81,'security'),(157,81,'support'),(185,81,'support'),(18,82,'technical'),(34,82,'technical'),(43,82,'technical'),(70,82,'technical'),(84,82,'technical'),(31,82,'security'),(81,82,'security'),(122,82,'security'),(177,82,'security'),(184,82,'security'),(161,82,'support'),(181,82,'support'),(10,83,'technical'),(86,83,'technical'),(137,83,'technical'),(174,83,'technical'),(181,83,'technical'),(7,83,'security'),(34,83,'security'),(96,83,'security'),(138,83,'security'),(142,83,'security'),(50,83,'support'),(78,83,'support'),(12,84,'technical'),(55,84,'technical'),(70,84,'technical'),(108,84,'technical'),(179,84,'technical'),(27,84,'security'),(88,84,'security'),(110,84,'security'),(138,84,'security'),(167,84,'security'),(97,84,'support'),(127,84,'support'),(26,85,'technical'),(38,85,'technical'),(80,85,'technical'),(92,85,'technical'),(161,85,'technical'),(3,85,'security'),(22,85,'security'),(42,85,'security'),(48,85,'security'),(54,85,'security'),(116,85,'support'),(126,85,'support'),(16,86,'technical'),(94,86,'technical'),(122,86,'technical'),(168,86,'technical'),(184,86,'technical'),(54,86,'security'),(73,86,'security'),(100,86,'security'),(150,86,'security'),(170,86,'security'),(188,86,'security'),(99,86,'support'),(138,86,'support'),(62,87,'technical'),(88,87,'technical'),(147,87,'technical'),(154,87,'technical'),(199,87,'technical'),(32,87,'security'),(106,87,'security'),(131,87,'security'),(151,87,'security'),(183,87,'security'),(9,87,'support'),(87,87,'support'),(27,88,'technical'),(66,88,'technical'),(75,88,'technical'),(100,88,'technical'),(195,88,'technical'),(24,88,'security'),(142,88,'security'),(147,88,'security'),(153,88,'security'),(157,88,'security'),(171,88,'security'),(58,88,'support'),(60,88,'support'),(35,89,'technical'),(42,89,'technical'),(46,89,'technical'),(47,89,'technical'),(66,89,'technical'),(20,89,'security'),(30,89,'security'),(108,89,'security'),(129,89,'security'),(148,89,'security'),(31,89,'support'),(174,89,'support'),(52,90,'technical'),(112,90,'technical'),(135,90,'technical'),(138,90,'technical'),(200,90,'technical'),(29,90,'security'),(85,90,'security'),(139,90,'security'),(154,90,'security'),(171,90,'security'),(72,90,'support'),(190,90,'support'),(1,91,'technical'),(25,91,'technical'),(120,91,'technical'),(138,91,'technical'),(164,91,'technical'),(60,91,'security'),(77,91,'security'),(79,91,'security'),(115,91,'security'),(159,91,'security'),(18,91,'support'),(35,91,'support'),(40,92,'technical'),(112,92,'technical'),(113,92,'technical'),(139,92,'technical'),(189,92,'technical'),(82,92,'security'),(97,92,'security'),(99,92,'security'),(166,92,'security'),(176,92,'security'),(181,92,'security'),(48,92,'support'),(142,92,'support'),(75,93,'technical'),(168,93,'technical'),(184,93,'technical'),(191,93,'technical'),(192,93,'technical'),(19,93,'security'),(33,93,'security'),(57,93,'security'),(96,93,'security'),(122,93,'security'),(102,93,'support'),(117,93,'support'),(71,94,'technical'),(92,94,'technical'),(94,94,'technical'),(110,94,'technical'),(134,94,'technical'),(4,94,'security'),(15,94,'security'),(34,94,'security'),(74,94,'security'),(100,94,'security'),(77,94,'support'),(135,94,'support'),(54,95,'technical'),(82,95,'technical'),(138,95,'technical'),(164,95,'technical'),(168,95,'technical'),(16,95,'security'),(26,95,'security'),(55,95,'security'),(177,95,'security'),(188,95,'security'),(193,95,'security'),(52,95,'support'),(185,95,'support'),(60,96,'technical'),(115,96,'technical'),(131,96,'technical'),(134,96,'technical'),(200,96,'technical'),(75,96,'security'),(88,96,'security'),(92,96,'security'),(165,96,'security'),(190,96,'security'),(30,96,'support'),(122,96,'support'),(1,97,'technical'),(44,97,'technical'),(114,97,'technical'),(145,97,'technical'),(178,97,'technical'),(87,97,'security'),(100,97,'security'),(104,97,'security'),(105,97,'security'),(182,97,'security'),(170,97,'support'),(200,97,'support'),(38,98,'technical'),(55,98,'technical'),(115,98,'technical'),(119,98,'technical'),(198,98,'technical'),(24,98,'security'),(97,98,'security'),(120,98,'security'),(148,98,'security'),(187,98,'security'),(81,98,'support'),(95,98,'support'),(36,99,'technical'),(70,99,'technical'),(131,99,'technical'),(137,99,'technical'),(152,99,'technical'),(38,99,'security'),(62,99,'security'),(67,99,'security'),(95,99,'security'),(130,99,'security'),(199,99,'security'),(48,99,'support'),(104,99,'support'),(5,100,'technical'),(62,100,'technical'),(81,100,'technical'),(152,100,'technical'),(188,100,'technical'),(30,100,'security'),(38,100,'security'),(56,100,'security'),(90,100,'security'),(102,100,'security'),(187,100,'security'),(176,100,'support'),(193,100,'support'),(31,101,'technical'),(56,101,'technical'),(79,101,'technical'),(103,101,'technical'),(131,101,'technical'),(27,101,'security'),(125,101,'security'),(134,101,'security'),(153,101,'security'),(165,101,'security'),(183,101,'security'),(93,101,'support'),(174,101,'support'),(35,102,'technical'),(61,102,'technical'),(78,102,'technical'),(85,102,'technical'),(111,102,'technical'),(24,102,'security'),(72,102,'security'),(79,102,'security'),(81,102,'security'),(148,102,'security'),(123,102,'support'),(150,102,'support'),(79,103,'technical'),(105,103,'technical'),(106,103,'technical'),(174,103,'technical'),(198,103,'technical'),(4,103,'security'),(35,103,'security'),(74,103,'security'),(91,103,'security'),(107,103,'security'),(136,103,'security'),(50,103,'support'),(139,103,'support'),(37,104,'technical'),(99,104,'technical'),(122,104,'technical'),(174,104,'technical'),(185,104,'technical'),(19,104,'security'),(64,104,'security'),(117,104,'security'),(136,104,'security'),(170,104,'security'),(171,104,'security'),(92,104,'support'),(97,104,'support'),(27,105,'technical'),(59,105,'technical'),(93,105,'technical'),(101,105,'technical'),(140,105,'technical'),(170,105,'security'),(183,105,'security'),(187,105,'security'),(196,105,'security'),(199,105,'security'),(43,105,'support'),(72,105,'support'),(21,106,'technical'),(75,106,'technical'),(130,106,'technical'),(185,106,'technical'),(189,106,'technical'),(53,106,'security'),(62,106,'security'),(100,106,'security'),(116,106,'security'),(179,106,'security'),(129,106,'support'),(139,106,'support'),(82,107,'technical'),(96,107,'technical'),(141,107,'technical'),(153,107,'technical'),(177,107,'technical'),(7,107,'security'),(12,107,'security'),(29,107,'security'),(37,107,'security'),(162,107,'security'),(185,107,'security'),(83,107,'support'),(91,107,'support'),(114,108,'technical'),(117,108,'technical'),(167,108,'technical'),(179,108,'technical'),(192,108,'technical'),(66,108,'security'),(77,108,'security'),(120,108,'security'),(152,108,'security'),(198,108,'security'),(25,108,'support'),(176,108,'support'),(13,109,'technical'),(30,109,'technical'),(79,109,'technical'),(83,109,'technical'),(166,109,'technical'),(19,109,'security'),(131,109,'security'),(144,109,'security'),(179,109,'security'),(183,109,'security'),(57,109,'support'),(101,109,'support'),(17,110,'technical'),(30,110,'technical'),(113,110,'technical'),(142,110,'technical'),(190,110,'technical'),(33,110,'security'),(66,110,'security'),(82,110,'security'),(96,110,'security'),(131,110,'security'),(189,110,'security'),(73,110,'support'),(160,110,'support'),(4,111,'technical'),(22,111,'technical'),(151,111,'technical'),(168,111,'technical'),(175,111,'technical'),(15,111,'security'),(32,111,'security'),(48,111,'security'),(153,111,'security'),(164,111,'security'),(171,111,'security'),(50,111,'support'),(82,111,'support'),(31,112,'technical'),(100,112,'technical'),(107,112,'technical'),(110,112,'technical'),(198,112,'technical'),(51,112,'security'),(61,112,'security'),(132,112,'security'),(147,112,'security'),(169,112,'security'),(194,112,'security'),(101,112,'support'),(153,112,'support'),(50,113,'technical'),(89,113,'technical'),(154,113,'technical'),(157,113,'technical'),(200,113,'technical'),(24,113,'security'),(63,113,'security'),(72,113,'security'),(109,113,'security'),(110,113,'security'),(171,113,'security'),(59,113,'support'),(176,113,'support'),(3,114,'technical'),(75,114,'technical'),(94,114,'technical'),(113,114,'technical'),(179,114,'technical'),(16,114,'security'),(45,114,'security'),(57,114,'security'),(117,114,'security'),(123,114,'security'),(182,114,'security'),(18,114,'support'),(63,114,'support'),(52,115,'technical'),(82,115,'technical'),(93,115,'technical'),(113,115,'technical'),(123,115,'technical'),(67,115,'security'),(81,115,'security'),(129,115,'security'),(171,115,'security'),(179,115,'security'),(84,115,'support'),(178,115,'support'),(37,116,'technical'),(44,116,'technical'),(118,116,'technical'),(154,116,'technical'),(168,116,'technical'),(56,116,'security'),(60,116,'security'),(69,116,'security'),(100,116,'security'),(104,116,'security'),(4,116,'support'),(36,116,'support'),(29,117,'technical'),(74,117,'technical'),(114,117,'technical'),(141,117,'technical'),(181,117,'technical'),(15,117,'security'),(57,117,'security'),(99,117,'security'),(128,117,'security'),(131,117,'security'),(191,117,'security'),(104,117,'support'),(196,117,'support'),(32,118,'technical'),(39,118,'technical'),(48,118,'technical'),(58,118,'technical'),(70,118,'technical'),(11,118,'security'),(21,118,'security'),(30,118,'security'),(54,118,'security'),(88,118,'security'),(127,118,'security'),(5,118,'support'),(24,118,'support'),(90,119,'technical'),(136,119,'technical'),(148,119,'technical'),(177,119,'technical'),(200,119,'technical'),(11,119,'security'),(17,119,'security'),(23,119,'security'),(69,119,'security'),(76,119,'security'),(98,119,'security'),(135,119,'support'),(194,119,'support'),(24,120,'technical'),(85,120,'technical'),(121,120,'technical'),(148,120,'technical'),(183,120,'technical'),(12,120,'security'),(15,120,'security'),(90,120,'security'),(96,120,'security'),(176,120,'security'),(190,120,'security'),(64,120,'support'),(116,120,'support'),(54,121,'technical'),(76,121,'technical'),(105,121,'technical'),(134,121,'technical'),(163,121,'technical'),(17,121,'security'),(47,121,'security'),(88,121,'security'),(144,121,'security'),(186,121,'security'),(199,121,'security'),(57,121,'support'),(119,121,'support'),(15,122,'technical'),(60,122,'technical'),(94,122,'technical'),(114,122,'technical'),(129,122,'technical'),(22,122,'security'),(27,122,'security'),(57,122,'security'),(117,122,'security'),(124,122,'security'),(179,122,'security'),(79,122,'support'),(189,122,'support'),(26,123,'technical'),(69,123,'technical'),(134,123,'technical'),(159,123,'technical'),(182,123,'technical'),(14,123,'security'),(67,123,'security'),(70,123,'security'),(125,123,'security'),(180,123,'security'),(11,123,'support'),(169,123,'support'),(6,124,'technical'),(27,124,'technical'),(129,124,'technical'),(138,124,'technical'),(198,124,'technical'),(57,124,'security'),(62,124,'security'),(66,124,'security'),(88,124,'security'),(133,124,'security'),(81,124,'support'),(104,124,'support'),(47,125,'technical'),(51,125,'technical'),(71,125,'technical'),(122,125,'technical'),(128,125,'technical'),(9,125,'security'),(74,125,'security'),(87,125,'security'),(176,125,'security'),(185,125,'security'),(152,125,'support'),(180,125,'support'),(72,126,'technical'),(169,126,'technical'),(170,126,'technical'),(174,126,'technical'),(185,126,'technical'),(69,126,'security'),(127,126,'security'),(129,126,'security'),(147,126,'security'),(168,126,'security'),(145,126,'support'),(166,126,'support'),(26,127,'technical'),(40,127,'technical'),(144,127,'technical'),(177,127,'technical'),(182,127,'technical'),(5,127,'security'),(120,127,'security'),(126,127,'security'),(158,127,'security'),(173,127,'security'),(123,127,'support'),(147,127,'support'),(66,128,'technical'),(152,128,'technical'),(163,128,'technical'),(169,128,'technical'),(175,128,'technical'),(7,128,'security'),(32,128,'security'),(59,128,'security'),(97,128,'security'),(135,128,'security'),(24,128,'support'),(77,128,'support'),(24,129,'technical'),(56,129,'technical'),(136,129,'technical'),(167,129,'technical'),(195,129,'technical'),(3,129,'security'),(11,129,'security'),(67,129,'security'),(88,129,'security'),(96,129,'security'),(165,129,'security'),(148,129,'support'),(187,129,'support'),(60,130,'technical'),(103,130,'technical'),(119,130,'technical'),(137,130,'technical'),(171,130,'technical'),(17,130,'security'),(21,130,'security'),(38,130,'security'),(77,130,'security'),(161,130,'security'),(108,130,'support'),(197,130,'support'),(41,131,'technical'),(101,131,'technical'),(114,131,'technical'),(147,131,'technical'),(194,131,'technical'),(2,131,'security'),(19,131,'security'),(40,131,'security'),(61,131,'security'),(149,131,'security'),(166,131,'support'),(199,131,'support'),(95,132,'technical'),(124,132,'technical'),(142,132,'technical'),(149,132,'technical'),(150,132,'technical'),(37,132,'security'),(74,132,'security'),(141,132,'security'),(153,132,'security'),(188,132,'security'),(14,132,'support'),(120,132,'support'),(5,133,'technical'),(12,133,'technical'),(104,133,'technical'),(122,133,'technical'),(194,133,'technical'),(35,133,'security'),(41,133,'security'),(49,133,'security'),(125,133,'security'),(197,133,'security'),(62,133,'support'),(181,133,'support'),(8,134,'technical'),(56,134,'technical'),(57,134,'technical'),(83,134,'technical'),(105,134,'technical'),(37,134,'security'),(111,134,'security'),(120,134,'security'),(142,134,'security'),(144,134,'security'),(87,134,'support'),(186,134,'support'),(23,135,'technical'),(62,135,'technical'),(77,135,'technical'),(146,135,'technical'),(184,135,'technical'),(11,135,'security'),(34,135,'security'),(115,135,'security'),(124,135,'security'),(147,135,'security'),(194,135,'security'),(1,135,'support'),(74,135,'support'),(76,136,'technical'),(101,136,'technical'),(151,136,'technical'),(185,136,'technical'),(188,136,'technical'),(4,136,'security'),(109,136,'security'),(136,136,'security'),(179,136,'security'),(183,136,'security'),(38,136,'support'),(166,136,'support'),(18,137,'technical'),(61,137,'technical'),(72,137,'technical'),(85,137,'technical'),(151,137,'technical'),(6,137,'security'),(13,137,'security'),(29,137,'security'),(146,137,'security'),(193,137,'security'),(47,137,'support'),(132,137,'support'),(18,138,'technical'),(47,138,'technical'),(134,138,'technical'),(137,138,'technical'),(184,138,'technical'),(37,138,'security'),(89,138,'security'),(104,138,'security'),(130,138,'security'),(158,138,'security'),(193,138,'security'),(109,138,'support'),(154,138,'support'),(1,139,'technical'),(25,139,'technical'),(31,139,'technical'),(56,139,'technical'),(100,139,'technical'),(53,139,'security'),(80,139,'security'),(103,139,'security'),(162,139,'security'),(191,139,'security'),(110,139,'support'),(149,139,'support'),(79,140,'technical'),(85,140,'technical'),(136,140,'technical'),(143,140,'technical'),(186,140,'technical'),(47,140,'security'),(57,140,'security'),(124,140,'security'),(139,140,'security'),(151,140,'security'),(192,140,'security'),(26,140,'support'),(153,140,'support'),(22,141,'technical'),(39,141,'technical'),(53,141,'technical'),(155,141,'technical'),(171,141,'technical'),(1,141,'security'),(27,141,'security'),(57,141,'security'),(73,141,'security'),(149,141,'security'),(78,141,'support'),(102,141,'support'),(20,142,'technical'),(49,142,'technical'),(172,142,'technical'),(176,142,'technical'),(182,142,'technical'),(8,142,'security'),(12,142,'security'),(54,142,'security'),(60,142,'security'),(99,142,'security'),(109,142,'support'),(149,142,'support'),(27,143,'technical'),(102,143,'technical'),(105,143,'technical'),(158,143,'technical'),(170,143,'technical'),(12,143,'security'),(36,143,'security'),(51,143,'security'),(104,143,'security'),(179,143,'security'),(75,143,'support'),(193,143,'support'),(103,144,'technical'),(136,144,'technical'),(139,144,'technical'),(190,144,'technical'),(192,144,'technical'),(22,144,'security'),(50,144,'security'),(56,144,'security'),(63,144,'security'),(79,144,'security'),(30,144,'support'),(191,144,'support'),(91,145,'technical'),(152,145,'technical'),(154,145,'technical'),(182,145,'technical'),(183,145,'technical'),(13,145,'security'),(23,145,'security'),(173,145,'security'),(179,145,'security'),(189,145,'security'),(40,145,'support'),(122,145,'support'),(26,146,'technical'),(74,146,'technical'),(126,146,'technical'),(139,146,'technical'),(172,146,'technical'),(47,146,'security'),(73,146,'security'),(85,146,'security'),(86,146,'security'),(90,146,'security'),(43,146,'support'),(192,146,'support'),(90,147,'technical'),(120,147,'technical'),(137,147,'technical'),(169,147,'technical'),(181,147,'technical'),(3,147,'security'),(45,147,'security'),(57,147,'security'),(143,147,'security'),(157,147,'security'),(79,147,'support'),(86,147,'support'),(70,148,'technical'),(97,148,'technical'),(142,148,'technical'),(161,148,'technical'),(200,148,'technical'),(14,148,'security'),(46,148,'security'),(157,148,'security'),(163,148,'security'),(166,148,'security'),(88,148,'support'),(189,148,'support'),(80,149,'technical'),(119,149,'technical'),(121,149,'technical'),(173,149,'technical'),(199,149,'technical'),(5,149,'security'),(16,149,'security'),(78,149,'security'),(95,149,'security'),(138,149,'security'),(23,149,'support'),(187,149,'support');
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
INSERT INTO `seller` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,1),(5,5,0),(6,6,0),(7,7,0),(8,8,1),(9,9,0),(10,10,0),(11,11,0),(12,12,0),(13,13,0),(14,14,0),(15,15,0),(16,16,0),(17,17,0),(18,18,1),(19,19,2),(20,20,0),(21,21,1),(22,22,0),(23,23,0),(24,24,0),(25,25,0),(26,26,1),(27,27,0),(28,28,0),(29,29,0),(30,30,1),(31,31,0),(32,32,0),(33,33,0),(34,34,0),(35,35,0),(36,36,0),(37,37,0),(38,38,0),(39,39,1),(40,40,0),(41,41,0),(42,42,0),(43,43,0),(44,44,0),(45,45,0),(46,46,0),(47,47,0),(48,48,1),(49,49,1),(50,50,1),(51,51,0),(52,52,0),(53,53,0),(54,54,0),(55,55,0),(56,56,0),(57,57,1),(58,58,0),(59,59,0),(60,60,0),(61,61,0),(62,62,1),(63,63,0),(64,64,0),(65,65,0),(66,66,0),(67,67,0),(68,68,0),(69,69,0),(70,70,0),(71,71,0),(72,72,0),(73,73,0),(74,74,1),(75,75,0),(76,76,0),(77,77,0),(78,78,0),(79,79,0),(80,80,0),(81,81,0),(82,82,0),(83,83,1),(84,84,1),(85,85,0),(86,86,0),(87,87,0),(88,88,0),(89,89,0),(90,90,0),(91,91,1),(92,92,0),(93,93,0),(94,94,0),(95,95,0),(96,96,0),(97,97,0),(98,98,0),(99,99,0),(100,100,0),(101,101,0),(102,102,0),(103,103,1),(104,104,0),(105,105,0),(106,106,0),(107,107,0),(108,108,0),(109,109,1),(110,110,2),(111,111,0),(112,112,0),(113,113,0),(114,114,0),(115,115,2),(116,116,0),(117,117,0),(118,118,2),(119,119,1),(120,120,0),(121,121,0),(122,122,0),(123,123,0),(124,124,1),(125,125,0),(126,126,0),(127,127,0),(128,128,0),(129,129,0),(130,130,1),(131,131,0),(132,132,0),(133,133,0),(134,134,0),(135,135,0),(136,136,0),(137,137,1),(138,138,0),(139,139,0),(140,140,0),(141,141,0),(142,142,0),(143,143,0),(144,144,0),(145,145,0),(146,146,0),(147,147,0),(148,148,0),(149,149,0),(150,150,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technical_equipment`
--

LOCK TABLES `technical_equipment` WRITE;
/*!40000 ALTER TABLE `technical_equipment` DISABLE KEYS */;
INSERT INTO `technical_equipment` VALUES (1,1,'Speaker','Relate fish rather least. Ball plant suddenly dream worker too rate. Join test artist behavior traditional nice. Likely outside effort research.'),(2,1,'Special effect','Fine bit big. Free two become state must part relate.'),(3,1,'Light','Tend build wait hold ever cup. Imagine size page your ten. Gun risk her activity fact use understand.'),(4,1,'Light','Tonight artist mind. Important culture theory develop ever game many.'),(5,1,'Special effect','Kind ten stage various item. Reduce suddenly finally bring which edge. Body will while out eye.\nRead own of defense form positive. Model decision together nearly.'),(6,1,'Special effect','Able check music start husband. Keep situation night continue society truth five.'),(7,1,'Light','Against clearly strategy. Particularly yet behind general. Center practice more fast face structure.'),(8,1,'Speaker','Music choice total condition mind bar key. Fine high option add rather late. Alone religious discuss home.'),(9,2,'Speaker','Upon describe strategy most federal dark.\nRange smile pattern hit assume child. Fire tax appear detail society. Any course purpose wind five.'),(10,2,'Special effect','Course use join interest spend. Agree security not tonight. Offer wide employee. Indicate force owner possible nature tend.\nBill sport candidate. Million share medical every site.'),(11,2,'Microphone','Smile describe else Mrs institution actually four. At what kind red history.'),(12,2,'Light','Another hand us. Parent new bar matter allow.'),(13,2,'Speaker','Safe defense law fill seat recognize. Rise natural scene child. Until moment many suggest.'),(14,2,'Console','Carry parent Mrs cost. Industry music into attention action. Simply person then finally nation ago son.'),(15,2,'Light','Leg image find behind. Read size whether American very low.\nSpend huge car rate. Music car page particular where measure do perform.\nSet behind risk.'),(16,2,'Light','Wish but candidate authority prove trip voice. Leg loss treat among in. Stay under power type partner nor.'),(17,3,'Speaker','Phone budget teacher entire politics size listen. Marriage charge trial crime. Grow watch cold every short present represent.'),(18,3,'Special effect','Turn according western approach choose where. Argue force dinner plant policy. Without small second matter.'),(19,3,'Microphone','Central describe member opportunity bad boy. Especially sense generation likely face still student. Leg individual onto old age involve low.'),(20,3,'Console','Will TV entire fly hard design. Phone husband spend produce organization fear south. Front ask body.'),(21,3,'Speaker','Sign couple choice. Loss actually short coach technology whom mention.'),(22,3,'Special effect','Region building paper turn attorney interesting you. Difficult chance but.'),(23,3,'Microphone','Fire himself us decade fill so.\nDuring car agency throw member. No environmental doctor policy. Skin ground stand heart benefit.'),(24,3,'Special effect','Difference right in feeling offer TV level. Skill approach number father early. To source reduce social.'),(25,3,'Microphone','Career Democrat thus eat human. Skill deal market only available. Large song college career summer official.'),(26,3,'Light','Management Republican enter fund. Certain life find rich major my. Get matter short compare mention.'),(27,3,'Console','Couple already also return. Economic approach read trouble. Analysis read debate program.'),(28,3,'Light','Plant goal land reach writer late per.\nHe miss throw anything. Main campaign save form fish audience.'),(29,3,'Light','Run memory agree open city significant. Table effect significant.\nAhead discussion product any list pass follow. Ask study lot serious.'),(30,3,'Light','Attention human dark whole factor government.\nCongress should organization live. Free determine lot house.'),(31,4,'Speaker','Election today type.\nCard issue professor into. Beyond election reason phone her performance claim.\nDesign long kind yet pass glass. Several find tend out hot.'),(32,4,'Speaker','Sit kind sit station. Case he program phone.\nRace short sort sing. Election action get high indicate. Board loss face. None drug despite enter face four.'),(33,4,'Console','Almost author although magazine sort. Bill you or move business clear.\nHear similar walk end cell. Risk serious everything state meeting they future.'),(34,4,'Console','Effect opportunity leg type model people cell. Begin include others perhaps mother. Either anyone difficult available impact response able.\nWhich drive business idea school street other mother.'),(35,4,'Special effect','Skin candidate across focus model explain task certain. Kid day bring born.\nPolitics lead value news. Local power president live member time wish. Moment husband over themselves including result.'),(36,5,'Microphone','Near between every service full nature. Hit standard garden seven result. Citizen party sign a fear.\nTrip out spring ready. Close thousand whose hour.'),(37,5,'Light','Protect hotel that sound. Officer arrive poor.'),(38,5,'Console','Six believe bring car their fill.\nSeek near perform forget name particularly. Population guy cultural they focus family follow. Environmental close player pick.'),(39,5,'Console','Your magazine paper dog near approach listen. Case night commercial enter beautiful central head.\nUnder receive each lead father affect race describe.'),(40,5,'Console','Nor hold focus with friend. Believe his voice difficult soon find painting face. Because put sit major American report probably.'),(41,5,'Console','Word per site strategy push a. Similar play rise three have.\nWin unit real class try until.'),(42,5,'Microphone','Else program record we card. Those church scientist school interesting many.'),(43,5,'Light','Debate read perform give effect. Fly consumer manager agreement debate notice.'),(44,5,'Speaker','Gun before tell card less while prevent. Employee decide house save play about.'),(45,5,'Special effect','Country wish may concern author watch choice. Hundred forward paper.\nBuilding check face half table line fast. Trouble partner central.\nTry recognize few. City idea person.'),(46,5,'Special effect','Provide who magazine conference. Executive lot debate defense news save.\nFree option soon. Thought nation degree growth turn find.'),(47,5,'Light','Report rest head. College each unit could less work.'),(48,6,'Microphone','Identify tell inside firm. Including a plant baby senior. Account remember less blood.'),(49,6,'Microphone','Compare tax should stage magazine. Although take until member themselves result almost.'),(50,6,'Microphone','Fight conference always.\nPush American mention situation above morning military. Would kitchen marriage yes religious such somebody. Respond discover quality east leg describe all.'),(51,6,'Console','During no grow eight bad say. Around seem above teach avoid ask. Summer our reveal early plant record explain. Kind many her letter own.'),(52,6,'Console','Serve less include also. Born rather call of of follow.'),(53,6,'Speaker','Air group think small. Move like son compare. Contain against tell six item financial ability.\nWhose garden her. Interview kid smile.'),(54,6,'Speaker','Rich sure get interview task eat whom east. Standard statement natural. Quite dog several indicate buy wide.'),(55,6,'Speaker','Over newspaper indeed teacher voice. Put source dark clear section event special. Administration ability prove thought board still assume.'),(56,6,'Special effect','Show pattern event half. Beyond pay politics agent direction nation color.\nIts marriage night remember. Long particular determine never. Meeting chair computer.'),(57,7,'Light','Support culture million ask. Ever huge system table wish type report offer. But every entire career never. Close what final mention.\nEconomy full later film. Your meet ever.'),(58,7,'Speaker','Region rock memory way. Assume computer however seem need food while. History hot strategy really.\nDown dog power occur community kind. Try show meet husband less end.'),(59,7,'Special effect','Defense fine significant record. Paper develop yeah imagine send foot agent walk. Than play realize place instead.'),(60,7,'Light','Computer purpose series occur. Public north win coach.'),(61,7,'Special effect','His blood cultural produce side through. Up relationship reveal firm memory.\nYeah local natural. Turn state discuss live American.'),(62,7,'Microphone','Can strong require education now air attention. Support only white.\nPractice admit everyone school yes collection. Detail nice organization age area official.'),(63,7,'Special effect','Challenge exactly gun this arm. Page upon gas news available such.\nImage out building far eat increase. Win thing free nor. However because scene concern billion pull.'),(64,7,'Special effect','Positive source beat television value. Off generation foreign fish a usually.\nHit meeting activity impact partner forward until. Born mother age if class. Research not relate never.'),(65,7,'Console','Quality outside cause rise radio yes south. Place black morning sort way show everyone us. Ready more fast energy fish.'),(66,7,'Special effect','Dog change tough suddenly feeling. Instead type design price.\nMy scene policy ball alone interesting back boy. Lot reveal and.'),(67,7,'Console','Wife sing people recent really address town everybody. Could music road itself remember finally could.\nJust increase threat discover green data why. Decide be yeah modern particularly through.'),(68,7,'Special effect','Them shoulder building security to fire.\nThis become space head strategy. Cost education admit soon artist improve building those.'),(69,7,'Special effect','Miss really value above with far. International dinner scientist not house break owner reflect. Close rich cost likely.'),(70,7,'Microphone','Home sport contain well position glass difficult. Heavy form despite skin star modern. Who strategy near street himself.'),(71,8,'Microphone','Local skin report I two morning imagine test.\nPolicy serve figure sell lay. Ever since concern wish allow space water security. But present water memory final baby another.'),(72,8,'Speaker','Election operation suffer center event. Author task enjoy her management general.'),(73,8,'Console','Total news treatment different benefit. Report improve approach visit institution I per.'),(74,8,'Console','Run though court mouth. Truth office hundred range all lead.\nWife west sense sea. Serve police hand stock take. Political or whose office send accept.'),(75,8,'Microphone','Job get trial account well couple analysis. Theory list scene road under bed goal.\nMain husband long politics bank.'),(76,8,'Speaker','Rock arm board pass Congress page. Cultural specific expect national once fire. Hope identify interest activity approach no can begin.'),(77,8,'Speaker','Star term measure manage north popular traditional attorney.\nCity measure stop blue. Part Congress west visit involve. Pay night hundred rock prove woman age loss.'),(78,8,'Microphone','Television crime really style do various. Bank door life like source event.'),(79,8,'Speaker','Event few identify three also near conference. Fear himself kitchen probably simple.'),(80,8,'Special effect','Back to organization style. American others gas popular. Prevent later must every. Allow clearly for under must once any.'),(81,8,'Speaker','Without use beautiful blood cause sound. Democrat yes concern somebody.'),(82,8,'Speaker','Country compare building color. Miss foot type our conference chair growth.'),(83,8,'Special effect','Tax need this protect when bring. Manager court major accept enjoy get.'),(84,9,'Special effect','One include myself act field. Half wall purpose particularly add coach beautiful worker. Itself issue black your.'),(85,9,'Microphone','Last information hour story sometimes dinner whom. Building staff situation TV back.\nSide technology guy draw center phone partner. Not speech drive author.'),(86,9,'Microphone','Contain attorney from from choose. Toward say worker learn. Option brother forward grow whom adult couple.'),(87,9,'Light','Determine leg seem country direction town should. Crime mother mind cold dark cost attack.'),(88,9,'Light','Line call act bag with indeed trouble.'),(89,9,'Microphone','Political have available fund turn now. Party newspaper back attack seat goal.'),(90,9,'Microphone','Attorney fill name cold.\nForce friend stand personal where form. Great myself create garden represent agreement management.'),(91,9,'Microphone','State fish she experience media because seat. Born should tend exist ability camera.'),(92,9,'Speaker','Bring hard just experience help. Read forget little create data camera. Hope news age know.'),(93,10,'Console','Happy way treat model prove candidate none. Understand their why clearly.\nCause guess forget wife none beautiful. Wait report the his factor cell smile.'),(94,10,'Special effect','Shoulder raise suddenly remember end operation. Let exactly public health.\nAgent music goal sell drop enjoy. Film course matter establish support.'),(95,10,'Special effect','Opportunity interesting remember. Benefit hour recently create focus main.\nBetter oil always respond should cold. Price each list officer during.'),(96,10,'Light','Front six court experience. Again end trial audience cold when. Before floor interesting Mrs guess.\nMr class their factor. Give call conference raise line smile.'),(97,10,'Microphone','Against cell approach spend blue note draw. Difficult game lead act take.'),(98,10,'Special effect','High week city. Nation sure customer market environmental among rich.\nInstitution point heart. Case move situation authority tend.'),(99,10,'Microphone','Home rate key certain suddenly financial. Manager most we discuss future.'),(100,10,'Console','Hold strong travel product nearly. Language size factor produce board community glass. Center without simply natural amount.'),(101,10,'Microphone','Benefit choice simple citizen. Report reality listen everyone example.'),(102,10,'Special effect','Herself knowledge interest a provide down. Audience through yes military.\nYear husband particular seem window we available. Debate case article decade stage.'),(103,10,'Microphone','Safe former method too official realize method character. Paper enjoy gas bill before. Institution source successful player.'),(104,11,'Console','Account police entire such. Type enter matter. Record some south however pay film job.'),(105,11,'Microphone','Woman structure early tree his. Others activity step else out himself. Former condition suggest environment.'),(106,11,'Light','Race situation former sell whatever citizen.\nMethod race wonder across north mind hit. Court control economic smile.'),(107,11,'Special effect','Time very long there. High activity certain popular including fast girl. Question place when federal itself safe.'),(108,11,'Speaker','Imagine admit American figure factor appear. Environment military today win. Hear fish total recognize.'),(109,11,'Light','Large even science building. Do conference trouble firm. Speak democratic who maybe until music.'),(110,11,'Special effect','Prevent large sing piece score level issue. Sing add than part article baby.'),(111,11,'Console','Meet because ten key century. Suddenly brother job all into various shoulder. Us ten student and buy develop.'),(112,11,'Special effect','Again store turn along other. Military police according behind easy ahead significant.'),(113,11,'Speaker','Interview difficult discover hand outside understand. College build budget. Clear politics price less item respond sell.'),(114,12,'Speaker','Eight third generation need again daughter.'),(115,12,'Microphone','Ago tough political weight future play glass. Value issue doctor. School clearly indeed begin charge quality.'),(116,12,'Light','Sell treat next message tough. Huge they energy might drop.'),(117,12,'Light','Consider time dinner research put. Paper we forget produce. If customer write assume street course sign. Plant federal experience meeting.'),(118,12,'Microphone','Child billion something data bring situation guy. Out set difficult all room indicate benefit. Tv maintain course than.'),(119,12,'Microphone','Former pull coach candidate feel debate western. Suggest perform human establish dinner dream.'),(120,12,'Light','Key again positive friend important quality. Turn place believe blood many instead. Minute day create suggest.\nTurn late focus rich industry whom.\nCompare happen floor new.'),(121,12,'Console','Director view heavy task. Especially unit boy their full.\nGlass hold identify bed. Explain star run budget.'),(122,12,'Special effect','Court miss prove maybe. Threat my people theory.'),(123,13,'Speaker','That hot clear war. Woman old very strong treat kind.\nStop hour movie none move artist.'),(124,13,'Speaker','Suggest low from drop so situation white. Personal together red ahead environment forget much. How you police former.'),(125,13,'Console','Likely miss throughout anything matter. Service party condition seat fish difference hot mother.'),(126,13,'Microphone','Over read young. Production affect local dream look suffer him. Election opportunity but water.'),(127,13,'Light','Perhaps power memory news people. Cause offer mission great still structure should.\nAs drive only ok. Establish if national wind apply.'),(128,13,'Speaker','Process century nation need. Then away ok unit black nothing movie.\nRange be risk ten. Dark third street major drug. Style election never.'),(129,13,'Microphone','Peace claim interesting question state claim wind. Choose green teacher store our hit management. Show somebody form nice financial turn game.'),(130,13,'Speaker','Picture success toward.\nFast figure also project season could hospital. Buy sort own home wall message west.'),(131,13,'Console','Investment his result half. Kid benefit total why help. Age future child leg.'),(132,13,'Microphone','Present condition office few few more each toward. Can teach expect attorney.\nSuggest yeah investment court site. Thought sea grow response conference.'),(133,13,'Special effect','Catch customer design into fire. Today factor attention later school sea reach near.\nThan science like during.'),(134,13,'Light','Material cell affect painting those list.\nThey go know send control. Practice these hospital police gas. Six of image partner tonight.'),(135,14,'Console','Although close move. Party me red prove director lay.\nInformation man sometimes. Population standard give bit.'),(136,14,'Light','Can marriage short perform. They later cost common find boy. Million ok small kitchen then you trade medical.'),(137,14,'Light','Available commercial behind. Light recognize because fish keep. Open any police teach prevent side.'),(138,14,'Microphone','Customer do decide stop last force individual. Last which career decide ball.'),(139,14,'Speaker','Just spend should property find cost. Force draw why ten.\nPage him center audience voice century.'),(140,15,'Special effect','Listen high agree everything partner. Price either exactly.'),(141,15,'Light','Popular physical way social. Tv know after.\nInstead detail for far. Some whom happen imagine stay defense I.'),(142,15,'Speaker','Available leave far anything something director read. Best detail fall statement trial. Sport poor many some line remember offer.'),(143,15,'Console','Everybody decide during high upon central. Address set tell receive well very control. Physical you American amount do strategy church.'),(144,15,'Console','Authority across value never. Two part science happy. Throw upon economic lay picture. Half bill large employee.'),(145,15,'Speaker','Peace us everybody evidence detail for use. Standard assume outside dream expect improve whom record. Can visit western but organization.'),(146,15,'Console','Born discussion want condition. Go fall report view less leader. Those per over sing.'),(147,16,'Special effect','Sea water young part. State although painting officer want second prepare behind.\nPositive key before dark. Store evidence relationship region other.'),(148,16,'Light','Nearly big skill few. Audience respond age speech performance process environmental. One military place serious.'),(149,16,'Light','Response return will money hear. Include factor raise young. Table land professor rock despite identify.'),(150,16,'Microphone','Time science in drop music commercial between.'),(151,16,'Speaker','Under process anyone plan generation science commercial. Lose article edge much firm.\nAnd glass poor week again charge hundred. Poor total break improve. Respond on ahead practice oil.'),(152,16,'Light','Threat return whether dog good. Couple than wonder world.\nAlso partner professor rather miss. Water service collection. Yes down spring.'),(153,16,'Light','Type whether look any your. Best gun today design history.'),(154,16,'Light','Movement involve real. News ten available wonder budget. Either leg capital cell degree.'),(155,16,'Console','Would future big beautiful although. Important well push really second dinner wrong.'),(156,16,'Speaker','Break organization community admit imagine on me. Among court six wrong laugh. Eight travel word beyond throw new moment.'),(157,16,'Console','Prove job alone economy fall. Surface save base player. Throughout billion trouble trouble wear.\nReach street generation employee hospital sort.'),(158,17,'Microphone','Small new medical weight. Total expect across over keep.\nActually structure begin second. Have participant small blue as red.'),(159,17,'Microphone','Child number road nearly its.\nSecond hard TV relationship break. Our rise really base American. Specific right big administration.'),(160,17,'Speaker','Generation economy open. Hope carry anyone their amount. Common manager democratic point language.'),(161,17,'Special effect','Who generation eat happy prepare. Perhaps today set account adult usually. Enter toward right position structure.'),(162,17,'Special effect','Leave my choice themselves too apply minute. Beautiful serious item religious design let interest. Since body world administration goal.'),(163,17,'Light','Center issue us civil. Must though however player course type decade. Rich catch pull situation course sign.'),(164,17,'Special effect','Nice in section. Down off particularly reality research development fill.'),(165,17,'Microphone','Fund hot onto speech build fight. North western another it mind now.\nExplain suffer news so pretty thus. Management activity modern hear scientist. Since physical life.'),(166,17,'Special effect','Forward particular also nice draw. Goal country position paper fire long. That against second practice price.'),(167,17,'Console','Soon police party notice push. Cold raise form share debate. Explain respond effort bring call.\nAbout mean future inside. Security network happy member move until movie.'),(168,17,'Speaker','Choose yeah feeling have effort. Assume writer full article small. Participant movie cause learn red or indicate. Anyone real machine thus new couple order.'),(169,17,'Microphone','Serious address chair chance. People campaign subject item thus shoulder. Describe majority peace want still still citizen.'),(170,17,'Light','Arrive white kid movie. Fish make state father feel receive. Surface fight election entire work ten society.\nCourse party while. If just room trip do the job.'),(171,18,'Microphone','Performance there manager involve statement. Ability range main expect.\nInteresting rule woman. Senior major purpose.'),(172,18,'Speaker','Health late his again onto. Leg present clearly. Husband term network everybody tree night measure.'),(173,18,'Microphone','Attention cut enough former easy item with. Talk woman civil shake.'),(174,18,'Speaker','More star success perform marriage. Sing may certainly so. Financial star maintain although. Nor news street down model.'),(175,18,'Special effect','Young live return partner control message. Hold purpose doctor and nice. Probably guy yard read not down.'),(176,19,'Special effect','Catch believe drug direction simply science recognize. Lead begin only that someone but. First me good to alone player audience.'),(177,19,'Speaker','Purpose cost prepare sound back down. Own trip carry few public.'),(178,19,'Microphone','Stop cultural against offer political worry food. Memory open and campaign particularly meet thousand.'),(179,19,'Speaker','Go boy trade season. Their pay policy buy. Will fly city call impact who yourself.'),(180,19,'Speaker','Yeah them fast serious newspaper former power. Guess rise address enjoy seem thank by buy. On their range move medical.'),(181,19,'Speaker','Painting such heavy stuff protect job. Design push rich form military none call.'),(182,19,'Special effect','Recognize network factor. Main attorney music tough blood price. Ability produce administration pressure.'),(183,20,'Light','Huge ability place box science laugh. Body garden level environment. Design decade others until.\nBring your yes various program. Step thus everything decide music plant serious.'),(184,20,'Light','Side sort air sea policy. Story low Mr through record. Recent consider imagine them enjoy new employee.'),(185,20,'Speaker','These color prove high culture reduce several. Sea man tend.\nSoon result outside view. Return simple adult commercial loss. Western activity food member.'),(186,20,'Microphone','Describe career parent as support. Character none entire writer. Last soon seat radio Mr level another.'),(187,20,'Light','Executive sell spend century name key able. Painting officer machine interview process billion clearly. Nor provide apply discuss.'),(188,20,'Microphone','Image gas account last president those. Stock choose act know line service alone.'),(189,20,'Special effect','Newspaper stop bad cell. Be have herself civil along may teacher sort.'),(190,20,'Speaker','Man produce reality rate treat standard sort. Sing within contain research long guy. Almost six various let bill indicate.'),(191,20,'Microphone','Upon line foreign film plan. By debate city win.\nSchool stage picture. Current pressure recognize all view.'),(192,20,'Special effect','Focus will deal firm one into. Trial say six effect large part wife ability.'),(193,20,'Light','Huge red tree six book foreign.\nName building common which woman institution.'),(194,20,'Microphone','Soldier baby finally stop. Economy media ready or leg her.\nStep task eat they citizen song poor. Treatment really prepare individual. Thus huge day miss yeah blue most eat.'),(195,21,'Console','Stop model region gun. Why full likely human bag hope. Audience front against minute structure base month.\nReal beyond matter. Everything crime president.'),(196,21,'Microphone','Truth oil speech. Similar car peace type available wonder despite.'),(197,21,'Special effect','Care lead good hot. Store size decide black natural.\nMeet once call bit measure. Color impact throughout why mean water owner.'),(198,21,'Special effect','Here color else. Item maintain happen base forget white.'),(199,21,'Light','Across miss yard. Tax whatever write available step. Single worker lawyer could soon on could particularly.'),(200,21,'Microphone','Blood central box nearly accept your. Quite any size plan.'),(201,21,'Microphone','Both raise long six summer wait hit. Upon color ok whatever economy bit among. Bit animal usually seven decision.'),(202,21,'Console','Pressure country effort goal without employee available stop. Back summer yourself me.'),(203,21,'Speaker','Food describe relationship sound writer language. Everyone possible can raise author example.'),(204,21,'Microphone','Spring produce many full. Indeed agency have research fear not PM. Today run want trouble mean understand.'),(205,21,'Special effect','Region doctor animal police writer set fact way. Compare physical final build nation.\nConcern red suggest finish enjoy. Participant worker recently available assume.'),(206,21,'Microphone','Dark guess different Democrat. Experience hear since.\nBeyond authority black skill. Someone despite head. Like food end once doctor result.'),(207,21,'Special effect','Source would it player outside economic. Ground success late yourself stay product. Study son weight amount.'),(208,21,'Microphone','Financial population address create own more main itself. Plant collection program board.'),(209,22,'Console','Author ok place consumer hope heavy.\nI sure lawyer present couple task response. Business so job actually cost. Sign small movie option.'),(210,22,'Light','News agent there good purpose. Second then article rest less network. Impact size play religious course.'),(211,22,'Special effect','Agent commercial network house almost indicate.'),(212,22,'Console','Same travel public answer science too. Maybe but reduce animal ahead husband. Learn investment green kind surface record.'),(213,22,'Special effect','Certainly pull green section. Produce decade traditional actually order stage move.'),(214,22,'Light','Space direction opportunity argue now nearly. Paper serve early ever. Poor behavior part better.'),(215,22,'Light','Feeling carry collection friend social president care. Attorney history collection receive always short cover. Source better hospital discover.'),(216,22,'Speaker','Certain campaign recognize game run.\nMonth son before price actually rule. Letter card at service. Show meet bad.\nStudent research paper guess.'),(217,22,'Microphone','Budget couple rate of try step. Parent wide past capital knowledge take little. Almost ball must behind there.'),(218,23,'Light','Positive want food half. Everybody appear understand sing design on.'),(219,23,'Special effect','Through nation night pattern couple cover. Citizen treat let popular significant represent. Throw season more out short main.'),(220,23,'Console','Leader second value fear somebody clearly. Your site purpose early one network sing.\nTraining religious senior. Pass pretty example civil.'),(221,23,'Speaker','Although question loss modern especially. Catch lead any enough reason guy million.\nPresent bar threat allow.'),(222,23,'Light','Walk action enter unit loss learn mouth. Argue begin crime black. Wrong mission center fly local.'),(223,24,'Special effect','Face condition expect true join beyond. Instead herself receive fact art watch school eight.'),(224,24,'Console','Son director this agent debate. Person let possible family politics.'),(225,24,'Microphone','Girl family population cup street ago feel. As current behavior religious attorney remember detail.'),(226,24,'Light','Whose poor production throughout raise. Necessary health suffer. May across understand machine outside.'),(227,24,'Light','Agent meeting agreement act none run book we. Ok national rule.'),(228,24,'Speaker','Thank drug each condition say morning. News trouble ground dog moment person nation page.'),(229,25,'Microphone','Western tell rule idea above husband opportunity. Chance teach crime may continue others. Explain generation perform wind such student of. Cold claim million.'),(230,25,'Speaker','Half tree according surface sometimes. Hand read conference final. As big spring parent.'),(231,25,'Light','Character can offer. Fine pay area measure when product. Ever record so yard issue support different. Car show compare size.'),(232,25,'Microphone','Enough modern buy senior rate raise. Sign mention building run young area.\nNew left commercial national hit. Yet likely future ball figure avoid bad.'),(233,25,'Console','Deal school but design. Great wonder behavior bill discussion since bring. Weight could mission smile model deep all. Generation project both bad federal.'),(234,26,'Console','More from especially design. Order hard hit yet order.\nSuccess development last build difference. Road plan would find attention relate.'),(235,26,'Light','Call marriage the sense child southern. Realize for nice those answer. Small toward over loss attorney tree.'),(236,26,'Special effect','By concern baby staff order father.'),(237,26,'Console','Institution mean second dream administration protect. Apply effect number group item act front first.'),(238,26,'Speaker','Anything different situation light billion decade short. Conference always thus media seat.'),(239,26,'Speaker','Change student more skill.\nMajority blue me red. Party red old theory letter unit. Other rest approach.'),(240,26,'Light','He husband enjoy water knowledge. Treat chair white PM spend. Effect voice theory hospital yet guess school.'),(241,26,'Console','Moment in rest exist. Human successful whatever city. Congress site worker above sometimes should fish. Mr way middle federal.'),(242,26,'Console','Positive everything man quite deal. Pull become but still hear. Security few none ten common.'),(243,27,'Light','Media spend real challenge. Address probably else blood note. Large change trip billion all material fish environment.'),(244,27,'Console','Share order wish style. Outside policy professional fish cover poor important. Suggest carry magazine five attack my think.'),(245,27,'Microphone','Option wear line degree. Respond color we TV especially control PM. Month interest know get government avoid despite attention.'),(246,27,'Microphone','Leader approach parent. Somebody visit those size. Toward every social religious structure significant. Hear federal run finally.'),(247,27,'Speaker','Create amount relate individual. Middle draw since picture various. Teach a friend nice sell know future for.'),(248,27,'Microphone','Energy born impact unit.\nOr million another others less western stock. Break let unit and.\nAudience blood us moment.'),(249,28,'Special effect','Money trouble hear. Speech while project charge music.\nRemain loss live less who federal. Discuss recent eat.'),(250,28,'Light','May prepare price security offer conference. Federal subject long receive.'),(251,28,'Light','High rest outside whose staff couple. Admit training outside while exactly. Discuss book side upon impact local operation evening. Main body interest keep.'),(252,28,'Light','Head leg major seven him. Enough tell play stuff church area subject. Standard us anyone power organization professional.\nShould arm finally yet when remember. Pressure we chair.'),(253,28,'Microphone','Ok follow change your. Officer agency land politics.\nCommunity blue figure expert new. Turn threat project face.'),(254,28,'Light','Ago for rate. Perhaps know country human activity so. Trouble measure some.'),(255,29,'Console','Main different decide law deal.\nTurn century big bring way. Media subject itself budget soon one. Whom water that bring worry future.'),(256,29,'Special effect','My show early question. Rather suffer down north. Writer American plant would evening.'),(257,29,'Special effect','Pressure purpose center debate nice finally. Discussion paper Congress air.'),(258,29,'Speaker','Development speech main financial rise grow. Action technology attention. Recognize drop eat.'),(259,29,'Special effect','Into suddenly beyond also. Book owner area idea college along. Any national realize increase voice wait six.'),(260,29,'Special effect','Social detail history able final society. Race husband that least law food deal offer. Start science well cover interesting.'),(261,30,'Light','Teacher senior body meeting event PM large sound. Method whole likely pick think politics part.'),(262,30,'Speaker','Ask chair fall recently. That discover no campaign main benefit.'),(263,30,'Console','Rest fly serve low paper day. Reach small gun safe image need force ball. Head more list.'),(264,30,'Microphone','Significant former make stay sing whatever man economy. Federal team senior.'),(265,30,'Special effect','Year figure home commercial learn really. Government these which themselves character.'),(266,30,'Console','Matter issue area great evidence. Talk according energy trial sort.\nLetter few nothing board new consider view. Rise power will food.');
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
INSERT INTO `temp_resale_matches` VALUES (1,96,84,218),(2,115,130,142),(3,118,57,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,134,66,'0000000000017','backstage','2025-05-01',72.69,'debit_card',0),(2,65,98,'0000000000024','general_admission','2021-06-23',58.41,'debit_card',1),(3,35,61,'0000000000031','backstage','2020-08-16',93.26,'debit_card',1),(4,8,80,'0000000000048','general_admission','2018-09-06',86.47,'I-BAN',1),(5,60,70,'0000000000055','general_admission','2020-08-14',86.36,'I-BAN',1),(6,8,150,'0000000000062','backstage','2018-09-05',27.15,'debit_card',0),(7,90,40,'0000000000079','backstage','2023-09-12',77.88,'credit_card',1),(8,121,81,'0000000000086','general_admission','2025-04-29',40.67,'credit_card',0),(9,115,6,'0000000000093','backstage','2025-05-01',30.46,'credit_card',0),(10,114,83,'0000000000109','general_admission','2025-04-29',39.92,'debit_card',0),(11,104,146,'0000000000116','general_admission','2023-09-12',84.07,'debit_card',1),(12,76,62,'0000000000123','backstage','2022-09-18',44.09,'I-BAN',1),(13,68,58,'0000000000130','backstage','2021-06-24',21.75,'credit_card',1),(14,103,75,'0000000000147','general_admission','2023-09-10',27.44,'credit_card',1),(15,119,8,'0000000000154','backstage','2025-05-03',24.48,'debit_card',0),(16,74,93,'0000000000161','general_admission','2022-09-18',81.36,'credit_card',1),(17,96,137,'0000000000178','general_admission','2023-09-13',51.21,'I-BAN',1),(18,118,42,'0000000000185','general_admission','2025-04-29',67.71,'debit_card',0),(19,111,126,'0000000000192','general_admission','2024-08-18',68.19,'I-BAN',1),(20,133,109,'0000000000208','backstage','2025-05-02',92.96,'credit_card',0),(21,142,49,'0000000000215','backstage','2025-04-30',89.22,'credit_card',0),(22,95,14,'0000000000222','backstage','2023-09-13',28.19,'credit_card',1),(23,33,108,'0000000000239','general_admission','2020-08-15',38.42,'debit_card',1),(24,29,110,'0000000000246','general_admission','2020-08-15',35.46,'debit_card',1),(25,101,53,'0000000000253','general_admission','2023-09-09',41.69,'debit_card',1),(26,45,36,'0000000000260','backstage','2020-08-14',99.74,'credit_card',1),(27,89,47,'0000000000277','backstage','2023-09-10',77.34,'debit_card',1),(28,88,88,'0000000000284','backstage','2023-09-10',70.21,'I-BAN',1),(29,30,118,'0000000000291','backstage','2020-08-15',79.97,'debit_card',1),(30,61,121,'0000000000307','general_admission','2020-08-12',60.68,'I-BAN',1),(31,125,107,'0000000000314','backstage','2025-04-29',30.53,'debit_card',0),(32,20,103,'0000000000321','general_admission','2019-07-09',21.28,'credit_card',0),(33,23,63,'0000000000338','general_admission','2019-07-07',30.34,'credit_card',1),(34,124,72,'0000000000345','general_admission','2025-05-03',96.42,'debit_card',0),(35,2,131,'0000000000352','general_admission','2017-09-12',97.65,'credit_card',1),(36,131,9,'0000000000369','general_admission','2025-04-30',37.56,'I-BAN',0),(37,46,55,'0000000000376','general_admission','2020-08-14',33.23,'debit_card',0),(38,61,95,'0000000000383','backstage','2020-08-16',41.07,'credit_card',1),(39,103,23,'0000000000390','backstage','2023-09-12',52.02,'credit_card',1),(40,26,50,'0000000000406','general_admission','2019-07-09',56.21,'I-BAN',1),(41,135,115,'0000000000413','backstage','2025-05-02',78.38,'credit_card',0),(42,106,70,'0000000000420','backstage','2024-08-19',64.44,'debit_card',1),(43,138,110,'0000000000437','backstage','2025-04-30',47.76,'credit_card',0),(44,142,86,'0000000000444','general_admission','2025-05-02',46.17,'debit_card',0),(45,57,8,'0000000000451','general_admission','2020-08-14',88.79,'credit_card',1),(46,134,97,'0000000000468','general_admission','2025-04-30',86.45,'credit_card',0),(47,13,96,'0000000000475','backstage','2018-09-08',64.40,'I-BAN',0),(48,6,114,'0000000000482','general_admission','2017-09-15',36.33,'credit_card',1),(49,61,16,'0000000000499','general_admission','2020-08-14',33.16,'I-BAN',1),(50,26,142,'0000000000505','backstage','2019-07-06',87.82,'debit_card',1),(51,112,49,'0000000000512','backstage','2024-08-18',93.00,'credit_card',0),(52,148,57,'0000000000529','backstage','2025-05-01',65.27,'credit_card',0),(53,83,65,'0000000000536','general_admission','2022-09-15',86.96,'I-BAN',1),(54,148,49,'0000000000543','general_admission','2025-05-03',62.34,'I-BAN',0),(55,113,33,'0000000000550','general_admission','2024-08-21',29.96,'I-BAN',1),(56,55,143,'0000000000567','backstage','2020-08-13',81.94,'debit_card',1),(57,54,139,'0000000000574','general_admission','2020-08-16',27.52,'I-BAN',1),(58,9,31,'0000000000581','general_admission','2018-09-06',35.67,'debit_card',0),(59,9,68,'0000000000598','backstage','2018-09-05',79.56,'debit_card',1),(60,78,37,'0000000000604','backstage','2022-09-19',83.84,'credit_card',1),(61,88,8,'0000000000611','backstage','2023-09-12',52.72,'credit_card',1),(62,54,41,'0000000000628','backstage','2020-08-12',55.37,'I-BAN',1),(63,125,79,'0000000000635','backstage','2025-05-03',26.74,'debit_card',0),(64,36,126,'0000000000642','general_admission','2020-08-15',54.53,'debit_card',0),(65,129,18,'0000000000659','backstage','2025-04-29',84.40,'debit_card',0),(66,82,142,'0000000000666','backstage','2022-09-19',51.86,'credit_card',1),(67,33,95,'0000000000673','backstage','2020-08-12',94.42,'I-BAN',1),(68,12,50,'0000000000680','backstage','2018-09-05',84.99,'credit_card',1),(69,142,96,'0000000000697','backstage','2025-05-01',81.08,'debit_card',0),(70,114,118,'0000000000703','backstage','2025-04-30',59.92,'I-BAN',0),(71,72,89,'0000000000710','general_admission','2022-09-18',48.99,'credit_card',1),(72,69,33,'0000000000727','general_admission','2022-09-15',88.76,'debit_card',1),(73,4,29,'0000000000734','backstage','2017-09-14',61.98,'debit_card',1),(74,112,139,'0000000000741','backstage','2024-08-18',63.95,'I-BAN',1),(75,85,21,'0000000000758','general_admission','2023-09-12',23.79,'debit_card',1),(76,145,83,'0000000000765','backstage','2025-05-01',68.30,'I-BAN',0),(77,114,110,'0000000000772','backstage','2025-05-03',73.17,'debit_card',0),(78,1,32,'0000000000789','backstage','2017-09-13',60.85,'debit_card',1),(79,8,114,'0000000000796','general_admission','2018-09-06',82.53,'debit_card',1),(80,136,114,'0000000000802','general_admission','2025-04-29',87.56,'credit_card',0),(81,122,19,'0000000000819','backstage','2025-04-29',60.46,'debit_card',0),(82,107,61,'0000000000826','backstage','2024-08-21',32.79,'I-BAN',1),(83,80,38,'0000000000833','backstage','2022-09-18',58.85,'credit_card',1),(84,97,112,'0000000000840','backstage','2023-09-09',86.30,'I-BAN',1),(85,90,100,'0000000000857','general_admission','2023-09-10',28.96,'credit_card',1),(86,39,25,'0000000000864','backstage','2020-08-14',53.12,'credit_card',1),(87,123,20,'0000000000871','general_admission','2025-05-03',91.84,'I-BAN',0),(88,25,71,'0000000000888','general_admission','2019-07-08',20.47,'debit_card',1),(89,137,115,'0000000000895','backstage','2025-04-29',47.28,'credit_card',0),(90,18,13,'0000000000901','general_admission','2019-07-07',25.35,'debit_card',1),(91,9,135,'0000000000918','general_admission','2018-09-06',50.38,'I-BAN',1),(92,114,23,'0000000000925','general_admission','2025-04-30',54.51,'I-BAN',0),(93,75,117,'0000000000932','general_admission','2022-09-15',61.60,'I-BAN',1),(94,148,100,'0000000000949','general_admission','2025-05-03',42.89,'debit_card',0),(95,30,139,'0000000000956','backstage','2020-08-15',74.69,'debit_card',1),(96,19,46,'0000000000963','backstage','2019-07-06',41.39,'credit_card',1),(97,50,73,'0000000000970','backstage','2020-08-12',70.26,'I-BAN',1),(98,6,23,'0000000000987','backstage','2017-09-12',44.23,'debit_card',1),(99,96,116,'0000000000994','backstage','2023-09-12',67.85,'credit_card',1),(100,2,68,'0000000001007','backstage','2017-09-12',53.17,'I-BAN',1),(101,138,135,'0000000001014','general_admission','2025-04-29',80.93,'credit_card',0),(102,101,135,'0000000001021','general_admission','2023-09-12',31.04,'debit_card',1),(103,8,58,'0000000001038','backstage','2018-09-05',26.84,'debit_card',1),(104,34,71,'0000000001045','general_admission','2020-08-15',56.08,'credit_card',1),(105,121,50,'0000000001052','backstage','2025-05-03',29.44,'debit_card',0),(106,143,111,'0000000001069','general_admission','2025-04-29',23.77,'debit_card',0),(107,5,74,'0000000001076','backstage','2017-09-15',59.70,'I-BAN',0),(108,101,124,'0000000001083','general_admission','2023-09-10',89.63,'credit_card',1),(109,13,29,'0000000001090','general_admission','2018-09-05',57.61,'credit_card',1),(110,20,48,'0000000001106','general_admission','2019-07-09',75.56,'credit_card',1),(111,31,26,'0000000001113','general_admission','2020-08-15',67.80,'debit_card',1),(112,81,88,'0000000001120','general_admission','2022-09-18',66.39,'credit_card',1),(113,70,129,'0000000001137','backstage','2022-09-17',59.08,'credit_card',1),(114,51,29,'0000000001144','general_admission','2020-08-13',41.06,'debit_card',1),(115,37,81,'0000000001151','backstage','2020-08-15',65.16,'I-BAN',1),(116,128,121,'0000000001168','general_admission','2025-05-01',72.87,'credit_card',0),(117,67,117,'0000000001175','backstage','2021-06-26',76.18,'credit_card',1),(118,114,121,'0000000001182','general_admission','2025-05-02',70.64,'debit_card',0),(119,106,33,'0000000001199','backstage','2024-08-19',45.16,'I-BAN',1),(120,5,36,'0000000001205','general_admission','2017-09-12',81.03,'I-BAN',1),(121,49,32,'0000000001212','backstage','2020-08-13',52.87,'I-BAN',1),(122,72,30,'0000000001229','backstage','2022-09-16',87.46,'debit_card',1),(123,25,62,'0000000001236','backstage','2019-07-10',75.29,'credit_card',1),(124,82,19,'0000000001243','backstage','2022-09-17',21.86,'credit_card',1),(125,149,19,'0000000001250','backstage','2025-05-01',44.78,'debit_card',0),(126,102,90,'0000000001267','backstage','2023-09-11',97.46,'credit_card',1),(127,117,111,'0000000001274','general_admission','2025-04-30',33.31,'debit_card',0),(128,113,61,'0000000001281','backstage','2024-08-18',39.24,'credit_card',1),(129,41,7,'0000000001298','general_admission','2020-08-12',57.25,'debit_card',1),(130,48,59,'0000000001304','general_admission','2020-08-16',72.87,'I-BAN',1),(131,89,99,'0000000001311','backstage','2023-09-12',84.73,'credit_card',1),(132,42,71,'0000000001328','general_admission','2020-08-13',90.76,'debit_card',0),(133,91,125,'0000000001335','general_admission','2023-09-13',83.43,'credit_card',1),(134,129,148,'0000000001342','general_admission','2025-05-03',49.85,'debit_card',0),(135,68,134,'0000000001359','backstage','2021-06-24',48.08,'debit_card',1),(136,139,118,'0000000001366','backstage','2025-05-03',61.26,'credit_card',0),(137,75,26,'0000000001373','general_admission','2022-09-16',45.42,'credit_card',1),(138,127,80,'0000000001380','general_admission','2025-05-03',69.78,'I-BAN',0),(139,98,126,'0000000001397','backstage','2023-09-13',39.52,'debit_card',1),(140,22,70,'0000000001403','backstage','2019-07-06',91.23,'I-BAN',1),(141,136,55,'0000000001410','general_admission','2025-05-01',43.68,'credit_card',0),(142,144,130,'0000000001427','backstage','2025-04-29',53.34,'I-BAN',0),(143,48,134,'0000000001434','backstage','2020-08-16',86.52,'credit_card',1),(144,1,132,'0000000001441','backstage','2017-09-15',20.33,'credit_card',0),(145,46,124,'0000000001458','backstage','2020-08-16',72.53,'I-BAN',0),(146,61,57,'0000000001465','backstage','2020-08-15',94.68,'debit_card',1),(147,13,7,'0000000001472','general_admission','2018-09-07',79.76,'debit_card',1),(148,103,52,'0000000001489','backstage','2023-09-12',51.97,'credit_card',1),(149,17,6,'0000000001496','backstage','2019-07-08',26.57,'credit_card',1),(150,115,96,'0000000001502','general_admission','2025-04-30',29.13,'debit_card',0),(151,89,62,'0000000001519','backstage','2023-09-13',62.57,'I-BAN',0),(152,60,106,'0000000001526','general_admission','2020-08-14',81.17,'I-BAN',1),(153,66,148,'0000000001533','backstage','2021-06-24',75.47,'debit_card',1),(154,62,39,'0000000001540','backstage','2020-08-16',88.41,'credit_card',0),(155,62,143,'0000000001557','backstage','2020-08-16',54.09,'credit_card',1),(156,3,94,'0000000001564','general_admission','2017-09-15',92.78,'credit_card',1),(157,21,138,'0000000001571','general_admission','2019-07-10',70.57,'credit_card',1),(158,98,98,'0000000001588','backstage','2023-09-13',40.46,'I-BAN',1),(159,31,45,'0000000001595','backstage','2020-08-15',23.16,'debit_card',1),(160,106,28,'0000000001601','backstage','2024-08-21',90.80,'credit_card',1),(161,67,99,'0000000001618','general_admission','2021-06-23',74.03,'I-BAN',1),(162,122,21,'0000000001625','backstage','2025-05-02',22.33,'debit_card',0),(163,6,120,'0000000001632','backstage','2017-09-11',83.23,'credit_card',1),(164,107,96,'0000000001649','backstage','2024-08-19',64.12,'I-BAN',1),(165,17,65,'0000000001656','general_admission','2019-07-09',69.13,'I-BAN',1),(166,142,30,'0000000001663','backstage','2025-04-30',50.20,'debit_card',0),(167,105,89,'0000000001670','general_admission','2024-08-20',61.65,'debit_card',1),(168,84,37,'0000000001687','general_admission','2022-09-19',83.31,'I-BAN',1),(169,35,112,'0000000001694','backstage','2020-08-13',58.49,'debit_card',1),(170,60,105,'0000000001700','backstage','2020-08-15',28.56,'credit_card',1),(171,37,41,'0000000001717','backstage','2020-08-15',28.18,'debit_card',1),(172,17,28,'0000000001724','general_admission','2019-07-08',37.83,'credit_card',1),(173,67,87,'0000000001731','backstage','2021-06-23',70.85,'I-BAN',1),(174,137,137,'0000000001748','backstage','2025-04-29',23.62,'I-BAN',0),(175,133,69,'0000000001755','general_admission','2025-05-03',32.62,'debit_card',0),(176,121,126,'0000000001762','general_admission','2025-04-29',80.40,'debit_card',0),(177,149,38,'0000000001779','general_admission','2025-05-02',77.96,'debit_card',0),(178,121,119,'0000000001786','backstage','2025-04-29',34.34,'credit_card',0),(179,23,118,'0000000001793','general_admission','2019-07-07',81.03,'debit_card',1),(180,23,132,'0000000001809','backstage','2019-07-07',70.15,'debit_card',1),(181,106,30,'0000000001816','backstage','2024-08-22',42.18,'debit_card',1),(182,10,26,'0000000001823','backstage','2018-09-07',62.74,'I-BAN',0),(183,6,141,'0000000001830','general_admission','2017-09-13',58.26,'I-BAN',1),(184,115,103,'0000000001847','backstage','2025-05-01',37.50,'debit_card',0),(185,110,37,'0000000001854','general_admission','2024-08-22',56.91,'debit_card',1),(186,13,136,'0000000001861','general_admission','2018-09-08',78.19,'debit_card',1),(187,71,69,'0000000001878','general_admission','2022-09-18',46.79,'I-BAN',1),(188,147,149,'0000000001885','general_admission','2025-04-29',91.34,'debit_card',0),(189,138,48,'0000000001892','backstage','2025-04-30',24.53,'credit_card',0),(190,129,91,'0000000001908','backstage','2025-05-03',92.84,'debit_card',0),(191,63,88,'0000000001915','backstage','2021-06-24',86.90,'I-BAN',1),(192,41,28,'0000000001922','general_admission','2020-08-15',32.89,'I-BAN',1),(193,81,65,'0000000001939','backstage','2022-09-17',71.83,'I-BAN',1),(194,32,148,'0000000001946','general_admission','2020-08-12',93.92,'debit_card',1),(195,101,61,'0000000001953','general_admission','2023-09-13',93.85,'I-BAN',0),(196,76,31,'0000000001960','general_admission','2022-09-17',31.06,'debit_card',0),(197,105,1,'0000000001977','backstage','2024-08-18',83.49,'I-BAN',1),(198,77,40,'0000000001984','backstage','2022-09-16',49.57,'I-BAN',1),(199,58,66,'0000000001991','general_admission','2020-08-13',45.92,'I-BAN',1),(200,118,118,'0000000002004','backstage','2025-05-01',88.25,'debit_card',0),(201,111,135,'0000000002011','general_admission','2024-08-20',70.42,'credit_card',1),(202,120,4,'0000000002028','backstage','2025-04-30',41.69,'credit_card',0),(203,115,63,'0000000002035','general_admission','2025-05-01',97.24,'I-BAN',0),(204,111,31,'0000000002042','backstage','2024-08-20',46.53,'debit_card',1),(205,129,115,'0000000002059','backstage','2025-05-03',97.69,'debit_card',0),(206,27,62,'0000000002066','general_admission','2020-08-12',46.60,'credit_card',1),(207,51,125,'0000000002073','general_admission','2020-08-16',61.16,'debit_card',1),(208,71,31,'0000000002080','general_admission','2022-09-18',58.93,'credit_card',1),(209,96,128,'0000000002097','backstage','2023-09-10',83.19,'credit_card',1),(210,37,108,'0000000002103','backstage','2020-08-12',29.20,'credit_card',1),(211,129,21,'0000000002110','general_admission','2025-04-30',60.30,'credit_card',0),(212,89,113,'0000000002127','backstage','2023-09-12',79.66,'I-BAN',1),(213,1,65,'0000000002134','general_admission','2017-09-15',40.01,'debit_card',1),(214,32,80,'0000000002141','general_admission','2020-08-16',36.97,'debit_card',1),(215,63,77,'0000000002158','general_admission','2021-06-22',75.25,'credit_card',0),(216,36,128,'0000000002165','backstage','2020-08-13',56.15,'credit_card',1),(217,60,114,'0000000002172','backstage','2020-08-16',32.85,'I-BAN',1),(218,95,84,'0000000002189','backstage','2023-09-12',59.16,'I-BAN',0),(219,103,66,'0000000002196','general_admission','2023-09-12',94.32,'debit_card',1);
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
INSERT INTO `visitor` VALUES (1,'Maurice','Hill','(560)291-4344x13942','justin75@example.org',47),(2,'Crystal','Mcknight','+1-370-927-8863x13655','adam34@example.net',31),(3,'Kent','Gonzales','001-653-731-2277x44019','scott83@example.org',50),(4,'Glenn','Santana','915-686-2992','diazgregory@example.org',42),(5,'Kimberly','Turner','655.308.1691x97967','cristinagonzalez@example.net',44),(6,'Ebony','Logan','001-361-435-9932x4929','sara28@example.org',23),(7,'Vanessa','Peters','+1-603-632-2230','jsandoval@example.com',27),(8,'Michael','Butler','2928668445','jenniferfarmer@example.net',53),(9,'Anna','Hutchinson','675.744.2957x476','olsonjennifer@example.com',24),(10,'Brittany','Glover','(721)531-1272x8396','gpaul@example.com',54),(11,'Antonio','Morrison','2484583511','gnewman@example.com',47),(12,'Ashley','Hernandez','001-230-923-0452x3999','floreslacey@example.net',28),(13,'Joshua','Graham','3027614551','glenjackson@example.com',22),(14,'Brittany','Kennedy','001-227-841-7463x8511','mcphersonthomas@example.org',22),(15,'Kelly','Brown','781.366.8065','mauricegonzalez@example.org',59),(16,'Bryan','Taylor','526-512-2796x20217','tirwin@example.net',33),(17,'Kiara','Kelley','(658)542-1796','angelaschneider@example.org',46),(18,'Jeffrey','Cowan','001-983-860-4378','kimberlyrodriguez@example.org',55),(19,'Robert','Barrera','954.712.3452','rlee@example.net',42),(20,'Holly','Schultz','(984)924-9044','martinezmelanie@example.org',51),(21,'Tammy','Johnson','813-842-9389x16440','ojohnson@example.com',39),(22,'Courtney','Herrera','+1-500-398-5382x214','perrykeith@example.com',31),(23,'Jon','Davis','(331)228-1166','unewton@example.net',27),(24,'Jason','Valdez','+1-424-241-6992','griffithsarah@example.com',31),(25,'Andrea','Bailey','(268)484-2717x4479','unichols@example.com',36),(26,'John','Gregory','+1-409-295-6635','evansbenjamin@example.net',25),(27,'Eric','Bentley','+1-364-799-2583','john46@example.net',60),(28,'Steven','Obrien','+1-608-474-7481x15719','shannonmcmahon@example.org',59),(29,'Kristin','Bird','(416)805-5943x878','brandon03@example.org',59),(30,'Timothy','Watkins','(589)938-0721x97392','yhernandez@example.com',43),(31,'William','Taylor','(630)629-8246','lindamoody@example.com',38),(32,'Angela','Farrell','6606109297','ycarroll@example.org',26),(33,'Jeanette','Jordan','7793482569','sanchezantonio@example.net',28),(34,'Sarah','Lopez','+1-922-473-4970x215','mayderrick@example.org',59),(35,'Kimberly','Rivera','730-856-4862x21019','devin69@example.org',24),(36,'Robert','Leach','+1-252-254-8396x2699','alyssa79@example.com',58),(37,'Kiara','Turner','(535)347-6307','ecordova@example.com',49),(38,'Nathaniel','Moyer','(909)248-1339x115','melissa52@example.com',30),(39,'Travis','Glenn','001-484-527-7312','susanwhite@example.com',65),(40,'Charles','Clark','+1-502-804-2644x02552','nadams@example.org',53),(41,'Rachel','Gibson','(249)549-2073','robert23@example.org',41),(42,'Vanessa','Rowe','001-257-977-9150x1574','brewermason@example.com',56),(43,'Samuel','Huber','765-282-5797x975','hritter@example.org',54),(44,'James','Pittman','(900)250-4597x946','burnettryan@example.org',44),(45,'Christine','Miller','766-660-8520','usims@example.org',47),(46,'Regina','Mcdaniel','001-893-311-9448','scott22@example.org',40),(47,'Gary','Lopez','415-897-0093','perezcharles@example.com',44),(48,'Angela','Cruz','001-881-914-3221x9566','uroberts@example.com',64),(49,'Lisa','Guzman','+1-903-770-2150x290','ryan68@example.org',62),(50,'Gary','Nguyen','696.418.3754x509','michelle95@example.com',57),(51,'Joseph','Thomas','+1-461-294-1483x8718','robertflynn@example.org',50),(52,'Craig','George','872.658.4090x89192','cmatthews@example.org',58),(53,'Jessica','Carlson','772-650-7631x146','keithcarpenter@example.net',34),(54,'Bobby','Washington','5978490906','benjaminbuchanan@example.net',25),(55,'Eugene','Hodge','9956554885','sandraking@example.net',34),(56,'Jillian','Oliver','(374)843-0159','frosttammy@example.net',49),(57,'Deanna','Harrell','001-939-744-2032x740','brianward@example.com',37),(58,'Lisa','Smith','839-464-6748x06795','amanda15@example.org',50),(59,'Carrie','Brown','+1-267-925-7049','erikramirez@example.org',48),(60,'Donald','Torres','001-659-583-7985x0819','opark@example.com',18),(61,'Daniel','Edwards','229-803-7515','brian04@example.com',55),(62,'Matthew','Ibarra','(771)812-5938x1862','paulsanford@example.com',53),(63,'Melissa','Nguyen','001-509-448-0190','brownstacy@example.net',64),(64,'Brian','Daniel','756.956.0532x629','pdodson@example.org',27),(65,'Theresa','Johnson','207.818.0134','michaelscott@example.net',37),(66,'Jasmine','Ball','(871)238-4177','brianjackson@example.com',49),(67,'Jessica','Baldwin','(417)331-0206x413','cassandrawatkins@example.com',31),(68,'Amy','Edwards','201.408.4141','kevin93@example.net',61),(69,'Christina','Contreras','(921)774-8841x79114','christopher59@example.com',57),(70,'Heather','Hart','(473)271-1422x24327','michaelwilson@example.com',57),(71,'Jacqueline','Dixon','(253)482-2653x27611','joshua83@example.net',52),(72,'Stephanie','Russell','6215744845','tiffanymaldonado@example.net',59),(73,'Sarah','Mcgee','751-849-8951','wrightcody@example.com',43),(74,'Angela','Phillips','522-901-5978x0743','cvargas@example.org',61),(75,'Gerald','Robinson','9633949074','franknavarro@example.net',57),(76,'Alice','Graham','(402)244-6379x4594','mfigueroa@example.net',31),(77,'Daniel','Glenn','(826)547-6003','woodandrew@example.com',33),(78,'Hailey','Santana','317-355-1760x79644','jameschristian@example.com',31),(79,'Tonya','Lynn','001-381-475-5520x18325','diazclayton@example.com',30),(80,'Jordan','Moreno','+1-269-672-4709x742','riverashawn@example.net',22),(81,'Charles','Mitchell','910-648-3325','vbeck@example.com',64),(82,'Kimberly','Sandoval','282-395-4820','jocelyn78@example.org',20),(83,'Renee','Martinez','(564)214-2381x9301','clementskevin@example.com',55),(84,'Kristin','Price','001-444-211-4820x42068','elizabethferguson@example.com',64),(85,'Robert','Norris','8199823295','jonesandrew@example.net',25),(86,'Samantha','Young','267.800.3682x5875','pnorton@example.net',30),(87,'Joshua','Myers','(660)608-7425x96469','michelle68@example.com',36),(88,'David','Lewis','(855)951-4761x752','brianmiller@example.net',49),(89,'Michael','Diaz','2354948200','zmarsh@example.org',41),(90,'Ruth','Kemp','+1-702-947-8049','donna25@example.net',62),(91,'Megan','Pittman','313.951.3780x4410','oalvarez@example.org',28),(92,'Ashley','Chan','987-224-3113x187','doyleadam@example.org',65),(93,'Jonathan','Young','(209)791-5169','carterdavid@example.com',39),(94,'Yvonne','Pham','824-352-5050x99240','ncooper@example.net',52),(95,'Sarah','Ball','663.876.8848x326','terri25@example.net',41),(96,'Sheila','Osborne','+1-205-683-2300x007','martinevans@example.net',36),(97,'James','Stewart','789-631-3072x2176','bensonsavannah@example.net',59),(98,'Clifford','Erickson','(742)245-5999','claymichael@example.com',27),(99,'Mark','Zimmerman','(710)558-5133','dylanwatson@example.net',42),(100,'Douglas','Gonzalez','506.538.0643','david46@example.com',48),(101,'Stacy','Martinez','508.786.6774x61849','amanda21@example.org',45),(102,'Eric','Ruiz','340.848.7596x2114','dennisnelson@example.net',18),(103,'Susan','Perez','757.941.8310','alejandro03@example.net',64),(104,'William','Juarez','992.345.9740x86791','donald28@example.org',35),(105,'Christina','Wood','886-583-3473x7099','corey67@example.net',37),(106,'Ashley','Johnson','8158204995','jose11@example.com',42),(107,'Larry','Garcia','(274)715-0513x8525','agonzalez@example.org',63),(108,'Jonathan','Smith','331.229.0519x292','dclark@example.net',30),(109,'Cheryl','Mason','641.329.4012','robinsonkathy@example.org',18),(110,'Richard','Ross','(698)817-2001','shawn69@example.com',53),(111,'Steven','Wolf','285.660.5843x78477','derekholmes@example.com',39),(112,'Seth','Jensen','328-629-5041x0418','david29@example.com',42),(113,'John','Carrillo','713-974-5524x2417','lstewart@example.net',21),(114,'Emma','Long','670-684-3130x89589','jason45@example.com',28),(115,'Mary','Pearson','555-637-7441','fwood@example.org',50),(116,'Katherine','Shelton','563-990-9438','angelacoffey@example.org',25),(117,'Lori','Oliver','4612516320','hgaines@example.com',46),(118,'Michael','Turner','+1-543-587-6486','scottgarrett@example.net',27),(119,'Amy','Bullock','001-713-389-0827','nburke@example.com',52),(120,'Dominic','House','803.750.5769','michelleandrade@example.com',65),(121,'Diana','Perez','899-522-6448x5423','mackenzie59@example.org',50),(122,'Melanie','Osborne','(990)636-9225x2252','erinvasquez@example.com',50),(123,'Heather','Cohen','419-365-5060x52269','jenniferhobbs@example.org',55),(124,'Marc','Davis','001-327-228-6979','ericwashington@example.com',20),(125,'Emily','Reyes','917.744.7581x578','campbellshane@example.com',19),(126,'Robert','Hicks','754.912.9277','davidmyers@example.com',62),(127,'Jessica','Wilson','(351)824-1281x8093','williamrobinson@example.com',53),(128,'Chad','Haley','237-876-2234x703','xbennett@example.com',29),(129,'Elizabeth','Daniel','+1-451-360-3990x335','alex30@example.net',62),(130,'Amanda','Salinas','352-560-9873','emilyoliver@example.net',64),(131,'Molly','Mathews','420-613-4921','brianmartinez@example.org',54),(132,'Matthew','Patel','(562)441-9610','davischristina@example.net',38),(133,'Anthony','Diaz','(903)398-2542','osborneshaun@example.com',32),(134,'Robert','Boyd','(978)498-6963x58106','cchase@example.org',28),(135,'Courtney','Mosley','+1-988-302-0225x4640','cheryl40@example.com',57),(136,'Kevin','Smith','580.742.5426','erinhicks@example.net',30),(137,'Audrey','Garcia','+1-481-500-5260x0416','alvin33@example.com',55),(138,'James','Brennan','001-775-836-4205x47006','fernandezstephen@example.net',44),(139,'Timothy','Young','348-860-1809','bianca11@example.net',43),(140,'Nathan','Ramos','522.613.2000','ramseynicole@example.org',35),(141,'Christina','Park','4323361153','mbrandt@example.org',39),(142,'John','Moore','001-674-480-2138x9867','jacqueline94@example.com',45),(143,'Fred','Wilkins','526-830-0547','samantha47@example.org',41),(144,'Leslie','Little','(859)679-7696x399','pgarcia@example.net',31),(145,'Allison','Taylor','(576)441-5383x47882','khendricks@example.org',35),(146,'Tanya','Williams','(569)488-3225x1689','ashleyjohn@example.net',47),(147,'Reginald','Hurst','(601)263-9751x138','patriciamorris@example.org',56),(148,'Justin','Smith','205-829-9915x4287','trobertson@example.net',47),(149,'Kevin','Hernandez','838.327.3166','astone@example.net',53),(150,'Sean','Gentry','+1-811-435-1788x952','lindamclean@example.org',35);
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

-- Dump completed on 2025-05-09  1:04:33
