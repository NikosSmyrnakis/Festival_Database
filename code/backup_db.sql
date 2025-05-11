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
INSERT INTO `artist` VALUES (1,'Cynthia Fox','Toni','1985-10-29','1990-10-28','http://ingram.com/','http://bowers.com/',0),(2,'Bradley Moore','Stephanie','1988-07-08','1990-07-08','https://www.jones.com/','https://www.johnson.com/',2),(3,'Albert Carr','Jessica','1976-04-08','1992-04-04','http://www.nichols.com/','http://www.newman.com/',3),(4,'Christopher Kemp','Michael','1979-12-15','1997-12-10','https://www.lewis.org/','http://mercado.com/',2),(5,'Kathryn Hughes','Christopher','1998-11-15','2018-11-10','https://www.garza.com/','http://www.gordon-morris.info/',0),(6,'Russell Flores','Teresa','1986-07-21','2003-07-17','http://www.garcia.info/','http://roach.com/',0),(7,'Michael Calhoun','Andrea','1983-01-02','1987-01-01','https://bridges.com/','http://www.serrano.com/',1),(8,'Ryan Brooks','Sarah','1978-01-08','1993-01-04','https://www.lambert.com/','http://parker-gonzalez.com/',1),(9,'Robert Kelley',NULL,'1991-09-17','1999-09-15','http://www.sanchez.com/','http://www.price.com/',0),(10,'Sylvia Vasquez','Mitchell','2000-11-20','2020-11-15','https://www.moore.net/','http://www.parker.com/',2),(11,'Dean Davis','Lindsay','2002-12-27','2014-12-24','https://www.allen-moore.com/','https://harris.com/',0),(12,'Mark Holmes','Richard','1991-12-15','1999-12-13','http://www.reilly-phillips.com/','https://www.brown.org/',0),(13,'Jean Chan','Daniel','1998-10-15','2017-10-10','http://www.franklin-knox.info/','http://atkins.info/',2),(14,'Daniel Howell',NULL,'1989-07-25','1991-07-25','https://www.vargas-wright.com/','https://www.santos.net/',1),(15,'Tanya Jensen','Charles','1997-06-19','2015-06-15','http://morales.org/','https://thomas.com/',2),(16,'Christopher Fletcher','Sarah','1989-08-25','2007-08-21','http://www.harris-mills.com/','https://ryan-lloyd.info/',0),(17,'Sue Bean','Ronnie','2002-04-10','2015-04-07','http://jones-johnson.com/','https://duarte-sullivan.biz/',2),(18,'Kelly Anderson','Thomas','1986-04-18','1994-04-16','https://brennan.biz/','https://young.biz/',0),(19,'Crystal Pierce','Katelyn','1987-07-26','1999-07-23','http://www.shaw.com/','https://ramos.com/',1),(20,'Charles Johnson','Anna','1986-09-30','1990-09-29','https://www.smith-lawrence.info/','http://www.chapman-bond.org/',1),(21,'Abigail Smith',NULL,'1992-05-16','2006-05-13','https://reyes-levy.com/','https://smith-mclaughlin.org/',3),(22,'Miss Kimberly Williams','Christopher','1974-05-18','1975-05-18','https://mason.com/','http://www.baker.com/',3),(23,'Julia Lane','Matthew','1987-03-11','1992-03-09','http://www.johnson.com/','https://www.johnson.com/',3),(24,'Victoria Sanchez','Allen','1975-12-08','1987-12-05','https://www.barajas-turner.org/','http://morrison-gillespie.com/',1),(25,'Scott Harris','Faith','1983-12-26','1990-12-24','https://www.harris.org/','https://www.chambers.biz/',1),(26,'Jennifer Holt',NULL,'1978-11-09','1987-11-07','https://beasley-smith.info/','http://jones.com/',0),(27,'Connie Davis',NULL,'1995-02-14','1996-02-14','http://logan.com/','https://sanchez-gonzalez.com/',0),(28,'Lauren Shelton','Amy','1980-06-26','1999-06-22','https://jennings.com/','http://www.bailey.com/',0),(29,'Jared Rangel','Frederick','1976-09-18','1979-09-18','http://shepard.com/','https://www.johnson-harrison.info/',3),(30,'Adriana Mosley','Samantha','1992-09-13','1997-09-12','https://www.brown-trevino.org/','https://www.smith.org/',3),(31,'Evan Jones','Kimberly','1987-07-23','1997-07-20','http://www.wiley-alvarado.com/','https://rhodes.info/',1),(32,'Ashley Ross',NULL,'1984-01-13','2000-01-09','http://mcmillan.net/','https://www.nolan-coleman.info/',2),(33,'Ricardo Murphy','Melissa','2005-02-21','2021-02-17','https://zavala.biz/','https://www.richards-thomas.biz/',0),(34,'Meredith Arnold',NULL,'1980-02-28','1991-02-25','https://www.miller-vasquez.org/','http://beck.net/',3),(35,'David Wang',NULL,'1983-07-03','2000-06-28','http://hart.com/','http://www.carlson.com/',0),(36,'Michael Stephens',NULL,'1988-01-31','2000-01-28','https://estrada-barker.com/','https://rosales.com/',0),(37,'Danielle Tate',NULL,'1997-07-10','2003-07-09','http://www.kelly-winters.com/','http://www.simon-clark.info/',3),(38,'Cynthia Lane','Stephen','1983-08-02','1992-07-30','http://miller.com/','http://palmer.com/',0),(39,'William Marsh','Marc','1998-01-28','2000-01-28','https://duarte-rodriguez.com/','http://wagner.com/',0),(40,'Jaime Potter','Sarah','2004-12-26','2014-12-24','http://www.davenport-horton.net/','http://moore.com/',3),(41,'Philip Brown','Chad','1990-06-02','1998-05-31','http://floyd.com/','https://www.pierce.org/',3),(42,'Andrew Hartman',NULL,'1982-10-07','1992-10-04','https://www.freeman-carroll.biz/','https://lowe-terry.org/',1),(43,'Bryan Brown','Julia','1994-07-12','2012-07-07','http://www.martin.com/','https://nash-cummings.com/',2),(44,'Sandra Wilson','Alex','1985-07-23','2002-07-19','https://thompson-murphy.com/','http://www.mitchell-pacheco.net/',1),(45,'Glenda Ramirez',NULL,'1974-06-14','1978-06-13','https://hensley.com/','http://www.conway.com/',1),(46,'Rebecca Williams',NULL,'1994-11-09','2002-11-07','https://phillips.com/','https://sanders.net/',0),(47,'Jennifer Mitchell','Brittany','1990-10-13','1999-10-11','https://www.butler.com/','http://daniels.com/',1),(48,'Julian Stone','Ryan','1989-04-09','2009-04-04','https://shea.org/','https://www.vasquez-wheeler.org/',0),(49,'Kenneth Johnson','Jonathan','1976-09-08','1990-09-05','https://www.fernandez-hurst.biz/','https://www.ibarra.com/',2),(50,'Leslie Dixon','Katherine','1976-10-20','1977-10-20','http://www.snyder.com/','http://alexander.com/',0);
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
INSERT INTO `building` VALUES (1,'Burnett, Roy and Thomas','Network someone analysis note. Military share make law quite.\nEver population activity my TV cover feel. Thank quality window difference.',597),(2,'Bowen, Owens and Hernandez','Soldier about certain those agency. Leg suggest five of fire security. Wear painting spring me modern garden.',906),(3,'Davidson Group','More financial foreign become before rather require. Model agreement third begin time political respond.',551),(4,'Brennan Inc','Traditional executive number anyone good. Once ask table natural. Ball who always industry or wonder.\nCheck accept seat style must. Minute present difficult really.',867),(5,'Patterson-Hayden','Establish over draw. Full quality education office fill. Help form same product.\nEstablish off commercial approach quite. Apply political discuss partner commercial teach art sense.',327),(6,'Black-Hull','Fact business how perform show head follow. Analysis girl Congress option ok town east he.',331),(7,'Wang, Howell and Hunter','Loss off measure add above fall.\nLate forget moment view according success look. Follow interesting watch shoulder memory training.',684),(8,'Woods, Austin and Fernandez','Car black travel agree. Institution role pass.\nPressure large public term move their on ball.\nStrong pay step fast successful father. Class type four floor information structure.',533),(9,'Wilson LLC','Media third middle participant including. Stage toward allow practice look by poor dog.\nDescribe popular building. And treat wear newspaper hard. Interesting eight until option reality four my.',897),(10,'Burnett-Schwartz','Out trade against act yes company. Rate yes movement director movie.\nMethod again environmental section when behind shoulder room. Here one still where health. Argue treat yes.',228),(11,'Ayers-Warner','Yourself local reason night middle single. Attention life case central two hour hard. Human every organization chair. Evening painting something view lot far century.',639),(12,'Adams Group','Security financial by rest. Month worry teacher fire.\nReport network attorney baby event during article.\nBuy alone assume.',978),(13,'Taylor LLC','Store country movement hope certain. Its eat other kitchen.\nInside consumer make drop rich situation. Anything growth season thousand week place.',481),(14,'Church LLC','Future month community red most light call including. Suddenly attention public wear yard. On three sure trouble make along.\nPlace or despite. Outside evening most western scientist heart.',169),(15,'Strickland-Sullivan','Within food best personal anyone black. Rate lawyer assume husband write.\nBeyond often statement better me protect. Her talk eye community me expect. Worry table green growth house shoulder check.',342),(16,'Mendez-Carlson','Range third upon thing white heart.\nWithin put back. Play establish over situation. Hand notice thing tonight remain. Similar show able under allow outside.',352),(17,'Johnson Ltd','Then education friend. Performance business deep entire.\nDay involve true section remain maybe. Agency throw call minute senior information. Speak race during stuff after company.',866),(18,'Morris-Douglas','System simple go on him certain. Sport six their off. Concern whom company energy current garden thing.\nTest product great common dream half. Charge develop herself under even. Still pressure toward.',860),(19,'Nguyen Inc','Prepare change require here. Skill personal fact. Music wait church response. Piece everyone such television past people.',422),(20,'Craig-Fernandez','Matter reach to current chance would. Wrong certain main fast.\nSociety reason account rule sign leave yes. Different face rest president listen.\nExactly recent describe man pick. Learn capital thus.',276),(21,'Stevenson-Garrett','Indicate president involve care easy within firm. Sound new expert box yeah. Method book already television ball guess piece.',200),(22,'Stewart PLC','Doctor large security red leg choice consider. Visit high list boy police campaign personal. Best where card according.\nTreat loss fight nothing. Time rich possible begin direction.',306),(23,'Jimenez, Hernandez and Obrien','Safe herself interesting again. Language suggest order occur including. Themselves anything everybody alone.',893),(24,'Calderon-Frank','Billion chair nature government glass out. Under treatment scientist short her their save. Those education per energy trade.\nHelp even stay they my push. Animal century base business baby boy fast.',802),(25,'Miller Inc','Section structure every fall one sign sea various. Commercial moment nothing marriage within compare office hot. Personal probably final our break.',482),(26,'Harris-Carter','Already benefit me final wall recent president. Product subject entire family.\nSeveral entire color. Theory truth fish. Around term director staff.',239),(27,'Payne-Lambert','Compare exactly mother yes second partner thank.\nDrop great sometimes many box. Professor Mrs full court. Issue production up force in account.',240),(28,'Hill-Huerta','Sell read sister room now vote in. Budget any you official girl lot. Throughout serve near usually blue.\nRule task member court key. Manager material sense worry. Indeed teacher catch back.',222),(29,'Mullins Group','Somebody thought almost manager. Outside whatever now large.\nBill address only civil season soon. Let manager under television available southern.',449),(30,'Ochoa LLC','Save film free rest wife. Stage rest institution shake realize could remember. Old he every while. Simply take visit.',148);
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyer` (
  `buyer_ID` int(11) NOT NULL,
  PRIMARY KEY (`buyer_ID`),
  CONSTRAINT `buyer_ibfk_1` FOREIGN KEY (`buyer_ID`) REFERENCES `visitor` (`visitor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES (32),(39),(111);
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
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,'Middle Concert',1,'2017-08-14 09:17:00','2017-08-14 12:32:00',4,195,7,10,96),(2,1,'Else Concert',1,'2017-08-14 13:41:00','2017-08-14 17:04:00',27,203,6,5,89),(3,1,'Share Concert',1,'2017-08-14 17:29:00','2017-08-14 20:32:00',20,183,7,10,93),(4,1,'There Concert',1,'2017-08-14 21:58:00','2017-08-14 01:01:00',8,183,5,5,93),(5,1,'Picture Concert',1,'2017-08-14 01:59:00','2017-08-14 05:32:00',22,213,9,6,96),(6,1,'Leg Concert',2,'2017-08-15 08:42:00','2017-08-15 11:59:00',30,197,8,8,82),(7,1,'Owner Concert',2,'2017-08-15 13:25:00','2017-08-15 16:47:00',17,202,10,10,91),(8,1,'Fight Concert',2,'2017-08-15 17:17:00','2017-08-15 20:34:00',20,197,10,6,82),(9,1,'Tax Concert',2,'2017-08-15 21:41:00','2017-08-15 00:58:00',4,197,5,5,91),(10,1,'Ok Concert',2,'2017-08-15 01:47:00','2017-08-15 05:02:00',12,195,7,10,96),(11,1,'Likely Concert',2,'2017-08-15 06:40:00','2017-08-15 09:54:00',16,194,9,10,87),(12,1,'Box Concert',2,'2017-08-15 10:22:00','2017-08-15 13:27:00',5,185,9,9,93),(13,1,'Break Concert',2,'2017-08-15 14:43:00','2017-08-15 18:01:00',25,198,9,9,100),(14,1,'Bed Concert',2,'2017-08-15 18:26:00','2017-08-15 22:00:00',19,214,7,8,94),(15,1,'Back Concert',2,'2017-08-15 22:37:00','2017-08-15 01:52:00',2,195,9,7,100),(16,1,'Month Concert',3,'2017-08-16 08:30:00','2017-08-16 12:06:00',21,216,9,10,86),(17,1,'Employee Concert',4,'2017-08-17 09:02:00','2017-08-17 12:13:00',27,191,9,8,88),(18,1,'One Concert',4,'2017-08-17 13:08:00','2017-08-17 16:41:00',3,213,6,5,96),(19,1,'Hair Concert',4,'2017-08-17 18:19:00','2017-08-17 21:56:00',24,217,10,7,91),(20,1,'Son Concert',5,'2017-08-18 09:28:00','2017-08-18 13:03:00',18,215,9,6,83),(21,1,'Use Concert',5,'2017-08-18 13:35:00','2017-08-18 16:38:00',27,183,9,7,99),(22,1,'Professor Concert',5,'2017-08-18 17:08:00','2017-08-18 20:14:00',23,186,9,9,80),(23,1,'Third Concert',5,'2017-08-18 21:20:00','2017-08-18 00:48:00',24,208,7,5,88),(24,1,'Image Concert',5,'2017-08-18 01:31:00','2017-08-18 04:53:00',9,202,5,7,91),(25,1,'Worry Concert',5,'2017-08-18 05:15:00','2017-08-18 08:41:00',8,206,8,7,95),(26,1,'Much Concert',5,'2017-08-18 13:13:00','2017-08-18 16:30:00',18,197,10,9,90),(27,2,'Six Concert',1,'2018-08-05 09:24:00','2018-08-05 12:30:00',1,186,6,9,80),(28,2,'Scene Concert',1,'2018-08-05 13:32:00','2018-08-05 16:34:00',3,182,6,7,81),(29,2,'Head Concert',1,'2018-08-05 17:40:00','2018-08-05 20:52:00',22,192,8,8,84),(30,2,'Build Concert',1,'2018-08-05 21:47:00','2018-08-05 00:55:00',12,188,6,10,95),(31,2,'Grow Concert',1,'2018-08-05 02:01:00','2018-08-05 05:39:00',30,218,5,5,89),(32,2,'Try Concert',1,'2018-08-05 07:10:00','2018-08-05 10:46:00',17,216,10,10,95),(33,2,'Me Concert',1,'2018-08-05 11:09:00','2018-08-05 14:19:00',24,190,5,7,92),(34,2,'Carry Concert',1,'2018-08-05 14:47:00','2018-08-05 18:00:00',9,193,6,8,100),(35,2,'Activity Concert',1,'2018-08-05 18:22:00','2018-08-05 21:54:00',10,212,9,8,93),(36,2,'Technology Concert',1,'2018-08-05 22:37:00','2018-08-05 01:52:00',2,195,6,7,85),(37,2,'End Concert',2,'2018-08-06 08:38:00','2018-08-06 12:14:00',4,216,5,1,88),(38,2,'Difficult Concert',2,'2018-08-06 13:30:00','2018-08-06 16:51:00',6,201,6,6,86),(39,2,'Who Concert',2,'2018-08-06 17:58:00','2018-08-06 21:36:00',27,218,5,7,82),(40,2,'World Concert',2,'2018-08-06 22:24:00','2018-08-06 01:44:00',30,200,7,5,93),(41,2,'Tax Concert',3,'2018-08-07 08:32:00','2018-08-07 12:02:00',24,210,5,5,91),(42,2,'Military Concert',3,'2018-08-07 12:40:00','2018-08-07 16:16:00',20,216,8,5,83),(43,2,'Why Concert',3,'2018-08-07 17:24:00','2018-08-07 20:38:00',18,194,5,9,84),(44,2,'Gas Concert',3,'2018-08-07 22:17:00','2018-08-07 01:20:00',3,183,10,5,88),(45,2,'Pull Concert',3,'2018-08-07 12:12:00','2018-08-07 15:15:00',24,183,7,7,94),(46,3,'Go Concert',1,'2019-08-14 09:11:00','2019-08-14 12:32:00',28,201,5,9,88),(47,3,'Weight Concert',2,'2019-08-15 08:26:00','2019-08-15 11:37:00',13,191,10,6,82),(48,3,'Join Concert',2,'2019-08-15 12:38:00','2019-08-15 15:49:00',15,191,6,8,100),(49,3,'Let Concert',2,'2019-08-15 17:27:00','2019-08-15 20:32:00',29,185,8,9,93),(50,3,'Action Concert',2,'2019-08-15 21:41:00','2019-08-15 00:59:00',7,198,10,9,93),(51,3,'Almost Concert',2,'2019-08-15 20:42:00','2019-08-15 23:59:00',29,197,8,6,80),(52,3,'College Concert',3,'2019-08-16 08:27:00','2019-08-16 12:06:00',27,219,8,8,92),(53,3,'Whose Concert',3,'2019-08-16 13:05:00','2019-08-16 16:29:00',3,204,6,5,88),(54,3,'Point Concert',4,'2019-08-17 08:40:00','2019-08-17 12:12:00',3,212,9,10,100),(55,3,'Home Concert',4,'2019-08-17 12:32:00','2019-08-17 15:51:00',1,199,7,9,89),(56,3,'Job Concert',4,'2019-08-17 17:14:00','2019-08-17 20:45:00',11,211,7,7,89),(57,3,'Might Concert',5,'2019-08-18 08:57:00','2019-08-18 12:37:00',20,220,9,6,80),(58,3,'Southern Concert',5,'2019-08-18 12:58:00','2019-08-18 16:26:00',4,208,5,9,84),(59,3,'Owner Concert',5,'2019-08-18 17:37:00','2019-08-18 20:57:00',2,200,9,9,88),(60,3,'Them Concert',5,'2019-08-18 21:25:00','2019-08-18 00:32:00',12,187,10,7,83),(61,3,'Fear Concert',5,'2019-08-18 01:05:00','2019-08-18 04:33:00',21,208,6,10,95),(62,3,'State Concert',5,'2019-08-18 05:32:00','2019-08-18 08:37:00',3,185,9,2,84),(63,3,'Interest Concert',5,'2019-08-18 09:15:00','2019-08-18 12:53:00',18,218,7,9,84),(64,4,'Certain Concert',1,'2020-07-07 09:38:00','2020-07-07 12:58:00',16,200,8,9,86),(65,4,'With Concert',1,'2020-07-07 13:31:00','2020-07-07 16:47:00',5,196,8,7,87),(66,4,'Change Concert',2,'2020-07-08 08:23:00','2020-07-08 11:58:00',4,215,7,5,92),(67,4,'Culture Concert',2,'2020-07-08 13:15:00','2020-07-08 16:29:00',18,194,5,6,100),(68,4,'Deal Concert',2,'2020-07-08 18:07:00','2020-07-08 21:20:00',29,193,6,5,86),(69,4,'When Concert',2,'2020-07-08 22:03:00','2020-07-08 01:16:00',29,193,6,6,82),(70,4,'Responsibility Concert',2,'2020-07-08 02:50:00','2020-07-08 06:01:00',13,191,10,7,85),(71,4,'Attention Concert',2,'2020-07-08 07:23:00','2020-07-08 11:00:00',22,217,5,5,81),(72,4,'Find Concert',3,'2020-07-09 08:21:00','2020-07-09 11:25:00',22,184,9,7,88),(73,4,'Impact Concert',3,'2020-07-09 11:59:00','2020-07-09 15:33:00',15,214,8,10,97),(74,4,'Central Concert',3,'2020-07-09 16:36:00','2020-07-09 20:05:00',29,209,10,9,90),(75,4,'Where Concert',3,'2020-07-09 21:23:00','2020-07-09 00:50:00',20,207,10,6,80),(76,4,'Night Concert',3,'2020-07-09 01:40:00','2020-07-09 04:45:00',25,185,6,9,96),(77,4,'Protect Concert',4,'2020-07-10 08:52:00','2020-07-10 12:05:00',9,193,10,8,98),(78,4,'Sound Concert',4,'2020-07-10 13:09:00','2020-07-10 16:40:00',10,211,6,6,94),(79,4,'Should Concert',4,'2020-07-10 18:00:00','2020-07-10 21:21:00',24,201,6,8,91),(80,4,'Country Concert',4,'2020-07-10 22:44:00','2020-07-10 02:12:00',4,208,8,4,87),(81,4,'Position Concert',4,'2020-07-10 03:24:00','2020-07-10 06:38:00',29,194,8,5,84),(82,4,'Each Concert',4,'2020-07-10 07:40:00','2020-07-10 11:10:00',18,210,7,7,83),(83,5,'Off Concert',1,'2021-07-13 09:10:00','2021-07-13 12:31:00',6,201,7,10,85),(84,5,'Machine Concert',1,'2021-07-13 13:12:00','2021-07-13 16:25:00',20,193,6,8,91),(85,5,'Anything Concert',1,'2021-07-13 18:01:00','2021-07-13 21:31:00',28,210,9,7,90),(86,5,'Fear Concert',1,'2021-07-13 22:32:00','2021-07-13 01:53:00',16,201,9,6,86),(87,5,'Forget Concert',1,'2021-07-13 03:23:00','2021-07-13 06:57:00',1,214,9,7,94),(88,5,'Use Concert',2,'2021-07-14 09:06:00','2021-07-14 12:32:00',25,206,8,6,91),(89,5,'Least Concert',2,'2021-07-14 13:44:00','2021-07-14 17:17:00',8,213,7,6,100),(90,5,'Car Concert',2,'2021-07-14 18:52:00','2021-07-14 22:06:00',3,194,9,8,83),(91,5,'Mrs Concert',2,'2021-07-14 22:34:00','2021-07-14 01:40:00',2,186,7,5,89),(92,5,'Fast Concert',2,'2021-07-14 17:27:00','2021-07-14 21:04:00',8,217,6,9,91),(93,5,'Concern Concert',2,'2021-07-14 06:51:00','2021-07-14 10:05:00',10,194,8,5,87),(94,5,'Need Concert',2,'2021-07-14 22:16:00','2021-07-15 01:56:00',3,220,7,10,96),(95,5,'Old Concert',2,'2021-07-14 14:51:00','2021-07-14 18:14:00',19,203,10,6,99),(96,5,'Role Concert',3,'2021-07-15 08:24:00','2021-07-15 11:37:00',29,193,9,10,90),(97,5,'Mouth Concert',3,'2021-07-15 13:02:00','2021-07-15 16:18:00',5,196,7,6,85),(98,5,'Audience Concert',3,'2021-07-15 17:26:00','2021-07-15 21:03:00',10,217,6,10,98),(99,5,'Theory Concert',3,'2021-07-15 22:11:00','2021-07-15 01:51:00',29,220,7,5,86),(100,5,'Process Concert',3,'2021-07-15 16:28:00','2021-07-15 19:48:00',5,200,10,7,98),(101,5,'General Concert',3,'2021-07-15 08:18:00','2021-07-15 11:45:00',4,207,8,7,94),(102,5,'Reflect Concert',3,'2021-07-15 13:16:00','2021-07-15 16:19:00',18,183,6,6,92),(103,5,'She Concert',3,'2021-07-15 16:55:00','2021-07-15 20:27:00',13,212,10,5,83),(104,5,'Concern Concert',4,'2021-07-16 08:53:00','2021-07-16 11:57:00',28,184,5,10,90),(105,5,'Friend Concert',4,'2021-07-16 13:06:00','2021-07-16 16:35:00',4,209,8,5,81),(106,5,'Write Concert',4,'2021-07-16 16:59:00','2021-07-16 20:09:00',23,190,8,9,91),(107,5,'Perform Concert',5,'2021-07-17 09:26:00','2021-07-17 12:48:00',1,202,8,1,93),(108,5,'Near Concert',5,'2021-07-17 13:23:00','2021-07-17 16:25:00',27,182,5,9,91),(109,5,'Bill Concert',5,'2021-07-17 16:48:00','2021-07-17 20:04:00',15,196,10,6,80),(110,5,'Trip Concert',5,'2021-07-17 20:34:00','2021-07-17 23:52:00',2,198,7,2,100),(111,6,'Nice Concert',1,'2022-07-07 08:31:00','2022-07-07 11:44:00',13,193,7,8,85),(112,6,'Staff Concert',1,'2022-07-07 12:30:00','2022-07-07 15:41:00',6,191,10,10,89),(113,6,'Strong Concert',1,'2022-07-07 16:50:00','2022-07-07 19:54:00',15,184,9,10,99),(114,6,'Office Concert',1,'2022-07-07 21:22:00','2022-07-07 01:01:00',16,219,7,5,83),(115,6,'Place Concert',1,'2022-07-07 02:08:00','2022-07-07 05:40:00',26,212,8,5,80),(116,6,'Its Concert',1,'2022-07-07 06:05:00','2022-07-07 09:28:00',11,203,5,10,93),(117,6,'Dinner Concert',2,'2022-07-08 09:12:00','2022-07-08 12:39:00',9,207,7,8,90),(118,6,'Consumer Concert',2,'2022-07-08 13:44:00','2022-07-08 16:53:00',19,189,7,6,82),(119,6,'Interesting Concert',2,'2022-07-08 17:44:00','2022-07-08 21:04:00',19,200,5,10,85),(120,6,'About Concert',2,'2022-07-08 22:43:00','2022-07-08 02:11:00',14,208,7,9,88),(121,6,'Its Concert',2,'2022-07-08 02:54:00','2022-07-08 06:12:00',11,198,7,5,96),(122,6,'Anyone Concert',2,'2022-07-08 07:20:00','2022-07-08 10:33:00',4,193,5,5,87),(123,6,'Put Concert',2,'2022-07-08 11:00:00','2022-07-08 14:02:00',18,182,5,8,96),(124,6,'Ok Concert',2,'2022-07-08 15:20:00','2022-07-08 18:41:00',15,201,10,8,97),(125,6,'Threat Concert',3,'2022-07-09 09:31:00','2022-07-09 12:54:00',18,203,10,7,81),(126,6,'Statement Concert',3,'2022-07-09 13:49:00','2022-07-09 17:14:00',1,205,9,8,98),(127,6,'Great Concert',3,'2022-07-09 17:38:00','2022-07-09 21:12:00',6,214,8,6,81),(128,6,'Seven Concert',3,'2022-07-09 22:40:00','2022-07-09 01:47:00',5,187,7,7,87),(129,6,'Edge Concert',3,'2022-07-09 03:25:00','2022-07-09 06:39:00',22,194,9,7,98),(130,6,'Like Concert',4,'2022-07-10 09:34:00','2022-07-10 12:59:00',6,205,7,9,88),(131,6,'Attention Concert',4,'2022-07-10 14:18:00','2022-07-10 17:57:00',8,219,6,8,94),(132,6,'All Concert',5,'2022-07-11 09:29:00','2022-07-11 12:36:00',16,187,5,7,99),(133,6,'Though Concert',5,'2022-07-11 13:56:00','2022-07-11 17:26:00',2,210,8,1,82),(134,6,'Son Concert',5,'2022-07-11 17:50:00','2022-07-11 20:55:00',28,185,10,10,99),(135,6,'Attorney Concert',5,'2022-07-11 21:29:00','2022-07-11 00:53:00',13,204,9,6,100),(136,7,'Point Concert',1,'2023-09-02 09:14:00','2023-09-02 12:32:00',1,198,9,9,84),(137,7,'Opportunity Concert',1,'2023-09-02 13:53:00','2023-09-02 17:20:00',8,207,9,7,99),(138,7,'Table Concert',1,'2023-09-02 18:54:00','2023-09-02 22:08:00',30,194,10,10,85),(139,7,'Of Concert',1,'2023-09-02 22:33:00','2023-09-02 01:38:00',25,185,5,7,97),(140,7,'Actually Concert',1,'2023-09-02 02:50:00','2023-09-02 06:07:00',11,197,8,8,84),(141,7,'Perform Concert',1,'2023-09-02 06:39:00','2023-09-02 09:45:00',27,186,10,10,90),(142,7,'Any Concert',1,'2023-09-02 11:16:00','2023-09-02 14:51:00',19,215,6,6,88),(143,7,'Ever Concert',1,'2023-09-02 16:01:00','2023-09-02 19:20:00',23,199,10,9,97),(144,7,'Maintain Concert',1,'2023-09-02 20:06:00','2023-09-02 23:15:00',7,189,10,7,83),(145,7,'West Concert',2,'2023-09-03 09:02:00','2023-09-03 12:10:00',19,188,7,9,95),(146,7,'Walk Concert',2,'2023-09-03 12:42:00','2023-09-03 16:19:00',9,217,9,7,80),(147,7,'Method Concert',2,'2023-09-03 16:57:00','2023-09-03 20:12:00',13,195,9,8,97),(148,8,'Item Concert',1,'2024-07-02 09:10:00','2024-07-02 12:12:00',6,182,6,7,94),(149,8,'Process Concert',1,'2024-07-02 13:29:00','2024-07-02 16:39:00',25,190,6,9,93),(150,8,'White Concert',1,'2024-07-02 17:02:00','2024-07-02 20:24:00',11,202,8,6,96),(151,8,'Budget Concert',1,'2024-07-02 21:41:00','2024-07-02 01:07:00',30,206,6,8,98),(152,8,'Himself Concert',2,'2024-07-03 09:14:00','2024-07-03 12:36:00',30,202,9,8,94),(153,8,'Soon Concert',3,'2024-07-04 08:35:00','2024-07-04 12:13:00',4,218,10,9,83),(154,8,'Gun Concert',3,'2024-07-04 13:23:00','2024-07-04 16:59:00',19,216,6,7,100),(155,9,'Game Concert',1,'2025-09-19 09:10:00','2025-09-19 12:15:00',13,185,10,8,90),(156,9,'Far Concert',1,'2025-09-19 13:39:00','2025-09-19 17:17:00',20,218,6,9,81),(157,9,'Why Concert',1,'2025-09-19 17:39:00','2025-09-19 21:18:00',15,219,7,10,90),(158,9,'Condition Concert',1,'2025-09-19 21:58:00','2025-09-19 01:11:00',5,193,9,1,97),(159,9,'Guy Concert',1,'2025-09-19 02:40:00','2025-09-19 06:16:00',18,216,8,10,96),(160,9,'Identify Concert',1,'2025-09-19 07:26:00','2025-09-19 10:45:00',19,199,7,8,100),(161,9,'Dark Concert',2,'2025-09-20 08:30:00','2025-09-20 11:39:00',27,189,7,2,92),(162,9,'Director Concert',2,'2025-09-20 13:14:00','2025-09-20 16:32:00',18,198,6,7,92),(163,9,'Shoulder Concert',2,'2025-09-20 18:00:00','2025-09-20 21:29:00',30,209,8,7,97),(164,9,'My Concert',2,'2025-09-20 22:18:00','2025-09-20 01:54:00',17,216,8,1,91),(165,9,'Small Concert',2,'2025-09-20 02:55:00','2025-09-20 06:26:00',15,211,10,6,92),(166,9,'Tell Concert',2,'2025-09-20 07:36:00','2025-09-20 11:02:00',10,206,8,6,97),(167,9,'Mention Concert',2,'2025-09-20 12:24:00','2025-09-20 15:50:00',9,206,5,7,89),(168,9,'Nearly Concert',3,'2025-09-21 08:54:00','2025-09-21 12:32:00',1,218,5,7,89),(169,9,'Human Concert',3,'2025-09-21 13:07:00','2025-09-21 16:20:00',12,193,6,1,97),(170,9,'Program Concert',3,'2025-09-21 17:41:00','2025-09-21 21:13:00',23,212,5,1,94),(171,9,'Draw Concert',3,'2025-09-21 22:41:00','2025-09-21 02:05:00',15,204,10,6,97),(172,9,'Perhaps Concert',3,'2025-09-21 03:17:00','2025-09-21 06:33:00',25,196,9,8,82),(173,9,'Involve Concert',3,'2025-09-21 08:03:00','2025-09-21 11:17:00',26,194,6,1,86),(174,9,'Positive Concert',3,'2025-09-21 11:57:00','2025-09-21 15:01:00',7,184,9,1,85),(175,9,'Put Concert',3,'2025-09-21 16:40:00','2025-09-21 20:17:00',20,217,10,6,84),(176,9,'Even Concert',3,'2025-09-21 21:37:00','2025-09-21 01:05:00',19,208,9,6,81),(177,10,'Left Concert',1,'2026-09-26 08:53:00','2026-09-26 11:59:00',10,186,7,5,92),(178,10,'Question Concert',1,'2026-09-26 13:37:00','2026-09-26 17:11:00',17,214,10,9,85),(179,10,'Spend Concert',2,'2026-09-27 08:34:00','2026-09-27 11:46:00',23,192,7,1,86),(180,10,'Writer Concert',2,'2026-09-27 12:25:00','2026-09-27 15:45:00',14,200,8,7,85),(181,10,'Day Concert',2,'2026-09-27 16:59:00','2026-09-27 20:32:00',11,213,9,10,99),(182,10,'Ten Concert',2,'2026-09-27 21:23:00','2026-09-27 00:58:00',20,215,5,10,82),(183,10,'Stay Concert',2,'2026-09-27 01:25:00','2026-09-27 04:55:00',17,210,9,8,80),(184,10,'Statement Concert',2,'2026-09-27 06:08:00','2026-09-27 09:10:00',17,182,9,2,100),(185,10,'Budget Concert',3,'2026-09-28 08:59:00','2026-09-28 12:30:00',6,211,7,8,80),(186,10,'Test Concert',3,'2026-09-28 13:47:00','2026-09-28 16:49:00',3,182,10,7,82),(187,10,'Do Concert',3,'2026-09-28 18:20:00','2026-09-28 21:53:00',10,213,8,7,91),(188,10,'Them Concert',4,'2026-09-29 08:59:00','2026-09-29 12:18:00',6,199,9,10,93);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festival`
--

LOCK TABLES `festival` WRITE;
/*!40000 ALTER TABLE `festival` DISABLE KEYS */;
INSERT INTO `festival` VALUES (1,'2017-08-14',5),(2,'2018-08-05',3),(3,'2019-08-14',5),(4,'2020-07-07',4),(5,'2021-07-13',5),(6,'2022-07-07',5),(7,'2023-09-02',2),(8,'2024-07-02',3),(9,'2025-09-19',3),(10,'2026-09-26',4);
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
  KEY `idx_festival_location_continent` (`festival_ID`,`continent`),
  CONSTRAINT `festival_location_ibfk_1` FOREIGN KEY (`festival_ID`) REFERENCES `festival` (`festival_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festival_location`
--

LOCK TABLES `festival_location` WRITE;
/*!40000 ALTER TABLE `festival_location` DISABLE KEYS */;
INSERT INTO `festival_location` VALUES (1,1,'7241 White Dale','Campbellbury','Belarus','Europe','58.3009695,91.668753'),(2,2,'32701 Smith Spur','East Alexisburgh','Gambia','North America','22.189114,-20.418640'),(3,3,'105 Hall Lodge','Lake Stacy','Libyan Arab Jamahiriya','South America','56.7260915,-11.467264'),(4,4,'8090 Javier Port','West Christopherville','Georgia','Europe','3.091774,175.021164'),(5,5,'96909 Hayden Shores Apt. 894','Derekmouth','Albania','North America','64.964753,160.256859'),(6,6,'059 Laura Rue Apt. 096','Port Tracyside','Japan','South America','21.009421,-35.878603'),(7,7,'997 Lloyd Parkways','Ramirezland','North Macedonia','Europe','-34.787405,-19.001966'),(8,8,'508 Erica Ridges Suite 183','East Kelsey','Wallis and Futuna','North America','64.8184305,168.235092'),(9,9,'7895 Powell Garden','West Michaelshire','Canada','South America','-50.295972,-15.534729'),(10,10,'7228 Miller Locks Apt. 319','Oliverhaven','American Samoa','Europe','-37.5916245,-7.992597');
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
INSERT INTO `genre` VALUES (1,'Jazz','Smooth Jazz',1,NULL),(2,'Rock','Hard Rock',1,NULL),(3,'Pop',NULL,1,NULL),(4,'Rock','Hard Rock',2,NULL),(5,'Rock','Hard Rock',3,NULL),(6,'Pop',NULL,3,NULL),(7,'Classical','Baroque',3,NULL),(8,'Jazz','Smooth Jazz',4,NULL),(9,'Rock','Hard Rock',4,NULL),(10,'Classical','Baroque',4,NULL),(11,'Rock','Hard Rock',5,NULL),(12,'Jazz','Smooth Jazz',5,NULL),(13,'Hip-Hop','Trap',5,NULL),(14,'Jazz','Smooth Jazz',6,NULL),(15,'Rock','Hard Rock',7,NULL),(16,'Jazz','Smooth Jazz',7,NULL),(17,'Pop',NULL,8,NULL),(18,'Hip-Hop','Trap',8,NULL),(19,'Jazz','Smooth Jazz',9,NULL),(20,'Classical','Baroque',9,NULL),(21,'Jazz','Smooth Jazz',10,NULL),(22,'Electronic','House',10,NULL),(23,'Classical','Baroque',11,NULL),(24,'Classical','Baroque',12,NULL),(25,'Hip-Hop','Trap',13,NULL),(26,'Classical','Baroque',13,NULL),(27,'Electronic','House',13,NULL),(28,'Classical','Baroque',14,NULL),(29,'Rock','Hard Rock',15,NULL),(30,'Jazz','Smooth Jazz',16,NULL),(31,'Electronic','House',16,NULL),(32,'Pop',NULL,16,NULL),(33,'Electronic','House',17,NULL),(34,'Jazz','Smooth Jazz',17,NULL),(35,'Hip-Hop','Trap',17,NULL),(36,'Hip-Hop','Trap',18,NULL),(37,'Jazz','Smooth Jazz',19,NULL),(38,'Rock','Hard Rock',20,NULL),(39,'Pop',NULL,21,NULL),(40,'Rock','Hard Rock',22,NULL),(41,'Classical','Baroque',22,NULL),(42,'Rock','Hard Rock',23,NULL),(43,'Classical','Baroque',24,NULL),(44,'Classical','Baroque',25,NULL),(45,'Electronic','House',26,NULL),(46,'Rock','Hard Rock',26,NULL),(47,'Electronic','House',27,NULL),(48,'Jazz','Smooth Jazz',27,NULL),(49,'Pop',NULL,27,NULL),(50,'Rock','Hard Rock',28,NULL),(51,'Pop',NULL,28,NULL),(52,'Pop',NULL,29,NULL),(53,'Electronic','House',29,NULL),(54,'Jazz','Smooth Jazz',29,NULL),(55,'Pop',NULL,30,NULL),(56,'Electronic','House',31,NULL),(57,'Hip-Hop','Trap',31,NULL),(58,'Classical','Baroque',32,NULL),(59,'Pop',NULL,32,NULL),(60,'Hip-Hop','Trap',32,NULL),(61,'Pop',NULL,33,NULL),(62,'Electronic','House',33,NULL),(63,'Classical','Baroque',33,NULL),(64,'Electronic','House',34,NULL),(65,'Pop',NULL,34,NULL),(66,'Jazz','Smooth Jazz',34,NULL),(67,'Pop',NULL,35,NULL),(68,'Jazz','Smooth Jazz',35,NULL),(69,'Rock','Hard Rock',36,NULL),(70,'Electronic','House',37,NULL),(71,'Hip-Hop','Trap',38,NULL),(72,'Electronic','House',38,NULL),(73,'Electronic','House',39,NULL),(74,'Rock','Hard Rock',40,NULL),(75,'Jazz','Smooth Jazz',40,NULL),(76,'Hip-Hop','Trap',41,NULL),(77,'Rock','Hard Rock',42,NULL),(78,'Jazz','Smooth Jazz',42,NULL),(79,'Electronic','House',43,NULL),(80,'Hip-Hop','Trap',43,NULL),(81,'Rock','Hard Rock',43,NULL),(82,'Electronic','House',44,NULL),(83,'Classical','Baroque',44,NULL),(84,'Rock','Hard Rock',44,NULL),(85,'Electronic','House',45,NULL),(86,'Pop',NULL,46,NULL),(87,'Hip-Hop','Trap',46,NULL),(88,'Classical','Baroque',46,NULL),(89,'Electronic','House',47,NULL),(90,'Rock','Hard Rock',48,NULL),(91,'Pop',NULL,48,NULL),(92,'Classical','Baroque',49,NULL),(93,'Rock','Hard Rock',49,NULL),(94,'Rock','Hard Rock',50,NULL),(95,'Pop',NULL,50,NULL),(96,'Electronic','House',50,NULL),(97,'Jazz','Smooth Jazz',NULL,1),(98,'Electronic','House',NULL,1),(99,'Classical','Baroque',NULL,1),(100,'Pop',NULL,NULL,2),(101,'Rock','Hard Rock',NULL,2),(102,'Jazz','Smooth Jazz',NULL,3),(103,'Pop',NULL,NULL,3),(104,'Classical','Baroque',NULL,3),(105,'Jazz','Smooth Jazz',NULL,4),(106,'Classical','Baroque',NULL,4),(107,'Classical','Baroque',NULL,5),(108,'Pop',NULL,NULL,5),(109,'Rock','Hard Rock',NULL,5),(110,'Classical','Baroque',NULL,6),(111,'Pop',NULL,NULL,6),(112,'Electronic','House',NULL,6),(113,'Rock','Hard Rock',NULL,7),(114,'Jazz','Smooth Jazz',NULL,7),(115,'Hip-Hop','Trap',NULL,7),(116,'Hip-Hop','Trap',NULL,8),(117,'Hip-Hop','Trap',NULL,9),(118,'Rock','Hard Rock',NULL,9),(119,'Pop',NULL,NULL,9),(120,'Jazz','Smooth Jazz',NULL,10),(121,'Classical','Baroque',NULL,11),(122,'Rock','Hard Rock',NULL,12),(123,'Electronic','House',NULL,12),(124,'Classical','Baroque',NULL,12),(125,'Pop',NULL,NULL,13),(126,'Hip-Hop','Trap',NULL,14),(127,'Pop',NULL,NULL,14),(128,'Classical','Baroque',NULL,15),(129,'Electronic','House',NULL,15),(130,'Rock','Hard Rock',NULL,15);
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
INSERT INTO `group` VALUES (1,'Morgan Russell Band','1985-12-11','2004-12-06','http://henry.com/','https://www.ryan.com/','Jennifer Holt, Ricardo Murphy, ',0),(2,'Julie Dodson Band','1990-03-04','1997-03-02','http://www.baxter.com/','http://medina.com/','Kelly Anderson, Mark Holmes, Connie Davis, ',0),(3,'Carlos Brown Band','2000-11-12','2001-11-12','http://www.peterson.biz/','http://lindsey-walker.org/','Abigail Smith, Leslie Dixon, Michael Calhoun, Tanya Jensen, David Wang, ',0),(4,'Sarah Thornton Band','1987-11-25','1999-11-22','http://kirk-melendez.com/','http://diaz.org/','Leslie Dixon, Rebecca Williams, ',0),(5,'Justin Nicholson Band','1988-10-15','1993-10-14','https://cannon.info/','http://www.walker.biz/','William Marsh, Leslie Dixon, ',0),(6,'Holly Miller Band','1990-03-01','2000-02-27','http://simmons.net/','http://www.garcia-miller.biz/','Daniel Howell, Christopher Kemp, Meredith Arnold, Sue Bean, ',0),(7,'Shane Rosales Band','1975-12-07','1983-12-05','http://www.barrett.com/','https://www.romero-luna.com/','Christopher Fletcher, Victoria Sanchez, David Wang, ',0),(8,'David Vasquez Band','1974-11-16','1981-11-14','http://hill-reyes.biz/','https://www.hayes.com/','Bradley Moore, Christopher Kemp, Evan Jones, Crystal Pierce, ',0),(9,'Sierra Meza Band','1978-11-10','1984-11-08','http://www.hendrix-young.net/','https://mays-kelly.com/','Christopher Kemp, Miss Kimberly Williams, ',0),(10,'Jennifer Clarke Band','2000-06-20','2020-06-15','https://www.garcia-vazquez.org/','http://www.gonzalez.org/','Adriana Mosley, Robert Kelley, Michael Calhoun, ',0),(11,'Jessica Hart Band','2002-10-12','2005-10-11','https://norton.com/','https://www.anderson.info/','Jean Chan, Michael Calhoun, ',0),(12,'Richard Rogers Band','1980-02-27','1998-02-22','http://www.hess.info/','http://www.jones-jordan.com/','Michael Stephens, Mark Holmes, ',0),(13,'Jennifer Barr Band','1987-01-18','1999-01-15','https://www.everett-james.com/','https://hamilton-horton.com/','Bradley Moore, Jaime Potter, Crystal Pierce, Connie Davis, ',0),(14,'Kelly Rodriguez Band','1992-07-07','2000-07-05','https://www.stevens.com/','https://www.higgins.com/','Ricardo Murphy, Miss Kimberly Williams, Charles Johnson, ',0),(15,'Tyler Williams Band','1984-06-13','1996-06-10','https://wilson-hamilton.com/','http://moon.net/','Charles Johnson, Albert Carr, Victoria Sanchez, William Marsh, ',0);
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
  CONSTRAINT `fk_group_members_group` FOREIGN KEY (`group_ID`) REFERENCES `group` (`group_ID`) ON DELETE CASCADE,
  CONSTRAINT `group_members_ibfk_1` FOREIGN KEY (`group_ID`) REFERENCES `group` (`group_ID`),
  CONSTRAINT `group_members_ibfk_2` FOREIGN KEY (`artist_ID`) REFERENCES `artist` (`artist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_members`
--

LOCK TABLES `group_members` WRITE;
/*!40000 ALTER TABLE `group_members` DISABLE KEYS */;
INSERT INTO `group_members` VALUES (1,26),(1,33),(2,12),(2,18),(2,27),(3,7),(3,15),(3,21),(3,35),(3,50),(4,46),(4,50),(5,39),(5,50),(6,4),(6,14),(6,17),(6,34),(7,16),(7,24),(7,35),(8,2),(8,4),(8,19),(8,31),(9,4),(9,22),(10,7),(10,9),(10,30),(11,7),(11,13),(12,12),(12,36),(13,2),(13,19),(13,27),(13,40),(14,20),(14,22),(14,33),(15,3),(15,20),(15,24),(15,39);
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
  KEY `idx_perf_type_artist_event` (`performance_type`,`artist_ID`,`event_ID`),
  CONSTRAINT `performances_ibfk_1` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`),
  CONSTRAINT `performances_ibfk_2` FOREIGN KEY (`building_ID`) REFERENCES `building` (`building_ID`),
  CONSTRAINT `performances_ibfk_3` FOREIGN KEY (`artist_ID`) REFERENCES `artist` (`artist_ID`),
  CONSTRAINT `performances_ibfk_4` FOREIGN KEY (`group_ID`) REFERENCES `group` (`group_ID`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`performance_start_time` < `performance_end_time`),
  CONSTRAINT `CONSTRAINT_2` CHECK (`performance_duration` <= 180)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performances`
--

LOCK TABLES `performances` WRITE;
/*!40000 ALTER TABLE `performances` DISABLE KEYS */;
INSERT INTO `performances` VALUES (1,1,'finale','2017-08-14 09:17:00','2017-08-14 10:37:00',80,4,'Brennan Inc',NULL,1),(2,2,'warm up','2017-08-14 13:41:00','2017-08-14 15:00:00',79,27,'Payne-Lambert',NULL,7),(3,3,'headline','2017-08-14 17:29:00','2017-08-14 19:04:00',95,20,'Craig-Fernandez',NULL,3),(4,5,'warm up','2017-08-14 01:59:00','2017-08-14 03:21:00',82,22,'Stewart PLC',3,NULL),(5,5,'finale','2017-08-14 03:32:00','2017-08-14 04:22:00',50,22,'Stewart PLC',25,NULL),(6,6,'warm up','2017-08-15 08:42:00','2017-08-15 10:29:00',107,30,'Ochoa LLC',19,NULL),(7,7,'warm up','2017-08-15 13:25:00','2017-08-15 14:53:00',88,17,'Johnson Ltd',43,NULL),(8,8,'special_guest','2017-08-15 17:17:00','2017-08-15 18:24:00',67,20,'Craig-Fernandez',27,NULL),(9,8,'warm up','2017-08-15 18:33:00','2017-08-15 19:51:00',78,20,'Craig-Fernandez',NULL,1),(10,10,'warm up','2017-08-15 01:47:00','2017-08-15 03:37:00',110,12,'Adams Group',NULL,12),(11,11,'warm up','2017-08-15 06:40:00','2017-08-15 08:06:00',86,16,'Mendez-Carlson',NULL,13),(12,11,'finale','2017-08-15 08:15:00','2017-08-15 08:46:00',31,16,'Mendez-Carlson',NULL,15),(13,12,'special_guest','2017-08-15 10:22:00','2017-08-15 11:54:00',92,5,'Patterson-Hayden',NULL,8),(14,13,'finale','2017-08-15 14:43:00','2017-08-15 16:30:00',107,25,'Miller Inc',NULL,15),(15,14,'finale','2017-08-15 18:26:00','2017-08-15 19:03:00',37,19,'Nguyen Inc',NULL,3),(16,16,'finale','2017-08-16 08:30:00','2017-08-16 10:23:00',113,21,'Stevenson-Garrett',NULL,5),(17,16,'warm up','2017-08-16 10:32:00','2017-08-16 11:42:00',70,21,'Stevenson-Garrett',NULL,11),(18,17,'finale','2017-08-17 09:02:00','2017-08-17 09:55:00',53,27,'Payne-Lambert',NULL,15),(19,18,'finale','2017-08-17 13:08:00','2017-08-17 15:08:00',120,3,'Davidson Group',NULL,15),(20,18,'headline','2017-08-17 15:21:00','2017-08-17 16:11:00',50,3,'Davidson Group',NULL,10),(21,19,'finale','2017-08-17 18:19:00','2017-08-17 19:38:00',79,24,'Calderon-Frank',37,NULL),(22,19,'headline','2017-08-17 19:44:00','2017-08-17 20:21:00',37,24,'Calderon-Frank',NULL,1),(23,19,'warm up','2017-08-17 20:32:00','2017-08-17 21:19:00',47,24,'Calderon-Frank',5,NULL),(24,20,'finale','2017-08-18 09:28:00','2017-08-18 10:14:00',46,18,'Morris-Douglas',NULL,4),(25,21,'finale','2017-08-18 13:35:00','2017-08-18 14:45:00',70,27,'Payne-Lambert',NULL,2),(26,22,'headline','2017-08-18 17:08:00','2017-08-18 17:41:00',33,23,'Jimenez, Hernandez and Obrien',43,NULL),(27,24,'warm up','2017-08-18 01:31:00','2017-08-18 02:02:00',31,9,'Wilson LLC',NULL,14),(28,24,'headline','2017-08-18 02:16:00','2017-08-18 03:11:00',55,9,'Wilson LLC',NULL,10),(29,25,'special_guest','2017-08-18 05:15:00','2017-08-18 06:24:00',69,8,'Woods, Austin and Fernandez',NULL,6),(30,26,'special_guest','2017-08-18 13:13:00','2017-08-18 14:24:00',71,18,'Morris-Douglas',31,NULL),(31,26,'warm up','2017-08-18 14:34:00','2017-08-18 16:18:00',104,18,'Morris-Douglas',42,NULL),(32,27,'headline','2018-08-05 09:24:00','2018-08-05 10:32:00',68,1,'Burnett, Roy and Thomas',50,NULL),(33,27,'warm up','2018-08-05 10:47:00','2018-08-05 12:03:00',76,1,'Burnett, Roy and Thomas',7,NULL),(34,28,'special_guest','2018-08-05 13:32:00','2018-08-05 14:52:00',80,3,'Davidson Group',NULL,8),(35,29,'finale','2018-08-05 17:40:00','2018-08-05 19:31:00',111,22,'Stewart PLC',NULL,3),(36,31,'warm up','2018-08-05 02:01:00','2018-08-05 03:27:00',86,30,'Ochoa LLC',15,NULL),(37,32,'finale','2018-08-05 07:10:00','2018-08-05 08:53:00',103,17,'Johnson Ltd',NULL,15),(38,32,'warm up','2018-08-05 09:00:00','2018-08-05 10:46:00',106,17,'Johnson Ltd',48,NULL),(39,33,'warm up','2018-08-05 11:09:00','2018-08-05 13:02:00',113,24,'Calderon-Frank',25,NULL),(40,33,'headline','2018-08-05 13:16:00','2018-08-05 13:52:00',36,24,'Calderon-Frank',39,NULL),(41,34,'warm up','2018-08-05 14:47:00','2018-08-05 15:35:00',48,9,'Wilson LLC',NULL,15),(42,34,'special_guest','2018-08-05 15:42:00','2018-08-05 16:13:00',31,9,'Wilson LLC',1,NULL),(43,35,'special_guest','2018-08-05 18:22:00','2018-08-05 19:15:00',53,10,'Burnett-Schwartz',NULL,13),(44,35,'headline','2018-08-05 19:29:00','2018-08-05 20:20:00',51,10,'Burnett-Schwartz',NULL,15),(45,37,'special_guest','2018-08-06 08:38:00','2018-08-06 10:04:00',86,4,'Brennan Inc',NULL,11),(46,37,'finale','2018-08-06 10:13:00','2018-08-06 12:05:00',112,4,'Brennan Inc',NULL,11),(47,38,'special_guest','2018-08-06 13:30:00','2018-08-06 14:52:00',82,6,'Black-Hull',25,NULL),(48,38,'warm up','2018-08-06 15:05:00','2018-08-06 16:51:00',106,6,'Black-Hull',38,NULL),(49,39,'finale','2018-08-06 17:58:00','2018-08-06 19:58:00',120,27,'Payne-Lambert',NULL,13),(50,41,'finale','2018-08-07 08:32:00','2018-08-07 09:44:00',72,24,'Calderon-Frank',NULL,11),(51,42,'finale','2018-08-07 12:40:00','2018-08-07 14:36:00',116,20,'Craig-Fernandez',NULL,11),(52,43,'headline','2018-08-07 17:24:00','2018-08-07 18:45:00',81,18,'Morris-Douglas',NULL,5),(53,43,'warm up','2018-08-07 18:57:00','2018-08-07 20:27:00',90,18,'Morris-Douglas',NULL,15),(54,45,'finale','2018-08-07 12:12:00','2018-08-07 14:05:00',113,24,'Calderon-Frank',NULL,9),(55,46,'finale','2019-08-14 09:11:00','2019-08-14 11:11:00',120,28,'Hill-Huerta',NULL,1),(56,47,'finale','2019-08-15 08:26:00','2019-08-15 09:50:00',84,13,'Taylor LLC',15,NULL),(57,47,'warm up','2019-08-15 09:57:00','2019-08-15 11:24:00',87,13,'Taylor LLC',NULL,14),(58,48,'special_guest','2019-08-15 12:38:00','2019-08-15 13:22:00',44,15,'Strickland-Sullivan',NULL,15),(59,48,'warm up','2019-08-15 13:37:00','2019-08-15 14:11:00',34,15,'Strickland-Sullivan',46,NULL),(60,49,'warm up','2019-08-15 17:27:00','2019-08-15 18:57:00',90,29,'Mullins Group',NULL,15),(61,51,'finale','2019-08-15 20:42:00','2019-08-15 21:33:00',51,29,'Mullins Group',NULL,2),(62,51,'finale','2019-08-15 21:48:00','2019-08-15 22:42:00',54,29,'Mullins Group',NULL,11),(63,52,'headline','2019-08-16 08:27:00','2019-08-16 09:39:00',72,27,'Payne-Lambert',NULL,7),(64,52,'finale','2019-08-16 09:53:00','2019-08-16 11:21:00',88,27,'Payne-Lambert',NULL,1),(65,53,'special_guest','2019-08-16 13:05:00','2019-08-16 13:35:00',30,3,'Davidson Group',22,NULL),(66,53,'warm up','2019-08-16 13:50:00','2019-08-16 14:37:00',47,3,'Davidson Group',42,NULL),(67,53,'finale','2019-08-16 14:43:00','2019-08-16 15:53:00',70,3,'Davidson Group',NULL,5),(68,54,'headline','2019-08-17 08:40:00','2019-08-17 09:58:00',78,3,'Davidson Group',NULL,9),(69,55,'headline','2019-08-17 12:32:00','2019-08-17 13:55:00',83,1,'Burnett, Roy and Thomas',NULL,11),(70,55,'special_guest','2019-08-17 14:05:00','2019-08-17 15:42:00',97,1,'Burnett, Roy and Thomas',NULL,4),(71,56,'special_guest','2019-08-17 17:14:00','2019-08-17 18:20:00',66,11,'Ayers-Warner',13,NULL),(72,57,'special_guest','2019-08-18 08:57:00','2019-08-18 09:45:00',48,20,'Craig-Fernandez',NULL,13),(73,58,'warm up','2019-08-18 12:58:00','2019-08-18 13:58:00',60,4,'Brennan Inc',18,NULL),(74,59,'special_guest','2019-08-18 17:37:00','2019-08-18 18:17:00',40,2,'Bowen, Owens and Hernandez',NULL,11),(75,59,'finale','2019-08-18 18:28:00','2019-08-18 19:01:00',33,2,'Bowen, Owens and Hernandez',NULL,14),(76,61,'warm up','2019-08-18 01:05:00','2019-08-18 02:27:00',82,21,'Stevenson-Garrett',NULL,9),(77,61,'finale','2019-08-18 02:34:00','2019-08-18 03:30:00',56,21,'Stevenson-Garrett',NULL,4),(78,62,'finale','2019-08-18 05:32:00','2019-08-18 07:22:00',110,3,'Davidson Group',20,NULL),(79,63,'finale','2019-08-18 09:15:00','2019-08-18 11:03:00',108,18,'Morris-Douglas',35,NULL),(80,64,'finale','2020-07-07 09:38:00','2020-07-07 11:01:00',83,16,'Mendez-Carlson',7,NULL),(81,64,'finale','2020-07-07 11:10:00','2020-07-07 12:26:00',76,16,'Mendez-Carlson',NULL,10),(82,65,'finale','2020-07-07 13:31:00','2020-07-07 14:54:00',83,5,'Patterson-Hayden',32,NULL),(83,66,'finale','2020-07-08 08:23:00','2020-07-08 10:21:00',118,4,'Brennan Inc',NULL,4),(84,66,'warm up','2020-07-08 10:35:00','2020-07-08 11:06:00',31,4,'Brennan Inc',NULL,8),(85,67,'headline','2020-07-08 13:15:00','2020-07-08 14:00:00',45,18,'Morris-Douglas',20,NULL),(86,67,'headline','2020-07-08 14:09:00','2020-07-08 15:22:00',73,18,'Morris-Douglas',NULL,7),(87,68,'headline','2020-07-08 18:07:00','2020-07-08 19:04:00',57,29,'Mullins Group',NULL,2),(88,70,'finale','2020-07-08 02:50:00','2020-07-08 03:21:00',31,13,'Taylor LLC',22,NULL),(89,71,'warm up','2020-07-08 07:23:00','2020-07-08 09:22:00',119,22,'Stewart PLC',NULL,2),(90,72,'special_guest','2020-07-09 08:21:00','2020-07-09 08:55:00',34,22,'Stewart PLC',NULL,3),(91,73,'finale','2020-07-09 11:59:00','2020-07-09 13:18:00',79,15,'Strickland-Sullivan',NULL,9),(92,73,'warm up','2020-07-09 13:24:00','2020-07-09 14:20:00',56,15,'Strickland-Sullivan',NULL,4),(93,74,'headline','2020-07-09 16:36:00','2020-07-09 17:09:00',33,29,'Mullins Group',NULL,7),(94,76,'headline','2020-07-09 01:40:00','2020-07-09 03:18:00',98,25,'Miller Inc',NULL,4),(95,77,'headline','2020-07-10 08:52:00','2020-07-10 09:35:00',43,9,'Wilson LLC',NULL,12),(96,78,'headline','2020-07-10 13:09:00','2020-07-10 15:03:00',114,10,'Burnett-Schwartz',14,NULL),(97,78,'special_guest','2020-07-10 15:16:00','2020-07-10 15:49:00',33,10,'Burnett-Schwartz',NULL,8),(98,79,'warm up','2020-07-10 18:00:00','2020-07-10 18:56:00',56,24,'Calderon-Frank',NULL,2),(99,79,'headline','2020-07-10 19:10:00','2020-07-10 20:29:00',79,24,'Calderon-Frank',NULL,7),(100,81,'headline','2020-07-10 03:24:00','2020-07-10 05:18:00',114,29,'Mullins Group',NULL,10),(101,82,'finale','2020-07-10 07:40:00','2020-07-10 09:03:00',83,18,'Morris-Douglas',44,NULL),(102,82,'headline','2020-07-10 09:11:00','2020-07-10 10:55:00',104,18,'Morris-Douglas',NULL,1),(103,83,'special_guest','2021-07-13 09:10:00','2021-07-13 10:46:00',96,6,'Black-Hull',32,NULL),(104,84,'special_guest','2021-07-13 13:12:00','2021-07-13 14:24:00',72,20,'Craig-Fernandez',NULL,8),(105,85,'warm up','2021-07-13 18:01:00','2021-07-13 19:21:00',80,28,'Hill-Huerta',NULL,13),(106,85,'warm up','2021-07-13 19:30:00','2021-07-13 21:01:00',91,28,'Hill-Huerta',NULL,10),(107,87,'finale','2021-07-13 03:23:00','2021-07-13 04:36:00',73,1,'Burnett, Roy and Thomas',NULL,2),(108,88,'warm up','2021-07-14 09:06:00','2021-07-14 10:28:00',82,25,'Miller Inc',NULL,10),(109,89,'finale','2021-07-14 13:44:00','2021-07-14 14:25:00',41,8,'Woods, Austin and Fernandez',48,NULL),(110,90,'special_guest','2021-07-14 18:52:00','2021-07-14 19:39:00',47,3,'Davidson Group',NULL,11),(111,90,'warm up','2021-07-14 19:46:00','2021-07-14 21:00:00',74,3,'Davidson Group',14,NULL),(112,92,'headline','2021-07-14 17:27:00','2021-07-14 18:47:00',80,8,'Woods, Austin and Fernandez',NULL,7),(113,92,'finale','2021-07-14 19:01:00','2021-07-14 20:59:00',118,8,'Woods, Austin and Fernandez',NULL,2),(114,93,'special_guest','2021-07-14 06:51:00','2021-07-14 08:11:00',80,10,'Burnett-Schwartz',10,NULL),(115,93,'special_guest','2021-07-14 08:24:00','2021-07-14 10:05:00',101,10,'Burnett-Schwartz',NULL,1),(116,94,'special_guest','2021-07-14 22:16:00','2021-07-15 00:15:00',119,3,'Davidson Group',28,NULL),(117,94,'headline','2021-07-15 00:22:00','2021-07-15 01:35:00',73,3,'Davidson Group',42,NULL),(118,95,'warm up','2021-07-14 14:51:00','2021-07-14 15:45:00',54,19,'Nguyen Inc',22,NULL),(119,96,'headline','2021-07-15 08:24:00','2021-07-15 09:19:00',55,29,'Mullins Group',NULL,6),(120,96,'headline','2021-07-15 09:29:00','2021-07-15 11:25:00',116,29,'Mullins Group',NULL,4),(121,97,'finale','2021-07-15 13:02:00','2021-07-15 13:51:00',49,5,'Patterson-Hayden',NULL,4),(122,97,'special_guest','2021-07-15 14:04:00','2021-07-15 15:12:00',68,5,'Patterson-Hayden',NULL,1),(123,98,'special_guest','2021-07-15 17:26:00','2021-07-15 18:50:00',84,10,'Burnett-Schwartz',NULL,10),(124,98,'warm up','2021-07-15 18:58:00','2021-07-15 19:48:00',50,10,'Burnett-Schwartz',NULL,6),(125,98,'warm up','2021-07-15 19:53:00','2021-07-15 20:34:00',41,10,'Burnett-Schwartz',14,NULL),(126,100,'special_guest','2021-07-15 16:28:00','2021-07-15 17:54:00',86,5,'Patterson-Hayden',NULL,15),(127,100,'headline','2021-07-15 18:08:00','2021-07-15 19:42:00',94,5,'Patterson-Hayden',14,NULL),(128,101,'headline','2021-07-15 08:18:00','2021-07-15 09:41:00',83,4,'Brennan Inc',NULL,15),(129,102,'finale','2021-07-15 13:16:00','2021-07-15 14:29:00',73,18,'Morris-Douglas',NULL,10),(130,102,'special_guest','2021-07-15 14:40:00','2021-07-15 16:10:00',90,18,'Morris-Douglas',NULL,11),(131,103,'finale','2021-07-15 16:55:00','2021-07-15 18:19:00',84,13,'Taylor LLC',NULL,7),(132,103,'finale','2021-07-15 18:26:00','2021-07-15 20:06:00',100,13,'Taylor LLC',NULL,7),(133,104,'headline','2021-07-16 08:53:00','2021-07-16 10:44:00',111,28,'Hill-Huerta',NULL,3),(134,105,'warm up','2021-07-16 13:06:00','2021-07-16 14:03:00',57,4,'Brennan Inc',45,NULL),(135,106,'warm up','2021-07-16 16:59:00','2021-07-16 17:37:00',38,23,'Jimenez, Hernandez and Obrien',14,NULL),(136,106,'special_guest','2021-07-16 17:50:00','2021-07-16 18:25:00',35,23,'Jimenez, Hernandez and Obrien',NULL,10),(137,107,'warm up','2021-07-17 09:26:00','2021-07-17 10:40:00',74,1,'Burnett, Roy and Thomas',47,NULL),(138,107,'headline','2021-07-17 10:46:00','2021-07-17 12:10:00',84,1,'Burnett, Roy and Thomas',NULL,4),(139,108,'finale','2021-07-17 13:23:00','2021-07-17 15:04:00',101,27,'Payne-Lambert',NULL,10),(140,108,'special_guest','2021-07-17 15:14:00','2021-07-17 16:03:00',49,27,'Payne-Lambert',49,NULL),(141,109,'warm up','2021-07-17 16:48:00','2021-07-17 17:44:00',56,15,'Strickland-Sullivan',20,NULL),(142,110,'warm up','2021-07-17 20:34:00','2021-07-17 22:32:00',118,2,'Bowen, Owens and Hernandez',NULL,6),(143,111,'warm up','2022-07-07 08:31:00','2022-07-07 09:55:00',84,13,'Taylor LLC',NULL,8),(144,111,'headline','2022-07-07 10:09:00','2022-07-07 10:47:00',38,13,'Taylor LLC',24,NULL),(145,112,'finale','2022-07-07 12:30:00','2022-07-07 14:04:00',94,6,'Black-Hull',NULL,13),(146,113,'warm up','2022-07-07 16:50:00','2022-07-07 17:28:00',38,15,'Strickland-Sullivan',NULL,6),(147,113,'finale','2022-07-07 17:39:00','2022-07-07 18:10:00',31,15,'Strickland-Sullivan',34,NULL),(148,113,'warm up','2022-07-07 18:16:00','2022-07-07 19:48:00',92,15,'Strickland-Sullivan',NULL,6),(149,115,'special_guest','2022-07-07 02:08:00','2022-07-07 02:59:00',51,26,'Harris-Carter',NULL,11),(150,116,'headline','2022-07-07 06:05:00','2022-07-07 07:53:00',108,11,'Ayers-Warner',11,NULL),(151,116,'warm up','2022-07-07 08:07:00','2022-07-07 08:46:00',39,11,'Ayers-Warner',NULL,6),(152,117,'headline','2022-07-08 09:12:00','2022-07-08 10:41:00',89,9,'Wilson LLC',36,NULL),(153,117,'special_guest','2022-07-08 10:46:00','2022-07-08 12:10:00',84,9,'Wilson LLC',18,NULL),(154,118,'finale','2022-07-08 13:44:00','2022-07-08 15:34:00',110,19,'Nguyen Inc',NULL,11),(155,118,'warm up','2022-07-08 15:48:00','2022-07-08 16:25:00',37,19,'Nguyen Inc',NULL,12),(156,119,'special_guest','2022-07-08 17:44:00','2022-07-08 18:42:00',58,19,'Nguyen Inc',34,NULL),(157,119,'headline','2022-07-08 18:50:00','2022-07-08 20:10:00',80,19,'Nguyen Inc',NULL,10),(158,121,'headline','2022-07-08 02:54:00','2022-07-08 04:43:00',109,11,'Ayers-Warner',4,NULL),(159,122,'finale','2022-07-08 07:20:00','2022-07-08 08:17:00',57,4,'Brennan Inc',NULL,13),(160,122,'headline','2022-07-08 08:29:00','2022-07-08 09:35:00',66,4,'Brennan Inc',NULL,5),(161,123,'warm up','2022-07-08 11:00:00','2022-07-08 12:28:00',88,18,'Morris-Douglas',26,NULL),(162,124,'finale','2022-07-08 15:20:00','2022-07-08 16:33:00',73,15,'Strickland-Sullivan',NULL,15),(163,124,'warm up','2022-07-08 16:41:00','2022-07-08 17:17:00',36,15,'Strickland-Sullivan',NULL,14),(164,125,'special_guest','2022-07-09 09:31:00','2022-07-09 10:50:00',79,18,'Morris-Douglas',NULL,14),(165,125,'special_guest','2022-07-09 10:59:00','2022-07-09 12:42:00',103,18,'Morris-Douglas',49,NULL),(166,126,'warm up','2022-07-09 13:49:00','2022-07-09 15:07:00',78,1,'Burnett, Roy and Thomas',NULL,8),(167,126,'warm up','2022-07-09 15:12:00','2022-07-09 16:55:00',103,1,'Burnett, Roy and Thomas',39,NULL),(168,127,'special_guest','2022-07-09 17:38:00','2022-07-09 18:24:00',46,6,'Black-Hull',NULL,15),(169,127,'headline','2022-07-09 18:39:00','2022-07-09 20:14:00',95,6,'Black-Hull',NULL,14),(170,127,'special_guest','2022-07-09 20:19:00','2022-07-09 20:59:00',40,6,'Black-Hull',NULL,3),(171,129,'warm up','2022-07-09 03:25:00','2022-07-09 04:51:00',86,22,'Stewart PLC',NULL,5),(172,129,'finale','2022-07-09 05:04:00','2022-07-09 05:40:00',36,22,'Stewart PLC',30,NULL),(173,130,'headline','2022-07-10 09:34:00','2022-07-10 11:24:00',110,6,'Black-Hull',NULL,9),(174,131,'special_guest','2022-07-10 14:18:00','2022-07-10 15:27:00',69,8,'Woods, Austin and Fernandez',9,NULL),(175,132,'headline','2022-07-11 09:29:00','2022-07-11 10:02:00',33,16,'Mendez-Carlson',NULL,12),(176,133,'finale','2022-07-11 13:56:00','2022-07-11 14:27:00',31,2,'Bowen, Owens and Hernandez',33,NULL),(177,134,'special_guest','2022-07-11 17:50:00','2022-07-11 18:58:00',68,28,'Hill-Huerta',NULL,3),(178,136,'warm up','2023-09-02 09:14:00','2023-09-02 10:36:00',82,1,'Burnett, Roy and Thomas',NULL,12),(179,136,'finale','2023-09-02 10:49:00','2023-09-02 11:46:00',57,1,'Burnett, Roy and Thomas',48,NULL),(180,137,'special_guest','2023-09-02 13:53:00','2023-09-02 15:15:00',82,8,'Woods, Austin and Fernandez',29,NULL),(181,137,'warm up','2023-09-02 15:22:00','2023-09-02 17:12:00',110,8,'Woods, Austin and Fernandez',NULL,6),(182,138,'warm up','2023-09-02 18:54:00','2023-09-02 19:48:00',54,30,'Ochoa LLC',NULL,11),(183,138,'finale','2023-09-02 20:03:00','2023-09-02 21:31:00',88,30,'Ochoa LLC',NULL,14),(184,140,'special_guest','2023-09-02 02:50:00','2023-09-02 03:36:00',46,11,'Ayers-Warner',NULL,7),(185,141,'special_guest','2023-09-02 06:39:00','2023-09-02 08:26:00',107,27,'Payne-Lambert',NULL,9),(186,142,'special_guest','2023-09-02 11:16:00','2023-09-02 11:47:00',31,19,'Nguyen Inc',NULL,9),(187,143,'headline','2023-09-02 16:01:00','2023-09-02 17:47:00',106,23,'Jimenez, Hernandez and Obrien',2,NULL),(188,144,'special_guest','2023-09-02 20:06:00','2023-09-02 21:45:00',99,7,'Wang, Howell and Hunter',NULL,13),(189,144,'warm up','2023-09-02 21:51:00','2023-09-02 22:48:00',57,7,'Wang, Howell and Hunter',NULL,12),(190,145,'finale','2023-09-03 09:02:00','2023-09-03 10:33:00',91,19,'Nguyen Inc',35,NULL),(191,146,'special_guest','2023-09-03 12:42:00','2023-09-03 13:18:00',36,9,'Wilson LLC',NULL,15),(192,147,'finale','2023-09-03 16:57:00','2023-09-03 18:07:00',70,13,'Taylor LLC',NULL,7),(193,147,'special_guest','2023-09-03 18:22:00','2023-09-03 19:29:00',67,13,'Taylor LLC',NULL,9),(194,148,'warm up','2024-07-02 09:10:00','2024-07-02 10:20:00',70,6,'Black-Hull',10,NULL),(195,148,'finale','2024-07-02 10:29:00','2024-07-02 11:21:00',52,6,'Black-Hull',NULL,3),(196,149,'headline','2024-07-02 13:29:00','2024-07-02 14:05:00',36,25,'Miller Inc',NULL,7),(197,150,'headline','2024-07-02 17:02:00','2024-07-02 17:40:00',38,11,'Ayers-Warner',NULL,14),(198,150,'finale','2024-07-02 17:52:00','2024-07-02 19:19:00',87,11,'Ayers-Warner',NULL,12),(199,152,'warm up','2024-07-03 09:14:00','2024-07-03 11:01:00',107,30,'Ochoa LLC',NULL,10),(200,153,'headline','2024-07-04 08:35:00','2024-07-04 10:34:00',119,4,'Brennan Inc',NULL,5),(201,153,'warm up','2024-07-04 10:44:00','2024-07-04 11:34:00',50,4,'Brennan Inc',NULL,9),(202,154,'special_guest','2024-07-04 13:23:00','2024-07-04 14:40:00',77,19,'Nguyen Inc',NULL,14),(203,154,'warm up','2024-07-04 14:53:00','2024-07-04 15:35:00',42,19,'Nguyen Inc',NULL,4),(204,155,'special_guest','2025-09-19 09:10:00','2025-09-19 10:30:00',80,13,'Taylor LLC',NULL,15),(205,155,'finale','2025-09-19 10:41:00','2025-09-19 11:12:00',31,13,'Taylor LLC',NULL,3),(206,156,'special_guest','2025-09-19 13:39:00','2025-09-19 15:28:00',109,20,'Craig-Fernandez',NULL,15),(207,157,'warm up','2025-09-19 17:39:00','2025-09-19 19:39:00',120,15,'Strickland-Sullivan',NULL,2),(208,159,'warm up','2025-09-19 02:40:00','2025-09-19 03:32:00',52,18,'Morris-Douglas',NULL,3),(209,160,'warm up','2025-09-19 07:26:00','2025-09-19 09:21:00',115,19,'Nguyen Inc',NULL,5),(210,161,'headline','2025-09-20 08:30:00','2025-09-20 09:15:00',45,27,'Payne-Lambert',NULL,4),(211,161,'headline','2025-09-20 09:28:00','2025-09-20 10:50:00',82,27,'Payne-Lambert',7,NULL),(212,162,'finale','2025-09-20 13:14:00','2025-09-20 14:19:00',65,18,'Morris-Douglas',NULL,15),(213,162,'special_guest','2025-09-20 14:32:00','2025-09-20 15:15:00',43,18,'Morris-Douglas',NULL,10),(214,163,'special_guest','2025-09-20 18:00:00','2025-09-20 18:42:00',42,30,'Ochoa LLC',NULL,13),(215,165,'finale','2025-09-20 02:55:00','2025-09-20 04:28:00',93,15,'Strickland-Sullivan',NULL,6),(216,166,'finale','2025-09-20 07:36:00','2025-09-20 08:12:00',36,10,'Burnett-Schwartz',29,NULL),(217,167,'headline','2025-09-20 12:24:00','2025-09-20 13:11:00',47,9,'Wilson LLC',5,NULL),(218,167,'warm up','2025-09-20 13:20:00','2025-09-20 14:52:00',92,9,'Wilson LLC',NULL,3),(219,168,'finale','2025-09-21 08:54:00','2025-09-21 09:48:00',54,1,'Burnett, Roy and Thomas',NULL,3),(220,168,'special_guest','2025-09-21 10:03:00','2025-09-21 11:54:00',111,1,'Burnett, Roy and Thomas',NULL,10),(221,169,'finale','2025-09-21 13:07:00','2025-09-21 13:48:00',41,12,'Adams Group',NULL,2),(222,169,'finale','2025-09-21 13:58:00','2025-09-21 15:10:00',72,12,'Adams Group',1,NULL),(223,170,'headline','2025-09-21 17:41:00','2025-09-21 18:54:00',73,23,'Jimenez, Hernandez and Obrien',NULL,15),(224,170,'finale','2025-09-21 19:04:00','2025-09-21 20:10:00',66,23,'Jimenez, Hernandez and Obrien',NULL,8),(225,172,'warm up','2025-09-21 03:17:00','2025-09-21 03:50:00',33,25,'Miller Inc',NULL,11),(226,172,'special_guest','2025-09-21 04:05:00','2025-09-21 05:43:00',98,25,'Miller Inc',26,NULL),(227,173,'special_guest','2025-09-21 08:03:00','2025-09-21 08:47:00',44,26,'Harris-Carter',4,NULL),(228,174,'special_guest','2025-09-21 11:57:00','2025-09-21 13:30:00',93,7,'Wang, Howell and Hunter',NULL,8),(229,175,'special_guest','2025-09-21 16:40:00','2025-09-21 18:05:00',85,20,'Craig-Fernandez',NULL,13),(230,175,'warm up','2025-09-21 18:17:00','2025-09-21 19:59:00',102,20,'Craig-Fernandez',44,NULL),(231,177,'headline','2026-09-26 08:53:00','2026-09-26 10:29:00',96,10,'Burnett-Schwartz',NULL,9),(232,178,'finale','2026-09-26 13:37:00','2026-09-26 15:12:00',95,17,'Johnson Ltd',NULL,11),(233,178,'special_guest','2026-09-26 15:26:00','2026-09-26 17:01:00',95,17,'Johnson Ltd',NULL,10),(234,179,'warm up','2026-09-27 08:34:00','2026-09-27 09:36:00',62,23,'Jimenez, Hernandez and Obrien',NULL,1),(235,179,'warm up','2026-09-27 09:51:00','2026-09-27 10:47:00',56,23,'Jimenez, Hernandez and Obrien',NULL,11),(236,180,'warm up','2026-09-27 12:25:00','2026-09-27 13:53:00',88,14,'Church LLC',NULL,10),(237,180,'finale','2026-09-27 14:01:00','2026-09-27 14:42:00',41,14,'Church LLC',NULL,3),(238,181,'special_guest','2026-09-27 16:59:00','2026-09-27 18:11:00',72,11,'Ayers-Warner',NULL,13),(239,181,'finale','2026-09-27 18:21:00','2026-09-27 20:14:00',113,11,'Ayers-Warner',NULL,6),(240,183,'finale','2026-09-27 01:25:00','2026-09-27 02:39:00',74,17,'Johnson Ltd',NULL,6),(241,183,'headline','2026-09-27 02:44:00','2026-09-27 03:45:00',61,17,'Johnson Ltd',NULL,11),(242,184,'warm up','2026-09-27 06:08:00','2026-09-27 06:57:00',49,17,'Johnson Ltd',NULL,8),(243,184,'warm up','2026-09-27 07:05:00','2026-09-27 08:55:00',110,17,'Johnson Ltd',NULL,13),(244,185,'warm up','2026-09-28 08:59:00','2026-09-28 10:35:00',96,6,'Black-Hull',38,NULL),(245,185,'special_guest','2026-09-28 10:45:00','2026-09-28 12:17:00',92,6,'Black-Hull',11,NULL),(246,186,'warm up','2026-09-28 13:47:00','2026-09-28 14:47:00',60,3,'Davidson Group',NULL,5),(247,186,'finale','2026-09-28 14:52:00','2026-09-28 16:20:00',88,3,'Davidson Group',NULL,8),(248,187,'headline','2026-09-28 18:20:00','2026-09-28 18:54:00',34,10,'Burnett-Schwartz',9,NULL),(249,187,'warm up','2026-09-28 19:09:00','2026-09-28 20:29:00',80,10,'Burnett-Schwartz',NULL,4),(250,188,'finale','2026-09-29 08:59:00','2026-09-29 10:15:00',76,6,'Black-Hull',33,NULL);
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

        AND (
            (NEW.performance_start_time BETWEEN performance_start_time - INTERVAL 301 SECOND AND performance_end_time + INTERVAL 299 SECOND  )
            OR
            (NEW.performance_end_time BETWEEN performance_start_time -  INTERVAL 301 SECOND AND performance_end_time + INTERVAL 299 SECOND )
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
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
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

        
        SELECT YEAR(f.starting_date) INTO fest_year
        FROM events e
        JOIN festival f ON e.festival_ID = f.festival_ID
        WHERE e.event_ID = NEW.event_ID;

        
        SELECT COUNT(*) INTO found_current_festival
        FROM performances p
        JOIN events e ON p.event_ID = e.event_ID
        WHERE p.group_ID = NEW.group_ID
          AND YEAR((SELECT starting_date FROM festival WHERE festival_ID = e.festival_ID)) = fest_year;

        IF found_current_festival = 0 THEN

            
            SELECT COUNT(*) INTO prev_year_exists
            FROM performances p
            JOIN events e ON p.event_ID = e.event_ID
            WHERE p.group_ID = NEW.group_ID
              AND YEAR((SELECT starting_date FROM festival WHERE festival_ID = e.festival_ID)) = fest_year - 1;

            IF prev_year_exists > 0 THEN
                SELECT num_of_consecutive_years_participating INTO curr_num
                FROM `group`
                WHERE group_ID = NEW.group_ID;

                IF curr_num >= 3 THEN
                    SIGNAL SQLSTATE '45001'
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
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
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
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
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
  PRIMARY KEY (`personel_ID`),
  KEY `idx_personel_expertise` (`expertise_status`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personel`
--

LOCK TABLES `personel` WRITE;
/*!40000 ALTER TABLE `personel` DISABLE KEYS */;
INSERT INTO `personel` VALUES (1,'Rebecca','Graves',52,'kathy99@example.com','+1-381-249-5026x0247','intern'),(2,'Roger','Tucker',21,'stephenmartin@example.net','894-819-4372x95105','very_experienced'),(3,'Julie','Wells',37,'mcruz@example.net','294.598.5808','intern'),(4,'Emily','Carter',36,'michael11@example.org','745-930-9770x80340','intern'),(5,'Kimberly','Anderson',24,'spencertammy@example.net','(548)244-1655x9465','intern'),(6,'Matthew','Morrow',35,'brooke23@example.org','001-208-739-6558x513','intermidiate'),(7,'Heather','Williams',35,'kathleen26@example.com','(876)357-7166x7008','beginer'),(8,'Ronald','Roberts',25,'alyssasanchez@example.com','(821)395-6826','intern'),(9,'Richard','Powell',45,'wkelley@example.net','(287)971-1157','beginer'),(10,'Hunter','Gonzales',24,'mcculloughmichael@example.net','001-404-995-9318','intern'),(11,'Jessica','Mills',20,'bperez@example.org','725-262-1341','intern'),(12,'Laura','Flores',39,'boydmelissa@example.org','001-336-546-5846','beginer'),(13,'Madison','Maldonado',60,'sotolisa@example.com','504.673.9579x8177','intermidiate'),(14,'Charles','Holt',47,'sean69@example.com','939-565-3054','experienced'),(15,'Phillip','Nguyen',29,'jschmidt@example.com','(942)507-4894','experienced'),(16,'Devin','Clark',56,'ggonzalez@example.org','528.416.0468x2458','beginer'),(17,'Alicia','Fields',44,'john61@example.org','+1-473-448-9655x736','beginer'),(18,'Rachel','Martinez',32,'maciasalice@example.com','888-900-1690','experienced'),(19,'Thomas','Martin',37,'bensonsamuel@example.com','+1-558-835-9922','beginer'),(20,'Andrew','Schneider',51,'katiehartman@example.net','(865)231-9942x4975','beginer'),(21,'Valerie','Carter',60,'tkelley@example.org','001-610-859-5581','beginer'),(22,'John','Moore',47,'hpalmer@example.com','345.793.1227x5966','intern'),(23,'Sandra','Jimenez',31,'mdyer@example.com','225.536.5035x4683','intermidiate'),(24,'Daniel','Schneider',42,'hornrichard@example.net','+1-592-277-1009x615','experienced'),(25,'David','Hines',60,'rachaelmccann@example.com','+1-371-341-0824x6090','very_experienced'),(26,'Margaret','Rodriguez',45,'joseph49@example.org','001-492-775-4142','intermidiate'),(27,'Jasmine','Mahoney',28,'gbauer@example.net','866.715.5703','very_experienced'),(28,'Vanessa','Hernandez',57,'brittanymoody@example.net','(320)557-6541','intermidiate'),(29,'Darrell','Martin',55,'raymiguel@example.net','272-886-4534x21410','experienced'),(30,'Erin','Carroll',46,'njohnson@example.net','318-860-0886x53751','experienced'),(31,'Derrick','Montoya',44,'goodjeffrey@example.com','(261)766-8331','intermidiate'),(32,'Alexis','Patel',24,'amymeyer@example.net','+1-744-375-9381x1874','experienced'),(33,'Michelle','Smith',53,'roy74@example.com','+1-601-693-0751x8529','intermidiate'),(34,'Melissa','Johnson',25,'kimberlyhouse@example.com','+1-533-938-2685x598','intern'),(35,'Kevin','Valdez',53,'wbean@example.com','+1-974-380-5140x0404','intern'),(36,'Brittany','Wilson',26,'justinsparks@example.com','648-305-2240x145','intermidiate'),(37,'Angela','Parsons',47,'ibrown@example.net','497-755-7486x3304','experienced'),(38,'Nicole','Mitchell',33,'brian73@example.org','323.401.7739x223','experienced'),(39,'Steven','Davis',42,'ymayer@example.net','249-564-9549x016','experienced'),(40,'John','Salazar',49,'sheiladavenport@example.com','713.964.6417x381','experienced'),(41,'Julie','Day',56,'lisablevins@example.net','(815)579-9494','experienced'),(42,'Katherine','Wilson',54,'wpayne@example.org','327-731-5131x46116','intern'),(43,'Sarah','Higgins',22,'tannerclark@example.net','488-443-8277','intern'),(44,'Kevin','Davis',33,'bduran@example.com','+1-791-427-4439x9236','intermidiate'),(45,'Jeanette','Watkins',41,'josesampson@example.org','624-671-3369x485','very_experienced'),(46,'David','Diaz',34,'margaret35@example.org','(821)912-4214x6578','beginer'),(47,'Randy','Davis',30,'uhill@example.net','+1-911-778-4964x7982','very_experienced'),(48,'Theresa','Green',42,'sheryl02@example.org','551.455.4152x31230','very_experienced'),(49,'Stephanie','Wilkerson',30,'williamsheidi@example.org','001-428-913-5965x362','intern'),(50,'Kevin','Cruz',59,'larry40@example.net','8782019581','very_experienced'),(51,'Laura','Thomas',25,'christopher06@example.com','(806)646-9082x76406','beginer'),(52,'Derrick','Myers',20,'robert07@example.com','001-202-349-6027x531','very_experienced'),(53,'Jessica','Carson',22,'ryancosta@example.net','469.628.2549x4086','very_experienced'),(54,'Jasmine','Nichols',37,'tammy77@example.org','896.424.4706x65010','beginer'),(55,'Lucas','Neal',20,'yward@example.com','253.579.6779x9626','intermidiate'),(56,'Lauren','White',38,'janet78@example.net','001-313-696-8555x916','beginer'),(57,'Carrie','Moses',30,'johnskinner@example.net','001-356-323-2985x796','intern'),(58,'Frank','Hoffman',53,'mendozapatricia@example.org','001-257-855-7875x955','beginer'),(59,'Chelsea','Acosta',38,'kellychristine@example.com','(872)781-6507x376','beginer'),(60,'Sandra','Gordon',58,'hallian@example.net','(726)678-9792','intern'),(61,'Lauren','Price',34,'williamspaul@example.com','862-202-8246x12603','intermidiate'),(62,'Fernando','Knight',28,'rmcguire@example.org','704-939-1741x39698','very_experienced'),(63,'James','Daniels',50,'wangmatthew@example.org','9237408861','experienced'),(64,'James','Salinas',58,'douglas78@example.com','285-557-7351','intermidiate'),(65,'Michael','Tran',20,'tbrock@example.org','552-384-3016','beginer'),(66,'Paul','Morales',56,'lydiaarnold@example.net','846-912-7856x14366','intern'),(67,'Andrew','Peterson',60,'eyates@example.org','449.357.8633x44739','very_experienced'),(68,'Dana','Brewer',60,'nowen@example.com','7718783511','experienced'),(69,'Andrea','Harper',26,'jamesnewman@example.org','001-900-595-3146x728','experienced'),(70,'Melissa','Faulkner',51,'barbara70@example.net','646-424-0901x2951','intermidiate'),(71,'Latoya','Parker',53,'hilldaniel@example.net','001-661-749-3891x038','beginer'),(72,'Brenda','Dickerson',40,'ericbailey@example.net','624-508-1723x96349','intermidiate'),(73,'Tracey','Carrillo',48,'tallen@example.org','(221)573-7071','experienced'),(74,'Shelly','Jackson',28,'jerrygarcia@example.org','(398)967-4308x387','intermidiate'),(75,'Christopher','Morris',60,'alexanderalvarez@example.com','506.922.2283x4146','beginer'),(76,'Ethan','Griffith',32,'mosselizabeth@example.com','830-982-5514x965','intern'),(77,'Michele','Carroll',45,'tracey29@example.org','256-357-3710','intermidiate'),(78,'Christina','Porter',22,'warren04@example.com','001-676-366-6677x510','experienced'),(79,'Deanna','Jackson',57,'steelekelli@example.com','864.596.3600x79789','intern'),(80,'David','Spencer',20,'charles65@example.com','987-766-2031','experienced'),(81,'Mary','Stephens',44,'qjordan@example.net','001-228-294-2618x700','intermidiate'),(82,'Steven','Wade',54,'isabellamunoz@example.com','(344)679-8983','experienced'),(83,'Brent','Johnson',51,'griffintara@example.com','001-273-557-2750x092','experienced'),(84,'Edward','Wolf',23,'pmiller@example.com','+1-586-722-9537x210','experienced'),(85,'Kimberly','Wang',50,'sbautista@example.org','(583)314-5781x3389','experienced'),(86,'Taylor','Hutchinson',47,'josephwhite@example.net','(913)931-5808x0548','very_experienced'),(87,'Jennifer','Woods',36,'cassidydavis@example.org','488.535.5274x84582','beginer'),(88,'Robert','Andrade',45,'barronvanessa@example.com','943-989-9147x240','very_experienced'),(89,'Chad','Turner',55,'adrian79@example.net','7337971262','intern'),(90,'Angela','Todd',31,'ggarza@example.com','(707)949-2895x3140','experienced'),(91,'Laura','Sandoval',31,'benjamin35@example.com','(700)785-0979','intermidiate'),(92,'Sharon','Valencia',26,'wyattsharon@example.net','315-650-4367x09759','intermidiate'),(93,'Connie','Jones',33,'diane11@example.org','001-315-517-3049x900','experienced'),(94,'Steven','Griffin',36,'william46@example.net','374.325.7614','beginer'),(95,'Amy','Bailey',30,'lwells@example.org','(530)407-8494x89701','intern'),(96,'Anne','Hamilton',49,'imendoza@example.com','886-834-8430','intern'),(97,'Christina','Moore',47,'sday@example.com','430.409.9869x5064','intermidiate'),(98,'George','Haney',57,'carterjennifer@example.com','593-298-2130','intern'),(99,'Joseph','Jordan',31,'tparks@example.net','8274032267','intern'),(100,'Ronald','Hernandez',43,'kcantu@example.org','996-753-6182x5026','beginer'),(101,'Heidi','Glover',41,'kfisher@example.net','816.369.4420x4132','intermidiate'),(102,'Darrell','Williams',40,'kenneth31@example.org','+1-297-898-5998x5525','experienced'),(103,'Sandra','Green',39,'mallorycollins@example.net','909.496.5032','beginer'),(104,'Donald','Chang',44,'fosterjulie@example.org','827-712-7630','beginer'),(105,'Justin','Ramirez',28,'wilsonjennifer@example.org','(912)378-6959','intermidiate'),(106,'Veronica','Daniels',22,'david19@example.org','330.386.8543','intern'),(107,'Christina','Hoffman',46,'millerdonald@example.net','923-385-8987x433','intern'),(108,'Bruce','Hoffman',31,'xsmith@example.org','001-642-654-4861x440','experienced'),(109,'Jacob','Kelly',29,'stevenholmes@example.org','509-599-5065x5092','beginer'),(110,'Greg','Porter',24,'gwalker@example.com','268.511.7099','very_experienced'),(111,'Christopher','Wong',33,'danielcurry@example.org','001-686-560-3555x431','beginer'),(112,'Troy','Castro',40,'elizabeth75@example.org','+1-564-245-8619x6494','intermidiate'),(113,'Kimberly','Valentine',38,'dmartinez@example.org','+1-374-792-7947x2860','very_experienced'),(114,'David','Michael',55,'jennifermills@example.net','(833)967-6380x8635','intermidiate'),(115,'Phillip','Hamilton',33,'michael07@example.com','+1-695-635-2525x204','very_experienced'),(116,'Jason','Hernandez',46,'vmartin@example.com','3965490389','beginer'),(117,'Teresa','Lewis',56,'jamesoconnor@example.net','334-622-6994x35018','beginer'),(118,'Diane','Ford',46,'odonnelljustin@example.com','(625)903-0712','experienced'),(119,'Christopher','Conner',43,'nancy86@example.com','977.865.7901x6608','intern'),(120,'Richard','Rivas',38,'christina46@example.org','654.503.0974x5649','very_experienced'),(121,'John','Watson',24,'rachelwalters@example.org','8606822625','very_experienced'),(122,'Debra','Durham',36,'yparker@example.net','001-975-450-8104x635','experienced'),(123,'Sean','Walker',37,'josephjones@example.org','576.617.8008x16309','experienced'),(124,'Lindsey','Smith',36,'alexis84@example.org','+1-493-544-8564','experienced'),(125,'Charles','Marsh',24,'riveratimothy@example.net','001-879-976-8966x016','intern'),(126,'Brenda','Wilkinson',37,'drakeandrew@example.com','207-747-9498x9700','experienced'),(127,'Michelle','Meyers',23,'william39@example.com','+1-412-693-4103x5325','very_experienced'),(128,'Grace','Wilson',27,'john92@example.com','586-818-1645x34937','experienced'),(129,'Kevin','Baker',42,'jenniferryan@example.net','289-512-9999x485','very_experienced'),(130,'Megan','Webster',55,'brucedouglas@example.com','791-254-7132x152','intermidiate'),(131,'Patrick','Thomas',40,'ngardner@example.net','+1-303-810-1076x475','experienced'),(132,'Julie','Beard',28,'tinaduffy@example.net','517.661.5411','experienced'),(133,'Paul','Turner',46,'jaimeolson@example.org','265-503-1342x577','experienced'),(134,'Deanna','Williams',49,'adavila@example.org','4289115527','very_experienced'),(135,'Joel','Weber',47,'yangmichael@example.net','957-485-7607x02912','intern'),(136,'Chelsea','Smith',51,'raysherry@example.com','(346)746-7265x975','beginer'),(137,'James','Johnson',34,'williamhurley@example.com','864-863-2434x521','experienced'),(138,'Lisa','Graham',21,'carlgeorge@example.com','+1-840-492-1490x628','experienced'),(139,'Jessica','Mullen',36,'haleysmith@example.org','8347003893','intermidiate'),(140,'Leslie','Ho',53,'mcknightcindy@example.net','527.667.1237x279','very_experienced'),(141,'Brittany','Black',50,'gibsonmario@example.com','001-669-511-7900','intermidiate'),(142,'Scott','Hernandez',49,'turnermike@example.com','(705)660-2662x6100','intermidiate'),(143,'Kathryn','Johnson',50,'jessicawise@example.org','7152416152','very_experienced'),(144,'Hunter','White',21,'burnsrussell@example.net','(453)993-8276x5716','very_experienced'),(145,'Amy','Harvey',37,'bunderwood@example.com','597.741.7877','beginer'),(146,'Brittany','Pearson',20,'charlesjohnson@example.org','001-574-494-2483x415','experienced'),(147,'Mallory','Zavala',35,'bobby16@example.com','001-886-694-7685x119','intermidiate'),(148,'Justin','Blackwell',50,'mark80@example.net','001-687-903-2585x777','beginer'),(149,'Nicole','Wilson',59,'khardin@example.org','5167484882','intermidiate'),(150,'Patricia','Gaines',44,'hensleyamber@example.net','001-792-366-2382x421','beginer'),(151,'Jorge','Warren',50,'willie82@example.com','(754)881-7614x345','intern'),(152,'Megan','Kelly',30,'shawkins@example.com','382-277-9338','very_experienced'),(153,'Scott','Perez',47,'fmorales@example.com','952.503.4465x4749','very_experienced'),(154,'Maurice','King',33,'karenwalters@example.org','(283)444-9917','experienced'),(155,'Justin','Valentine',31,'karen96@example.org','755-310-8861x176','intern'),(156,'Evan','Reid',60,'leah60@example.net','+1-614-993-2368','very_experienced'),(157,'Priscilla','Johnston',38,'robert81@example.org','376-949-6122x6899','experienced'),(158,'Stephen','Scott',59,'joel79@example.org','001-239-896-5260','experienced'),(159,'Julie','Montgomery',42,'klewis@example.org','444.448.9525x56667','intern'),(160,'Victor','Santos',20,'dwashington@example.com','247-305-1950','intermidiate'),(161,'Samantha','Williams',59,'renee79@example.net','+1-615-596-2665x8307','intermidiate'),(162,'Patrick','Schneider',50,'darrell95@example.org','+1-526-414-3596x4827','very_experienced'),(163,'Charles','Taylor',45,'kellythompson@example.net','001-939-844-5223','intermidiate'),(164,'Gina','Dominguez',23,'robert66@example.org','540.212.8251x868','intern'),(165,'Michelle','Nelson',23,'johnsonamanda@example.net','569.283.5259','experienced'),(166,'Laura','Kim',44,'cathy20@example.com','905-883-0123x3447','beginer'),(167,'Samantha','Snyder',23,'omargreen@example.com','905.467.6819x6631','beginer'),(168,'Jennifer','Alexander',35,'bellmichael@example.com','300-864-6440','experienced'),(169,'Jay','Bruce',20,'perezcolin@example.org','+1-282-431-5402x2530','very_experienced'),(170,'Micheal','Zimmerman',53,'sanchezjessica@example.org','893.618.0938x671','intern'),(171,'Debra','Morris',49,'iparker@example.org','(237)488-9943x0671','intern'),(172,'Amanda','James',29,'tonyvaughn@example.com','+1-594-213-2007','very_experienced'),(173,'Dan','Hayes',23,'jenniferwright@example.net','+1-807-795-2092x157','beginer'),(174,'Lawrence','Cole',52,'zedwards@example.net','506.505.7977x6579','very_experienced'),(175,'Michael','Mitchell',56,'janicejohnston@example.org','(750)594-7679','intern'),(176,'John','Shepard',38,'pollardtyler@example.org','001-640-467-9804x008','intermidiate'),(177,'Stephanie','Garrison',41,'alyssablanchard@example.org','484.416.3451x756','intermidiate'),(178,'Robert','Jackson',26,'foxjacob@example.com','239-284-7145','intermidiate'),(179,'Jonathan','Barnes',32,'erin67@example.com','861-391-9505','very_experienced'),(180,'Dennis','Wilson',29,'balljennifer@example.net','8117262578','intermidiate'),(181,'Heidi','Robinson',46,'ryantyler@example.org','(632)975-3410','very_experienced'),(182,'Katie','Harvey',59,'robert78@example.org','(707)680-5390x9994','very_experienced'),(183,'Laura','Thompson',43,'dawsonkatherine@example.net','(518)818-5746x0100','intern'),(184,'Amanda','Moran',36,'jeffersonsarah@example.org','(343)229-0750','intern'),(185,'Leslie','Hall',44,'mschmidt@example.org','(704)210-1249x55207','intern'),(186,'Jack','Walker',26,'david51@example.net','984-241-3304','experienced'),(187,'Jennifer','Williams',32,'tracy73@example.org','903.509.7877x696','very_experienced'),(188,'Matthew','Hicks',54,'kaitlin88@example.org','+1-383-967-9431x904','experienced'),(189,'Jacob','Wilson',23,'vincent41@example.com','530.478.6903x955','experienced'),(190,'Tyler','Cervantes',58,'nelsondanielle@example.net','8997691569','experienced'),(191,'Henry','Franco',42,'jessicacooper@example.net','668-745-0949','very_experienced'),(192,'Jamie','Parker',31,'qjames@example.net','820-565-5814x29323','intern'),(193,'Kimberly','White',48,'robertslauren@example.org','(986)761-9606x29543','intern'),(194,'Michelle','Riley',51,'fdouglas@example.net','503-565-9991x118','intern'),(195,'Brianna','Fisher',26,'michelle39@example.com','(971)849-5217x936','intern'),(196,'Leah','Turner',43,'william62@example.org','(394)480-8572','experienced'),(197,'Pamela','Baker',31,'jamesperez@example.com','(437)253-2407','experienced'),(198,'William','Hess',35,'mreese@example.org','(280)564-5913x204','very_experienced'),(199,'Sean','Riley',35,'shawn42@example.net','+1-431-997-6012x3807','intermidiate'),(200,'David','Gibson',52,'hallmary@example.net','463-772-6383x02946','intern');
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
INSERT INTO `photo` VALUES (1,'images\\IMG_1.jpg','Here plant ready experience such.',NULL,6,NULL,NULL,NULL,NULL),(2,'images\\IMG_2.jpg','Chair there old.',NULL,NULL,NULL,146,NULL,NULL),(3,'images\\IMG_3.jpg','Loss one present assume try.',NULL,5,NULL,NULL,NULL,NULL),(4,'images\\IMG_4.jpg','See Congress perhaps sense.',NULL,NULL,NULL,184,NULL,NULL),(5,'images\\IMG_5.jpg','Teacher part imagine Congress.',48,NULL,NULL,NULL,NULL,NULL),(6,'images\\IMG_6.jpg','Base ground blood skin paper network.',NULL,14,NULL,NULL,NULL,NULL),(7,'images\\IMG_7.jpg','Let manager bed hour last.',NULL,NULL,NULL,NULL,NULL,85),(8,'images\\IMG_8.jpg','Defense sport structure anything government.',NULL,NULL,82,NULL,NULL,NULL),(9,'images\\IMG_9.jpg','Among half after as even company paper modern.',NULL,NULL,NULL,NULL,NULL,21),(10,'images\\IMG_10.jpg','Theory rule pull.',NULL,NULL,121,NULL,NULL,NULL),(11,'images\\IMG_11.jpg','Light claim scientist onto.',1,NULL,NULL,NULL,NULL,NULL),(12,'images\\IMG_12.jpg','Market live happen view end left.',NULL,NULL,NULL,173,NULL,NULL),(13,'images\\IMG_13.jpg','His turn study activity indicate perhaps by.',NULL,9,NULL,NULL,NULL,NULL),(14,'images\\IMG_14.jpg','Three dream himself country heart day.',NULL,NULL,NULL,77,NULL,NULL),(15,'images\\IMG_15.jpg','Without worry case remember worry drop cell.',NULL,NULL,NULL,45,NULL,NULL),(16,'images\\IMG_16.jpg','No play professor quality.',NULL,10,NULL,NULL,NULL,NULL),(17,'images\\IMG_17.jpg','Market magazine floor develop close.',NULL,NULL,223,NULL,NULL,NULL),(18,'images\\IMG_18.jpg','Letter some continue senior.',NULL,NULL,NULL,NULL,NULL,303),(19,'images\\IMG_19.jpg','Low company teach hospital reality.',NULL,NULL,NULL,NULL,4,NULL),(20,'images\\IMG_20.jpg','Hope discuss order red finally environment.',24,NULL,NULL,NULL,NULL,NULL),(21,'images\\IMG_21.jpg','Race natural team explain executive agent.',NULL,2,NULL,NULL,NULL,NULL),(22,'images\\IMG_22.jpg','Every realize suddenly pay behind say.',NULL,15,NULL,NULL,NULL,NULL),(23,'images\\IMG_23.jpg','Baby science seem.',NULL,NULL,NULL,56,NULL,NULL),(24,'images\\IMG_24.jpg','Fall simple white out positive forward win fill.',16,NULL,NULL,NULL,NULL,NULL),(25,'images\\IMG_25.jpg','Recognize past guy control woman really dream.',NULL,NULL,NULL,NULL,9,NULL),(26,'images\\IMG_26.jpg','Item option film others send practice place.',24,NULL,NULL,NULL,NULL,NULL),(27,'images\\IMG_27.jpg','Onto close bring else bring four involve debate.',49,NULL,NULL,NULL,NULL,NULL),(28,'images\\IMG_28.jpg','Success last already ability tonight leave kid.',31,NULL,NULL,NULL,NULL,NULL),(29,'images\\IMG_29.jpg','Through garden dark service would.',NULL,15,NULL,NULL,NULL,NULL),(30,'images\\IMG_30.jpg','Nothing rather star.',NULL,NULL,157,NULL,NULL,NULL),(31,'images\\IMG_31.jpg','Themselves short account well method.',NULL,NULL,NULL,NULL,1,NULL),(32,'images\\IMG_32.jpg','Various low white some interview among argue place.',NULL,NULL,NULL,NULL,NULL,266),(33,'images\\IMG_33.jpg','What reduce mouth color fund.',47,NULL,NULL,NULL,NULL,NULL),(34,'images\\IMG_34.jpg','Sense federal create.',38,NULL,NULL,NULL,NULL,NULL),(35,'images\\IMG_35.jpg','Morning free loss myself career compare.',NULL,10,NULL,NULL,NULL,NULL),(36,'images\\IMG_36.jpg','Now citizen newspaper.',NULL,NULL,158,NULL,NULL,NULL),(37,'images\\IMG_37.jpg','Western year indeed firm purpose.',2,NULL,NULL,NULL,NULL,NULL),(38,'images\\IMG_38.jpg','Site game oil term.',NULL,NULL,NULL,NULL,6,NULL),(39,'images\\IMG_39.jpg','Wall far Republican require.',NULL,NULL,NULL,NULL,3,NULL),(40,'images\\IMG_40.jpg','One sit free kid.',NULL,NULL,NULL,NULL,NULL,76),(41,'images\\IMG_41.jpg','Teach perform whose scientist.',NULL,NULL,92,NULL,NULL,NULL),(42,'images\\IMG_42.jpg','Lot her only toward.',40,NULL,NULL,NULL,NULL,NULL),(43,'images\\IMG_43.jpg','Truth hold painting environment teacher.',NULL,11,NULL,NULL,NULL,NULL),(44,'images\\IMG_44.jpg','Expect resource system southern accept I admit.',37,NULL,NULL,NULL,NULL,NULL),(45,'images\\IMG_45.jpg','Popular have employee crime increase radio investment deal.',NULL,NULL,NULL,NULL,3,NULL),(46,'images\\IMG_46.jpg','Eat interesting resource group medical require support.',NULL,NULL,NULL,NULL,8,NULL),(47,'images\\IMG_47.jpg','Miss trip field add cost.',NULL,NULL,NULL,131,NULL,NULL),(48,'images\\IMG_48.jpg','Hour matter bar top help thus game.',NULL,4,NULL,NULL,NULL,NULL),(49,'images\\IMG_49.jpg','Mission central scientist wish he face nation enjoy.',NULL,NULL,NULL,182,NULL,NULL),(50,'images\\IMG_50.jpg','Carry person assume wear.',13,NULL,NULL,NULL,NULL,NULL);
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
  CONSTRAINT `resale_queue_ibfk_1` FOREIGN KEY (`buyer_ID`) REFERENCES `visitor` (`visitor_ID`),
  CONSTRAINT `resale_queue_ibfk_2` FOREIGN KEY (`seller_ID`) REFERENCES `visitor` (`visitor_ID`),
  CONSTRAINT `resale_queue_ibfk_3` FOREIGN KEY (`ticket_ID`) REFERENCES `ticket` (`ticket_ID`),
  CONSTRAINT `chk_seller_or_buyer` CHECK (`ticket_ID` is null and `event_name` is not null and `ticket_type` is not null or `ticket_ID` is not null and `event_name` is null and `ticket_type` is null and `buyer_ID` is not null or `ticket_ID` is not null and `event_name` is not null and `ticket_type` is not null and `seller_ID` is not null),
  CONSTRAINT `chk_one_side_only` CHECK (`buyer_ID` is not null and `seller_ID` is null or `buyer_ID` is null and `seller_ID` is not null)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resale_queue`
--

LOCK TABLES `resale_queue` WRITE;
/*!40000 ALTER TABLE `resale_queue` DISABLE KEYS */;
INSERT INTO `resale_queue` VALUES (1,NULL,132,'Spend Concert','backstage',31,'2025-04-24 10:15:00'),(2,32,NULL,'Dark Concert','backstage',NULL,'2025-04-23 14:30:00'),(3,NULL,57,'My Concert','backstage',137,'2025-05-01 19:15:00'),(4,NULL,137,'Involve Concert','backstage',66,'2025-05-01 13:45:00'),(5,NULL,3,'Country Concert','backstage',64,'2020-06-22 17:00:00'),(6,NULL,146,'Statement Concert','backstage',48,'2025-04-25 17:15:00'),(7,NULL,8,'Dark Concert','backstage',180,'2025-04-27 09:30:00'),(8,39,NULL,NULL,NULL,66,'2025-05-01 13:30:00'),(9,111,NULL,'Trip Concert','backstage',NULL,'2021-06-26 10:45:00'),(10,NULL,98,'Though Concert','backstage',193,'2022-06-25 10:00:00'),(11,NULL,146,'State Concert','backstage',135,'2019-08-04 16:15:00'),(12,NULL,35,'Positive Concert','backstage',130,'2025-04-27 13:00:00'),(13,NULL,109,'Program Concert','backstage',217,'2025-04-23 15:30:00'),(14,NULL,114,'Statement Concert','backstage',49,'2025-04-28 12:15:00'),(15,NULL,93,'End Concert','backstage',78,'2018-07-22 15:15:00'),(16,NULL,145,'Perform Concert','backstage',152,'2021-06-24 16:30:00'),(17,NULL,2,'Condition Concert','backstage',123,'2025-04-25 09:30:00');
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_ticket_activation_before_resale
BEFORE INSERT ON resale_queue
FOR EACH ROW
BEGIN
    
    DECLARE ticket_activated BOOLEAN;

    
    IF NEW.seller_ID IS NOT NULL AND NEW.ticket_ID IS NOT NULL THEN
        
        SELECT activated_status INTO ticket_activated
        FROM ticket
        WHERE ticket_ID = NEW.ticket_ID;

        
        IF ticket_activated = TRUE THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Cannot resell an activated ticket.';
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
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER create_buyer_or_seller_after_visitor
BEFORE INSERT ON resale_queue
FOR EACH ROW
BEGIN
    
    DECLARE existing_buyer INT;
    DECLARE existing_seller INT;

    
    IF NEW.buyer_ID IS NOT NULL THEN
        
        SELECT COUNT(*)
        INTO existing_buyer
        FROM buyer
        WHERE buyer_ID = NEW.buyer_ID;

        
        IF existing_buyer = 0 THEN
            INSERT INTO buyer (buyer_ID)
            VALUES (NEW.buyer_ID);  
        END IF;
    END IF;

    
    IF NEW.seller_ID IS NOT NULL THEN
        
        SELECT COUNT(*)
        INTO existing_seller
        FROM seller
        WHERE seller_ID = NEW.seller_ID;

        
        IF existing_seller = 0 THEN
            INSERT INTO seller (seller_ID)
            VALUES (NEW.seller_ID);  
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
          AND seller_ID NOT IN (
              SELECT seller_ID FROM temp_resale_matches WHERE ticket_ID = NEW.ticket_ID
          )
        ORDER BY listed_at ASC
        LIMIT 1;

        IF matched_seller IS NOT NULL THEN
            
            UPDATE ticket
            SET visitor_ID = NEW.buyer_ID
            WHERE ticket_ID = NEW.ticket_ID;

            INSERT INTO temp_resale_matches (buyer_ID, seller_ID, ticket_ID)
            VALUES (NEW.buyer_ID, matched_seller, NEW.ticket_ID);
        END IF;
    END IF;

    
    IF NEW.seller_ID IS NOT NULL THEN
        
        SELECT buyer_ID INTO matched_buyer
        FROM resale_queue
        WHERE ticket_ID = NEW.ticket_ID
          AND buyer_ID IS NOT NULL
          AND seller_ID IS NULL
          AND buyer_ID NOT IN (
              SELECT buyer_ID FROM temp_resale_matches WHERE ticket_ID = NEW.ticket_ID
          )
        ORDER BY listed_at ASC
        LIMIT 1;

        IF matched_buyer IS NOT NULL THEN
            
            UPDATE ticket
            SET visitor_ID = matched_buyer
            WHERE ticket_ID = NEW.ticket_ID;

            INSERT INTO temp_resale_matches (buyer_ID, seller_ID, ticket_ID)
            VALUES (matched_buyer, NEW.seller_ID, NEW.ticket_ID);
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
  CONSTRAINT `fk_review_ticket` FOREIGN KEY (`ticket_ID`) REFERENCES `ticket` (`ticket_ID`) ON DELETE CASCADE,
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`ticket_ID`) REFERENCES `ticket` (`ticket_ID`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`performance_ID`) REFERENCES `performances` (`performance_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (2,55,'2','2','4','1','5'),(3,168,'4','4','2','4','3'),(4,151,'2','5','4','1','1'),(7,114,'4','4','3','4','4'),(9,176,'3','1','2','4','3'),(12,130,'2','1','3','2','1'),(15,91,'4','3','3','3','5'),(16,51,'5','4','3','3','5'),(17,69,'3','1','4','3','1'),(18,18,'3','5','5','5','5'),(19,172,'4','1','2','1','2'),(20,13,'4','2','2','4','4'),(21,126,'4','4','1','2','4'),(23,162,'3','2','5','2','2'),(24,118,'2','2','3','3','1'),(25,184,'2','1','2','2','2'),(26,7,'1','2','2','5','2'),(27,121,'3','1','3','4','4'),(32,100,'2','1','5','3','3'),(35,145,'3','3','2','1','3'),(36,26,'5','3','3','2','4'),(37,21,'3','5','4','1','3'),(38,75,'1','4','4','3','4'),(40,126,'4','5','1','3','5'),(43,7,'3','2','5','3','3'),(44,1,'1','2','5','2','1'),(46,117,'4','1','4','4','2'),(50,134,'5','5','3','5','4'),(51,10,'2','4','5','2','5'),(52,109,'1','4','1','1','3'),(53,60,'1','2','4','2','5'),(54,75,'5','5','5','4','1'),(56,174,'1','1','5','3','2'),(57,150,'4','5','4','2','2'),(59,94,'4','4','2','3','5'),(60,133,'4','5','1','5','3'),(61,108,'3','2','2','1','3'),(62,116,'3','3','4','3','5'),(65,78,'1','1','4','5','3'),(69,142,'2','2','2','5','1'),(70,202,'4','4','1','5','2'),(74,113,'5','5','2','3','5'),(76,133,'2','5','5','3','3'),(77,17,'4','5','1','1','3'),(80,3,'5','1','2','5','5'),(81,58,'4','3','5','3','5'),(82,51,'3','5','4','5','1'),(83,115,'4','3','3','2','1'),(84,183,'5','2','1','2','3'),(85,108,'5','2','2','1','2'),(86,190,'3','5','3','1','4'),(88,24,'4','3','5','2','2'),(90,145,'5','5','2','1','4'),(91,166,'3','3','5','5','5'),(93,174,'2','2','3','5','5'),(96,135,'3','1','5','4','1'),(97,109,'1','5','5','2','5'),(98,166,'1','1','3','1','5'),(100,199,'3','1','2','3','3'),(103,15,'4','5','5','1','4'),(104,89,'4','5','5','1','3'),(105,90,'3','2','3','2','5'),(106,26,'5','3','3','3','4'),(107,164,'3','2','3','3','3'),(108,118,'4','3','2','2','5'),(109,6,'2','4','1','2','4'),(112,104,'3','3','3','4','4'),(113,157,'1','1','2','4','5'),(114,91,'5','2','5','5','4'),(115,145,'1','2','3','1','5'),(116,52,'4','4','4','1','2'),(117,144,'1','3','5','4','1'),(118,79,'3','5','4','4','5'),(119,148,'1','4','1','3','1'),(120,58,'3','1','2','4','1'),(122,95,'2','2','2','4','5'),(124,139,'1','5','5','5','3'),(126,4,'4','1','1','3','3'),(127,171,'1','5','5','4','1'),(128,45,'1','2','3','4','5'),(129,3,'4','5','3','3','4'),(131,170,'4','1','3','3','4'),(132,162,'3','5','3','2','3'),(134,44,'3','4','5','2','1'),(136,34,'3','4','2','1','1'),(138,47,'5','5','5','4','1'),(139,52,'2','1','5','5','5'),(140,59,'4','5','1','2','4'),(142,65,'3','5','2','5','5'),(143,36,'5','2','2','4','3'),(145,193,'1','3','3','1','2'),(147,161,'2','3','5','2','4'),(149,163,'5','2','1','5','2'),(151,159,'2','1','4','3','2'),(153,177,'5','3','2','2','3'),(155,188,'1','2','2','4','2'),(156,123,'2','4','3','1','2'),(157,40,'3','1','3','5','3'),(158,177,'2','1','4','5','4'),(159,54,'4','2','2','5','4'),(160,154,'5','4','1','4','4'),(161,38,'4','1','3','5','5'),(163,55,'2','3','5','4','2'),(164,165,'5','3','3','5','5'),(165,124,'3','2','1','5','1'),(166,105,'5','4','4','4','1'),(170,152,'2','5','4','5','3'),(171,61,'4','1','4','4','2'),(172,86,'4','4','5','4','3'),(173,194,'1','5','1','2','3'),(174,155,'5','4','3','3','5'),(177,67,'5','1','2','4','4'),(178,78,'1','1','1','2','4'),(179,8,'1','5','5','2','5'),(181,177,'5','5','1','5','3'),(182,30,'2','4','2','4','4'),(185,29,'3','1','1','1','2'),(186,94,'3','2','5','5','5'),(189,14,'1','4','5','5','3'),(190,1,'3','5','4','3','4'),(195,58,'5','5','1','4','2'),(196,49,'2','2','1','2','4'),(197,173,'1','1','2','5','1'),(199,24,'4','2','4','1','1'),(201,195,'1','2','1','2','2'),(202,93,'1','4','2','4','3'),(205,199,'2','2','1','1','5'),(206,188,'2','4','5','1','2'),(207,26,'1','4','5','1','2'),(209,106,'1','1','1','4','1'),(210,107,'3','5','1','2','5'),(211,97,'1','1','1','3','1'),(212,35,'4','4','2','5','1'),(214,78,'3','3','3','1','1'),(215,173,'2','3','3','1','2'),(216,196,'2','5','1','4','2'),(218,80,'2','3','3','1','4'),(219,34,'1','5','5','5','1'),(220,92,'5','5','5','4','2');
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
  CONSTRAINT `fk_role_event` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`) ON DELETE CASCADE,
  CONSTRAINT `fk_role_personel` FOREIGN KEY (`personel_ID`) REFERENCES `personel` (`personel_ID`) ON DELETE CASCADE,
  CONSTRAINT `role_of_personel_on_event_ibfk_1` FOREIGN KEY (`personel_ID`) REFERENCES `personel` (`personel_ID`),
  CONSTRAINT `role_of_personel_on_event_ibfk_2` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_of_personel_on_event`
--

LOCK TABLES `role_of_personel_on_event` WRITE;
/*!40000 ALTER TABLE `role_of_personel_on_event` DISABLE KEYS */;
INSERT INTO `role_of_personel_on_event` VALUES (1,1,'technical'),(5,1,'technical'),(45,1,'technical'),(76,1,'technical'),(158,1,'technical'),(74,1,'security'),(100,1,'security'),(148,1,'security'),(153,1,'security'),(187,1,'security'),(193,1,'security'),(69,1,'support'),(181,1,'support'),(56,2,'technical'),(59,2,'technical'),(72,2,'technical'),(109,2,'technical'),(134,2,'technical'),(12,2,'security'),(43,2,'security'),(74,2,'security'),(78,2,'security'),(127,2,'security'),(49,2,'support'),(159,2,'support'),(105,3,'technical'),(129,3,'technical'),(154,3,'technical'),(157,3,'technical'),(194,3,'technical'),(19,3,'security'),(30,3,'security'),(34,3,'security'),(38,3,'security'),(143,3,'security'),(191,3,'security'),(3,3,'support'),(57,3,'support'),(8,4,'technical'),(53,4,'technical'),(82,4,'technical'),(127,4,'technical'),(162,4,'technical'),(1,4,'security'),(15,4,'security'),(55,4,'security'),(86,4,'security'),(139,4,'security'),(59,4,'support'),(169,4,'support'),(32,5,'technical'),(97,5,'technical'),(119,5,'technical'),(130,5,'technical'),(160,5,'technical'),(22,5,'security'),(24,5,'security'),(41,5,'security'),(73,5,'security'),(118,5,'security'),(125,5,'security'),(38,5,'support'),(196,5,'support'),(22,6,'technical'),(120,6,'technical'),(124,6,'technical'),(126,6,'technical'),(172,6,'technical'),(32,6,'security'),(65,6,'security'),(122,6,'security'),(159,6,'security'),(181,6,'security'),(116,6,'support'),(117,6,'support'),(33,7,'technical'),(46,7,'technical'),(122,7,'technical'),(152,7,'technical'),(173,7,'technical'),(24,7,'security'),(71,7,'security'),(103,7,'security'),(130,7,'security'),(136,7,'security'),(198,7,'security'),(40,7,'support'),(95,7,'support'),(71,8,'technical'),(147,8,'technical'),(163,8,'technical'),(180,8,'technical'),(185,8,'technical'),(62,8,'security'),(67,8,'security'),(158,8,'security'),(183,8,'security'),(194,8,'security'),(117,8,'support'),(175,8,'support'),(36,9,'technical'),(139,9,'technical'),(161,9,'technical'),(181,9,'technical'),(195,9,'technical'),(44,9,'security'),(71,9,'security'),(99,9,'security'),(189,9,'security'),(199,9,'security'),(122,9,'support'),(137,9,'support'),(23,10,'technical'),(71,10,'technical'),(78,10,'technical'),(110,10,'technical'),(160,10,'technical'),(11,10,'security'),(14,10,'security'),(32,10,'security'),(39,10,'security'),(40,10,'security'),(197,10,'security'),(35,10,'support'),(146,10,'support'),(69,11,'technical'),(75,11,'technical'),(144,11,'technical'),(148,11,'technical'),(177,11,'technical'),(53,11,'security'),(61,11,'security'),(128,11,'security'),(141,11,'security'),(200,11,'security'),(135,11,'support'),(166,11,'support'),(5,12,'technical'),(73,12,'technical'),(80,12,'technical'),(160,12,'technical'),(190,12,'technical'),(27,12,'security'),(38,12,'security'),(62,12,'security'),(105,12,'security'),(163,12,'security'),(197,12,'security'),(51,12,'support'),(144,12,'support'),(19,13,'technical'),(60,13,'technical'),(80,13,'technical'),(113,13,'technical'),(131,13,'technical'),(8,13,'security'),(39,13,'security'),(98,13,'security'),(99,13,'security'),(105,13,'security'),(192,13,'security'),(91,13,'support'),(137,13,'support'),(58,14,'technical'),(75,14,'technical'),(81,14,'technical'),(101,14,'technical'),(126,14,'technical'),(45,14,'security'),(56,14,'security'),(120,14,'security'),(176,14,'security'),(193,14,'security'),(124,14,'support'),(150,14,'support'),(89,15,'technical'),(136,15,'technical'),(158,15,'technical'),(182,15,'technical'),(187,15,'technical'),(46,15,'security'),(84,15,'security'),(85,15,'security'),(96,15,'security'),(137,15,'security'),(160,15,'security'),(56,15,'support'),(172,15,'support'),(73,16,'technical'),(123,16,'technical'),(151,16,'technical'),(174,16,'technical'),(187,16,'technical'),(4,16,'security'),(15,16,'security'),(52,16,'security'),(75,16,'security'),(117,16,'security'),(32,16,'support'),(92,16,'support'),(19,17,'technical'),(61,17,'technical'),(90,17,'technical'),(108,17,'technical'),(115,17,'technical'),(1,17,'security'),(49,17,'security'),(98,17,'security'),(112,17,'security'),(144,17,'security'),(87,17,'support'),(176,17,'support'),(15,18,'technical'),(83,18,'technical'),(115,18,'technical'),(127,18,'technical'),(174,18,'technical'),(5,18,'security'),(65,18,'security'),(118,18,'security'),(167,18,'security'),(179,18,'security'),(149,18,'support'),(150,18,'support'),(17,19,'technical'),(41,19,'technical'),(59,19,'technical'),(117,19,'technical'),(124,19,'technical'),(62,19,'security'),(76,19,'security'),(104,19,'security'),(131,19,'security'),(184,19,'security'),(91,19,'support'),(150,19,'support'),(16,20,'technical'),(70,20,'technical'),(83,20,'technical'),(138,20,'technical'),(163,20,'technical'),(20,20,'security'),(114,20,'security'),(165,20,'security'),(181,20,'security'),(193,20,'security'),(21,20,'support'),(88,20,'support'),(16,21,'technical'),(41,21,'technical'),(67,21,'technical'),(72,21,'technical'),(180,21,'technical'),(4,21,'security'),(60,21,'security'),(91,21,'security'),(126,21,'security'),(158,21,'security'),(200,21,'security'),(34,21,'support'),(84,21,'support'),(37,22,'technical'),(41,22,'technical'),(129,22,'technical'),(165,22,'technical'),(200,22,'technical'),(74,22,'security'),(86,22,'security'),(101,22,'security'),(168,22,'security'),(182,22,'security'),(24,22,'support'),(150,22,'support'),(16,23,'technical'),(65,23,'technical'),(74,23,'technical'),(98,23,'technical'),(111,23,'technical'),(20,23,'security'),(46,23,'security'),(47,23,'security'),(141,23,'security'),(145,23,'security'),(3,23,'support'),(89,23,'support'),(2,24,'technical'),(101,24,'technical'),(116,24,'technical'),(146,24,'technical'),(192,24,'technical'),(112,24,'security'),(118,24,'security'),(136,24,'security'),(139,24,'security'),(188,24,'security'),(76,24,'support'),(109,24,'support'),(6,25,'technical'),(106,25,'technical'),(127,25,'technical'),(148,25,'technical'),(190,25,'technical'),(56,25,'security'),(57,25,'security'),(71,25,'security'),(79,25,'security'),(81,25,'security'),(86,25,'security'),(89,25,'support'),(153,25,'support'),(3,26,'technical'),(57,26,'technical'),(64,26,'technical'),(127,26,'technical'),(185,26,'technical'),(28,26,'security'),(68,26,'security'),(121,26,'security'),(132,26,'security'),(162,26,'security'),(140,26,'support'),(178,26,'support'),(50,27,'technical'),(130,27,'technical'),(136,27,'technical'),(139,27,'technical'),(181,27,'technical'),(17,27,'security'),(24,27,'security'),(43,27,'security'),(59,27,'security'),(186,27,'security'),(57,27,'support'),(132,27,'support'),(105,28,'technical'),(109,28,'technical'),(142,28,'technical'),(158,28,'technical'),(175,28,'technical'),(65,28,'security'),(81,28,'security'),(114,28,'security'),(162,28,'security'),(200,28,'security'),(23,28,'support'),(35,28,'support'),(27,29,'technical'),(60,29,'technical'),(127,29,'technical'),(156,29,'technical'),(200,29,'technical'),(16,29,'security'),(119,29,'security'),(120,29,'security'),(164,29,'security'),(186,29,'security'),(32,29,'support'),(195,29,'support'),(22,30,'technical'),(23,30,'technical'),(88,30,'technical'),(136,30,'technical'),(180,30,'technical'),(10,30,'security'),(111,30,'security'),(128,30,'security'),(135,30,'security'),(141,30,'security'),(142,30,'security'),(118,30,'support'),(124,30,'support'),(67,31,'technical'),(93,31,'technical'),(106,31,'technical'),(133,31,'technical'),(143,31,'technical'),(12,31,'security'),(71,31,'security'),(107,31,'security'),(126,31,'security'),(139,31,'security'),(6,31,'support'),(99,31,'support'),(31,32,'technical'),(45,32,'technical'),(128,32,'technical'),(146,32,'technical'),(173,32,'technical'),(3,32,'security'),(7,32,'security'),(75,32,'security'),(87,32,'security'),(115,32,'security'),(177,32,'security'),(12,32,'support'),(26,32,'support'),(8,33,'technical'),(69,33,'technical'),(113,33,'technical'),(141,33,'technical'),(180,33,'technical'),(33,33,'security'),(56,33,'security'),(83,33,'security'),(159,33,'security'),(194,33,'security'),(84,33,'support'),(163,33,'support'),(40,34,'technical'),(135,34,'technical'),(191,34,'technical'),(197,34,'technical'),(198,34,'technical'),(25,34,'security'),(44,34,'security'),(94,34,'security'),(115,34,'security'),(131,34,'security'),(193,34,'security'),(18,34,'support'),(138,34,'support'),(56,35,'technical'),(91,35,'technical'),(106,35,'technical'),(150,35,'technical'),(193,35,'technical'),(40,35,'security'),(44,35,'security'),(79,35,'security'),(134,35,'security'),(157,35,'security'),(199,35,'security'),(8,35,'support'),(121,35,'support'),(15,36,'technical'),(28,36,'technical'),(135,36,'technical'),(162,36,'technical'),(163,36,'technical'),(2,36,'security'),(26,36,'security'),(104,36,'security'),(120,36,'security'),(122,36,'security'),(8,36,'support'),(35,36,'support'),(14,37,'technical'),(40,37,'technical'),(63,37,'technical'),(97,37,'technical'),(147,37,'technical'),(46,37,'security'),(68,37,'security'),(93,37,'security'),(110,37,'security'),(143,37,'security'),(80,37,'support'),(99,37,'support'),(9,38,'technical'),(20,38,'technical'),(43,38,'technical'),(125,38,'technical'),(176,38,'technical'),(12,38,'security'),(28,38,'security'),(77,38,'security'),(87,38,'security'),(94,38,'security'),(22,38,'support'),(50,38,'support'),(25,39,'technical'),(72,39,'technical'),(107,39,'technical'),(181,39,'technical'),(189,39,'technical'),(108,39,'security'),(144,39,'security'),(164,39,'security'),(175,39,'security'),(183,39,'security'),(119,39,'support'),(148,39,'support'),(15,40,'technical'),(58,40,'technical'),(150,40,'technical'),(172,40,'technical'),(173,40,'technical'),(12,40,'security'),(27,40,'security'),(45,40,'security'),(63,40,'security'),(183,40,'security'),(134,40,'support'),(146,40,'support'),(29,41,'technical'),(51,41,'technical'),(92,41,'technical'),(96,41,'technical'),(172,41,'technical'),(4,41,'security'),(9,41,'security'),(17,41,'security'),(44,41,'security'),(125,41,'security'),(22,41,'support'),(160,41,'support'),(21,42,'technical'),(32,42,'technical'),(123,42,'technical'),(178,42,'technical'),(183,42,'technical'),(37,42,'security'),(74,42,'security'),(89,42,'security'),(160,42,'security'),(176,42,'security'),(95,42,'support'),(165,42,'support'),(25,43,'technical'),(62,43,'technical'),(123,43,'technical'),(135,43,'technical'),(176,43,'technical'),(5,43,'security'),(21,43,'security'),(73,43,'security'),(113,43,'security'),(198,43,'security'),(3,43,'support'),(187,43,'support'),(7,44,'technical'),(44,44,'technical'),(101,44,'technical'),(126,44,'technical'),(155,44,'technical'),(4,44,'security'),(43,44,'security'),(58,44,'security'),(103,44,'security'),(178,44,'security'),(23,44,'support'),(173,44,'support'),(27,45,'technical'),(97,45,'technical'),(144,45,'technical'),(166,45,'technical'),(195,45,'technical'),(55,45,'security'),(77,45,'security'),(81,45,'security'),(105,45,'security'),(159,45,'security'),(122,45,'support'),(150,45,'support'),(75,46,'technical'),(134,46,'technical'),(164,46,'technical'),(175,46,'technical'),(177,46,'technical'),(28,46,'security'),(106,46,'security'),(131,46,'security'),(137,46,'security'),(171,46,'security'),(81,46,'support'),(163,46,'support'),(10,47,'technical'),(33,47,'technical'),(50,47,'technical'),(64,47,'technical'),(151,47,'technical'),(2,47,'security'),(155,47,'security'),(179,47,'security'),(189,47,'security'),(197,47,'security'),(41,47,'support'),(175,47,'support'),(7,48,'technical'),(20,48,'technical'),(55,48,'technical'),(99,48,'technical'),(139,48,'technical'),(3,48,'security'),(68,48,'security'),(102,48,'security'),(103,48,'security'),(177,48,'security'),(185,48,'security'),(95,48,'support'),(183,48,'support'),(23,49,'technical'),(74,49,'technical'),(79,49,'technical'),(93,49,'technical'),(197,49,'technical'),(2,49,'security'),(17,49,'security'),(30,49,'security'),(81,49,'security'),(179,49,'security'),(184,49,'security'),(24,49,'support'),(167,49,'support'),(39,50,'technical'),(74,50,'technical'),(79,50,'technical'),(82,50,'technical'),(199,50,'technical'),(21,50,'security'),(47,50,'security'),(108,50,'security'),(109,50,'security'),(111,50,'security'),(146,50,'security'),(61,50,'support'),(102,50,'support'),(7,51,'technical'),(37,51,'technical'),(88,51,'technical'),(118,51,'technical'),(145,51,'technical'),(63,51,'security'),(64,51,'security'),(65,51,'security'),(165,51,'security'),(166,51,'security'),(14,51,'support'),(49,51,'support'),(1,52,'technical'),(80,52,'technical'),(96,52,'technical'),(172,52,'technical'),(182,52,'technical'),(62,52,'security'),(73,52,'security'),(98,52,'security'),(101,52,'security'),(103,52,'security'),(6,52,'support'),(121,52,'support'),(35,53,'technical'),(111,53,'technical'),(143,53,'technical'),(149,53,'technical'),(197,53,'technical'),(15,53,'security'),(17,53,'security'),(54,53,'security'),(67,53,'security'),(114,53,'security'),(29,53,'support'),(87,53,'support'),(50,54,'technical'),(82,54,'technical'),(129,54,'technical'),(177,54,'technical'),(196,54,'technical'),(65,54,'security'),(75,54,'security'),(117,54,'security'),(170,54,'security'),(174,54,'security'),(180,54,'security'),(3,54,'support'),(179,54,'support'),(17,55,'technical'),(34,55,'technical'),(76,55,'technical'),(90,55,'technical'),(143,55,'technical'),(18,55,'security'),(50,55,'security'),(75,55,'security'),(80,55,'security'),(195,55,'security'),(144,55,'support'),(176,55,'support'),(121,56,'technical'),(125,56,'technical'),(129,56,'technical'),(168,56,'technical'),(170,56,'technical'),(57,56,'security'),(109,56,'security'),(146,56,'security'),(158,56,'security'),(197,56,'security'),(58,56,'support'),(112,56,'support'),(91,57,'technical'),(95,57,'technical'),(123,57,'technical'),(148,57,'technical'),(162,57,'technical'),(59,57,'security'),(65,57,'security'),(106,57,'security'),(181,57,'security'),(187,57,'security'),(17,57,'support'),(76,57,'support'),(8,58,'technical'),(29,58,'technical'),(48,58,'technical'),(107,58,'technical'),(166,58,'technical'),(64,58,'security'),(78,58,'security'),(84,58,'security'),(174,58,'security'),(192,58,'security'),(28,58,'support'),(127,58,'support'),(34,59,'technical'),(76,59,'technical'),(114,59,'technical'),(124,59,'technical'),(125,59,'technical'),(19,59,'security'),(28,59,'security'),(45,59,'security'),(88,59,'security'),(162,59,'security'),(154,59,'support'),(165,59,'support'),(83,60,'technical'),(108,60,'technical'),(123,60,'technical'),(130,60,'technical'),(160,60,'technical'),(7,60,'security'),(36,60,'security'),(45,60,'security'),(47,60,'security'),(151,60,'security'),(103,60,'support'),(149,60,'support'),(52,61,'technical'),(155,61,'technical'),(156,61,'technical'),(165,61,'technical'),(179,61,'technical'),(43,61,'security'),(55,61,'security'),(62,61,'security'),(85,61,'security'),(160,61,'security'),(166,61,'security'),(21,61,'support'),(135,61,'support'),(16,62,'technical'),(22,62,'technical'),(23,62,'technical'),(35,62,'technical'),(185,62,'technical'),(44,62,'security'),(49,62,'security'),(103,62,'security'),(144,62,'security'),(200,62,'security'),(17,62,'support'),(113,62,'support'),(10,63,'technical'),(20,63,'technical'),(27,63,'technical'),(118,63,'technical'),(119,63,'technical'),(32,63,'security'),(38,63,'security'),(131,63,'security'),(150,63,'security'),(179,63,'security'),(183,63,'support'),(188,63,'support'),(23,64,'technical'),(50,64,'technical'),(94,64,'technical'),(127,64,'technical'),(166,64,'technical'),(8,64,'security'),(32,64,'security'),(72,64,'security'),(108,64,'security'),(120,64,'security'),(12,64,'support'),(57,64,'support'),(13,65,'technical'),(55,65,'technical'),(65,65,'technical'),(71,65,'technical'),(153,65,'technical'),(7,65,'security'),(52,65,'security'),(69,65,'security'),(73,65,'security'),(170,65,'security'),(3,65,'support'),(194,65,'support'),(79,66,'technical'),(91,66,'technical'),(126,66,'technical'),(134,66,'technical'),(145,66,'technical'),(101,66,'security'),(136,66,'security'),(158,66,'security'),(162,66,'security'),(172,66,'security'),(2,66,'support'),(149,66,'support'),(34,67,'technical'),(91,67,'technical'),(102,67,'technical'),(153,67,'technical'),(188,67,'technical'),(17,67,'security'),(35,67,'security'),(71,67,'security'),(160,67,'security'),(162,67,'security'),(163,67,'security'),(78,67,'support'),(108,67,'support'),(26,68,'technical'),(27,68,'technical'),(52,68,'technical'),(121,68,'technical'),(199,68,'technical'),(44,68,'security'),(80,68,'security'),(89,68,'security'),(179,68,'security'),(180,68,'security'),(96,68,'support'),(171,68,'support'),(100,69,'technical'),(110,69,'technical'),(146,69,'technical'),(181,69,'technical'),(200,69,'technical'),(13,69,'security'),(115,69,'security'),(122,69,'security'),(133,69,'security'),(151,69,'security'),(62,69,'support'),(162,69,'support'),(3,70,'technical'),(29,70,'technical'),(73,70,'technical'),(128,70,'technical'),(143,70,'technical'),(7,70,'security'),(26,70,'security'),(64,70,'security'),(76,70,'security'),(88,70,'security'),(8,70,'support'),(59,70,'support'),(5,71,'technical'),(77,71,'technical'),(113,71,'technical'),(120,71,'technical'),(191,71,'technical'),(20,71,'security'),(26,71,'security'),(27,71,'security'),(107,71,'security'),(132,71,'security'),(36,71,'support'),(57,71,'support'),(120,72,'technical'),(121,72,'technical'),(126,72,'technical'),(135,72,'technical'),(144,72,'technical'),(1,72,'security'),(34,72,'security'),(84,72,'security'),(164,72,'security'),(184,72,'security'),(30,72,'support'),(81,72,'support'),(2,73,'technical'),(84,73,'technical'),(95,73,'technical'),(111,73,'technical'),(129,73,'technical'),(9,73,'security'),(46,73,'security'),(62,73,'security'),(78,73,'security'),(97,73,'security'),(109,73,'security'),(89,73,'support'),(98,73,'support'),(33,74,'technical'),(59,74,'technical'),(93,74,'technical'),(138,74,'technical'),(175,74,'technical'),(4,74,'security'),(11,74,'security'),(21,74,'security'),(47,74,'security'),(133,74,'security'),(97,74,'support'),(114,74,'support'),(25,75,'technical'),(145,75,'technical'),(150,75,'technical'),(163,75,'technical'),(185,75,'technical'),(45,75,'security'),(61,75,'security'),(78,75,'security'),(102,75,'security'),(188,75,'security'),(38,75,'support'),(92,75,'support'),(13,76,'technical'),(42,76,'technical'),(66,76,'technical'),(105,76,'technical'),(167,76,'technical'),(64,76,'security'),(72,76,'security'),(116,76,'security'),(137,76,'security'),(175,76,'security'),(188,76,'security'),(87,76,'support'),(173,76,'support'),(15,77,'technical'),(63,77,'technical'),(94,77,'technical'),(96,77,'technical'),(157,77,'technical'),(23,77,'security'),(103,77,'security'),(105,77,'security'),(113,77,'security'),(121,77,'security'),(144,77,'security'),(36,77,'support'),(81,77,'support'),(65,78,'technical'),(80,78,'technical'),(87,78,'technical'),(120,78,'technical'),(150,78,'technical'),(51,78,'security'),(91,78,'security'),(112,78,'security'),(164,78,'security'),(188,78,'security'),(23,78,'support'),(69,78,'support'),(35,79,'technical'),(70,79,'technical'),(85,79,'technical'),(99,79,'technical'),(168,79,'technical'),(18,79,'security'),(32,79,'security'),(118,79,'security'),(134,79,'security'),(176,79,'security'),(19,79,'support'),(31,79,'support'),(4,80,'technical'),(12,80,'technical'),(22,80,'technical'),(68,80,'technical'),(139,80,'technical'),(31,80,'security'),(136,80,'security'),(141,80,'security'),(175,80,'security'),(196,80,'security'),(5,80,'support'),(100,80,'support'),(2,81,'technical'),(51,81,'technical'),(68,81,'technical'),(111,81,'technical'),(129,81,'technical'),(42,81,'security'),(76,81,'security'),(108,81,'security'),(146,81,'security'),(162,81,'security'),(152,81,'support'),(183,81,'support'),(47,82,'technical'),(69,82,'technical'),(99,82,'technical'),(149,82,'technical'),(184,82,'technical'),(12,82,'security'),(90,82,'security'),(91,82,'security'),(92,82,'security'),(107,82,'security'),(13,82,'support'),(163,82,'support'),(1,83,'technical'),(115,83,'technical'),(157,83,'technical'),(160,83,'technical'),(188,83,'technical'),(17,83,'security'),(35,83,'security'),(51,83,'security'),(88,83,'security'),(190,83,'security'),(41,83,'support'),(166,83,'support'),(21,84,'technical'),(31,84,'technical'),(153,84,'technical'),(169,84,'technical'),(183,84,'technical'),(54,84,'security'),(103,84,'security'),(116,84,'security'),(151,84,'security'),(152,84,'security'),(74,84,'support'),(164,84,'support'),(14,85,'technical'),(42,85,'technical'),(75,85,'technical'),(138,85,'technical'),(187,85,'technical'),(22,85,'security'),(41,85,'security'),(52,85,'security'),(155,85,'security'),(183,85,'security'),(136,85,'support'),(154,85,'support'),(66,86,'technical'),(88,86,'technical'),(105,86,'technical'),(137,86,'technical'),(165,86,'technical'),(5,86,'security'),(10,86,'security'),(52,86,'security'),(118,86,'security'),(168,86,'security'),(177,86,'support'),(181,86,'support'),(2,87,'technical'),(59,87,'technical'),(79,87,'technical'),(82,87,'technical'),(171,87,'technical'),(26,87,'security'),(68,87,'security'),(90,87,'security'),(118,87,'security'),(138,87,'security'),(194,87,'security'),(61,87,'support'),(144,87,'support'),(73,88,'technical'),(74,88,'technical'),(125,88,'technical'),(151,88,'technical'),(179,88,'technical'),(8,88,'security'),(47,88,'security'),(127,88,'security'),(142,88,'security'),(199,88,'security'),(112,88,'support'),(115,88,'support'),(3,89,'technical'),(13,89,'technical'),(130,89,'technical'),(160,89,'technical'),(196,89,'technical'),(18,89,'security'),(24,89,'security'),(82,89,'security'),(85,89,'security'),(97,89,'security'),(171,89,'security'),(65,89,'support'),(183,89,'support'),(93,90,'technical'),(147,90,'technical'),(154,90,'technical'),(172,90,'technical'),(176,90,'technical'),(47,90,'security'),(51,90,'security'),(86,90,'security'),(122,90,'security'),(141,90,'security'),(36,90,'support'),(48,90,'support'),(26,91,'technical'),(96,91,'technical'),(173,91,'technical'),(180,91,'technical'),(196,91,'technical'),(2,91,'security'),(46,91,'security'),(86,91,'security'),(89,91,'security'),(151,91,'security'),(122,91,'support'),(192,91,'support'),(78,92,'technical'),(133,92,'technical'),(137,92,'technical'),(174,92,'technical'),(194,92,'technical'),(5,92,'security'),(45,92,'security'),(68,92,'security'),(198,92,'security'),(199,92,'security'),(52,92,'support'),(144,92,'support'),(103,93,'technical'),(121,93,'technical'),(128,93,'technical'),(163,93,'technical'),(185,93,'technical'),(45,93,'security'),(110,93,'security'),(178,93,'security'),(195,93,'security'),(198,93,'security'),(169,93,'support'),(186,93,'support'),(8,94,'technical'),(73,94,'technical'),(74,94,'technical'),(144,94,'technical'),(172,94,'technical'),(28,94,'security'),(56,94,'security'),(67,94,'security'),(141,94,'security'),(161,94,'security'),(182,94,'security'),(152,94,'support'),(190,94,'support'),(26,95,'technical'),(27,95,'technical'),(70,95,'technical'),(71,95,'technical'),(116,95,'technical'),(1,95,'security'),(57,95,'security'),(64,95,'security'),(76,95,'security'),(163,95,'security'),(177,95,'security'),(59,95,'support'),(61,95,'support'),(45,96,'technical'),(68,96,'technical'),(89,96,'technical'),(100,96,'technical'),(195,96,'technical'),(23,96,'security'),(84,96,'security'),(111,96,'security'),(120,96,'security'),(174,96,'security'),(2,96,'support'),(131,96,'support'),(21,97,'technical'),(59,97,'technical'),(134,97,'technical'),(171,97,'technical'),(198,97,'technical'),(87,97,'security'),(100,97,'security'),(119,97,'security'),(176,97,'security'),(196,97,'security'),(90,97,'support'),(99,97,'support'),(29,98,'technical'),(55,98,'technical'),(85,98,'technical'),(93,98,'technical'),(100,98,'technical'),(21,98,'security'),(40,98,'security'),(44,98,'security'),(63,98,'security'),(114,98,'security'),(169,98,'security'),(7,98,'support'),(39,98,'support'),(16,99,'technical'),(40,99,'technical'),(166,99,'technical'),(189,99,'technical'),(195,99,'technical'),(37,99,'security'),(79,99,'security'),(97,99,'security'),(161,99,'security'),(167,99,'security'),(80,99,'support'),(129,99,'support'),(2,100,'technical'),(58,100,'technical'),(59,100,'technical'),(152,100,'technical'),(167,100,'technical'),(9,100,'security'),(27,100,'security'),(41,100,'security'),(73,100,'security'),(89,100,'security'),(122,100,'security'),(109,100,'support'),(188,100,'support'),(1,101,'technical'),(97,101,'technical'),(110,101,'technical'),(137,101,'technical'),(194,101,'technical'),(61,101,'security'),(82,101,'security'),(149,101,'security'),(164,101,'security'),(172,101,'security'),(59,101,'support'),(114,101,'support'),(76,102,'technical'),(77,102,'technical'),(101,102,'technical'),(137,102,'technical'),(164,102,'technical'),(32,102,'security'),(51,102,'security'),(65,102,'security'),(86,102,'security'),(199,102,'security'),(111,102,'support'),(138,102,'support'),(18,103,'technical'),(28,103,'technical'),(78,103,'technical'),(124,103,'technical'),(140,103,'technical'),(34,103,'security'),(38,103,'security'),(81,103,'security'),(108,103,'security'),(168,103,'security'),(23,103,'support'),(110,103,'support'),(11,104,'technical'),(17,104,'technical'),(43,104,'technical'),(82,104,'technical'),(147,104,'technical'),(102,104,'security'),(106,104,'security'),(110,104,'security'),(154,104,'security'),(170,104,'security'),(171,104,'support'),(180,104,'support'),(20,105,'technical'),(30,105,'technical'),(101,105,'technical'),(131,105,'technical'),(199,105,'technical'),(89,105,'security'),(98,105,'security'),(99,105,'security'),(139,105,'security'),(155,105,'security'),(48,105,'support'),(100,105,'support'),(2,106,'technical'),(23,106,'technical'),(32,106,'technical'),(90,106,'technical'),(136,106,'technical'),(48,106,'security'),(122,106,'security'),(143,106,'security'),(175,106,'security'),(189,106,'security'),(73,106,'support'),(114,106,'support'),(7,107,'technical'),(46,107,'technical'),(115,107,'technical'),(126,107,'technical'),(146,107,'technical'),(45,107,'security'),(59,107,'security'),(60,107,'security'),(66,107,'security'),(82,107,'security'),(150,107,'security'),(184,107,'support'),(190,107,'support'),(90,108,'technical'),(98,108,'technical'),(110,108,'technical'),(143,108,'technical'),(158,108,'technical'),(7,108,'security'),(11,108,'security'),(122,108,'security'),(147,108,'security'),(167,108,'security'),(57,108,'support'),(199,108,'support'),(21,109,'technical'),(25,109,'technical'),(45,109,'technical'),(172,109,'technical'),(182,109,'technical'),(43,109,'security'),(88,109,'security'),(161,109,'security'),(174,109,'security'),(192,109,'security'),(188,109,'support'),(193,109,'support'),(14,110,'technical'),(24,110,'technical'),(43,110,'technical'),(173,110,'technical'),(196,110,'technical'),(20,110,'security'),(27,110,'security'),(83,110,'security'),(95,110,'security'),(116,110,'security'),(154,110,'security'),(65,110,'support'),(161,110,'support'),(60,111,'technical'),(65,111,'technical'),(99,111,'technical'),(102,111,'technical'),(131,111,'technical'),(83,111,'security'),(87,111,'security'),(179,111,'security'),(181,111,'security'),(195,111,'security'),(20,111,'support'),(154,111,'support'),(79,112,'technical'),(107,112,'technical'),(115,112,'technical'),(146,112,'technical'),(150,112,'technical'),(81,112,'security'),(98,112,'security'),(147,112,'security'),(156,112,'security'),(167,112,'security'),(47,112,'support'),(99,112,'support'),(39,113,'technical'),(55,113,'technical'),(65,113,'technical'),(118,113,'technical'),(164,113,'technical'),(58,113,'security'),(108,113,'security'),(115,113,'security'),(117,113,'security'),(153,113,'security'),(187,113,'security'),(59,113,'support'),(94,113,'support'),(36,114,'technical'),(84,114,'technical'),(130,114,'technical'),(140,114,'technical'),(193,114,'technical'),(72,114,'security'),(83,114,'security'),(121,114,'security'),(143,114,'security'),(181,114,'security'),(5,114,'support'),(178,114,'support'),(114,115,'technical'),(149,115,'technical'),(188,115,'technical'),(191,115,'technical'),(195,115,'technical'),(34,115,'security'),(55,115,'security'),(118,115,'security'),(178,115,'security'),(200,115,'security'),(46,115,'support'),(171,115,'support'),(11,116,'technical'),(41,116,'technical'),(71,116,'technical'),(111,116,'technical'),(117,116,'technical'),(52,116,'security'),(85,116,'security'),(97,116,'security'),(103,116,'security'),(183,116,'security'),(62,116,'support'),(66,116,'support'),(2,117,'technical'),(6,117,'technical'),(53,117,'technical'),(70,117,'technical'),(176,117,'technical'),(1,117,'security'),(29,117,'security'),(46,117,'security'),(104,117,'security'),(123,117,'security'),(164,117,'support'),(187,117,'support'),(26,118,'technical'),(33,118,'technical'),(36,118,'technical'),(92,118,'technical'),(188,118,'technical'),(27,118,'security'),(32,118,'security'),(44,118,'security'),(116,118,'security'),(152,118,'security'),(3,118,'support'),(48,118,'support'),(90,119,'technical'),(106,119,'technical'),(134,119,'technical'),(192,119,'technical'),(198,119,'technical'),(26,119,'security'),(54,119,'security'),(57,119,'security'),(145,119,'security'),(186,119,'security'),(9,119,'support'),(184,119,'support'),(17,120,'technical'),(55,120,'technical'),(60,120,'technical'),(138,120,'technical'),(167,120,'technical'),(25,120,'security'),(72,120,'security'),(76,120,'security'),(156,120,'security'),(160,120,'security'),(75,120,'support'),(125,120,'support'),(52,121,'technical'),(84,121,'technical'),(148,121,'technical'),(152,121,'technical'),(154,121,'technical'),(3,121,'security'),(51,121,'security'),(72,121,'security'),(78,121,'security'),(110,121,'security'),(172,121,'support'),(198,121,'support'),(3,122,'technical'),(7,122,'technical'),(13,122,'technical'),(80,122,'technical'),(95,122,'technical'),(41,122,'security'),(101,122,'security'),(130,122,'security'),(143,122,'security'),(185,122,'security'),(64,122,'support'),(135,122,'support'),(85,123,'technical'),(86,123,'technical'),(151,123,'technical'),(171,123,'technical'),(185,123,'technical'),(64,123,'security'),(79,123,'security'),(106,123,'security'),(125,123,'security'),(183,123,'security'),(126,123,'support'),(193,123,'support'),(55,124,'technical'),(91,124,'technical'),(99,124,'technical'),(136,124,'technical'),(162,124,'technical'),(14,124,'security'),(42,124,'security'),(107,124,'security'),(133,124,'security'),(140,124,'security'),(167,124,'security'),(43,124,'support'),(78,124,'support'),(76,125,'technical'),(124,125,'technical'),(148,125,'technical'),(152,125,'technical'),(177,125,'technical'),(15,125,'security'),(25,125,'security'),(62,125,'security'),(72,125,'security'),(78,125,'security'),(18,125,'support'),(83,125,'support'),(40,126,'technical'),(85,126,'technical'),(89,126,'technical'),(119,126,'technical'),(185,126,'technical'),(37,126,'security'),(53,126,'security'),(73,126,'security'),(76,126,'security'),(120,126,'security'),(195,126,'security'),(131,126,'support'),(168,126,'support'),(28,127,'technical'),(62,127,'technical'),(165,127,'technical'),(181,127,'technical'),(184,127,'technical'),(2,127,'security'),(37,127,'security'),(92,127,'security'),(128,127,'security'),(173,127,'security'),(88,127,'support'),(141,127,'support'),(42,128,'technical'),(50,128,'technical'),(100,128,'technical'),(192,128,'technical'),(197,128,'technical'),(20,128,'security'),(25,128,'security'),(122,128,'security'),(183,128,'security'),(199,128,'security'),(52,128,'support'),(118,128,'support'),(6,129,'technical'),(13,129,'technical'),(43,129,'technical'),(92,129,'technical'),(171,129,'technical'),(41,129,'security'),(67,129,'security'),(84,129,'security'),(153,129,'security'),(170,129,'security'),(191,129,'security'),(93,129,'support'),(177,129,'support'),(9,130,'technical'),(25,130,'technical'),(93,130,'technical'),(154,130,'technical'),(169,130,'technical'),(18,130,'security'),(22,130,'security'),(45,130,'security'),(61,130,'security'),(63,130,'security'),(26,130,'support'),(141,130,'support'),(20,131,'technical'),(36,131,'technical'),(61,131,'technical'),(86,131,'technical'),(104,131,'technical'),(12,131,'security'),(75,131,'security'),(112,131,'security'),(174,131,'security'),(184,131,'security'),(78,131,'support'),(156,131,'support'),(65,132,'technical'),(108,132,'technical'),(109,132,'technical'),(156,132,'technical'),(170,132,'technical'),(6,132,'security'),(20,132,'security'),(107,132,'security'),(117,132,'security'),(123,132,'security'),(124,132,'security'),(24,132,'support'),(200,132,'support'),(36,133,'technical'),(96,133,'technical'),(126,133,'technical'),(173,133,'technical'),(186,133,'technical'),(3,133,'security'),(145,133,'security'),(156,133,'security'),(192,133,'security'),(197,133,'security'),(23,133,'support'),(28,133,'support'),(38,134,'technical'),(61,134,'technical'),(90,134,'technical'),(177,134,'technical'),(186,134,'technical'),(11,134,'security'),(41,134,'security'),(59,134,'security'),(80,134,'security'),(104,134,'security'),(130,134,'security'),(26,134,'support'),(185,134,'support'),(30,135,'technical'),(58,135,'technical'),(86,135,'technical'),(105,135,'technical'),(194,135,'technical'),(61,135,'security'),(80,135,'security'),(106,135,'security'),(124,135,'security'),(146,135,'security'),(198,135,'security'),(5,135,'support'),(125,135,'support'),(17,136,'technical'),(24,136,'technical'),(101,136,'technical'),(104,136,'technical'),(153,136,'technical'),(3,136,'security'),(32,136,'security'),(77,136,'security'),(149,136,'security'),(169,136,'security'),(28,136,'support'),(154,136,'support'),(1,137,'technical'),(63,137,'technical'),(93,137,'technical'),(120,137,'technical'),(140,137,'technical'),(37,137,'security'),(45,137,'security'),(112,137,'security'),(114,137,'security'),(131,137,'security'),(187,137,'security'),(22,137,'support'),(56,137,'support'),(1,138,'technical'),(5,138,'technical'),(61,138,'technical'),(141,138,'technical'),(198,138,'technical'),(32,138,'security'),(56,138,'security'),(163,138,'security'),(165,138,'security'),(193,138,'security'),(45,138,'support'),(78,138,'support'),(43,139,'technical'),(107,139,'technical'),(125,139,'technical'),(128,139,'technical'),(143,139,'technical'),(40,139,'security'),(45,139,'security'),(84,139,'security'),(105,139,'security'),(160,139,'security'),(111,139,'support'),(144,139,'support'),(40,140,'technical'),(116,140,'technical'),(117,140,'technical'),(137,140,'technical'),(199,140,'technical'),(16,140,'security'),(24,140,'security'),(109,140,'security'),(158,140,'security'),(188,140,'security'),(119,140,'support'),(197,140,'support'),(21,141,'technical'),(51,141,'technical'),(83,141,'technical'),(122,141,'technical'),(177,141,'technical'),(39,141,'security'),(84,141,'security'),(105,141,'security'),(132,141,'security'),(172,141,'security'),(200,141,'security'),(123,141,'support'),(150,141,'support'),(14,142,'technical'),(111,142,'technical'),(142,142,'technical'),(181,142,'technical'),(191,142,'technical'),(6,142,'security'),(15,142,'security'),(70,142,'security'),(146,142,'security'),(174,142,'security'),(49,142,'support'),(175,142,'support'),(30,143,'technical'),(118,143,'technical'),(119,143,'technical'),(127,143,'technical'),(154,143,'technical'),(2,143,'security'),(9,143,'security'),(10,143,'security'),(91,143,'security'),(134,143,'security'),(172,143,'security'),(3,143,'support'),(50,143,'support'),(7,144,'technical'),(50,144,'technical'),(104,144,'technical'),(132,144,'technical'),(177,144,'technical'),(21,144,'security'),(93,144,'security'),(125,144,'security'),(164,144,'security'),(182,144,'security'),(51,144,'support'),(69,144,'support'),(17,145,'technical'),(50,145,'technical'),(65,145,'technical'),(114,145,'technical'),(152,145,'technical'),(34,145,'security'),(37,145,'security'),(60,145,'security'),(122,145,'security'),(123,145,'security'),(176,145,'security'),(35,145,'support'),(199,145,'support'),(47,146,'technical'),(59,146,'technical'),(97,146,'technical'),(112,146,'technical'),(183,146,'technical'),(80,146,'security'),(83,146,'security'),(113,146,'security'),(141,146,'security'),(155,146,'security'),(66,146,'support'),(178,146,'support'),(38,147,'technical'),(50,147,'technical'),(152,147,'technical'),(167,147,'technical'),(187,147,'technical'),(27,147,'security'),(33,147,'security'),(83,147,'security'),(158,147,'security'),(192,147,'security'),(196,147,'security'),(126,147,'support'),(163,147,'support'),(35,148,'technical'),(94,148,'technical'),(150,148,'technical'),(180,148,'technical'),(197,148,'technical'),(5,148,'security'),(6,148,'security'),(82,148,'security'),(84,148,'security'),(182,148,'security'),(54,148,'support'),(136,148,'support'),(10,149,'technical'),(15,149,'technical'),(43,149,'technical'),(75,149,'technical'),(78,149,'technical'),(49,149,'security'),(50,149,'security'),(90,149,'security'),(91,149,'security'),(114,149,'security'),(31,149,'support'),(159,149,'support'),(12,150,'technical'),(30,150,'technical'),(77,150,'technical'),(105,150,'technical'),(196,150,'technical'),(31,150,'security'),(39,150,'security'),(48,150,'security'),(72,150,'security'),(74,150,'security'),(160,150,'security'),(92,150,'support'),(139,150,'support'),(5,151,'technical'),(54,151,'technical'),(60,151,'technical'),(132,151,'technical'),(155,151,'technical'),(35,151,'security'),(99,151,'security'),(118,151,'security'),(119,151,'security'),(130,151,'security'),(177,151,'security'),(39,151,'support'),(124,151,'support'),(23,152,'technical'),(99,152,'technical'),(101,152,'technical'),(103,152,'technical'),(178,152,'technical'),(45,152,'security'),(53,152,'security'),(82,152,'security'),(85,152,'security'),(136,152,'security'),(168,152,'security'),(160,152,'support'),(170,152,'support'),(91,153,'technical'),(107,153,'technical'),(122,153,'technical'),(145,153,'technical'),(193,153,'technical'),(25,153,'security'),(74,153,'security'),(161,153,'security'),(162,153,'security'),(172,153,'security'),(43,153,'support'),(67,153,'support'),(51,154,'technical'),(70,154,'technical'),(90,154,'technical'),(99,154,'technical'),(109,154,'technical'),(14,154,'security'),(35,154,'security'),(87,154,'security'),(116,154,'security'),(183,154,'security'),(189,154,'security'),(8,154,'support'),(31,154,'support'),(44,155,'technical'),(86,155,'technical'),(136,155,'technical'),(170,155,'technical'),(174,155,'technical'),(25,155,'security'),(112,155,'security'),(171,155,'security'),(183,155,'security'),(188,155,'security'),(113,155,'support'),(196,155,'support'),(8,156,'technical'),(129,156,'technical'),(148,156,'technical'),(151,156,'technical'),(173,156,'technical'),(19,156,'security'),(35,156,'security'),(95,156,'security'),(134,156,'security'),(184,156,'security'),(164,156,'support'),(171,156,'support'),(26,157,'technical'),(35,157,'technical'),(48,157,'technical'),(69,157,'technical'),(115,157,'technical'),(17,157,'security'),(74,157,'security'),(94,157,'security'),(169,157,'security'),(176,157,'security'),(189,157,'support'),(193,157,'support'),(2,158,'technical'),(154,158,'technical'),(178,158,'technical'),(184,158,'technical'),(191,158,'technical'),(35,158,'security'),(56,158,'security'),(103,158,'security'),(106,158,'security'),(117,158,'security'),(180,158,'security'),(14,158,'support'),(54,158,'support'),(41,159,'technical'),(126,159,'technical'),(134,159,'technical'),(141,159,'technical'),(151,159,'technical'),(27,159,'security'),(50,159,'security'),(53,159,'security'),(65,159,'security'),(163,159,'security'),(166,159,'security'),(74,159,'support'),(94,159,'support'),(6,160,'technical'),(26,160,'technical'),(67,160,'technical'),(164,160,'technical'),(194,160,'technical'),(36,160,'security'),(39,160,'security'),(73,160,'security'),(130,160,'security'),(141,160,'security'),(180,160,'security'),(18,160,'support'),(181,160,'support'),(6,161,'technical'),(30,161,'technical'),(104,161,'technical'),(115,161,'technical'),(147,161,'technical'),(22,161,'security'),(26,161,'security'),(49,161,'security'),(97,161,'security'),(164,161,'security'),(76,161,'support'),(135,161,'support'),(4,162,'technical'),(15,162,'technical'),(101,162,'technical'),(109,162,'technical'),(172,162,'technical'),(40,162,'security'),(77,162,'security'),(79,162,'security'),(84,162,'security'),(126,162,'security'),(75,162,'support'),(149,162,'support'),(12,163,'technical'),(35,163,'technical'),(58,163,'technical'),(106,163,'technical'),(145,163,'technical'),(52,163,'security'),(80,163,'security'),(82,163,'security'),(103,163,'security'),(118,163,'security'),(166,163,'security'),(102,163,'support'),(172,163,'support'),(92,164,'technical'),(93,164,'technical'),(100,164,'technical'),(103,164,'technical'),(132,164,'technical'),(65,164,'security'),(70,164,'security'),(110,164,'security'),(126,164,'security'),(166,164,'security'),(50,164,'support'),(104,164,'support'),(29,165,'technical'),(128,165,'technical'),(129,165,'technical'),(171,165,'technical'),(184,165,'technical'),(21,165,'security'),(37,165,'security'),(118,165,'security'),(163,165,'security'),(176,165,'security'),(12,165,'support'),(161,165,'support'),(51,166,'technical'),(81,166,'technical'),(122,166,'technical'),(171,166,'technical'),(194,166,'technical'),(7,166,'security'),(23,166,'security'),(109,166,'security'),(129,166,'security'),(140,166,'security'),(178,166,'security'),(11,166,'support'),(157,166,'support'),(18,167,'technical'),(30,167,'technical'),(96,167,'technical'),(138,167,'technical'),(155,167,'technical'),(1,167,'security'),(36,167,'security'),(47,167,'security'),(70,167,'security'),(146,167,'security'),(42,167,'support'),(152,167,'support'),(14,168,'technical'),(33,168,'technical'),(64,168,'technical'),(128,168,'technical'),(175,168,'technical'),(20,168,'security'),(27,168,'security'),(46,168,'security'),(74,168,'security'),(188,168,'security'),(123,168,'support'),(170,168,'support'),(34,169,'technical'),(134,169,'technical'),(172,169,'technical'),(174,169,'technical'),(188,169,'technical'),(39,169,'security'),(122,169,'security'),(136,169,'security'),(173,169,'security'),(200,169,'security'),(102,169,'support'),(184,169,'support'),(57,170,'technical'),(90,170,'technical'),(92,170,'technical'),(190,170,'technical'),(196,170,'technical'),(12,170,'security'),(25,170,'security'),(55,170,'security'),(162,170,'security'),(188,170,'security'),(5,170,'support'),(154,170,'support'),(67,171,'technical'),(70,171,'technical'),(97,171,'technical'),(122,171,'technical'),(170,171,'technical'),(95,171,'security'),(105,171,'security'),(143,171,'security'),(164,171,'security'),(187,171,'security'),(196,171,'security'),(27,171,'support'),(120,171,'support'),(60,172,'technical'),(96,172,'technical'),(125,172,'technical'),(151,172,'technical'),(172,172,'technical'),(20,172,'security'),(25,172,'security'),(87,172,'security'),(108,172,'security'),(129,172,'security'),(52,172,'support'),(142,172,'support'),(30,173,'technical'),(121,173,'technical'),(144,173,'technical'),(162,173,'technical'),(196,173,'technical'),(11,173,'security'),(106,173,'security'),(143,173,'security'),(155,173,'security'),(195,173,'security'),(80,173,'support'),(124,173,'support'),(12,174,'technical'),(22,174,'technical'),(177,174,'technical'),(191,174,'technical'),(197,174,'technical'),(4,174,'security'),(29,174,'security'),(117,174,'security'),(154,174,'security'),(158,174,'security'),(53,174,'support'),(180,174,'support'),(98,175,'technical'),(120,175,'technical'),(126,175,'technical'),(140,175,'technical'),(158,175,'technical'),(22,175,'security'),(93,175,'security'),(115,175,'security'),(168,175,'security'),(179,175,'security'),(44,175,'support'),(193,175,'support'),(12,176,'technical'),(29,176,'technical'),(70,176,'technical'),(157,176,'technical'),(160,176,'technical'),(38,176,'security'),(63,176,'security'),(74,176,'security'),(150,176,'security'),(153,176,'security'),(3,176,'support'),(172,176,'support'),(2,177,'technical'),(85,177,'technical'),(104,177,'technical'),(153,177,'technical'),(171,177,'technical'),(23,177,'security'),(110,177,'security'),(125,177,'security'),(161,177,'security'),(184,177,'security'),(14,177,'support'),(88,177,'support'),(25,178,'technical'),(49,178,'technical'),(55,178,'technical'),(82,178,'technical'),(117,178,'technical'),(22,178,'security'),(60,178,'security'),(89,178,'security'),(115,178,'security'),(155,178,'security'),(77,178,'support'),(102,178,'support'),(44,179,'technical'),(70,179,'technical'),(113,179,'technical'),(123,179,'technical'),(186,179,'technical'),(40,179,'security'),(73,179,'security'),(86,179,'security'),(125,179,'security'),(157,179,'security'),(7,179,'support'),(16,179,'support'),(3,180,'technical'),(22,180,'technical'),(44,180,'technical'),(67,180,'technical'),(182,180,'technical'),(136,180,'security'),(143,180,'security'),(144,180,'security'),(167,180,'security'),(185,180,'security'),(35,180,'support'),(150,180,'support'),(4,181,'technical'),(24,181,'technical'),(33,181,'technical'),(96,181,'technical'),(145,181,'technical'),(9,181,'security'),(16,181,'security'),(45,181,'security'),(98,181,'security'),(117,181,'security'),(200,181,'security'),(146,181,'support'),(190,181,'support'),(112,182,'technical'),(133,182,'technical'),(158,182,'technical'),(177,182,'technical'),(185,182,'technical'),(33,182,'security'),(71,182,'security'),(118,182,'security'),(141,182,'security'),(142,182,'security'),(58,182,'support'),(117,182,'support'),(3,183,'technical'),(111,183,'technical'),(156,183,'technical'),(165,183,'technical'),(189,183,'technical'),(24,183,'security'),(60,183,'security'),(102,183,'security'),(104,183,'security'),(110,183,'security'),(95,183,'support'),(146,183,'support'),(36,184,'technical'),(65,184,'technical'),(66,184,'technical'),(120,184,'technical'),(174,184,'technical'),(5,184,'security'),(50,184,'security'),(93,184,'security'),(99,184,'security'),(130,184,'security'),(193,184,'security'),(105,184,'support'),(116,184,'support'),(42,185,'technical'),(118,185,'technical'),(170,185,'technical'),(183,185,'technical'),(194,185,'technical'),(11,185,'security'),(59,185,'security'),(107,185,'security'),(165,185,'security'),(169,185,'security'),(102,185,'support'),(150,185,'support'),(7,186,'technical'),(15,186,'technical'),(76,186,'technical'),(114,186,'technical'),(139,186,'technical'),(31,186,'security'),(33,186,'security'),(83,186,'security'),(118,186,'security'),(171,186,'security'),(43,186,'support'),(121,186,'support'),(49,187,'technical'),(64,187,'technical'),(101,187,'technical'),(112,187,'technical'),(194,187,'technical'),(38,187,'security'),(81,187,'security'),(154,187,'security'),(169,187,'security'),(172,187,'security'),(156,187,'support'),(165,187,'support'),(9,188,'technical'),(29,188,'technical'),(96,188,'technical'),(108,188,'technical'),(190,188,'technical'),(35,188,'security'),(85,188,'security'),(110,188,'security'),(142,188,'security'),(144,188,'security'),(176,188,'security'),(56,188,'support'),(86,188,'support');
/*!40000 ALTER TABLE `role_of_personel_on_event` ENABLE KEYS */;
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
  `seller_ID` int(11) NOT NULL,
  PRIMARY KEY (`seller_ID`),
  CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`seller_ID`) REFERENCES `visitor` (`visitor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (2),(3),(8),(35),(57),(93),(98),(109),(114),(132),(137),(145),(146);
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
INSERT INTO `technical_equipment` VALUES (1,1,'Speaker','Animal very military in course account state. Head board take away yes and.'),(2,1,'Light','Name reduce present cut ok sound serious. Meet medical by form. General task new buy cup sell.'),(3,1,'Console','Of water agreement small paper road center. Imagine question yet side travel campaign administration him.\nSave raise whatever high. Sit probably true condition rest. Also husband while ask.'),(4,1,'Console','Although serve energy. Vote something ok career manager whose myself. Pattern organization kind administration.'),(5,1,'Special effect','Way concern water form family education wait. College sell someone soldier challenge couple.'),(6,1,'Microphone','Thought visit factor child break. Since attack why common chair any window deep. Month many soldier interesting us either.'),(7,1,'Light','Stand tonight right only. Particular their thank exactly sport. Ago while cut draw enough mean avoid.'),(8,1,'Speaker','Sign have western operation mean agreement use.'),(9,1,'Speaker','Camera data yourself particularly drug surface improve. Loss dream personal pattern despite.'),(10,1,'Speaker','Yourself born control above operation more ask guess. Guess cold central responsibility behavior certain. Rise laugh whom safe leg process response.'),(11,1,'Special effect','Agent fight suddenly parent. Everything performance American attack score hand gas. Each skin weight.'),(12,1,'Speaker','Cause everyone evening response high.\nSeven personal type over piece general surface. Keep president clear partner. Total later true certain manage back high who.'),(13,1,'Speaker','Evidence word adult large. Already old for. Blood learn lay story teacher significant not which. Simply feeling room much capital station.'),(14,2,'Speaker','News season reduce less. Animal keep here history force.\nParent other small month.'),(15,2,'Console','Enter ten into family happy piece want. Rise tough treatment back. Protect north house wide quality heart research.'),(16,2,'Microphone','Worry among build need hour structure. Unit see herself skill so.\nDinner large air ever understand develop figure city. Prove note party bar hard.'),(17,2,'Light','Particularly soldier each dark health matter. Bring three end off hand. Dream project catch dog part recent test.'),(18,2,'Special effect','Tell current think spring. Clearly bar conference sit final result within. I recently model.\nHand head kind it pretty interview sing yes.'),(19,2,'Light','Huge ability research Mr true us movement. Talk into chair happen budget color take.'),(20,2,'Console','Blue general scientist represent. Total describe arrive house. Choice rock resource.\nLook much fine exist. Spend among short staff ok my child.'),(21,2,'Light','Form find miss practice. Table peace give white source history card. Down effort church fly.'),(22,2,'Special effect','Land law mean. Probably address beat six note movie. More statement plan director.'),(23,2,'Special effect','Eight more girl his law just. Other in challenge first explain apply piece whose. Employee help cup.\nOwner crime bank bank.'),(24,3,'Microphone','Race east others law.\nParty hair hit. Skill think color election similar notice. Phone environment build keep write.'),(25,3,'Special effect','Lead institution several trial. Wife thank professional dinner Congress always college.'),(26,3,'Console','Your I identify simply action section attorney attack. Suffer kid public down nice again shake.\nCentury into appear nor director risk manage.'),(27,3,'Light','Book artist pass father myself account. Picture century hot quality allow.\nItself success sit sure general.'),(28,3,'Special effect','Artist street production blood stop money lawyer. Recently trade during mean.\nThus worry body allow several assume. Building popular she person person. Start nation nothing paper.'),(29,3,'Console','Wear how bag once throw. Show identify ready oil simply. Far future possible this floor public article but.'),(30,4,'Speaker','Four behavior or identify war give. Himself coach despite pretty their within generation million. Or poor page rise.'),(31,4,'Speaker','Seven head floor article ever. Crime century report mouth drop fund commercial increase. Power cold wait race often entire gun risk.'),(32,4,'Special effect','Billion ask decision. Your civil agreement throw make draw board.'),(33,4,'Special effect','You program everything specific service former per. Piece particular make manager. Value similar nature kid big.'),(34,4,'Microphone','Story similar people Republican marriage structure. Receive family hope loss.'),(35,4,'Speaker','Social sea may box language economy professional. Two industry stop nor lawyer. Not should nothing attention.'),(36,4,'Light','Care pattern home maintain enough government whole enjoy. Where control speak forward baby series.'),(37,4,'Console','The her guy even art. Rise data term discover the care. May actually age fact our.'),(38,4,'Special effect','Woman case represent. Husband station nation build resource scientist. Trial image police.\nDetail high finally citizen cup pull. Color turn answer particular scene good employee.'),(39,4,'Special effect','Rock deep ground stay. As since anyone lose security stand soon. Me ready yet carry point.'),(40,4,'Console','Single sport little employee baby rich listen. Production hard others actually.'),(41,4,'Speaker','Product trial let those cup often evening. Pick quite together tonight than audience. Throw to series coach.'),(42,4,'Light','Affect once ago could assume likely career. Energy current important religious.\nAgency factor benefit myself. Write couple hope foot offer return.'),(43,5,'Console','Customer year exist glass media. Analysis send set different mean young. Than music officer face.'),(44,5,'Speaker','Music experience cost remain stage. Short day send practice later minute here save. Star level positive kitchen four marriage third.'),(45,5,'Microphone','Dream really campaign memory. Raise find fight white against. Somebody week dream. Both assume total modern.'),(46,5,'Microphone','House scientist visit quality concern ok team. Pretty actually market strong use. Baby allow such quickly.'),(47,5,'Special effect','Certain rich next you like Mrs point. Democrat sound among kid property this interesting. By like discover.'),(48,5,'Console','Thus must family out sure. Be growth direction maintain.\nYeah civil look. Raise camera media market.\nBlue prove right last. Worry human near next. Strategy gun usually but.'),(49,5,'Light','Air population thousand alone team. Myself big task production down.'),(50,5,'Special effect','Suffer key analysis enjoy item organization individual. Why might many Congress site.\nLetter page nor lot.'),(51,5,'Console','Religious hot give stage accept. Culture where direction.'),(52,5,'Speaker','Sing able indeed deep than provide attention behavior. Recognize arm rest soon air change story eye.'),(53,5,'Console','Young so far together exist edge. Benefit drug nice start. Town entire market list. Century president play out plan.'),(54,5,'Speaker','There happen finally simply difference listen think. In measure treat light person. State five hour choose center. North scientist which left.'),(55,5,'Microphone','Pressure season PM sit clearly. Military exist second network west among determine.'),(56,5,'Microphone','Defense risk manager will. Middle take pass certainly.'),(57,6,'Special effect','Everything actually action effect minute always. Where second green between it focus should.'),(58,6,'Light','Face support return brother how laugh. Movie lawyer individual challenge usually form tough. Team create well for politics wish professional.'),(59,6,'Speaker','According no participant hand end total various range. Clearly over miss knowledge scientist much end. Against between character skin window modern.'),(60,6,'Microphone','With activity my summer become hotel point next. Term option standard risk. Their with power prepare factor money management.'),(61,6,'Microphone','Way newspaper feeling win prevent. Something best listen feeling including inside think.'),(62,6,'Light','Religious thought year perform. Memory heavy nor indeed happen fly management. Budget course mission offer conference almost key.'),(63,6,'Speaker','Certainly until rich since reflect save land. Large way teach company speech region.'),(64,6,'Speaker','Again agreement easy friend draw final. Sound man minute operation ask total. Reveal own enter evening Mrs call fish open.'),(65,6,'Microphone','Process soon visit fire not. Medical you project base.'),(66,6,'Speaker','Individual present little conference parent option. Try base significant rather section.'),(67,6,'Light','Enter executive sign purpose add local.\nCurrent ok data one among hard record leg. Out fine budget put bring.'),(68,6,'Microphone','Billion word long unit firm Democrat daughter. Boy life test inside development president pick.'),(69,7,'Special effect','Case executive nation. Character answer class clear tax policy break.\nHouse quite raise. Describe act good political indeed. In cup wish direction church chair heart audience.'),(70,7,'Special effect','Only inside leg none. Song my newspaper ready work dinner many. Name most game memory hear American.'),(71,7,'Special effect','Claim however tend hear movement. Standard industry figure compare method. Today something mean until increase.\nDemocrat most soldier movie. Parent real about teach.'),(72,7,'Light','Account us story second security.'),(73,7,'Special effect','Spend firm author then whether. Claim mind among value where. Body continue light weight.'),(74,7,'Console','Film her happy trip something generation dream. Usually field admit effort commercial.'),(75,7,'Speaker','Political half everybody interesting source why. Minute human sound across. Reveal tough range property blood.\nIndicate number green.\nStage help require.'),(76,7,'Speaker','Relate Mrs new not account.\nSit represent opportunity see visit design poor staff. Low police positive everyone quality street white.'),(77,7,'Microphone','Score hand defense car admit add both.\nArticle partner impact. Company fish politics new family produce. Fight series effect bad know heavy season.'),(78,7,'Console','Blood even of current produce. Popular hospital threat treatment do. Win piece listen manager scene feeling couple.'),(79,7,'Microphone','Coach type vote drop agency goal happen identify. Style sing factor race program discover worker. Somebody fund reflect. Someone coach her under each cultural.'),(80,7,'Console','White country administration early word coach manager. Central civil any there exist own wife.'),(81,7,'Console','Attention hope study throughout nor full. The term whose until decide goal.\nWhether example rich still. Public often stuff floor.'),(82,7,'Speaker','Too reality some long. Accept reflect ability piece. Investment mention fight dog relate prevent former like.'),(83,7,'Microphone','Think her whether put. Loss fact professor present.'),(84,8,'Speaker','Back southern recently whether Mr especially. Yard image country spend measure physical Congress four. War campaign research education let.'),(85,8,'Speaker','Toward reflect too who. Onto bad rate collection subject.\nAmong beat interesting. Development vote leave article discover sing. Sit order study simple practice.'),(86,8,'Special effect','Sing what staff star another recently. Pretty my our million prove.'),(87,8,'Light','Brother source even security source fall especially. Student nature long south else.'),(88,8,'Microphone','Speech meet much I recognize start hope. Certain brother and peace watch.'),(89,9,'Console','Able bed activity garden conference card. Time total part represent provide performance. Feeling note study win mission nature.'),(90,9,'Speaker','Stage particular hair heavy hope guess data. Great foot my consider.'),(91,9,'Light','Include true family price student teach defense. Direction must edge film program. Clearly again example senior necessary.'),(92,9,'Special effect','Base whether fill body. Draw country join protect tough vote.\nTraining phone reach top crime theory. Skill four enough subject test memory material.'),(93,9,'Microphone','Lay south take prove. Old all could second house talk. Your city glass six majority wish network check.'),(94,9,'Speaker','Size pick parent lead create reach. Participant alone coach town hundred billion approach.'),(95,9,'Light','Throw environmental man. Rule put admit admit Mrs some.'),(96,9,'Microphone','Anything protect onto raise understand. Wide director throughout back middle front.'),(97,9,'Speaker','Property concern beyond sport. Anything participant attorney control.'),(98,9,'Console','Move travel left stage set effort leg. Write detail front pull.'),(99,10,'Microphone','Unit I box region according term he interest. Technology network free citizen night.'),(100,10,'Special effect','Car executive its even voice spring. Customer movie baby today security quickly always.'),(101,10,'Microphone','Break party drug speak think. Everything I different late past.\nSeem own sometimes piece.'),(102,10,'Microphone','Who popular sound tend game watch. Week forget Mr surface institution full.'),(103,10,'Console','Discover perform ground. Moment page together reason exist really.\nSpend son factor rise town attack. Build since production tough fund fear they.'),(104,11,'Console','Recently interesting nearly rate. Building remember consider may just. Too human room state indeed opportunity common.\nSon point fact.'),(105,11,'Special effect','Recent traditional field large positive. Data past high provide lose industry teach. Despite those foot growth force until section line.'),(106,11,'Special effect','Some opportunity civil century. Main father gas hundred option.\nExactly conference PM citizen. Drug economy their. Cultural understand activity likely both.'),(107,11,'Light','Boy hour ten law. Third new various possible subject resource and.'),(108,11,'Console','Huge situation tonight middle white continue range. Address run week author plan. Out recognize top full.\nWithout between person do include.'),(109,12,'Light','Party ground car former reflect. Dark begin democratic. Woman then Democrat without campaign conference. Back he meet very suffer real budget.'),(110,12,'Special effect','Painting loss on little catch.\nExist out join true space against as. Avoid positive political room rule study.'),(111,12,'Light','Here few area part building today out. Middle son big consumer different game. Notice indicate stop have career expect movie.'),(112,12,'Speaker','Generation question writer issue professor compare. Improve anyone industry history score party training.\nArm among west unit.'),(113,12,'Special effect','Officer central her.\nAir discuss spring system interesting call effort. Among town should question green require collection.'),(114,12,'Console','Set manager crime system provide rule safe. Sure small watch issue financial. Participant name best early.'),(115,12,'Console','Their sort bed time project daughter. Worry none two.\nDiscussion fear financial how pick maybe. Car create read matter how.'),(116,12,'Light','Where majority already view.\nEach south parent car Mrs perhaps fall. Develop idea mouth kitchen magazine.'),(117,12,'Microphone','Particularly course exist force necessary yet. Vote try sell her.\nDescribe rock read condition. Right at shake physical value. Ask customer break as.'),(118,12,'Light','Believe station rate road father data check choose. Politics Republican which. Medical friend public rest direction onto.\nTelevision charge computer stand.'),(119,12,'Speaker','Federal exist design employee. Pressure idea instead many heavy worry material. Student where inside set term.'),(120,12,'Microphone','On campaign suffer. Level tree plan approach newspaper force image.\nDecision prove force perform oil treatment. Score window cost throughout ground several interest.'),(121,12,'Light','Southern board for ask. In level let sing follow.\nDo region require. Here general where these direction room hard. Parent environment information.'),(122,12,'Light','Deal week skin behind. Produce store I threat.\nWeight feel civil expect picture.'),(123,12,'Light','Share account energy figure discuss exactly happy. Per available sing individual.'),(124,13,'Microphone','Listen at street home court whole. Increase fact performance draw Mrs town score then. Medical plan conference too continue situation true.'),(125,13,'Special effect','Lose set use. Wrong surface act oil head.\nMiddle full notice base share pressure cup. Item bring short. Coach difference into give.\nRed anything soldier section lay recent.'),(126,13,'Special effect','Rather model task. Everyone sell next floor. Strong hour lay senior.'),(127,13,'Microphone','Admit adult ever party cost relationship.\nTime you four property budget. House near staff safe account official plant.'),(128,13,'Light','Likely same born state federal position. Beautiful week reason floor spring dream. Capital film interest. Right benefit what hear also.'),(129,13,'Speaker','Base defense direction show focus send too. Property carry travel interesting fight ball. Majority region place.'),(130,13,'Console','They cell draw blood inside million order. Subject positive movement name base where.\nDeal music wait majority cost agree. Business wide indeed decision thought science fine.'),(131,13,'Speaker','Dog join where authority phone. Without how meeting meet travel bill.\nAs nearly religious firm receive something since.'),(132,13,'Console','Could check child lose interest arm. Machine apply realize between nation officer consumer. Strong official behavior board role cost.'),(133,13,'Microphone','Member do cut draw career major. Song time key check. Full control room beyond like then smile recent. Author cup view.'),(134,13,'Light','Off attorney style much compare arm like. Approach health money hot of win always.'),(135,14,'Console','Quickly course single. Then see maintain your event less.'),(136,14,'Console','Play both here she. Direction treat weight sometimes.'),(137,14,'Microphone','Bag summer property option win actually listen teacher. Rock same improve like yet sell.'),(138,14,'Microphone','Share my boy rule sound prove. Building want care baby.\nBlack great age trade about. How card popular article speak hand tell.\nStay tough indicate maybe be unit.'),(139,14,'Light','Culture take price. Population although reason job want.'),(140,14,'Microphone','Marriage market possible beautiful main.\nEnjoy test home determine environmental. Research way recent mean. White beautiful language answer data paper international.'),(141,14,'Speaker','Become deal audience you. Move after build thing thought none break. Best activity win own relationship seem teach.'),(142,14,'Console','Send general office blood machine gas day available. Foot deep certain size.'),(143,15,'Special effect','Very rich human alone mention tell but gas. Whatever position soldier family value. Low stop election detail.'),(144,15,'Microphone','With own sing mission read.\nFew science result service hospital kind interesting loss. Fast choose gun gas.'),(145,15,'Special effect','Need reveal himself upon during sit almost. Customer off size against.'),(146,15,'Speaker','Different possible shake write part.'),(147,15,'Speaker','Great listen exist state store. Religious list sort training film by himself.'),(148,15,'Speaker','Win at network campaign. Left rise generation tax. Determine old agreement until front interesting. Student watch nation this laugh first.'),(149,15,'Speaker','Role truth story anyone large case evidence because. Test weight mother they.\nMy bad cover learn begin into. Participant understand lot. Case worker western age.'),(150,16,'Light','Police student seem history half degree agreement. Contain push read rise writer brother likely its.'),(151,16,'Console','Individual could thank value culture wait.'),(152,16,'Speaker','Inside actually authority difference measure white natural agree. Stand record people hard.'),(153,16,'Microphone','Participant kitchen build employee. Ability black through though.\nAssume husband effect research. Home of region practice movie service room care.'),(154,16,'Light','On save individual who. Part my minute serious live within security. Bad true development treat better away just.\nLeg forward open book tend talk.'),(155,16,'Light','Thus success court all support issue marriage. Line senior hand pick red.\nAt cover process type price. Smile she thank land share understand.'),(156,16,'Speaker','Discussion able job score ever else. Across she son possible. Box figure morning follow within.\nFast PM current reveal. Provide investment ok party.'),(157,16,'Light','Order relationship many animal important. There west buy soon report create.\nTest black home see. Group bad president less husband. Under guy book step article. Side determine act.'),(158,17,'Microphone','Stand wind strategy skin. Figure four simple build goal throughout very. They I politics our rate.'),(159,17,'Light','Full call age. Cultural interesting hard local lay property writer. News yeah president may themselves.'),(160,17,'Special effect','Career level fall professor foot. Drop wonder civil use wife him. Begin use let until run let nor hour.\nSoon house worry. Might fact lead speech phone trip.'),(161,17,'Speaker','Born color suffer policy question. Speak week ten human camera government offer.'),(162,17,'Console','Agree kitchen race call pretty service. Include little wrong end without. Around determine it address.\nArgue sign month ever two. Child her box if.'),(163,17,'Light','Career month capital stage end south different easy. Director shake agree authority president. Deal hope station they dog poor.'),(164,17,'Microphone','Crime prove drop behavior. Almost ever where determine magazine begin citizen. Across agreement market.'),(165,17,'Console','Commercial religious require military do else. Power who political she individual upon current. Out through they also keep share site.'),(166,17,'Console','Public modern nature laugh morning interest. Such product life. Argue themselves cause tree you.\nOff deep training mission the other. Office room type wish against.'),(167,17,'Console','Recently eat physical and education. Get heart situation response your.\nHope imagine above attack. Choice cost scientist bring hospital against.'),(168,18,'Light','Significant five far sea serve would near. Movie read accept simply. She five staff wall. Car send certainly meet benefit.'),(169,18,'Special effect','Through send social report prepare station like. Forget perform certainly buy decide bad baby chair.'),(170,18,'Console','Despite behind north new same toward result. Order anything enough shoulder. Fly moment believe role.'),(171,18,'Speaker','Own study avoid through wait. Discover land might nearly century food. Ago well public apply.\nGirl drive economic executive pay strategy civil.'),(172,18,'Console','Deal network right. Color the may low. Senior job father court point interest mission Mr.\nBuild image manage. Region sign west ahead. Society impact sort couple exist majority piece.'),(173,18,'Speaker','Consumer discover stage group feel car. Although pick southern such last.\nInterview common bring pick about last likely.'),(174,18,'Special effect','Attorney show blue eat church conference. Magazine role sell cup no recently. Who sea old into go difficult item bill.'),(175,18,'Microphone','Draw just administration consumer table thing husband. Grow garden fast. Student see customer parent around.'),(176,18,'Special effect','Work class kid address policy. Thank other finish learn benefit reveal under. Worry everybody thus car moment person.'),(177,19,'Microphone','Especially former artist air. Director stock science bag brother. Carry many need husband into travel best glass.'),(178,19,'Console','Similar often officer court rise indicate stand. Provide already issue democratic. No sea leave agreement specific.'),(179,19,'Microphone','Final ago subject mother concern. Collection kitchen hand whether market citizen.'),(180,19,'Special effect','Answer enter it really high. Together prevent blood understand. Camera discussion lay at pretty beautiful. Husband treat lead all study partner.'),(181,19,'Special effect','New defense area television plan nothing simple attention. Later policy along college could stay.'),(182,19,'Microphone','Return begin effect yourself. Way the into five. Develop music source responsibility develop.'),(183,19,'Microphone','Simple sometimes create as without. Across analysis fact especially have official. Fish might attention around movie source.'),(184,19,'Special effect','Republican kind service head.'),(185,19,'Console','Man now red general appear imagine enjoy. Raise large like little Congress. Girl treatment nation member may practice candidate.'),(186,19,'Special effect','Thank natural yourself bill. Some firm population language senior arrive rate generation. Current significant education event.'),(187,19,'Speaker','Them without stand south writer sure. Prepare white type send cup arrive suffer.\nStreet commercial many none say wish several. Participant better third near cell.'),(188,19,'Microphone','Station service drug key doctor. Goal somebody nothing through down.'),(189,19,'Light','Contain water really experience home magazine. Space process center health challenge wait. Suddenly according three about style he.'),(190,19,'Console','Spring sometimes race gas feel he. Fire before mouth cold.\nAttorney successful late sea avoid meeting. City today now less next number. Fill cold effect near.'),(191,20,'Speaker','Under upon themselves glass. Nearly across development once find sing too. Doctor without image share easy about sure.'),(192,20,'Microphone','Across ten then create about during under. Phone back drive even this relationship do.'),(193,20,'Special effect','None though manager to. Open series exactly idea tough couple attorney.\nBank control hard soon right reality. Quickly able hospital film activity. Inside staff become.'),(194,20,'Console','Let these parent able surface once son beat. Record ask argue.\nStart amount live build sister success. Responsibility avoid story article some now western.'),(195,20,'Speaker','Right over walk information dinner other we some. Western yourself firm born. Lose opportunity Mr pretty central exactly once.'),(196,20,'Special effect','Message value actually near newspaper couple stage program. Feeling yard place rule. Republican thousand oil base far gas continue week.'),(197,20,'Console','Minute project ask picture. Activity generation win assume. Buy live individual film center court little.'),(198,21,'Special effect','Fear arm force wide again then somebody. Often big seek of role. Identify director large together among baby.'),(199,21,'Microphone','Several green move great. Of method pick rule western.\nRespond stand standard green.'),(200,21,'Microphone','Data establish remain identify. Republican partner eight this. Case response as face create look material.'),(201,21,'Microphone','Reach nature newspaper story without writer model. Owner choice interview join great arm.\nAnd center record spring door. Position our choose can food. Here occur ok across member people.'),(202,21,'Microphone','Forget at player. Race history commercial scientist one situation top.'),(203,21,'Speaker','Town performance natural. Head family offer current pass your cold.'),(204,21,'Console','Risk ground mind trip writer ever marriage. Member night audience bring town machine beyond I. Door little one explain until.'),(205,22,'Light','Short really which. Probably father order son. Benefit reach describe financial too.'),(206,22,'Light','Song toward outside marriage see.\nRegion conference government imagine note me. Window defense American the. Crime almost drug effort concern foreign.'),(207,22,'Console','End market relationship able. Skin effort maybe stage mouth life. Recently because first continue argue.'),(208,22,'Light','Company yes dog provide mind pay enjoy else. Sport leave these follow. Democratic security police back for leg understand.'),(209,22,'Speaker','Easy court attack important explain. Today game eat wish.\nCoach fast question say church. Pretty road follow generation partner long live.'),(210,22,'Light','Much but test letter get yourself. Economy through cold remember.'),(211,22,'Special effect','Director less after. Suddenly there represent third create. Might his lay toward door.\nCapital model laugh style him. Road money window only once part number everybody.'),(212,22,'Light','Game thus debate. Size through fire Mr beyond same entire. Ahead respond reason music.\nThroughout their be politics use number worry. Carry truth pull resource.'),(213,22,'Special effect','Range kind full tree report. Visit admit everything mean.\nRecent heavy start offer. To per fill course eight light. Play buy weight never society issue.'),(214,22,'Speaker','Agreement someone the bar add to. Month they rate success. Question remain expert sign positive her page.\nSure alone improve.\nDevelopment grow win former school.'),(215,22,'Light','Rather manager area study throughout floor free. Blood successful beautiful.'),(216,22,'Speaker','End apply research Mrs agent. Detail act only over test under.\nProvide right ten. Way service girl attorney. Show democratic describe military present.'),(217,23,'Console','Purpose approach standard ahead something candidate wall tree. Majority seek southern before simply. Material program science media.'),(218,23,'Microphone','Outside become nearly hard entire like safe. Among himself thank your watch. Summer whose above force personal. Parent we another knowledge cover.'),(219,23,'Special effect','Network yes relate another nothing should. Next despite adult American account. Model pattern project response live consumer all.\nSmile sing deep. Evening ago including behavior kitchen future very.'),(220,23,'Microphone','Decade focus sister wonder memory. Mind good medical need early wind. Tell contain especially best learn.'),(221,23,'Microphone','Less former show some decide doctor. Look expect ready base even step policy.\nDiscuss can give range walk. Into reality score use join wrong fall.'),(222,23,'Console','Behind record tend change student another father. Bag election morning. On positive show develop.'),(223,23,'Speaker','Situation perform benefit only heart reveal member now. Tv car book.'),(224,23,'Console','Catch cut raise somebody vote black decade me. Operation population food impact discussion sign.'),(225,23,'Special effect','Tonight condition red study choose exactly. Between see anyone tonight. Morning according figure to sense. Who management beautiful able.\nEnd everything even in box. Pay policy second tough cause.'),(226,23,'Console','Military suddenly well student pattern eight course. Goal explain really experience despite season have.'),(227,24,'Special effect','Year heart some as poor discussion too success. Energy discover federal beat create traditional news address. Skin once popular cup owner democratic.'),(228,24,'Microphone','Direction prevent white may. Send magazine example.'),(229,24,'Special effect','Investment play return outside. Food baby even. Everyone responsibility myself and special involve color.\nYourself need prevent thing dinner race similar.'),(230,24,'Special effect','Bag condition owner rock rich write hospital. She run PM sound.'),(231,24,'Special effect','Carry design dark someone before necessary. Fine ten two color end. Increase move else old forward Congress.'),(232,24,'Console','Line side start including adult pay interest. Offer trip bed deal rule. Effect new describe image maybe win.'),(233,24,'Light','Just organization program this network any. Financial create space fish vote debate.\nSeek in campaign support edge. Office late control family thus themselves.'),(234,24,'Speaker','Walk include care discover against break. Into forward inside play.\nCoach treat best attorney deal first. Every process top as thank mind.'),(235,24,'Speaker','Employee most compare and scene surface race. Threat sound team book full other.\nSouth building job pay watch thought quality. View kitchen suffer beat their evidence outside.'),(236,25,'Special effect','Put bar picture fall score. Yourself administration fire material front oil popular. National thousand candidate police.'),(237,25,'Console','You summer dog cup hotel successful close start. Both here resource free morning receive key.\nFace think on civil site.'),(238,25,'Speaker','Business budget community both century either million. Must blood technology mission assume.'),(239,25,'Light','Treat crime modern decade would. Future firm week heart oil party sister.\nPerform guy call too four it. Such thought let.'),(240,25,'Light','With store skill loss. Build suddenly have challenge month sport today. Visit approach open executive it political.'),(241,25,'Light','Policy fear risk current trade development Republican. Imagine organization who store. Onto moment black.'),(242,25,'Light','Learn participant action none only town. Body six red.\nPosition before message leg.'),(243,25,'Console','Weight opportunity strong me interview easy perform. Many development produce others figure particular present.\nEnvironment base history amount fall bill.'),(244,25,'Console','Low several agreement law position. Common environment approach become tonight have growth.'),(245,25,'Light','Decide six friend drop wonder. World prevent ask mind.'),(246,25,'Microphone','Peace point strategy success base. Line firm rock join prepare religious.'),(247,25,'Console','Stand create decide which necessary. Author several as. Although election vote.'),(248,25,'Speaker','Friend this whose for save population remember.\nWhich health allow she out. Must Congress enough in.'),(249,25,'Speaker','Couple region feeling by national purpose expect how. Turn star bed marriage.'),(250,25,'Speaker','Concern mouth quality. Past join ask vote free pay.\nAmong note include this. Term lot new city five compare. Certainly audience large she meet.'),(251,26,'Light','Option parent arm travel. Skin back around ground rate sort share view. Miss detail newspaper end where attack himself song.'),(252,26,'Console','Clearly rise red institution eye care. Anyone off painting skin piece these message.'),(253,26,'Console','All it list seven. Service probably piece candidate challenge about moment cover. Democratic certain heavy risk know.'),(254,26,'Light','Each necessary actually. Television little role science government.'),(255,26,'Console','Boy hair rate executive task. Into real onto firm father place say computer.'),(256,26,'Microphone','Cell stock spring control price design. Care leg science mission.'),(257,26,'Light','Kind party each. Avoid fill we deep memory can may I. Dinner trouble gas.\nFill again dream. Cup close ability win.'),(258,26,'Speaker','Size exactly range school back energy outside. Real treatment friend conference use bit him.'),(259,26,'Microphone','Every benefit boy type leader rule message. Available language him dream. Final attack increase her they.'),(260,27,'Microphone','Almost indicate far book. Five federal trip organization.\nResult girl kid serious. Heavy sort course range on when. Collection speech available door.'),(261,27,'Microphone','Forward focus account mean season. Cup around city phone upon no war. Wide their enter movement star. Tax majority kitchen clear personal.'),(262,27,'Special effect','About experience game few perform someone. Well main attention night option kitchen. Only player eye unit form contain.'),(263,27,'Special effect','Consider that begin know machine big. Finally social almost finish strategy. Modern choice woman physical.'),(264,27,'Microphone','Media hope try meeting current fly sell. Development place significant natural near law position. Probably sense might win.'),(265,27,'Console','Him assume election such. Site save resource. Total turn major view again from matter itself.'),(266,27,'Speaker','Statement dinner marriage per science. During which ready hair reflect sea order.'),(267,27,'Speaker','Page support next item window citizen. Reason number whatever your drug grow financial. Look visit manage admit more high start suggest.'),(268,27,'Special effect','Consumer use those discuss a. Might prove Mrs road question goal mention answer.\nRemember hundred view public choose serious throw. Now history sure ever.'),(269,27,'Speaker','Tax successful somebody full discussion day. Way smile stay body.\nItself leader until. Hospital ten do laugh.'),(270,27,'Light','Various newspaper will usually while. Reduce sell move debate it sing. Bill single some.\nThey decade public management add. Several fine movement read public sing.'),(271,27,'Console','Firm material or teacher chance enjoy. On everything lot staff cultural rather though. Television up news hard.'),(272,27,'Microphone','Choose next but number. Management company including significant consider behind several.'),(273,27,'Console','Opportunity certainly ten reduce late scene. Put about source begin play reach. Fall both stock good allow inside through.'),(274,27,'Special effect','Wear position score economic stay day cold. Surface treatment party morning news forward yet. Something management your this true.'),(275,28,'Microphone','Live beyond heavy truth call state.\nAllow when financial exactly fly majority determine. Eat inside understand. Wear trade teacher.'),(276,28,'Speaker','Them list whole a least together. Become station participant walk source dog. Above business place.'),(277,28,'Special effect','Others call make allow. Me owner per situation.\nProtect center certain know. Special actually start candidate some free.'),(278,28,'Console','Our end mother down. What strong fall fight any under. Be thing describe once air now physical. Human actually money any.'),(279,28,'Microphone','Economy style environment report. Last pretty consumer she learn. Policy environment kind risk more great big.'),(280,28,'Microphone','Culture trouble price mind. Order safe something remember idea. Sister age send note big behavior whatever.'),(281,28,'Speaker','And program sort when rest. Door it meeting yeah ready course decade.\nValue produce participant them. Other true year.'),(282,28,'Speaker','College determine price its poor. Ground head one moment every anything.\nIt than challenge. Along cover tough significant include still its.'),(283,29,'Console','Friend laugh explain important fire hour.'),(284,29,'Light','Energy trouble send turn. Decision radio experience any than.'),(285,29,'Special effect','Tv short real test four. Firm language second little little spring crime.\nEast you capital tough.'),(286,29,'Console','Long culture without us coach. Its car blood choose suddenly he sea require. Maintain early when meet.'),(287,29,'Light','Number open say total west another easy. Reflect reach impact need bill right. Be garden security development.'),(288,29,'Light','None seek worker audience threat. Single food most else.\nRule government together safe some American anything feel. Campaign success significant. Already out theory more seat benefit like.'),(289,29,'Microphone','Very middle international country top mean daughter. Subject heavy father manager sea.\nCell difference weight tree my talk instead. Citizen hard administration family dark decade recent.'),(290,30,'Speaker','Over standard difference just later might hour. Board page western especially model short. Watch yeah hear crime executive any.'),(291,30,'Speaker','Shake something local. Different spring visit human dinner.'),(292,30,'Special effect','Return concern son century. Continue science value pattern move.\nLife far wall song bad. Especially reason product daughter turn central policy.'),(293,30,'Speaker','Perhaps record civil. Nor fund want begin hair which though especially.'),(294,30,'Special effect','Least argue plan work behind budget. Different five strong ball specific thought. Mean responsibility somebody skin house report.'),(295,30,'Console','Themselves total listen rather recently wide themselves practice.'),(296,30,'Light','Available ask rate before method relate. Traditional prove nice catch begin. Right cover can control want stay explain.\nHotel suddenly inside front way.'),(297,30,'Microphone','Professional question stay type fast benefit. Yes interview easy person start where. Site manage write against accept.'),(298,30,'Speaker','Begin occur money process. Career out civil ability receive onto action.'),(299,30,'Microphone','Eat live clear service. Since always when unit everybody poor character.\nBuild local left car. Step gun next recent.'),(300,30,'Speaker','Central development maybe thus. Total culture maybe process. Usually let pull thus might pick allow.'),(301,30,'Light','Listen quickly well quickly quickly maybe. Morning ball even role yard sport.\nOccur where federal Congress. Trip program another yard who she travel.'),(302,30,'Speaker','Guy source prevent again defense president. As us but data east example organization center.'),(303,30,'Speaker','Like maybe soon great.\nDemocratic activity drop weight. Prepare training approach window ok indicate improve me. Executive nature far various night side whose.');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_resale_matches`
--

LOCK TABLES `temp_resale_matches` WRITE;
/*!40000 ALTER TABLE `temp_resale_matches` DISABLE KEYS */;
INSERT INTO `temp_resale_matches` VALUES (1,39,137,66);
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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,60,87,'0000000000017','general_admission','2019-08-07',91.85,'debit_card',0,'Sherri','Benitez','nflores@example.org','+1-758-299-9492',43),(2,46,80,'0000000000024','general_admission','2019-08-06',93.92,'credit_card',1,'Crystal','Schneider','xhendricks@example.net','575.801.3197x686',35),(3,127,13,'0000000000031','backstage','2022-07-01',86.28,'credit_card',1,'Sara','Clark','utaylor@example.net','665-382-8417x773',65),(4,116,80,'0000000000048','backstage','2022-06-30',47.56,'debit_card',1,'Crystal','Schneider','xhendricks@example.net','575.801.3197x686',35),(5,161,32,'0000000000055','backstage','2025-05-02',71.05,'credit_card',0,'Raymond','Walker','nicole54@example.org','518.889.6602x4868',37),(6,80,109,'0000000000062','general_admission','2020-06-29',71.72,'debit_card',1,'Steve','Flores','icook@example.org','263-667-0546x220',64),(7,93,115,'0000000000079','general_admission','2021-07-07',53.07,'debit_card',1,'Elizabeth','Rogers','alyssa37@example.com','9217190462',58),(8,151,111,'0000000000086','backstage','2024-06-25',24.45,'I-BAN',1,'Holly','Young','garciaedward@example.net','001-432-422-0048x475',42),(9,133,66,'0000000000093','general_admission','2022-07-01',78.75,'credit_card',1,'Bianca','Evans','stephaniehunter@example.com','001-536-279-4897x715',64),(10,60,96,'0000000000109','backstage','2019-08-06',54.20,'debit_card',1,'William','Adkins','coreytaylor@example.net','(894)402-4248',32),(11,165,120,'0000000000116','general_admission','2025-05-04',71.05,'debit_card',0,'Charles','Davis','corylucas@example.com','+1-908-406-8553x8749',33),(12,102,123,'0000000000123','general_admission','2021-07-04',41.65,'I-BAN',1,'Michael','Black','emmasnow@example.org','+1-693-254-9459',32),(13,171,66,'0000000000130','general_admission','2025-05-05',96.58,'credit_card',0,'Bianca','Evans','stephaniehunter@example.com','001-536-279-4897x715',64),(14,188,54,'0000000000147','general_admission','2025-05-03',66.73,'debit_card',0,'Amber','Harrington','nancy58@example.org','001-220-955-5958x135',65),(15,73,16,'0000000000154','backstage','2020-07-01',25.14,'I-BAN',1,'Peter','Dixon','jonesalexa@example.org','+1-512-652-6209',62),(16,42,126,'0000000000161','general_admission','2018-07-28',60.02,'I-BAN',1,'Amy','Evans','anthony04@example.org','+1-313-826-8233x6773',20),(17,55,97,'0000000000178','general_admission','2019-08-06',22.87,'debit_card',1,'Richard','Barnes','friedmandonna@example.org','478.573.9157',18),(18,17,15,'0000000000185','backstage','2017-08-08',97.77,'credit_card',1,'Samantha','Petersen','johnreyes@example.com','275-445-0802x9347',44),(19,129,95,'0000000000192','backstage','2022-06-28',48.93,'debit_card',1,'Stephanie','Lopez','jeremykim@example.net','439-545-6186x185',55),(20,12,142,'0000000000208','backstage','2017-08-05',33.79,'I-BAN',1,'Jason','Perez','jenniferwilliams@example.net','+1-383-988-8093x5375',46),(21,100,78,'0000000000215','backstage','2021-07-03',30.45,'credit_card',1,'Elizabeth','Clark','llee@example.org','8403334472',57),(22,176,3,'0000000000222','general_admission','2025-05-04',22.94,'credit_card',0,'Jason','Evans','hugheschristopher@example.org','607-369-9891x4073',41),(23,124,61,'0000000000239','general_admission','2022-06-27',32.95,'credit_card',1,'Joseph','Fox','foleymelissa@example.org','343-802-3056',50),(24,95,12,'0000000000246','backstage','2021-07-04',33.84,'debit_card',1,'Tammy','Adams','jason80@example.net','+1-921-230-4914x001',45),(25,140,40,'0000000000253','backstage','2023-08-23',64.47,'I-BAN',1,'Mark','Henry','gomezwilliam@example.org','001-209-536-2810x462',51),(26,7,47,'0000000000260','general_admission','2017-08-08',40.14,'credit_card',1,'Crystal','Griffith','ritterandrew@example.net','274-541-0064',53),(27,97,82,'0000000000277','backstage','2021-07-04',84.69,'credit_card',1,'Timothy','Sanchez','joshuaramirez@example.net','(436)825-9417',28),(28,141,2,'0000000000284','general_admission','2023-08-26',97.04,'credit_card',0,'Michelle','Hobbs','kberger@example.com','7038979203',61),(29,80,21,'0000000000291','backstage','2020-06-27',62.25,'debit_card',1,'Lauren','Larson','ibrown@example.com','7586239944',34),(30,176,34,'0000000000307','general_admission','2025-05-05',75.16,'credit_card',0,'George','Mercado','jessicawood@example.org','+1-572-470-5776',60),(31,179,132,'0000000000314','backstage','2025-05-01',89.35,'credit_card',0,'Karen','Perez','tharris@example.com','8857815411',57),(32,81,31,'0000000000321','backstage','2020-07-01',41.01,'debit_card',1,'Donald','Jackson','pwong@example.net','001-608-669-0761x750',58),(33,13,122,'0000000000338','general_admission','2017-08-07',36.07,'credit_card',0,'Ronald','Goodman','chenlisa@example.org','954.341.8883',30),(34,40,145,'0000000000345','backstage','2018-07-28',86.86,'debit_card',1,'Kimberly','Sanchez','ofarley@example.org','001-699-269-0331x770',48),(35,112,31,'0000000000352','backstage','2022-07-01',61.15,'debit_card',1,'Donald','Jackson','pwong@example.net','001-608-669-0761x750',58),(36,22,40,'0000000000369','general_admission','2017-08-07',34.95,'I-BAN',1,'Mark','Henry','gomezwilliam@example.org','001-209-536-2810x462',51),(37,19,137,'0000000000376','general_admission','2017-08-08',84.26,'debit_card',1,'Elizabeth','Barr','james58@example.com','(341)218-6893x042',43),(38,59,36,'0000000000383','general_admission','2019-08-04',67.22,'I-BAN',1,'Tracy','Lin','mariahpearson@example.com','+1-684-424-0473',62),(39,30,53,'0000000000390','backstage','2018-07-30',99.69,'debit_card',1,'Carlos','Carter','allenheather@example.net','694.966.2101',63),(40,100,25,'0000000000406','general_admission','2021-07-06',68.07,'credit_card',1,'Brandy','Hughes','barnettlisa@example.org','810.751.7503x564',45),(41,179,88,'0000000000413','general_admission','2025-05-05',67.30,'I-BAN',0,'Joseph','Ayers','olivernicholas@example.org','813-223-0534',20),(42,162,69,'0000000000420','general_admission','2025-05-02',40.93,'I-BAN',0,'Raymond','Barnett','jessicadunn@example.net','(269)493-1238x1886',20),(43,7,31,'0000000000437','backstage','2017-08-08',48.44,'I-BAN',1,'Donald','Jackson','pwong@example.net','001-608-669-0761x750',58),(44,1,68,'0000000000444','general_admission','2017-08-04',84.33,'credit_card',1,'April','Lee','aliciastevenson@example.org','+1-250-281-2502x5839',19),(45,118,61,'0000000000451','general_admission','2022-06-29',53.30,'debit_card',0,'Joseph','Fox','foleymelissa@example.org','343-802-3056',50),(46,94,127,'0000000000468','backstage','2021-07-03',25.66,'credit_card',1,'Megan','Glover','bstark@example.com','001-733-890-9956x591',23),(47,76,82,'0000000000475','general_admission','2020-06-28',96.51,'credit_card',0,'Timothy','Sanchez','joshuaramirez@example.net','(436)825-9417',28),(48,184,146,'0000000000482','backstage','2025-05-03',24.22,'I-BAN',0,'Aaron','Cummings','omontes@example.com','740-653-2564x801',42),(49,184,114,'0000000000499','backstage','2025-05-03',58.27,'I-BAN',0,'Joseph','Arroyo','tortiz@example.org','987-636-6614x6970',50),(50,105,52,'0000000000505','backstage','2021-07-06',52.68,'I-BAN',1,'Michael','Snyder','moorestephanie@example.org','228-694-8715',18),(51,10,16,'0000000000512','general_admission','2017-08-04',57.93,'debit_card',1,'Peter','Dixon','jonesalexa@example.org','+1-512-652-6209',62),(52,89,28,'0000000000529','backstage','2021-07-06',32.58,'I-BAN',1,'Jasmine','Bruce','dcompton@example.com','001-871-416-7744x179',51),(53,49,115,'0000000000536','backstage','2019-08-05',38.28,'I-BAN',1,'Elizabeth','Rogers','alyssa37@example.com','9217190462',58),(54,59,101,'0000000000543','general_admission','2019-08-05',52.75,'credit_card',1,'Richard','King','qhenderson@example.net','+1-986-477-4894',63),(55,165,130,'0000000000550','general_admission','2025-05-02',21.73,'debit_card',0,'Amy','Curtis','jonesgina@example.com','683-288-8323',36),(56,131,31,'0000000000567','backstage','2022-06-27',82.82,'debit_card',1,'Donald','Jackson','pwong@example.net','001-608-669-0761x750',58),(57,116,113,'0000000000574','general_admission','2022-06-29',97.26,'I-BAN',1,'Rebecca','Rice','smorris@example.net','425-283-1498x4496',33),(58,75,69,'0000000000581','backstage','2020-07-01',95.63,'I-BAN',1,'Raymond','Barnett','jessicadunn@example.net','(269)493-1238x1886',20),(59,76,125,'0000000000598','backstage','2020-06-27',72.57,'debit_card',1,'Daniel','Parker','portervictor@example.net','515.977.9254x72407',58),(60,104,82,'0000000000604','backstage','2021-07-04',98.68,'debit_card',1,'Timothy','Sanchez','joshuaramirez@example.net','(436)825-9417',28),(61,88,107,'0000000000611','general_admission','2021-07-06',77.89,'I-BAN',1,'Paula','Baker','zacharybaker@example.net','(281)779-5790',46),(62,94,5,'0000000000628','general_admission','2021-07-06',29.27,'credit_card',1,'Sara','Smith','jacksondiane@example.org','001-315-599-3758x845',43),(63,44,136,'0000000000635','backstage','2018-07-26',70.75,'debit_card',1,'Keith','Stewart','daniel83@example.org','773.877.1450x135',53),(64,80,3,'0000000000642','backstage','2020-07-01',28.98,'debit_card',0,'Jason','Evans','hugheschristopher@example.org','607-369-9891x4073',41),(65,62,110,'0000000000659','general_admission','2019-08-05',23.83,'debit_card',1,'Lori','Pierce','billwilliams@example.com','594-865-6387x2255',52),(66,173,39,'0000000000666','backstage','2025-05-05',73.83,'debit_card',0,'Elizabeth','Barr','james58@example.com','(341)218-6893x042',43),(67,75,84,'0000000000673','general_admission','2020-06-28',31.12,'I-BAN',1,'Erika','Jimenez','joshua95@example.org','371-633-4184',49),(68,86,143,'0000000000680','general_admission','2021-07-06',59.01,'debit_card',1,'Michael','Anderson','walkerpaul@example.com','001-621-856-7983x736',22),(69,110,96,'0000000000697','backstage','2021-07-05',50.93,'credit_card',1,'William','Adkins','coreytaylor@example.net','(894)402-4248',32),(70,154,51,'0000000000703','general_admission','2024-06-25',40.74,'debit_card',1,'Michelle','Thomas','josecarpenter@example.com','350.677.5040',49),(71,169,39,'0000000000710','backstage','2025-05-03',55.79,'debit_card',0,'Anthony','Alvarez','igordon@example.net','+1-232-996-6078x4867',65),(72,15,2,'0000000000727','general_admission','2017-08-04',36.08,'credit_card',1,'Michelle','Hobbs','kberger@example.com','7038979203',61),(73,151,61,'0000000000734','general_admission','2024-06-25',70.40,'I-BAN',1,'Joseph','Fox','foleymelissa@example.org','343-802-3056',50),(74,92,43,'0000000000741','general_admission','2021-07-07',44.31,'I-BAN',1,'Richard','Crawford','ssmith@example.net','6944864367',22),(75,113,13,'0000000000758','general_admission','2022-06-27',84.76,'debit_card',0,'Sara','Clark','utaylor@example.net','665-382-8417x773',65),(76,104,89,'0000000000765','general_admission','2021-07-07',73.30,'debit_card',1,'Mandy','Rogers','richardcollins@example.net','+1-299-648-6981',61),(77,16,80,'0000000000772','backstage','2017-08-05',42.93,'credit_card',1,'Crystal','Schneider','xhendricks@example.net','575.801.3197x686',35),(78,37,93,'0000000000789','backstage','2018-07-30',25.76,'I-BAN',0,'Ashley','Morris','jamesthompson@example.net','(323)268-2971',23),(79,186,101,'0000000000796','general_admission','2025-05-02',99.96,'I-BAN',0,'Richard','King','qhenderson@example.net','+1-986-477-4894',63),(80,3,131,'0000000000802','general_admission','2017-08-08',75.59,'debit_card',1,'Darren','Riley','wrightolivia@example.org','830.360.7175x24496',64),(81,48,84,'0000000000819','backstage','2019-08-08',72.74,'I-BAN',1,'Erika','Jimenez','joshua95@example.org','371-633-4184',49),(82,42,121,'0000000000826','general_admission','2018-07-26',35.14,'credit_card',1,'Jeffrey','Taylor','kristi55@example.org','960-277-1141',48),(83,93,147,'0000000000833','general_admission','2021-07-05',95.92,'credit_card',1,'Isaiah','Willis','johnsonjennifer@example.org','5622332877',27),(84,138,67,'0000000000840','general_admission','2023-08-24',37.52,'I-BAN',1,'Taylor','Young','christopher71@example.com','(758)413-7494x1107',58),(85,88,98,'0000000000857','general_admission','2021-07-07',32.23,'I-BAN',1,'Tammy','Kelly','edoyle@example.net','(219)980-1911x068',34),(86,145,28,'0000000000864','backstage','2023-08-27',66.05,'credit_card',1,'Jasmine','Bruce','dcompton@example.com','001-871-416-7744x179',51),(87,99,113,'0000000000871','backstage','2021-07-05',67.94,'I-BAN',1,'Rebecca','Rice','smorris@example.net','425-283-1498x4496',33),(88,20,59,'0000000000888','backstage','2017-08-08',65.62,'credit_card',1,'Briana','Miller','miguellowery@example.net','644-563-9167x7843',59),(89,44,129,'0000000000895','general_admission','2018-07-27',76.21,'credit_card',1,'Mark','Simmons','jillhanson@example.net','(836)314-5953',55),(90,112,147,'0000000000901','backstage','2022-06-27',67.40,'credit_card',1,'Isaiah','Willis','johnsonjennifer@example.org','5622332877',27),(91,126,49,'0000000000918','backstage','2022-07-01',41.04,'debit_card',1,'Danny','Kelly','alvarezcaroline@example.com','508.367.8823x53196',33),(92,23,62,'0000000000925','general_admission','2017-08-04',98.63,'credit_card',1,'Casey','Jackson','kellimosley@example.net','2676792230',35),(93,131,124,'0000000000932','backstage','2022-07-01',83.52,'credit_card',1,'William','Sanders','amy79@example.net','660-324-5450x9518',57),(94,128,150,'0000000000949','general_admission','2022-06-30',24.88,'credit_card',1,'Matthew','Morales','ajones@example.net','432.236.4980',50),(95,173,80,'0000000000956','general_admission','2025-05-02',94.24,'I-BAN',0,'Crystal','Schneider','xhendricks@example.net','575.801.3197x686',35),(96,106,61,'0000000000963','backstage','2021-07-05',34.78,'credit_card',1,'Joseph','Fox','foleymelissa@example.org','343-802-3056',50),(97,89,19,'0000000000970','general_admission','2021-07-07',53.36,'debit_card',1,'Matthew','Hernandez','kelleyashley@example.org','+1-296-655-1225x292',63),(98,126,107,'0000000000987','backstage','2022-06-29',29.43,'I-BAN',1,'Paula','Baker','zacharybaker@example.net','(281)779-5790',46),(99,136,142,'0000000000994','backstage','2023-08-25',21.05,'debit_card',0,'Jason','Perez','jenniferwilliams@example.net','+1-383-988-8093x5375',46),(100,152,90,'0000000001007','general_admission','2024-06-25',76.56,'credit_card',1,'Matthew','Washington','woodamber@example.com','+1-726-376-0125x6318',26),(101,23,147,'0000000001014','general_admission','2017-08-04',98.36,'debit_card',1,'Isaiah','Willis','johnsonjennifer@example.org','5622332877',27),(102,134,12,'0000000001021','general_admission','2022-06-29',98.76,'credit_card',0,'Tammy','Adams','jason80@example.net','+1-921-230-4914x001',45),(103,14,86,'0000000001038','general_admission','2017-08-04',55.44,'I-BAN',1,'Jaclyn','Farley','xporter@example.com','001-424-808-1668x610',65),(104,71,34,'0000000001045','backstage','2020-06-29',60.66,'credit_card',1,'George','Mercado','jessicawood@example.org','+1-572-470-5776',60),(105,72,9,'0000000001052','general_admission','2020-07-01',91.26,'I-BAN',1,'Charles','Powers','ashley01@example.net','311-277-6314x58524',65),(106,22,73,'0000000001069','backstage','2017-08-05',73.16,'debit_card',1,'Beverly','Garza','cookgarrett@example.org','3073106297',36),(107,125,27,'0000000001076','backstage','2022-06-27',70.07,'credit_card',1,'Julie','Daugherty','clewis@example.org','773-462-0999',62),(108,95,102,'0000000001083','general_admission','2021-07-06',99.29,'debit_card',1,'Felicia','Williams','murphylevi@example.com','(336)562-4631x36524',56),(109,6,40,'0000000001090','backstage','2017-08-06',32.30,'credit_card',1,'Mark','Henry','gomezwilliam@example.org','001-209-536-2810x462',51),(110,80,143,'0000000001106','backstage','2020-06-27',70.76,'I-BAN',1,'Michael','Anderson','walkerpaul@example.com','001-621-856-7983x736',22),(111,164,78,'0000000001113','general_admission','2025-05-02',40.70,'I-BAN',0,'Elizabeth','Clark','llee@example.org','8403334472',57),(112,84,77,'0000000001120','general_admission','2021-07-07',68.33,'I-BAN',1,'Jessica','Hunt','geraldwilson@example.com','(827)611-2084',26),(113,119,80,'0000000001137','backstage','2022-06-29',74.47,'credit_card',1,'Crystal','Schneider','xhendricks@example.net','575.801.3197x686',35),(114,73,63,'0000000001144','backstage','2020-06-27',74.29,'credit_card',1,'Amy','Garcia','friedmanmargaret@example.net','(795)424-4486',55),(115,112,97,'0000000001151','general_admission','2022-06-30',79.38,'I-BAN',1,'Richard','Barnes','friedmandonna@example.org','478.573.9157',18),(116,43,76,'0000000001168','general_admission','2018-07-28',27.20,'debit_card',1,'Trevor','Martinez','rossronald@example.org','(953)227-8368x57580',45),(117,111,100,'0000000001175','general_admission','2022-06-30',78.71,'I-BAN',1,'Wanda','Perez','jill80@example.org','423.657.6435',49),(118,63,52,'0000000001182','general_admission','2019-08-06',99.42,'I-BAN',1,'Michael','Snyder','moorestephanie@example.org','228-694-8715',18),(119,113,125,'0000000001199','general_admission','2022-06-27',44.29,'debit_card',1,'Daniel','Parker','portervictor@example.net','515.977.9254x72407',58),(120,48,103,'0000000001205','general_admission','2019-08-05',45.52,'debit_card',1,'Lauren','Chung','esmith@example.net','(841)250-3771x00170',40),(121,168,100,'0000000001212','general_admission','2025-05-02',36.70,'debit_card',0,'Wanda','Perez','jill80@example.org','423.657.6435',49),(122,77,149,'0000000001229','general_admission','2020-07-01',45.27,'debit_card',1,'Roger','Perkins','nicholas02@example.net','4338872081',41),(123,158,2,'0000000001236','backstage','2025-05-05',60.87,'credit_card',0,'Michelle','Hobbs','kberger@example.com','7038979203',61),(124,108,67,'0000000001243','backstage','2021-07-03',55.41,'debit_card',1,'Taylor','Young','christopher71@example.com','(758)413-7494x1107',58),(125,163,80,'0000000001250','general_admission','2025-05-04',63.73,'credit_card',0,'Crystal','Schneider','xhendricks@example.net','575.801.3197x686',35),(126,5,59,'0000000001267','general_admission','2017-08-08',74.61,'credit_card',1,'Briana','Miller','miguellowery@example.net','644-563-9167x7843',59),(127,129,85,'0000000001274','backstage','2022-07-01',80.17,'I-BAN',1,'Troy','Ellis','medinafrancis@example.com','8272906557',59),(128,37,97,'0000000001281','general_admission','2018-07-26',32.79,'I-BAN',1,'Richard','Barnes','friedmandonna@example.org','478.573.9157',18),(129,3,96,'0000000001298','backstage','2017-08-06',75.74,'debit_card',1,'William','Adkins','coreytaylor@example.net','(894)402-4248',32),(130,174,35,'0000000001304','backstage','2025-05-02',40.79,'debit_card',0,'Nicholas','Strong','julie41@example.com','001-726-682-7281',46),(131,127,124,'0000000001311','backstage','2022-06-27',88.79,'I-BAN',1,'William','Sanders','amy79@example.net','660-324-5450x9518',57),(132,124,114,'0000000001328','general_admission','2022-06-29',56.13,'debit_card',1,'Joseph','Arroyo','tortiz@example.org','987-636-6614x6970',50),(133,167,20,'0000000001335','general_admission','2025-05-04',94.51,'I-BAN',0,'Anthony','Rivas','briandean@example.org','3417691165',43),(134,35,66,'0000000001342','general_admission','2018-07-27',44.40,'credit_card',1,'Bianca','Evans','stephaniehunter@example.com','001-536-279-4897x715',64),(135,62,146,'0000000001359','backstage','2019-08-06',41.56,'I-BAN',0,'Aaron','Cummings','omontes@example.com','740-653-2564x801',42),(136,28,103,'0000000001366','general_admission','2018-07-26',24.63,'credit_card',1,'Lauren','Chung','esmith@example.net','(841)250-3771x00170',40),(137,164,57,'0000000001373','backstage','2025-05-03',69.76,'I-BAN',0,'Kathy','Trevino','bjones@example.org','(338)520-0191x1631',19),(138,38,147,'0000000001380','general_admission','2018-07-28',54.28,'debit_card',1,'Isaiah','Willis','johnsonjennifer@example.org','5622332877',27),(139,43,98,'0000000001397','backstage','2018-07-28',96.27,'debit_card',1,'Tammy','Kelly','edoyle@example.net','(219)980-1911x068',34),(140,48,51,'0000000001403','general_admission','2019-08-07',24.12,'I-BAN',1,'Michelle','Thomas','josecarpenter@example.com','350.677.5040',49),(141,188,92,'0000000001410','general_admission','2025-05-04',57.36,'I-BAN',0,'Rachel','Baker','wjohnson@example.org','(213)280-0133x690',31),(142,53,4,'0000000001427','backstage','2019-08-04',53.96,'credit_card',1,'Paul','Henry','carremily@example.org','3283067579',64),(143,31,44,'0000000001434','backstage','2018-07-28',93.80,'credit_card',1,'Katie','Lucero','greerjocelyn@example.com','290-562-7067x1659',28),(144,15,47,'0000000001441','general_admission','2017-08-05',31.77,'debit_card',0,'Crystal','Griffith','ritterandrew@example.net','274-541-0064',53),(145,147,30,'0000000001458','general_admission','2023-08-24',59.97,'debit_card',1,'Melinda','Hansen','melissagonzalez@example.net','+1-428-783-9619x536',37),(146,55,24,'0000000001465','general_admission','2019-08-04',87.25,'debit_card',0,'Mark','Simpson','markcarney@example.org','(394)341-6106',18),(147,123,142,'0000000001472','backstage','2022-06-28',67.80,'debit_card',1,'Jason','Perez','jenniferwilliams@example.net','+1-383-988-8093x5375',46),(148,172,150,'0000000001489','general_admission','2025-05-01',33.73,'credit_card',0,'Matthew','Morales','ajones@example.net','432.236.4980',50),(149,124,13,'0000000001496','general_admission','2022-06-28',22.73,'debit_card',1,'Sara','Clark','utaylor@example.net','665-382-8417x773',65),(150,172,123,'0000000001502','general_admission','2025-05-02',62.98,'debit_card',0,'Michael','Black','emmasnow@example.org','+1-693-254-9459',32),(151,122,133,'0000000001519','backstage','2022-07-01',53.18,'credit_card',1,'Tanya','Ryan','erinbates@example.com','601.499.9693',47),(152,107,145,'0000000001526','backstage','2021-07-04',26.66,'debit_card',0,'Kimberly','Sanchez','ofarley@example.org','001-699-269-0331x770',48),(153,134,98,'0000000001533','backstage','2022-06-30',91.99,'I-BAN',1,'Tammy','Kelly','edoyle@example.net','(219)980-1911x068',34),(154,23,130,'0000000001540','backstage','2017-08-05',88.26,'I-BAN',1,'Amy','Curtis','jonesgina@example.com','683-288-8323',36),(155,144,8,'0000000001557','general_admission','2023-08-23',40.32,'credit_card',1,'Amy','White','yduncan@example.org','(280)394-8580x3734',38),(156,98,120,'0000000001564','general_admission','2021-07-06',83.23,'I-BAN',1,'Charles','Davis','corylucas@example.com','+1-908-406-8553x8749',33),(157,33,85,'0000000001571','backstage','2018-07-29',53.82,'I-BAN',1,'Troy','Ellis','medinafrancis@example.com','8272906557',59),(158,134,30,'0000000001588','general_admission','2022-06-29',55.49,'credit_card',1,'Melinda','Hansen','melissagonzalez@example.net','+1-428-783-9619x536',37),(159,45,55,'0000000001595','backstage','2018-07-26',34.89,'credit_card',1,'Chad','Kirk','jesse06@example.com','(715)295-5933x645',65),(160,118,34,'0000000001601','general_admission','2022-06-28',93.84,'debit_card',1,'George','Mercado','jessicawood@example.org','+1-572-470-5776',60),(161,32,144,'0000000001618','backstage','2018-07-28',72.80,'I-BAN',1,'Barbara','Mercer','fkim@example.com','401.610.9354x548',30),(162,15,118,'0000000001625','general_admission','2017-08-07',57.23,'I-BAN',1,'Corey','Martin','garcialaura@example.com','(557)926-6015x54192',60),(163,46,121,'0000000001632','backstage','2019-08-04',58.74,'I-BAN',1,'Jeffrey','Taylor','kristi55@example.org','960-277-1141',48),(164,125,96,'0000000001649','backstage','2022-06-29',50.87,'debit_card',1,'William','Adkins','coreytaylor@example.net','(894)402-4248',32),(165,98,88,'0000000001656','backstage','2021-07-04',62.48,'debit_card',1,'Joseph','Ayers','olivernicholas@example.org','813-223-0534',20),(166,85,123,'0000000001663','backstage','2021-07-03',80.80,'credit_card',1,'Michael','Black','emmasnow@example.org','+1-693-254-9459',32),(167,15,56,'0000000001670','backstage','2017-08-05',94.01,'I-BAN',1,'Mark','Thompson','daisyvasquez@example.com','673-702-2781',25),(168,166,99,'0000000001687','general_admission','2025-05-03',67.80,'I-BAN',0,'Justin','Chase','stacyhoward@example.net','667.533.0930',48),(169,44,55,'0000000001694','general_admission','2018-07-26',54.81,'I-BAN',1,'Chad','Kirk','jesse06@example.com','(715)295-5933x645',65),(170,117,40,'0000000001700','backstage','2022-07-01',41.22,'debit_card',1,'Mark','Henry','gomezwilliam@example.org','001-209-536-2810x462',51),(171,51,38,'0000000001717','backstage','2019-08-05',90.08,'I-BAN',1,'Taylor','Bishop','brandon74@example.com','(588)859-7693x93607',41),(172,67,52,'0000000001724','general_admission','2020-06-27',75.79,'credit_card',1,'Michael','Snyder','moorestephanie@example.org','228-694-8715',18),(173,148,149,'0000000001731','backstage','2024-06-22',33.31,'credit_card',1,'Roger','Perkins','nicholas02@example.net','4338872081',41),(174,118,12,'0000000001748','backstage','2022-06-28',91.48,'I-BAN',1,'Tammy','Adams','jason80@example.net','+1-921-230-4914x001',45),(175,74,18,'0000000001755','backstage','2020-06-28',91.93,'debit_card',0,'Erika','Sullivan','smendez@example.net','(408)836-5965x1662',60),(176,50,71,'0000000001762','general_admission','2019-08-04',92.85,'credit_card',1,'Jose','Massey','destiny83@example.com','656.642.7636',62),(177,53,11,'0000000001779','general_admission','2019-08-06',23.88,'debit_card',1,'Albert','Carney','levinesarah@example.org','759-751-9307x81273',64),(178,62,104,'0000000001786','backstage','2019-08-06',84.37,'I-BAN',1,'Sergio','Joseph','bryanjones@example.com','(590)657-8200',34),(179,8,126,'0000000001793','general_admission','2017-08-08',92.56,'I-BAN',1,'Amy','Evans','anthony04@example.org','+1-313-826-8233x6773',20),(180,161,8,'0000000001809','backstage','2025-05-03',92.44,'I-BAN',0,'Amy','White','yduncan@example.org','(280)394-8580x3734',38),(181,134,103,'0000000001816','general_admission','2022-07-01',22.11,'debit_card',1,'Lauren','Chung','esmith@example.net','(841)250-3771x00170',40),(182,26,49,'0000000001823','general_admission','2017-08-07',54.81,'debit_card',1,'Danny','Kelly','alvarezcaroline@example.com','508.367.8823x53196',33),(183,56,51,'0000000001830','general_admission','2019-08-08',30.67,'credit_card',0,'Michelle','Thomas','josecarpenter@example.com','350.677.5040',49),(184,50,121,'0000000001847','general_admission','2019-08-07',50.51,'credit_card',1,'Jeffrey','Taylor','kristi55@example.org','960-277-1141',48),(185,25,128,'0000000001854','backstage','2017-08-07',96.36,'debit_card',1,'Rita','Gray','karen43@example.net','(525)804-3192',26),(186,76,79,'0000000001861','general_admission','2020-06-29',55.96,'I-BAN',1,'Kristopher','Morgan','ksmith@example.net','001-229-807-0512',56),(187,99,138,'0000000001878','backstage','2021-07-07',56.10,'debit_card',1,'Suzanne','Collins','hernandezshannon@example.com','(422)449-0936x8647',26),(188,44,10,'0000000001885','backstage','2018-07-30',29.14,'credit_card',1,'Susan','Marshall','sandrahunt@example.com','001-367-413-5595x261',35),(189,13,27,'0000000001892','general_admission','2017-08-07',27.68,'debit_card',1,'Julie','Daugherty','clewis@example.org','773-462-0999',62),(190,1,137,'0000000001908','general_admission','2017-08-04',23.02,'I-BAN',1,'Elizabeth','Barr','james58@example.com','(341)218-6893x042',43),(191,84,117,'0000000001915','general_admission','2021-07-06',49.51,'debit_card',0,'Carolyn','Peters','davischristopher@example.net','801.285.1008',65),(192,179,64,'0000000001922','general_admission','2025-05-04',22.48,'credit_card',0,'Roy','Gray','alexanderstephen@example.net','+1-782-278-2145',26),(193,133,98,'0000000001939','backstage','2022-06-29',58.30,'credit_card',0,'Tammy','Kelly','edoyle@example.net','(219)980-1911x068',34),(194,176,70,'0000000001946','general_admission','2025-05-02',69.44,'I-BAN',0,'Bobby','Hernandez','nwilson@example.org','6633751565',62),(195,48,127,'0000000001953','backstage','2019-08-08',76.12,'debit_card',1,'Megan','Glover','bstark@example.com','001-733-890-9956x591',23),(196,39,136,'0000000001960','backstage','2018-07-27',71.23,'I-BAN',1,'Keith','Stewart','daniel83@example.org','773.877.1450x135',53),(197,130,77,'0000000001977','backstage','2022-06-28',75.12,'debit_card',1,'Jessica','Hunt','geraldwilson@example.com','(827)611-2084',26),(198,80,94,'0000000001984','backstage','2020-06-30',75.86,'I-BAN',1,'Haley','Gomez','edwardstewart@example.net','+1-376-395-4142x205',36),(199,20,11,'0000000001991','general_admission','2017-08-05',97.88,'debit_card',1,'Albert','Carney','levinesarah@example.org','759-751-9307x81273',64),(200,7,89,'0000000002004','general_admission','2017-08-08',65.58,'credit_card',0,'Mandy','Rogers','richardcollins@example.net','+1-299-648-6981',61),(201,148,67,'0000000002011','general_admission','2024-06-23',72.61,'credit_card',1,'Taylor','Young','christopher71@example.com','(758)413-7494x1107',58),(202,74,110,'0000000002028','backstage','2020-06-30',70.50,'I-BAN',1,'Lori','Pierce','billwilliams@example.com','594-865-6387x2255',52),(203,158,35,'0000000002035','general_admission','2025-05-03',90.73,'I-BAN',0,'Nicholas','Strong','julie41@example.com','001-726-682-7281',46),(204,110,111,'0000000002042','backstage','2021-07-03',49.18,'debit_card',0,'Holly','Young','garciaedward@example.net','001-432-422-0048x475',42),(205,152,135,'0000000002059','general_admission','2024-06-24',68.36,'debit_card',1,'Michael','James','eric86@example.net','934-541-0551x66060',35),(206,144,59,'0000000002066','general_admission','2023-08-25',77.45,'debit_card',1,'Briana','Miller','miguellowery@example.net','644-563-9167x7843',59),(207,22,117,'0000000002073','backstage','2017-08-08',47.31,'I-BAN',1,'Carolyn','Peters','davischristopher@example.net','801.285.1008',65),(208,23,53,'0000000002080','general_admission','2017-08-07',46.79,'credit_card',0,'Carlos','Carter','allenheather@example.net','694.966.2101',63),(209,85,24,'0000000002097','backstage','2021-07-07',53.35,'credit_card',1,'Mark','Simpson','markcarney@example.org','(394)341-6106',18),(210,87,124,'0000000002103','backstage','2021-07-03',35.99,'I-BAN',1,'William','Sanders','amy79@example.net','660-324-5450x9518',57),(211,78,83,'0000000002110','general_admission','2020-06-28',68.18,'credit_card',1,'Roger','Mullins','kthompson@example.com','9262669795',34),(212,29,78,'0000000002127','general_admission','2018-07-29',96.32,'I-BAN',1,'Elizabeth','Clark','llee@example.org','8403334472',57),(213,166,46,'0000000002134','general_admission','2025-05-01',57.03,'debit_card',0,'Meghan','Clark','janetbrown@example.org','924-674-9345',43),(214,62,125,'0000000002141','general_admission','2019-08-05',80.42,'credit_card',1,'Daniel','Parker','portervictor@example.net','515.977.9254x72407',58),(215,130,41,'0000000002158','general_admission','2022-06-29',95.40,'credit_card',1,'Amy','Delgado','adam64@example.org','(704)837-1478',37),(216,149,110,'0000000002165','backstage','2024-06-22',52.94,'credit_card',1,'Lori','Pierce','billwilliams@example.com','594-865-6387x2255',52),(217,170,109,'0000000002172','backstage','2025-05-02',95.31,'credit_card',0,'Steve','Flores','icook@example.org','263-667-0546x220',64),(218,64,43,'0000000002189','backstage','2020-06-27',35.00,'debit_card',1,'Richard','Crawford','ssmith@example.net','6944864367',22),(219,28,45,'0000000002196','general_admission','2018-07-30',24.81,'debit_card',1,'Aaron','Zimmerman','panderson@example.com','001-947-990-0102',54),(220,73,51,'0000000002202','general_admission','2020-06-30',32.64,'I-BAN',1,'Michelle','Thomas','josecarpenter@example.com','350.677.5040',49);
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
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
INSERT INTO `visitor` VALUES (1,'Daniel','Morris','2906514788','jennifer96@example.org',24),(2,'Michelle','Hobbs','7038979203','kberger@example.com',61),(3,'Jason','Evans','607-369-9891x4073','hugheschristopher@example.org',41),(4,'Paul','Henry','3283067579','carremily@example.org',64),(5,'Sara','Smith','001-315-599-3758x845','jacksondiane@example.org',43),(6,'Lori','Miller','+1-355-949-7367x46607','nzimmerman@example.org',52),(7,'Victor','Bailey','489.217.6403x157','ifrank@example.com',45),(8,'Amy','White','(280)394-8580x3734','yduncan@example.org',38),(9,'Charles','Powers','311-277-6314x58524','ashley01@example.net',65),(10,'Susan','Marshall','001-367-413-5595x26128','sandrahunt@example.com',35),(11,'Albert','Carney','759-751-9307x81273','levinesarah@example.org',64),(12,'Tammy','Adams','+1-921-230-4914x001','jason80@example.net',45),(13,'Sara','Clark','665-382-8417x773','utaylor@example.net',65),(14,'Jessica','Gray','546-733-9893x0320','watersdonna@example.net',42),(15,'Samantha','Petersen','275-445-0802x9347','johnreyes@example.com',44),(16,'Peter','Dixon','+1-512-652-6209','jonesalexa@example.org',62),(17,'Patrick','Campbell','(960)265-4789x57915','uesparza@example.com',26),(18,'Erika','Sullivan','(408)836-5965x1662','smendez@example.net',60),(19,'Matthew','Hernandez','+1-296-655-1225x292','kelleyashley@example.org',63),(20,'Anthony','Rivas','3417691165','briandean@example.org',43),(21,'Lauren','Larson','7586239944','ibrown@example.com',34),(22,'Eric','Adams','001-460-223-4444','nicolemoreno@example.org',19),(23,'Ashley','Moore','2737234121','desireewoods@example.com',65),(24,'Mark','Simpson','(394)341-6106','markcarney@example.org',18),(25,'Brandy','Hughes','810.751.7503x564','barnettlisa@example.org',45),(26,'Daniel','Thomas','+1-330-324-2049x94423','anthony37@example.org',58),(27,'Julie','Daugherty','773-462-0999','clewis@example.org',62),(28,'Jasmine','Bruce','001-871-416-7744x1791','dcompton@example.com',51),(29,'Sheila','Pope','001-450-201-7964','ycannon@example.net',34),(30,'Melinda','Hansen','+1-428-783-9619x536','melissagonzalez@example.net',37),(31,'Donald','Jackson','001-608-669-0761x750','pwong@example.net',58),(32,'Raymond','Walker','518.889.6602x4868','nicole54@example.org',37),(33,'Stephanie','Wallace','782-645-8411','crocha@example.net',49),(34,'George','Mercado','+1-572-470-5776','jessicawood@example.org',60),(35,'Nicholas','Strong','001-726-682-7281','julie41@example.com',46),(36,'Tracy','Lin','+1-684-424-0473','mariahpearson@example.com',62),(37,'Christopher','Nguyen','294.946.4007x04345','crystalrivera@example.org',33),(38,'Taylor','Bishop','(588)859-7693x93607','brandon74@example.com',41),(39,'Anthony','Alvarez','+1-232-996-6078x48670','igordon@example.net',65),(40,'Mark','Henry','001-209-536-2810x46291','gomezwilliam@example.org',51),(41,'Amy','Delgado','(704)837-1478','adam64@example.org',37),(42,'Adam','Boyd','+1-636-740-7062x975','pateljulia@example.net',39),(43,'Richard','Crawford','6944864367','ssmith@example.net',22),(44,'Katie','Lucero','290-562-7067x1659','greerjocelyn@example.com',28),(45,'Aaron','Zimmerman','001-947-990-0102','panderson@example.com',54),(46,'Meghan','Clark','924-674-9345','janetbrown@example.org',43),(47,'Crystal','Griffith','274-541-0064','ritterandrew@example.net',53),(48,'Sandra','Barnes','261-417-2359x6991','uramirez@example.com',53),(49,'Danny','Kelly','508.367.8823x53196','alvarezcaroline@example.com',33),(50,'Ariel','Key','+1-241-964-5831','dustinestes@example.org',52),(51,'Michelle','Thomas','350.677.5040','josecarpenter@example.com',49),(52,'Michael','Snyder','228-694-8715','moorestephanie@example.org',18),(53,'Carlos','Carter','694.966.2101','allenheather@example.net',63),(54,'Amber','Harrington','001-220-955-5958x135','nancy58@example.org',65),(55,'Chad','Kirk','(715)295-5933x645','jesse06@example.com',65),(56,'Mark','Thompson','673-702-2781','daisyvasquez@example.com',25),(57,'Kathy','Trevino','(338)520-0191x1631','bjones@example.org',19),(58,'Steve','Park','001-542-872-3948x01471','frasmussen@example.net',28),(59,'Briana','Miller','644-563-9167x7843','miguellowery@example.net',59),(60,'Christopher','Mckinney','955.755.5751','brendanlowery@example.net',20),(61,'Joseph','Fox','343-802-3056','foleymelissa@example.org',50),(62,'Casey','Jackson','2676792230','kellimosley@example.net',35),(63,'Amy','Garcia','(795)424-4486','friedmanmargaret@example.net',55),(64,'Roy','Gray','+1-782-278-2145','alexanderstephen@example.net',26),(65,'Lauren','Davis','252-572-0192','katie76@example.net',40),(66,'Bianca','Evans','001-536-279-4897x71592','stephaniehunter@example.com',64),(67,'Taylor','Young','(758)413-7494x1107','christopher71@example.com',58),(68,'April','Lee','+1-250-281-2502x58390','aliciastevenson@example.org',19),(69,'Raymond','Barnett','(269)493-1238x1886','jessicadunn@example.net',20),(70,'Bobby','Hernandez','6633751565','nwilson@example.org',62),(71,'Jose','Massey','656.642.7636','destiny83@example.com',62),(72,'Catherine','Long','+1-499-740-4519x38302','douglasstephen@example.org',60),(73,'Beverly','Garza','3073106297','cookgarrett@example.org',36),(74,'Dustin','Hudson','4653305409','wdickerson@example.com',25),(75,'Dana','Smith','(336)925-2828x2374','rebecca58@example.org',61),(76,'Trevor','Martinez','(953)227-8368x57580','rossronald@example.org',45),(77,'Jessica','Hunt','(827)611-2084','geraldwilson@example.com',26),(78,'Elizabeth','Clark','8403334472','llee@example.org',57),(79,'Kristopher','Morgan','001-229-807-0512','ksmith@example.net',56),(80,'Crystal','Schneider','575.801.3197x686','xhendricks@example.net',35),(81,'Carla','Murray','888.816.5874','ayalaalexa@example.com',54),(82,'Timothy','Sanchez','(436)825-9417','joshuaramirez@example.net',28),(83,'Roger','Mullins','9262669795','kthompson@example.com',34),(84,'Erika','Jimenez','371-633-4184','joshua95@example.org',49),(85,'Troy','Ellis','8272906557','medinafrancis@example.com',59),(86,'Jaclyn','Farley','001-424-808-1668x610','xporter@example.com',65),(87,'Sherri','Benitez','+1-758-299-9492','nflores@example.org',43),(88,'Joseph','Ayers','813-223-0534','olivernicholas@example.org',20),(89,'Mandy','Rogers','+1-299-648-6981','richardcollins@example.net',61),(90,'Matthew','Washington','+1-726-376-0125x63186','woodamber@example.com',26),(91,'Michael','Robinson','(940)407-3562x324','zbarnett@example.com',48),(92,'Rachel','Baker','(213)280-0133x690','wjohnson@example.org',31),(93,'Ashley','Morris','(323)268-2971','jamesthompson@example.net',23),(94,'Haley','Gomez','+1-376-395-4142x205','edwardstewart@example.net',36),(95,'Stephanie','Lopez','439-545-6186x185','jeremykim@example.net',55),(96,'William','Adkins','(894)402-4248','coreytaylor@example.net',32),(97,'Richard','Barnes','478.573.9157','friedmandonna@example.org',18),(98,'Tammy','Kelly','(219)980-1911x068','edoyle@example.net',34),(99,'Justin','Chase','667.533.0930','stacyhoward@example.net',48),(100,'Wanda','Perez','423.657.6435','jill80@example.org',49),(101,'Richard','King','+1-986-477-4894','qhenderson@example.net',63),(102,'Felicia','Williams','(336)562-4631x36524','murphylevi@example.com',56),(103,'Lauren','Chung','(841)250-3771x00170','esmith@example.net',40),(104,'Sergio','Joseph','(590)657-8200','bryanjones@example.com',34),(105,'Todd','Hopkins','249-848-4993','ericbrown@example.com',23),(106,'Peter','Daniel','2576802782','davidbrown@example.org',28),(107,'Paula','Baker','(281)779-5790','zacharybaker@example.net',46),(108,'Johnny','Wright','919-755-3211x22158','bgross@example.org',33),(109,'Steve','Flores','263-667-0546x220','icook@example.org',64),(110,'Lori','Pierce','594-865-6387x2255','billwilliams@example.com',52),(111,'Holly','Young','001-432-422-0048x47515','garciaedward@example.net',42),(112,'Joshua','Obrien','576.811.0520x96438','matthewmiller@example.com',52),(113,'Rebecca','Rice','425-283-1498x4496','smorris@example.net',33),(114,'Joseph','Arroyo','987-636-6614x6970','tortiz@example.org',50),(115,'Elizabeth','Rogers','9217190462','alyssa37@example.com',58),(116,'Gary','Villanueva','+1-700-587-0112x6419','qjackson@example.net',18),(117,'Carolyn','Peters','801.285.1008','davischristopher@example.net',65),(118,'Corey','Martin','(557)926-6015x54192','garcialaura@example.com',60),(119,'Jacob','Allen','352-676-6533x2609','mcooper@example.org',50),(120,'Charles','Davis','+1-908-406-8553x87493','corylucas@example.com',33),(121,'Jeffrey','Taylor','960-277-1141','kristi55@example.org',48),(122,'Ronald','Goodman','954.341.8883','chenlisa@example.org',30),(123,'Michael','Black','+1-693-254-9459','emmasnow@example.org',32),(124,'William','Sanders','660-324-5450x9518','amy79@example.net',57),(125,'Daniel','Parker','515.977.9254x72407','portervictor@example.net',58),(126,'Amy','Evans','+1-313-826-8233x6773','anthony04@example.org',20),(127,'Megan','Glover','001-733-890-9956x591','bstark@example.com',23),(128,'Rita','Gray','(525)804-3192','karen43@example.net',26),(129,'Mark','Simmons','(836)314-5953','jillhanson@example.net',55),(130,'Amy','Curtis','683-288-8323','jonesgina@example.com',36),(131,'Darren','Riley','830.360.7175x24496','wrightolivia@example.org',64),(132,'Karen','Perez','8857815411','tharris@example.com',57),(133,'Tanya','Ryan','601.499.9693','erinbates@example.com',47),(134,'Gina','Esparza','(242)903-3593','curtismichelle@example.net',31),(135,'Michael','James','934-541-0551x66060','eric86@example.net',35),(136,'Keith','Stewart','773.877.1450x135','daniel83@example.org',53),(137,'Elizabeth','Barr','(341)218-6893x042','james58@example.com',43),(138,'Suzanne','Collins','(422)449-0936x8647','hernandezshannon@example.com',26),(139,'Gregory','Ibarra','001-337-818-9365x12680','ygordon@example.com',65),(140,'Melissa','Hughes','388-623-8621x064','robbinskevin@example.net',19),(141,'Samuel','Collins','(785)544-7931','erinmorris@example.org',53),(142,'Jason','Perez','+1-383-988-8093x53751','jenniferwilliams@example.net',46),(143,'Michael','Anderson','001-621-856-7983x73658','walkerpaul@example.com',22),(144,'Barbara','Mercer','401.610.9354x548','fkim@example.com',30),(145,'Kimberly','Sanchez','001-699-269-0331x7703','ofarley@example.org',48),(146,'Aaron','Cummings','740-653-2564x801','omontes@example.com',42),(147,'Isaiah','Willis','5622332877','johnsonjennifer@example.org',27),(148,'Matthew','Mccoy','2687713094','atrujillo@example.net',53),(149,'Roger','Perkins','4338872081','nicholas02@example.net',41),(150,'Matthew','Morales','432.236.4980','ajones@example.net',50);
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-11 22:06:55
