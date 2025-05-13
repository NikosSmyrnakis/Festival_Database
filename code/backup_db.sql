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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'Mr. Spencer White','Lawrence','2002-11-14','2006-11-13','http://www.hendrix.com/','http://www.foster.com/',3),(2,'Lauren Brown',NULL,'2003-07-08','2015-07-05','http://stewart.org/','http://www.diaz.com/',0),(3,'Melissa Wagner',NULL,'1991-10-02','2006-09-28','http://henry-montes.com/','https://cook.org/',2),(4,'Lindsey Washington','Alexis','1990-01-14','1999-01-12','https://lopez-guzman.info/','http://www.jones-reid.com/',1),(5,'Robert Harris','Rebecca','1994-06-20','2013-06-15','http://hart.com/','https://johnson.com/',1),(6,'Amy Torres',NULL,'2004-05-16','2014-05-14','http://small.org/','http://branch-mitchell.com/',2),(7,'Mr. Bruce Lee','Ronald','2002-06-02','2004-06-01','http://www.brown.com/','http://www.bautista.com/',1),(8,'Richard Glass','Sydney','2003-02-23','2005-02-22','http://johnson-murphy.com/','http://www.scott.com/',0),(9,'Kenneth Yu','Marc','1993-06-06','2007-06-03','http://www.knight.info/','https://www.jones.info/',1),(10,'Joshua Lee','Daniel','1986-04-18','2006-04-13','https://www.henry-jones.com/','http://www.wood.biz/',2),(11,'Judy Clark','Paul','1989-12-12','2007-12-08','https://www.lester-davis.com/','http://www.lopez-jenkins.biz/',2),(12,'Kenneth George','David','2002-03-17','2018-03-13','https://www.reid.net/','https://scott.com/',0),(13,'Kathy Adams',NULL,'1998-09-27','2016-09-22','http://www.peterson.com/','https://bowers-mason.biz/',2),(14,'Brenda Wu','Anthony','2002-10-16','2013-10-13','https://foster.biz/','http://mejia.com/',2),(15,'Jacob Mcknight','Angela','2000-07-22','2001-07-22','http://martinez-murphy.biz/','http://www.edwards-hill.com/',2),(16,'Ian Huff','Ryan','1976-03-10','1990-03-07','https://www.farrell.biz/','https://robinson.com/',1),(17,'Mandy Tate','Reginald','1983-08-22','1985-08-21','https://www.moore.info/','http://www.sanders-doyle.biz/',3),(18,'Dominique Ruiz','Glenn','1988-12-20','1989-12-20','https://www.ross.info/','http://bryant.com/',1),(19,'Jonathan Jones',NULL,'1999-02-06','2013-02-02','http://www.dominguez.com/','http://gibbs-wood.com/',0),(20,'Jessica White',NULL,'1992-12-15','1994-12-15','http://sandoval-james.com/','http://www.collins.com/',1),(21,'Catherine Oneill',NULL,'1993-04-27','1996-04-26','http://anderson-adams.com/','http://johnson.biz/',1),(22,'Jessica Morton','Andrew','2000-05-18','2011-05-16','https://www.costa.info/','http://www.walker.com/',2),(23,'James Sanchez','Carly','1977-05-09','1984-05-07','https://miller-grimes.com/','http://www.anderson-sanchez.com/',3),(24,'Raymond Valdez','Rachel','2003-11-16','2017-11-12','http://garcia-chen.com/','http://lambert.com/',0),(25,'Christopher Mclean',NULL,'2004-10-15','2012-10-13','https://ramirez.info/','https://haynes.biz/',0),(26,'Bryan Greene','Randall','1999-07-30','2012-07-26','https://pierce.net/','https://rivera.net/',1),(27,'Brandy Wilson',NULL,'1984-04-29','1994-04-27','https://mcdowell-moon.com/','https://rivera-keller.com/',1),(28,'Rachel Smith',NULL,'1982-04-10','1991-04-08','https://www.maxwell-acosta.com/','http://www.mitchell-simpson.com/',2),(29,'Robert Johnson','Kent','1998-04-11','2009-04-08','http://cox.com/','https://www.patterson.org/',2),(30,'Paula Taylor',NULL,'1999-11-10','2019-11-05','http://castro.com/','http://fletcher-ramirez.com/',3),(31,'Wendy Graham',NULL,'1989-01-23','1995-01-22','https://blevins-kaufman.info/','https://www.long.com/',2),(32,'Stacey Chavez','Cody','1999-06-11','2007-06-09','http://www.johnson-gallagher.com/','https://gonzalez.net/',3),(33,'Linda Brown','Amanda','1998-05-21','2016-05-16','http://www.davila-hawkins.com/','https://www.suarez.com/',1),(34,'Lisa Crawford',NULL,'1983-02-28','1985-02-27','http://www.jackson.info/','https://williams-howard.com/',2),(35,'Leah Meyer','Tyler','1975-03-09','1987-03-06','https://alexander.info/','http://www.white.com/',3),(36,'Richard Curtis',NULL,'1980-12-07','1997-12-03','https://www.carroll.com/','https://www.brown-jenkins.org/',2),(37,'Pamela Barnett',NULL,'1980-04-23','1997-04-19','http://www.espinoza.net/','https://thompson.com/',1),(38,'Karen Caldwell',NULL,'2003-04-14','2019-04-10','http://ross.com/','https://www.white.com/',3),(39,'Patrick Lin','Alexandra','1986-03-15','1993-03-13','https://www.garrison-sanford.com/','https://smith-russell.com/',0),(40,'Shane Clark',NULL,'1998-12-11','2006-12-09','https://www.hamilton-martin.com/','http://www.hayden-delacruz.net/',2),(41,'Donna Hill','Matthew','1975-05-13','1983-05-11','https://kelly-cox.com/','http://ramos.com/',1),(42,'Douglas Martin DVM','Roberto','1988-06-12','1995-06-11','http://www.mitchell.org/','http://johnson.biz/',3),(43,'Jason Haney',NULL,'1987-12-04','1988-12-03','http://bowen-yates.com/','http://yoder-smith.com/',0),(44,'Ernest Long',NULL,'2004-05-26','2009-05-25','https://www.gray.com/','http://www.diaz.info/',0),(45,'Tyler Jones','Jill','1984-12-09','2002-12-05','http://www.cox.com/','http://floyd-pham.com/',1),(46,'Martha Lewis','Patrick','1976-06-03','1989-05-31','https://lowe.com/','http://chapman-norris.com/',3),(47,'Eric Gonzalez',NULL,'1992-05-23','2010-05-19','https://www.martinez-donovan.com/','http://adams.net/',3),(48,'Jenna Mitchell','Tiffany','1983-02-23','1995-02-20','https://www.richmond-lee.biz/','http://morales.com/',3),(49,'Danielle Howard','Monica','1985-10-31','2000-10-27','http://www.sullivan.com/','http://www.anderson.org/',1),(50,'Lisa Lopez','Maria','2001-10-22','2014-10-19','http://www.mcgrath-aguilar.biz/','https://www.lewis.net/',0);
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
INSERT INTO `building` VALUES (1,'Harris-Brown','Public itself daughter from mission wear fact. People price other take painting machine system sound. Activity stage probably old stay control.',966),(2,'Atkins, Guzman and Cohen','Drop development sure next. Guy remember child security.',551),(3,'Anderson, Stafford and Sparks','Why party knowledge event in thing similar listen. Level short hotel board give support poor.\nLook out do everybody. Figure edge against.\nAuthor ahead everything bag only front.',749),(4,'Smith and Sons','Use morning front decide. Could election compare summer speech.\nServe expert among concern enough girl child. Serve simply different standard. Fill little toward speak wall sense next size.',410),(5,'Edwards and Sons','Behavior federal enough might these. Worry until cover everybody. Subject attention capital science quality expert imagine capital.',942),(6,'Smith Ltd','Watch model set citizen benefit information. Possible believe state political maintain finish property hundred.\nStrong over view professional father across ten bank. Success guess join inside.',889),(7,'Berry LLC','Card support alone offer million blue. Decide probably be know scientist question positive.',148),(8,'Rogers-Dunlap','Ok political clearly fund head family. Growth town call hit yet politics perform protect.\nShake film know under nearly trip. Seven concern piece tend best pretty.',480),(9,'Williams, Robles and Ryan','Cut past add door sing sort former. Large leave major analysis argue.\nYard gun trial family prove wrong necessary.\nGirl leg industry American. Great must claim interesting try.',895),(10,'Benson LLC','Range claim when forward me.\nExist official difference face three through number. Newspaper from scene. Population learn billion somebody minute.\nChurch stay save. Yet area process move.',415),(11,'Lam-Wolfe','Attention black analysis until century program always interview. According sit heart.\nGood interesting often class. Break main three coach chair our white where.',989),(12,'Trevino, Lambert and Hall','Crime thought economic civil ago interview item. Do recognize show protect himself six try. Score Mr sound charge.',428),(13,'Perkins, Peterson and Ford','Win player build role condition former. Early throw PM modern. One maintain suddenly spend.\nPretty find defense story sing far. Week stuff positive act road lead mother.',509),(14,'Boyd-Johnson','Blue yourself push allow. Occur lose benefit huge.\nExample factor mind raise when weight consider. Same throughout friend serious.',475),(15,'Garcia-Cortez','Right it truth young there determine where. Just shake might section. Dog couple cover.\nDetail fly behavior actually. Could history free together nearly husband relationship. Senior test change have.',504),(16,'Moore-Cox','Put finish glass style. Product too rather theory drug.\nVote memory argue newspaper rate.\nAdmit season other recently.',404),(17,'Mcneil-Lee','Large population rest food approach. Camera open themselves national star building.',853),(18,'Osborne, Johnson and Long','Analysis artist fine every would. Hundred mission reflect another operation.\nWin campaign beat reach before happen.\nOnly order too. Tax teacher half camera benefit open garden.',162),(19,'Brown, Moore and Glover','Oil paper grow. Out cup memory leg pull.\nStation contain market on perhaps up. Effect firm since never former too. Employee something believe mind everyone to.',643),(20,'Martin Ltd','Would data business edge lawyer notice discuss. Sell story example able camera actually can.',861),(21,'Barnes Ltd','Window point born development how reason.\nAll during also let even. Four have individual improve impact girl people partner.',200),(22,'Harper, Foley and Wells','Analysis shake who test. Second fear follow conference. Effect rate toward property set catch buy. Prove five call close.\nSenior black attack discover about point example perhaps. Kid phone test.',725),(23,'Allen-Ortiz','Focus attack lay indeed his body civil. Citizen really standard plan care. The fill son.\nFine analysis understand enter how citizen control. Open guy family anyone.',919),(24,'Cowan Ltd','Beyond everything scientist response rather. Evidence would how work real.',605),(25,'Moreno LLC','Forward pick pretty determine two. Approach take ready tell area thought sense.',859),(26,'Vaughn Group','Father see position democratic significant now. What media machine traditional. Card whose of water.',400),(27,'Jones-Payne','Level hear feeling. Drive action wife back.\nActivity everyone design attack. Place affect then career. Close ready recently child form. Painting clearly anything call lead.',255),(28,'Velez, Newman and Stewart','Development physical family under.\nBlack describe stand ball guess life all. Stay heart building everyone question. Mission participant upon think simply to.',458),(29,'Bolton-Collins','Fill social key by evening who bag your. Similar news population spring.\nExactly court know behind practice social. Push weight low better firm. Why throw couple require turn box.',423),(30,'Valenzuela-Cruz','What Mrs budget father century market. Agent marriage our police first cause these standard.\nAllow my current part painting reduce. Participant again view special nearly apply role.',859);
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
INSERT INTO `buyer` VALUES (49),(64),(73),(83),(145),(150);
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
  KEY `festival_ID` (`festival_ID`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`building_ID`) REFERENCES `building` (`building_ID`),
  CONSTRAINT `events_ibfk_2` FOREIGN KEY (`festival_ID`) REFERENCES `festival` (`festival_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,'Front Concert',1,'2017-07-08 09:33:00','2017-07-08 12:53:00',27,200,5,9,95),(2,1,'Performance Concert',2,'2017-07-09 08:26:00','2017-07-09 11:47:00',28,201,10,7,88),(3,1,'Himself Concert',2,'2017-07-09 13:18:00','2017-07-09 16:37:00',6,199,8,9,90),(4,1,'Economy Concert',2,'2017-07-09 18:00:00','2017-07-09 21:15:00',24,195,7,10,87),(5,1,'Degree Concert',2,'2017-07-09 22:51:00','2017-07-09 02:18:00',7,207,8,10,90),(6,1,'Nice Concert',2,'2017-07-09 03:38:00','2017-07-09 06:55:00',22,197,5,1,91),(7,1,'Action Concert',2,'2017-07-09 08:17:00','2017-07-09 11:35:00',10,198,7,10,84),(8,1,'When Concert',2,'2017-07-09 13:06:00','2017-07-09 16:42:00',14,216,10,10,100),(9,1,'Show Concert',3,'2017-07-10 08:51:00','2017-07-10 11:57:00',21,186,6,7,86),(10,1,'Make Concert',4,'2017-07-11 08:39:00','2017-07-11 11:53:00',30,194,7,10,84),(11,1,'Western Concert',5,'2017-07-12 08:22:00','2017-07-12 11:49:00',29,207,7,10,88),(12,1,'Region Concert',5,'2017-07-12 12:20:00','2017-07-12 15:52:00',23,212,7,9,96),(13,1,'Attack Concert',5,'2017-07-12 16:44:00','2017-07-12 19:55:00',15,191,10,7,99),(14,1,'Director Concert',5,'2017-07-12 21:31:00','2017-07-12 00:34:00',8,183,5,3,85),(15,2,'Believe Concert',1,'2018-07-22 08:59:00','2018-07-22 12:15:00',27,196,9,10,91),(16,2,'As Concert',1,'2018-07-22 13:39:00','2018-07-22 17:09:00',5,210,8,10,83),(17,2,'Easy Concert',1,'2018-07-22 17:30:00','2018-07-22 20:51:00',1,201,10,2,81),(18,2,'Sometimes Concert',1,'2018-07-22 21:12:00','2018-07-22 00:30:00',13,198,8,10,98),(19,2,'Bag Concert',1,'2018-07-22 01:09:00','2018-07-22 04:13:00',25,184,10,10,88),(20,2,'But Concert',1,'2018-07-22 04:49:00','2018-07-22 08:26:00',18,217,10,10,88),(21,2,'Crime Concert',2,'2018-07-23 09:20:00','2018-07-23 12:45:00',18,205,5,9,93),(22,2,'Ago Concert',2,'2018-07-23 13:29:00','2018-07-23 16:51:00',29,202,6,6,90),(23,2,'Size Concert',2,'2018-07-23 18:13:00','2018-07-23 21:47:00',23,214,5,10,84),(24,2,'Protect Concert',2,'2018-07-23 22:48:00','2018-07-23 01:53:00',17,185,7,10,99),(25,2,'Why Concert',2,'2018-07-23 12:55:00','2018-07-23 15:58:00',18,183,9,10,82),(26,2,'Group Concert',2,'2018-07-23 21:57:00','2018-07-24 01:30:00',23,213,9,9,96),(27,2,'Argue Concert',2,'2018-07-23 11:54:00','2018-07-23 15:06:00',24,192,6,6,87),(28,2,'Physical Concert',3,'2018-07-24 09:00:00','2018-07-24 12:24:00',5,204,5,8,82),(29,2,'Age Concert',3,'2018-07-24 13:22:00','2018-07-24 16:40:00',7,198,5,10,91),(30,2,'Ten Concert',3,'2018-07-24 17:33:00','2018-07-24 21:11:00',11,218,7,8,99),(31,2,'Between Concert',3,'2018-07-24 21:42:00','2018-07-24 01:09:00',22,207,8,9,100),(32,2,'Moment Concert',3,'2018-07-24 01:33:00','2018-07-24 05:09:00',28,216,6,5,90),(33,2,'View Concert',3,'2018-07-24 05:59:00','2018-07-24 09:19:00',21,200,6,7,93),(34,2,'Attorney Concert',3,'2018-07-24 10:19:00','2018-07-24 13:54:00',20,215,9,10,95),(35,2,'Hundred Concert',4,'2018-07-25 09:09:00','2018-07-25 12:21:00',25,192,5,6,90),(36,2,'Purpose Concert',4,'2018-07-25 12:41:00','2018-07-25 15:59:00',16,198,5,6,96),(37,2,'Member Concert',4,'2018-07-25 16:59:00','2018-07-25 20:16:00',6,197,6,8,95),(38,2,'Reveal Concert',4,'2018-07-25 21:32:00','2018-07-25 00:33:00',4,181,5,10,88),(39,2,'Under Concert',4,'2018-07-25 01:17:00','2018-07-25 04:40:00',29,203,5,6,80),(40,2,'Form Concert',4,'2018-07-25 05:54:00','2018-07-25 09:01:00',12,187,9,6,88),(41,2,'Change Concert',5,'2018-07-26 09:30:00','2018-07-26 12:39:00',22,189,5,7,100),(42,2,'Success Concert',5,'2018-07-26 13:38:00','2018-07-26 16:41:00',9,183,10,5,98),(43,2,'At Concert',5,'2018-07-26 17:48:00','2018-07-26 21:11:00',4,203,6,9,96),(44,2,'This Concert',5,'2018-07-26 22:13:00','2018-07-26 01:31:00',8,198,7,8,91),(45,2,'Machine Concert',5,'2018-07-26 03:05:00','2018-07-26 06:40:00',10,215,5,10,91),(46,2,'Health Concert',5,'2018-07-26 08:04:00','2018-07-26 11:35:00',14,211,9,7,87),(47,2,'Box Concert',5,'2018-07-26 13:15:00','2018-07-26 16:36:00',23,201,5,9,99),(48,2,'Visit Concert',5,'2018-07-26 17:09:00','2018-07-26 20:15:00',3,186,6,6,93),(49,2,'Action Concert',5,'2018-07-26 20:58:00','2018-07-26 00:07:00',5,189,10,9,83),(50,2,'Truth Concert',5,'2018-07-26 01:37:00','2018-07-26 04:42:00',25,185,10,9,89),(51,3,'Positive Concert',1,'2019-08-28 08:51:00','2019-08-28 12:07:00',22,196,9,5,85),(52,3,'Feel Concert',1,'2019-08-28 13:01:00','2019-08-28 16:13:00',18,192,6,5,84),(53,3,'Participant Concert',1,'2019-08-28 16:38:00','2019-08-28 20:06:00',1,208,8,8,98),(54,3,'Really Concert',2,'2019-08-29 09:20:00','2019-08-29 12:40:00',22,200,10,10,94),(55,3,'Concern Concert',2,'2019-08-29 14:11:00','2019-08-29 17:51:00',19,220,6,8,92),(56,3,'Child Concert',2,'2019-08-29 18:51:00','2019-08-29 22:21:00',21,210,7,5,86),(57,3,'Strong Concert',2,'2019-08-29 23:39:00','2019-08-29 02:58:00',15,199,9,9,100),(58,3,'Large Concert',2,'2019-08-29 03:50:00','2019-08-29 07:04:00',25,194,9,7,85),(59,3,'Significant Concert',2,'2019-08-29 08:27:00','2019-08-29 11:51:00',16,204,8,9,97),(60,3,'Very Concert',2,'2019-08-29 12:59:00','2019-08-29 16:11:00',2,192,9,9,92),(61,3,'Oil Concert',2,'2019-08-29 16:57:00','2019-08-29 20:02:00',1,185,9,5,93),(62,3,'White Concert',2,'2019-08-29 20:32:00','2019-08-29 00:07:00',10,215,5,7,95),(63,3,'Even Concert',3,'2019-08-30 08:56:00','2019-08-30 12:18:00',29,202,8,8,88),(64,3,'Election Concert',3,'2019-08-30 13:35:00','2019-08-30 16:49:00',4,194,5,6,100),(65,3,'Itself Concert',3,'2019-08-30 18:15:00','2019-08-30 21:27:00',5,192,10,5,98),(66,3,'While Concert',3,'2019-08-30 21:49:00','2019-08-30 01:20:00',20,211,9,10,100),(67,3,'Result Concert',3,'2019-08-30 02:28:00','2019-08-30 05:39:00',11,191,8,6,98),(68,3,'Less Concert',4,'2019-08-31 09:34:00','2019-08-31 13:13:00',9,219,7,9,81),(69,3,'Wide Concert',4,'2019-08-31 13:39:00','2019-08-31 17:11:00',22,212,5,8,86),(70,3,'Every Concert',4,'2019-08-31 18:31:00','2019-08-31 22:02:00',24,211,8,8,88),(71,3,'Read Concert',5,'2019-09-01 09:32:00','2019-09-01 12:51:00',15,199,10,9,84),(72,3,'Forward Concert',5,'2019-09-01 13:48:00','2019-09-01 16:54:00',7,186,8,8,94),(73,3,'Wonder Concert',5,'2019-09-01 18:32:00','2019-09-01 21:47:00',20,195,9,7,89),(74,4,'Allow Concert',1,'2020-07-23 08:23:00','2020-07-23 11:35:00',21,192,5,8,92),(75,4,'National Concert',1,'2020-07-23 12:25:00','2020-07-23 15:59:00',29,214,6,9,82),(76,4,'Past Concert',1,'2020-07-23 17:05:00','2020-07-23 20:35:00',7,210,7,1,96),(77,4,'Evidence Concert',2,'2020-07-24 09:21:00','2020-07-24 12:38:00',17,197,8,9,97),(78,4,'Company Concert',3,'2020-07-25 09:16:00','2020-07-25 12:21:00',1,185,7,9,81),(79,4,'Heavy Concert',3,'2020-07-25 12:58:00','2020-07-25 16:10:00',30,192,9,6,96),(80,4,'Still Concert',3,'2020-07-25 17:11:00','2020-07-25 20:40:00',29,209,7,9,94),(81,4,'Rest Concert',3,'2020-07-25 21:07:00','2020-07-25 00:46:00',2,219,5,8,95),(82,4,'Key Concert',3,'2020-07-25 20:50:00','2020-07-25 23:55:00',29,185,8,8,83),(83,5,'Discuss Concert',1,'2021-07-28 09:27:00','2021-07-28 12:47:00',9,200,5,7,93),(84,5,'Rock Concert',1,'2021-07-28 14:27:00','2021-07-28 17:57:00',30,210,9,7,92),(85,5,'Interest Concert',1,'2021-07-28 18:31:00','2021-07-28 21:36:00',3,185,10,6,89),(86,5,'Over Concert',1,'2021-07-28 22:04:00','2021-07-28 01:13:00',4,189,7,9,99),(87,5,'Ahead Concert',1,'2021-07-28 02:05:00','2021-07-28 05:06:00',20,181,8,7,85),(88,5,'Drop Concert',2,'2021-07-29 08:42:00','2021-07-29 11:55:00',8,193,9,10,85),(89,5,'Long Concert',2,'2021-07-29 13:18:00','2021-07-29 16:42:00',3,204,8,8,88),(90,5,'There Concert',2,'2021-07-29 18:21:00','2021-07-29 21:41:00',23,200,8,6,84),(91,5,'Interest Concert',2,'2021-07-29 22:34:00','2021-07-29 01:55:00',3,201,9,8,82),(92,5,'Seem Concert',2,'2021-07-29 03:17:00','2021-07-29 06:55:00',6,218,7,5,81),(93,5,'Same Concert',2,'2021-07-29 08:32:00','2021-07-29 11:53:00',28,201,6,1,82),(94,5,'Spring Concert',2,'2021-07-29 12:22:00','2021-07-29 15:43:00',6,201,10,8,82),(95,5,'Must Concert',2,'2021-07-29 16:05:00','2021-07-29 19:27:00',22,202,5,8,100),(96,5,'Positive Concert',2,'2021-07-29 20:00:00','2021-07-29 23:03:00',4,183,10,7,90),(97,5,'Arm Concert',2,'2021-07-29 23:34:00','2021-07-29 02:55:00',30,201,10,5,85),(98,5,'Participant Concert',3,'2021-07-30 09:31:00','2021-07-30 12:50:00',22,199,10,10,95),(99,5,'Produce Concert',3,'2021-07-30 13:20:00','2021-07-30 16:34:00',23,194,6,5,88),(100,5,'Would Concert',3,'2021-07-30 16:58:00','2021-07-30 20:13:00',28,195,6,7,88),(101,5,'Sell Concert',4,'2021-07-31 08:51:00','2021-07-31 12:29:00',2,218,5,6,85),(102,5,'Evening Concert',4,'2021-07-31 12:51:00','2021-07-31 16:15:00',18,204,9,5,86),(103,5,'Fear Concert',4,'2021-07-31 17:11:00','2021-07-31 20:21:00',20,190,8,10,82),(104,5,'Month Concert',4,'2021-07-31 21:15:00','2021-07-31 00:40:00',12,205,10,7,88),(105,5,'Charge Concert',4,'2021-07-31 01:06:00','2021-07-31 04:32:00',14,206,5,9,81),(106,5,'Effect Concert',4,'2021-07-31 05:47:00','2021-07-31 09:14:00',5,207,9,7,90),(107,5,'Dream Concert',4,'2021-07-31 10:10:00','2021-07-31 13:49:00',30,219,8,6,81),(108,5,'Grow Concert',4,'2021-07-31 14:15:00','2021-07-31 17:42:00',29,207,7,7,94),(109,5,'Modern Concert',4,'2021-07-31 20:31:00','2021-07-31 23:45:00',20,194,10,9,84),(110,6,'Coach Concert',1,'2022-09-14 08:46:00','2022-09-14 12:07:00',19,201,5,1,91),(111,6,'Guess Concert',1,'2022-09-14 13:44:00','2022-09-14 17:11:00',17,207,9,10,84),(112,6,'Manage Concert',1,'2022-09-14 17:34:00','2022-09-14 20:39:00',16,185,8,8,96),(113,6,'Floor Concert',1,'2022-09-14 22:14:00','2022-09-14 01:46:00',16,212,8,9,84),(114,6,'Hundred Concert',1,'2022-09-14 03:11:00','2022-09-14 06:49:00',21,218,7,10,87),(115,6,'Within Concert',1,'2022-09-14 07:37:00','2022-09-14 10:49:00',5,192,8,5,96),(116,6,'Training Concert',2,'2022-09-15 09:38:00','2022-09-15 13:00:00',24,202,7,10,92),(117,6,'Toward Concert',2,'2022-09-15 14:37:00','2022-09-15 18:14:00',10,217,9,8,100),(118,6,'Simple Concert',2,'2022-09-15 19:30:00','2022-09-15 22:58:00',22,208,8,7,82),(119,6,'Lawyer Concert',2,'2022-09-15 00:26:00','2022-09-15 03:28:00',15,182,10,7,88),(120,6,'Happy Concert',2,'2022-09-15 04:44:00','2022-09-15 07:52:00',12,188,5,8,99),(121,6,'A Concert',3,'2022-09-16 09:39:00','2022-09-16 12:44:00',10,185,7,5,86),(122,6,'Way Concert',3,'2022-09-16 13:08:00','2022-09-16 16:28:00',11,200,8,5,89),(123,6,'Stock Concert',3,'2022-09-16 17:24:00','2022-09-16 20:32:00',2,188,6,7,95),(124,6,'Child Concert',3,'2022-09-16 21:59:00','2022-09-16 01:25:00',23,206,9,6,96),(125,6,'Ready Concert',3,'2022-09-16 01:52:00','2022-09-16 05:20:00',5,208,6,8,100),(126,6,'Someone Concert',3,'2022-09-16 06:39:00','2022-09-16 09:56:00',7,197,10,10,82),(127,6,'Old Concert',3,'2022-09-16 11:01:00','2022-09-16 14:03:00',17,182,9,6,84),(128,6,'But Concert',4,'2022-09-17 09:07:00','2022-09-17 12:08:00',12,181,7,5,94),(129,6,'Relationship Concert',4,'2022-09-17 13:39:00','2022-09-17 16:46:00',16,187,9,7,82),(130,6,'Successful Concert',4,'2022-09-17 17:51:00','2022-09-17 21:16:00',22,205,10,5,93),(131,6,'Line Concert',4,'2022-09-17 22:04:00','2022-09-17 01:37:00',17,213,7,9,93),(132,6,'Fact Concert',4,'2022-09-17 02:28:00','2022-09-17 05:29:00',3,181,9,7,80),(133,6,'Other Concert',4,'2022-09-17 05:52:00','2022-09-17 09:03:00',5,191,5,10,92),(134,6,'Series Concert',4,'2022-09-17 09:49:00','2022-09-17 13:27:00',26,218,5,8,93),(135,6,'Yard Concert',4,'2022-09-17 14:49:00','2022-09-17 18:05:00',15,196,9,6,95),(136,6,'Operation Concert',5,'2022-09-18 08:47:00','2022-09-18 12:23:00',29,216,6,8,88),(137,6,'Its Concert',5,'2022-09-18 13:33:00','2022-09-18 16:41:00',19,188,7,10,92),(138,6,'Key Concert',5,'2022-09-18 17:34:00','2022-09-18 20:51:00',21,197,8,9,80),(139,6,'Some Concert',5,'2022-09-18 21:45:00','2022-09-18 01:11:00',13,206,7,7,82),(140,6,'Statement Concert',5,'2022-09-18 02:06:00','2022-09-18 05:45:00',24,219,10,10,93),(141,7,'Director Concert',1,'2023-09-11 09:12:00','2023-09-11 12:23:00',21,191,9,1,96),(142,7,'Minute Concert',1,'2023-09-11 13:46:00','2023-09-11 17:11:00',29,205,10,7,97),(143,7,'If Concert',1,'2023-09-11 18:39:00','2023-09-11 22:16:00',17,217,9,1,96),(144,7,'Leave Concert',1,'2023-09-11 23:22:00','2023-09-11 02:58:00',1,216,7,8,80),(145,7,'Step Concert',1,'2023-09-11 03:37:00','2023-09-11 07:01:00',16,204,5,5,85),(146,7,'According Concert',2,'2023-09-12 09:23:00','2023-09-12 12:46:00',26,203,8,7,80),(147,7,'Alone Concert',3,'2023-09-13 08:27:00','2023-09-13 11:39:00',8,192,10,9,82),(148,7,'Partner Concert',3,'2023-09-13 12:06:00','2023-09-13 15:42:00',30,216,6,8,81),(149,7,'About Concert',3,'2023-09-13 16:02:00','2023-09-13 19:17:00',2,195,5,5,81),(150,7,'Show Concert',3,'2023-09-13 20:35:00','2023-09-13 23:56:00',28,201,7,6,82),(151,8,'Star Concert',1,'2024-07-15 08:33:00','2024-07-15 11:38:00',13,185,8,9,84),(152,8,'Item Concert',1,'2024-07-15 12:58:00','2024-07-15 16:14:00',19,196,10,6,99),(153,8,'Pass Concert',1,'2024-07-15 16:37:00','2024-07-15 19:51:00',6,194,6,1,98),(154,8,'Next Concert',1,'2024-07-15 20:36:00','2024-07-15 23:40:00',17,184,10,6,85),(155,8,'Lose Concert',1,'2024-07-15 00:51:00','2024-07-15 04:21:00',7,210,9,5,81),(156,8,'Across Concert',1,'2024-07-15 05:10:00','2024-07-15 08:45:00',18,215,8,6,92),(157,8,'Him Concert',2,'2024-07-16 08:22:00','2024-07-16 11:59:00',29,217,5,7,84),(158,8,'Enjoy Concert',2,'2024-07-16 13:13:00','2024-07-16 16:31:00',17,198,8,7,80),(159,8,'Add Concert',2,'2024-07-16 17:53:00','2024-07-16 21:00:00',9,187,8,7,100),(160,8,'Leader Concert',3,'2024-07-17 08:21:00','2024-07-17 11:42:00',24,201,5,5,87),(161,8,'Accept Concert',3,'2024-07-17 12:19:00','2024-07-17 15:22:00',29,183,8,5,86),(162,8,'Leg Concert',3,'2024-07-17 15:56:00','2024-07-17 19:30:00',15,214,9,9,89),(163,8,'Ten Concert',3,'2024-07-17 20:07:00','2024-07-17 23:17:00',8,190,9,8,97),(164,8,'Close Concert',3,'2024-07-17 11:52:00','2024-07-17 15:24:00',24,212,8,7,91),(165,8,'Candidate Concert',3,'2024-07-17 19:40:00','2024-07-17 23:17:00',15,217,6,8,100),(166,8,'Before Concert',3,'2024-07-17 08:47:00','2024-07-17 12:00:00',18,193,8,7,81),(167,8,'Government Concert',3,'2024-07-17 12:27:00','2024-07-17 16:02:00',14,215,8,6,81),(168,8,'To Concert',3,'2024-07-17 17:26:00','2024-07-17 21:04:00',10,218,8,10,99),(169,8,'Food Concert',3,'2024-07-17 22:00:00','2024-07-17 01:33:00',9,213,5,9,99),(170,9,'Million Concert',1,'2025-09-25 09:12:00','2025-09-25 12:28:00',18,196,8,6,93),(171,9,'Leader Concert',1,'2025-09-25 13:40:00','2025-09-25 17:09:00',5,209,7,1,98),(172,9,'Add Concert',1,'2025-09-25 18:02:00','2025-09-25 21:08:00',13,186,8,8,89),(173,9,'Usually Concert',1,'2025-09-25 21:49:00','2025-09-25 00:51:00',10,182,6,1,80),(174,9,'Whom Concert',1,'2025-09-25 02:07:00','2025-09-25 05:35:00',8,208,10,9,91),(175,9,'Leg Concert',1,'2025-09-25 06:53:00','2025-09-25 10:03:00',24,190,9,6,97),(176,9,'Situation Concert',1,'2025-09-25 10:23:00','2025-09-25 13:26:00',27,183,8,1,97),(177,9,'From Concert',1,'2025-09-25 13:52:00','2025-09-25 17:20:00',25,208,7,5,81),(178,9,'Effort Concert',1,'2025-09-25 17:45:00','2025-09-25 21:13:00',2,208,8,10,88),(179,9,'Authority Concert',1,'2025-09-25 21:49:00','2025-09-25 00:51:00',17,182,8,10,81),(180,9,'Ready Concert',2,'2025-09-26 09:06:00','2025-09-26 12:08:00',2,182,5,5,98),(181,9,'All Concert',2,'2025-09-26 13:33:00','2025-09-26 16:56:00',8,203,10,7,95),(182,9,'Appear Concert',2,'2025-09-26 17:54:00','2025-09-26 21:04:00',16,190,9,5,83),(183,9,'Whole Concert',2,'2025-09-26 21:44:00','2025-09-26 01:05:00',18,201,6,5,87),(184,9,'Total Concert',2,'2025-09-26 02:38:00','2025-09-26 05:52:00',25,194,6,9,82),(185,9,'Court Concert',2,'2025-09-26 06:39:00','2025-09-26 09:51:00',6,192,7,8,99),(186,9,'Rather Concert',2,'2025-09-26 11:09:00','2025-09-26 14:29:00',25,200,10,10,90),(187,9,'Republican Concert',2,'2025-09-26 15:43:00','2025-09-26 19:07:00',23,204,5,1,94),(188,9,'Itself Concert',3,'2025-09-27 08:34:00','2025-09-27 12:07:00',30,213,7,8,84),(189,9,'Chair Concert',3,'2025-09-27 13:16:00','2025-09-27 16:40:00',1,204,7,1,92),(190,9,'Film Concert',3,'2025-09-27 17:08:00','2025-09-27 20:35:00',12,207,8,6,86),(191,9,'Central Concert',3,'2025-09-27 21:21:00','2025-09-27 00:26:00',6,185,5,7,93),(192,9,'Mission Concert',3,'2025-09-27 01:29:00','2025-09-27 05:02:00',21,213,5,6,87),(193,10,'Total Concert',1,'2026-08-16 09:13:00','2026-08-16 12:14:00',26,181,6,1,89),(194,10,'Difference Concert',1,'2026-08-16 13:12:00','2026-08-16 16:16:00',16,184,5,9,99),(195,10,'Minute Concert',1,'2026-08-16 17:18:00','2026-08-16 20:36:00',14,198,8,2,99),(196,10,'True Concert',1,'2026-08-16 20:57:00','2026-08-16 00:20:00',25,203,10,2,95),(197,10,'Against Concert',1,'2026-08-16 01:36:00','2026-08-16 04:44:00',30,188,5,5,94),(198,10,'Option Concert',1,'2026-08-16 05:08:00','2026-08-16 08:31:00',27,203,6,8,90),(199,10,'Brother Concert',1,'2026-08-16 09:52:00','2026-08-16 13:10:00',19,198,8,6,81),(200,10,'Late Concert',2,'2026-08-17 09:36:00','2026-08-17 13:12:00',20,216,7,9,86);
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
INSERT INTO `festival` VALUES (1,'2017-07-08',5),(2,'2018-07-22',5),(3,'2019-08-28',5),(4,'2020-07-23',3),(5,'2021-07-28',4),(6,'2022-09-14',5),(7,'2023-09-11',3),(8,'2024-07-15',3),(9,'2025-09-25',3),(10,'2026-08-16',2);
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
INSERT INTO `festival_location` VALUES (1,1,'082 Deborah Fork Apt. 011','South Natalie','Panama','Europe','-43.929624,137.872662'),(2,2,'1756 Eric Ville','Port Danielland','Comoros','North America','57.8425945,-102.820826'),(3,3,'4816 Adam Meadow Apt. 635','Herringborough','Mauritius','South America','50.8127915,83.492355'),(4,4,'657 Kenneth Wall Suite 323','Harrisonview','Gibraltar','Europe','37.564970,83.176219'),(5,5,'714 Reese Mission Suite 025','Lake Jenniferhaven','Mozambique','North America','-4.523188,61.369675'),(6,6,'9945 Shelia Mill','Josefort','Indonesia','South America','79.5317345,-82.739327'),(7,7,'832 Wayne Knoll Suite 223','East Gary','Norfolk Island','Europe','74.451448,-93.883921'),(8,8,'884 Jessica Lake','South Monica','Belgium','North America','80.4671355,-70.173698'),(9,9,'7529 Gardner Lakes Apt. 341','Carlsonfort','United Arab Emirates','South America','-7.8651025,77.717412'),(10,10,'33650 Perry Circle Suite 070','North Julia','Iceland','Europe','-54.699529,-137.661195');
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
  KEY `artist_ID` (`artist_ID`),
  KEY `group_ID` (`group_ID`),
  CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`artist_ID`) REFERENCES `artist` (`artist_ID`),
  CONSTRAINT `genre_ibfk_2` FOREIGN KEY (`group_ID`) REFERENCES `group` (`group_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Rock','Hard Rock',1,NULL),(2,'Jazz','Smooth Jazz',2,NULL),(3,'Electronic','House',2,NULL),(4,'Pop',NULL,2,NULL),(5,'Pop',NULL,3,NULL),(6,'Electronic','House',3,NULL),(7,'Jazz','Smooth Jazz',3,NULL),(8,'Rock','Hard Rock',4,NULL),(9,'Pop',NULL,4,NULL),(10,'Rock','Hard Rock',5,NULL),(11,'Jazz','Smooth Jazz',6,NULL),(12,'Electronic','House',7,NULL),(13,'Rock','Hard Rock',8,NULL),(14,'Pop',NULL,8,NULL),(15,'Hip-Hop','Trap',8,NULL),(16,'Jazz','Smooth Jazz',9,NULL),(17,'Classical','Baroque',10,NULL),(18,'Rock','Hard Rock',10,NULL),(19,'Classical','Baroque',11,NULL),(20,'Electronic','House',11,NULL),(21,'Electronic','House',12,NULL),(22,'Pop',NULL,12,NULL),(23,'Jazz','Smooth Jazz',12,NULL),(24,'Rock','Hard Rock',13,NULL),(25,'Rock','Hard Rock',14,NULL),(26,'Classical','Baroque',14,NULL),(27,'Electronic','House',14,NULL),(28,'Jazz','Smooth Jazz',15,NULL),(29,'Classical','Baroque',15,NULL),(30,'Electronic','House',15,NULL),(31,'Hip-Hop','Trap',16,NULL),(32,'Rock','Hard Rock',17,NULL),(33,'Pop',NULL,18,NULL),(34,'Classical','Baroque',18,NULL),(35,'Jazz','Smooth Jazz',18,NULL),(36,'Rock','Hard Rock',19,NULL),(37,'Hip-Hop','Trap',19,NULL),(38,'Electronic','House',20,NULL),(39,'Hip-Hop','Trap',20,NULL),(40,'Hip-Hop','Trap',21,NULL),(41,'Pop',NULL,21,NULL),(42,'Classical','Baroque',21,NULL),(43,'Rock','Hard Rock',22,NULL),(44,'Classical','Baroque',22,NULL),(45,'Electronic','House',22,NULL),(46,'Pop',NULL,23,NULL),(47,'Electronic','House',24,NULL),(48,'Hip-Hop','Trap',24,NULL),(49,'Electronic','House',25,NULL),(50,'Pop',NULL,25,NULL),(51,'Hip-Hop','Trap',26,NULL),(52,'Electronic','House',26,NULL),(53,'Jazz','Smooth Jazz',26,NULL),(54,'Rock','Hard Rock',27,NULL),(55,'Electronic','House',27,NULL),(56,'Jazz','Smooth Jazz',27,NULL),(57,'Pop',NULL,28,NULL),(58,'Rock','Hard Rock',28,NULL),(59,'Classical','Baroque',28,NULL),(60,'Pop',NULL,29,NULL),(61,'Electronic','House',30,NULL),(62,'Jazz','Smooth Jazz',30,NULL),(63,'Classical','Baroque',30,NULL),(64,'Pop',NULL,31,NULL),(65,'Hip-Hop','Trap',31,NULL),(66,'Electronic','House',32,NULL),(67,'Classical','Baroque',32,NULL),(68,'Pop',NULL,33,NULL),(69,'Electronic','House',34,NULL),(70,'Rock','Hard Rock',34,NULL),(71,'Rock','Hard Rock',35,NULL),(72,'Jazz','Smooth Jazz',35,NULL),(73,'Classical','Baroque',35,NULL),(74,'Rock','Hard Rock',36,NULL),(75,'Hip-Hop','Trap',36,NULL),(76,'Classical','Baroque',37,NULL),(77,'Jazz','Smooth Jazz',38,NULL),(78,'Pop',NULL,39,NULL),(79,'Rock','Hard Rock',39,NULL),(80,'Jazz','Smooth Jazz',39,NULL),(81,'Classical','Baroque',40,NULL),(82,'Hip-Hop','Trap',41,NULL),(83,'Classical','Baroque',41,NULL),(84,'Pop',NULL,41,NULL),(85,'Pop',NULL,42,NULL),(86,'Classical','Baroque',42,NULL),(87,'Jazz','Smooth Jazz',43,NULL),(88,'Pop',NULL,43,NULL),(89,'Classical','Baroque',43,NULL),(90,'Pop',NULL,44,NULL),(91,'Jazz','Smooth Jazz',44,NULL),(92,'Rock','Hard Rock',44,NULL),(93,'Jazz','Smooth Jazz',45,NULL),(94,'Jazz','Smooth Jazz',46,NULL),(95,'Rock','Hard Rock',46,NULL),(96,'Classical','Baroque',46,NULL),(97,'Electronic','House',47,NULL),(98,'Rock','Hard Rock',48,NULL),(99,'Hip-Hop','Trap',48,NULL),(100,'Jazz','Smooth Jazz',49,NULL),(101,'Classical','Baroque',50,NULL),(102,'Classical','Baroque',NULL,1),(103,'Jazz','Smooth Jazz',NULL,1),(104,'Rock','Hard Rock',NULL,2),(105,'Classical','Baroque',NULL,3),(106,'Jazz','Smooth Jazz',NULL,3),(107,'Electronic','House',NULL,4),(108,'Pop',NULL,NULL,4),(109,'Rock','Hard Rock',NULL,5),(110,'Classical','Baroque',NULL,5),(111,'Electronic','House',NULL,5),(112,'Electronic','House',NULL,6),(113,'Hip-Hop','Trap',NULL,6),(114,'Rock','Hard Rock',NULL,6),(115,'Hip-Hop','Trap',NULL,7),(116,'Electronic','House',NULL,7),(117,'Pop',NULL,NULL,8),(118,'Electronic','House',NULL,8),(119,'Rock','Hard Rock',NULL,8),(120,'Rock','Hard Rock',NULL,9),(121,'Rock','Hard Rock',NULL,10),(122,'Hip-Hop','Trap',NULL,10),(123,'Rock','Hard Rock',NULL,11),(124,'Hip-Hop','Trap',NULL,11),(125,'Jazz','Smooth Jazz',NULL,12),(126,'Rock','Hard Rock',NULL,12),(127,'Electronic','House',NULL,13),(128,'Hip-Hop','Trap',NULL,13),(129,'Rock','Hard Rock',NULL,14),(130,'Electronic','House',NULL,15),(131,'Rock','Hard Rock',NULL,15),(132,'Hip-Hop','Trap',NULL,15);
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
INSERT INTO `group` VALUES (1,'Timothy Cooper Band','1984-06-16','1987-06-16','http://klein-young.com/','https://davis.info/','Kenneth Yu, Christopher Mclean, Judy Clark, ',0),(2,'Yolanda Snyder Band','1977-12-16','1994-12-12','https://cook.org/','https://west.com/','Danielle Howard, Jason Haney, ',0),(3,'Adrian Alexander Band','1979-04-28','1992-04-24','http://www.snow.com/','http://roberts-ballard.net/','Kathy Adams, Tyler Jones, Jessica White, Richard Glass, ',0),(4,'Dr. Joshua Larsen Band','2004-06-17','2021-06-13','http://anderson.com/','http://www.sanchez.com/','Linda Brown, Jenna Mitchell, ',0),(5,'Marc Stein Band','1986-09-30','1991-09-29','https://brown.net/','http://www.martin.org/','Linda Brown, Lauren Brown, Joshua Lee, ',0),(6,'Katelyn Hines Band','1999-11-08','2015-11-04','https://www.davis-woodward.info/','https://www.wright.com/','Melissa Wagner, Donna Hill, Mr. Bruce Lee, ',0),(7,'Pamela Martin Band','1992-11-20','1998-11-19','http://www.hunt-orr.biz/','http://hammond.org/','Jessica White, Kenneth George, Jacob Mcknight, ',0),(8,'Andrew Mccullough Band','1991-04-26','1995-04-25','https://www.freeman.com/','http://williams-smith.org/','Lauren Brown, Melissa Wagner, ',0),(9,'Amy Smith Band','1998-06-08','2007-06-06','http://mcmahon.com/','http://www.cross.com/','Dominique Ruiz, Linda Brown, Leah Meyer, ',0),(10,'Debra Phelps Band','2001-12-07','2018-12-03','http://white-dunlap.org/','https://jackson.com/','Lisa Crawford, Brenda Wu, Jason Haney, Dominique Ruiz, ',0),(11,'Mr. Kenneth Perez Band','2003-10-04','2019-09-30','https://www.garcia-davis.org/','https://www.ortega.com/','Mr. Bruce Lee, Wendy Graham, ',0),(12,'Trevor Burnett Band','2005-03-30','2010-03-29','http://perry.com/','https://www.cobb-cochran.com/','Amy Torres, Karen Caldwell, Jenna Mitchell, Lisa Crawford, Linda Brown, ',0),(13,'Craig Ryan Band','1998-10-05','2007-10-03','https://www.owens-donovan.com/','http://www.ingram.com/','Judy Clark, Paula Taylor, Shane Clark, Jenna Mitchell, ',0),(14,'Adrian Stevenson Band','1998-09-30','2009-09-27','https://www.estrada.com/','https://www.edwards.info/','Richard Glass, James Sanchez, Linda Brown, ',0),(15,'Evan Andrews Band','1999-02-25','2019-02-20','http://lewis.com/','http://clark-thompson.com/','Catherine Oneill, James Sanchez, Patrick Lin, Kenneth George, ',0);
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
  KEY `fk_artist_ID` (`artist_ID`),
  CONSTRAINT `fk_artist_ID` FOREIGN KEY (`artist_ID`) REFERENCES `artist` (`artist_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_group_ID` FOREIGN KEY (`group_ID`) REFERENCES `group` (`group_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_members`
--

LOCK TABLES `group_members` WRITE;
/*!40000 ALTER TABLE `group_members` DISABLE KEYS */;
INSERT INTO `group_members` VALUES (1,9),(1,11),(1,25),(2,43),(2,49),(3,8),(3,13),(3,20),(3,45),(4,33),(4,48),(5,2),(5,10),(5,33),(6,3),(6,7),(6,41),(7,12),(7,15),(7,20),(8,2),(8,3),(9,18),(9,33),(9,35),(10,14),(10,18),(10,34),(10,43),(11,7),(11,31),(12,6),(12,33),(12,34),(12,38),(12,48),(13,11),(13,30),(13,40),(13,48),(14,8),(14,23),(14,33),(15,12),(15,21),(15,23),(15,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performances`
--

LOCK TABLES `performances` WRITE;
/*!40000 ALTER TABLE `performances` DISABLE KEYS */;
INSERT INTO `performances` VALUES (1,1,'finale','2017-07-08 09:33:00','2017-07-08 11:30:00',117,27,'Jones-Payne',24,NULL),(2,2,'headline','2017-07-09 08:26:00','2017-07-09 09:08:00',42,28,'Velez, Newman and Stewart',NULL,3),(3,2,'finale','2017-07-09 09:17:00','2017-07-09 10:44:00',87,28,'Velez, Newman and Stewart',16,NULL),(4,3,'warm up','2017-07-09 13:18:00','2017-07-09 13:50:00',32,6,'Smith Ltd',NULL,1),(5,3,'headline','2017-07-09 14:03:00','2017-07-09 14:49:00',46,6,'Smith Ltd',NULL,12),(6,4,'finale','2017-07-09 18:00:00','2017-07-09 19:27:00',87,24,'Cowan Ltd',NULL,9),(7,4,'finale','2017-07-09 19:33:00','2017-07-09 21:08:00',95,24,'Cowan Ltd',1,NULL),(8,6,'finale','2017-07-09 03:38:00','2017-07-09 04:49:00',71,22,'Harper, Foley and Wells',NULL,8),(9,6,'headline','2017-07-09 04:58:00','2017-07-09 05:44:00',46,22,'Harper, Foley and Wells',NULL,4),(10,7,'warm up','2017-07-09 08:17:00','2017-07-09 09:22:00',65,10,'Benson LLC',26,NULL),(11,7,'finale','2017-07-09 09:37:00','2017-07-09 10:07:00',30,10,'Benson LLC',NULL,7),(12,8,'warm up','2017-07-09 13:06:00','2017-07-09 14:26:00',80,14,'Boyd-Johnson',29,NULL),(13,8,'warm up','2017-07-09 14:32:00','2017-07-09 15:12:00',40,14,'Boyd-Johnson',NULL,6),(14,9,'special_guest','2017-07-10 08:51:00','2017-07-10 10:35:00',104,21,'Barnes Ltd',1,NULL),(15,10,'headline','2017-07-11 08:39:00','2017-07-11 09:48:00',69,30,'Valenzuela-Cruz',41,NULL),(16,11,'special_guest','2017-07-12 08:22:00','2017-07-12 08:55:00',33,29,'Bolton-Collins',NULL,11),(17,11,'headline','2017-07-12 09:04:00','2017-07-12 10:16:00',72,29,'Bolton-Collins',NULL,15),(18,12,'headline','2017-07-12 12:20:00','2017-07-12 12:53:00',33,23,'Allen-Ortiz',3,NULL),(19,12,'special_guest','2017-07-12 13:07:00','2017-07-12 13:37:00',30,23,'Allen-Ortiz',20,NULL),(20,12,'warm up','2017-07-12 13:42:00','2017-07-12 15:18:00',96,23,'Allen-Ortiz',44,NULL),(21,13,'headline','2017-07-12 16:44:00','2017-07-12 17:42:00',58,15,'Garcia-Cortez',4,NULL),(22,15,'warm up','2018-07-22 08:59:00','2018-07-22 09:57:00',58,27,'Jones-Payne',NULL,14),(23,15,'headline','2018-07-22 10:10:00','2018-07-22 11:10:00',60,27,'Jones-Payne',50,NULL),(24,16,'warm up','2018-07-22 13:39:00','2018-07-22 14:49:00',70,5,'Edwards and Sons',NULL,8),(25,16,'warm up','2018-07-22 14:56:00','2018-07-22 15:33:00',37,5,'Edwards and Sons',30,NULL),(26,17,'headline','2018-07-22 17:30:00','2018-07-22 18:25:00',55,1,'Harris-Brown',NULL,13),(27,17,'finale','2018-07-22 18:36:00','2018-07-22 19:24:00',48,1,'Harris-Brown',NULL,6),(28,17,'headline','2018-07-22 19:33:00','2018-07-22 20:14:00',41,1,'Harris-Brown',10,NULL),(29,19,'special_guest','2018-07-22 01:09:00','2018-07-22 01:39:00',30,25,'Moreno LLC',NULL,8),(30,19,'headline','2018-07-22 01:46:00','2018-07-22 02:53:00',67,25,'Moreno LLC',NULL,7),(31,19,'headline','2018-07-22 03:03:00','2018-07-22 04:00:00',57,25,'Moreno LLC',NULL,10),(32,20,'headline','2018-07-22 04:49:00','2018-07-22 06:35:00',106,18,'Osborne, Johnson and Long',43,NULL),(33,20,'special_guest','2018-07-22 06:47:00','2018-07-22 07:50:00',63,18,'Osborne, Johnson and Long',NULL,7),(34,21,'finale','2018-07-23 09:20:00','2018-07-23 10:21:00',61,18,'Osborne, Johnson and Long',NULL,12),(35,21,'special_guest','2018-07-23 10:36:00','2018-07-23 12:35:00',119,18,'Osborne, Johnson and Long',NULL,2),(36,22,'warm up','2018-07-23 13:29:00','2018-07-23 14:07:00',38,29,'Bolton-Collins',6,NULL),(37,22,'finale','2018-07-23 14:12:00','2018-07-23 15:17:00',65,29,'Bolton-Collins',25,NULL),(38,23,'headline','2018-07-23 18:13:00','2018-07-23 19:52:00',99,23,'Allen-Ortiz',NULL,10),(39,23,'finale','2018-07-23 20:03:00','2018-07-23 20:49:00',46,23,'Allen-Ortiz',NULL,3),(40,25,'headline','2018-07-23 12:55:00','2018-07-23 14:48:00',113,18,'Osborne, Johnson and Long',10,NULL),(41,26,'finale','2018-07-23 21:57:00','2018-07-23 23:21:00',84,23,'Allen-Ortiz',NULL,12),(42,26,'headline','2018-07-23 23:28:00','2018-07-24 00:04:00',36,23,'Allen-Ortiz',NULL,3),(43,26,'finale','2018-07-24 00:10:00','2018-07-24 01:20:00',70,23,'Allen-Ortiz',NULL,11),(44,27,'warm up','2018-07-23 11:54:00','2018-07-23 13:43:00',109,24,'Cowan Ltd',NULL,8),(45,28,'warm up','2018-07-24 09:00:00','2018-07-24 09:57:00',57,5,'Edwards and Sons',NULL,2),(46,28,'finale','2018-07-24 10:03:00','2018-07-24 10:37:00',34,5,'Edwards and Sons',NULL,4),(47,28,'headline','2018-07-24 10:49:00','2018-07-24 11:50:00',61,5,'Edwards and Sons',44,NULL),(48,29,'warm up','2018-07-24 13:22:00','2018-07-24 14:39:00',77,7,'Berry LLC',NULL,13),(49,29,'warm up','2018-07-24 14:47:00','2018-07-24 15:22:00',35,7,'Berry LLC',NULL,3),(50,30,'warm up','2018-07-24 17:33:00','2018-07-24 18:51:00',78,11,'Lam-Wolfe',23,NULL),(51,32,'warm up','2018-07-24 01:33:00','2018-07-24 03:02:00',89,28,'Velez, Newman and Stewart',3,NULL),(52,32,'headline','2018-07-24 03:17:00','2018-07-24 04:30:00',73,28,'Velez, Newman and Stewart',45,NULL),(53,33,'special_guest','2018-07-24 05:59:00','2018-07-24 07:01:00',62,21,'Barnes Ltd',NULL,3),(54,34,'warm up','2018-07-24 10:19:00','2018-07-24 12:12:00',113,20,'Martin Ltd',NULL,9),(55,34,'headline','2018-07-24 12:27:00','2018-07-24 13:18:00',51,20,'Martin Ltd',8,NULL),(56,35,'finale','2018-07-25 09:09:00','2018-07-25 11:05:00',116,25,'Moreno LLC',NULL,6),(57,36,'finale','2018-07-25 12:41:00','2018-07-25 13:34:00',53,16,'Moore-Cox',24,NULL),(58,37,'headline','2018-07-25 16:59:00','2018-07-25 18:33:00',94,6,'Smith Ltd',NULL,7),(59,39,'finale','2018-07-25 01:17:00','2018-07-25 03:16:00',119,29,'Bolton-Collins',5,NULL),(60,40,'finale','2018-07-25 05:54:00','2018-07-25 07:04:00',70,12,'Trevino, Lambert and Hall',NULL,10),(61,40,'special_guest','2018-07-25 07:11:00','2018-07-25 08:05:00',54,12,'Trevino, Lambert and Hall',NULL,12),(62,41,'finale','2018-07-26 09:30:00','2018-07-26 10:08:00',38,22,'Harper, Foley and Wells',NULL,3),(63,42,'special_guest','2018-07-26 13:38:00','2018-07-26 15:24:00',106,9,'Williams, Robles and Ryan',NULL,15),(64,43,'finale','2018-07-26 17:48:00','2018-07-26 19:08:00',80,4,'Smith and Sons',NULL,9),(65,43,'finale','2018-07-26 19:15:00','2018-07-26 20:16:00',61,4,'Smith and Sons',NULL,11),(66,45,'special_guest','2018-07-26 03:05:00','2018-07-26 03:48:00',43,10,'Benson LLC',33,NULL),(67,45,'special_guest','2018-07-26 04:01:00','2018-07-26 05:24:00',83,10,'Benson LLC',NULL,5),(68,46,'special_guest','2018-07-26 08:04:00','2018-07-26 08:59:00',55,14,'Boyd-Johnson',NULL,4),(69,46,'special_guest','2018-07-26 09:13:00','2018-07-26 11:10:00',117,14,'Boyd-Johnson',NULL,1),(70,47,'headline','2018-07-26 13:15:00','2018-07-26 14:48:00',93,23,'Allen-Ortiz',26,NULL),(71,48,'headline','2018-07-26 17:09:00','2018-07-26 17:44:00',35,3,'Anderson, Stafford and Sparks',NULL,7),(72,48,'headline','2018-07-26 17:52:00','2018-07-26 18:42:00',50,3,'Anderson, Stafford and Sparks',NULL,12),(73,50,'finale','2018-07-26 01:37:00','2018-07-26 02:13:00',36,25,'Moreno LLC',26,NULL),(74,50,'headline','2018-07-26 02:28:00','2018-07-26 03:55:00',87,25,'Moreno LLC',NULL,10),(75,51,'warm up','2019-08-28 08:51:00','2019-08-28 09:52:00',61,22,'Harper, Foley and Wells',NULL,11),(76,51,'finale','2019-08-28 10:02:00','2019-08-28 11:59:00',117,22,'Harper, Foley and Wells',NULL,8),(77,52,'special_guest','2019-08-28 13:01:00','2019-08-28 14:51:00',110,18,'Osborne, Johnson and Long',14,NULL),(78,53,'special_guest','2019-08-28 16:38:00','2019-08-28 17:35:00',57,1,'Harris-Brown',NULL,3),(79,53,'finale','2019-08-28 17:45:00','2019-08-28 18:19:00',34,1,'Harris-Brown',NULL,7),(80,54,'warm up','2019-08-29 09:20:00','2019-08-29 10:40:00',80,22,'Harper, Foley and Wells',NULL,7),(81,54,'special_guest','2019-08-29 10:54:00','2019-08-29 12:09:00',75,22,'Harper, Foley and Wells',34,NULL),(82,55,'finale','2019-08-29 14:11:00','2019-08-29 16:03:00',112,19,'Brown, Moore and Glover',NULL,3),(83,55,'special_guest','2019-08-29 16:13:00','2019-08-29 16:45:00',32,19,'Brown, Moore and Glover',NULL,5),(84,55,'headline','2019-08-29 16:50:00','2019-08-29 17:51:00',61,19,'Brown, Moore and Glover',2,NULL),(85,56,'warm up','2019-08-29 18:51:00','2019-08-29 20:21:00',90,21,'Barnes Ltd',27,NULL),(86,56,'headline','2019-08-29 20:29:00','2019-08-29 21:40:00',71,21,'Barnes Ltd',NULL,15),(87,58,'headline','2019-08-29 03:50:00','2019-08-29 05:00:00',70,25,'Moreno LLC',NULL,3),(88,59,'headline','2019-08-29 08:27:00','2019-08-29 09:22:00',55,16,'Moore-Cox',NULL,3),(89,59,'warm up','2019-08-29 09:34:00','2019-08-29 11:08:00',94,16,'Moore-Cox',22,NULL),(90,60,'headline','2019-08-29 12:59:00','2019-08-29 14:08:00',69,2,'Atkins, Guzman and Cohen',NULL,5),(91,60,'warm up','2019-08-29 14:15:00','2019-08-29 15:42:00',87,2,'Atkins, Guzman and Cohen',NULL,9),(92,61,'finale','2019-08-29 16:57:00','2019-08-29 18:30:00',93,1,'Harris-Brown',NULL,7),(93,63,'warm up','2019-08-30 08:56:00','2019-08-30 09:51:00',55,29,'Bolton-Collins',NULL,7),(94,63,'finale','2019-08-30 09:56:00','2019-08-30 11:46:00',110,29,'Bolton-Collins',NULL,3),(95,64,'headline','2019-08-30 13:35:00','2019-08-30 14:29:00',54,4,'Smith and Sons',NULL,2),(96,64,'special_guest','2019-08-30 14:44:00','2019-08-30 15:30:00',46,4,'Smith and Sons',NULL,4),(97,65,'headline','2019-08-30 18:15:00','2019-08-30 18:55:00',40,5,'Edwards and Sons',NULL,10),(98,67,'finale','2019-08-30 02:28:00','2019-08-30 03:28:00',60,11,'Lam-Wolfe',NULL,10),(99,68,'finale','2019-08-31 09:34:00','2019-08-31 10:41:00',67,9,'Williams, Robles and Ryan',10,NULL),(100,69,'special_guest','2019-08-31 13:39:00','2019-08-31 14:42:00',63,22,'Harper, Foley and Wells',NULL,2),(101,69,'headline','2019-08-31 14:47:00','2019-08-31 15:18:00',31,22,'Harper, Foley and Wells',15,NULL),(102,70,'headline','2019-08-31 18:31:00','2019-08-31 19:26:00',55,24,'Cowan Ltd',NULL,9),(103,70,'warm up','2019-08-31 19:41:00','2019-08-31 20:59:00',78,24,'Cowan Ltd',NULL,6),(104,71,'finale','2019-09-01 09:32:00','2019-09-01 10:47:00',75,15,'Garcia-Cortez',NULL,4),(105,71,'finale','2019-09-01 10:52:00','2019-09-01 11:58:00',66,15,'Garcia-Cortez',NULL,10),(106,72,'special_guest','2019-09-01 13:48:00','2019-09-01 15:29:00',101,7,'Berry LLC',NULL,3),(107,72,'headline','2019-09-01 15:43:00','2019-09-01 16:27:00',44,7,'Berry LLC',44,NULL),(108,73,'special_guest','2019-09-01 18:32:00','2019-09-01 19:07:00',35,20,'Martin Ltd',NULL,9),(109,73,'finale','2019-09-01 19:22:00','2019-09-01 20:33:00',71,20,'Martin Ltd',33,NULL),(110,74,'warm up','2020-07-23 08:23:00','2020-07-23 10:06:00',103,21,'Barnes Ltd',32,NULL),(111,74,'special_guest','2020-07-23 10:14:00','2020-07-23 10:47:00',33,21,'Barnes Ltd',NULL,14),(112,75,'finale','2020-07-23 12:25:00','2020-07-23 13:11:00',46,29,'Bolton-Collins',NULL,5),(113,75,'warm up','2020-07-23 13:26:00','2020-07-23 15:05:00',99,29,'Bolton-Collins',NULL,10),(114,76,'finale','2020-07-23 17:05:00','2020-07-23 17:53:00',48,7,'Berry LLC',9,NULL),(115,77,'finale','2020-07-24 09:21:00','2020-07-24 10:24:00',63,17,'Mcneil-Lee',12,NULL),(116,78,'headline','2020-07-25 09:16:00','2020-07-25 10:42:00',86,1,'Harris-Brown',NULL,1),(117,78,'special_guest','2020-07-25 10:50:00','2020-07-25 12:20:00',90,1,'Harris-Brown',NULL,5),(118,79,'headline','2020-07-25 12:58:00','2020-07-25 14:28:00',90,30,'Valenzuela-Cruz',NULL,5),(119,80,'finale','2020-07-25 17:11:00','2020-07-25 18:58:00',107,29,'Bolton-Collins',NULL,2),(120,80,'warm up','2020-07-25 19:05:00','2020-07-25 20:39:00',94,29,'Bolton-Collins',14,NULL),(121,82,'special_guest','2020-07-25 20:50:00','2020-07-25 21:37:00',47,29,'Bolton-Collins',4,NULL),(122,82,'headline','2020-07-25 21:42:00','2020-07-25 23:37:00',115,29,'Bolton-Collins',27,NULL),(123,83,'finale','2021-07-28 09:27:00','2021-07-28 10:21:00',54,9,'Williams, Robles and Ryan',44,NULL),(124,83,'finale','2021-07-28 10:28:00','2021-07-28 12:18:00',110,9,'Williams, Robles and Ryan',NULL,12),(125,84,'finale','2021-07-28 14:27:00','2021-07-28 16:25:00',118,30,'Valenzuela-Cruz',NULL,13),(126,84,'headline','2021-07-28 16:32:00','2021-07-28 17:33:00',61,30,'Valenzuela-Cruz',19,NULL),(127,85,'headline','2021-07-28 18:31:00','2021-07-28 19:51:00',80,3,'Anderson, Stafford and Sparks',10,NULL),(128,85,'headline','2021-07-28 20:06:00','2021-07-28 20:59:00',53,3,'Anderson, Stafford and Sparks',NULL,15),(129,87,'finale','2021-07-28 02:05:00','2021-07-28 02:50:00',45,20,'Martin Ltd',NULL,4),(130,87,'special_guest','2021-07-28 03:00:00','2021-07-28 03:34:00',34,20,'Martin Ltd',NULL,8),(131,88,'finale','2021-07-29 08:42:00','2021-07-29 09:39:00',57,8,'Rogers-Dunlap',35,NULL),(132,88,'headline','2021-07-29 09:44:00','2021-07-29 11:43:00',119,8,'Rogers-Dunlap',4,NULL),(133,89,'warm up','2021-07-29 13:18:00','2021-07-29 14:08:00',50,3,'Anderson, Stafford and Sparks',NULL,15),(134,89,'headline','2021-07-29 14:19:00','2021-07-29 16:17:00',118,3,'Anderson, Stafford and Sparks',NULL,12),(135,90,'headline','2021-07-29 18:21:00','2021-07-29 19:51:00',90,23,'Allen-Ortiz',NULL,1),(136,90,'finale','2021-07-29 19:58:00','2021-07-29 21:30:00',92,23,'Allen-Ortiz',NULL,8),(137,92,'headline','2021-07-29 03:17:00','2021-07-29 03:48:00',31,6,'Smith Ltd',NULL,11),(138,92,'warm up','2021-07-29 04:01:00','2021-07-29 04:53:00',52,6,'Smith Ltd',NULL,8),(139,93,'finale','2021-07-29 08:32:00','2021-07-29 09:08:00',36,28,'Velez, Newman and Stewart',NULL,1),(140,93,'finale','2021-07-29 09:18:00','2021-07-29 10:11:00',53,28,'Velez, Newman and Stewart',NULL,4),(141,94,'headline','2021-07-29 12:22:00','2021-07-29 12:55:00',33,6,'Smith Ltd',10,NULL),(142,95,'headline','2021-07-29 16:05:00','2021-07-29 17:31:00',86,22,'Harper, Foley and Wells',NULL,6),(143,95,'headline','2021-07-29 17:37:00','2021-07-29 19:25:00',108,22,'Harper, Foley and Wells',NULL,8),(144,96,'warm up','2021-07-29 20:00:00','2021-07-29 20:31:00',31,4,'Smith and Sons',NULL,6),(145,96,'headline','2021-07-29 20:36:00','2021-07-29 22:13:00',97,4,'Smith and Sons',NULL,15),(146,98,'warm up','2021-07-30 09:31:00','2021-07-30 11:11:00',100,22,'Harper, Foley and Wells',NULL,14),(147,98,'warm up','2021-07-30 11:22:00','2021-07-30 12:21:00',59,22,'Harper, Foley and Wells',2,NULL),(148,99,'warm up','2021-07-30 13:20:00','2021-07-30 15:12:00',112,23,'Allen-Ortiz',NULL,13),(149,100,'finale','2021-07-30 16:58:00','2021-07-30 18:27:00',89,28,'Velez, Newman and Stewart',NULL,15),(150,100,'finale','2021-07-30 18:41:00','2021-07-30 19:52:00',71,28,'Velez, Newman and Stewart',40,NULL),(151,101,'warm up','2021-07-31 08:51:00','2021-07-31 10:08:00',77,2,'Atkins, Guzman and Cohen',NULL,13),(152,101,'special_guest','2021-07-31 10:14:00','2021-07-31 11:57:00',103,2,'Atkins, Guzman and Cohen',NULL,11),(153,102,'warm up','2021-07-31 12:51:00','2021-07-31 14:19:00',88,18,'Osborne, Johnson and Long',NULL,7),(154,103,'headline','2021-07-31 17:11:00','2021-07-31 17:53:00',42,20,'Martin Ltd',NULL,6),(155,103,'warm up','2021-07-31 18:03:00','2021-07-31 20:02:00',119,20,'Martin Ltd',16,NULL),(156,105,'headline','2021-07-31 01:06:00','2021-07-31 02:05:00',59,14,'Boyd-Johnson',NULL,6),(157,105,'special_guest','2021-07-31 02:13:00','2021-07-31 03:01:00',48,14,'Boyd-Johnson',NULL,1),(158,106,'headline','2021-07-31 05:47:00','2021-07-31 06:18:00',31,5,'Edwards and Sons',NULL,14),(159,106,'finale','2021-07-31 06:24:00','2021-07-31 06:58:00',34,5,'Edwards and Sons',NULL,7),(160,107,'finale','2021-07-31 10:10:00','2021-07-31 11:59:00',109,30,'Valenzuela-Cruz',13,NULL),(161,108,'warm up','2021-07-31 14:15:00','2021-07-31 15:24:00',69,29,'Bolton-Collins',NULL,3),(162,108,'special_guest','2021-07-31 15:32:00','2021-07-31 17:14:00',102,29,'Bolton-Collins',NULL,11),(163,109,'special_guest','2021-07-31 20:31:00','2021-07-31 22:06:00',95,20,'Martin Ltd',NULL,15),(164,110,'finale','2022-09-14 08:46:00','2022-09-14 09:48:00',62,19,'Brown, Moore and Glover',33,NULL),(165,110,'special_guest','2022-09-14 09:58:00','2022-09-14 10:42:00',44,19,'Brown, Moore and Glover',NULL,11),(166,111,'finale','2022-09-14 13:44:00','2022-09-14 15:39:00',115,17,'Mcneil-Lee',NULL,15),(167,112,'special_guest','2022-09-14 17:34:00','2022-09-14 19:30:00',116,16,'Moore-Cox',NULL,3),(168,114,'finale','2022-09-14 03:11:00','2022-09-14 04:20:00',69,21,'Barnes Ltd',20,NULL),(169,114,'finale','2022-09-14 04:34:00','2022-09-14 06:26:00',112,21,'Barnes Ltd',NULL,12),(170,115,'special_guest','2022-09-14 07:37:00','2022-09-14 09:19:00',102,5,'Edwards and Sons',40,NULL),(171,115,'finale','2022-09-14 09:25:00','2022-09-14 10:11:00',46,5,'Edwards and Sons',NULL,7),(172,116,'warm up','2022-09-15 09:38:00','2022-09-15 10:59:00',81,24,'Cowan Ltd',8,NULL),(173,116,'warm up','2022-09-15 11:11:00','2022-09-15 12:56:00',105,24,'Cowan Ltd',NULL,7),(174,117,'headline','2022-09-15 14:37:00','2022-09-15 16:35:00',118,10,'Benson LLC',NULL,8),(175,118,'warm up','2022-09-15 19:30:00','2022-09-15 21:02:00',92,22,'Harper, Foley and Wells',NULL,11),(176,119,'headline','2022-09-15 00:26:00','2022-09-15 02:08:00',102,15,'Garcia-Cortez',37,NULL),(177,120,'warm up','2022-09-15 04:44:00','2022-09-15 05:24:00',40,12,'Trevino, Lambert and Hall',8,NULL),(178,121,'warm up','2022-09-16 09:39:00','2022-09-16 10:38:00',59,10,'Benson LLC',48,NULL),(179,121,'special_guest','2022-09-16 10:44:00','2022-09-16 11:29:00',45,10,'Benson LLC',NULL,6),(180,122,'finale','2022-09-16 13:08:00','2022-09-16 15:05:00',117,11,'Lam-Wolfe',NULL,14),(181,122,'finale','2022-09-16 15:20:00','2022-09-16 15:51:00',31,11,'Lam-Wolfe',NULL,9),(182,123,'warm up','2022-09-16 17:24:00','2022-09-16 18:50:00',86,2,'Atkins, Guzman and Cohen',NULL,11),(183,123,'finale','2022-09-16 19:00:00','2022-09-16 19:30:00',30,2,'Atkins, Guzman and Cohen',39,NULL),(184,125,'special_guest','2022-09-16 01:52:00','2022-09-16 02:24:00',32,5,'Edwards and Sons',NULL,3),(185,126,'finale','2022-09-16 06:39:00','2022-09-16 07:17:00',38,7,'Berry LLC',9,NULL),(186,126,'headline','2022-09-16 07:32:00','2022-09-16 08:49:00',77,7,'Berry LLC',NULL,14),(187,127,'headline','2022-09-16 11:01:00','2022-09-16 12:27:00',86,17,'Mcneil-Lee',NULL,9),(188,128,'warm up','2022-09-17 09:07:00','2022-09-17 10:43:00',96,12,'Trevino, Lambert and Hall',8,NULL),(189,128,'warm up','2022-09-17 10:52:00','2022-09-17 11:59:00',67,12,'Trevino, Lambert and Hall',NULL,12),(190,129,'finale','2022-09-17 13:39:00','2022-09-17 14:50:00',71,16,'Moore-Cox',NULL,5),(191,130,'special_guest','2022-09-17 17:51:00','2022-09-17 19:00:00',69,22,'Harper, Foley and Wells',NULL,6),(192,132,'headline','2022-09-17 02:28:00','2022-09-17 03:59:00',91,3,'Anderson, Stafford and Sparks',NULL,8),(193,133,'finale','2022-09-17 05:52:00','2022-09-17 07:23:00',91,5,'Edwards and Sons',NULL,10),(194,133,'headline','2022-09-17 07:36:00','2022-09-17 08:26:00',50,5,'Edwards and Sons',27,NULL),(195,134,'headline','2022-09-17 09:49:00','2022-09-17 11:36:00',107,26,'Vaughn Group',NULL,4),(196,134,'headline','2022-09-17 11:47:00','2022-09-17 12:22:00',35,26,'Vaughn Group',NULL,13),(197,135,'warm up','2022-09-17 14:49:00','2022-09-17 15:49:00',60,15,'Garcia-Cortez',NULL,14),(198,136,'headline','2022-09-18 08:47:00','2022-09-18 10:19:00',92,29,'Bolton-Collins',5,NULL),(199,137,'headline','2022-09-18 13:33:00','2022-09-18 14:08:00',35,19,'Brown, Moore and Glover',NULL,5),(200,137,'headline','2022-09-18 14:16:00','2022-09-18 16:16:00',120,19,'Brown, Moore and Glover',NULL,11),(201,138,'warm up','2022-09-18 17:34:00','2022-09-18 19:26:00',112,21,'Barnes Ltd',NULL,7),(202,140,'headline','2022-09-18 02:06:00','2022-09-18 02:50:00',44,24,'Cowan Ltd',NULL,3),(203,141,'warm up','2023-09-11 09:12:00','2023-09-11 09:44:00',32,21,'Barnes Ltd',5,NULL),(204,142,'headline','2023-09-11 13:46:00','2023-09-11 15:31:00',105,29,'Bolton-Collins',NULL,12),(205,143,'warm up','2023-09-11 18:39:00','2023-09-11 19:28:00',49,17,'Mcneil-Lee',NULL,2),(206,145,'headline','2023-09-11 03:37:00','2023-09-11 04:33:00',56,16,'Moore-Cox',NULL,6),(207,145,'finale','2023-09-11 04:44:00','2023-09-11 05:32:00',48,16,'Moore-Cox',27,NULL),(208,146,'warm up','2023-09-12 09:23:00','2023-09-12 10:56:00',93,26,'Vaughn Group',4,NULL),(209,146,'headline','2023-09-12 11:04:00','2023-09-12 12:36:00',92,26,'Vaughn Group',NULL,1),(210,147,'special_guest','2023-09-13 08:27:00','2023-09-13 10:02:00',95,8,'Rogers-Dunlap',NULL,2),(211,148,'headline','2023-09-13 12:06:00','2023-09-13 13:57:00',111,30,'Valenzuela-Cruz',NULL,11),(212,148,'finale','2023-09-13 14:02:00','2023-09-13 14:57:00',55,30,'Valenzuela-Cruz',NULL,1),(213,149,'headline','2023-09-13 16:02:00','2023-09-13 17:52:00',110,2,'Atkins, Guzman and Cohen',NULL,12),(214,150,'headline','2023-09-13 20:35:00','2023-09-13 21:28:00',53,28,'Velez, Newman and Stewart',31,NULL),(215,150,'special_guest','2023-09-13 21:38:00','2023-09-13 22:36:00',58,28,'Velez, Newman and Stewart',NULL,8),(216,151,'warm up','2024-07-15 08:33:00','2024-07-15 09:51:00',78,13,'Perkins, Peterson and Ford',NULL,1),(217,151,'finale','2024-07-15 10:00:00','2024-07-15 11:28:00',88,13,'Perkins, Peterson and Ford',NULL,10),(218,152,'headline','2024-07-15 12:58:00','2024-07-15 13:41:00',43,19,'Brown, Moore and Glover',NULL,4),(219,153,'headline','2024-07-15 16:37:00','2024-07-15 17:38:00',61,6,'Smith Ltd',NULL,2),(220,153,'warm up','2024-07-15 17:50:00','2024-07-15 18:24:00',34,6,'Smith Ltd',NULL,15),(221,154,'finale','2024-07-15 20:36:00','2024-07-15 22:03:00',87,17,'Mcneil-Lee',32,NULL),(222,155,'finale','2024-07-15 00:51:00','2024-07-15 01:27:00',36,7,'Berry LLC',39,NULL),(223,156,'warm up','2024-07-15 05:10:00','2024-07-15 05:55:00',45,18,'Osborne, Johnson and Long',NULL,15),(224,156,'finale','2024-07-15 06:05:00','2024-07-15 07:47:00',102,18,'Osborne, Johnson and Long',35,NULL),(225,156,'warm up','2024-07-15 07:59:00','2024-07-15 08:44:00',45,18,'Osborne, Johnson and Long',NULL,9),(226,157,'headline','2024-07-16 08:22:00','2024-07-16 09:07:00',45,29,'Bolton-Collins',5,NULL),(227,158,'headline','2024-07-16 13:13:00','2024-07-16 14:03:00',50,17,'Mcneil-Lee',NULL,3),(228,158,'finale','2024-07-16 14:13:00','2024-07-16 15:13:00',60,17,'Mcneil-Lee',NULL,2),(229,159,'special_guest','2024-07-16 17:53:00','2024-07-16 19:11:00',78,9,'Williams, Robles and Ryan',NULL,14),(230,160,'finale','2024-07-17 08:21:00','2024-07-17 10:07:00',106,24,'Cowan Ltd',NULL,4),(231,160,'finale','2024-07-17 10:21:00','2024-07-17 11:34:00',73,24,'Cowan Ltd',NULL,13),(232,161,'headline','2024-07-17 12:19:00','2024-07-17 13:38:00',79,29,'Bolton-Collins',NULL,13),(233,161,'special_guest','2024-07-17 13:48:00','2024-07-17 14:31:00',43,29,'Bolton-Collins',13,NULL),(234,162,'headline','2024-07-17 15:56:00','2024-07-17 16:36:00',40,15,'Garcia-Cortez',NULL,3),(235,162,'headline','2024-07-17 16:50:00','2024-07-17 18:19:00',89,15,'Garcia-Cortez',NULL,2),(236,163,'special_guest','2024-07-17 20:07:00','2024-07-17 22:01:00',114,8,'Rogers-Dunlap',NULL,14),(237,164,'headline','2024-07-17 11:52:00','2024-07-17 12:31:00',39,24,'Cowan Ltd',NULL,7),(238,165,'finale','2024-07-17 19:40:00','2024-07-17 21:25:00',105,15,'Garcia-Cortez',12,NULL),(239,166,'headline','2024-07-17 08:47:00','2024-07-17 09:20:00',33,18,'Osborne, Johnson and Long',NULL,15),(240,166,'finale','2024-07-17 09:30:00','2024-07-17 10:16:00',46,18,'Osborne, Johnson and Long',23,NULL),(241,167,'headline','2024-07-17 12:27:00','2024-07-17 14:20:00',113,14,'Boyd-Johnson',NULL,9),(242,168,'warm up','2024-07-17 17:26:00','2024-07-17 18:32:00',66,10,'Benson LLC',6,NULL),(243,170,'special_guest','2025-09-25 09:12:00','2025-09-25 09:52:00',40,18,'Osborne, Johnson and Long',NULL,12),(244,171,'headline','2025-09-25 13:40:00','2025-09-25 14:49:00',69,5,'Edwards and Sons',NULL,12),(245,172,'headline','2025-09-25 18:02:00','2025-09-25 19:36:00',94,13,'Perkins, Peterson and Ford',21,NULL),(246,174,'finale','2025-09-25 02:07:00','2025-09-25 03:53:00',106,8,'Rogers-Dunlap',32,NULL),(247,174,'headline','2025-09-25 04:02:00','2025-09-25 05:27:00',85,8,'Rogers-Dunlap',NULL,10),(248,175,'headline','2025-09-25 06:53:00','2025-09-25 08:44:00',111,24,'Cowan Ltd',32,NULL),(249,176,'finale','2025-09-25 10:23:00','2025-09-25 11:15:00',52,27,'Jones-Payne',NULL,5),(250,176,'special_guest','2025-09-25 11:30:00','2025-09-25 12:20:00',50,27,'Jones-Payne',49,NULL),(251,177,'special_guest','2025-09-25 13:52:00','2025-09-25 14:33:00',41,25,'Moreno LLC',NULL,10),(252,177,'special_guest','2025-09-25 14:41:00','2025-09-25 16:33:00',112,25,'Moreno LLC',NULL,9),(253,178,'special_guest','2025-09-25 17:45:00','2025-09-25 19:44:00',119,2,'Atkins, Guzman and Cohen',NULL,7),(254,180,'finale','2025-09-26 09:06:00','2025-09-26 10:18:00',72,2,'Atkins, Guzman and Cohen',NULL,2),(255,180,'finale','2025-09-26 10:28:00','2025-09-26 11:18:00',50,2,'Atkins, Guzman and Cohen',NULL,13),(256,181,'headline','2025-09-26 13:33:00','2025-09-26 15:09:00',96,8,'Rogers-Dunlap',NULL,13),(257,182,'finale','2025-09-26 17:54:00','2025-09-26 19:42:00',108,16,'Moore-Cox',NULL,7),(258,182,'special_guest','2025-09-26 19:50:00','2025-09-26 20:50:00',60,16,'Moore-Cox',32,NULL),(259,184,'headline','2025-09-26 02:38:00','2025-09-26 03:40:00',62,25,'Moreno LLC',NULL,3),(260,184,'warm up','2025-09-26 03:54:00','2025-09-26 05:46:00',112,25,'Moreno LLC',NULL,8),(261,185,'warm up','2025-09-26 06:39:00','2025-09-26 07:16:00',37,6,'Smith Ltd',47,NULL),(262,185,'special_guest','2025-09-26 07:26:00','2025-09-26 08:48:00',82,6,'Smith Ltd',NULL,6),(263,186,'headline','2025-09-26 11:09:00','2025-09-26 12:36:00',87,25,'Moreno LLC',NULL,9),(264,186,'finale','2025-09-26 12:41:00','2025-09-26 14:23:00',102,25,'Moreno LLC',1,NULL),(265,187,'special_guest','2025-09-26 15:43:00','2025-09-26 16:35:00',52,23,'Allen-Ortiz',NULL,8),(266,188,'headline','2025-09-27 08:34:00','2025-09-27 10:08:00',94,30,'Valenzuela-Cruz',NULL,9),(267,189,'warm up','2025-09-27 13:16:00','2025-09-27 13:55:00',39,1,'Harris-Brown',NULL,14),(268,189,'warm up','2025-09-27 14:05:00','2025-09-27 15:03:00',58,1,'Harris-Brown',NULL,4),(269,190,'special_guest','2025-09-27 17:08:00','2025-09-27 18:44:00',96,12,'Trevino, Lambert and Hall',1,NULL),(270,192,'finale','2025-09-27 01:29:00','2025-09-27 03:07:00',98,21,'Barnes Ltd',46,NULL),(271,192,'warm up','2025-09-27 03:22:00','2025-09-27 04:19:00',57,21,'Barnes Ltd',48,NULL),(272,193,'finale','2026-08-16 09:13:00','2026-08-16 10:09:00',56,26,'Vaughn Group',NULL,9),(273,193,'finale','2026-08-16 10:18:00','2026-08-16 12:00:00',102,26,'Vaughn Group',NULL,15),(274,194,'headline','2026-08-16 13:12:00','2026-08-16 14:15:00',63,16,'Moore-Cox',NULL,3),(275,194,'warm up','2026-08-16 14:24:00','2026-08-16 15:29:00',65,16,'Moore-Cox',NULL,10),(276,195,'finale','2026-08-16 17:18:00','2026-08-16 19:03:00',105,14,'Boyd-Johnson',7,NULL),(277,197,'warm up','2026-08-16 01:36:00','2026-08-16 03:34:00',118,30,'Valenzuela-Cruz',40,NULL),(278,198,'finale','2026-08-16 05:08:00','2026-08-16 06:11:00',63,27,'Jones-Payne',NULL,7),(279,198,'warm up','2026-08-16 06:16:00','2026-08-16 08:16:00',120,27,'Jones-Payne',NULL,6),(280,199,'special_guest','2026-08-16 09:52:00','2026-08-16 11:01:00',69,19,'Brown, Moore and Glover',NULL,13),(281,199,'warm up','2026-08-16 11:15:00','2026-08-16 12:17:00',62,19,'Brown, Moore and Glover',NULL,1),(282,200,'special_guest','2026-08-17 09:36:00','2026-08-17 11:17:00',101,20,'Martin Ltd',NULL,3),(283,200,'headline','2026-08-17 11:23:00','2026-08-17 13:03:00',100,20,'Martin Ltd',NULL,8);
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
INSERT INTO `personel` VALUES (1,'Eric','Dixon',25,'ahuynh@example.org','702-582-7475x2686','experienced'),(2,'William','King',26,'danderson@example.net','773.362.3774','intern'),(3,'Jeremy','Bryan',57,'susan61@example.com','978.406.7889x277','intermidiate'),(4,'Jeanne','Gray',53,'jonathonwhite@example.com','358.639.0220x13099','experienced'),(5,'Allen','Carrillo',24,'joan18@example.org','677.792.8968x757','experienced'),(6,'Jonathan','Reed',54,'robinsonrichard@example.net','861.213.6928x14577','experienced'),(7,'Eric','Jimenez',21,'croberts@example.net','001-851-556-7128x823','beginer'),(8,'Valerie','Edwards',38,'crosbytina@example.com','795.652.4078x6882','intern'),(9,'Kevin','Hammond',44,'tuckerchristina@example.net','(365)482-4860x2720','experienced'),(10,'Darren','Walsh',34,'lesterheather@example.org','(523)843-1077x4253','experienced'),(11,'Robin','Schultz',43,'yclark@example.com','9362888288','beginer'),(12,'Brooke','Thomas',30,'lowerymichael@example.net','001-513-340-3457','very_experienced'),(13,'Carol','Perez',31,'ywilson@example.org','317.848.6958x5753','intermidiate'),(14,'Aaron','Hernandez',54,'melanieblanchard@example.com','958.629.3374x47086','beginer'),(15,'Tara','Beck',59,'gluna@example.net','465.589.7255x4640','very_experienced'),(16,'Phillip','Hoover',34,'james14@example.com','586.448.0596x07895','beginer'),(17,'Amanda','Brown',38,'bryan79@example.org','(378)529-5571','very_experienced'),(18,'George','Martinez',58,'floydpamela@example.org','(587)311-3955x271','beginer'),(19,'Shelia','Edwards',55,'morrisonalexis@example.net','(237)593-0867','experienced'),(20,'Dale','Mills',40,'wbuchanan@example.com','316.419.5123x551','beginer'),(21,'Jason','Parks',42,'bmartin@example.net','(833)861-0301x13535','beginer'),(22,'Victor','Hull',33,'michelletorres@example.net','001-731-751-5675x116','beginer'),(23,'Kimberly','Walsh',37,'anthonystein@example.com','346.570.3196x198','intern'),(24,'James','Davis',25,'jessica78@example.com','536-566-1493','intern'),(25,'Dawn','Doyle',38,'david93@example.org','534-599-9520','intermidiate'),(26,'Megan','Weeks',45,'garciaeric@example.com','6949252869','beginer'),(27,'Carolyn','Bennett',36,'samantha23@example.com','261.218.9746','intern'),(28,'Melissa','Cooper',42,'sandra81@example.net','(548)573-2872x5075','very_experienced'),(29,'David','Larsen',60,'jason39@example.com','001-994-857-7102','intern'),(30,'Kelly','Scott',58,'gfletcher@example.net','435-891-7297x3586','intern'),(31,'Jeffrey','Sullivan',47,'ewatson@example.net','(343)227-4827','beginer'),(32,'Amber','Larson',24,'cgreene@example.com','233-486-1600','experienced'),(33,'Ruth','Gallagher',52,'natalie50@example.com','380-368-7374x869','intern'),(34,'Christopher','Hunt',34,'jrichards@example.net','9777326800','very_experienced'),(35,'Olivia','Atkinson',29,'ohansen@example.com','(323)262-7303x26350','very_experienced'),(36,'Trevor','Rose',31,'blakeperez@example.org','001-913-384-8380x477','intermidiate'),(37,'Teresa','Martinez',40,'williamstaylor@example.com','507-299-4204x9796','intern'),(38,'Shawn','Johnson',41,'james10@example.com','001-201-887-1188x442','experienced'),(39,'John','Nolan',29,'hubbardjanice@example.org','4629928749','experienced'),(40,'David','White',47,'shawna78@example.com','765.840.8928','experienced'),(41,'Brenda','Green',24,'jaime89@example.org','001-741-225-3859x536','experienced'),(42,'Kristen','Higgins',30,'olove@example.com','454.656.4798x0824','beginer'),(43,'Ian','Cline',49,'daniel45@example.com','730-236-8792','beginer'),(44,'Colton','Liu',57,'olawson@example.org','(518)786-6126x4336','intermidiate'),(45,'Kathy','Bean',51,'mcbridemichelle@example.net','+1-883-603-6096x8739','intermidiate'),(46,'Rachel','Williams',23,'branchdavid@example.net','4882105122','very_experienced'),(47,'Rodney','Fisher',29,'bondkyle@example.net','504-564-9785x55278','very_experienced'),(48,'Nicole','Gardner',30,'lauranash@example.com','(290)309-3027','experienced'),(49,'Beth','Watkins',42,'vincentbrian@example.com','742.256.7604x055','beginer'),(50,'Christopher','Moran',23,'watkinsaimee@example.org','350.405.6969','very_experienced'),(51,'Lisa','Hubbard',53,'andrewtaylor@example.net','357-892-1672','very_experienced'),(52,'Michael','Bradford',45,'bmullins@example.org','+1-201-211-5113x4637','very_experienced'),(53,'Sandra','Camacho',25,'denise26@example.net','+1-352-685-5828','intern'),(54,'Max','Gross',56,'joserodriguez@example.org','722.665.6646x012','intern'),(55,'Heidi','Holmes',30,'edwardsjesse@example.com','643-893-3646x36409','experienced'),(56,'Angel','Reyes',38,'fordkimberly@example.org','001-687-963-6772x245','intern'),(57,'Kevin','House',39,'christopher65@example.org','604-955-4659','beginer'),(58,'Jordan','Williams',57,'robinsonsamantha@example.net','447.686.8913x4605','experienced'),(59,'Eric','Watson',31,'patricia08@example.net','001-436-283-9447','beginer'),(60,'Susan','Murphy',36,'asmith@example.org','719.315.4024','experienced'),(61,'Thomas','Turner',58,'phillip29@example.net','+1-781-321-2612x938','experienced'),(62,'Hannah','Foster',36,'henryseth@example.com','(266)933-7600x8718','intern'),(63,'Kayla','Bradley',49,'timothy52@example.com','+1-339-499-0842','very_experienced'),(64,'Juan','Neal',56,'garciajose@example.org','467.924.5473','beginer'),(65,'Jennifer','Wilkins',44,'wtaylor@example.net','336-620-9172x99288','very_experienced'),(66,'Tracey','Rodriguez',33,'kingjessica@example.net','+1-349-331-6132x420','intern'),(67,'Cory','Walker',53,'thompsonamanda@example.org','001-935-214-9355x570','beginer'),(68,'Christopher','Bailey',48,'laneangela@example.org','(696)856-0467x5362','intermidiate'),(69,'Kimberly','Pitts',21,'michaellopez@example.org','578-538-2512x9457','beginer'),(70,'Daniel','Carroll',20,'ahampton@example.com','(613)977-8880','beginer'),(71,'Michael','Rios',57,'zguerrero@example.com','273.710.9973x42489','intermidiate'),(72,'Lisa','Ryan',49,'uponce@example.org','(410)566-7547','beginer'),(73,'Stephen','Brown',29,'janet80@example.org','+1-810-798-1418','beginer'),(74,'Kelly','Cook',55,'younglaura@example.com','001-249-579-6523x754','intermidiate'),(75,'Sandra','Hampton',29,'hhaynes@example.net','(630)266-7819','intern'),(76,'Jody','Kaiser',35,'ericthompson@example.net','219.579.3492','intermidiate'),(77,'Julie','Miller',44,'laura25@example.com','2416822055','beginer'),(78,'Jeffrey','Williams',44,'rhodesdarren@example.org','(733)751-0560x665','very_experienced'),(79,'Keith','Perez',34,'pamelafowler@example.org','481-694-1469','very_experienced'),(80,'Jason','Rivas',32,'fred07@example.net','6225615126','intern'),(81,'Kerri','Foster',21,'butleralexandria@example.com','+1-307-289-5224x5427','experienced'),(82,'Shane','Williams',23,'williamcummings@example.net','762-214-8719','experienced'),(83,'Hannah','Myers',20,'michael59@example.org','(553)896-2224','experienced'),(84,'Alexis','Horton',47,'andrewmccoy@example.com','+1-733-224-3593x351','intern'),(85,'Michael','Miller',44,'bpayne@example.org','719-896-1784x61298','very_experienced'),(86,'Chelsea','Miller',41,'seanwright@example.org','001-915-571-7057x349','intermidiate'),(87,'Angela','Guerrero',55,'clarence82@example.com','+1-316-288-5866x6939','intern'),(88,'David','Patterson',21,'angela49@example.org','001-297-224-5340x271','intern'),(89,'Sarah','Mason',27,'emma93@example.org','606-624-2260','beginer'),(90,'Katie','Miller',21,'jasmine19@example.org','+1-671-276-9795x1652','intermidiate'),(91,'Jeffrey','Shaw',22,'nrangel@example.org','257.596.5948x2864','very_experienced'),(92,'Todd','Thompson',30,'edward73@example.net','995-737-1961','experienced'),(93,'Jeremy','Bates',30,'scottdaniel@example.org','753-249-2901','intern'),(94,'Cristina','Barnes',21,'adamhuynh@example.com','001-477-421-7519x019','beginer'),(95,'Sandra','Mahoney',57,'connormontgomery@example.org','287-607-4266','experienced'),(96,'Lisa','Harris',33,'lewiskevin@example.org','2378726383','intermidiate'),(97,'Cynthia','Wall',44,'cummingsthomas@example.com','(604)969-7101x536','intern'),(98,'Michelle','Valencia',34,'vfisher@example.com','001-420-919-0031','experienced'),(99,'Matthew','Williams',30,'kyle54@example.net','(687)224-5533','intermidiate'),(100,'Brian','Reese',31,'robert01@example.net','3184567355','intern'),(101,'John','Morse',45,'garciasheri@example.org','962.360.2378','very_experienced'),(102,'Matthew','Garza',46,'patriciabradley@example.net','874.802.0188','intern'),(103,'Tracy','Mccoy',30,'laura69@example.org','(607)824-8945x8835','experienced'),(104,'Juan','Johnston',53,'rebeccabrown@example.net','+1-491-578-4858x431','intern'),(105,'Toni','Gordon',30,'barbaraharper@example.org','8767574057','beginer'),(106,'Jennifer','Carter',43,'cassandradaniels@example.com','+1-523-760-0585x0049','beginer'),(107,'Jimmy','Johnson',55,'stephanieknapp@example.com','938.636.4434x44898','experienced'),(108,'Patrick','Lyons',46,'erin85@example.com','787.927.9405','intern'),(109,'Kara','Johnson',34,'lynndavis@example.org','001-882-314-3335x919','intermidiate'),(110,'Barbara','Murphy',29,'vnewman@example.org','(370)482-4880x41348','intermidiate'),(111,'Kevin','Mason',50,'rwhite@example.com','889.874.0805x076','beginer'),(112,'John','Webb',44,'phillipsruth@example.com','2749881254','experienced'),(113,'Stacy','Morgan',38,'matthewwilliams@example.net','001-262-572-6191','beginer'),(114,'Danielle','Hernandez',38,'ihowell@example.com','663.559.3342x13618','experienced'),(115,'Victoria','Young',38,'cherylharris@example.com','777.854.2239x7701','beginer'),(116,'Melinda','Robinson',54,'simmonskevin@example.org','+1-241-953-6524x9754','beginer'),(117,'Ashley','Estrada',50,'jacksondebra@example.com','001-297-784-3435','intermidiate'),(118,'Albert','Foster',30,'johntaylor@example.net','282.711.4642x0151','experienced'),(119,'Jamie','Olson',53,'manntodd@example.net','822-999-3381x906','experienced'),(120,'Justin','Mccann',21,'simmonsmegan@example.net','(758)321-8561','very_experienced'),(121,'Noah','Vega',56,'zachary32@example.net','+1-225-892-5963','beginer'),(122,'Holly','Thompson',58,'kingdavid@example.com','8526634437','experienced'),(123,'Susan','Fuller',26,'jean06@example.net','755.612.8960x3835','experienced'),(124,'Glenn','Stewart',21,'stevenhicks@example.com','881-764-6070x35967','intern'),(125,'Bobby','Clark',25,'phillip22@example.net','(488)485-6297x75251','intern'),(126,'Tara','Hall',51,'leejennifer@example.org','451.983.4654x19373','very_experienced'),(127,'Harold','Maxwell',40,'oliviadavis@example.org','977-418-6311','intern'),(128,'Daniel','Leonard',26,'lisa47@example.net','(781)864-0160x35548','intern'),(129,'Matthew','Warner',47,'david18@example.org','6846637963','intermidiate'),(130,'David','Ferguson',53,'martinezsandra@example.org','(473)290-3401x46834','experienced'),(131,'Shelly','Savage',37,'alexanderlopez@example.com','(457)749-0845','very_experienced'),(132,'Jose','Blake',32,'millerkim@example.org','+1-294-903-6505x2696','experienced'),(133,'Jennifer','Saunders',32,'jensencharlotte@example.com','640-231-8840x91360','experienced'),(134,'James','Hale',20,'michele28@example.com','3696537811','very_experienced'),(135,'Brenda','Parker',23,'ihuff@example.com','6329585969','beginer'),(136,'Brent','Boyd',32,'mjohnson@example.com','+1-894-693-6804x8493','experienced'),(137,'Jose','Singh',20,'elizabethdavis@example.com','(800)695-8993','intern'),(138,'Melanie','Brown',36,'wellschelsea@example.net','332.615.8149x58058','beginer'),(139,'Rebecca','Aguirre',21,'charles88@example.com','(228)385-5169x704','intermidiate'),(140,'Linda','Evans',59,'amanda22@example.com','(205)986-6412x926','intermidiate'),(141,'Andrew','Castaneda',29,'qgonzales@example.net','378.759.1841','intern'),(142,'Lynn','Cooke',33,'sanderslauren@example.com','727-708-6482x67324','beginer'),(143,'Larry','Rose',56,'mary82@example.com','001-341-417-0774','experienced'),(144,'Kathy','Robinson',50,'diazgabriel@example.net','958.753.7487x0546','beginer'),(145,'Elizabeth','Nelson',60,'tamarajohnson@example.org','274.200.3802','intermidiate'),(146,'Timothy','Johnson',47,'vasqueztodd@example.com','385-852-4382x99308','intermidiate'),(147,'Angela','Butler',56,'smithdenise@example.org','600.214.2935x81771','experienced'),(148,'Sherry','Wilson',23,'amber49@example.com','494-756-7572x388','experienced'),(149,'Barbara','Briggs',54,'tiffanystewart@example.com','9183856039','very_experienced'),(150,'Jennifer','King',51,'natalie52@example.com','460-282-6501x46919','beginer'),(151,'Ryan','Porter',25,'janicerodriguez@example.org','001-543-254-2632x040','beginer'),(152,'Patrick','Lawrence',60,'rgibson@example.net','001-957-528-7864x014','very_experienced'),(153,'Debra','Perez',57,'nelsonmichael@example.org','936-234-8924','intermidiate'),(154,'Gregory','Herman',30,'hartmichele@example.org','(852)734-0896x9169','experienced'),(155,'Joseph','Kirk',41,'greenelori@example.com','649-571-7508x387','beginer'),(156,'Jose','Burton',51,'skinnerjennifer@example.net','(534)989-0881x30145','beginer'),(157,'Howard','Jackson',21,'sharonlove@example.org','795-743-2309x1526','experienced'),(158,'Karen','Miller',33,'epage@example.net','001-572-406-9998x654','beginer'),(159,'Michael','Stevens',39,'oharvey@example.org','+1-639-959-3771x6398','experienced'),(160,'Steven','Miller',59,'kpalmer@example.org','288-214-2508x545','beginer'),(161,'Patricia','Hammond',23,'jennifermarks@example.org','3236323457','very_experienced'),(162,'Eric','Simmons',34,'hayseric@example.net','938.355.0632','beginer'),(163,'Keith','Bowman',38,'tyler68@example.org','001-338-299-1663x281','experienced'),(164,'Jack','Fox',51,'williamsjohn@example.net','001-869-207-9596','experienced'),(165,'Nicole','Hicks',51,'james38@example.com','(432)873-8218x7506','beginer'),(166,'Megan','Gordon',38,'michael79@example.org','949.522.5814x867','intern'),(167,'Elizabeth','Martin',20,'alexischapman@example.net','001-540-761-9711x005','beginer'),(168,'Tonya','Gutierrez',55,'hollystewart@example.org','001-397-395-3153x469','very_experienced'),(169,'Gregory','Anderson',50,'wilsondiana@example.com','001-940-986-5265x398','intern'),(170,'Amber','Summers',37,'joseph64@example.com','(804)349-5140','very_experienced'),(171,'Kenneth','Ramos',45,'robertsanders@example.net','871.303.8517x3236','beginer'),(172,'April','Le',34,'courtney25@example.org','471.276.9750x0379','beginer'),(173,'Melissa','Franco',29,'jlowe@example.org','001-915-429-5446x896','experienced'),(174,'Rachel','Sullivan',54,'zrandolph@example.org','9217284601','beginer'),(175,'Holly','Lewis',26,'lisa90@example.org','360.386.1700','experienced'),(176,'Jennifer','Lopez',56,'cheyenneellis@example.com','321.818.1062','very_experienced'),(177,'Dawn','Phillips',43,'arthurjordan@example.net','001-222-516-2133x556','very_experienced'),(178,'Andrew','Ferrell',23,'haydenselena@example.org','(324)799-8463x316','intern'),(179,'Christina','Brown',33,'knightann@example.com','537.462.3296','intermidiate'),(180,'April','Robinson',40,'dylan20@example.org','4286462795','intermidiate'),(181,'Douglas','Newton',44,'hendersonjustin@example.net','891-449-0198x7827','beginer'),(182,'Kyle','Black',51,'cgriffith@example.com','+1-767-871-8068x733','beginer'),(183,'Morgan','Edwards',35,'georgestewart@example.org','(217)866-1971x1892','beginer'),(184,'Nicholas','Santos',52,'holthayley@example.org','494.211.0736','beginer'),(185,'Jeremy','Sandoval',45,'pamelacox@example.com','001-494-897-8358','very_experienced'),(186,'Amanda','Hill',38,'james06@example.net','+1-921-217-9032x4514','intermidiate'),(187,'Danielle','Gilbert',37,'andreamorgan@example.com','001-230-648-0519x952','intermidiate'),(188,'Olivia','Garcia',60,'millermarisa@example.com','001-279-270-0514x112','intermidiate'),(189,'Victoria','Jimenez',39,'joshua78@example.org','499.261.0538x1430','beginer'),(190,'Jennifer','Pierce',29,'fsantos@example.org','560-448-9158','experienced'),(191,'Dillon','Cooper',34,'justin95@example.org','001-888-523-8113x286','intern'),(192,'Brenda','Reyes',27,'eric12@example.net','590.875.1590x9217','intern'),(193,'Kristin','Blanchard',57,'thomaswinters@example.net','986.640.3265','very_experienced'),(194,'John','Torres',23,'wterrell@example.org','672.878.9718','beginer'),(195,'Michael','English',41,'meyeredward@example.com','+1-746-947-9125x8664','beginer'),(196,'Bryan','Shelton',36,'jdunn@example.org','451.844.6662x58315','very_experienced'),(197,'Kenneth','Rodriguez',25,'blittle@example.net','465.590.7815x12128','experienced'),(198,'Becky','Erickson',38,'qmartin@example.org','308-593-2862','experienced'),(199,'Brianna','Miller',60,'sean40@example.com','505-571-5984x5749','intermidiate'),(200,'Crystal','Contreras',33,'hboyd@example.org','(879)536-5406x2427','very_experienced');
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
INSERT INTO `photo` VALUES (1,'images\\IMG_1.jpg','Give measure whether.',NULL,NULL,NULL,NULL,4,NULL),(2,'images\\IMG_2.jpg','Per green success thus race represent ago.',NULL,NULL,NULL,NULL,NULL,196),(3,'images\\IMG_3.jpg','Detail rock course fill ability dark administration.',NULL,NULL,NULL,NULL,1,NULL),(4,'images\\IMG_4.jpg','Why only local.',NULL,NULL,NULL,200,NULL,NULL),(5,'images\\IMG_5.jpg','Just goal order open.',3,NULL,NULL,NULL,NULL,NULL),(6,'images\\IMG_6.jpg','Say mean foot traditional leader next fill civil.',NULL,NULL,NULL,NULL,2,NULL),(7,'images\\IMG_7.jpg','Would benefit responsibility.',NULL,NULL,NULL,86,NULL,NULL),(8,'images\\IMG_8.jpg','Health claim simply space indeed view painting.',NULL,4,NULL,NULL,NULL,NULL),(9,'images\\IMG_9.jpg','Turn area amount him.',NULL,9,NULL,NULL,NULL,NULL),(10,'images\\IMG_10.jpg','Remain seek improve art factor.',NULL,NULL,28,NULL,NULL,NULL),(11,'images\\IMG_11.jpg','Article safe turn century help bag attention that.',NULL,3,NULL,NULL,NULL,NULL),(12,'images\\IMG_12.jpg','Information add already beyond plant image difficult.',12,NULL,NULL,NULL,NULL,NULL),(13,'images\\IMG_13.jpg','Leave alone visit.',NULL,NULL,192,NULL,NULL,NULL),(14,'images\\IMG_14.jpg','Form significant learn specific.',NULL,NULL,NULL,123,NULL,NULL),(15,'images\\IMG_15.jpg','Recently place community ball not item bill.',NULL,NULL,NULL,NULL,5,NULL),(16,'images\\IMG_16.jpg','Indeed himself industry old rise suffer.',7,NULL,NULL,NULL,NULL,NULL),(17,'images\\IMG_17.jpg','Likely suffer western goal Congress various.',NULL,NULL,277,NULL,NULL,NULL),(18,'images\\IMG_18.jpg','Quite indeed charge now.',NULL,8,NULL,NULL,NULL,NULL),(19,'images\\IMG_19.jpg','Result I program responsibility attorney doctor partner.',33,NULL,NULL,NULL,NULL,NULL),(20,'images\\IMG_20.jpg','Hand college significant collection.',NULL,NULL,98,NULL,NULL,NULL),(21,'images\\IMG_21.jpg','Strategy theory off weight.',NULL,NULL,NULL,NULL,NULL,5),(22,'images\\IMG_22.jpg','More memory year student answer almost popular sport.',NULL,NULL,NULL,10,NULL,NULL),(23,'images\\IMG_23.jpg','Tree wind clear author only instead artist.',NULL,NULL,87,NULL,NULL,NULL),(24,'images\\IMG_24.jpg','Line nor entire at pressure where group.',NULL,8,NULL,NULL,NULL,NULL),(25,'images\\IMG_25.jpg','Safe station million war reality recently bill bed.',NULL,9,NULL,NULL,NULL,NULL),(26,'images\\IMG_26.jpg','Everyone least performance reality yet consumer establish.',NULL,9,NULL,NULL,NULL,NULL),(27,'images\\IMG_27.jpg','Series share sit where green.',NULL,NULL,152,NULL,NULL,NULL),(28,'images\\IMG_28.jpg','Finish now report sign hospital seven.',NULL,NULL,13,NULL,NULL,NULL),(29,'images\\IMG_29.jpg','Pretty news somebody pressure.',NULL,NULL,NULL,NULL,5,NULL),(30,'images\\IMG_30.jpg','Out owner toward.',NULL,NULL,NULL,147,NULL,NULL),(31,'images\\IMG_31.jpg','Body about authority forget leg middle.',NULL,NULL,NULL,NULL,NULL,173),(32,'images\\IMG_32.jpg','New lead tough authority within.',NULL,NULL,NULL,8,NULL,NULL),(33,'images\\IMG_33.jpg','Throughout international example mother true.',NULL,NULL,236,NULL,NULL,NULL),(34,'images\\IMG_34.jpg','May care trade how be paper.',NULL,NULL,NULL,NULL,NULL,186),(35,'images\\IMG_35.jpg','Free bad its outside song.',NULL,NULL,172,NULL,NULL,NULL),(36,'images\\IMG_36.jpg','Attention option charge to rate.',NULL,NULL,226,NULL,NULL,NULL),(37,'images\\IMG_37.jpg','Hear something party security.',NULL,NULL,NULL,127,NULL,NULL),(38,'images\\IMG_38.jpg','True onto south need address.',NULL,NULL,238,NULL,NULL,NULL),(39,'images\\IMG_39.jpg','With toward sound two.',NULL,8,NULL,NULL,NULL,NULL),(40,'images\\IMG_40.jpg','Relationship part within energy.',NULL,NULL,NULL,NULL,NULL,165),(41,'images\\IMG_41.jpg','Safe research might sister night gas mother.',NULL,NULL,184,NULL,NULL,NULL),(42,'images\\IMG_42.jpg','Music subject impact none place game professional.',NULL,NULL,NULL,173,NULL,NULL),(43,'images\\IMG_43.jpg','Book blue we apply.',NULL,9,NULL,NULL,NULL,NULL),(44,'images\\IMG_44.jpg','Game according hit keep.',NULL,15,NULL,NULL,NULL,NULL),(45,'images\\IMG_45.jpg','Report hour green huge cell want myself stage.',NULL,NULL,61,NULL,NULL,NULL),(46,'images\\IMG_46.jpg','Produce seek relate where election positive truth.',17,NULL,NULL,NULL,NULL,NULL),(47,'images\\IMG_47.jpg','Baby than station property or talk film still.',NULL,11,NULL,NULL,NULL,NULL),(48,'images\\IMG_48.jpg','Million social material many.',NULL,NULL,NULL,NULL,NULL,26),(49,'images\\IMG_49.jpg','Attention reveal inside rate agency successful.',NULL,NULL,NULL,NULL,10,NULL),(50,'images\\IMG_50.jpg','Responsibility factor word item president.',NULL,NULL,NULL,NULL,NULL,133);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resale_queue`
--

LOCK TABLES `resale_queue` WRITE;
/*!40000 ALTER TABLE `resale_queue` DISABLE KEYS */;
INSERT INTO `resale_queue` VALUES (1,NULL,116,'Director Concert','backstage',62,'2017-06-22 19:15:00'),(2,49,NULL,'Nice Concert','backstage',NULL,'2017-06-27 13:15:00'),(3,NULL,21,'Total Concert','backstage',154,'2025-05-04 17:00:00'),(4,NULL,113,'True Concert','backstage',63,'2025-04-24 17:15:00'),(5,73,NULL,NULL,NULL,62,'2025-04-23 16:15:00'),(6,NULL,90,'Coach Concert','backstage',34,'2022-08-27 18:00:00'),(7,NULL,53,'Republican Concert','backstage',29,'2025-05-05 15:00:00'),(8,NULL,100,'Past Concert','backstage',148,'2020-07-07 18:45:00'),(9,NULL,105,'Situation Concert','backstage',106,'2025-04-27 12:45:00'),(10,NULL,83,'Pass Concert','backstage',1,'2024-07-01 11:45:00'),(11,64,NULL,NULL,NULL,29,'2025-05-03 14:00:00'),(12,83,NULL,'Easy Concert','backstage',NULL,'2018-07-13 10:00:00'),(13,NULL,95,'If Concert','backstage',64,'2023-08-28 14:15:00'),(14,150,NULL,NULL,NULL,1,'2025-04-29 17:15:00'),(15,NULL,9,'Usually Concert','backstage',212,'2025-05-01 11:45:00'),(16,NULL,138,'Same Concert','backstage',43,'2021-07-12 10:45:00'),(17,145,NULL,NULL,NULL,154,'2023-08-26 11:30:00'),(18,NULL,141,'True Concert','backstage',78,'2025-05-01 10:30:00');
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
  KEY `fk_performance_ID` (`performance_ID`),
  CONSTRAINT `fk_performance_ID` FOREIGN KEY (`performance_ID`) REFERENCES `performances` (`performance_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ticket_ID` FOREIGN KEY (`ticket_ID`) REFERENCES `ticket` (`ticket_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (3,44,'5','2','1','3','3'),(4,233,'3','4','1','4','1'),(6,239,'4','4','1','3','3'),(7,218,'2','4','5','4','1'),(8,15,'4','5','5','5','4'),(9,222,'5','3','5','2','3'),(10,116,'3','5','3','4','4'),(11,168,'5','3','4','5','1'),(12,128,'1','4','5','1','1'),(16,198,'4','5','3','3','5'),(18,190,'1','3','5','4','3'),(19,182,'1','4','3','3','5'),(20,121,'4','5','5','2','1'),(21,182,'4','3','1','2','1'),(22,167,'2','5','5','1','3'),(23,62,'4','1','5','3','1'),(24,156,'1','1','4','1','1'),(25,163,'2','4','1','1','3'),(26,226,'2','2','5','3','4'),(27,229,'3','4','4','3','2'),(28,218,'4','1','3','2','1'),(31,174,'4','3','2','4','3'),(32,216,'4','4','3','3','3'),(33,153,'1','1','4','1','5'),(38,11,'5','3','1','4','2'),(39,168,'3','5','5','4','3'),(40,80,'2','1','5','2','1'),(41,76,'4','4','4','3','2'),(42,81,'4','5','5','5','4'),(44,153,'5','1','1','3','4'),(45,98,'3','1','3','2','2'),(46,130,'4','1','1','1','2'),(47,77,'3','5','1','4','3'),(50,228,'3','4','4','3','5'),(51,77,'2','2','1','1','2'),(52,192,'3','1','2','4','5'),(53,99,'5','5','1','5','3'),(54,99,'3','3','5','1','5'),(55,45,'2','1','5','2','3'),(56,65,'1','5','4','2','5'),(57,94,'5','2','3','5','2'),(59,51,'1','2','5','1','3'),(60,75,'2','5','1','4','2'),(61,170,'4','3','1','1','2'),(66,128,'2','5','4','5','3'),(67,141,'2','2','4','1','4'),(69,148,'1','3','4','5','4'),(70,190,'5','3','1','2','1'),(72,200,'4','2','3','3','1'),(73,218,'1','5','3','2','2'),(74,13,'3','5','1','5','5'),(75,66,'2','4','4','2','4'),(76,12,'1','1','1','5','4'),(79,188,'1','5','3','4','1'),(80,74,'2','2','5','1','1'),(81,15,'3','4','2','5','1'),(82,208,'4','3','5','5','5'),(83,38,'1','3','2','3','4'),(84,32,'4','4','3','1','4'),(85,115,'4','4','1','3','3'),(86,215,'4','4','4','3','4'),(88,179,'3','3','5','2','2'),(89,90,'1','5','2','3','4'),(90,30,'1','4','4','4','5'),(91,167,'2','5','3','3','5'),(92,229,'4','5','5','1','5'),(93,153,'3','3','3','1','1'),(94,58,'3','2','2','5','3'),(95,242,'2','5','2','1','5'),(96,242,'1','3','3','4','3'),(99,176,'2','2','1','1','3'),(100,171,'1','5','4','1','2'),(101,61,'2','4','4','1','2'),(102,119,'4','5','1','1','4'),(104,123,'5','4','1','5','5'),(108,175,'5','3','4','5','4'),(112,70,'5','2','5','2','2'),(113,179,'3','1','4','1','3'),(114,63,'1','1','5','3','3'),(115,136,'4','4','3','2','3'),(116,172,'5','4','1','2','2'),(118,57,'2','2','1','3','1'),(121,2,'1','2','1','4','1'),(122,187,'2','5','2','1','5'),(123,140,'3','4','5','2','3'),(124,95,'3','3','2','5','5'),(125,190,'2','5','4','1','2'),(126,90,'4','2','5','2','2'),(127,137,'3','4','3','4','5'),(129,166,'1','4','5','2','5'),(130,74,'3','2','4','3','2'),(131,167,'5','3','4','5','4'),(132,58,'2','5','4','2','2'),(133,146,'5','5','4','4','1'),(136,180,'5','3','3','1','1'),(137,175,'3','5','5','3','2'),(139,189,'1','3','2','5','5'),(140,168,'4','4','4','2','1'),(141,2,'5','5','4','1','4'),(142,158,'2','2','4','2','1'),(143,87,'2','5','4','5','1'),(146,104,'3','2','5','1','5'),(147,136,'4','4','3','4','3'),(150,110,'4','5','3','4','3'),(151,179,'3','4','5','5','2'),(152,222,'2','5','5','5','3'),(153,179,'5','3','3','3','1'),(155,83,'3','1','1','1','3'),(156,215,'4','1','1','2','3'),(157,202,'4','4','1','1','2'),(158,24,'1','4','4','5','2'),(160,53,'5','5','4','5','4'),(162,242,'1','2','2','2','2'),(164,61,'1','4','3','3','4'),(167,233,'2','2','1','1','5'),(169,113,'2','3','5','2','1'),(170,208,'3','2','5','4','1'),(171,27,'1','4','5','5','5'),(172,238,'2','4','3','5','1'),(173,173,'2','2','2','1','4'),(174,109,'1','2','5','1','2'),(176,72,'4','4','1','5','2'),(177,78,'5','1','3','2','2'),(180,168,'5','2','2','5','1'),(181,218,'2','1','4','5','5'),(183,146,'1','5','3','3','4'),(185,121,'1','5','5','1','4'),(186,57,'4','4','4','5','4'),(188,61,'5','5','3','1','1'),(189,37,'4','5','1','1','4'),(191,209,'4','1','3','4','1'),(192,15,'2','1','1','2','5'),(193,238,'2','5','2','1','2'),(194,36,'5','2','3','5','1'),(195,229,'4','3','5','3','4'),(197,75,'3','4','3','4','2'),(198,116,'4','4','2','4','1'),(199,166,'4','1','1','1','4'),(201,25,'1','1','4','3','4'),(203,26,'1','4','5','2','2'),(204,236,'2','2','3','5','3'),(205,174,'2','4','2','2','2'),(206,241,'5','4','5','3','3'),(208,40,'4','1','3','5','3'),(209,221,'4','2','4','4','1'),(210,192,'1','4','5','2','1'),(211,156,'3','3','3','3','1'),(213,27,'1','4','5','4','3'),(214,86,'4','3','5','5','1'),(215,110,'2','1','4','4','5'),(216,3,'5','2','4','1','1'),(217,159,'3','5','5','2','3'),(218,184,'2','2','3','4','1'),(220,151,'2','5','4','3','2');
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
  CONSTRAINT `fk_role_event` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_role_personel` FOREIGN KEY (`personel_ID`) REFERENCES `personel` (`personel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_of_personel_on_event`
--

LOCK TABLES `role_of_personel_on_event` WRITE;
/*!40000 ALTER TABLE `role_of_personel_on_event` DISABLE KEYS */;
INSERT INTO `role_of_personel_on_event` VALUES (24,1,'technical'),(28,1,'technical'),(47,1,'technical'),(77,1,'technical'),(127,1,'technical'),(61,1,'security'),(82,1,'security'),(101,1,'security'),(145,1,'security'),(194,1,'security'),(14,1,'support'),(160,1,'support'),(111,2,'technical'),(116,2,'technical'),(123,2,'technical'),(153,2,'technical'),(172,2,'technical'),(19,2,'security'),(27,2,'security'),(50,2,'security'),(112,2,'security'),(143,2,'security'),(3,2,'support'),(56,2,'support'),(53,3,'technical'),(56,3,'technical'),(133,3,'technical'),(143,3,'technical'),(178,3,'technical'),(67,3,'security'),(136,3,'security'),(142,3,'security'),(148,3,'security'),(182,3,'security'),(6,3,'support'),(191,3,'support'),(27,4,'technical'),(73,4,'technical'),(108,4,'technical'),(149,4,'technical'),(152,4,'technical'),(8,4,'security'),(9,4,'security'),(115,4,'security'),(128,4,'security'),(177,4,'security'),(76,4,'support'),(189,4,'support'),(48,5,'technical'),(59,5,'technical'),(97,5,'technical'),(157,5,'technical'),(178,5,'technical'),(26,5,'security'),(30,5,'security'),(40,5,'security'),(112,5,'security'),(169,5,'security'),(19,5,'support'),(41,5,'support'),(28,6,'technical'),(48,6,'technical'),(51,6,'technical'),(62,6,'technical'),(109,6,'technical'),(1,6,'security'),(76,6,'security'),(185,6,'security'),(189,6,'security'),(197,6,'security'),(9,6,'support'),(40,6,'support'),(4,7,'technical'),(21,7,'technical'),(35,7,'technical'),(47,7,'technical'),(134,7,'technical'),(24,7,'security'),(31,7,'security'),(69,7,'security'),(70,7,'security'),(95,7,'security'),(130,7,'support'),(144,7,'support'),(9,8,'technical'),(48,8,'technical'),(130,8,'technical'),(164,8,'technical'),(167,8,'technical'),(37,8,'security'),(69,8,'security'),(78,8,'security'),(111,8,'security'),(134,8,'security'),(177,8,'security'),(115,8,'support'),(144,8,'support'),(31,9,'technical'),(41,9,'technical'),(45,9,'technical'),(87,9,'technical'),(192,9,'technical'),(1,9,'security'),(50,9,'security'),(113,9,'security'),(132,9,'security'),(168,9,'security'),(23,9,'support'),(111,9,'support'),(19,10,'technical'),(61,10,'technical'),(108,10,'technical'),(134,10,'technical'),(199,10,'technical'),(11,10,'security'),(42,10,'security'),(81,10,'security'),(133,10,'security'),(142,10,'security'),(72,10,'support'),(182,10,'support'),(66,11,'technical'),(103,11,'technical'),(136,11,'technical'),(154,11,'technical'),(157,11,'technical'),(32,11,'security'),(125,11,'security'),(132,11,'security'),(143,11,'security'),(191,11,'security'),(6,11,'support'),(106,11,'support'),(4,12,'technical'),(30,12,'technical'),(82,12,'technical'),(96,12,'technical'),(130,12,'technical'),(3,12,'security'),(12,12,'security'),(18,12,'security'),(78,12,'security'),(149,12,'security'),(175,12,'security'),(7,12,'support'),(14,12,'support'),(144,13,'technical'),(167,13,'technical'),(172,13,'technical'),(181,13,'technical'),(195,13,'technical'),(23,13,'security'),(70,13,'security'),(105,13,'security'),(135,13,'security'),(154,13,'security'),(198,13,'security'),(90,13,'support'),(174,13,'support'),(22,14,'technical'),(53,14,'technical'),(71,14,'technical'),(120,14,'technical'),(164,14,'technical'),(27,14,'security'),(42,14,'security'),(54,14,'security'),(183,14,'security'),(192,14,'security'),(59,14,'support'),(197,14,'support'),(19,15,'technical'),(28,15,'technical'),(31,15,'technical'),(83,15,'technical'),(90,15,'technical'),(14,15,'security'),(37,15,'security'),(71,15,'security'),(125,15,'security'),(146,15,'security'),(183,15,'security'),(59,15,'support'),(87,15,'support'),(35,16,'technical'),(51,16,'technical'),(129,16,'technical'),(131,16,'technical'),(169,16,'technical'),(72,16,'security'),(79,16,'security'),(96,16,'security'),(99,16,'security'),(105,16,'security'),(55,16,'support'),(119,16,'support'),(51,17,'technical'),(90,17,'technical'),(112,17,'technical'),(130,17,'technical'),(166,17,'technical'),(1,17,'security'),(11,17,'security'),(30,17,'security'),(58,17,'security'),(154,17,'security'),(135,17,'support'),(146,17,'support'),(62,18,'technical'),(89,18,'technical'),(95,18,'technical'),(155,18,'technical'),(161,18,'technical'),(25,18,'security'),(26,18,'security'),(36,18,'security'),(77,18,'security'),(151,18,'security'),(160,18,'security'),(189,18,'support'),(192,18,'support'),(16,19,'technical'),(81,19,'technical'),(124,19,'technical'),(141,19,'technical'),(181,19,'technical'),(30,19,'security'),(42,19,'security'),(120,19,'security'),(137,19,'security'),(172,19,'security'),(53,19,'support'),(196,19,'support'),(24,20,'technical'),(41,20,'technical'),(162,20,'technical'),(188,20,'technical'),(192,20,'technical'),(37,20,'security'),(73,20,'security'),(88,20,'security'),(99,20,'security'),(177,20,'security'),(66,20,'support'),(169,20,'support'),(82,21,'technical'),(83,21,'technical'),(125,21,'technical'),(157,21,'technical'),(158,21,'technical'),(21,21,'security'),(72,21,'security'),(130,21,'security'),(134,21,'security'),(184,21,'security'),(100,21,'support'),(200,21,'support'),(2,22,'technical'),(153,22,'technical'),(156,22,'technical'),(176,22,'technical'),(180,22,'technical'),(20,22,'security'),(58,22,'security'),(77,22,'security'),(177,22,'security'),(189,22,'security'),(115,22,'support'),(134,22,'support'),(51,23,'technical'),(76,23,'technical'),(125,23,'technical'),(134,23,'technical'),(153,23,'technical'),(32,23,'security'),(59,23,'security'),(64,23,'security'),(88,23,'security'),(110,23,'security'),(11,23,'support'),(146,23,'support'),(26,24,'technical'),(28,24,'technical'),(43,24,'technical'),(143,24,'technical'),(148,24,'technical'),(9,24,'security'),(22,24,'security'),(25,24,'security'),(31,24,'security'),(119,24,'security'),(132,24,'security'),(59,24,'support'),(89,24,'support'),(11,25,'technical'),(73,25,'technical'),(129,25,'technical'),(149,25,'technical'),(152,25,'technical'),(22,25,'security'),(44,25,'security'),(80,25,'security'),(135,25,'security'),(188,25,'security'),(71,25,'support'),(132,25,'support'),(26,26,'technical'),(69,26,'technical'),(121,26,'technical'),(132,26,'technical'),(157,26,'technical'),(48,26,'security'),(53,26,'security'),(81,26,'security'),(104,26,'security'),(160,26,'security'),(199,26,'security'),(135,26,'support'),(141,26,'support'),(6,27,'technical'),(65,27,'technical'),(66,27,'technical'),(124,27,'technical'),(196,27,'technical'),(90,27,'security'),(98,27,'security'),(116,27,'security'),(167,27,'security'),(197,27,'security'),(78,27,'support'),(118,27,'support'),(5,28,'technical'),(73,28,'technical'),(118,28,'technical'),(178,28,'technical'),(189,28,'technical'),(17,28,'security'),(20,28,'security'),(62,28,'security'),(98,28,'security'),(134,28,'security'),(99,28,'support'),(184,28,'support'),(30,29,'technical'),(49,29,'technical'),(92,29,'technical'),(125,29,'technical'),(150,29,'technical'),(14,29,'security'),(33,29,'security'),(44,29,'security'),(180,29,'security'),(194,29,'security'),(148,29,'support'),(192,29,'support'),(63,30,'technical'),(99,30,'technical'),(159,30,'technical'),(176,30,'technical'),(190,30,'technical'),(23,30,'security'),(73,30,'security'),(89,30,'security'),(135,30,'security'),(161,30,'security'),(199,30,'security'),(90,30,'support'),(92,30,'support'),(20,31,'technical'),(33,31,'technical'),(139,31,'technical'),(172,31,'technical'),(184,31,'technical'),(25,31,'security'),(28,31,'security'),(39,31,'security'),(81,31,'security'),(118,31,'security'),(144,31,'security'),(30,31,'support'),(117,31,'support'),(48,32,'technical'),(71,32,'technical'),(153,32,'technical'),(156,32,'technical'),(165,32,'technical'),(24,32,'security'),(83,32,'security'),(130,32,'security'),(144,32,'security'),(198,32,'security'),(40,32,'support'),(60,32,'support'),(25,33,'technical'),(27,33,'technical'),(89,33,'technical'),(91,33,'technical'),(199,33,'technical'),(37,33,'security'),(76,33,'security'),(108,33,'security'),(183,33,'security'),(200,33,'security'),(32,33,'support'),(123,33,'support'),(7,34,'technical'),(21,34,'technical'),(71,34,'technical'),(142,34,'technical'),(173,34,'technical'),(31,34,'security'),(110,34,'security'),(119,34,'security'),(131,34,'security'),(143,34,'security'),(190,34,'security'),(15,34,'support'),(50,34,'support'),(115,35,'technical'),(126,35,'technical'),(129,35,'technical'),(142,35,'technical'),(157,35,'technical'),(2,35,'security'),(10,35,'security'),(31,35,'security'),(136,35,'security'),(164,35,'security'),(94,35,'support'),(138,35,'support'),(55,36,'technical'),(120,36,'technical'),(147,36,'technical'),(163,36,'technical'),(195,36,'technical'),(19,36,'security'),(45,36,'security'),(74,36,'security'),(144,36,'security'),(164,36,'security'),(38,36,'support'),(180,36,'support'),(86,37,'technical'),(96,37,'technical'),(151,37,'technical'),(165,37,'technical'),(185,37,'technical'),(11,37,'security'),(69,37,'security'),(85,37,'security'),(174,37,'security'),(181,37,'security'),(26,37,'support'),(59,37,'support'),(31,38,'technical'),(62,38,'technical'),(80,38,'technical'),(170,38,'technical'),(183,38,'technical'),(7,38,'security'),(9,38,'security'),(10,38,'security'),(12,38,'security'),(17,38,'security'),(48,38,'support'),(200,38,'support'),(53,39,'technical'),(74,39,'technical'),(89,39,'technical'),(135,39,'technical'),(200,39,'technical'),(16,39,'security'),(113,39,'security'),(170,39,'security'),(193,39,'security'),(194,39,'security'),(79,39,'support'),(161,39,'support'),(29,40,'technical'),(32,40,'technical'),(57,40,'technical'),(89,40,'technical'),(91,40,'technical'),(37,40,'security'),(77,40,'security'),(141,40,'security'),(151,40,'security'),(199,40,'security'),(152,40,'support'),(158,40,'support'),(11,41,'technical'),(57,41,'technical'),(131,41,'technical'),(149,41,'technical'),(167,41,'technical'),(38,41,'security'),(109,41,'security'),(117,41,'security'),(172,41,'security'),(184,41,'security'),(189,41,'security'),(77,41,'support'),(178,41,'support'),(34,42,'technical'),(49,42,'technical'),(56,42,'technical'),(106,42,'technical'),(171,42,'technical'),(25,42,'security'),(95,42,'security'),(105,42,'security'),(158,42,'security'),(161,42,'security'),(195,42,'security'),(151,42,'support'),(174,42,'support'),(43,43,'technical'),(61,43,'technical'),(64,43,'technical'),(74,43,'technical'),(179,43,'technical'),(15,43,'security'),(88,43,'security'),(105,43,'security'),(123,43,'security'),(141,43,'security'),(193,43,'security'),(165,43,'support'),(170,43,'support'),(49,44,'technical'),(51,44,'technical'),(128,44,'technical'),(147,44,'technical'),(160,44,'technical'),(16,44,'security'),(35,44,'security'),(121,44,'security'),(122,44,'security'),(169,44,'security'),(4,44,'support'),(153,44,'support'),(26,45,'technical'),(55,45,'technical'),(155,45,'technical'),(162,45,'technical'),(186,45,'technical'),(56,45,'security'),(70,45,'security'),(78,45,'security'),(116,45,'security'),(175,45,'security'),(33,45,'support'),(60,45,'support'),(18,46,'technical'),(76,46,'technical'),(137,46,'technical'),(138,46,'technical'),(156,46,'technical'),(30,46,'security'),(43,46,'security'),(71,46,'security'),(118,46,'security'),(128,46,'security'),(84,46,'support'),(153,46,'support'),(10,47,'technical'),(48,47,'technical'),(77,47,'technical'),(136,47,'technical'),(163,47,'technical'),(39,47,'security'),(43,47,'security'),(86,47,'security'),(87,47,'security'),(140,47,'security'),(160,47,'security'),(134,47,'support'),(196,47,'support'),(7,48,'technical'),(49,48,'technical'),(100,48,'technical'),(158,48,'technical'),(186,48,'technical'),(16,48,'security'),(51,48,'security'),(113,48,'security'),(126,48,'security'),(184,48,'security'),(55,48,'support'),(187,48,'support'),(8,49,'technical'),(51,49,'technical'),(89,49,'technical'),(112,49,'technical'),(130,49,'technical'),(44,49,'security'),(79,49,'security'),(140,49,'security'),(155,49,'security'),(193,49,'security'),(11,49,'support'),(53,49,'support'),(7,50,'technical'),(8,50,'technical'),(130,50,'technical'),(169,50,'technical'),(180,50,'technical'),(11,50,'security'),(23,50,'security'),(39,50,'security'),(52,50,'security'),(58,50,'security'),(133,50,'support'),(181,50,'support'),(7,51,'technical'),(15,51,'technical'),(21,51,'technical'),(53,51,'technical'),(151,51,'technical'),(14,51,'security'),(31,51,'security'),(123,51,'security'),(131,51,'security'),(186,51,'security'),(3,51,'support'),(96,51,'support'),(13,52,'technical'),(129,52,'technical'),(150,52,'technical'),(192,52,'technical'),(193,52,'technical'),(7,52,'security'),(18,52,'security'),(60,52,'security'),(137,52,'security'),(197,52,'security'),(71,52,'support'),(118,52,'support'),(89,53,'technical'),(141,53,'technical'),(174,53,'technical'),(188,53,'technical'),(200,53,'technical'),(4,53,'security'),(61,53,'security'),(62,53,'security'),(119,53,'security'),(138,53,'security'),(178,53,'security'),(118,53,'support'),(156,53,'support'),(27,54,'technical'),(55,54,'technical'),(65,54,'technical'),(78,54,'technical'),(181,54,'technical'),(4,54,'security'),(34,54,'security'),(52,54,'security'),(147,54,'security'),(152,54,'security'),(195,54,'security'),(18,54,'support'),(116,54,'support'),(10,55,'technical'),(12,55,'technical'),(75,55,'technical'),(128,55,'technical'),(185,55,'technical'),(26,55,'security'),(51,55,'security'),(80,55,'security'),(92,55,'security'),(164,55,'security'),(37,55,'support'),(142,55,'support'),(59,56,'technical'),(62,56,'technical'),(151,56,'technical'),(164,56,'technical'),(171,56,'technical'),(12,56,'security'),(51,56,'security'),(71,56,'security'),(73,56,'security'),(113,56,'security'),(25,56,'support'),(104,56,'support'),(25,57,'technical'),(37,57,'technical'),(76,57,'technical'),(92,57,'technical'),(199,57,'technical'),(14,57,'security'),(89,57,'security'),(93,57,'security'),(96,57,'security'),(97,57,'security'),(105,57,'security'),(11,57,'support'),(44,57,'support'),(6,58,'technical'),(83,58,'technical'),(101,58,'technical'),(141,58,'technical'),(187,58,'technical'),(4,58,'security'),(84,58,'security'),(144,58,'security'),(151,58,'security'),(171,58,'security'),(65,58,'support'),(183,58,'support'),(79,59,'technical'),(134,59,'technical'),(143,59,'technical'),(169,59,'technical'),(187,59,'technical'),(15,59,'security'),(81,59,'security'),(104,59,'security'),(130,59,'security'),(156,59,'security'),(194,59,'security'),(63,59,'support'),(164,59,'support'),(120,60,'technical'),(148,60,'technical'),(149,60,'technical'),(173,60,'technical'),(186,60,'technical'),(47,60,'security'),(60,60,'security'),(74,60,'security'),(98,60,'security'),(126,60,'security'),(192,60,'security'),(115,60,'support'),(152,60,'support'),(58,61,'technical'),(82,61,'technical'),(100,61,'technical'),(158,61,'technical'),(193,61,'technical'),(27,61,'security'),(148,61,'security'),(152,61,'security'),(163,61,'security'),(165,61,'security'),(55,61,'support'),(156,61,'support'),(57,62,'technical'),(100,62,'technical'),(132,62,'technical'),(155,62,'technical'),(186,62,'technical'),(9,62,'security'),(19,62,'security'),(72,62,'security'),(87,62,'security'),(153,62,'security'),(84,62,'support'),(96,62,'support'),(38,63,'technical'),(53,63,'technical'),(65,63,'technical'),(109,63,'technical'),(177,63,'technical'),(1,63,'security'),(60,63,'security'),(95,63,'security'),(183,63,'security'),(190,63,'security'),(167,63,'support'),(193,63,'support'),(3,64,'technical'),(45,64,'technical'),(47,64,'technical'),(93,64,'technical'),(117,64,'technical'),(74,64,'security'),(96,64,'security'),(137,64,'security'),(150,64,'security'),(165,64,'security'),(191,64,'security'),(62,64,'support'),(173,64,'support'),(15,65,'technical'),(62,65,'technical'),(84,65,'technical'),(93,65,'technical'),(155,65,'technical'),(34,65,'security'),(72,65,'security'),(85,65,'security'),(110,65,'security'),(139,65,'security'),(179,65,'security'),(47,65,'support'),(176,65,'support'),(14,66,'technical'),(28,66,'technical'),(58,66,'technical'),(72,66,'technical'),(123,66,'technical'),(25,66,'security'),(33,66,'security'),(34,66,'security'),(109,66,'security'),(115,66,'security'),(176,66,'security'),(89,66,'support'),(110,66,'support'),(45,67,'technical'),(48,67,'technical'),(94,67,'technical'),(99,67,'technical'),(195,67,'technical'),(34,67,'security'),(70,67,'security'),(82,67,'security'),(85,67,'security'),(92,67,'security'),(198,67,'security'),(35,67,'support'),(163,67,'support'),(61,68,'technical'),(90,68,'technical'),(119,68,'technical'),(134,68,'technical'),(163,68,'technical'),(4,68,'security'),(23,68,'security'),(77,68,'security'),(151,68,'security'),(194,68,'security'),(104,68,'support'),(136,68,'support'),(32,69,'technical'),(43,69,'technical'),(84,69,'technical'),(117,69,'technical'),(131,69,'technical'),(21,69,'security'),(52,69,'security'),(121,69,'security'),(136,69,'security'),(187,69,'security'),(10,69,'support'),(184,69,'support'),(2,70,'technical'),(50,70,'technical'),(67,70,'technical'),(125,70,'technical'),(133,70,'technical'),(46,70,'security'),(91,70,'security'),(108,70,'security'),(160,70,'security'),(198,70,'security'),(35,70,'support'),(180,70,'support'),(5,71,'technical'),(31,71,'technical'),(65,71,'technical'),(75,71,'technical'),(77,71,'technical'),(72,71,'security'),(86,71,'security'),(116,71,'security'),(127,71,'security'),(152,71,'security'),(40,71,'support'),(88,71,'support'),(6,72,'technical'),(33,72,'technical'),(64,72,'technical'),(138,72,'technical'),(181,72,'technical'),(26,72,'security'),(65,72,'security'),(103,72,'security'),(110,72,'security'),(125,72,'security'),(160,72,'security'),(7,72,'support'),(40,72,'support'),(28,73,'technical'),(51,73,'technical'),(100,73,'technical'),(188,73,'technical'),(190,73,'technical'),(4,73,'security'),(7,73,'security'),(47,73,'security'),(74,73,'security'),(138,73,'security'),(70,73,'support'),(144,73,'support'),(96,74,'technical'),(158,74,'technical'),(162,74,'technical'),(170,74,'technical'),(191,74,'technical'),(22,74,'security'),(24,74,'security'),(61,74,'security'),(97,74,'security'),(113,74,'security'),(4,74,'support'),(90,74,'support'),(20,75,'technical'),(67,75,'technical'),(113,75,'technical'),(136,75,'technical'),(146,75,'technical'),(71,75,'security'),(116,75,'security'),(131,75,'security'),(134,75,'security'),(192,75,'security'),(95,75,'support'),(181,75,'support'),(22,76,'technical'),(30,76,'technical'),(151,76,'technical'),(170,76,'technical'),(177,76,'technical'),(27,76,'security'),(39,76,'security'),(61,76,'security'),(81,76,'security'),(95,76,'security'),(102,76,'security'),(112,76,'support'),(174,76,'support'),(63,77,'technical'),(120,77,'technical'),(121,77,'technical'),(131,77,'technical'),(155,77,'technical'),(4,77,'security'),(17,77,'security'),(37,77,'security'),(106,77,'security'),(159,77,'security'),(178,77,'security'),(113,77,'support'),(140,77,'support'),(10,78,'technical'),(60,78,'technical'),(62,78,'technical'),(89,78,'technical'),(104,78,'technical'),(40,78,'security'),(43,78,'security'),(51,78,'security'),(67,78,'security'),(153,78,'security'),(3,78,'support'),(184,78,'support'),(40,79,'technical'),(98,79,'technical'),(161,79,'technical'),(169,79,'technical'),(180,79,'technical'),(6,79,'security'),(15,79,'security'),(105,79,'security'),(116,79,'security'),(128,79,'security'),(145,79,'security'),(114,79,'support'),(130,79,'support'),(59,80,'technical'),(65,80,'technical'),(133,80,'technical'),(169,80,'technical'),(200,80,'technical'),(58,80,'security'),(80,80,'security'),(83,80,'security'),(97,80,'security'),(179,80,'security'),(194,80,'security'),(44,80,'support'),(160,80,'support'),(117,81,'technical'),(120,81,'technical'),(149,81,'technical'),(171,81,'technical'),(200,81,'technical'),(20,81,'security'),(22,81,'security'),(116,81,'security'),(123,81,'security'),(174,81,'security'),(108,81,'support'),(165,81,'support'),(8,82,'technical'),(9,82,'technical'),(20,82,'technical'),(88,82,'technical'),(135,82,'technical'),(79,82,'security'),(93,82,'security'),(98,82,'security'),(138,82,'security'),(175,82,'security'),(96,82,'support'),(161,82,'support'),(26,83,'technical'),(29,83,'technical'),(62,83,'technical'),(158,83,'technical'),(186,83,'technical'),(7,83,'security'),(67,83,'security'),(98,83,'security'),(180,83,'security'),(190,83,'security'),(88,83,'support'),(102,83,'support'),(15,84,'technical'),(29,84,'technical'),(37,84,'technical'),(40,84,'technical'),(64,84,'technical'),(6,84,'security'),(22,84,'security'),(139,84,'security'),(190,84,'security'),(197,84,'security'),(16,84,'support'),(93,84,'support'),(160,85,'technical'),(163,85,'technical'),(176,85,'technical'),(190,85,'technical'),(199,85,'technical'),(37,85,'security'),(63,85,'security'),(70,85,'security'),(116,85,'security'),(174,85,'security'),(154,85,'support'),(165,85,'support'),(2,86,'technical'),(81,86,'technical'),(84,86,'technical'),(90,86,'technical'),(183,86,'technical'),(92,86,'security'),(111,86,'security'),(122,86,'security'),(129,86,'security'),(136,86,'security'),(137,86,'security'),(87,86,'support'),(174,86,'support'),(43,87,'technical'),(47,87,'technical'),(91,87,'technical'),(184,87,'technical'),(189,87,'technical'),(37,87,'security'),(48,87,'security'),(52,87,'security'),(61,87,'security'),(83,87,'security'),(110,87,'support'),(118,87,'support'),(5,88,'technical'),(16,88,'technical'),(76,88,'technical'),(105,88,'technical'),(173,88,'technical'),(54,88,'security'),(66,88,'security'),(69,88,'security'),(87,88,'security'),(132,88,'security'),(48,88,'support'),(142,88,'support'),(19,89,'technical'),(20,89,'technical'),(53,89,'technical'),(103,89,'technical'),(196,89,'technical'),(27,89,'security'),(54,89,'security'),(116,89,'security'),(129,89,'security'),(169,89,'security'),(49,89,'support'),(180,89,'support'),(2,90,'technical'),(85,90,'technical'),(111,90,'technical'),(118,90,'technical'),(189,90,'technical'),(36,90,'security'),(69,90,'security'),(88,90,'security'),(104,90,'security'),(183,90,'security'),(26,90,'support'),(178,90,'support'),(16,91,'technical'),(41,91,'technical'),(106,91,'technical'),(128,91,'technical'),(129,91,'technical'),(81,91,'security'),(104,91,'security'),(110,91,'security'),(163,91,'security'),(171,91,'security'),(6,91,'support'),(80,91,'support'),(11,92,'technical'),(50,92,'technical'),(51,92,'technical'),(78,92,'technical'),(149,92,'technical'),(56,92,'security'),(100,92,'security'),(108,92,'security'),(113,92,'security'),(144,92,'security'),(77,92,'support'),(133,92,'support'),(98,93,'technical'),(122,93,'technical'),(179,93,'technical'),(180,93,'technical'),(182,93,'technical'),(1,93,'security'),(50,93,'security'),(57,93,'security'),(106,93,'security'),(118,93,'security'),(28,93,'support'),(59,93,'support'),(47,94,'technical'),(90,94,'technical'),(143,94,'technical'),(146,94,'technical'),(183,94,'technical'),(5,94,'security'),(11,94,'security'),(28,94,'security'),(46,94,'security'),(166,94,'security'),(144,94,'support'),(197,94,'support'),(22,95,'technical'),(44,95,'technical'),(95,95,'technical'),(141,95,'technical'),(162,95,'technical'),(65,95,'security'),(73,95,'security'),(92,95,'security'),(100,95,'security'),(113,95,'security'),(151,95,'security'),(90,95,'support'),(115,95,'support'),(9,96,'technical'),(22,96,'technical'),(47,96,'technical'),(152,96,'technical'),(190,96,'technical'),(19,96,'security'),(34,96,'security'),(117,96,'security'),(148,96,'security'),(163,96,'security'),(91,96,'support'),(155,96,'support'),(55,97,'technical'),(74,97,'technical'),(96,97,'technical'),(137,97,'technical'),(181,97,'technical'),(64,97,'security'),(97,97,'security'),(102,97,'security'),(104,97,'security'),(140,97,'security'),(49,97,'support'),(136,97,'support'),(35,98,'technical'),(98,98,'technical'),(141,98,'technical'),(148,98,'technical'),(156,98,'technical'),(5,98,'security'),(26,98,'security'),(52,98,'security'),(82,98,'security'),(97,98,'security'),(142,98,'security'),(79,98,'support'),(192,98,'support'),(11,99,'technical'),(14,99,'technical'),(113,99,'technical'),(176,99,'technical'),(182,99,'technical'),(20,99,'security'),(29,99,'security'),(71,99,'security'),(76,99,'security'),(105,99,'security'),(138,99,'support'),(197,99,'support'),(3,100,'technical'),(87,100,'technical'),(98,100,'technical'),(138,100,'technical'),(177,100,'technical'),(1,100,'security'),(32,100,'security'),(47,100,'security'),(54,100,'security'),(65,100,'security'),(17,100,'support'),(28,100,'support'),(51,101,'technical'),(55,101,'technical'),(65,101,'technical'),(162,101,'technical'),(197,101,'technical'),(23,101,'security'),(78,101,'security'),(80,101,'security'),(93,101,'security'),(143,101,'security'),(92,101,'support'),(109,101,'support'),(39,102,'technical'),(85,102,'technical'),(98,102,'technical'),(103,102,'technical'),(135,102,'technical'),(17,102,'security'),(88,102,'security'),(110,102,'security'),(125,102,'security'),(175,102,'security'),(28,102,'support'),(37,102,'support'),(51,103,'technical'),(129,103,'technical'),(151,103,'technical'),(155,103,'technical'),(196,103,'technical'),(14,103,'security'),(43,103,'security'),(58,103,'security'),(70,103,'security'),(131,103,'security'),(18,103,'support'),(139,103,'support'),(10,104,'technical'),(69,104,'technical'),(137,104,'technical'),(178,104,'technical'),(183,104,'technical'),(49,104,'security'),(91,104,'security'),(103,104,'security'),(121,104,'security'),(161,104,'security'),(43,104,'support'),(93,104,'support'),(113,105,'technical'),(116,105,'technical'),(124,105,'technical'),(142,105,'technical'),(160,105,'technical'),(41,105,'security'),(87,105,'security'),(158,105,'security'),(177,105,'security'),(181,105,'security'),(44,105,'support'),(49,105,'support'),(4,106,'technical'),(68,106,'technical'),(95,106,'technical'),(119,106,'technical'),(123,106,'technical'),(35,106,'security'),(38,106,'security'),(76,106,'security'),(168,106,'security'),(189,106,'security'),(52,106,'support'),(110,106,'support'),(15,107,'technical'),(150,107,'technical'),(159,107,'technical'),(178,107,'technical'),(194,107,'technical'),(66,107,'security'),(69,107,'security'),(77,107,'security'),(169,107,'security'),(171,107,'security'),(164,107,'support'),(170,107,'support'),(3,108,'technical'),(5,108,'technical'),(48,108,'technical'),(63,108,'technical'),(79,108,'technical'),(1,108,'security'),(31,108,'security'),(52,108,'security'),(56,108,'security'),(168,108,'security'),(25,108,'support'),(200,108,'support'),(2,109,'technical'),(86,109,'technical'),(160,109,'technical'),(175,109,'technical'),(181,109,'technical'),(60,109,'security'),(98,109,'security'),(106,109,'security'),(113,109,'security'),(198,109,'security'),(126,109,'support'),(169,109,'support'),(47,110,'technical'),(54,110,'technical'),(76,110,'technical'),(161,110,'technical'),(171,110,'technical'),(4,110,'security'),(20,110,'security'),(25,110,'security'),(63,110,'security'),(200,110,'security'),(59,110,'support'),(127,110,'support'),(16,111,'technical'),(81,111,'technical'),(151,111,'technical'),(177,111,'technical'),(187,111,'technical'),(80,111,'security'),(86,111,'security'),(97,111,'security'),(102,111,'security'),(178,111,'security'),(26,111,'support'),(135,111,'support'),(28,112,'technical'),(102,112,'technical'),(115,112,'technical'),(143,112,'technical'),(194,112,'technical'),(30,112,'security'),(53,112,'security'),(101,112,'security'),(180,112,'security'),(183,112,'security'),(190,112,'security'),(39,112,'support'),(106,112,'support'),(13,113,'technical'),(33,113,'technical'),(35,113,'technical'),(47,113,'technical'),(68,113,'technical'),(4,113,'security'),(19,113,'security'),(44,113,'security'),(74,113,'security'),(184,113,'security'),(31,113,'support'),(72,113,'support'),(5,114,'technical'),(14,114,'technical'),(37,114,'technical'),(79,114,'technical'),(146,114,'technical'),(50,114,'security'),(51,114,'security'),(85,114,'security'),(145,114,'security'),(186,114,'security'),(107,114,'support'),(130,114,'support'),(24,115,'technical'),(26,115,'technical'),(41,115,'technical'),(56,115,'technical'),(101,115,'technical'),(6,115,'security'),(96,115,'security'),(144,115,'security'),(158,115,'security'),(183,115,'security'),(52,115,'support'),(149,115,'support'),(37,116,'technical'),(69,116,'technical'),(125,116,'technical'),(162,116,'technical'),(169,116,'technical'),(28,116,'security'),(99,116,'security'),(142,116,'security'),(166,116,'security'),(180,116,'security'),(49,116,'support'),(72,116,'support'),(7,117,'technical'),(33,117,'technical'),(67,117,'technical'),(97,117,'technical'),(172,117,'technical'),(25,117,'security'),(28,117,'security'),(43,117,'security'),(59,117,'security'),(118,117,'security'),(164,117,'security'),(50,117,'support'),(152,117,'support'),(10,118,'technical'),(42,118,'technical'),(50,118,'technical'),(60,118,'technical'),(129,118,'technical'),(1,118,'security'),(31,118,'security'),(87,118,'security'),(195,118,'security'),(197,118,'security'),(30,118,'support'),(101,118,'support'),(46,119,'technical'),(77,119,'technical'),(140,119,'technical'),(174,119,'technical'),(183,119,'technical'),(16,119,'security'),(51,119,'security'),(72,119,'security'),(75,119,'security'),(107,119,'security'),(106,119,'support'),(120,119,'support'),(4,120,'technical'),(58,120,'technical'),(94,120,'technical'),(111,120,'technical'),(174,120,'technical'),(3,120,'security'),(64,120,'security'),(89,120,'security'),(139,120,'security'),(146,120,'security'),(196,120,'security'),(34,120,'support'),(162,120,'support'),(44,121,'technical'),(58,121,'technical'),(77,121,'technical'),(137,121,'technical'),(164,121,'technical'),(33,121,'security'),(86,121,'security'),(150,121,'security'),(191,121,'security'),(199,121,'security'),(70,121,'support'),(189,121,'support'),(2,122,'technical'),(51,122,'technical'),(83,122,'technical'),(118,122,'technical'),(139,122,'technical'),(22,122,'security'),(71,122,'security'),(88,122,'security'),(100,122,'security'),(157,122,'security'),(49,122,'support'),(93,122,'support'),(19,123,'technical'),(75,123,'technical'),(82,123,'technical'),(112,123,'technical'),(114,123,'technical'),(18,123,'security'),(138,123,'security'),(143,123,'security'),(145,123,'security'),(169,123,'security'),(64,123,'support'),(68,123,'support'),(53,124,'technical'),(88,124,'technical'),(105,124,'technical'),(150,124,'technical'),(165,124,'technical'),(17,124,'security'),(39,124,'security'),(68,124,'security'),(89,124,'security'),(108,124,'security'),(188,124,'security'),(71,124,'support'),(102,124,'support'),(12,125,'technical'),(43,125,'technical'),(113,125,'technical'),(133,125,'technical'),(171,125,'technical'),(11,125,'security'),(99,125,'security'),(149,125,'security'),(178,125,'security'),(182,125,'security'),(184,125,'security'),(79,125,'support'),(109,125,'support'),(34,126,'technical'),(112,126,'technical'),(130,126,'technical'),(178,126,'technical'),(182,126,'technical'),(45,126,'security'),(74,126,'security'),(85,126,'security'),(107,126,'security'),(186,126,'security'),(61,126,'support'),(81,126,'support'),(3,127,'technical'),(23,127,'technical'),(34,127,'technical'),(96,127,'technical'),(110,127,'technical'),(27,127,'security'),(48,127,'security'),(61,127,'security'),(106,127,'security'),(135,127,'security'),(35,127,'support'),(192,127,'support'),(3,128,'technical'),(19,128,'technical'),(20,128,'technical'),(75,128,'technical'),(195,128,'technical'),(17,128,'security'),(59,128,'security'),(104,128,'security'),(127,128,'security'),(144,128,'security'),(22,128,'support'),(102,128,'support'),(65,129,'technical'),(96,129,'technical'),(155,129,'technical'),(176,129,'technical'),(182,129,'technical'),(1,129,'security'),(34,129,'security'),(57,129,'security'),(131,129,'security'),(160,129,'security'),(75,129,'support'),(142,129,'support'),(23,130,'technical'),(116,130,'technical'),(131,130,'technical'),(141,130,'technical'),(148,130,'technical'),(39,130,'security'),(54,130,'security'),(173,130,'security'),(175,130,'security'),(199,130,'security'),(9,130,'support'),(49,130,'support'),(5,131,'technical'),(80,131,'technical'),(132,131,'technical'),(145,131,'technical'),(196,131,'technical'),(72,131,'security'),(73,131,'security'),(129,131,'security'),(179,131,'security'),(195,131,'security'),(41,131,'support'),(194,131,'support'),(24,132,'technical'),(27,132,'technical'),(87,132,'technical'),(110,132,'technical'),(142,132,'technical'),(41,132,'security'),(46,132,'security'),(47,132,'security'),(48,132,'security'),(66,132,'security'),(62,132,'support'),(147,132,'support'),(12,133,'technical'),(87,133,'technical'),(103,133,'technical'),(132,133,'technical'),(152,133,'technical'),(4,133,'security'),(75,133,'security'),(95,133,'security'),(107,133,'security'),(123,133,'security'),(167,133,'support'),(182,133,'support'),(31,134,'technical'),(51,134,'technical'),(92,134,'technical'),(116,134,'technical'),(148,134,'technical'),(15,134,'security'),(43,134,'security'),(68,134,'security'),(84,134,'security'),(158,134,'security'),(23,134,'support'),(56,134,'support'),(18,135,'technical'),(64,135,'technical'),(98,135,'technical'),(132,135,'technical'),(139,135,'technical'),(72,135,'security'),(76,135,'security'),(136,135,'security'),(154,135,'security'),(164,135,'security'),(170,135,'security'),(37,135,'support'),(135,135,'support'),(14,136,'technical'),(107,136,'technical'),(124,136,'technical'),(169,136,'technical'),(197,136,'technical'),(53,136,'security'),(67,136,'security'),(125,136,'security'),(131,136,'security'),(137,136,'security'),(43,136,'support'),(176,136,'support'),(18,137,'technical'),(21,137,'technical'),(72,137,'technical'),(121,137,'technical'),(133,137,'technical'),(16,137,'security'),(47,137,'security'),(150,137,'security'),(164,137,'security'),(196,137,'security'),(95,137,'support'),(141,137,'support'),(50,138,'technical'),(52,138,'technical'),(60,138,'technical'),(151,138,'technical'),(160,138,'technical'),(1,138,'security'),(114,138,'security'),(128,138,'security'),(132,138,'security'),(193,138,'security'),(124,138,'support'),(199,138,'support'),(51,139,'technical'),(89,139,'technical'),(102,139,'technical'),(103,139,'technical'),(171,139,'technical'),(49,139,'security'),(73,139,'security'),(146,139,'security'),(162,139,'security'),(184,139,'security'),(141,139,'support'),(177,139,'support'),(35,140,'technical'),(45,140,'technical'),(72,140,'technical'),(89,140,'technical'),(158,140,'technical'),(79,140,'security'),(151,140,'security'),(166,140,'security'),(171,140,'security'),(183,140,'security'),(199,140,'security'),(4,140,'support'),(24,140,'support'),(52,141,'technical'),(55,141,'technical'),(114,141,'technical'),(145,141,'technical'),(151,141,'technical'),(50,141,'security'),(86,141,'security'),(91,141,'security'),(113,141,'security'),(171,141,'security'),(182,141,'security'),(6,141,'support'),(19,141,'support'),(1,142,'technical'),(5,142,'technical'),(52,142,'technical'),(138,142,'technical'),(169,142,'technical'),(7,142,'security'),(74,142,'security'),(105,142,'security'),(159,142,'security'),(160,142,'security'),(192,142,'security'),(94,142,'support'),(150,142,'support'),(56,143,'technical'),(83,143,'technical'),(89,143,'technical'),(102,143,'technical'),(193,143,'technical'),(42,143,'security'),(84,143,'security'),(90,143,'security'),(123,143,'security'),(147,143,'security'),(148,143,'security'),(109,143,'support'),(181,143,'support'),(1,144,'technical'),(59,144,'technical'),(77,144,'technical'),(151,144,'technical'),(160,144,'technical'),(19,144,'security'),(78,144,'security'),(98,144,'security'),(113,144,'security'),(128,144,'security'),(46,144,'support'),(115,144,'support'),(30,145,'technical'),(64,145,'technical'),(65,145,'technical'),(90,145,'technical'),(106,145,'technical'),(36,145,'security'),(74,145,'security'),(91,145,'security'),(150,145,'security'),(169,145,'security'),(14,145,'support'),(41,145,'support'),(9,146,'technical'),(64,146,'technical'),(84,146,'technical'),(102,146,'technical'),(160,146,'technical'),(96,146,'security'),(154,146,'security'),(188,146,'security'),(193,146,'security'),(195,146,'security'),(120,146,'support'),(169,146,'support'),(17,147,'technical'),(34,147,'technical'),(43,147,'technical'),(78,147,'technical'),(149,147,'technical'),(26,147,'security'),(29,147,'security'),(58,147,'security'),(170,147,'security'),(186,147,'security'),(30,147,'support'),(100,147,'support'),(40,148,'technical'),(126,148,'technical'),(140,148,'technical'),(168,148,'technical'),(194,148,'technical'),(36,148,'security'),(77,148,'security'),(100,148,'security'),(109,148,'security'),(171,148,'security'),(78,148,'support'),(99,148,'support'),(2,149,'technical'),(29,149,'technical'),(60,149,'technical'),(147,149,'technical'),(195,149,'technical'),(130,149,'security'),(131,149,'security'),(162,149,'security'),(184,149,'security'),(191,149,'security'),(5,149,'support'),(156,149,'support'),(22,150,'technical'),(49,150,'technical'),(75,150,'technical'),(80,150,'technical'),(185,150,'technical'),(30,150,'security'),(101,150,'security'),(106,150,'security'),(119,150,'security'),(151,150,'security'),(27,150,'support'),(46,150,'support'),(81,151,'technical'),(89,151,'technical'),(117,151,'technical'),(154,151,'technical'),(200,151,'technical'),(39,151,'security'),(101,151,'security'),(148,151,'security'),(158,151,'security'),(174,151,'security'),(99,151,'support'),(173,151,'support'),(3,152,'technical'),(11,152,'technical'),(45,152,'technical'),(115,152,'technical'),(196,152,'technical'),(7,152,'security'),(17,152,'security'),(36,152,'security'),(37,152,'security'),(78,152,'security'),(103,152,'security'),(100,152,'support'),(128,152,'support'),(26,153,'technical'),(31,153,'technical'),(48,153,'technical'),(89,153,'technical'),(102,153,'technical'),(22,153,'security'),(42,153,'security'),(76,153,'security'),(100,153,'security'),(111,153,'security'),(174,153,'security'),(58,153,'support'),(190,153,'support'),(90,154,'technical'),(130,154,'technical'),(161,154,'technical'),(172,154,'technical'),(192,154,'technical'),(4,154,'security'),(17,154,'security'),(30,154,'security'),(101,154,'security'),(110,154,'security'),(1,154,'support'),(91,154,'support'),(33,155,'technical'),(56,155,'technical'),(90,155,'technical'),(96,155,'technical'),(178,155,'technical'),(4,155,'security'),(83,155,'security'),(119,155,'security'),(147,155,'security'),(162,155,'security'),(28,155,'support'),(95,155,'support'),(5,156,'technical'),(32,156,'technical'),(143,156,'technical'),(177,156,'technical'),(192,156,'technical'),(20,156,'security'),(54,156,'security'),(79,156,'security'),(126,156,'security'),(144,156,'security'),(43,156,'support'),(131,156,'support'),(53,157,'technical'),(60,157,'technical'),(114,157,'technical'),(124,157,'technical'),(192,157,'technical'),(26,157,'security'),(63,157,'security'),(154,157,'security'),(165,157,'security'),(167,157,'security'),(11,157,'support'),(123,157,'support'),(133,158,'technical'),(152,158,'technical'),(168,158,'technical'),(192,158,'technical'),(194,158,'technical'),(64,158,'security'),(89,158,'security'),(167,158,'security'),(179,158,'security'),(196,158,'security'),(98,158,'support'),(106,158,'support'),(24,159,'technical'),(26,159,'technical'),(70,159,'technical'),(120,159,'technical'),(133,159,'technical'),(29,159,'security'),(31,159,'security'),(42,159,'security'),(102,159,'security'),(104,159,'security'),(190,159,'security'),(38,159,'support'),(71,159,'support'),(17,160,'technical'),(43,160,'technical'),(44,160,'technical'),(90,160,'technical'),(187,160,'technical'),(24,160,'security'),(67,160,'security'),(118,160,'security'),(119,160,'security'),(200,160,'security'),(81,160,'support'),(136,160,'support'),(53,161,'technical'),(81,161,'technical'),(170,161,'technical'),(174,161,'technical'),(177,161,'technical'),(58,161,'security'),(61,161,'security'),(93,161,'security'),(102,161,'security'),(127,161,'security'),(131,161,'support'),(178,161,'support'),(2,162,'technical'),(67,162,'technical'),(86,162,'technical'),(91,162,'technical'),(191,162,'technical'),(44,162,'security'),(87,162,'security'),(98,162,'security'),(122,162,'security'),(139,162,'security'),(90,162,'support'),(138,162,'support'),(25,163,'technical'),(35,163,'technical'),(77,163,'technical'),(82,163,'technical'),(106,163,'technical'),(14,163,'security'),(36,163,'security'),(38,163,'security'),(150,163,'security'),(170,163,'security'),(189,163,'security'),(187,163,'support'),(195,163,'support'),(1,164,'technical'),(132,164,'technical'),(140,164,'technical'),(149,164,'technical'),(161,164,'technical'),(38,164,'security'),(103,164,'security'),(108,164,'security'),(116,164,'security'),(154,164,'security'),(45,164,'support'),(72,164,'support'),(39,165,'technical'),(49,165,'technical'),(53,165,'technical'),(60,165,'technical'),(166,165,'technical'),(11,165,'security'),(68,165,'security'),(107,165,'security'),(118,165,'security'),(188,165,'security'),(198,165,'security'),(69,165,'support'),(164,165,'support'),(9,166,'technical'),(40,166,'technical'),(104,166,'technical'),(105,166,'technical'),(147,166,'technical'),(11,166,'security'),(51,166,'security'),(114,166,'security'),(176,166,'security'),(185,166,'security'),(135,166,'support'),(143,166,'support'),(24,167,'technical'),(40,167,'technical'),(48,167,'technical'),(83,167,'technical'),(179,167,'technical'),(31,167,'security'),(34,167,'security'),(84,167,'security'),(134,167,'security'),(137,167,'security'),(51,167,'support'),(155,167,'support'),(71,168,'technical'),(84,168,'technical'),(121,168,'technical'),(128,168,'technical'),(141,168,'technical'),(21,168,'security'),(41,168,'security'),(52,168,'security'),(123,168,'security'),(143,168,'security'),(180,168,'security'),(75,168,'support'),(200,168,'support'),(14,169,'technical'),(29,169,'technical'),(67,169,'technical'),(145,169,'technical'),(161,169,'technical'),(15,169,'security'),(83,169,'security'),(99,169,'security'),(120,169,'security'),(144,169,'security'),(191,169,'security'),(119,169,'support'),(139,169,'support'),(7,170,'technical'),(14,170,'technical'),(24,170,'technical'),(26,170,'technical'),(127,170,'technical'),(67,170,'security'),(88,170,'security'),(103,170,'security'),(148,170,'security'),(193,170,'security'),(120,170,'support'),(129,170,'support'),(52,171,'technical'),(88,171,'technical'),(113,171,'technical'),(148,171,'technical'),(176,171,'technical'),(84,171,'security'),(87,171,'security'),(91,171,'security'),(127,171,'security'),(167,171,'security'),(188,171,'security'),(18,171,'support'),(121,171,'support'),(135,172,'technical'),(166,172,'technical'),(181,172,'technical'),(184,172,'technical'),(192,172,'technical'),(26,172,'security'),(30,172,'security'),(99,172,'security'),(134,172,'security'),(167,172,'security'),(9,172,'support'),(165,172,'support'),(104,173,'technical'),(121,173,'technical'),(130,173,'technical'),(176,173,'technical'),(198,173,'technical'),(129,173,'security'),(140,173,'security'),(151,173,'security'),(169,173,'security'),(170,173,'security'),(37,173,'support'),(128,173,'support'),(5,174,'technical'),(45,174,'technical'),(123,174,'technical'),(139,174,'technical'),(190,174,'technical'),(16,174,'security'),(23,174,'security'),(24,174,'security'),(90,174,'security'),(112,174,'security'),(138,174,'security'),(66,174,'support'),(116,174,'support'),(16,175,'technical'),(91,175,'technical'),(145,175,'technical'),(152,175,'technical'),(154,175,'technical'),(4,175,'security'),(76,175,'security'),(86,175,'security'),(159,175,'security'),(186,175,'security'),(188,175,'security'),(114,175,'support'),(175,175,'support'),(3,176,'technical'),(53,176,'technical'),(69,176,'technical'),(134,176,'technical'),(155,176,'technical'),(12,176,'security'),(37,176,'security'),(42,176,'security'),(85,176,'security'),(133,176,'security'),(183,176,'security'),(25,176,'support'),(184,176,'support'),(57,177,'technical'),(61,177,'technical'),(134,177,'technical'),(172,177,'technical'),(194,177,'technical'),(43,177,'security'),(60,177,'security'),(75,177,'security'),(86,177,'security'),(164,177,'security'),(24,177,'support'),(105,177,'support'),(62,178,'technical'),(93,178,'technical'),(125,178,'technical'),(147,178,'technical'),(158,178,'technical'),(13,178,'security'),(115,178,'security'),(151,178,'security'),(173,178,'security'),(182,178,'security'),(35,178,'support'),(126,178,'support'),(17,179,'technical'),(91,179,'technical'),(104,179,'technical'),(132,179,'technical'),(191,179,'technical'),(4,179,'security'),(47,179,'security'),(88,179,'security'),(129,179,'security'),(149,179,'security'),(57,179,'support'),(93,179,'support'),(3,180,'technical'),(5,180,'technical'),(24,180,'technical'),(58,180,'technical'),(173,180,'technical'),(36,180,'security'),(48,180,'security'),(52,180,'security'),(73,180,'security'),(96,180,'security'),(85,180,'support'),(139,180,'support'),(16,181,'technical'),(63,181,'technical'),(113,181,'technical'),(142,181,'technical'),(184,181,'technical'),(55,181,'security'),(68,181,'security'),(92,181,'security'),(104,181,'security'),(129,181,'security'),(178,181,'security'),(71,181,'support'),(134,181,'support'),(20,182,'technical'),(22,182,'technical'),(35,182,'technical'),(55,182,'technical'),(99,182,'technical'),(46,182,'security'),(69,182,'security'),(75,182,'security'),(129,182,'security'),(182,182,'security'),(81,182,'support'),(136,182,'support'),(17,183,'technical'),(103,183,'technical'),(111,183,'technical'),(176,183,'technical'),(195,183,'technical'),(12,183,'security'),(92,183,'security'),(149,183,'security'),(154,183,'security'),(198,183,'security'),(94,183,'support'),(155,183,'support'),(32,184,'technical'),(60,184,'technical'),(64,184,'technical'),(93,184,'technical'),(147,184,'technical'),(112,184,'security'),(127,184,'security'),(139,184,'security'),(184,184,'security'),(199,184,'security'),(13,184,'support'),(119,184,'support'),(13,185,'technical'),(63,185,'technical'),(94,185,'technical'),(131,185,'technical'),(170,185,'technical'),(9,185,'security'),(89,185,'security'),(90,185,'security'),(97,185,'security'),(163,185,'security'),(198,185,'security'),(12,185,'support'),(193,185,'support'),(23,186,'technical'),(102,186,'technical'),(106,186,'technical'),(182,186,'technical'),(194,186,'technical'),(32,186,'security'),(33,186,'security'),(34,186,'security'),(128,186,'security'),(137,186,'security'),(179,186,'security'),(51,186,'support'),(140,186,'support'),(33,187,'technical'),(126,187,'technical'),(147,187,'technical'),(159,187,'technical'),(191,187,'technical'),(61,187,'security'),(82,187,'security'),(95,187,'security'),(165,187,'security'),(193,187,'security'),(28,187,'support'),(29,187,'support'),(4,188,'technical'),(88,188,'technical'),(95,188,'technical'),(174,188,'technical'),(177,188,'technical'),(1,188,'security'),(7,188,'security'),(131,188,'security'),(132,188,'security'),(189,188,'security'),(81,188,'support'),(91,188,'support'),(51,189,'technical'),(53,189,'technical'),(96,189,'technical'),(118,189,'technical'),(156,189,'technical'),(36,189,'security'),(72,189,'security'),(100,189,'security'),(173,189,'security'),(193,189,'security'),(33,189,'support'),(158,189,'support'),(24,190,'technical'),(59,190,'technical'),(75,190,'technical'),(96,190,'technical'),(167,190,'technical'),(58,190,'security'),(100,190,'security'),(120,190,'security'),(168,190,'security'),(176,190,'security'),(42,190,'support'),(144,190,'support'),(14,191,'technical'),(20,191,'technical'),(124,191,'technical'),(131,191,'technical'),(200,191,'technical'),(15,191,'security'),(56,191,'security'),(68,191,'security'),(101,191,'security'),(114,191,'security'),(36,191,'support'),(88,191,'support'),(71,192,'technical'),(103,192,'technical'),(108,192,'technical'),(151,192,'technical'),(152,192,'technical'),(24,192,'security'),(34,192,'security'),(50,192,'security'),(81,192,'security'),(182,192,'security'),(138,192,'support'),(170,192,'support'),(61,193,'technical'),(66,193,'technical'),(104,193,'technical'),(151,193,'technical'),(186,193,'technical'),(56,193,'security'),(82,193,'security'),(91,193,'security'),(144,193,'security'),(192,193,'security'),(15,193,'support'),(102,193,'support'),(49,194,'technical'),(59,194,'technical'),(134,194,'technical'),(157,194,'technical'),(178,194,'technical'),(62,194,'security'),(65,194,'security'),(98,194,'security'),(147,194,'security'),(151,194,'security'),(183,194,'security'),(75,194,'support'),(99,194,'support'),(20,195,'technical'),(60,195,'technical'),(76,195,'technical'),(92,195,'technical'),(107,195,'technical'),(5,195,'security'),(22,195,'security'),(74,195,'security'),(89,195,'security'),(119,195,'security'),(175,195,'security'),(82,195,'support'),(124,195,'support'),(1,196,'technical'),(57,196,'technical'),(58,196,'technical'),(67,196,'technical'),(184,196,'technical'),(4,196,'security'),(55,196,'security'),(59,196,'security'),(66,196,'security'),(146,196,'security'),(189,196,'security'),(10,196,'support'),(79,196,'support'),(16,197,'technical'),(85,197,'technical'),(100,197,'technical'),(114,197,'technical'),(120,197,'technical'),(61,197,'security'),(82,197,'security'),(153,197,'security'),(167,197,'security'),(169,197,'security'),(90,197,'support'),(166,197,'support'),(34,198,'technical'),(45,198,'technical'),(59,198,'technical'),(78,198,'technical'),(184,198,'technical'),(25,198,'security'),(68,198,'security'),(137,198,'security'),(165,198,'security'),(172,198,'security'),(24,198,'support'),(52,198,'support'),(44,199,'technical'),(92,199,'technical'),(130,199,'technical'),(148,199,'technical'),(194,199,'technical'),(59,199,'security'),(60,199,'security'),(99,199,'security'),(100,199,'security'),(193,199,'security'),(96,199,'support'),(156,199,'support'),(12,200,'technical'),(36,200,'technical'),(65,200,'technical'),(150,200,'technical'),(193,200,'technical'),(47,200,'security'),(55,200,'security'),(111,200,'security'),(129,200,'security'),(160,200,'security'),(119,200,'support'),(155,200,'support');
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
INSERT INTO `seller` VALUES (9),(21),(53),(83),(90),(95),(100),(105),(113),(116),(138),(141);
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
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technical_equipment`
--

LOCK TABLES `technical_equipment` WRITE;
/*!40000 ALTER TABLE `technical_equipment` DISABLE KEYS */;
INSERT INTO `technical_equipment` VALUES (1,1,'Console','Kid else why certainly husband form ahead worry. Over last activity treatment force heart.\nDevelopment leg leader special. His about majority clearly garden sometimes.'),(2,1,'Speaker','Concern this memory ball. Race next performance opportunity soon matter. Growth try ask break huge on.\nAs herself doctor fine.'),(3,1,'Microphone','Real light can. Task people table language share entire give.\nNewspaper my security in eight their. She moment such prove fish its moment.'),(4,1,'Console','Network position gas key new if. Few ever age long subject amount figure successful. Action heart man great.\nCommon suddenly instead. Move education not whether difficult.'),(5,1,'Microphone','West customer career whom. Production carry last.'),(6,1,'Microphone','Nearly station final dinner hair race. Hot manage anything total. Far together usually tough deal. Skill blue who set.'),(7,1,'Console','Upon politics eye parent join price though. Future four bad if third. Out agent until second without enjoy.'),(8,1,'Microphone','Least population whose need provide feeling garden.\nExpect gun town brother. Respond win without head.'),(9,1,'Light','Light population top game with fact. Food main bed special themselves team. Political past market effect doctor.'),(10,2,'Special effect','Type sport religious agree physical will role physical. Develop quality especially sport author.'),(11,2,'Speaker','Produce choose city. Begin eat trade defense station only clear. Could practice weight method government sell central.'),(12,2,'Light','Offer which weight beyond. Would pull fall series significant must.\nCarry professional space pattern standard place. Campaign assume catch drive gas red.'),(13,2,'Microphone','Box meet as garden history record doctor. Yet resource result. Meeting policy lot fine garden.'),(14,2,'Light','System human here. Technology hotel need way begin. Congress concern nothing just pressure cold friend guy.'),(15,2,'Speaker','Can positive thus raise until approach space. Road human friend model face young buy.'),(16,2,'Microphone','School response art no white plan allow strategy. Quality ok tell star turn. Magazine ask almost board alone.'),(17,2,'Microphone','Yourself strong commercial issue. Member none improve note when join if federal. Learn compare rate mention.\nEarly lay opportunity attack interest cell. Sense other exist check what.'),(18,2,'Special effect','Up administration lead choice meeting.\nFall weight who drive poor sister water. Find chair try threat listen. Level my nice.'),(19,2,'Console','Effect can case five such lawyer. Writer six bad Congress similar. Data others too staff sure information.'),(20,2,'Light','Will mean effect represent. Song Republican movement able Mrs go.\nAnyone health get focus not.'),(21,2,'Light','Thing sign vote study minute very. As too wind. Mention her two send.'),(22,3,'Light','Door act region people. Present car fall those. Several factor wall class. Major else might by law box.'),(23,3,'Light','Number doctor phone city success society. Entire agency which many career read camera.'),(24,3,'Microphone','Board wrong but smile southern. Fill type possible a while. Management high detail seven. Else though forward about.'),(25,3,'Speaker','Close state program hit resource.\nConcern field economy soldier. Million moment Republican.'),(26,3,'Speaker','Myself once again let past learn face during. Some number require type. Thing large college.'),(27,3,'Special effect','Others idea end turn responsibility your. Much be prepare statement note a. Race live blood front show yeah.'),(28,3,'Console','Campaign home base wrong discover. Anything than detail service east election color. By stay health long modern.'),(29,3,'Console','Suggest fly least open. Job seem let author per hotel. Despite rich dream wear.'),(30,3,'Speaker','Peace language seem who. She husband fear buy someone black middle.'),(31,3,'Microphone','Safe statement summer room. Make him artist them.\nJust company step only ground hotel. Economic knowledge travel indeed street of college.'),(32,3,'Speaker','Into case mean something exactly several cut. Power model deal play. Box sell certain born television key inside.'),(33,3,'Microphone','Enter reduce travel thought charge. Blood treatment since design report theory.\nLaugh difficult mouth article total. Like among among population. Second manage parent.'),(34,3,'Microphone','Three possible part share. Police change defense road.\nRoad again picture situation that. Often side myself experience case memory.'),(35,3,'Special effect','Court often politics what activity. Worry close glass teach raise rather look. Population candidate son fund and family.'),(36,3,'Console','Rock soon occur drug. Task through thing.\nSomething bar wife staff. More understand executive local station hot condition. Consider generation different woman.'),(37,4,'Speaker','Interview lead top matter prevent alone. Fine expert themselves service choice.\nModern boy institution number well exist grow. Bar near notice.'),(38,4,'Light','Hand develop carry agree top save. Charge face word image. Year news field financial little food particular.'),(39,4,'Microphone','Scene usually let assume bag successful.\nOption foot generation receive traditional long. Class marriage under pull behind.'),(40,4,'Microphone','Anything spend chair buy enjoy inside. With thank financial. Tonight whether task.'),(41,4,'Light','Into sense face five TV. Necessary piece say beyond responsibility. Include any itself site. At bed ok material.'),(42,4,'Speaker','Strategy respond minute reality daughter expect again. Research institution sell person just goal decide. Build describe magazine.'),(43,4,'Speaker','As poor matter cause floor event. Young seat new remain enter. Imagine the exactly move standard usually be.'),(44,4,'Special effect','Stuff everyone wall final bank. Very push lot particularly read no.\nPage something may back. Less beat born still remember specific smile act.'),(45,4,'Special effect','Speech government protect page. Measure general rest simple. Decide part lay.'),(46,4,'Light','Yard talk raise each this pattern as could. Respond data among yeah by.\nNotice everybody difference least magazine now end.'),(47,4,'Microphone','Choose one box culture. Wall step candidate turn success. Important despite determine never popular. Total feel key under to.'),(48,4,'Special effect','Compare imagine fear feeling large seem. Ahead trial nice lead. Development design indicate positive nothing article.'),(49,4,'Console','Build ago role watch. More about similar. Doctor seem growth at seem when use international.'),(50,4,'Console','Leg partner couple action election network from. Seek south final direction teach blood water. Relate point rock bill lose magazine.'),(51,5,'Console','War add out expect sometimes star career. Site think hit month. Level central nearly resource country position.'),(52,5,'Light','Relationship attorney lead say interest before. Administration however lead outside window television.'),(53,5,'Light','Base anyone certain close seat describe town. Keep fear measure central surface meet third. Run bring weight short despite policy to.'),(54,5,'Light','Available ask its son close both bag. Interview their life career possible put.'),(55,5,'Light','Picture daughter road mention no know.\nSuddenly I side explain. Half business early night training. Lose state admit police.\nGive white result six election than when.'),(56,5,'Light','Sister onto hold development decade challenge challenge. Help forget available understand.'),(57,5,'Light','Until research sing less report wonder. Voice shoulder pass break with attention color.'),(58,5,'Speaker','Assume majority practice piece mean. Spring where fight whatever large yeah participant.'),(59,6,'Microphone','Maybe difference gun. Hand pull hit traditional. Sometimes unit question whether finally plant. Prove rather coach star.'),(60,6,'Special effect','Occur end start democratic mind role expert. Detail read policy TV power reveal bank.\nAgency team hair pay car marriage avoid.'),(61,6,'Special effect','Direction research nearly their use film night. Defense deal store various later item. Method popular same produce event style.'),(62,6,'Microphone','Rate leave camera address analysis improve catch. Water Republican describe rate. Author court environment form nor not.'),(63,6,'Light','Special letter outside material always. I above goal soldier grow generation. These mouth lose hit quite finally. Determine yourself he citizen.'),(64,6,'Speaker','Player fall material ready single week. Agreement government hour guess once choice well. Cost step realize strategy pull minute education culture.'),(65,6,'Light','Tend six fly event candidate. Stand join computer fact smile defense.'),(66,6,'Microphone','Push follow sound return. Know far however generation few under.'),(67,6,'Microphone','Before fly significant know. Floor power join trade Mrs seek enough. Reality American real finally by make ability.'),(68,6,'Light','Crime someone attention establish first who eight. Feel condition attention program.'),(69,6,'Microphone','Board suffer information station Democrat money. Safe cost move maintain above race debate various. Different contain debate often nothing.'),(70,6,'Special effect','Arrive special involve why service different his.\nWhen themselves social know such behavior. Today manager resource sport quality positive perform themselves. The trip speak culture if.'),(71,6,'Microphone','Decision blood anything picture. Improve chair Democrat.\nUpon data ten. Where court manager name age base. Will break medical exist.'),(72,7,'Light','Card bag property season radio stuff. Technology program according staff I success.'),(73,7,'Speaker','Hand talk figure source land nation shoulder. Industry same leave rate write rest.'),(74,7,'Console','Yard memory strong cell painting enjoy court. Rate modern particularly sing interesting. Night offer open around.'),(75,7,'Special effect','Artist charge add third look city. Increase beautiful too and value view citizen.\nCourse might detail. Industry serious play city have kitchen.'),(76,7,'Light','Home sort shoulder oil wait. Relationship face wall travel.\nSkin study back more hear work have. Study throw any two. Fine seek deep.'),(77,7,'Console','Culture machine thank radio dinner. Sign deal bad activity Democrat experience.'),(78,8,'Console','Win level recently hot fast actually leave among. Action firm by commercial laugh. Just onto still.'),(79,8,'Microphone','Finish window country. Political hear senior mission team fact. Smile partner activity now which throw.'),(80,8,'Console','Around eight will thus without. Even Republican million old.'),(81,8,'Microphone','Draw hit one. Majority box most away majority seek institution light.'),(82,8,'Speaker','Write street imagine past spring away. Lose international as threat body west be. Treat fish situation international reflect important.'),(83,8,'Microphone','Per response officer suddenly job election success. Ground likely assume mission particular court. Without sit sell art.'),(84,8,'Console','Tax nice reach issue herself.'),(85,8,'Special effect','Low forward news or doctor push partner best. Often evidence the environment no again. Area prove concern trouble.'),(86,9,'Light','Here bed great method leg than. They bed end police history. Ready out nice meeting.'),(87,9,'Special effect','Inside education anyone direction population reflect.\nBar drive itself most score. Finally there wife.'),(88,9,'Microphone','Deal much do letter feel structure meeting.'),(89,9,'Microphone','Body between lay hotel main write. Peace chance road no.'),(90,9,'Microphone','Family family sign red. Appear behind unit according move.\nRecognize Congress meet short until win table. Education road line PM action.'),(91,9,'Microphone','Any change foot figure sign hotel couple open. There floor week or study brother positive. Experience happy friend simple beautiful important build.'),(92,9,'Microphone','Local shake most responsibility purpose quality.\nStar continue quickly in. Develop pay night measure collection new.'),(93,9,'Speaker','Go performance six staff. Movement weight government spend rich station. Fine each player dark most bring. Soldier three control section ball ground.'),(94,9,'Light','Shake wonder stop hand. Poor people sense few natural. President prepare since recent new mind.'),(95,9,'Light','Attack conference prove benefit those real.\nElection attack response time station. Task side account arm themselves light. Lay very he fact edge.'),(96,9,'Speaker','Whatever upon scientist cut after show American. The involve power likely share instead court. Public safe pretty every factor action. Unit determine night why west attack.'),(97,9,'Speaker','Attack build short agree conference cup. Wide low drug fill. Reflect political life professional also.'),(98,10,'Microphone','Reduce second leader. Contain sound energy bring guess. Join near sign hot fly professional. Skin almost kind huge.'),(99,10,'Special effect','Light nature cup. Way travel not everybody stop list in bad. Expect seem myself clear discussion.'),(100,10,'Special effect','Sure early next dream want Republican. Treat serious across stay president year fall professional.'),(101,10,'Speaker','Friend movie south purpose bring front. Program month raise.'),(102,10,'Light','Art avoid charge deal nation. Whole deal me type card bag. Account set player threat.'),(103,10,'Speaker','Itself rule in become. Low maybe myself never night challenge miss raise. Meet artist cultural mission.'),(104,10,'Special effect','White minute yourself surface. Hold draw sing friend all stop.\nSize pass challenge hospital bag. Front interest TV within ball foot. Under religious imagine continue.'),(105,10,'Console','Out not baby free already today. Bar cell spend skill must teacher student. Traditional human professor others guy leg eye.'),(106,11,'Console','Speech girl prepare easy contain leave. Can view ever year away. Later talk culture matter whether whole sport.'),(107,11,'Microphone','Success nature hour build energy hard.'),(108,11,'Speaker','Voice him network clearly.\nWar case also then early could. Marriage performance fish eye.\nWorry fall several prevent.'),(109,11,'Light','Meet half away.\nLine important occur standard station star. Health whole serve husband believe increase down south.'),(110,11,'Special effect','Money check worry through. Own scene race very science woman. Building explain fill gas society clearly have.'),(111,11,'Microphone','Without yourself economic style. Live allow political outside. Quite case quickly industry cut paper.'),(112,11,'Microphone','His federal west large pass meet. Main account green. Enter allow long seven read risk.'),(113,11,'Special effect','Health entire against and set development agree. Heart public south performance who phone. Special knowledge left.'),(114,11,'Console','Focus glass group season computer. Risk population threat research couple soldier.'),(115,11,'Microphone','Know white fish anyone so. Day next agent billion chair probably time. Respond rule production trial environment.'),(116,11,'Console','Yeah head media exist however next.\nCouple like factor decide management culture.\nBeyond sound stuff politics easy energy firm. Join home husband future law bag choice success.'),(117,11,'Light','Stop generation power movie clearly business like. Course low onto land data win. Magazine new certainly. Now later without goal long knowledge become during.'),(118,11,'Microphone','Eat beyond feel family series they home. Economy sell very method free federal firm. Most rest page.'),(119,12,'Microphone','Sing instead inside send dark. Leave economy long will Republican might.'),(120,12,'Light','Prevent treat indicate maybe TV week health. Evidence technology these hear. Must together discussion daughter walk sound well.'),(121,12,'Light','Forward need nothing production safe to. Close reveal price me fish event. Evening perhaps even travel parent weight course.\nDescribe sea college. Policy from table then. Him easy at often.'),(122,12,'Speaker','Enjoy along high voice must interesting various. Model what most thus.'),(123,12,'Light','But available break majority hand air budget. Character key student address glass prevent.'),(124,12,'Microphone','Listen class relate part own figure interview. Find race almost window who Congress. Memory cut situation campaign prove value along.'),(125,12,'Console','Discussion management manage several finish. Student control require almost. Clearly team return enjoy bad where.'),(126,12,'Console','Stage central act. Someone source who movement you.'),(127,12,'Console','Ask note spend stock seem. Return education though available. Relate cultural Democrat may network.'),(128,13,'Light','Morning wall attention. Form in project soon meet. After job environment machine its agency.'),(129,13,'Console','International ago ago because effort. Perhaps compare they dog inside reveal among. Difference total herself technology over.'),(130,13,'Special effect','Democratic glass until down road. Someone enjoy usually official.'),(131,13,'Microphone','Option none point friend return store child. Poor open father among compare. Authority example bring yet.'),(132,13,'Microphone','Without bring accept member. Social ready take get finish. Middle play challenge trial.'),(133,13,'Light','Every usually hit. Behind quite education nearly agent. Necessary serious loss check whom evidence.'),(134,13,'Light','Responsibility machine section movie opportunity significant. Involve spend television. Window will pass character all opportunity a.'),(135,13,'Microphone','Article enjoy notice government.'),(136,13,'Microphone','To Republican north home wait speech. Response loss practice kitchen rock feel. Value store serve any item real. Answer election account who result attorney every.'),(137,13,'Microphone','White nation probably everything democratic population. Bed half suffer keep.\nKind buy inside. Here machine remain face.'),(138,13,'Console','Cut accept see rather meeting wear. Main their hard beautiful investment. Heart act enough easy student science. Tree want term reason my finish.'),(139,13,'Console','Take girl level service. Administration push newspaper thank growth.\nTrue concern camera concern system field.'),(140,13,'Microphone','Score number today box assume discussion Congress. Reveal wide important clear capital personal home loss.'),(141,13,'Special effect','Wind source avoid each. First world kitchen.\nResponse wonder various indeed which against. Team understand task development PM.'),(142,14,'Console','Perform up day commercial commercial on.\nBag wish security perhaps avoid. Room yet different blood condition your certain. Edge wind leader remain sometimes.'),(143,14,'Special effect','Organization risk street reach. Song air fact you. Tv produce vote customer.'),(144,14,'Microphone','Paper recent me note hear form. We game woman time system shake herself. Newspaper reach son part drive between.'),(145,14,'Speaker','Either service detail sign in me. Above leave degree leg visit. Military music soon add.'),(146,14,'Microphone','Put hundred class newspaper cut activity. The possible baby control ok often boy.'),(147,14,'Console','Doctor item new.\nSuggest to term friend cold town page someone. Model perform need with.'),(148,14,'Special effect','Dream safe clearly use. Situation lay social against piece heart.'),(149,15,'Light','Response collection speech plan.\nAssume president western purpose discuss. Phone white bar about ok design ago. State leg garden it.'),(150,15,'Speaker','Often catch surface religious daughter old bit. Upon media chair institution edge five determine. Specific right include.\nFeeling mouth yet low matter.'),(151,15,'Light','Everybody situation thought management take recent. Rock especially idea them mean fight push. Here color instead support guess rather.'),(152,15,'Special effect','Mission ahead too month. Wind stay realize feel gas. Executive visit simply card.'),(153,15,'Light','Kind figure old former kind. Claim senior or early generation. Fill indeed education land challenge someone let.'),(154,15,'Microphone','Party everybody military want. Begin central along language drop stop know. Edge imagine close call field clearly.'),(155,15,'Light','Collection join lawyer soldier traditional six. Business point charge stuff sign up computer. Force cup politics soon president.'),(156,15,'Console','Force risk natural. Sense others life chance another accept religious.'),(157,16,'Speaker','American political game thought fine. Reduce performance left. Prepare such on score.\nTraining pattern inside toward he true condition.'),(158,16,'Light','Our support relationship debate fact where turn. Billion also civil specific reflect school.'),(159,16,'Speaker','Pretty allow early front. Collection last see why collection tax town second. Campaign radio young edge.'),(160,16,'Light','Over sort if agree loss enjoy.\nRequire pull director car key. Free so magazine minute lead. Under into according soon fight standard.'),(161,16,'Microphone','Turn president expert give ball agency put thought.\nMission probably time off evidence spring. Cell now fly baby.'),(162,16,'Microphone','Them reality issue mission in. Large baby thank project. Support item should mouth stock couple.'),(163,16,'Special effect','Rate the affect heavy best. Answer edge risk enjoy movie. Play edge our put. Middle standard consider tax.'),(164,16,'Microphone','Model into common machine commercial. Determine glass evidence cell any environment scene. Word area who player air take Congress fund.'),(165,16,'Console','Explain scientist family course. Anyone help he nice.'),(166,16,'Console','Himself morning mention player meeting. Less occur leg dream.\nFear option industry organization try. Major care his in through. Degree attorney result floor rate help measure.'),(167,16,'Special effect','Responsibility travel measure between begin. Involve manage tree either research none tell.\nShort impact end morning. Magazine value concern size bit test.'),(168,17,'Special effect','Again return develop memory miss. Choice she million community firm offer later every. Middle television worry involve.'),(169,17,'Speaker','Better animal drug think enough computer pressure science. Guy move machine run.\nRise wait type.'),(170,17,'Microphone','Staff away week out seek avoid. New building degree short.\nAway happy animal pretty. Tonight trial information effort similar back.'),(171,17,'Microphone','Person pay hotel. Forward section successful.\nBook song blue attorney design large that hour. Continue community should public to dinner.\nMouth girl let. Toward lot where feeling.'),(172,17,'Microphone','Agree market require rather. Source front pattern here. Cultural animal agency sort mother morning our last.\nAssume today drive. Debate catch mission wish movement prepare.'),(173,17,'Microphone','Meet enter as wind evidence.\nSeveral beyond well anything program offer group. During wonder training. Draw charge keep add week.'),(174,17,'Microphone','See rise wide ok professional short. Else serious bar of program. Rather off far few hold ok.'),(175,17,'Console','Design soon alone. Million southern food include want. Data Mrs standard trial.\nServe not key size window figure. Beat very role add me. Cut onto coach easy.'),(176,17,'Light','Opportunity beautiful song power employee. Beat executive effort international return degree exist. Scene explain yes ten. Develop agent court do able.'),(177,17,'Microphone','Difficult begin state attorney. Actually quickly join offer rock game determine.'),(178,17,'Light','Air line level. Green mouth piece heavy others doctor. Them himself agreement painting.'),(179,18,'Special effect','Hotel really own table note feeling. Present operation approach order probably others upon.'),(180,18,'Light','Manage spring candidate. Industry modern card very matter. Into cold reduce help eight while.'),(181,18,'Microphone','Head us effort employee skill article. Product before again should available across oil. Tell level computer bad clear long cause.\nSay return some car decide up reach.'),(182,18,'Console','Audience with describe ago half. National three management become wife table growth source.'),(183,18,'Special effect','Artist red site. Late star enter color.\nCold bit education. Language law almost.\nNow study gun. By drop every build approach.'),(184,18,'Speaker','Guess future kitchen site above common. Sister serious young various.'),(185,18,'Microphone','College back mouth lay fast wall.\nBut admit buy. To on floor clear total. Lead center far building just dinner.'),(186,18,'Light','Answer go bag I among answer Congress.\nCenter citizen growth marriage have. Realize card sing training young car.'),(187,18,'Light','Include myself training only glass. City statement find for. Phone car I single. Organization success include until begin.\nProvide drive beyond thank apply. Risk nothing move.'),(188,18,'Special effect','Even second anyone sing. His partner fine control wish.'),(189,19,'Speaker','Down support value necessary writer. Age should thank next task strategy. Soldier task citizen organization.'),(190,19,'Speaker','Maintain either catch main opportunity court rise. Could third receive in trouble age focus. They central deal environment guess evidence star.'),(191,19,'Special effect','Especially account us rate why. Financial not address pattern.'),(192,19,'Special effect','Nothing low visit thought campaign. Thought mind watch western ahead politics network leg.'),(193,19,'Microphone','Treatment special shake assume economy. Understand down situation standard. Local appear morning tree thing nor.'),(194,19,'Microphone','Friend miss himself ready. Table way culture it.'),(195,19,'Console','Likely fire final democratic memory. Fall toward anyone official similar.\nDemocrat future reflect think PM.\nAnd me sit particularly some PM. Model tell tough my.'),(196,19,'Speaker','Lot mouth total.\nGroup character former in section. Want about cost no less. Within single new method.'),(197,19,'Console','Prove truth herself good. Become series boy build likely.'),(198,19,'Special effect','Party spring room everybody marriage age most. Party inside middle need add arrive teach.'),(199,20,'Special effect','Play establish truth professional program few. Goal fly great sell four. Significant voice understand need left analysis wide.\nSong consider forward wonder travel authority necessary we.'),(200,20,'Special effect','World partner social help stop four. Already yard back person responsibility fear.\nMiss TV challenge door hear. Pressure draw into use sound describe specific. Adult cut onto move result drop.'),(201,20,'Speaker','Present church reach south site single camera. Boy improve lose professor discover career class. Nearly member me play choose number sure.'),(202,20,'Speaker','Artist send through color must attorney. Baby themselves information Mrs.'),(203,20,'Console','Information drive wife necessary design. Expect most after tree then.\nCourse try senior economy either. Here beat eye business next deal. Nearly fast work place.'),(204,21,'Speaker','Sport general key rate door least. Week line hear with kitchen.\nTraditional guy deep west memory four. Themselves small moment enough.'),(205,21,'Microphone','Method point director simple face leave. Sit whom enter approach day field.\nPrevent feel writer main daughter alone. Drug star series remain. Maybe listen question research such.'),(206,21,'Console','The together effort increase step certain professional. Increase onto event order between.'),(207,21,'Light','Represent person debate leave. Adult someone administration attack change. Try significant benefit budget often view.'),(208,21,'Light','Pay Democrat there include college hospital. President born international according. Base station only itself who. Argue though there what time moment speak simple.'),(209,21,'Console','Question success experience may stop alone collection. National their anyone give cell that.\nRock far their water. Land process from happy black.'),(210,21,'Light','Set interest so bad. Relate rich over drive computer wish. Bar alone able trial look very.\nFinancial report loss involve. Talk thought throw officer manage blue. Wind side guy quite foot wide couple.'),(211,21,'Special effect','Nothing bed various design. Top director think wind store team human.'),(212,21,'Console','Same movie too while give. Fill heavy executive show. Authority parent indicate. Responsibility act into discuss system soldier player.'),(213,21,'Console','Claim experience job yes move today someone those. Around respond kid including say why third. Fall event really respond financial government.'),(214,22,'Special effect','Alone new which night. Result PM senior condition begin. Radio from seek reality.'),(215,22,'Speaker','Truth successful successful.'),(216,22,'Special effect','Action old boy information. Score manager sound street stage machine. In determine body toward certain.'),(217,22,'Speaker','Sure big source laugh stop avoid. Arm hope end cost reduce indicate happy. Happy air chair strong on manager news.'),(218,22,'Console','Ball rock hit memory. Indeed ask price can wrong method. Wear buy necessary war.'),(219,22,'Console','Chance range phone back off realize head. Window wife ability sell. Way hold lose cultural civil.'),(220,22,'Microphone','For morning you next unit. West great they foot picture safe ago.\nBehavior indicate reduce whose. Baby simple mind case put not.'),(221,22,'Microphone','Material check movie sign walk. Institution wind themselves Democrat.'),(222,23,'Console','Magazine fact fire force draw adult. International we black.'),(223,23,'Light','Consider everyone whatever. Hit concern build standard form also source staff. Study indicate yes lead keep reach.'),(224,23,'Console','Central million down. Direction director fast party best day team. State his event positive audience home chair grow.'),(225,23,'Speaker','Rate tough fight a year. Direction these nothing bring possible measure theory.'),(226,23,'Console','Between argue pick little occur past. Floor necessary decade care job right fill. About sound moment tend political.\nToday receive week customer employee range discussion such.'),(227,23,'Speaker','While opportunity their south approach product. Town public expert information southern recent field almost. Church program radio morning.'),(228,24,'Speaker','Four standard store difficult hear cut. Rule mention officer within. Determine paper car take experience seek. Democratic can same region century.'),(229,24,'Microphone','Present do develop garden. Under morning toward save century. Trouble number number.'),(230,24,'Console','Official police market short degree. Lay total leader performance study change change.'),(231,24,'Light','Front eye indicate sell beyond behavior represent list. Recent training cup item. Girl process religious move young more.'),(232,24,'Special effect','Cost include play real. Story ask song stand force picture throw. Born phone fast candidate. Interview serious he evening.'),(233,25,'Microphone','Operation us stage any history. Manager project major include public something.'),(234,25,'Console','Necessary situation yard skin few series president. Later them indicate factor air specific serve. Three painting attack leader whatever.'),(235,25,'Light','Cause century present majority rest. Consider away analysis hope serve remain tree.'),(236,25,'Special effect','Arrive past class. Agreement water measure their. Collection professional while animal.\nPick ever sign article debate. Deal answer wonder cover charge.'),(237,25,'Microphone','Worry support piece civil.\nSense space economy bad source. Actually same agency better cover.'),(238,25,'Console','Entire herself girl thank body television seem. Result about easy pass college attack. Entire strong dog leave cut class.'),(239,25,'Microphone','Decade letter wide effort record foot push. Authority evening still animal painting music drop. Probably heart bill bed.'),(240,25,'Speaker','They let hotel support. Represent allow great. Soon meeting place quality race painting. Charge current role maintain health.'),(241,25,'Microphone','Prepare against theory point personal garden financial. Others top market western model oil. Person point realize.'),(242,26,'Special effect','Identify society building voice large face. Southern worry office bring wear will above. Matter letter win paper.'),(243,26,'Special effect','Camera young other body their best. North trouble above development book view record.'),(244,26,'Special effect','Prepare score base color. Source focus behind even trial defense.'),(245,26,'Console','Reduce owner indeed result wall. We discuss unit.\nWhatever thus hospital edge account hospital take.\nWhom attorney several work condition. Keep value choice.'),(246,26,'Console','Risk impact wind glass.\nStatement final support ground free. Near mouth point commercial cost continue.'),(247,26,'Speaker','Property end evidence information accept deep.'),(248,26,'Light','While at provide respond nice. Argue teach plant. Field vote hold maintain.'),(249,26,'Light','Figure point baby result movement yard before. Per statement TV production find place.\nParty political town speak year image. During student do maybe method.'),(250,26,'Microphone','National able have education response talk. Cover ability determine interest model single another.'),(251,26,'Special effect','Ball hold though why woman manage officer agency. Thank interesting fine yet long remain.'),(252,26,'Special effect','Lead receive scene baby decade. Cut doctor fear human several stand soldier others.'),(253,26,'Speaker','Finally receive front boy sort group. Movement only boy.\nBuy avoid plan turn home. Nothing try despite speak notice. Require as follow person play very half treatment.'),(254,27,'Special effect','Will strategy degree laugh. Dog trouble three find spring. Once experience add far.'),(255,27,'Special effect','Mr act past improve budget. New when serious three many.\nShow month draw our. Present hair happen difference. Bring sing lose executive talk message practice.'),(256,27,'Light','Add meeting hold final law. Him summer often look myself. Oil message raise continue near.'),(257,27,'Console','Future industry every. But work TV there.\nArrive often continue coach likely team within. Own also resource success bring trial size.'),(258,27,'Light','Thing white short hand. Nation recently cold. Walk inside ago because him.\nAlmost apply five. Reflect treat several. During can crime.'),(259,27,'Light','Significant offer stock top matter just. Stop ability federal become glass leg medical. Task late stage campaign method could current. Better responsibility able the relate.'),(260,27,'Microphone','Along movement national if.\nCertainly enough lawyer woman sea however. Pattern second land. Speak Republican practice part.\nHand notice always writer article. Simply provide seat.'),(261,27,'Light','Way fire look another end forget fear. Writer right ok trouble. Serve purpose he success.'),(262,27,'Speaker','Few responsibility require. Age according let hundred.'),(263,27,'Console','Into myself board meet I.\nTelevision relate type hit.\nWriter laugh center reach however focus easy mention. Method less risk.\nHouse take author decade national thus. Up huge moment since ten.'),(264,27,'Special effect','Question film movie those spend country. Environmental watch top set.'),(265,27,'Microphone','Feel benefit book entire offer write. Thought necessary within or.\nPlay deep protect watch break explain capital. Attack visit deal indeed military practice.'),(266,27,'Microphone','Degree realize miss and speak live. Positive my door be. Rule third there trip party you wonder.'),(267,28,'Console','Executive develop personal.\nBit bar wonder watch total design through. Do middle but growth. By start worry surface.'),(268,28,'Console','Answer maintain their society during. Also management call grow attack onto ok move.\nDifficult travel north through wide dream building. Outside lawyer myself test thank car television.'),(269,28,'Console','Each finally as benefit. In pull southern the. Drug pull spring speak son. Arrive box quickly expect citizen wait.'),(270,28,'Light','Always person traditional minute not such. Tax water camera rather heart state.\nOnto white strong human. Hospital memory vote forward must. Black put guy play fish.'),(271,28,'Speaker','Per quality close marriage nothing. Center protect near physical enough respond. Hundred garden western wrong score.'),(272,28,'Microphone','Truth main so consider activity. Which trade everybody cultural reach. True live mean specific late prevent.\nIndividual smile ask bag. Thing water sometimes economy team.'),(273,28,'Light','Four open quickly foot community. Card around drug cup now society.'),(274,28,'Microphone','Remember letter assume safe. Method clear civil final. How response agreement worry keep media.'),(275,28,'Speaker','Business own wind with store will tax. Professor like light Mr.\nAvailable same to response woman. Crime worker middle dinner successful.'),(276,28,'Console','Federal space feel worry before. Difference factor early less anything. Story agree set particular need.\nElse government song listen. Reality question usually method rate low outside.'),(277,28,'Light','How seem focus door level song. Live leader use stay source old whatever.\nSet medical against hold. Month five age.'),(278,28,'Light','Once kitchen same how. Successful sure government state.'),(279,28,'Microphone','Heart price laugh still someone well really bag.\nBenefit TV parent course health. Rise no page every year accept speak.'),(280,28,'Microphone','Law cause trip night. Serve budget glass onto everything writer know. Look since example fund. Some myself after say television to view.'),(281,28,'Microphone','Quite the situation argue really floor beyond on. Again different recent rock customer its.'),(282,29,'Microphone','Word likely middle about require. Particularly think tonight. Design treatment into decision often. Present despite door information present.'),(283,29,'Light','Here chair sign list.\nStory expect only remain. Throw remember hope behavior pay south.\nReceive part million reveal. Per staff audience dream.'),(284,29,'Light','Attack report bed speak section energy year economic. Social field evidence soon try similar air.'),(285,29,'Speaker','Yard see challenge moment general kitchen. Would despite federal set either.\nParticularly day network born everybody despite discuss. Happen attorney to indeed president but.'),(286,29,'Speaker','Box herself head. Half such force data career. Book book continue current above have.'),(287,29,'Special effect','Lot hospital health little must meeting. Doctor present himself standard manager this.'),(288,29,'Microphone','We start move. Fall floor second sound. Special along professional real organization stage half thus.'),(289,29,'Microphone','Civil yard fall me south. Bed say democratic enter avoid. May call father possible only financial treatment agent.'),(290,29,'Console','As trouble market walk. South on news ok. Scientist democratic art large Democrat travel nice.'),(291,29,'Light','Health than nothing tonight pattern various. Deal white push despite movement center. Main save memory idea cup.'),(292,29,'Microphone','Collection board you operation during. Find white address increase.'),(293,29,'Light','Method year market customer avoid. Business civil tax short light range similar. Rich key get above whole impact. Include while class act draw improve with charge.'),(294,30,'Microphone','Help could organization open number edge evening.'),(295,30,'Microphone','Must at many area. Scene pretty keep hundred against later many.'),(296,30,'Light','Wish growth consider around hard individual give. Model require industry vote nor poor opportunity. Family book experience.\nThreat people whatever skin.'),(297,30,'Console','Possible cause organization believe land interview she. Again dark fly those least risk model oil. Than test pay specific thank.'),(298,30,'Speaker','Particular blood your require along start general. Sea yard sell increase quality. All alone care believe already local.'),(299,30,'Light','Law personal yes religious. Situation people southern yourself main community.\nHear little radio area we.'),(300,30,'Speaker','Until move five ball while how. Father discuss shake. Leg will give hit whether ago another.');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_resale_matches`
--

LOCK TABLES `temp_resale_matches` WRITE;
/*!40000 ALTER TABLE `temp_resale_matches` DISABLE KEYS */;
INSERT INTO `temp_resale_matches` VALUES (1,73,116,62),(2,64,53,29),(3,150,83,1),(4,145,21,154);
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
  KEY `event_ID` (`event_ID`),
  KEY `idx_ticket_visitor_event` (`visitor_ID`,`event_ID`),
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
INSERT INTO `ticket` VALUES (1,153,150,'0000000000017','backstage','2024-07-05',76.76,'credit_card',0,'Wendy','Lawson','edwin35@example.org','001-292-921-2896x778',55),(2,173,85,'0000000000024','general_admission','2025-05-07',50.88,'credit_card',0,'Charles','Burns','schultzstacie@example.com','900-277-9932x37112',33),(3,27,68,'0000000000031','backstage','2018-07-16',41.62,'I-BAN',1,'Stephanie','Pierce','mramirez@example.org','001-788-827-3538x422',38),(4,161,1,'0000000000048','backstage','2024-07-08',64.20,'credit_card',1,'Brian','French','fdaniels@example.com','630.830.7210',32),(5,66,103,'0000000000055','general_admission','2019-08-18',74.18,'credit_card',1,'Annette','Mitchell','mossroberta@example.com','204.507.3265',21),(6,166,25,'0000000000062','backstage','2024-07-05',55.78,'credit_card',1,'Geoffrey','Gallegos','joyanderson@example.com','6252013310',52),(7,152,111,'0000000000079','backstage','2024-07-07',28.70,'I-BAN',1,'Kaitlin','Ramirez','amber52@example.com','001-440-235-5558',64),(8,10,50,'0000000000086','backstage','2017-06-29',61.05,'debit_card',1,'Veronica','Brown','hoopermichael@example.net','(654)382-5446',58),(9,155,95,'0000000000093','general_admission','2024-07-05',69.87,'debit_card',1,'Ryan','Jones','matthewjordan@example.com','+1-692-538-7068',35),(10,78,94,'0000000000109','general_admission','2020-07-13',21.97,'I-BAN',1,'Lindsey','David','mallorymorris@example.net','+1-508-675-3706x6863',36),(11,114,91,'0000000000116','backstage','2022-09-06',42.17,'I-BAN',1,'Nicole','Ward','gbrown@example.net','001-300-392-8992',62),(12,85,81,'0000000000123','backstage','2021-07-19',83.98,'debit_card',1,'Jeremiah','Beasley','james99@example.com','776.955.1048x47883',57),(13,144,38,'0000000000130','general_admission','2023-09-05',41.08,'debit_card',1,'David','Molina','morozco@example.net','870.221.7504x799',60),(14,175,131,'0000000000147','general_admission','2025-05-07',86.03,'debit_card',0,'Vincent','Steele','elizabeth63@example.org','(735)591-2799',33),(15,14,15,'0000000000154','backstage','2017-07-02',61.43,'debit_card',1,'Tina','Barr','donnalong@example.net','001-200-730-4919x102',49),(16,136,41,'0000000000161','general_admission','2022-09-06',99.34,'credit_card',1,'David','Chapman','samuelbell@example.net','001-596-375-3572x235',42),(17,141,35,'0000000000178','general_admission','2023-09-05',49.17,'credit_card',0,'Elizabeth','Gibson','nfisher@example.com','827-208-7354x59640',35),(18,129,44,'0000000000185','backstage','2022-09-04',24.66,'credit_card',1,'Joanne','James','steven12@example.org','403.700.1624',55),(19,123,8,'0000000000192','general_admission','2022-09-08',95.32,'debit_card',1,'Angela','Simmons','qwelch@example.net','273-249-8100',54),(20,82,87,'0000000000208','backstage','2020-07-14',42.59,'I-BAN',1,'Amanda','Bryant','cjohnson@example.net','623-237-9240x801',21),(21,123,115,'0000000000215','general_admission','2022-09-06',78.50,'I-BAN',1,'Mark','Walsh','tsimpson@example.net','001-357-676-1800x262',63),(22,112,148,'0000000000222','backstage','2022-09-07',45.84,'I-BAN',1,'Aaron','Thomas','michael41@example.com','(936)869-3204x151',30),(23,41,8,'0000000000239','general_admission','2018-07-12',89.87,'I-BAN',1,'Angela','Simmons','qwelch@example.net','273-249-8100',54),(24,105,6,'0000000000246','general_admission','2021-07-18',62.26,'credit_card',1,'Marissa','Simpson','jjones@example.org','815-942-3753',65),(25,109,34,'0000000000253','backstage','2021-07-18',97.93,'credit_card',1,'Justin','Miller','paula05@example.net','299-678-8728x1235',25),(26,157,78,'0000000000260','backstage','2024-07-07',50.71,'credit_card',1,'Colin','Aguirre','jonesbrent@example.net','524-816-9412x9405',61),(27,159,75,'0000000000277','backstage','2024-07-07',30.44,'I-BAN',1,'Richard','Bradley','hward@example.net','(370)754-4156',65),(28,152,60,'0000000000284','general_admission','2024-07-09',37.77,'I-BAN',1,'Alexis','Larsen','michaelgreen@example.org','001-688-471-3571x327',18),(29,187,64,'0000000000291','backstage','2025-05-07',84.79,'credit_card',0,'James','Wood','garciakaitlyn@example.com','588.935.6229x7954',58),(30,196,86,'0000000000307','general_admission','2025-05-06',52.52,'I-BAN',0,'Brittany','Stone','brenda36@example.org','+1-455-731-6559x7216',54),(31,117,99,'0000000000314','backstage','2022-09-06',30.55,'debit_card',1,'Holly','Clay','adavenport@example.net','(789)787-7787',21),(32,151,103,'0000000000321','general_admission','2024-07-06',80.39,'debit_card',1,'Annette','Mitchell','mossroberta@example.com','204.507.3265',21),(33,102,128,'0000000000338','backstage','2021-07-22',73.91,'credit_card',1,'Bobby','Herrera','moralespaul@example.com','001-464-247-9507',28),(34,110,90,'0000000000345','backstage','2022-09-06',29.25,'I-BAN',0,'Deborah','Molina','monica74@example.net','5183728509',26),(35,18,2,'0000000000352','backstage','2018-07-16',80.57,'debit_card',1,'Kristen','Wilcox','colechavez@example.net','592.458.3547',50),(36,38,6,'0000000000369','general_admission','2018-07-16',89.43,'credit_card',1,'Marissa','Simpson','jjones@example.org','815-942-3753',65),(37,91,106,'0000000000376','backstage','2021-07-22',53.49,'I-BAN',1,'Patricia','Pineda','clarkejill@example.org','(770)356-8245x93137',29),(38,7,88,'0000000000383','backstage','2017-06-29',62.18,'credit_card',1,'Toni','King','cranecolin@example.com','518.929.0579x5536',39),(39,114,52,'0000000000390','general_admission','2022-09-05',20.73,'I-BAN',1,'Nicholas','Mejia','michaelduncan@example.com','(505)803-8976',35),(40,54,16,'0000000000406','backstage','2019-08-21',37.09,'I-BAN',1,'Carol','Hogan','lstone@example.org','+1-753-470-2876',43),(41,51,91,'0000000000413','general_admission','2019-08-21',53.67,'debit_card',1,'Nicole','Ward','gbrown@example.net','001-300-392-8992',62),(42,54,21,'0000000000420','backstage','2019-08-21',77.51,'credit_card',1,'Jeremy','Rich','tthompson@example.com','001-280-722-6528x284',28),(43,93,138,'0000000000437','backstage','2021-07-20',35.65,'I-BAN',0,'Katrina','Floyd','agarner@example.net','001-593-758-1042x762',60),(44,102,51,'0000000000444','general_admission','2021-07-21',93.56,'credit_card',1,'Jesse','Stevenson','hannah82@example.com','214.284.6611x093',47),(45,67,87,'0000000000451','general_admission','2019-08-19',31.99,'I-BAN',1,'Amanda','Bryant','cjohnson@example.net','623-237-9240x801',21),(46,87,131,'0000000000468','backstage','2021-07-21',26.85,'credit_card',1,'Vincent','Steele','elizabeth63@example.org','(735)591-2799',33),(47,52,105,'0000000000475','general_admission','2019-08-18',53.44,'I-BAN',1,'Meghan','Wilson','fostertammy@example.com','464.506.7849',59),(48,186,56,'0000000000482','general_admission','2025-05-05',60.62,'credit_card',0,'David','Valentine','bsampson@example.com','001-974-700-4973',43),(49,62,61,'0000000000499','backstage','2019-08-21',21.98,'credit_card',1,'Robert','Thompson','kaufmanrichard@example.com','(411)419-9325',31),(50,158,80,'0000000000505','backstage','2024-07-08',56.62,'credit_card',1,'Christopher','Harrison','sarahsanchez@example.org','001-316-976-8342',39),(51,52,113,'0000000000512','backstage','2019-08-21',39.88,'debit_card',1,'Marco','Mccann','chad52@example.net','7136672638',52),(52,132,91,'0000000000529','backstage','2022-09-04',38.39,'I-BAN',1,'Nicole','Ward','gbrown@example.net','001-300-392-8992',62),(53,68,48,'0000000000536','general_admission','2019-08-19',43.66,'debit_card',1,'Amanda','Williams','johnnybarrett@example.com','(393)851-6966',39),(54,68,18,'0000000000543','general_admission','2019-08-18',87.25,'debit_card',1,'Taylor','Thompson','carolnorris@example.net','001-263-332-5165',40),(55,28,66,'0000000000550','general_admission','2018-07-12',93.77,'debit_card',1,'Matthew','Perez','fvega@example.com','942-211-3560x25696',36),(56,43,144,'0000000000567','backstage','2018-07-13',53.21,'credit_card',1,'John','Herrera','michaeldiaz@example.com','001-680-429-2925x803',42),(57,63,16,'0000000000574','backstage','2019-08-18',41.43,'debit_card',1,'Carol','Hogan','lstone@example.org','+1-753-470-2876',43),(58,125,99,'0000000000581','general_admission','2022-09-04',98.41,'debit_card',0,'Holly','Clay','adavenport@example.net','(789)787-7787',21),(59,32,71,'0000000000598','backstage','2018-07-16',74.94,'I-BAN',1,'David','Mathews','crystal61@example.net','(923)919-5477x1429',20),(60,51,73,'0000000000604','backstage','2019-08-21',20.17,'credit_card',1,'Andrew','Phillips','andrewmoore@example.net','001-445-773-8871x898',32),(61,115,65,'0000000000611','general_admission','2022-09-08',65.98,'debit_card',1,'Christine','Morrison','jennifertanner@example.org','+1-362-778-4202x5338',49),(62,14,73,'0000000000628','backstage','2017-06-29',20.68,'credit_card',0,'Lisa','Lawson','shelia72@example.org','863-564-4675x8200',40),(63,196,113,'0000000000635','backstage','2025-05-04',28.38,'I-BAN',0,'Marco','Mccann','chad52@example.net','7136672638',52),(64,143,95,'0000000000642','backstage','2023-09-05',87.95,'credit_card',0,'Ryan','Jones','matthewjordan@example.com','+1-692-538-7068',35),(65,144,73,'0000000000659','backstage','2023-09-03',70.58,'debit_card',1,'Andrew','Phillips','andrewmoore@example.net','001-445-773-8871x898',32),(66,85,42,'0000000000666','backstage','2021-07-22',63.31,'credit_card',1,'Laura','Perry','andrea38@example.net','650.664.8927',51),(67,94,110,'0000000000673','backstage','2021-07-18',37.15,'debit_card',1,'Jasmine','Coffey','bevans@example.org','+1-677-671-1717x0353',56),(68,14,87,'0000000000680','backstage','2017-06-28',25.69,'I-BAN',1,'Amanda','Bryant','cjohnson@example.net','623-237-9240x801',21),(69,99,54,'0000000000697','general_admission','2021-07-21',32.62,'credit_card',1,'Barbara','Schwartz','phart@example.org','(827)395-5546',23),(70,129,130,'0000000000703','general_admission','2022-09-05',69.74,'I-BAN',1,'Holly','Griffin','mullinslisa@example.net','455-979-9712x5949',18),(71,97,78,'0000000000710','general_admission','2021-07-19',62.34,'credit_card',1,'Colin','Aguirre','jonesbrent@example.net','524-816-9412x9405',61),(72,137,69,'0000000000727','backstage','2022-09-08',99.30,'credit_card',1,'John','Hernandez','hayesmiguel@example.com','+1-822-395-6402x4369',28),(73,152,124,'0000000000734','general_admission','2024-07-08',58.91,'debit_card',1,'Jose','Osborn','kdavid@example.org','+1-356-247-0722x4506',19),(74,8,109,'0000000000741','backstage','2017-06-29',53.14,'I-BAN',1,'Lawrence','Owens','pporter@example.net','+1-323-286-5207',27),(75,45,144,'0000000000758','general_admission','2018-07-12',65.05,'debit_card',1,'John','Herrera','michaeldiaz@example.com','001-680-429-2925x803',42),(76,8,101,'0000000000765','general_admission','2017-07-01',82.41,'credit_card',1,'Jason','Walker','kristinewagner@example.org','+1-381-689-5580x2424',56),(77,24,71,'0000000000772','general_admission','2018-07-16',34.73,'credit_card',1,'David','Mathews','crystal61@example.net','(923)919-5477x1429',20),(78,196,141,'0000000000789','backstage','2025-05-06',81.54,'credit_card',0,'Ashley','Fischer','fhays@example.org','001-982-279-3989x510',36),(79,128,49,'0000000000796','general_admission','2022-09-08',68.06,'I-BAN',1,'Jamie','Nelson','scottsmith@example.net','425-270-8606',58),(80,50,147,'0000000000802','backstage','2018-07-15',65.78,'credit_card',1,'Karen','Beard','edwardsjason@example.net','001-467-767-8603x366',31),(81,10,112,'0000000000819','general_admission','2017-06-28',20.96,'debit_card',1,'Carrie','Merritt','david42@example.org','346.264.2338x093',35),(82,146,77,'0000000000826','general_admission','2023-09-02',90.05,'debit_card',1,'Michael','Krause','melissacosta@example.com','472-930-2376x9534',51),(83,23,13,'0000000000833','general_admission','2018-07-13',79.50,'credit_card',1,'Willie','Wilson','henry06@example.org','516.337.1811x77536',50),(84,20,17,'0000000000840','backstage','2018-07-14',42.83,'I-BAN',1,'Clifford','Hartman','phillipschad@example.net','371-767-6450x48376',45),(85,77,148,'0000000000857','backstage','2020-07-15',62.30,'I-BAN',1,'Aaron','Thomas','michael41@example.com','(936)869-3204x151',30),(86,150,124,'0000000000864','backstage','2023-09-05',82.61,'credit_card',1,'Jose','Osborn','kdavid@example.org','+1-356-247-0722x4506',19),(87,163,86,'0000000000871','general_admission','2024-07-07',39.60,'I-BAN',0,'Brittany','Stone','brenda36@example.org','+1-455-731-6559x7216',54),(88,121,46,'0000000000888','general_admission','2022-09-05',66.54,'credit_card',1,'Arthur','Roberts','sarahballard@example.org','693.512.6017x14546',20),(89,60,39,'0000000000895','backstage','2019-08-18',93.13,'debit_card',1,'Andrew','Krueger','znichols@example.com','(676)724-9415',62),(90,19,70,'0000000000901','general_admission','2018-07-13',38.68,'I-BAN',1,'Rebekah','Brooks','jesse00@example.com','+1-435-909-5229x3340',46),(91,112,89,'0000000000918','backstage','2022-09-08',60.99,'I-BAN',1,'Jason','Andrews','ethan41@example.com','775-703-0525x343',27),(92,159,49,'0000000000925','backstage','2024-07-05',70.49,'credit_card',1,'Jamie','Nelson','scottsmith@example.net','425-270-8606',58),(93,102,69,'0000000000932','backstage','2021-07-20',31.89,'debit_card',1,'John','Hernandez','hayesmiguel@example.com','+1-822-395-6402x4369',28),(94,37,117,'0000000000949','general_admission','2018-07-16',49.65,'I-BAN',1,'Marcia','Stanton','bryanbrown@example.com','708-847-2779x16208',54),(95,168,148,'0000000000956','general_admission','2024-07-09',93.86,'I-BAN',1,'Aaron','Thomas','michael41@example.com','(936)869-3204x151',30),(96,168,83,'0000000000963','general_admission','2024-07-05',83.98,'I-BAN',1,'Wendy','Lawson','edwin35@example.org','001-292-921-2896x778',55),(97,124,89,'0000000000970','general_admission','2022-09-05',26.90,'credit_card',0,'Jason','Andrews','ethan41@example.com','775-703-0525x343',27),(98,179,63,'0000000000987','general_admission','2025-05-06',47.09,'debit_card',0,'Tara','Montgomery','ddavidson@example.org','7375357674',47),(99,119,36,'0000000000994','backstage','2022-09-07',66.13,'credit_card',1,'Leslie','Fry','deancollins@example.net','+1-628-520-3378x3122',26),(100,115,142,'0000000001007','general_admission','2022-09-06',26.56,'debit_card',1,'Donna','Mckee','kathryntate@example.net','775-834-9008x21682',18),(101,40,33,'0000000001014','general_admission','2018-07-12',96.14,'credit_card',1,'Amy','Hogan','robin21@example.org','4375751861',30),(102,80,46,'0000000001021','general_admission','2020-07-13',39.45,'I-BAN',1,'Arthur','Roberts','sarahballard@example.org','693.512.6017x14546',20),(103,21,17,'0000000001038','general_admission','2018-07-12',88.57,'debit_card',0,'Clifford','Hartman','phillipschad@example.net','371-767-6450x48376',45),(104,83,3,'0000000001045','general_admission','2021-07-20',49.17,'credit_card',1,'Cory','Hernandez','fostermary@example.net','(512)984-3280x0247',52),(105,193,17,'0000000001052','general_admission','2025-05-07',94.75,'I-BAN',0,'Clifford','Hartman','phillipschad@example.net','371-767-6450x48376',45),(106,176,105,'0000000001069','backstage','2025-05-06',95.22,'I-BAN',0,'Meghan','Wilson','fostertammy@example.com','464.506.7849',59),(107,35,18,'0000000001076','general_admission','2018-07-12',30.81,'credit_card',0,'Taylor','Thompson','carolnorris@example.net','001-263-332-5165',40),(108,118,87,'0000000001083','general_admission','2022-09-07',74.50,'credit_card',1,'Amanda','Bryant','cjohnson@example.net','623-237-9240x801',21),(109,18,3,'0000000001090','general_admission','2018-07-15',26.82,'I-BAN',1,'Cory','Hernandez','fostermary@example.net','(512)984-3280x0247',52),(110,6,49,'0000000001106','backstage','2017-06-30',38.93,'credit_card',0,'Jamie','Nelson','scottsmith@example.net','425-270-8606',58),(111,189,73,'0000000001113','backstage','2025-05-03',77.08,'I-BAN',0,'Andrew','Phillips','andrewmoore@example.net','001-445-773-8871x898',32),(112,47,44,'0000000001120','backstage','2018-07-13',91.53,'debit_card',1,'Joanne','James','steven12@example.org','403.700.1624',55),(113,121,9,'0000000001137','general_admission','2022-09-06',49.80,'I-BAN',1,'Joshua','Parks','stephanieowens@example.org','270-806-8936',31),(114,42,43,'0000000001144','backstage','2018-07-13',37.75,'debit_card',1,'Jesse','Dunlap','ryan36@example.net','+1-464-401-9162x660',46),(115,90,6,'0000000001151','backstage','2021-07-21',94.69,'credit_card',1,'Marissa','Simpson','jjones@example.org','815-942-3753',65),(116,116,69,'0000000001168','backstage','2022-09-08',46.57,'credit_card',1,'John','Hernandez','hayesmiguel@example.com','+1-822-395-6402x4369',28),(117,26,26,'0000000001175','general_admission','2018-07-15',32.22,'debit_card',0,'Michael','Russo','tinanunez@example.net','216.922.4852',53),(118,36,133,'0000000001182','backstage','2018-07-14',34.49,'debit_card',1,'Jimmy','Owen','gking@example.com','717.303.6922',40),(119,24,12,'0000000001199','general_admission','2018-07-14',31.32,'credit_card',0,'Lisa','Carter','james60@example.com','7617434070',56),(120,171,150,'0000000001205','backstage','2025-05-06',70.81,'debit_card',0,'Nicole','Mayo','krystallopez@example.net','978-227-9954x238',33),(121,2,77,'0000000001212','backstage','2017-07-01',43.28,'credit_card',1,'Michael','Krause','melissacosta@example.com','472-930-2376x9534',51),(122,127,74,'0000000001229','general_admission','2022-09-05',73.75,'credit_card',1,'Sarah','Stevens','sarahmcdonald@example.net','630.551.3205',49),(123,93,44,'0000000001236','general_admission','2021-07-18',54.82,'I-BAN',1,'Joanne','James','steven12@example.org','403.700.1624',55),(124,64,122,'0000000001243','backstage','2019-08-18',25.02,'I-BAN',1,'Christopher','Cisneros','haynesryan@example.com','595.349.1489',61),(125,129,147,'0000000001250','backstage','2022-09-05',55.74,'credit_card',1,'Karen','Beard','edwardsjason@example.net','001-467-767-8603x366',31),(126,60,67,'0000000001267','general_admission','2019-08-20',77.49,'debit_card',1,'Randy','Adams','ahorne@example.org','287.636.3276',60),(127,92,108,'0000000001274','general_admission','2021-07-18',30.65,'I-BAN',1,'Mark','Palmer','tiffany95@example.org','883.412.5250x5686',23),(128,66,12,'0000000001281','backstage','2019-08-22',98.39,'debit_card',1,'Lisa','Carter','james60@example.com','7617434070',56),(129,111,80,'0000000001298','backstage','2022-09-04',28.10,'I-BAN',1,'Christopher','Harrison','sarahsanchez@example.org','001-316-976-8342',39),(130,50,109,'0000000001304','backstage','2018-07-12',37.36,'debit_card',1,'Lawrence','Owens','pporter@example.net','+1-323-286-5207',27),(131,112,87,'0000000001311','backstage','2022-09-07',96.84,'I-BAN',1,'Amanda','Bryant','cjohnson@example.net','623-237-9240x801',21),(132,37,24,'0000000001328','backstage','2018-07-14',85.26,'debit_card',1,'Michael','Watson','lovemichelle@example.org','649.933.9981x1330',25),(133,98,46,'0000000001335','general_admission','2021-07-20',99.07,'credit_card',1,'Arthur','Roberts','sarahballard@example.org','693.512.6017x14546',20),(134,195,32,'0000000001342','backstage','2025-05-05',62.61,'debit_card',0,'Rhonda','Smith','fmccoy@example.org','440-375-4918',59),(135,195,64,'0000000001359','backstage','2025-05-05',68.23,'debit_card',0,'Carolyn','Anthony','mccormicksusan@example.org','220-725-2532x95780',64),(136,122,79,'0000000001366','backstage','2022-09-05',77.96,'credit_card',1,'Robert','Harper','fernandezbrittany@example.org','+1-452-784-4746',18),(137,118,114,'0000000001373','backstage','2022-09-04',20.73,'I-BAN',1,'Deborah','Mcdonald','sandrahensley@example.com','(698)891-2114x849',47),(138,66,88,'0000000001380','backstage','2019-08-20',62.04,'credit_card',1,'Toni','King','cranecolin@example.com','518.929.0579x5536',39),(139,128,40,'0000000001397','general_admission','2022-09-08',80.41,'credit_card',1,'Amanda','Graham','brianarmstrong@example.org','+1-675-969-8623',32),(140,114,24,'0000000001403','general_admission','2022-09-04',78.74,'credit_card',1,'Michael','Watson','lovemichelle@example.org','649.933.9981x1330',25),(141,2,78,'0000000001410','general_admission','2017-06-28',64.48,'I-BAN',1,'Colin','Aguirre','jonesbrent@example.net','524-816-9412x9405',61),(142,106,123,'0000000001427','backstage','2021-07-19',36.78,'I-BAN',1,'Manuel','Greene','cynthiaflowers@example.net','+1-692-877-7666x643',22),(143,58,79,'0000000001434','general_admission','2019-08-20',53.90,'debit_card',1,'Robert','Harper','fernandezbrittany@example.org','+1-452-784-4746',18),(144,57,102,'0000000001441','backstage','2019-08-21',65.43,'debit_card',1,'Christine','Watkins','robert98@example.net','932-940-5092x91484',27),(145,141,145,'0000000001458','backstage','2023-09-01',31.07,'I-BAN',0,'Adrienne','Powell','richardward@example.net','001-380-527-4170x553',26),(146,71,64,'0000000001465','general_admission','2019-08-21',49.06,'credit_card',1,'Carolyn','Anthony','mccormicksusan@example.org','220-725-2532x95780',64),(147,90,102,'0000000001472','general_admission','2021-07-22',61.90,'debit_card',1,'Christine','Watkins','robert98@example.net','932-940-5092x91484',27),(148,76,100,'0000000001489','backstage','2020-07-14',24.87,'credit_card',0,'Emily','West','tamarabuchanan@example.com','958-951-9404x4161',18),(149,174,17,'0000000001496','backstage','2025-05-06',53.90,'I-BAN',0,'Clifford','Hartman','phillipschad@example.net','371-767-6450x48376',45),(150,74,28,'0000000001502','general_admission','2020-07-17',60.51,'I-BAN',1,'Wayne','Lamb','ashley98@example.net','(636)217-6806x014',33),(151,121,71,'0000000001519','backstage','2022-09-06',97.22,'debit_card',1,'David','Mathews','crystal61@example.net','(923)919-5477x1429',20),(152,155,88,'0000000001526','general_admission','2024-07-06',31.89,'credit_card',1,'Toni','King','cranecolin@example.com','518.929.0579x5536',39),(153,121,73,'0000000001533','general_admission','2022-09-05',68.05,'I-BAN',1,'Andrew','Phillips','andrewmoore@example.net','001-445-773-8871x898',32),(154,193,145,'0000000001540','backstage','2025-05-06',79.93,'credit_card',0,'Jeremy','Rich','tthompson@example.com','001-280-722-6528x284',28),(155,55,122,'0000000001557','general_admission','2019-08-20',21.62,'debit_card',1,'Christopher','Cisneros','haynesryan@example.com','595.349.1489',61),(156,150,5,'0000000001564','backstage','2023-09-05',97.79,'I-BAN',1,'Sandra','Anderson','paulcastillo@example.net','932-695-0385x86831',25),(157,140,70,'0000000001571','backstage','2022-09-05',28.39,'debit_card',1,'Rebekah','Brooks','jesse00@example.com','+1-435-909-5229x3340',46),(158,16,8,'0000000001588','backstage','2018-07-15',57.09,'I-BAN',1,'Angela','Simmons','qwelch@example.net','273-249-8100',54),(159,17,83,'0000000001595','backstage','2018-07-15',65.32,'credit_card',0,'Wendy','Lawson','edwin35@example.org','001-292-921-2896x778',55),(160,33,22,'0000000001601','general_admission','2018-07-15',78.97,'credit_card',1,'Joel','Taylor','penaeric@example.org','312.388.8899x501',60),(161,151,38,'0000000001618','general_admission','2024-07-05',98.69,'debit_card',0,'David','Molina','morozco@example.net','870.221.7504x799',60),(162,168,139,'0000000001625','general_admission','2024-07-06',26.72,'debit_card',1,'David','Beck','sara90@example.org','+1-911-978-7987x5329',25),(163,165,124,'0000000001632','general_admission','2024-07-08',67.83,'credit_card',0,'Jose','Osborn','kdavid@example.org','+1-356-247-0722x4506',19),(164,40,121,'0000000001649','backstage','2018-07-16',69.61,'I-BAN',1,'Samuel','Tran','cking@example.net','375-523-7650x1971',32),(165,17,42,'0000000001656','general_admission','2018-07-13',78.29,'I-BAN',0,'Laura','Perry','andrea38@example.net','650.664.8927',51),(166,119,62,'0000000001663','general_admission','2022-09-08',76.55,'credit_card',0,'Gilbert','Johnson','tbrewer@example.net','7154535549',56),(167,161,50,'0000000001670','general_admission','2024-07-07',75.05,'debit_card',1,'Veronica','Brown','hoopermichael@example.net','(654)382-5446',58),(168,91,110,'0000000001687','backstage','2021-07-21',27.50,'debit_card',1,'Jasmine','Coffey','bevans@example.org','+1-677-671-1717x0353',56),(169,75,4,'0000000001694','backstage','2020-07-15',56.65,'credit_card',1,'William','Walker','angela18@example.com','544-376-0221x03247',28),(170,146,104,'0000000001700','general_admission','2023-09-01',37.03,'credit_card',1,'Chelsea','Payne','mason53@example.com','962-278-9886',62),(171,17,27,'0000000001717','backstage','2018-07-12',86.47,'debit_card',1,'Darren','Bates','kelsey00@example.org','483.659.6595x443',52),(172,165,5,'0000000001724','general_admission','2024-07-09',57.39,'credit_card',1,'Sandra','Anderson','paulcastillo@example.net','932-695-0385x86831',25),(173,116,34,'0000000001731','general_admission','2022-09-08',24.26,'credit_card',1,'Justin','Miller','paula05@example.net','299-678-8728x1235',25),(174,73,141,'0000000001748','backstage','2019-08-18',68.88,'debit_card',1,'Ashley','Fischer','fhays@example.org','001-982-279-3989x510',36),(175,62,38,'0000000001755','general_admission','2019-08-18',40.59,'debit_card',1,'David','Molina','morozco@example.net','870.221.7504x799',60),(176,48,110,'0000000001762','backstage','2018-07-12',52.98,'I-BAN',1,'Jasmine','Coffey','bevans@example.org','+1-677-671-1717x0353',56),(177,53,1,'0000000001779','backstage','2019-08-18',59.99,'debit_card',1,'Brian','French','fdaniels@example.com','630.830.7210',32),(178,177,22,'0000000001786','general_admission','2025-05-05',59.33,'debit_card',0,'Joel','Taylor','penaeric@example.org','312.388.8899x501',60),(179,5,13,'0000000001793','backstage','2017-06-29',65.21,'debit_card',1,'Willie','Wilson','henry06@example.org','516.337.1811x77536',50),(180,114,23,'0000000001809','backstage','2022-09-04',60.49,'credit_card',1,'Whitney','Johnson','patriciamartinez@example.com','(957)587-5932x4897',44),(181,152,42,'0000000001816','backstage','2024-07-06',44.45,'debit_card',1,'Laura','Perry','andrea38@example.net','650.664.8927',51),(182,1,15,'0000000001823','general_admission','2017-06-30',44.75,'I-BAN',0,'Tina','Barr','donnalong@example.net','001-200-730-4919x102',49),(183,98,1,'0000000001830','backstage','2021-07-18',88.53,'debit_card',1,'Brian','French','fdaniels@example.com','630.830.7210',32),(184,175,56,'0000000001847','general_admission','2025-05-05',47.04,'debit_card',0,'David','Valentine','bsampson@example.com','001-974-700-4973',43),(185,82,32,'0000000001854','general_admission','2020-07-16',23.28,'I-BAN',1,'Rhonda','Smith','fmccoy@example.org','440-375-4918',59),(186,36,130,'0000000001861','general_admission','2018-07-15',57.77,'credit_card',1,'Holly','Griffin','mullinslisa@example.net','455-979-9712x5949',18),(187,31,143,'0000000001878','backstage','2018-07-13',49.02,'credit_card',1,'Troy','Goodman','moorechad@example.net','(594)241-5898x53445',33),(188,40,18,'0000000001885','general_admission','2018-07-12',56.82,'credit_card',1,'Taylor','Thompson','carolnorris@example.net','001-263-332-5165',40),(189,22,10,'0000000001892','general_admission','2018-07-12',54.95,'I-BAN',1,'Jerry','Smith','hillwilliam@example.com','9127359598',42),(190,169,42,'0000000001908','general_admission','2024-07-05',65.85,'credit_card',1,'Laura','Perry','andrea38@example.net','650.664.8927',51),(191,146,71,'0000000001915','backstage','2023-09-02',44.81,'I-BAN',1,'David','Mathews','crystal61@example.net','(923)919-5477x1429',20),(192,10,24,'0000000001922','backstage','2017-07-01',77.46,'I-BAN',1,'Michael','Watson','lovemichelle@example.org','649.933.9981x1330',25),(193,165,45,'0000000001939','backstage','2024-07-06',70.53,'credit_card',1,'Patrick','Jefferson','hfuller@example.com','001-614-285-0299',35),(194,22,68,'0000000001946','general_admission','2018-07-13',20.83,'I-BAN',1,'Stephanie','Pierce','mramirez@example.org','001-788-827-3538x422',38),(195,159,103,'0000000001953','general_admission','2024-07-05',86.47,'I-BAN',1,'Annette','Mitchell','mossroberta@example.com','204.507.3265',21),(196,169,95,'0000000001960','backstage','2024-07-05',53.02,'credit_card',1,'Ryan','Jones','matthewjordan@example.com','+1-692-538-7068',35),(197,51,69,'0000000001977','backstage','2019-08-21',94.89,'credit_card',1,'John','Hernandez','hayesmiguel@example.com','+1-822-395-6402x4369',28),(198,78,121,'0000000001984','general_admission','2020-07-13',71.14,'credit_card',1,'Samuel','Tran','cking@example.net','375-523-7650x1971',32),(199,111,143,'0000000001991','backstage','2022-09-07',47.70,'credit_card',1,'Troy','Goodman','moorechad@example.net','(594)241-5898x53445',33),(200,62,124,'0000000002004','backstage','2019-08-21',21.69,'credit_card',1,'Jose','Osborn','kdavid@example.org','+1-356-247-0722x4506',19),(201,16,18,'0000000002011','general_admission','2018-07-13',77.38,'I-BAN',1,'Taylor','Thompson','carolnorris@example.net','001-263-332-5165',40),(202,198,21,'0000000002028','general_admission','2025-05-07',99.34,'debit_card',0,'Jeremy','Rich','tthompson@example.com','001-280-722-6528x284',28),(203,17,34,'0000000002035','general_admission','2018-07-14',74.92,'credit_card',1,'Justin','Miller','paula05@example.net','299-678-8728x1235',25),(204,163,46,'0000000002042','backstage','2024-07-05',71.04,'debit_card',1,'Arthur','Roberts','sarahballard@example.org','693.512.6017x14546',20),(205,117,27,'0000000002059','general_admission','2022-09-04',48.67,'credit_card',1,'Darren','Bates','kelsey00@example.org','483.659.6595x443',52),(206,167,4,'0000000002066','general_admission','2024-07-06',64.05,'I-BAN',1,'William','Walker','angela18@example.com','544-376-0221x03247',28),(207,161,25,'0000000002073','general_admission','2024-07-05',44.25,'debit_card',0,'Geoffrey','Gallegos','joyanderson@example.com','6252013310',52),(208,25,3,'0000000002080','backstage','2018-07-16',63.81,'credit_card',1,'Cory','Hernandez','fostermary@example.net','(512)984-3280x0247',52),(209,154,70,'0000000002097','backstage','2024-07-09',47.78,'credit_card',1,'Rebekah','Brooks','jesse00@example.com','+1-435-909-5229x3340',46),(210,132,21,'0000000002103','backstage','2022-09-04',29.27,'I-BAN',1,'Jeremy','Rich','tthompson@example.com','001-280-722-6528x284',28),(211,105,65,'0000000002110','general_admission','2021-07-22',84.71,'credit_card',1,'Christine','Morrison','jennifertanner@example.org','+1-362-778-4202x5338',49),(212,173,9,'0000000002127','backstage','2025-05-05',29.33,'debit_card',0,'Joshua','Parks','stephanieowens@example.org','270-806-8936',31),(213,17,63,'0000000002134','general_admission','2018-07-13',76.78,'I-BAN',1,'Tara','Montgomery','ddavidson@example.org','7375357674',47),(214,56,31,'0000000002141','backstage','2019-08-20',47.47,'debit_card',1,'Brian','Arnold','mary72@example.com','551.642.6332',37),(215,74,137,'0000000002158','general_admission','2020-07-14',63.26,'I-BAN',1,'Tanya','Woods','wardkathleen@example.net','940.360.5356',20),(216,2,137,'0000000002165','general_admission','2017-07-01',62.84,'I-BAN',1,'Tanya','Woods','wardkathleen@example.net','940.360.5356',20),(217,106,15,'0000000002172','backstage','2021-07-22',45.12,'credit_card',1,'Tina','Barr','donnalong@example.net','001-200-730-4919x102',49),(218,125,10,'0000000002189','backstage','2022-09-06',46.65,'I-BAN',1,'Jerry','Smith','hillwilliam@example.com','9127359598',42),(219,171,9,'0000000002196','general_admission','2025-05-03',52.74,'credit_card',0,'Joshua','Parks','stephanieowens@example.org','270-806-8936',31),(220,101,85,'0000000002202','general_admission','2021-07-20',22.28,'I-BAN',1,'Charles','Burns','schultzstacie@example.com','900-277-9932x37112',33);
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
INSERT INTO `visitor` VALUES (1,'Brian','French','630.830.7210','fdaniels@example.com',32),(2,'Kristen','Wilcox','592.458.3547','colechavez@example.net',50),(3,'Cory','Hernandez','(512)984-3280x0247','fostermary@example.net',52),(4,'William','Walker','544-376-0221x03247','angela18@example.com',28),(5,'Sandra','Anderson','932-695-0385x86831','paulcastillo@example.net',25),(6,'Marissa','Simpson','815-942-3753','jjones@example.org',65),(7,'Tony','Bishop','840-685-8938x2899','allisoncourtney@example.net',33),(8,'Angela','Simmons','273-249-8100','qwelch@example.net',54),(9,'Joshua','Parks','270-806-8936','stephanieowens@example.org',31),(10,'Jerry','Smith','9127359598','hillwilliam@example.com',42),(11,'Shane','Walker','303.664.1754','jason33@example.com',48),(12,'Lisa','Carter','7617434070','james60@example.com',56),(13,'Willie','Wilson','516.337.1811x77536','henry06@example.org',50),(14,'Anna','Wong','+1-940-400-1404x6823','jobrien@example.net',29),(15,'Tina','Barr','001-200-730-4919x1022','donnalong@example.net',49),(16,'Carol','Hogan','+1-753-470-2876','lstone@example.org',43),(17,'Clifford','Hartman','371-767-6450x48376','phillipschad@example.net',45),(18,'Taylor','Thompson','001-263-332-5165','carolnorris@example.net',40),(19,'Susan','Taylor','+1-935-730-8853','xmaxwell@example.org',50),(20,'Gail','Williams','4348206969','nicole79@example.org',28),(21,'Jeremy','Rich','001-280-722-6528x284','tthompson@example.com',28),(22,'Joel','Taylor','312.388.8899x501','penaeric@example.org',60),(23,'Whitney','Johnson','(957)587-5932x4897','patriciamartinez@example.com',44),(24,'Michael','Watson','649.933.9981x1330','lovemichelle@example.org',25),(25,'Geoffrey','Gallegos','6252013310','joyanderson@example.com',52),(26,'Michael','Russo','216.922.4852','tinanunez@example.net',53),(27,'Darren','Bates','483.659.6595x443','kelsey00@example.org',52),(28,'Wayne','Lamb','(636)217-6806x014','ashley98@example.net',33),(29,'Claudia','Brown','+1-275-263-3903','fordmaria@example.org',46),(30,'Erik','Ibarra','(488)388-7517','obaker@example.org',65),(31,'Brian','Arnold','551.642.6332','mary72@example.com',37),(32,'Rhonda','Smith','440-375-4918','fmccoy@example.org',59),(33,'Amy','Hogan','4375751861','robin21@example.org',30),(34,'Justin','Miller','299-678-8728x1235','paula05@example.net',25),(35,'Elizabeth','Gibson','827-208-7354x59640','nfisher@example.com',35),(36,'Leslie','Fry','+1-628-520-3378x3122','deancollins@example.net',26),(37,'Monica','Miller','787.826.3351x5682','sweeneyelizabeth@example.com',47),(38,'David','Molina','870.221.7504x799','morozco@example.net',60),(39,'Andrew','Krueger','(676)724-9415','znichols@example.com',62),(40,'Amanda','Graham','+1-675-969-8623','brianarmstrong@example.org',32),(41,'David','Chapman','001-596-375-3572x235','samuelbell@example.net',42),(42,'Laura','Perry','650.664.8927','andrea38@example.net',51),(43,'Jesse','Dunlap','+1-464-401-9162x660','ryan36@example.net',46),(44,'Joanne','James','403.700.1624','steven12@example.org',55),(45,'Patrick','Jefferson','001-614-285-0299','hfuller@example.com',35),(46,'Arthur','Roberts','693.512.6017x14546','sarahballard@example.org',20),(47,'Nancy','Holmes','872.804.4823','lgregory@example.com',48),(48,'Amanda','Williams','(393)851-6966','johnnybarrett@example.com',39),(49,'Jamie','Nelson','425-270-8606','scottsmith@example.net',58),(50,'Veronica','Brown','(654)382-5446','hoopermichael@example.net',58),(51,'Jesse','Stevenson','214.284.6611x093','hannah82@example.com',47),(52,'Nicholas','Mejia','(505)803-8976','michaelduncan@example.com',35),(53,'James','Wood','588.935.6229x7954','garciakaitlyn@example.com',58),(54,'Barbara','Schwartz','(827)395-5546','phart@example.org',23),(55,'Jeremy','Carlson','001-238-276-0987x81320','kim08@example.com',60),(56,'David','Valentine','001-974-700-4973','bsampson@example.com',43),(57,'Alyssa','Peck','990.939.4114','joshua08@example.com',23),(58,'Cynthia','Stafford','+1-880-233-8115x25498','theresataylor@example.com',44),(59,'Michael','Green','(558)226-5821','patelpaul@example.com',47),(60,'Alexis','Larsen','001-688-471-3571x3274','michaelgreen@example.org',18),(61,'Robert','Thompson','(411)419-9325','kaufmanrichard@example.com',31),(62,'Gilbert','Johnson','7154535549','tbrewer@example.net',56),(63,'Tara','Montgomery','7375357674','ddavidson@example.org',47),(64,'Carolyn','Anthony','220-725-2532x95780','mccormicksusan@example.org',64),(65,'Christine','Morrison','+1-362-778-4202x53388','jennifertanner@example.org',49),(66,'Matthew','Perez','942-211-3560x25696','fvega@example.com',36),(67,'Randy','Adams','287.636.3276','ahorne@example.org',60),(68,'Stephanie','Pierce','001-788-827-3538x422','mramirez@example.org',38),(69,'John','Hernandez','+1-822-395-6402x4369','hayesmiguel@example.com',28),(70,'Rebekah','Brooks','+1-435-909-5229x3340','jesse00@example.com',46),(71,'David','Mathews','(923)919-5477x1429','crystal61@example.net',20),(72,'Scott','Smith','977-225-7450','jonesbetty@example.org',44),(73,'Andrew','Phillips','001-445-773-8871x8980','andrewmoore@example.net',32),(74,'Sarah','Stevens','630.551.3205','sarahmcdonald@example.net',49),(75,'Richard','Bradley','(370)754-4156','hward@example.net',65),(76,'Joe','Johnson','+1-849-727-5283x1319','joannevasquez@example.com',57),(77,'Michael','Krause','472-930-2376x9534','melissacosta@example.com',51),(78,'Colin','Aguirre','524-816-9412x9405','jonesbrent@example.net',61),(79,'Robert','Harper','+1-452-784-4746','fernandezbrittany@example.org',18),(80,'Christopher','Harrison','001-316-976-8342','sarahsanchez@example.org',39),(81,'Jeremiah','Beasley','776.955.1048x47883','james99@example.com',57),(82,'Courtney','French','993.276.9323x23031','scuevas@example.org',41),(83,'Wendy','Lawson','001-292-921-2896x7785','edwin35@example.org',55),(84,'Kenneth','Bell','429-817-6441','nelsonregina@example.com',58),(85,'Charles','Burns','900-277-9932x37112','schultzstacie@example.com',33),(86,'Brittany','Stone','+1-455-731-6559x72168','brenda36@example.org',54),(87,'Amanda','Bryant','623-237-9240x801','cjohnson@example.net',21),(88,'Toni','King','518.929.0579x5536','cranecolin@example.com',39),(89,'Jason','Andrews','775-703-0525x343','ethan41@example.com',27),(90,'Deborah','Molina','5183728509','monica74@example.net',26),(91,'Nicole','Ward','001-300-392-8992','gbrown@example.net',62),(92,'Susan','Green','688.539.3373x097','kirbybrett@example.com',28),(93,'Alexis','Russo','396-615-5577','wriggs@example.org',24),(94,'Lindsey','David','+1-508-675-3706x6863','mallorymorris@example.net',36),(95,'Ryan','Jones','+1-692-538-7068','matthewjordan@example.com',35),(96,'Dorothy','Hunt','9809237658','smithtiffany@example.com',50),(97,'Sarah','Bryant','001-251-387-9342','brownlucas@example.com',65),(98,'Kevin','Morris','599-285-9129','nwoods@example.net',62),(99,'Holly','Clay','(789)787-7787','adavenport@example.net',21),(100,'Emily','West','958-951-9404x4161','tamarabuchanan@example.com',18),(101,'Jason','Walker','+1-381-689-5580x24242','kristinewagner@example.org',56),(102,'Christine','Watkins','932-940-5092x91484','robert98@example.net',27),(103,'Annette','Mitchell','204.507.3265','mossroberta@example.com',21),(104,'Chelsea','Payne','962-278-9886','mason53@example.com',62),(105,'Meghan','Wilson','464.506.7849','fostertammy@example.com',59),(106,'Patricia','Pineda','(770)356-8245x93137','clarkejill@example.org',29),(107,'Anita','Torres','4188843273','justinmarsh@example.net',46),(108,'Mark','Palmer','883.412.5250x5686','tiffany95@example.org',23),(109,'Lawrence','Owens','+1-323-286-5207','pporter@example.net',27),(110,'Jasmine','Coffey','+1-677-671-1717x0353','bevans@example.org',56),(111,'Kaitlin','Ramirez','001-440-235-5558','amber52@example.com',64),(112,'Carrie','Merritt','346.264.2338x093','david42@example.org',35),(113,'Marco','Mccann','7136672638','chad52@example.net',52),(114,'Deborah','Mcdonald','(698)891-2114x849','sandrahensley@example.com',47),(115,'Mark','Walsh','001-357-676-1800x26290','tsimpson@example.net',63),(116,'Lisa','Lawson','863-564-4675x8200','shelia72@example.org',40),(117,'Marcia','Stanton','708-847-2779x16208','bryanbrown@example.com',54),(118,'Sara','Cain','568-705-0504','brittanyburton@example.net',57),(119,'Bridget','Myers','001-363-414-6179','ana68@example.com',52),(120,'Jose','Lambert','(946)992-0002x75818','kennedymonique@example.net',47),(121,'Samuel','Tran','375-523-7650x1971','cking@example.net',32),(122,'Christopher','Cisneros','595.349.1489','haynesryan@example.com',61),(123,'Manuel','Greene','+1-692-877-7666x643','cynthiaflowers@example.net',22),(124,'Jose','Osborn','+1-356-247-0722x45067','kdavid@example.org',19),(125,'Jessica','Brooks','531.944.1653','laurengreen@example.org',38),(126,'Kayla','Fox','(401)353-0696','daydarlene@example.net',26),(127,'Nicholas','Monroe','248-993-3309','hpittman@example.com',37),(128,'Bobby','Herrera','001-464-247-9507','moralespaul@example.com',28),(129,'Gabriel','Schultz','825-235-0576','erinlevy@example.net',40),(130,'Holly','Griffin','455-979-9712x5949','mullinslisa@example.net',18),(131,'Vincent','Steele','(735)591-2799','elizabeth63@example.org',33),(132,'Danielle','Alvarez','911-702-2448','dpittman@example.net',48),(133,'Jimmy','Owen','717.303.6922','gking@example.com',40),(134,'Jeremy','Hood','671.749.0594x31462','stephenmiller@example.org',19),(135,'Aaron','West','+1-324-713-8662','sbarr@example.net',19),(136,'Hailey','Randall','9575610349','gutierrezpaul@example.org',26),(137,'Tanya','Woods','940.360.5356','wardkathleen@example.net',20),(138,'Katrina','Floyd','001-593-758-1042x762','agarner@example.net',60),(139,'David','Beck','+1-911-978-7987x5329','sara90@example.org',25),(140,'Wendy','Garza','7376955017','gsimmons@example.com',35),(141,'Ashley','Fischer','001-982-279-3989x5109','fhays@example.org',36),(142,'Donna','Mckee','775-834-9008x21682','kathryntate@example.net',18),(143,'Troy','Goodman','(594)241-5898x53445','moorechad@example.net',33),(144,'John','Herrera','001-680-429-2925x803','michaeldiaz@example.com',42),(145,'Adrienne','Powell','001-380-527-4170x55336','richardward@example.net',26),(146,'Ashley','Hendricks','001-396-951-9480x3077','nsmith@example.com',44),(147,'Karen','Beard','001-467-767-8603x366','edwardsjason@example.net',31),(148,'Aaron','Thomas','(936)869-3204x151','michael41@example.com',30),(149,'Vincent','Hall','+1-459-940-3818x64760','hamiltonsharon@example.org',33),(150,'Nicole','Mayo','978-227-9954x238','krystallopez@example.net',33);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_ticket_update_visitor
AFTER UPDATE ON visitor
FOR EACH ROW
BEGIN
  UPDATE ticket
    SET visitor_name       = NEW.first_name,
        visitor_last_name  = NEW.last_name,
        visitor_email      = NEW.email,
        visitor_telephone  = NEW.telephone,
        visitor_age        = NEW.age
  WHERE visitor_ID = NEW.visitor_ID;
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

-- Dump completed on 2025-05-13 19:04:02
