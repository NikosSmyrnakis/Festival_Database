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
INSERT INTO `artist` VALUES (1,'Joanna Smith',NULL,'1985-03-01','1990-02-28','pop','rock','https://hernandez.com/','http://www.white.com/',2),(2,'Sandra Baker','Todd','1975-01-13','1984-01-11','electronic','hip hop','https://casey.com/','https://lewis-fitzpatrick.com/',2),(3,'Paul Howard MD','Kevin','1997-11-17','2012-11-13','electronic','jazz','http://tapia-morgan.com/','http://www.cobb.com/',0),(4,'Alexis Thomas','Henry','1987-04-13','1997-04-10','pop','electronic','http://www.lin.info/','http://www.robinson-powell.biz/',2),(5,'Mark Pham',NULL,'1984-11-13','1986-11-13','rock','hip hop','http://www.collins-peters.biz/','https://www.rice.info/',1),(6,'Alexis Nelson',NULL,'1983-11-24','1986-11-23','electronic','rock','https://christian.com/','http://www.hammond.com/',3),(7,'Ernest Kelley','Jonathan','1975-06-26','1980-06-24','jazz','hip hop','https://murillo.com/','http://moore.com/',1),(8,'John Guzman','Daniel','2003-09-03','2013-08-31','electronic','pop','http://www.griffin.net/','https://www.duncan.com/',3),(9,'Leah Livingston','Nicholas','1994-01-01','2013-12-27','jazz','hip hop','http://hayes-young.biz/','https://www.browning-greene.org/',3),(10,'Jerry Miller','Kyle','1998-03-23','2009-03-20','rock','pop','http://young.com/','https://hernandez.com/',2),(11,'Mark Gaines',NULL,'1995-11-19','1999-11-18','electronic','rock','https://www.haynes-barnes.com/','http://green.com/',2),(12,'Susan Perez',NULL,'2003-03-27','2010-03-25','hip hop','jazz','https://www.garcia.com/','http://hernandez.com/',0),(13,'Allen Young','Andrew','2003-06-14','2021-06-09','jazz','hip hop','http://chapman-reynolds.com/','http://warren.com/',3),(14,'Ronald Anderson',NULL,'1979-09-21','1996-09-16','hip hop','pop','http://richardson.com/','https://melendez-haley.org/',1),(15,'Bradley Miller','Danielle','1974-05-21','1986-05-18','hip hop','electronic','https://www.wright.com/','https://www.gordon.org/',1),(16,'Jacqueline Collins',NULL,'1984-11-22','1989-11-21','jazz','pop','http://www.watson-taylor.org/','https://www.sawyer.com/',0),(17,'Steven Parsons','Stephanie','1998-07-20','2008-07-17','hip hop','rock','https://www.hall.net/','https://wilson-hawkins.org/',1),(18,'Cindy Snyder',NULL,'1989-09-12','2000-09-09','rock','hip hop','https://khan.biz/','https://www.wood-morgan.com/',3),(19,'Jamie Mendoza','Cathy','1994-03-31','2007-03-28','rock','electronic','http://douglas.com/','https://buck.org/',2),(20,'James Davis','Terry','1985-05-06','1998-05-03','hip hop','jazz','http://scott.com/','http://www.vaughn-george.org/',2),(21,'Kathryn Woods DVM','Kevin','1977-08-17','1988-08-14','electronic','pop','https://hale.info/','https://www.white-vasquez.biz/',1),(22,'Ruth Harmon','Lisa','1986-03-31','1998-03-28','jazz','rock','https://www.david.com/','http://hodge.com/',0),(23,'Sean Harris','Emily','2002-04-27','2012-04-24','jazz','rock','http://www.mejia-grant.info/','http://walton.com/',2),(24,'Vincent Cooke',NULL,'1983-03-21','1995-03-18','electronic','hip hop','http://wheeler.com/','http://www.martin-mitchell.org/',3),(25,'Keith Bridges',NULL,'1999-07-15','2015-07-11','electronic','pop','https://www.rodgers.com/','http://prince-park.com/',0),(26,'Tina Gray','Denise','1982-06-04','2000-05-30','pop','rock','https://carroll-boyd.net/','https://www.shepard-allison.net/',2),(27,'Christopher Cunningham','Derrick','1989-02-24','2001-02-21','jazz','pop','https://rivera-carlson.net/','http://freeman-chavez.com/',1),(28,'Kerry Ware','Raymond','1981-08-24','1987-08-23','hip hop','jazz','https://summers-davenport.com/','https://stein-heath.com/',3),(29,'Brenda Baker','Justin','1993-06-11','2008-06-07','jazz','pop','http://www.walter-ramos.com/','https://www.wilkins-martinez.com/',1),(30,'Anthony Navarro','Elizabeth','1982-12-10','1983-12-10','electronic','hip hop','http://www.phillips-mathis.org/','http://browning.com/',1),(31,'Allison Stanton','Bruce','1977-07-12','1992-07-08','electronic','hip hop','http://www.griffin-smith.com/','http://lee.info/',1),(32,'Philip Stevens','Tammy','1994-02-13','1997-02-12','electronic','pop','http://www.yates.com/','https://shields.com/',1),(33,'Jocelyn Wood','William','1994-11-01','1999-10-31','jazz','hip hop','https://martin.com/','https://www.holmes.com/',3),(34,'Michael Lopez',NULL,'1989-12-01','2001-11-28','electronic','pop','https://peterson.com/','http://reilly-roberts.net/',0),(35,'Cheryl Oliver','Mary','1981-05-25','1986-05-24','electronic','hip hop','https://www.hendricks.biz/','http://berg-bell.com/',0),(36,'Jennifer Boyle','Joshua','1981-01-20','1994-01-17','hip hop','pop','https://vega-wells.info/','https://west.net/',1),(37,'Jeffery Bauer',NULL,'1988-07-30','2008-07-25','electronic','hip hop','http://www.williams-rogers.com/','http://frye.com/',1),(38,'Alex Alexander','Timothy','1981-07-25','2001-07-20','electronic','pop','http://williams-garza.info/','https://pena-mejia.info/',3),(39,'Jean Schultz','Raymond','1994-01-09','1999-01-08','hip hop','electronic','http://www.gutierrez.com/','https://www.parker.net/',0),(40,'Michelle Yates','Tyler','2001-09-20','2021-09-15','electronic','rock','https://www.perez-jenkins.com/','https://www.carey.com/',1),(41,'James Day','Amy','1984-12-30','1985-12-30','jazz','hip hop','https://howell.biz/','https://brooks.com/',3),(42,'Kathy Ortega','Colleen','1984-06-24','2003-06-20','hip hop','electronic','http://www.rowland-nichols.com/','http://stephens-vasquez.com/',0),(43,'Raymond Hall','Nicole','2004-10-01','2024-09-26','electronic','jazz','https://www.pace.info/','https://www.simpson.org/',1),(44,'Erik Brown',NULL,'1974-11-15','1988-11-11','hip hop','jazz','https://www.jones-fleming.biz/','http://www.johnson.com/',2),(45,'Christine Johnson','Andrea','1988-02-18','2000-02-15','electronic','hip hop','http://www.rodriguez.com/','https://roberts.net/',1),(46,'Lori Brown',NULL,'1989-05-24','2005-05-20','electronic','rock','http://morris.net/','http://www.carpenter.com/',2),(47,'Zachary Mullins','Jamie','2004-08-15','2019-08-12','pop','hip hop','http://washington.com/','http://martinez.com/',3),(48,'Joshua Chapman','David','2002-03-23','2003-03-23','jazz','rock','http://www.carr-li.com/','http://white.com/',0),(49,'Steven Mcmillan',NULL,'1988-12-16','1993-12-15','rock','electronic','http://www.zamora.org/','https://www.mercado-miller.com/',3),(50,'Christopher Dennis','Stephanie','1981-01-15','2000-01-11','jazz','hip hop','http://www.thomas.org/','http://delgado-williams.info/',3);
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
INSERT INTO `building` VALUES (1,'Rios-Howard','Commercial help paper ago carry conference dog. Star together answer authority oil. Garden but risk person property community box.',734,'common, cover, plant, prepare, nice'),(2,'Fuentes, Simpson and Price','Politics product which shake purpose professional throw. Example table growth notice share physical college.\nStand include think page. Travel last town.\nEntire control paper.',566,'effort, prevent, final, economic, participant'),(3,'Watson, Brown and Little','Indicate energy call report avoid data accept. Catch tonight toward woman someone serious design while.',123,'draw, decide, myself, other, during'),(4,'Beard and Sons','Study seat reveal what. South fire development must. Citizen attention Mr miss model beyond visit.\nReality might near surface. Travel loss table throw artist material executive.',378,'maybe, Democrat, analysis, surface, Mr'),(5,'Malone, Bowman and Colon','Any option remember professor. Within oil debate.\nBag avoid especially site training control each film.',784,'than, blood, drive, role, those'),(6,'Clark PLC','Live benefit example for control include. Market politics view appear bag first local performance. Majority new despite media later goal Congress.',494,'talk, responsibility, house, resource, marriage'),(7,'Thomas LLC','Certainly I his ten lawyer national wind.\nEasy class care.\nSo such expect though ball civil include.\nResponse live top. Everything between training necessary protect. Sell office value customer.',787,'however, individual, peace, loss, cell'),(8,'Smith, Thomas and Phillips','Machine address plant ever finally establish trade. Third mind research decade.\nParent share behind section protect actually through. Side us both less plant.',418,'support, oil, owner, enjoy, happy'),(9,'Mccoy-Russell','Book yet treatment send issue religious suggest.\nFeel near place. Sport rise partner season. Major amount television kitchen. Happen be couple minute institution long.',227,'billion, list, fact, those, PM'),(10,'Ortega and Sons','Tonight list follow. Court box improve attack.',665,'forward, movie, small, project, deep'),(11,'Miller-Green','Study late economy allow month. Investment even condition discuss idea smile pretty.\nWhom only wonder. Authority open it technology.',331,'voice, responsibility, significant, home, reality'),(12,'Peterson, Esparza and Miller','Nature turn word. Art simply article.\nArt bad remain seem civil or. Deal music soon lot.',511,'different, method, why, feeling, I'),(13,'Fowler-Olson','Agency newspaper couple recognize. Crime community Congress radio catch minute. Receive likely president run drive page including wall. Test arm figure try toward across need.',246,'now, ready, fast, face, young'),(14,'Sosa LLC','Behind accept century attention other story let. Today way simple view food.\nParticularly purpose plant different. Student source late group allow right fact trouble. Account beat when career nation.',464,'than, have, tend, knowledge, choose'),(15,'Cardenas, Harris and Hopkins','Pull member put perhaps trade ground such.\nMost exactly deal thought stop rule until. But consider about sister concern race a. Lose career common happy property.',677,'sometimes, today, someone, attention, toward'),(16,'Chen, Butler and Reed','Wide tend fight several laugh. Many benefit season any president. Save community sign both its political money. Trade room effort discussion level mean allow.',519,'offer, yeah, under, your, black'),(17,'Thompson PLC','Thousand receive pay our. Cost too air well common situation catch along. Investment surface stuff buy attention. Second parent benefit fund hotel.',462,'model, company, need, each, bill'),(18,'Erickson-Cruz','Want painting newspaper sometimes. Meet wrong would after factor. Case gun visit garden even admit mission.',950,'week, seat, baby, industry, race'),(19,'Evans-Lane','Station crime new memory from. Issue ago amount involve again free bank. Consider carry language professor significant attention since.\nPlace believe building age third bed. Heart family avoid.',539,'discuss, evening, ago, environmental, prepare'),(20,'Griffin Inc','Language somebody scientist mean society fear shoulder. Choice born they player hair price thing. Activity rule news major left store. Difference trial word common worry.\nAffect model sign seem.',529,'near, able, dream, produce, strategy'),(21,'Campbell, Miller and Foster','Suggest term heavy mouth. College American scientist still show.\nAgainst network short agree form decision. Move score range activity set build guess force. Air parent draw check type.',496,'recently, person, evidence, face, anything'),(22,'Bradley, Cruz and Evans','Bar down actually growth street tell. Sort thought body miss represent per make.',483,'study, discover, against, current, agent'),(23,'Graham Inc','Good news order serve get. Apply provide card policy trial. Job operation unit arrive.\nLess measure PM deal space. Argue international health join blue receive.',343,'late, from, TV, like, with'),(24,'Thomas Group','Me stand though enough well consumer. Trade quality trouble stand authority book. Firm shoulder society drive opportunity.',717,'me, foreign, get, forget, upon'),(25,'Jenkins-Thomas','Able explain herself especially. Option career major compare.\nDay describe seven sometimes. Wrong cost particularly discussion cell. Small forward buy owner piece.',326,'business, including, owner, five, poor'),(26,'Armstrong Ltd','Something produce cover magazine ask increase sometimes. They player tell machine resource husband station season. Ground somebody strong society together benefit law.',258,'organization, picture, glass, add, word'),(27,'Wallace, Larsen and Black','Happen resource really research idea. Kind common itself window all president one. Success heavy modern civil piece lead.',557,'paper, contain, eye, daughter, myself'),(28,'Jones-Lee','Air heart main enough late north kitchen. Technology program science care long. Less generation measure put book attack talk.\nSpecial and evening cell wife trouble. Often beyond again.',978,'protect, few, camera, general, public'),(29,'Mcdonald-Burke','Worker me campaign trial own.\nTreat within five would. Include drug water goal skill class.',746,'financial, table, my, interest, his'),(30,'James LLC','Republican accept hundred door with successful left. Concern tree anything firm interview debate. Money magazine recent ready military.',148,'several, look, knowledge, impact, community');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,1),(7,7,1),(8,8,1),(9,9,0),(10,10,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,'Add Concert',1,'2017-07-10 08:47:00','2017-07-10 11:49:00',27,182),(2,1,'Family Concert',1,'2017-07-10 12:35:00','2017-07-10 16:01:00',21,206),(3,1,'Research Concert',1,'2017-07-10 17:09:00','2017-07-10 20:43:00',11,214),(4,1,'Off Concert',2,'2017-07-11 09:22:00','2017-07-11 12:26:00',20,184),(5,1,'Save Concert',2,'2017-07-11 13:01:00','2017-07-11 16:07:00',12,186),(6,1,'Lay Concert',2,'2017-07-11 17:30:00','2017-07-11 20:51:00',2,201),(7,1,'College Concert',2,'2017-07-11 22:25:00','2017-07-11 02:00:00',22,215),(8,1,'History Concert',2,'2017-07-11 02:20:00','2017-07-11 05:46:00',17,206),(9,1,'Kind Concert',2,'2017-07-11 06:58:00','2017-07-11 10:13:00',29,195),(10,1,'Eight Concert',2,'2017-07-11 10:43:00','2017-07-11 14:23:00',10,220),(11,2,'Involve Concert',1,'2018-08-19 08:42:00','2018-08-19 12:16:00',13,214),(12,2,'Campaign Concert',1,'2018-08-19 13:43:00','2018-08-19 16:57:00',28,194),(13,2,'Pm Concert',1,'2018-08-19 18:24:00','2018-08-19 21:40:00',25,196),(14,2,'Movement Concert',1,'2018-08-19 22:49:00','2018-08-19 02:05:00',16,196),(15,2,'Into Concert',1,'2018-08-19 03:25:00','2018-08-19 06:58:00',19,213),(16,2,'Difficult Concert',2,'2018-08-20 09:16:00','2018-08-20 12:31:00',15,195),(17,2,'The Concert',3,'2018-08-21 09:28:00','2018-08-21 12:54:00',8,206),(18,2,'Rest Concert',3,'2018-08-21 14:06:00','2018-08-21 17:23:00',22,197),(19,2,'Lose Concert',3,'2018-08-21 18:52:00','2018-08-21 21:54:00',23,182),(20,2,'Outside Concert',3,'2018-08-21 23:11:00','2018-08-21 02:35:00',29,204),(21,2,'Read Concert',3,'2018-08-21 03:56:00','2018-08-21 07:19:00',27,203),(22,2,'Eight Concert',3,'2018-08-21 08:52:00','2018-08-21 11:54:00',11,182),(23,2,'Kitchen Concert',4,'2018-08-22 08:39:00','2018-08-22 12:14:00',30,215),(24,2,'Cold Concert',4,'2018-08-22 12:54:00','2018-08-22 16:12:00',21,198),(25,2,'Including Concert',4,'2018-08-22 16:38:00','2018-08-22 19:49:00',18,191),(26,2,'Experience Concert',4,'2018-08-22 21:29:00','2018-08-22 00:33:00',21,184),(27,2,'Point Concert',4,'2018-08-22 01:16:00','2018-08-22 04:50:00',24,214),(28,2,'Subject Concert',4,'2018-08-22 06:11:00','2018-08-22 09:42:00',23,211),(29,2,'Although Concert',4,'2018-08-22 10:42:00','2018-08-22 14:20:00',20,218),(30,2,'Subject Concert',4,'2018-08-22 15:20:00','2018-08-22 18:54:00',10,214),(31,2,'Management Concert',4,'2018-08-22 20:32:00','2018-08-22 23:59:00',17,207),(32,2,'Indeed Concert',5,'2018-08-23 09:22:00','2018-08-23 12:31:00',25,189),(33,2,'Response Concert',5,'2018-08-23 13:55:00','2018-08-23 17:25:00',9,210),(34,3,'Evening Concert',1,'2019-08-03 08:33:00','2019-08-03 11:37:00',5,184),(35,3,'Candidate Concert',1,'2019-08-03 12:19:00','2019-08-03 15:52:00',19,213),(36,3,'Cold Concert',1,'2019-08-03 17:15:00','2019-08-03 20:26:00',20,191),(37,3,'Unit Concert',1,'2019-08-03 20:54:00','2019-08-03 00:03:00',13,189),(38,3,'Various Concert',2,'2019-08-04 08:36:00','2019-08-04 12:00:00',3,204),(39,3,'Exactly Concert',3,'2019-08-05 08:27:00','2019-08-05 11:40:00',1,193),(40,3,'Dream Concert',3,'2019-08-05 12:14:00','2019-08-05 15:29:00',15,195),(41,3,'Many Concert',3,'2019-08-05 16:41:00','2019-08-05 20:18:00',14,217),(42,3,'Common Concert',3,'2019-08-05 21:04:00','2019-08-05 00:14:00',3,190),(43,3,'Production Concert',3,'2019-08-05 00:42:00','2019-08-05 03:45:00',4,183),(44,3,'Man Concert',3,'2019-08-05 04:29:00','2019-08-05 08:03:00',7,214),(45,3,'Development Concert',3,'2019-08-05 08:44:00','2019-08-05 12:21:00',25,217),(46,3,'Each Concert',3,'2019-08-05 13:13:00','2019-08-05 16:35:00',15,202),(47,3,'Involve Concert',3,'2019-08-05 17:27:00','2019-08-05 21:02:00',7,215),(48,3,'Group Concert',4,'2019-08-06 09:10:00','2019-08-06 12:35:00',6,205),(49,3,'Tough Concert',4,'2019-08-06 13:01:00','2019-08-06 16:31:00',5,210),(50,3,'Rich Concert',4,'2019-08-06 17:26:00','2019-08-06 21:04:00',28,218),(51,3,'Claim Concert',4,'2019-08-06 22:28:00','2019-08-06 01:56:00',24,208),(52,3,'Answer Concert',4,'2019-08-06 03:26:00','2019-08-06 06:51:00',8,205),(53,3,'System Concert',4,'2019-08-06 08:06:00','2019-08-06 11:32:00',6,206),(54,4,'Peace Concert',1,'2020-07-23 08:47:00','2020-07-23 12:02:00',27,195),(55,4,'Rock Concert',1,'2020-07-23 13:25:00','2020-07-23 16:49:00',17,204),(56,4,'Drug Concert',1,'2020-07-23 18:28:00','2020-07-23 22:03:00',18,215),(57,4,'Later Concert',2,'2020-07-24 08:22:00','2020-07-24 11:37:00',19,195),(58,4,'Responsibility Concert',2,'2020-07-24 12:42:00','2020-07-24 15:49:00',4,187),(59,4,'Pm Concert',2,'2020-07-24 16:19:00','2020-07-24 19:44:00',13,205),(60,4,'Task Concert',2,'2020-07-24 20:33:00','2020-07-24 23:47:00',11,194),(61,4,'Safe Concert',2,'2020-07-24 00:22:00','2020-07-24 03:31:00',24,189),(62,4,'Kitchen Concert',2,'2020-07-24 04:07:00','2020-07-24 07:30:00',25,203),(63,4,'Nature Concert',2,'2020-07-24 08:58:00','2020-07-24 12:13:00',8,195),(64,4,'Not Concert',2,'2020-07-24 13:51:00','2020-07-24 17:15:00',18,204),(65,4,'Citizen Concert',2,'2020-07-24 18:13:00','2020-07-24 21:39:00',14,206),(66,4,'Poor Concert',3,'2020-07-25 08:37:00','2020-07-25 12:05:00',14,208),(67,4,'Quality Concert',3,'2020-07-25 12:57:00','2020-07-25 16:27:00',9,210),(68,4,'Later Concert',3,'2020-07-25 17:54:00','2020-07-25 21:08:00',16,194),(69,5,'Speech Concert',1,'2021-08-02 09:13:00','2021-08-02 12:52:00',9,219),(70,5,'Own Concert',1,'2021-08-02 13:47:00','2021-08-02 17:05:00',15,198),(71,5,'Head Concert',1,'2021-08-02 18:26:00','2021-08-02 21:51:00',18,205),(72,5,'Evening Concert',1,'2021-08-02 22:35:00','2021-08-02 02:04:00',16,209),(73,5,'Policy Concert',1,'2021-08-02 02:46:00','2021-08-02 06:00:00',30,194),(74,5,'Figure Concert',1,'2021-08-02 07:39:00','2021-08-02 10:43:00',12,184),(75,5,'Size Concert',2,'2021-08-03 08:37:00','2021-08-03 11:49:00',3,192),(76,5,'Go Concert',2,'2021-08-03 12:15:00','2021-08-03 15:30:00',20,195),(77,5,'Issue Concert',2,'2021-08-03 16:01:00','2021-08-03 19:16:00',30,195),(78,5,'Seven Concert',3,'2021-08-04 08:58:00','2021-08-04 12:10:00',30,192),(79,5,'Game Concert',3,'2021-08-04 12:43:00','2021-08-04 16:00:00',26,197),(80,5,'Build Concert',3,'2021-08-04 16:46:00','2021-08-04 20:14:00',2,208),(81,6,'Travel Concert',1,'2022-07-21 08:38:00','2022-07-21 11:47:00',11,189),(82,6,'Cell Concert',1,'2022-07-21 12:16:00','2022-07-21 15:52:00',24,216),(83,6,'Become Concert',1,'2022-07-21 16:12:00','2022-07-21 19:25:00',6,193),(84,6,'Well Concert',1,'2022-07-21 20:03:00','2022-07-21 23:07:00',26,184),(85,6,'Wrong Concert',1,'2022-07-21 00:00:00','2022-07-21 03:04:00',3,184),(86,6,'Fill Concert',1,'2022-07-21 04:44:00','2022-07-21 07:47:00',22,183),(87,6,'Become Concert',1,'2022-07-21 09:09:00','2022-07-21 12:25:00',3,196),(88,6,'Again Concert',1,'2022-07-21 13:40:00','2022-07-21 17:07:00',26,207),(89,6,'Knowledge Concert',2,'2022-07-22 09:20:00','2022-07-22 12:38:00',20,198),(90,6,'Play Concert',2,'2022-07-22 13:01:00','2022-07-22 16:31:00',8,210),(91,6,'Firm Concert',2,'2022-07-22 17:58:00','2022-07-22 21:12:00',15,194),(92,6,'Spend Concert',2,'2022-07-22 22:11:00','2022-07-22 01:50:00',4,219),(93,6,'Lot Concert',3,'2022-07-23 09:04:00','2022-07-23 12:37:00',17,213),(94,6,'Will Concert',3,'2022-07-23 14:13:00','2022-07-23 17:19:00',3,186),(95,6,'Off Concert',3,'2022-07-23 18:57:00','2022-07-23 22:08:00',21,191),(96,6,'But Concert',3,'2022-07-23 23:46:00','2022-07-23 03:16:00',23,210),(97,6,'Up Concert',4,'2022-07-24 09:12:00','2022-07-24 12:32:00',4,200),(98,6,'Mrs Concert',4,'2022-07-24 13:06:00','2022-07-24 16:46:00',19,220),(99,6,'Economic Concert',4,'2022-07-24 17:15:00','2022-07-24 20:24:00',15,189),(100,7,'Truth Concert',1,'2023-09-20 09:07:00','2023-09-20 12:31:00',15,204),(101,7,'Man Concert',1,'2023-09-20 14:06:00','2023-09-20 17:46:00',5,220),(102,7,'Ten Concert',2,'2023-09-21 08:56:00','2023-09-21 12:15:00',28,199),(103,7,'Lay Concert',2,'2023-09-21 13:36:00','2023-09-21 16:38:00',15,182),(104,7,'Then Concert',2,'2023-09-21 17:35:00','2023-09-21 21:03:00',19,208),(105,7,'Protect Concert',2,'2023-09-21 22:03:00','2023-09-21 01:06:00',1,183),(106,7,'Ask Concert',2,'2023-09-21 02:12:00','2023-09-21 05:31:00',26,199),(107,7,'Purpose Concert',2,'2023-09-21 06:51:00','2023-09-21 10:24:00',5,213),(108,7,'Until Concert',2,'2023-09-21 10:46:00','2023-09-21 14:15:00',1,209),(109,7,'Probably Concert',3,'2023-09-22 09:04:00','2023-09-22 12:24:00',5,200),(110,7,'Risk Concert',3,'2023-09-22 13:56:00','2023-09-22 17:33:00',3,217),(111,7,'Agent Concert',3,'2023-09-22 19:05:00','2023-09-22 22:19:00',26,194),(112,7,'Conference Concert',3,'2023-09-22 23:34:00','2023-09-22 02:43:00',10,189),(113,7,'Indicate Concert',3,'2023-09-22 03:31:00','2023-09-22 06:44:00',5,193),(114,7,'Would Concert',4,'2023-09-23 09:22:00','2023-09-23 12:32:00',16,190),(115,7,'Position Concert',4,'2023-09-23 13:00:00','2023-09-23 16:39:00',22,219),(116,7,'Think Concert',4,'2023-09-23 17:34:00','2023-09-23 20:58:00',18,204),(117,7,'Several Concert',4,'2023-09-23 21:57:00','2023-09-23 01:18:00',19,201),(118,7,'Buy Concert',4,'2023-09-23 01:44:00','2023-09-23 05:05:00',30,201),(119,7,'Feel Concert',4,'2023-09-23 06:19:00','2023-09-23 09:49:00',15,210),(120,7,'Field Concert',4,'2023-09-23 11:15:00','2023-09-23 14:24:00',3,189),(121,7,'Seven Concert',4,'2023-09-23 15:10:00','2023-09-23 18:13:00',20,183),(122,8,'Fire Concert',1,'2024-07-23 08:55:00','2024-07-23 12:02:00',18,187),(123,8,'Lawyer Concert',2,'2024-07-24 09:33:00','2024-07-24 12:50:00',16,197),(124,8,'Tough Concert',2,'2024-07-24 14:22:00','2024-07-24 17:57:00',7,215),(125,8,'Low Concert',2,'2024-07-24 18:41:00','2024-07-24 22:09:00',13,208),(126,8,'Recently Concert',2,'2024-07-24 23:43:00','2024-07-24 02:44:00',4,181),(127,8,'Receive Concert',3,'2024-07-25 08:42:00','2024-07-25 11:47:00',22,185),(128,8,'Laugh Concert',3,'2024-07-25 13:17:00','2024-07-25 16:52:00',9,215),(129,8,'Pm Concert',3,'2024-07-25 17:31:00','2024-07-25 21:11:00',6,220),(130,8,'Page Concert',3,'2024-07-25 22:39:00','2024-07-25 01:44:00',21,185),(131,8,'Wife Concert',4,'2024-07-26 09:29:00','2024-07-26 12:49:00',28,200),(132,8,'Control Concert',4,'2024-07-26 14:05:00','2024-07-26 17:20:00',25,195),(133,8,'Instead Concert',4,'2024-07-26 18:36:00','2024-07-26 21:42:00',12,186),(134,8,'Than Concert',4,'2024-07-26 23:12:00','2024-07-26 02:38:00',9,206),(135,8,'Do Concert',5,'2024-07-27 09:33:00','2024-07-27 12:43:00',30,190),(136,8,'Share Concert',5,'2024-07-27 14:17:00','2024-07-27 17:22:00',29,185),(137,8,'Woman Concert',5,'2024-07-27 18:43:00','2024-07-27 21:45:00',4,182),(138,8,'Future Concert',5,'2024-07-27 22:44:00','2024-07-27 01:58:00',26,194),(139,9,'Enjoy Concert',1,'2025-07-23 08:47:00','2025-07-23 12:02:00',1,195),(140,9,'Central Concert',1,'2025-07-23 13:38:00','2025-07-23 17:00:00',11,202),(141,9,'Right Concert',2,'2025-07-24 09:09:00','2025-07-24 12:24:00',15,195),(142,9,'Show Concert',2,'2025-07-24 13:39:00','2025-07-24 16:45:00',29,186),(143,9,'Ago Concert',2,'2025-07-24 17:21:00','2025-07-24 20:48:00',23,207),(144,9,'Activity Concert',2,'2025-07-24 21:54:00','2025-07-24 01:03:00',6,189),(145,9,'Network Concert',2,'2025-07-24 01:25:00','2025-07-24 04:55:00',8,210),(146,10,'Check Concert',1,'2026-07-16 09:30:00','2026-07-16 12:44:00',15,194),(147,10,'Experience Concert',1,'2026-07-16 14:13:00','2026-07-16 17:50:00',24,217),(148,10,'Pull Concert',1,'2026-07-16 18:54:00','2026-07-16 22:29:00',27,215),(149,10,'Would Concert',1,'2026-07-16 23:10:00','2026-07-16 02:39:00',14,209),(150,10,'Voice Concert',1,'2026-07-16 04:10:00','2026-07-16 07:40:00',21,210),(151,10,'College Concert',1,'2026-07-16 09:04:00','2026-07-16 12:42:00',17,218),(152,10,'That Concert',1,'2026-07-16 13:17:00','2026-07-16 16:54:00',14,217),(153,10,'Draw Concert',2,'2026-07-17 08:40:00','2026-07-17 11:44:00',16,184),(154,10,'Point Concert',2,'2026-07-17 12:05:00','2026-07-17 15:38:00',13,213),(155,10,'Room Concert',2,'2026-07-17 17:07:00','2026-07-17 20:31:00',21,204),(156,10,'Across Concert',3,'2026-07-18 08:47:00','2026-07-18 12:10:00',7,203),(157,10,'Either Concert',3,'2026-07-18 13:33:00','2026-07-18 16:51:00',6,198),(158,10,'While Concert',3,'2026-07-18 18:21:00','2026-07-18 21:26:00',23,185),(159,10,'Explain Concert',3,'2026-07-18 21:57:00','2026-07-18 00:59:00',5,182),(160,10,'Finish Concert',3,'2026-07-18 01:35:00','2026-07-18 05:12:00',16,217),(161,10,'Matter Concert',3,'2026-07-18 06:48:00','2026-07-18 10:17:00',11,209);
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
INSERT INTO `festival` VALUES (1,'2017-07-10',2),(2,'2018-08-19',5),(3,'2019-08-03',4),(4,'2020-07-23',3),(5,'2021-08-02',3),(6,'2022-07-21',4),(7,'2023-09-20',4),(8,'2024-07-23',5),(9,'2025-07-23',2),(10,'2026-07-16',3);
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
INSERT INTO `festival_location` VALUES (1,1,'5370 Teresa Viaduct','West Josephland','Benin','Europe','-18.314472,81.923374'),(2,2,'7594 Rachel Via Suite 803','South Hunterstad','Jersey','Europe','-33.145952,-145.389720'),(3,3,'86016 Hamilton Greens Apt. 333','North Michaelatown','Andorra','Europe','-43.6038445,10.702466'),(4,4,'449 Flores Pike Suite 310','Port Michelleport','Svalbard & Jan Mayen Islands','Europe','45.370742,-123.033662'),(5,5,'363 West Drive Apt. 259','North Matthewville','Sierra Leone','Europe','-52.824041,-6.589085'),(6,6,'885 Leach Wall','Port Daniellechester','Indonesia','Europe','34.603493,-141.973204'),(7,7,'983 Brown Locks','New Gina','Wallis and Futuna','Europe','-73.497146,-2.806165'),(8,8,'722 Davenport Plaza','South Robert','Marshall Islands','Europe','67.816802,-66.058344'),(9,9,'229 Gallagher Loop Suite 375','West Brookebury','Thailand','Europe','-14.8892595,136.328471'),(10,10,'8224 Patrick Fort','Lake Stefaniechester','El Salvador','Europe','42.0737745,-157.280337');
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
INSERT INTO `group` VALUES (1,'Angela Buckley Band','2000-01-30','2015-01-26','pop','electronic','http://www.valencia.org/','https://www.hernandez-oconnor.com/','Joanna Smith, Jerry Miller, Christopher Dennis, Steven Mcmillan, '),(2,'Jamie Campos Band','2002-03-12','2008-03-10','rock','jazz','https://brown.com/','http://www.smith-gonzalez.org/','Alexis Nelson, Ruth Harmon, '),(3,'Nicole Webb Band','1997-09-23','2007-09-21','pop','electronic','http://robertson.org/','https://hill.com/','Sean Harris, Susan Perez, '),(4,'Christopher Taylor Band','2000-04-13','2015-04-10','rock','pop','https://johnston.com/','https://www.miller.com/','Zachary Mullins, Paul Howard MD, James Day, Sandra Baker, Jeffery Bauer, '),(5,'Kendra Gray Band','1999-09-11','2011-09-08','jazz','pop','http://www.lewis-cunningham.biz/','http://www.freeman.com/','Kerry Ware, Brenda Baker, Keith Bridges, Christine Johnson, '),(6,'Timothy Williams Band','1991-11-15','2000-11-12','rock','electronic','http://hayes-hart.com/','http://reed-taylor.com/','Mark Gaines, Cindy Snyder, Vincent Cooke, '),(7,'Melinda Harvey Band','1975-12-10','1988-12-06','pop','hip hop','https://lane.net/','https://www.phillips.com/','Brenda Baker, Jacqueline Collins, Kerry Ware, Keith Bridges, '),(8,'Robert Wallace Band','1977-02-25','1979-02-25','jazz','hip hop','https://jackson.info/','http://www.espinoza.com/','James Davis, Mark Gaines, '),(9,'Sherry Mcdowell Band','1994-12-15','1995-12-15','jazz','pop','http://www.long-craig.com/','http://www.mckinney.info/','James Davis, Jocelyn Wood, Cindy Snyder, '),(10,'Catherine Foster Band','1982-02-07','1988-02-06','rock','jazz','http://www.young.org/','http://pacheco.org/','Allison Stanton, Alex Alexander, Brenda Baker, James Davis, Steven Mcmillan, '),(11,'Kevin Davenport Band','1980-03-18','1991-03-16','jazz','electronic','http://best.biz/','http://www.green-parrish.com/','Christopher Cunningham, Paul Howard MD, '),(12,'Erin Stevens Band','1993-12-26','2008-12-22','rock','jazz','https://www.long.com/','http://www.blake-bell.com/','Sean Harris, Alex Alexander, '),(13,'Charles Thompson Band','1996-06-07','2015-06-03','hip hop','pop','http://bailey-gonzalez.com/','https://www.gilbert.net/','John Guzman, Jocelyn Wood, '),(14,'David Coleman Band','1974-06-04','1978-06-03','hip hop','pop','https://wheeler-brown.com/','http://www.patterson-rodriguez.net/','Zachary Mullins, Ronald Anderson, Jacqueline Collins, Sean Harris, '),(15,'Kelly Juarez MD Band','1998-09-11','2013-09-07','hip hop','pop','http://quinn-ritter.biz/','https://www.armstrong-sosa.info/','Michelle Yates, Joshua Chapman, Keith Bridges, Erik Brown, ');
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
INSERT INTO `group_members` VALUES (1,1),(1,10),(1,49),(1,50),(2,6),(2,22),(3,12),(3,23),(4,2),(4,3),(4,37),(4,41),(4,47),(5,25),(5,28),(5,29),(5,45),(6,11),(6,18),(6,24),(7,16),(7,25),(7,28),(7,29),(8,11),(8,20),(9,18),(9,20),(9,33),(10,20),(10,29),(10,31),(10,38),(10,49),(11,3),(11,27),(12,23),(12,38),(13,8),(13,33),(14,14),(14,16),(14,23),(14,47),(15,25),(15,40),(15,44),(15,48);
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
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performances`
--

LOCK TABLES `performances` WRITE;
/*!40000 ALTER TABLE `performances` DISABLE KEYS */;
INSERT INTO `performances` VALUES (1,1,'special_guest','2017-07-10 08:47:00','2017-07-10 09:48:00',61,27,'Wallace, Larsen and Black',NULL,14),(2,2,'warm up','2017-07-10 12:35:00','2017-07-10 14:19:00',104,21,'Campbell, Miller and Foster',NULL,9),(3,3,'warm up','2017-07-10 17:09:00','2017-07-10 17:39:00',30,11,'Miller-Green',21,NULL),(4,3,'special_guest','2017-07-10 17:46:00','2017-07-10 19:45:00',119,11,'Miller-Green',41,NULL),(5,4,'special_guest','2017-07-11 09:22:00','2017-07-11 11:19:00',117,20,'Griffin Inc',NULL,9),(6,4,'finale','2017-07-11 11:33:00','2017-07-11 12:17:00',44,20,'Griffin Inc',NULL,10),(7,5,'finale','2017-07-11 13:01:00','2017-07-11 13:38:00',37,12,'Peterson, Esparza and Miller',41,NULL),(8,5,'headline','2017-07-11 13:43:00','2017-07-11 14:45:00',62,12,'Peterson, Esparza and Miller',15,NULL),(9,6,'headline','2017-07-11 17:30:00','2017-07-11 18:11:00',41,2,'Fuentes, Simpson and Price',NULL,11),(10,8,'headline','2017-07-11 02:20:00','2017-07-11 03:22:00',62,17,'Thompson PLC',20,NULL),(11,8,'warm up','2017-07-11 03:37:00','2017-07-11 05:05:00',88,17,'Thompson PLC',NULL,10),(12,9,'finale','2017-07-11 06:58:00','2017-07-11 08:24:00',86,29,'Mcdonald-Burke',NULL,10),(13,10,'finale','2017-07-11 10:43:00','2017-07-11 11:15:00',32,10,'Ortega and Sons',NULL,14),(14,10,'warm up','2017-07-11 11:23:00','2017-07-11 12:35:00',72,10,'Ortega and Sons',NULL,1),(15,10,'headline','2017-07-11 12:47:00','2017-07-11 13:43:00',56,10,'Ortega and Sons',28,NULL),(16,11,'finale','2018-08-19 08:42:00','2018-08-19 10:37:00',115,13,'Fowler-Olson',NULL,3),(17,12,'finale','2018-08-19 13:43:00','2018-08-19 15:26:00',103,28,'Jones-Lee',NULL,9),(18,12,'warm up','2018-08-19 15:34:00','2018-08-19 16:28:00',54,28,'Jones-Lee',NULL,6),(19,13,'special_guest','2018-08-19 18:24:00','2018-08-19 19:02:00',38,25,'Jenkins-Thomas',NULL,15),(20,13,'headline','2018-08-19 19:09:00','2018-08-19 19:54:00',45,25,'Jenkins-Thomas',36,NULL),(21,15,'special_guest','2018-08-19 03:25:00','2018-08-19 04:38:00',73,19,'Evans-Lane',18,NULL),(22,15,'headline','2018-08-19 04:47:00','2018-08-19 05:19:00',32,19,'Evans-Lane',NULL,1),(23,15,'finale','2018-08-19 05:31:00','2018-08-19 06:40:00',69,19,'Evans-Lane',NULL,15),(24,16,'warm up','2018-08-20 09:16:00','2018-08-20 11:02:00',106,15,'Cardenas, Harris and Hopkins',NULL,10),(25,17,'headline','2018-08-21 09:28:00','2018-08-21 11:15:00',107,8,'Smith, Thomas and Phillips',NULL,10),(26,17,'finale','2018-08-21 11:25:00','2018-08-21 12:07:00',42,8,'Smith, Thomas and Phillips',NULL,5),(27,18,'special_guest','2018-08-21 14:06:00','2018-08-21 15:18:00',72,22,'Bradley, Cruz and Evans',NULL,12),(28,19,'headline','2018-08-21 18:52:00','2018-08-21 19:34:00',42,23,'Graham Inc',NULL,14),(29,21,'finale','2018-08-21 03:56:00','2018-08-21 05:37:00',101,27,'Wallace, Larsen and Black',NULL,10),(30,22,'warm up','2018-08-21 08:52:00','2018-08-21 10:31:00',99,11,'Miller-Green',NULL,13),(31,23,'warm up','2018-08-22 08:39:00','2018-08-22 10:21:00',102,30,'James LLC',36,NULL),(32,23,'finale','2018-08-22 10:27:00','2018-08-22 11:22:00',55,30,'James LLC',NULL,7),(33,24,'headline','2018-08-22 12:54:00','2018-08-22 14:16:00',82,21,'Campbell, Miller and Foster',NULL,11),(34,24,'finale','2018-08-22 14:28:00','2018-08-22 15:36:00',68,21,'Campbell, Miller and Foster',7,NULL),(35,25,'warm up','2018-08-22 16:38:00','2018-08-22 18:15:00',97,18,'Erickson-Cruz',45,NULL),(36,25,'special_guest','2018-08-22 18:20:00','2018-08-22 18:58:00',38,18,'Erickson-Cruz',NULL,15),(37,27,'warm up','2018-08-22 01:16:00','2018-08-22 02:07:00',51,24,'Thomas Group',22,NULL),(38,28,'special_guest','2018-08-22 06:11:00','2018-08-22 07:28:00',77,23,'Graham Inc',NULL,9),(39,28,'special_guest','2018-08-22 07:42:00','2018-08-22 09:25:00',103,23,'Graham Inc',NULL,6),(40,29,'special_guest','2018-08-22 10:42:00','2018-08-22 11:41:00',59,20,'Griffin Inc',2,NULL),(41,29,'headline','2018-08-22 11:55:00','2018-08-22 13:34:00',99,20,'Griffin Inc',NULL,10),(42,30,'headline','2018-08-22 15:20:00','2018-08-22 16:25:00',65,10,'Ortega and Sons',NULL,1),(43,30,'headline','2018-08-22 16:32:00','2018-08-22 17:57:00',85,10,'Ortega and Sons',NULL,12),(44,31,'headline','2018-08-22 20:32:00','2018-08-22 21:21:00',49,17,'Thompson PLC',NULL,3),(45,32,'headline','2018-08-23 09:22:00','2018-08-23 09:58:00',36,25,'Jenkins-Thomas',NULL,12),(46,32,'finale','2018-08-23 10:08:00','2018-08-23 11:54:00',106,25,'Jenkins-Thomas',22,NULL),(47,33,'headline','2018-08-23 13:55:00','2018-08-23 15:12:00',77,9,'Mccoy-Russell',47,NULL),(48,33,'warm up','2018-08-23 15:26:00','2018-08-23 16:10:00',44,9,'Mccoy-Russell',NULL,1),(49,34,'special_guest','2019-08-03 08:33:00','2019-08-03 10:08:00',95,5,'Malone, Bowman and Colon',NULL,11),(50,34,'headline','2019-08-03 10:22:00','2019-08-03 11:20:00',58,5,'Malone, Bowman and Colon',NULL,14),(51,35,'finale','2019-08-03 12:19:00','2019-08-03 13:25:00',66,19,'Evans-Lane',NULL,3),(52,35,'headline','2019-08-03 13:30:00','2019-08-03 14:50:00',80,19,'Evans-Lane',NULL,15),(53,36,'headline','2019-08-03 17:15:00','2019-08-03 17:49:00',34,20,'Griffin Inc',NULL,2),(54,36,'headline','2019-08-03 17:58:00','2019-08-03 19:32:00',94,20,'Griffin Inc',NULL,1),(55,38,'warm up','2019-08-04 08:36:00','2019-08-04 09:15:00',39,3,'Watson, Brown and Little',31,NULL),(56,39,'finale','2019-08-05 08:27:00','2019-08-05 10:10:00',103,1,'Rios-Howard',NULL,15),(57,39,'warm up','2019-08-05 10:17:00','2019-08-05 11:19:00',62,1,'Rios-Howard',9,NULL),(58,40,'finale','2019-08-05 12:14:00','2019-08-05 13:17:00',63,15,'Cardenas, Harris and Hopkins',NULL,1),(59,41,'headline','2019-08-05 16:41:00','2019-08-05 18:00:00',79,14,'Sosa LLC',37,NULL),(60,41,'special_guest','2019-08-05 18:10:00','2019-08-05 19:12:00',62,14,'Sosa LLC',41,NULL),(61,43,'headline','2019-08-05 00:42:00','2019-08-05 02:00:00',78,4,'Beard and Sons',NULL,15),(62,44,'finale','2019-08-05 04:29:00','2019-08-05 06:27:00',118,7,'Thomas LLC',45,NULL),(63,44,'finale','2019-08-05 06:32:00','2019-08-05 07:18:00',46,7,'Thomas LLC',NULL,3),(64,45,'headline','2019-08-05 08:44:00','2019-08-05 09:37:00',53,25,'Jenkins-Thomas',34,NULL),(65,46,'finale','2019-08-05 13:13:00','2019-08-05 14:11:00',58,15,'Cardenas, Harris and Hopkins',NULL,7),(66,46,'warm up','2019-08-05 14:25:00','2019-08-05 16:16:00',111,15,'Cardenas, Harris and Hopkins',24,NULL),(67,47,'warm up','2019-08-05 17:27:00','2019-08-05 18:03:00',36,7,'Thomas LLC',19,NULL),(68,48,'finale','2019-08-06 09:10:00','2019-08-06 09:47:00',37,6,'Clark PLC',NULL,14),(69,49,'headline','2019-08-06 13:01:00','2019-08-06 14:36:00',95,5,'Malone, Bowman and Colon',5,NULL),(70,50,'special_guest','2019-08-06 17:26:00','2019-08-06 19:21:00',115,28,'Jones-Lee',NULL,9),(71,50,'headline','2019-08-06 19:27:00','2019-08-06 20:30:00',63,28,'Jones-Lee',1,NULL),(72,52,'warm up','2019-08-06 03:26:00','2019-08-06 04:55:00',89,8,'Smith, Thomas and Phillips',20,NULL),(73,52,'warm up','2019-08-06 05:09:00','2019-08-06 06:02:00',53,8,'Smith, Thomas and Phillips',NULL,2),(74,53,'headline','2019-08-06 08:06:00','2019-08-06 09:18:00',72,6,'Clark PLC',7,NULL),(75,53,'warm up','2019-08-06 09:25:00','2019-08-06 10:21:00',56,6,'Clark PLC',16,NULL),(76,54,'special_guest','2020-07-23 08:47:00','2020-07-23 10:26:00',99,27,'Wallace, Larsen and Black',NULL,8),(77,55,'headline','2020-07-23 13:25:00','2020-07-23 14:41:00',76,17,'Thompson PLC',NULL,11),(78,56,'special_guest','2020-07-23 18:28:00','2020-07-23 19:44:00',76,18,'Erickson-Cruz',NULL,2),(79,56,'warm up','2020-07-23 19:51:00','2020-07-23 21:41:00',110,18,'Erickson-Cruz',NULL,7),(80,57,'headline','2020-07-24 08:22:00','2020-07-24 09:36:00',74,19,'Evans-Lane',26,NULL),(81,58,'special_guest','2020-07-24 12:42:00','2020-07-24 14:17:00',95,4,'Beard and Sons',NULL,7),(82,59,'special_guest','2020-07-24 16:19:00','2020-07-24 17:39:00',80,13,'Fowler-Olson',NULL,3),(83,59,'finale','2020-07-24 17:53:00','2020-07-24 19:08:00',75,13,'Fowler-Olson',NULL,7),(84,60,'finale','2020-07-24 20:33:00','2020-07-24 22:31:00',118,11,'Miller-Green',NULL,6),(85,60,'finale','2020-07-24 22:37:00','2020-07-24 23:26:00',49,11,'Miller-Green',1,NULL),(86,61,'special_guest','2020-07-24 00:22:00','2020-07-24 01:04:00',42,24,'Thomas Group',NULL,11),(87,61,'warm up','2020-07-24 01:17:00','2020-07-24 02:06:00',49,24,'Thomas Group',NULL,13),(88,62,'headline','2020-07-24 04:07:00','2020-07-24 04:38:00',31,25,'Jenkins-Thomas',NULL,8),(89,63,'finale','2020-07-24 08:58:00','2020-07-24 10:05:00',67,8,'Smith, Thomas and Phillips',NULL,6),(90,64,'finale','2020-07-24 13:51:00','2020-07-24 14:22:00',31,18,'Erickson-Cruz',NULL,1),(91,64,'headline','2020-07-24 14:37:00','2020-07-24 16:04:00',87,18,'Erickson-Cruz',23,NULL),(92,65,'finale','2020-07-24 18:13:00','2020-07-24 19:44:00',91,14,'Sosa LLC',NULL,6),(93,66,'warm up','2020-07-25 08:37:00','2020-07-25 10:08:00',91,14,'Sosa LLC',NULL,4),(94,66,'headline','2020-07-25 10:14:00','2020-07-25 11:50:00',96,14,'Sosa LLC',NULL,7),(95,67,'finale','2020-07-25 12:57:00','2020-07-25 14:13:00',76,9,'Mccoy-Russell',NULL,1),(96,67,'special_guest','2020-07-25 14:19:00','2020-07-25 16:06:00',107,9,'Mccoy-Russell',NULL,12),(97,68,'warm up','2020-07-25 17:54:00','2020-07-25 18:28:00',34,16,'Chen, Butler and Reed',NULL,15),(98,68,'warm up','2020-07-25 18:35:00','2020-07-25 20:33:00',118,16,'Chen, Butler and Reed',NULL,13),(99,69,'special_guest','2021-08-02 09:13:00','2021-08-02 10:26:00',73,9,'Mccoy-Russell',23,NULL),(100,70,'special_guest','2021-08-02 13:47:00','2021-08-02 14:25:00',38,15,'Cardenas, Harris and Hopkins',NULL,9),(101,70,'special_guest','2021-08-02 14:30:00','2021-08-02 15:42:00',72,15,'Cardenas, Harris and Hopkins',7,NULL),(102,71,'headline','2021-08-02 18:26:00','2021-08-02 19:55:00',89,18,'Erickson-Cruz',34,NULL),(103,73,'headline','2021-08-02 02:46:00','2021-08-02 04:33:00',107,30,'James LLC',41,NULL),(104,74,'finale','2021-08-02 07:39:00','2021-08-02 09:00:00',81,12,'Peterson, Esparza and Miller',NULL,13),(105,74,'warm up','2021-08-02 09:05:00','2021-08-02 10:16:00',71,12,'Peterson, Esparza and Miller',43,NULL),(106,75,'warm up','2021-08-03 08:37:00','2021-08-03 10:18:00',101,3,'Watson, Brown and Little',NULL,2),(107,76,'finale','2021-08-03 12:15:00','2021-08-03 13:41:00',86,20,'Griffin Inc',38,NULL),(108,77,'headline','2021-08-03 16:01:00','2021-08-03 16:34:00',33,30,'James LLC',NULL,1),(109,77,'special_guest','2021-08-03 16:49:00','2021-08-03 18:06:00',77,30,'James LLC',NULL,7),(110,77,'special_guest','2021-08-03 18:15:00','2021-08-03 19:08:00',53,30,'James LLC',49,NULL),(111,78,'special_guest','2021-08-04 08:58:00','2021-08-04 10:16:00',78,30,'James LLC',NULL,5),(112,78,'special_guest','2021-08-04 10:31:00','2021-08-04 11:52:00',81,30,'James LLC',NULL,1),(113,79,'finale','2021-08-04 12:43:00','2021-08-04 13:39:00',56,26,'Armstrong Ltd',NULL,4),(114,79,'finale','2021-08-04 13:45:00','2021-08-04 15:20:00',95,26,'Armstrong Ltd',NULL,7),(115,80,'warm up','2021-08-04 16:46:00','2021-08-04 17:40:00',54,2,'Fuentes, Simpson and Price',5,NULL),(116,80,'finale','2021-08-04 17:51:00','2021-08-04 19:19:00',88,2,'Fuentes, Simpson and Price',NULL,5),(117,81,'warm up','2022-07-21 08:38:00','2022-07-21 10:28:00',110,11,'Miller-Green',NULL,1),(118,82,'warm up','2022-07-21 12:16:00','2022-07-21 13:14:00',58,24,'Thomas Group',NULL,1),(119,83,'warm up','2022-07-21 16:12:00','2022-07-21 17:57:00',105,6,'Clark PLC',NULL,13),(120,84,'warm up','2022-07-21 20:03:00','2022-07-21 21:32:00',89,26,'Armstrong Ltd',34,NULL),(121,84,'finale','2022-07-21 21:38:00','2022-07-21 22:42:00',64,26,'Armstrong Ltd',NULL,1),(122,85,'warm up','2022-07-21 00:00:00','2022-07-21 00:54:00',54,3,'Watson, Brown and Little',NULL,5),(123,85,'special_guest','2022-07-21 01:08:00','2022-07-21 02:02:00',54,3,'Watson, Brown and Little',NULL,14),(124,86,'finale','2022-07-21 04:44:00','2022-07-21 06:32:00',108,22,'Bradley, Cruz and Evans',NULL,13),(125,86,'headline','2022-07-21 06:38:00','2022-07-21 07:38:00',60,22,'Bradley, Cruz and Evans',NULL,7),(126,87,'special_guest','2022-07-21 09:09:00','2022-07-21 10:14:00',65,3,'Watson, Brown and Little',NULL,9),(127,87,'warm up','2022-07-21 10:21:00','2022-07-21 12:00:00',99,3,'Watson, Brown and Little',NULL,9),(128,88,'warm up','2022-07-21 13:40:00','2022-07-21 14:43:00',63,26,'Armstrong Ltd',NULL,13),(129,89,'warm up','2022-07-22 09:20:00','2022-07-22 10:42:00',82,20,'Griffin Inc',NULL,4),(130,89,'special_guest','2022-07-22 10:55:00','2022-07-22 11:54:00',59,20,'Griffin Inc',NULL,1),(131,90,'special_guest','2022-07-22 13:01:00','2022-07-22 13:37:00',36,8,'Smith, Thomas and Phillips',3,NULL),(132,90,'special_guest','2022-07-22 13:43:00','2022-07-22 14:39:00',56,8,'Smith, Thomas and Phillips',5,NULL),(133,90,'warm up','2022-07-22 14:44:00','2022-07-22 15:45:00',61,8,'Smith, Thomas and Phillips',25,NULL),(134,91,'finale','2022-07-22 17:58:00','2022-07-22 18:40:00',42,15,'Cardenas, Harris and Hopkins',NULL,6),(135,91,'warm up','2022-07-22 18:53:00','2022-07-22 20:27:00',94,15,'Cardenas, Harris and Hopkins',NULL,11),(136,93,'finale','2022-07-23 09:04:00','2022-07-23 09:36:00',32,17,'Thompson PLC',NULL,6),(137,93,'warm up','2022-07-23 09:50:00','2022-07-23 11:09:00',79,17,'Thompson PLC',12,NULL),(138,94,'special_guest','2022-07-23 14:13:00','2022-07-23 15:34:00',81,3,'Watson, Brown and Little',36,NULL),(139,94,'finale','2022-07-23 15:48:00','2022-07-23 17:01:00',73,3,'Watson, Brown and Little',18,NULL),(140,95,'finale','2022-07-23 18:57:00','2022-07-23 19:53:00',56,21,'Campbell, Miller and Foster',10,NULL),(141,95,'special_guest','2022-07-23 20:01:00','2022-07-23 21:19:00',78,21,'Campbell, Miller and Foster',NULL,15),(142,97,'finale','2022-07-24 09:12:00','2022-07-24 10:04:00',52,4,'Beard and Sons',38,NULL),(143,97,'special_guest','2022-07-24 10:10:00','2022-07-24 10:57:00',47,4,'Beard and Sons',NULL,1),(144,98,'finale','2022-07-24 13:06:00','2022-07-24 13:44:00',38,19,'Evans-Lane',6,NULL),(145,99,'finale','2022-07-24 17:15:00','2022-07-24 17:56:00',41,15,'Cardenas, Harris and Hopkins',NULL,15),(146,99,'special_guest','2022-07-24 18:01:00','2022-07-24 18:58:00',57,15,'Cardenas, Harris and Hopkins',NULL,2),(147,100,'finale','2023-09-20 09:07:00','2023-09-20 10:19:00',72,15,'Cardenas, Harris and Hopkins',NULL,3),(148,100,'finale','2023-09-20 10:34:00','2023-09-20 11:35:00',61,15,'Cardenas, Harris and Hopkins',NULL,1),(149,100,'special_guest','2023-09-20 11:43:00','2023-09-20 12:24:00',41,15,'Cardenas, Harris and Hopkins',42,NULL),(150,101,'finale','2023-09-20 14:06:00','2023-09-20 15:14:00',68,5,'Malone, Bowman and Colon',NULL,6),(151,101,'finale','2023-09-20 15:23:00','2023-09-20 15:56:00',33,5,'Malone, Bowman and Colon',4,NULL),(152,102,'finale','2023-09-21 08:56:00','2023-09-21 10:14:00',78,28,'Jones-Lee',NULL,5),(153,103,'finale','2023-09-21 13:36:00','2023-09-21 15:29:00',113,15,'Cardenas, Harris and Hopkins',NULL,10),(154,104,'warm up','2023-09-21 17:35:00','2023-09-21 18:13:00',38,19,'Evans-Lane',14,NULL),(155,104,'headline','2023-09-21 18:19:00','2023-09-21 19:56:00',97,19,'Evans-Lane',NULL,11),(156,106,'warm up','2023-09-21 02:12:00','2023-09-21 02:58:00',46,26,'Armstrong Ltd',NULL,15),(157,107,'warm up','2023-09-21 06:51:00','2023-09-21 08:51:00',120,5,'Malone, Bowman and Colon',NULL,14),(158,108,'headline','2023-09-21 10:46:00','2023-09-21 12:39:00',113,1,'Rios-Howard',50,NULL),(159,109,'warm up','2023-09-22 09:04:00','2023-09-22 10:40:00',96,5,'Malone, Bowman and Colon',46,NULL),(160,109,'warm up','2023-09-22 10:48:00','2023-09-22 12:08:00',80,5,'Malone, Bowman and Colon',43,NULL),(161,110,'special_guest','2023-09-22 13:56:00','2023-09-22 14:44:00',48,3,'Watson, Brown and Little',23,NULL),(162,110,'headline','2023-09-22 14:57:00','2023-09-22 15:54:00',57,3,'Watson, Brown and Little',NULL,7),(163,111,'warm up','2023-09-22 19:05:00','2023-09-22 20:29:00',84,26,'Armstrong Ltd',NULL,6),(164,111,'headline','2023-09-22 20:34:00','2023-09-22 22:13:00',99,26,'Armstrong Ltd',NULL,14),(165,113,'finale','2023-09-22 03:31:00','2023-09-22 04:32:00',61,5,'Malone, Bowman and Colon',NULL,10),(166,113,'finale','2023-09-22 04:39:00','2023-09-22 05:55:00',76,5,'Malone, Bowman and Colon',NULL,12),(167,114,'finale','2023-09-23 09:22:00','2023-09-23 11:16:00',114,16,'Chen, Butler and Reed',NULL,12),(168,115,'warm up','2023-09-23 13:00:00','2023-09-23 14:06:00',66,22,'Bradley, Cruz and Evans',NULL,14),(169,115,'finale','2023-09-23 14:11:00','2023-09-23 15:05:00',54,22,'Bradley, Cruz and Evans',NULL,8),(170,116,'warm up','2023-09-23 17:34:00','2023-09-23 18:44:00',70,18,'Erickson-Cruz',NULL,13),(171,118,'headline','2023-09-23 01:44:00','2023-09-23 02:28:00',44,30,'James LLC',NULL,8),(172,119,'headline','2023-09-23 06:19:00','2023-09-23 07:26:00',67,15,'Cardenas, Harris and Hopkins',NULL,14),(173,119,'special_guest','2023-09-23 07:36:00','2023-09-23 08:58:00',82,15,'Cardenas, Harris and Hopkins',NULL,15),(174,120,'warm up','2023-09-23 11:15:00','2023-09-23 12:13:00',58,3,'Watson, Brown and Little',NULL,4),(175,121,'finale','2023-09-23 15:10:00','2023-09-23 16:26:00',76,20,'Griffin Inc',NULL,10),(176,121,'warm up','2023-09-23 16:39:00','2023-09-23 18:08:00',89,20,'Griffin Inc',48,NULL),(177,122,'warm up','2024-07-23 08:55:00','2024-07-23 10:26:00',91,18,'Erickson-Cruz',NULL,6),(178,122,'headline','2024-07-23 10:39:00','2024-07-23 11:33:00',54,18,'Erickson-Cruz',NULL,3),(179,123,'finale','2024-07-24 09:33:00','2024-07-24 10:40:00',67,16,'Chen, Butler and Reed',42,NULL),(180,123,'special_guest','2024-07-24 10:49:00','2024-07-24 12:34:00',105,16,'Chen, Butler and Reed',NULL,6),(181,124,'finale','2024-07-24 14:22:00','2024-07-24 15:42:00',80,7,'Thomas LLC',NULL,6),(182,124,'warm up','2024-07-24 15:55:00','2024-07-24 17:46:00',111,7,'Thomas LLC',NULL,14),(183,125,'warm up','2024-07-24 18:41:00','2024-07-24 20:07:00',86,13,'Fowler-Olson',NULL,15),(184,127,'headline','2024-07-25 08:42:00','2024-07-25 10:17:00',95,22,'Bradley, Cruz and Evans',9,NULL),(185,128,'special_guest','2024-07-25 13:17:00','2024-07-25 14:23:00',66,9,'Mccoy-Russell',NULL,10),(186,128,'headline','2024-07-25 14:31:00','2024-07-25 15:02:00',31,9,'Mccoy-Russell',NULL,12),(187,128,'warm up','2024-07-25 15:11:00','2024-07-25 16:26:00',75,9,'Mccoy-Russell',NULL,11),(188,129,'warm up','2024-07-25 17:31:00','2024-07-25 18:21:00',50,6,'Clark PLC',9,NULL),(189,129,'special_guest','2024-07-25 18:33:00','2024-07-25 19:24:00',51,6,'Clark PLC',NULL,14),(190,131,'finale','2024-07-26 09:29:00','2024-07-26 11:07:00',98,28,'Jones-Lee',NULL,11),(191,132,'finale','2024-07-26 14:05:00','2024-07-26 15:00:00',55,25,'Jenkins-Thomas',NULL,14),(192,132,'warm up','2024-07-26 15:09:00','2024-07-26 16:23:00',74,25,'Jenkins-Thomas',NULL,4),(193,133,'warm up','2024-07-26 18:36:00','2024-07-26 20:12:00',96,12,'Peterson, Esparza and Miller',NULL,2),(194,133,'finale','2024-07-26 20:22:00','2024-07-26 21:27:00',65,12,'Peterson, Esparza and Miller',23,NULL),(195,135,'finale','2024-07-27 09:33:00','2024-07-27 10:48:00',75,30,'James LLC',NULL,1),(196,136,'finale','2024-07-27 14:17:00','2024-07-27 15:28:00',71,29,'Mcdonald-Burke',NULL,8),(197,136,'warm up','2024-07-27 15:43:00','2024-07-27 16:48:00',65,29,'Mcdonald-Burke',NULL,14),(198,137,'finale','2024-07-27 18:43:00','2024-07-27 20:35:00',112,4,'Beard and Sons',49,NULL),(199,139,'headline','2025-07-23 08:47:00','2025-07-23 09:38:00',51,1,'Rios-Howard',NULL,7),(200,139,'warm up','2025-07-23 09:44:00','2025-07-23 10:37:00',53,1,'Rios-Howard',20,NULL),(201,140,'headline','2025-07-23 13:38:00','2025-07-23 15:16:00',98,11,'Miller-Green',2,NULL),(202,141,'finale','2025-07-24 09:09:00','2025-07-24 10:39:00',90,15,'Cardenas, Harris and Hopkins',NULL,8),(203,142,'warm up','2025-07-24 13:39:00','2025-07-24 15:15:00',96,29,'Mcdonald-Burke',NULL,8),(204,142,'headline','2025-07-24 15:29:00','2025-07-24 16:38:00',69,29,'Mcdonald-Burke',NULL,1),(205,143,'special_guest','2025-07-24 17:21:00','2025-07-24 18:31:00',70,23,'Graham Inc',NULL,3),(206,143,'finale','2025-07-24 18:39:00','2025-07-24 19:30:00',51,23,'Graham Inc',21,NULL),(207,145,'finale','2025-07-24 01:25:00','2025-07-24 02:37:00',72,8,'Smith, Thomas and Phillips',27,NULL),(208,146,'special_guest','2026-07-16 09:30:00','2026-07-16 11:22:00',112,15,'Cardenas, Harris and Hopkins',NULL,7),(209,147,'warm up','2026-07-16 14:13:00','2026-07-16 15:47:00',94,24,'Thomas Group',49,NULL),(210,147,'warm up','2026-07-16 15:56:00','2026-07-16 17:20:00',84,24,'Thomas Group',NULL,11),(211,148,'special_guest','2026-07-16 18:54:00','2026-07-16 20:27:00',93,27,'Wallace, Larsen and Black',NULL,12),(212,148,'warm up','2026-07-16 20:40:00','2026-07-16 22:02:00',82,27,'Wallace, Larsen and Black',35,NULL),(213,150,'warm up','2026-07-16 04:10:00','2026-07-16 05:05:00',55,21,'Campbell, Miller and Foster',33,NULL),(214,150,'warm up','2026-07-16 05:12:00','2026-07-16 06:56:00',104,21,'Campbell, Miller and Foster',NULL,5),(215,151,'special_guest','2026-07-16 09:04:00','2026-07-16 10:40:00',96,17,'Thompson PLC',NULL,15),(216,151,'finale','2026-07-16 10:47:00','2026-07-16 12:12:00',85,17,'Thompson PLC',NULL,12),(217,152,'headline','2026-07-16 13:17:00','2026-07-16 14:46:00',89,14,'Sosa LLC',NULL,12),(218,153,'finale','2026-07-17 08:40:00','2026-07-17 10:24:00',104,16,'Chen, Butler and Reed',NULL,1),(219,154,'special_guest','2026-07-17 12:05:00','2026-07-17 13:32:00',87,13,'Fowler-Olson',NULL,1),(220,154,'finale','2026-07-17 13:41:00','2026-07-17 15:02:00',81,13,'Fowler-Olson',35,NULL),(221,155,'headline','2026-07-17 17:07:00','2026-07-17 18:24:00',77,21,'Campbell, Miller and Foster',7,NULL),(222,155,'warm up','2026-07-17 18:31:00','2026-07-17 20:02:00',91,21,'Campbell, Miller and Foster',NULL,11),(223,156,'finale','2026-07-18 08:47:00','2026-07-18 10:47:00',120,7,'Thomas LLC',NULL,4),(224,157,'finale','2026-07-18 13:33:00','2026-07-18 15:09:00',96,6,'Clark PLC',NULL,5),(225,157,'headline','2026-07-18 15:21:00','2026-07-18 16:24:00',63,6,'Clark PLC',33,NULL),(226,158,'special_guest','2026-07-18 18:21:00','2026-07-18 19:14:00',53,23,'Graham Inc',NULL,3),(227,158,'headline','2026-07-18 19:28:00','2026-07-18 21:26:00',118,23,'Graham Inc',NULL,9),(228,160,'special_guest','2026-07-18 01:35:00','2026-07-18 03:05:00',90,16,'Chen, Butler and Reed',29,NULL),(229,160,'finale','2026-07-18 03:14:00','2026-07-18 03:54:00',40,16,'Chen, Butler and Reed',NULL,5),(230,161,'special_guest','2026-07-18 06:48:00','2026-07-18 08:16:00',88,11,'Miller-Green',NULL,9),(231,161,'special_guest','2026-07-18 08:30:00','2026-07-18 09:24:00',54,11,'Miller-Green',46,NULL);
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
INSERT INTO `personel` VALUES (1,'Samantha','Russell',22,'william51@example.net','521.353.0634','beginer'),(2,'Cassandra','Savage',49,'usantiago@example.org','560-658-7497','intern'),(3,'Debra','Terrell',36,'edwardsmaria@example.net','(319)643-6015x99559','intermidiate'),(4,'Heather','Walters',49,'hillchristopher@example.org','2129855378','intermidiate'),(5,'Jessica','Duffy',49,'shanehenderson@example.org','001-675-620-8473x738','beginer'),(6,'Mark','Bowen',35,'williamrollins@example.net','+1-279-694-9066','very_experienced'),(7,'Jennifer','Patel',28,'debra12@example.com','468-292-4080','intermidiate'),(8,'Wayne','Mckinney',22,'gregory68@example.net','339-649-3107x548','very_experienced'),(9,'Jerry','Thompson',50,'heather01@example.net','459.336.7253','intern'),(10,'Christopher','Bailey',33,'brooke95@example.com','959.807.2253x3873','beginer');
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
INSERT INTO `resale_queue` VALUES (1,NULL,2,'Either Concert','general_admission',168,'2025-04-15 16:30:00'),(2,8,NULL,'Network Concert','general_admission',NULL,'2025-04-23 17:45:00'),(3,NULL,7,'Tough Concert','backstage',130,'2019-07-18 10:45:00'),(4,NULL,2,'Including Concert','general_admission',156,'2018-08-08 13:15:00'),(5,6,NULL,NULL,NULL,130,'2025-04-17 10:45:00'),(6,7,NULL,NULL,NULL,168,'2025-04-21 11:15:00'),(7,NULL,2,'Matter Concert','backstage',198,'2025-04-14 10:15:00'),(8,10,NULL,'Although Concert','general_admission',NULL,'2018-08-06 17:15:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,3,'4','5','5','2','5'),(2,4,'3','4','4','2','2'),(3,5,'1','3','5','1','4'),(4,6,'5','2','5','5','2'),(5,7,'5','4','1','1','2'),(6,8,'2','5','3','2','4'),(7,9,'4','1','4','5','3'),(8,10,'5','2','3','5','4'),(9,12,'1','3','2','2','5'),(10,13,'4','1','3','3','4'),(11,14,'2','5','1','4','2'),(12,15,'3','5','1','1','1'),(13,16,'3','4','5','1','4'),(14,17,'3','4','4','3','4'),(15,18,'3','1','1','2','1'),(16,19,'3','1','5','5','1'),(17,20,'2','5','3','1','2'),(18,21,'2','3','2','4','1'),(19,22,'2','4','2','1','5'),(20,23,'2','4','4','4','2'),(21,24,'4','1','1','5','2'),(22,26,'4','2','2','5','4'),(23,28,'2','5','1','2','4'),(24,29,'3','2','1','2','4'),(25,30,'1','2','5','5','4'),(26,31,'3','1','3','5','5'),(27,32,'4','4','5','3','2'),(28,34,'1','3','2','2','4'),(29,35,'2','1','1','2','4'),(30,38,'5','3','1','5','1'),(31,39,'2','1','2','4','1'),(32,40,'2','4','4','4','1'),(33,41,'1','2','3','4','4'),(34,43,'4','3','2','4','4'),(35,44,'5','5','1','1','2'),(36,47,'3','2','1','1','3'),(37,48,'2','1','2','5','2'),(38,50,'1','5','4','3','4'),(39,51,'3','4','3','4','2'),(40,52,'5','2','3','1','4'),(41,53,'4','1','1','1','4'),(42,54,'2','1','3','3','1'),(43,55,'2','2','4','5','5'),(44,58,'3','4','3','4','5'),(45,60,'5','4','2','3','3'),(46,61,'3','1','2','2','5'),(47,64,'2','1','4','3','1'),(48,66,'3','2','3','2','1'),(49,68,'3','5','4','2','3'),(50,69,'2','3','4','5','2'),(51,70,'5','1','3','5','4'),(52,71,'1','1','5','3','4'),(53,72,'5','4','5','4','3'),(54,73,'3','2','4','3','5'),(55,74,'2','3','3','5','2'),(56,76,'4','1','1','4','5'),(57,77,'5','1','3','3','1'),(58,78,'4','4','4','2','5'),(59,79,'4','1','2','1','5'),(60,80,'4','5','1','1','5'),(61,81,'1','1','5','5','3'),(62,82,'5','2','5','2','1'),(63,83,'5','3','1','5','5'),(64,84,'1','1','1','1','4'),(65,88,'4','5','2','1','4'),(66,89,'3','5','5','1','1'),(67,90,'1','5','1','3','4'),(68,92,'5','2','5','5','2'),(69,94,'4','4','1','1','3'),(70,95,'4','1','3','1','3'),(71,96,'2','2','2','1','1'),(72,97,'3','4','5','5','2'),(73,98,'2','4','3','1','5'),(74,99,'5','2','5','4','3'),(75,100,'4','3','1','2','4'),(76,101,'3','4','1','3','2'),(77,102,'5','5','2','5','4'),(78,103,'1','1','1','1','4'),(79,104,'1','2','5','5','5'),(80,105,'4','4','4','1','1'),(81,109,'3','5','2','4','4'),(82,110,'3','5','1','1','5'),(83,111,'3','3','1','5','3'),(84,112,'5','4','3','4','2'),(85,114,'2','4','5','2','1'),(86,115,'2','2','3','1','5'),(87,116,'1','4','3','3','2'),(88,117,'3','4','1','5','5'),(89,118,'3','4','4','5','5'),(90,120,'2','4','1','5','2'),(91,121,'4','2','4','1','4'),(92,125,'5','4','2','1','5'),(93,126,'3','4','2','1','5'),(94,127,'2','2','3','1','2'),(95,128,'5','1','4','2','3'),(96,129,'2','5','2','5','4'),(97,131,'2','4','5','2','1'),(98,132,'4','5','1','2','5'),(99,133,'1','5','4','1','1'),(100,134,'1','3','3','1','3'),(101,135,'2','5','5','2','3'),(102,136,'5','3','4','2','1'),(103,137,'4','5','1','1','4'),(104,138,'2','4','3','1','1'),(105,139,'1','2','3','2','5'),(106,140,'1','4','4','2','4'),(107,141,'2','5','5','3','2'),(108,142,'5','2','3','5','5'),(109,143,'2','4','3','1','1'),(110,144,'2','4','3','5','3'),(111,145,'2','1','4','5','1'),(112,146,'3','2','1','5','2'),(113,147,'2','3','3','5','4'),(114,148,'3','2','1','2','3'),(115,150,'1','2','3','5','3'),(116,151,'5','1','5','1','3'),(117,152,'1','4','3','5','2'),(118,153,'5','2','1','1','3'),(119,154,'1','1','1','4','1'),(120,157,'3','4','2','5','1'),(121,158,'3','4','2','1','4'),(122,159,'1','5','4','5','5'),(123,160,'1','4','3','4','2'),(124,161,'5','5','2','4','5'),(125,162,'4','3','3','5','2'),(126,163,'4','5','1','2','2'),(127,164,'2','1','3','1','5'),(128,165,'4','4','4','2','3'),(129,166,'2','2','5','1','4'),(130,167,'3','4','3','2','1'),(131,170,'5','4','2','3','3'),(132,172,'4','2','2','5','2'),(133,173,'2','2','4','5','2'),(134,174,'1','5','5','4','4'),(135,175,'3','1','5','4','2'),(136,176,'2','5','1','1','5'),(137,177,'1','4','1','5','5'),(138,179,'5','4','5','5','5'),(139,180,'5','4','1','2','2'),(140,181,'4','4','5','1','5'),(141,182,'4','3','4','2','3'),(142,183,'5','3','2','1','2'),(143,184,'3','2','3','3','4'),(144,185,'3','4','3','2','3'),(145,186,'4','3','2','4','1'),(146,187,'4','2','1','5','5'),(147,188,'1','1','5','5','2'),(148,190,'4','1','5','1','5'),(149,191,'1','5','1','5','1'),(150,192,'3','4','4','3','3'),(151,193,'3','5','2','3','2'),(152,194,'5','1','1','5','5'),(153,195,'5','2','5','1','3'),(154,199,'5','5','4','2','4'),(155,201,'2','3','4','2','5'),(156,204,'2','1','3','4','3'),(157,205,'4','5','5','3','2'),(158,206,'1','2','2','2','3'),(159,207,'4','2','5','1','1'),(160,208,'2','5','3','2','5'),(161,209,'2','2','2','2','3'),(162,210,'1','2','4','1','4'),(163,211,'5','2','4','4','5'),(164,213,'3','5','1','5','4'),(165,214,'2','4','2','1','5'),(166,215,'4','2','2','3','4'),(167,216,'4','1','1','5','2'),(168,217,'2','2','1','5','4'),(169,218,'1','1','5','5','1'),(170,219,'1','2','2','1','4'),(171,220,'3','5','1','2','1');
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
INSERT INTO `role_of_personel_on_event` VALUES (1,1,'techincal'),(1,4,'support'),(1,9,'support'),(1,13,'security'),(1,16,'security'),(1,18,'support'),(1,19,'support'),(1,21,'support'),(1,24,'security'),(1,27,'security'),(1,28,'security'),(1,33,'techincal'),(1,34,'support'),(1,35,'support'),(1,38,'support'),(1,43,'support'),(1,44,'security'),(1,47,'security'),(1,52,'security'),(1,54,'support'),(1,60,'techincal'),(1,61,'support'),(1,65,'support'),(1,71,'support'),(1,80,'techincal'),(1,85,'security'),(1,87,'support'),(1,88,'support'),(1,92,'support'),(1,104,'security'),(1,105,'security'),(1,109,'support'),(1,112,'support'),(1,113,'techincal'),(1,114,'security'),(1,115,'techincal'),(1,118,'techincal'),(1,119,'support'),(1,121,'security'),(1,137,'techincal'),(1,142,'security'),(1,144,'security'),(1,151,'support'),(1,152,'security'),(1,157,'security'),(1,159,'security'),(2,6,'support'),(2,10,'support'),(2,12,'support'),(2,15,'support'),(2,16,'support'),(2,17,'techincal'),(2,21,'security'),(2,22,'techincal'),(2,24,'security'),(2,28,'techincal'),(2,30,'security'),(2,31,'support'),(2,35,'techincal'),(2,37,'support'),(2,40,'security'),(2,45,'techincal'),(2,48,'support'),(2,49,'support'),(2,50,'security'),(2,51,'techincal'),(2,53,'security'),(2,54,'support'),(2,55,'security'),(2,57,'techincal'),(2,60,'security'),(2,62,'techincal'),(2,63,'security'),(2,64,'support'),(2,68,'techincal'),(2,70,'support'),(2,75,'security'),(2,77,'support'),(2,78,'support'),(2,80,'techincal'),(2,83,'security'),(2,86,'techincal'),(2,97,'support'),(2,100,'support'),(2,101,'security'),(2,104,'support'),(2,116,'support'),(2,117,'support'),(2,122,'support'),(2,123,'support'),(2,124,'security'),(2,126,'techincal'),(2,128,'security'),(2,130,'techincal'),(2,135,'support'),(2,138,'security'),(2,139,'techincal'),(2,145,'support'),(2,151,'security'),(2,154,'security'),(2,161,'support'),(3,2,'security'),(3,4,'techincal'),(3,6,'techincal'),(3,10,'support'),(3,12,'techincal'),(3,13,'security'),(3,17,'support'),(3,20,'security'),(3,23,'security'),(3,25,'support'),(3,29,'techincal'),(3,31,'techincal'),(3,36,'support'),(3,41,'techincal'),(3,42,'techincal'),(3,44,'techincal'),(3,51,'security'),(3,53,'techincal'),(3,58,'support'),(3,67,'techincal'),(3,68,'security'),(3,70,'support'),(3,72,'support'),(3,80,'security'),(3,82,'support'),(3,84,'support'),(3,89,'techincal'),(3,90,'techincal'),(3,91,'techincal'),(3,96,'techincal'),(3,101,'techincal'),(3,107,'techincal'),(3,111,'support'),(3,112,'support'),(3,113,'techincal'),(3,114,'techincal'),(3,116,'security'),(3,125,'security'),(3,126,'security'),(3,129,'techincal'),(3,131,'support'),(3,132,'security'),(3,135,'support'),(3,138,'techincal'),(3,139,'support'),(3,140,'support'),(3,143,'security'),(3,152,'security'),(3,156,'security'),(4,2,'support'),(4,4,'security'),(4,5,'techincal'),(4,9,'security'),(4,10,'security'),(4,11,'support'),(4,12,'support'),(4,15,'security'),(4,18,'security'),(4,19,'techincal'),(4,22,'security'),(4,23,'security'),(4,27,'security'),(4,28,'support'),(4,31,'support'),(4,32,'security'),(4,33,'security'),(4,36,'security'),(4,49,'support'),(4,51,'security'),(4,54,'support'),(4,59,'support'),(4,63,'techincal'),(4,69,'security'),(4,73,'support'),(4,82,'techincal'),(4,84,'support'),(4,86,'techincal'),(4,87,'security'),(4,88,'techincal'),(4,90,'security'),(4,93,'support'),(4,99,'techincal'),(4,109,'techincal'),(4,110,'support'),(4,119,'security'),(4,120,'security'),(4,122,'techincal'),(4,126,'support'),(4,130,'security'),(4,133,'support'),(4,141,'support'),(4,145,'security'),(4,150,'security'),(4,151,'security'),(4,155,'security'),(4,158,'techincal'),(4,160,'support'),(5,9,'support'),(5,14,'techincal'),(5,15,'security'),(5,26,'techincal'),(5,29,'support'),(5,32,'security'),(5,33,'security'),(5,36,'security'),(5,39,'support'),(5,41,'techincal'),(5,45,'security'),(5,47,'support'),(5,53,'security'),(5,57,'techincal'),(5,61,'security'),(5,65,'security'),(5,67,'support'),(5,68,'support'),(5,71,'support'),(5,73,'security'),(5,74,'support'),(5,79,'techincal'),(5,81,'security'),(5,88,'support'),(5,89,'security'),(5,91,'techincal'),(5,92,'security'),(5,93,'support'),(5,97,'security'),(5,102,'support'),(5,103,'support'),(5,105,'techincal'),(5,111,'support'),(5,121,'support'),(5,125,'techincal'),(5,126,'support'),(5,128,'security'),(5,144,'security'),(5,146,'techincal'),(5,148,'security'),(5,149,'security'),(5,157,'support'),(5,159,'support'),(6,1,'support'),(6,10,'support'),(6,15,'support'),(6,17,'techincal'),(6,23,'support'),(6,29,'techincal'),(6,41,'techincal'),(6,42,'support'),(6,43,'techincal'),(6,45,'techincal'),(6,46,'techincal'),(6,52,'techincal'),(6,55,'security'),(6,56,'security'),(6,59,'support'),(6,62,'security'),(6,63,'security'),(6,65,'support'),(6,68,'techincal'),(6,71,'security'),(6,72,'techincal'),(6,77,'techincal'),(6,78,'techincal'),(6,79,'support'),(6,80,'techincal'),(6,81,'support'),(6,85,'techincal'),(6,90,'security'),(6,92,'security'),(6,106,'support'),(6,108,'techincal'),(6,110,'techincal'),(6,111,'techincal'),(6,112,'security'),(6,114,'security'),(6,115,'techincal'),(6,122,'security'),(6,129,'support'),(6,130,'support'),(6,132,'techincal'),(6,141,'support'),(6,143,'techincal'),(6,145,'support'),(6,151,'support'),(6,152,'techincal'),(6,153,'security'),(6,156,'techincal'),(6,158,'techincal'),(7,5,'support'),(7,13,'support'),(7,17,'techincal'),(7,19,'support'),(7,30,'security'),(7,33,'support'),(7,34,'techincal'),(7,36,'security'),(7,39,'security'),(7,40,'support'),(7,50,'techincal'),(7,58,'security'),(7,59,'techincal'),(7,66,'support'),(7,69,'techincal'),(7,73,'security'),(7,75,'security'),(7,78,'techincal'),(7,81,'security'),(7,86,'support'),(7,89,'security'),(7,102,'support'),(7,106,'techincal'),(7,107,'techincal'),(7,116,'security'),(7,117,'support'),(7,129,'security'),(7,130,'support'),(7,131,'support'),(7,133,'security'),(7,135,'support'),(7,136,'support'),(7,137,'techincal'),(7,146,'security'),(7,147,'support'),(7,149,'security'),(7,153,'support'),(8,3,'techincal'),(8,5,'techincal'),(8,6,'security'),(8,8,'techincal'),(8,19,'security'),(8,20,'support'),(8,25,'security'),(8,30,'security'),(8,34,'support'),(8,38,'techincal'),(8,39,'support'),(8,46,'security'),(8,51,'security'),(8,52,'support'),(8,59,'support'),(8,69,'support'),(8,71,'support'),(8,73,'support'),(8,76,'security'),(8,79,'support'),(8,82,'techincal'),(8,88,'support'),(8,94,'security'),(8,95,'techincal'),(8,98,'techincal'),(8,100,'security'),(8,102,'support'),(8,104,'security'),(8,106,'support'),(8,107,'techincal'),(8,109,'support'),(8,110,'techincal'),(8,117,'techincal'),(8,118,'security'),(8,121,'support'),(8,123,'support'),(8,124,'support'),(8,127,'support'),(8,132,'security'),(8,134,'support'),(8,135,'security'),(8,140,'security'),(8,141,'techincal'),(8,144,'techincal'),(8,146,'security'),(8,153,'support'),(8,155,'security'),(9,4,'security'),(9,7,'support'),(9,8,'support'),(9,16,'security'),(9,20,'support'),(9,21,'techincal'),(9,22,'support'),(9,28,'security'),(9,32,'security'),(9,37,'security'),(9,49,'support'),(9,56,'support'),(9,60,'security'),(9,61,'security'),(9,62,'support'),(9,63,'support'),(9,67,'techincal'),(9,69,'support'),(9,74,'techincal'),(9,75,'support'),(9,76,'support'),(9,81,'techincal'),(9,83,'support'),(9,84,'support'),(9,89,'security'),(9,90,'security'),(9,94,'security'),(9,98,'support'),(9,102,'security'),(9,104,'support'),(9,108,'support'),(9,109,'techincal'),(9,112,'security'),(9,127,'support'),(9,131,'security'),(9,134,'support'),(9,137,'techincal'),(9,142,'techincal'),(9,146,'techincal'),(9,147,'security'),(9,150,'techincal'),(9,154,'support'),(9,161,'techincal'),(10,1,'support'),(10,3,'techincal'),(10,7,'security'),(10,11,'security'),(10,14,'techincal'),(10,23,'security'),(10,24,'support'),(10,26,'security'),(10,27,'security'),(10,29,'security'),(10,30,'security'),(10,31,'security'),(10,37,'support'),(10,38,'techincal'),(10,43,'techincal'),(10,45,'security'),(10,46,'support'),(10,48,'security'),(10,52,'support'),(10,55,'security'),(10,56,'techincal'),(10,60,'support'),(10,61,'support'),(10,64,'support'),(10,66,'security'),(10,67,'security'),(10,70,'techincal'),(10,72,'support'),(10,82,'support'),(10,83,'support'),(10,85,'security'),(10,86,'techincal'),(10,87,'support'),(10,91,'security'),(10,93,'support'),(10,94,'security'),(10,95,'support'),(10,96,'security'),(10,99,'security'),(10,103,'techincal'),(10,111,'techincal'),(10,120,'techincal'),(10,122,'support'),(10,136,'security'),(10,137,'support'),(10,141,'techincal'),(10,142,'security'),(10,144,'techincal'),(10,147,'techincal'),(10,148,'security'),(10,149,'support'),(10,152,'security'),(10,159,'techincal'),(10,160,'support');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,1,0),(2,2,3),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,1),(8,8,0),(9,9,0),(10,10,0);
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
INSERT INTO `temp_resale_matches` VALUES (1,6,7,130),(2,7,2,168);
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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,159,3,'general_admission','2025-04-24',79.08,'credit_card',0),(2,150,10,'backstage','2025-04-24',68.44,'debit_card',0),(3,123,10,'backstage','2024-07-15',85.17,'credit_card',1),(4,13,3,'general_admission','2018-08-13',84.58,'debit_card',1),(5,17,4,'backstage','2018-08-12',58.45,'credit_card',1),(6,44,9,'backstage','2019-07-24',77.99,'I-BAN',1),(7,6,5,'backstage','2017-07-04',31.70,'debit_card',1),(8,71,10,'general_admission','2021-07-24',83.26,'debit_card',1),(9,62,3,'general_admission','2020-07-15',27.87,'I-BAN',1),(10,29,7,'general_admission','2018-08-13',86.38,'credit_card',1),(11,130,3,'general_admission','2024-07-17',54.20,'credit_card',0),(12,124,2,'general_admission','2024-07-14',72.14,'debit_card',1),(13,109,2,'backstage','2023-09-10',22.82,'I-BAN',1),(14,90,8,'general_admission','2022-07-11',20.14,'I-BAN',1),(15,63,4,'general_admission','2020-07-13',54.77,'I-BAN',1),(16,101,8,'general_admission','2023-09-10',94.40,'I-BAN',1),(17,50,9,'general_admission','2019-07-24',98.38,'I-BAN',1),(18,23,2,'general_admission','2018-08-11',83.08,'credit_card',1),(19,4,7,'backstage','2017-07-03',51.55,'debit_card',1),(20,43,8,'backstage','2019-07-26',53.16,'credit_card',1),(21,133,5,'general_admission','2024-07-14',94.89,'credit_card',1),(22,6,9,'general_admission','2017-07-03',62.98,'credit_card',1),(23,19,9,'backstage','2018-08-11',27.70,'I-BAN',1),(24,13,8,'general_admission','2018-08-12',53.16,'credit_card',1),(25,124,2,'general_admission','2024-07-15',26.86,'I-BAN',0),(26,15,6,'general_admission','2018-08-10',55.01,'I-BAN',1),(27,17,6,'general_admission','2018-08-13',83.09,'credit_card',0),(28,83,4,'general_admission','2022-07-13',75.76,'I-BAN',1),(29,56,5,'general_admission','2020-07-17',45.74,'debit_card',1),(30,80,6,'backstage','2021-07-23',46.00,'I-BAN',1),(31,135,2,'general_admission','2024-07-13',22.36,'debit_card',1),(32,15,8,'general_admission','2018-08-13',92.91,'credit_card',1),(33,63,5,'general_admission','2020-07-17',37.47,'I-BAN',0),(34,121,8,'general_admission','2023-09-11',74.11,'debit_card',1),(35,35,6,'backstage','2019-07-28',87.89,'I-BAN',1),(36,103,5,'backstage','2023-09-10',70.23,'I-BAN',0),(37,148,10,'backstage','2025-04-22',46.06,'I-BAN',0),(38,64,7,'backstage','2020-07-15',65.79,'I-BAN',1),(39,116,6,'backstage','2023-09-14',71.44,'credit_card',1),(40,52,8,'general_admission','2019-07-26',66.82,'I-BAN',1),(41,69,7,'backstage','2021-07-23',92.39,'I-BAN',1),(42,149,9,'backstage','2025-04-22',48.57,'credit_card',0),(43,45,5,'general_admission','2019-07-28',62.69,'credit_card',1),(44,79,4,'backstage','2021-07-23',33.13,'I-BAN',1),(45,150,4,'backstage','2025-04-21',21.37,'debit_card',0),(46,141,6,'general_admission','2025-04-24',39.75,'I-BAN',0),(47,34,1,'general_admission','2019-07-27',43.95,'debit_card',1),(48,137,10,'backstage','2024-07-14',61.54,'credit_card',1),(49,158,7,'backstage','2025-04-25',98.68,'credit_card',0),(50,15,5,'backstage','2018-08-10',79.77,'debit_card',1),(51,24,4,'backstage','2018-08-13',46.23,'debit_card',1),(52,57,5,'backstage','2020-07-15',20.76,'debit_card',1),(53,62,1,'backstage','2020-07-17',25.64,'I-BAN',1),(54,132,2,'backstage','2024-07-15',99.16,'credit_card',1),(55,37,4,'general_admission','2019-07-26',24.29,'I-BAN',1),(56,160,6,'general_admission','2025-04-23',43.21,'debit_card',0),(57,154,7,'general_admission','2025-04-21',58.81,'I-BAN',0),(58,66,9,'backstage','2020-07-17',51.18,'debit_card',1),(59,148,9,'general_admission','2025-04-25',35.22,'I-BAN',0),(60,88,1,'backstage','2022-07-15',57.22,'debit_card',1),(61,56,7,'general_admission','2020-07-16',83.28,'debit_card',1),(62,152,9,'backstage','2025-04-21',94.60,'credit_card',0),(63,125,9,'backstage','2024-07-14',89.92,'debit_card',0),(64,55,10,'general_admission','2020-07-15',36.84,'debit_card',1),(65,120,7,'backstage','2023-09-11',84.25,'debit_card',0),(66,14,7,'general_admission','2018-08-11',94.23,'credit_card',1),(67,154,7,'backstage','2025-04-22',45.10,'credit_card',0),(68,29,1,'backstage','2018-08-09',85.88,'I-BAN',1),(69,104,2,'general_admission','2023-09-14',81.52,'credit_card',1),(70,133,4,'general_admission','2024-07-15',72.37,'debit_card',1),(71,96,7,'backstage','2022-07-15',98.40,'I-BAN',1),(72,42,5,'general_admission','2019-07-24',29.25,'I-BAN',1),(73,37,1,'general_admission','2019-07-24',31.24,'debit_card',1),(74,13,3,'general_admission','2018-08-12',64.75,'credit_card',1),(75,153,7,'general_admission','2025-04-24',96.83,'credit_card',0),(76,24,4,'general_admission','2018-08-12',62.08,'debit_card',1),(77,47,6,'general_admission','2019-07-27',94.88,'I-BAN',1),(78,27,10,'backstage','2018-08-10',25.27,'credit_card',1),(79,82,9,'general_admission','2022-07-15',73.45,'I-BAN',1),(80,41,6,'general_admission','2019-07-24',62.85,'debit_card',1),(81,69,3,'general_admission','2021-07-25',27.86,'I-BAN',1),(82,96,4,'general_admission','2022-07-13',60.32,'credit_card',1),(83,91,4,'backstage','2022-07-14',73.43,'I-BAN',1),(84,135,3,'backstage','2024-07-15',40.86,'credit_card',1),(85,141,4,'backstage','2025-04-22',52.08,'debit_card',0),(86,158,8,'backstage','2025-04-24',44.48,'I-BAN',0),(87,78,7,'general_admission','2021-07-23',95.46,'credit_card',0),(88,74,3,'general_admission','2021-07-27',25.37,'I-BAN',1),(89,137,10,'general_admission','2024-07-14',22.91,'credit_card',1),(90,95,7,'backstage','2022-07-14',93.66,'debit_card',1),(91,145,8,'general_admission','2025-04-25',48.89,'I-BAN',0),(92,90,2,'backstage','2022-07-14',42.86,'debit_card',1),(93,140,10,'backstage','2025-04-22',77.45,'credit_card',0),(94,13,1,'backstage','2018-08-13',27.24,'debit_card',1),(95,35,4,'backstage','2019-07-28',22.57,'I-BAN',1),(96,115,6,'general_admission','2023-09-14',34.56,'debit_card',1),(97,38,7,'general_admission','2019-07-26',85.85,'I-BAN',1),(98,137,10,'backstage','2024-07-14',88.58,'debit_card',1),(99,14,7,'backstage','2018-08-09',30.81,'I-BAN',1),(100,30,9,'general_admission','2018-08-09',58.39,'credit_card',1),(101,89,4,'general_admission','2022-07-15',29.87,'debit_card',1),(102,105,8,'backstage','2023-09-10',65.06,'credit_card',1),(103,123,10,'backstage','2024-07-15',39.64,'debit_card',1),(104,86,5,'general_admission','2022-07-11',29.47,'credit_card',1),(105,61,8,'general_admission','2020-07-14',34.50,'credit_card',1),(106,143,6,'backstage','2025-04-21',54.88,'I-BAN',0),(107,28,4,'general_admission','2018-08-10',98.89,'credit_card',0),(108,151,3,'general_admission','2025-04-24',34.98,'credit_card',0),(109,138,2,'general_admission','2024-07-15',54.33,'debit_card',1),(110,130,8,'backstage','2024-07-17',44.53,'I-BAN',1),(111,101,1,'backstage','2023-09-11',20.09,'debit_card',1),(112,135,7,'general_admission','2024-07-15',24.68,'credit_card',1),(113,29,10,'general_admission','2018-08-13',55.89,'I-BAN',0),(114,16,8,'general_admission','2018-08-11',77.42,'I-BAN',1),(115,21,2,'backstage','2018-08-11',63.02,'debit_card',1),(116,43,8,'general_admission','2019-07-25',35.85,'debit_card',1),(117,89,5,'general_admission','2022-07-12',43.34,'I-BAN',1),(118,26,10,'general_admission','2018-08-11',98.88,'debit_card',1),(119,157,5,'backstage','2025-04-22',41.49,'credit_card',0),(120,102,10,'general_admission','2023-09-10',65.35,'credit_card',1),(121,55,4,'general_admission','2020-07-15',40.82,'debit_card',1),(122,149,1,'backstage','2025-04-25',79.31,'I-BAN',0),(123,143,1,'backstage','2025-04-21',95.47,'credit_card',0),(124,145,7,'backstage','2025-04-23',62.50,'I-BAN',0),(125,83,10,'backstage','2022-07-12',26.42,'credit_card',1),(126,106,10,'general_admission','2023-09-13',41.51,'debit_card',1),(127,61,2,'general_admission','2020-07-13',22.51,'credit_card',1),(128,20,8,'backstage','2018-08-13',47.61,'I-BAN',1),(129,70,6,'backstage','2021-07-26',43.61,'I-BAN',1),(130,49,7,'backstage','2019-07-28',75.21,'credit_card',0),(131,1,9,'backstage','2017-06-30',30.48,'debit_card',1),(132,49,7,'backstage','2019-07-27',29.05,'debit_card',1),(133,115,2,'backstage','2023-09-14',22.84,'credit_card',1),(134,55,9,'backstage','2020-07-15',47.25,'debit_card',1),(135,25,2,'backstage','2018-08-13',47.06,'credit_card',1),(136,18,6,'backstage','2018-08-13',47.18,'debit_card',1),(137,21,9,'backstage','2018-08-10',62.96,'I-BAN',1),(138,79,10,'backstage','2021-07-26',74.93,'debit_card',1),(139,30,1,'backstage','2018-08-13',51.06,'debit_card',1),(140,31,9,'general_admission','2018-08-11',80.60,'debit_card',1),(141,36,9,'backstage','2019-07-27',44.49,'debit_card',1),(142,27,9,'backstage','2018-08-12',20.65,'debit_card',1),(143,19,8,'backstage','2018-08-13',42.24,'credit_card',1),(144,29,7,'general_admission','2018-08-13',42.58,'I-BAN',1),(145,135,10,'backstage','2024-07-15',98.39,'debit_card',1),(146,42,9,'backstage','2019-07-24',98.51,'I-BAN',1),(147,24,8,'general_admission','2018-08-10',42.04,'debit_card',1),(148,29,3,'general_admission','2018-08-09',26.99,'credit_card',1),(149,1,3,'backstage','2017-07-01',79.74,'credit_card',0),(150,27,3,'backstage','2018-08-12',53.68,'I-BAN',1),(151,115,9,'general_admission','2023-09-13',66.42,'debit_card',1),(152,36,9,'general_admission','2019-07-28',53.42,'I-BAN',1),(153,59,9,'backstage','2020-07-13',37.54,'debit_card',1),(154,99,6,'backstage','2022-07-11',97.22,'credit_card',1),(155,139,7,'general_admission','2025-04-23',63.60,'I-BAN',0),(156,25,2,'general_admission','2018-08-12',29.95,'credit_card',0),(157,55,5,'general_admission','2020-07-13',23.93,'I-BAN',1),(158,109,10,'general_admission','2023-09-14',79.82,'credit_card',1),(159,26,6,'general_admission','2018-08-10',67.32,'debit_card',1),(160,95,3,'backstage','2022-07-12',92.63,'credit_card',1),(161,42,10,'general_admission','2019-07-27',55.17,'debit_card',1),(162,12,5,'general_admission','2018-08-12',51.58,'I-BAN',1),(163,63,7,'general_admission','2020-07-13',95.68,'credit_card',1),(164,99,8,'general_admission','2022-07-13',45.41,'debit_card',1),(165,95,3,'backstage','2022-07-11',80.90,'I-BAN',1),(166,41,2,'general_admission','2019-07-26',89.96,'I-BAN',1),(167,64,1,'backstage','2020-07-17',77.18,'debit_card',1),(168,157,2,'general_admission','2025-04-22',67.75,'credit_card',0),(169,127,5,'general_admission','2024-07-13',33.11,'credit_card',0),(170,36,10,'backstage','2019-07-26',21.65,'credit_card',1),(171,142,4,'general_admission','2025-04-24',60.48,'credit_card',0),(172,106,7,'backstage','2023-09-13',81.32,'credit_card',1),(173,32,3,'backstage','2018-08-11',43.30,'I-BAN',1),(174,8,8,'general_admission','2017-07-04',90.55,'credit_card',1),(175,17,10,'backstage','2018-08-09',93.37,'debit_card',1),(176,22,10,'backstage','2018-08-13',96.37,'debit_card',1),(177,69,2,'general_admission','2021-07-26',36.09,'credit_card',1),(178,155,5,'general_admission','2025-04-25',79.28,'debit_card',0),(179,28,7,'general_admission','2018-08-10',89.14,'credit_card',1),(180,64,8,'backstage','2020-07-14',61.93,'credit_card',1),(181,3,2,'general_admission','2017-07-03',55.24,'I-BAN',1),(182,42,5,'backstage','2019-07-27',91.20,'I-BAN',1),(183,10,1,'general_admission','2017-07-03',74.92,'debit_card',1),(184,87,1,'general_admission','2022-07-13',82.80,'I-BAN',1),(185,11,4,'backstage','2018-08-12',32.17,'I-BAN',1),(186,54,8,'general_admission','2020-07-14',49.49,'credit_card',1),(187,137,9,'general_admission','2024-07-14',52.67,'debit_card',1),(188,42,9,'general_admission','2019-07-25',87.79,'debit_card',1),(189,156,10,'general_admission','2025-04-21',33.15,'credit_card',0),(190,102,8,'backstage','2023-09-10',82.41,'debit_card',1),(191,4,8,'backstage','2017-07-02',27.82,'debit_card',1),(192,63,7,'general_admission','2020-07-13',53.57,'I-BAN',1),(193,123,7,'general_admission','2024-07-15',63.31,'I-BAN',1),(194,5,3,'backstage','2017-07-03',60.97,'I-BAN',1),(195,20,4,'general_admission','2018-08-12',26.67,'I-BAN',1),(196,53,1,'backstage','2019-07-25',67.35,'debit_card',0),(197,143,7,'general_admission','2025-04-25',87.51,'debit_card',0),(198,161,2,'backstage','2025-04-23',91.40,'I-BAN',0),(199,73,8,'general_admission','2021-07-25',27.44,'credit_card',1),(200,44,3,'backstage','2019-07-26',73.46,'debit_card',0),(201,24,3,'backstage','2018-08-11',58.74,'credit_card',1),(202,150,6,'general_admission','2025-04-24',44.79,'debit_card',0),(203,152,3,'general_admission','2025-04-23',69.44,'credit_card',0),(204,90,7,'backstage','2022-07-11',93.55,'I-BAN',1),(205,25,8,'general_admission','2018-08-10',87.15,'I-BAN',1),(206,137,1,'backstage','2024-07-13',58.52,'credit_card',1),(207,10,7,'general_admission','2017-07-02',43.06,'debit_card',1),(208,130,7,'general_admission','2024-07-14',92.02,'I-BAN',1),(209,137,6,'general_admission','2024-07-14',66.85,'I-BAN',1),(210,81,6,'backstage','2022-07-12',33.16,'debit_card',1),(211,100,5,'general_admission','2023-09-14',60.65,'credit_card',1),(212,143,6,'backstage','2025-04-25',76.97,'credit_card',0),(213,75,5,'general_admission','2021-07-25',87.79,'I-BAN',1),(214,73,1,'backstage','2021-07-26',80.88,'credit_card',1),(215,15,3,'backstage','2018-08-09',95.13,'credit_card',1),(216,81,2,'general_admission','2022-07-11',74.92,'credit_card',1),(217,56,3,'backstage','2020-07-13',85.49,'credit_card',1),(218,42,1,'backstage','2019-07-24',93.23,'credit_card',1),(219,138,4,'general_admission','2024-07-16',35.96,'credit_card',1),(220,91,1,'general_admission','2022-07-12',27.43,'credit_card',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES (1,'Kent','Bautista','(956)673-1828','rebecca09@example.org',21),(2,'James','Wright','499-997-9257x88916','jsmith@example.org',31),(3,'John','Long','956-838-7113x84114','jeffreyconway@example.com',57),(4,'Benjamin','Nash','001-350-833-3293x411','garciaelizabeth@example.com',32),(5,'Wendy','Munoz','(822)725-8696','carrielivingston@example.org',61),(6,'Deborah','Shaw','+1-711-350-1534x781','williamjohnson@example.net',18),(7,'Amanda','Foster','+1-357-944-0656x369','connerjennifer@example.org',22),(8,'Scott','Johnson','246.423.9256x434','cummingsleslie@example.net',30),(9,'William','Green','+1-991-273-6227','luis96@example.com',51),(10,'Gregory','Perkins','991.550.7644x16545','murphyheather@example.org',46);
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

-- Dump completed on 2025-05-01 14:15:20
