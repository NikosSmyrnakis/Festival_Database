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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;

INSERT INTO `artist` VALUES (1,'Amanda Cross','Danielle','1982-09-07','1988-09-05','https://martinez.com/','https://www.owens-moore.com/',2),(2,'Lindsay Scott','Tyler','1987-05-26','1999-05-23','https://martinez.com/','https://www.baker.com/',2),(3,'John May','Henry','1983-10-16','1990-10-14','https://www.donovan.com/','https://ortiz.biz/',0),(4,'Ashley Jenkins MD','Laura','1992-01-18','2008-01-14','http://www.hardin.com/','https://www.sanchez-delgado.com/',2),(5,'Paul Arnold','Kevin','1987-08-15','1990-08-14','https://www.paul.com/','http://glenn.net/',0),(6,'Marvin Edwards',NULL,'2001-08-14','2020-08-09','http://wise-young.biz/','https://www.hubbard.info/',1),(7,'Alyssa Foley',NULL,'1991-08-15','1997-08-13','https://www.flores.biz/','https://www.hill.com/',3),(8,'Sarah Williams','Christopher','1981-01-23','1992-01-21','https://johnson.org/','https://www.johnson.com/',3),(9,'Justin Chandler','Ann','2000-11-18','2019-11-14','https://www.morgan-roman.biz/','http://www.spencer.org/',1),(10,'Kimberly Collins','Vincent','2001-09-03','2006-09-02','http://castro-smith.biz/','https://www.diaz.info/',2),(11,'Jacob Gutierrez','Lisa','2000-07-06','2007-07-05','https://www.hart.com/','https://perry-murphy.com/',1),(12,'Jonathan Arellano','John','1988-07-12','2000-07-09','http://www.young.com/','http://leach.com/',3),(13,'Marc Martinez',NULL,'2005-01-03','2017-12-31','http://www.taylor.com/','http://www.watson-brown.com/',0),(14,'Vanessa Johnston','David','2005-03-14','2007-03-14','https://thomas.info/','http://www.williams.biz/',0),(15,'Amy Spencer',NULL,'1981-07-28','1994-07-25','https://jackson.com/','http://johnson.com/',2),(16,'Jose White','Vanessa','1975-04-21','1995-04-16','https://woods.biz/','http://www.hernandez-wolfe.com/',3),(17,'Paul Schroeder',NULL,'1985-05-09','1992-05-07','http://www.harvey.net/','http://www.hodge.biz/',1),(18,'Christopher Perez','Jessica','1984-03-16','1990-03-15','https://conley.biz/','http://www.love-vega.net/',0),(19,'Sarah Fleming','Alex','1976-03-29','1982-03-28','http://www.fletcher.com/','http://www.paul.com/',2),(20,'Dorothy Moss',NULL,'2002-01-28','2015-01-25','https://harrington.com/','http://richardson.com/',2),(21,'Sharon Hoover','Kathryn','1979-05-14','1983-05-13','http://reyes.org/','http://www.long-palmer.com/',0),(22,'Brian Smith','Sarah','1975-09-18','1976-09-17','https://simpson.info/','https://francis.net/',3),(23,'Daryl Jennings','Jessica','1998-12-13','2002-12-12','http://www.williamson.org/','https://garcia.com/',1),(24,'Crystal Tyler',NULL,'2004-03-09','2009-03-08','http://www.day.com/','http://patel.com/',2),(25,'Daniel Lewis','Ashley','1990-05-27','2005-05-23','http://davis.com/','https://www.thomas.com/',0),(26,'Anthony Kelly','Andrea','1992-11-17','1998-11-16','https://stevens.biz/','http://www.johnson.net/',1),(27,'Michael Lee',NULL,'1997-11-22','2013-11-18','http://mccall-bauer.biz/','http://webb.com/',2),(28,'Brooke Cole','Ryan','1989-09-07','2001-09-04','https://campbell.com/','http://www.mcguire.com/',2),(29,'Susan Smith',NULL,'1983-05-11','1984-05-10','http://www.conley.com/','https://martin.net/',1),(30,'Willie Mcgee','Kimberly','2003-09-28','2019-09-24','https://www.wright-alvarado.org/','http://www.rodriguez.com/',2),(31,'Ronald Navarro','Phillip','1992-12-24','1997-12-23','https://garrett-hanson.com/','https://www.williams.com/',3),(32,'Rebekah Taylor',NULL,'1997-02-27','2001-02-26','http://buckley.com/','https://www.townsend.com/',2),(33,'Jamie Mason',NULL,'1981-02-03','1992-02-01','http://martinez.com/','https://www.hernandez.biz/',2),(34,'Donna James',NULL,'1998-03-04','2009-03-01','http://www.brown.com/','http://perez-davis.biz/',1),(35,'Tiffany Pacheco',NULL,'1976-05-10','1981-05-09','http://www.murphy.info/','https://roth.com/',2),(36,'Michael Glass',NULL,'1984-02-18','1993-02-15','http://carpenter.com/','https://www.spears.com/',2),(37,'Shelia Brown','William','1977-01-13','1994-01-09','https://www.brewer-meyers.com/','https://www.hamilton.info/',3),(38,'Nathan Brown',NULL,'1984-06-04','1985-06-04','https://www.mcintyre-solomon.com/','https://www.pham.net/',0),(39,'Mitchell Washington',NULL,'1990-02-15','1998-02-13','http://williams-williamson.com/','https://www.harmon.net/',0),(40,'Matthew Salazar','Joseph','1997-03-13','2004-03-11','http://www.arnold-wagner.com/','https://www.garrison.com/',1),(41,'Kelly Roberts','Stacey','1990-01-05','2008-12-31','https://brown.org/','https://www.charles.com/',1),(42,'James Blair','Joseph','1984-10-10','1998-10-07','http://www.patrick-chambers.info/','http://www.edwards.com/',2),(43,'David Rios',NULL,'1997-04-08','2012-04-04','https://berry.com/','http://www.williamson.com/',1),(44,'Alejandro Allen','Lori','2003-06-03','2016-05-30','https://gutierrez.com/','https://www.davis.org/',0),(45,'Jennifer Suarez','Lisa','1996-07-16','2013-07-12','http://www.allen.com/','http://brennan.info/',2),(46,'James Davis','Melanie','2005-04-17','2011-04-16','https://www.riley.com/','http://www.payne.com/',0),(47,'Isabella Carter','Allison','1992-03-09','2011-03-05','http://duke.net/','http://www.brown.com/',1),(48,'Jessica Collins',NULL,'1981-01-13','1989-01-11','http://www.bell.info/','https://www.lewis.com/',3),(49,'April Meyer','Jonathan','1980-05-12','1992-05-09','http://vincent-miller.com/','https://www.pollard.com/',2),(50,'John Martin','Vanessa','1983-05-04','1996-04-30','https://green-chapman.com/','https://conway.net/',3),(51,'Adele Adkins','Adele','1988-05-05','2010-01-01','https://adele.com','https://instagram.com/adele',0),(52,'Kendrick Lamar','K.Dot','1987-06-17','2010-01-01','https://k.dot.com','https://instagram.com/k.dot',0),(53,'Ed Sheeran','Teddy','1991-02-17','2010-01-01','https://teddy.com','https://instagram.com/teddy',0);

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

INSERT INTO `building` VALUES (1,'Mullen LLC','Floor set food.\nOpen television decide we water firm save.\nTo rich sit record experience. Wonder project likely born cultural test citizen.\nThree hotel develop heart sister. It nothing have.',525,'indicate, teach, themselves, here, receive'),(2,'Lopez, Olson and Herrera','Century man hair second. Show popular between indeed together social. Turn clearly project condition blood. Practice far political guy stock oil.',544,'resource, teacher, family, himself, dark'),(3,'Smith Ltd','Economic land ground north amount several community. Half hope space marriage artist long.',168,'thank, can, hour, deal, task'),(4,'Bridges LLC','Personal cover hope choice. Pick while whom cut drop well. Detail eye serve.',344,'entire, involve, opportunity, trade, those'),(5,'Keller-Smith','Glass include reality your various different production. Foreign food Democrat production understand total light place.\nStand enjoy special kid condition goal. Say population same something.',553,'political, sound, quality, another, will'),(6,'Miller PLC','State yourself direction study. Old nation tough hair matter he produce under. Necessary explain month blood business.\nPolitics last before forget. Source particularly mission first.',482,'federal, huge, east, the, analysis'),(7,'Daniels-Martin','Various yet between spend time sound officer. Wall across police out move goal suddenly. Pass study blood must employee middle.',546,'concern, guess, we, gas, point'),(8,'Holmes-Johnson','Of audience have laugh. Likely site new star thus Democrat. Would with floor prevent often.\nMove baby including certain receive after. After hour visit start argue born yourself why.',109,'create, environmental, foot, organization, statement'),(9,'Brown LLC','Too impact enough air. Include worker suddenly interest. Computer answer perhaps director four edge situation.',791,'benefit, camera, before, Mrs, let'),(10,'Morton Inc','Above while walk specific wish industry quickly western. Month where knowledge. Pay myself nation write I check issue ago.',612,'inside, suffer, finish, political, lead'),(11,'Stone and Sons','Stand language see. Organization site work even citizen. Indicate sit summer explain.\nRoad now sure daughter exactly. Positive southern argue. Camera answer thousand answer.',931,'lose, may, financial, Mrs, eat'),(12,'Hernandez-Hartman','Spend later market themselves close specific. Agent institution only deep. Resource why along artist sea already few.',999,'begin, end, yourself, but, price'),(13,'Nguyen, Gonzalez and Walker','Main beyond more dark generation learn. Than woman nature agreement. Account determine old finish store.\nChange at indicate anyone. Our sit main tree player teach line.',749,'apply, physical, energy, agency, so'),(14,'Pope-Wheeler','Call war others. Myself area player camera check guess. Everybody that husband clear approach remain and.',178,'event, capital, as, base, partner'),(15,'Daugherty-Walls','Order interesting account executive matter sound keep. Seat trial rule hundred consumer reality glass now. Food natural factor save.',549,'through, building, across, alone, turn'),(16,'Ramos, Thomas and Alvarez','Court guess player us baby method. Old growth never bar build.\nBoy general very third.',486,'career, better, source, about, remember'),(17,'Trevino, Jones and Walton','Human contain treatment plant fly method war. Once thus including shake television.',821,'interest, far, growth, city, husband'),(18,'Norris LLC','Reveal value itself. Draw across community move over instead knowledge.\nType hotel accept big public save. Court his management data final ahead thus. Art those name today.',492,'Mr, federal, wrong, front, much'),(19,'Weber and Sons','Role employee everyone power billion form. Draw blue fish woman red. Here require everybody woman role time.',453,'back, single, bring, hit, others'),(20,'Smith Group','Down or in. Chair record seem eight notice. Front community continue relationship when.',662,'since, effort, phone, conference, find'),(21,'Webb LLC','Of easy truth floor draw. Billion risk important region already above she. Land military at yard.',654,'stand, white, though, event, huge'),(22,'Russo-Fisher','Guy these arrive today. Prevent last least explain around realize.\nWorld other for sister. Power price deal sell beat reach. Imagine beyond note produce culture explain.',737,'mind, risk, subject, the, interest'),(23,'Davis LLC','Bad behind put season. Degree cause believe our under person third. Cover however fine mind book base us animal.',919,'finally, new, so, answer, day'),(24,'Johnson and Sons','Probably black past risk life you language.\nPossible inside price indeed none suggest alone. Forget produce however property claim edge.',422,'add, sister, time, miss, machine'),(25,'Rogers-Clark','Type hot physical building rate travel foot check. Young political machine today reduce both college assume. Inside discuss what information. Poor power off activity avoid stop long.',606,'five, on, inside, stage, before'),(26,'Miller-Gomez','Law would visit. Risk face business buy generation. Claim any key message carry fire.\nJust perhaps organization first front. Trade popular peace answer expert company everyone.',362,'create, find, eye, defense, language'),(27,'Good, Green and Potter','Account feeling nothing put four staff. Figure discuss tend. Behavior concern rather suddenly.\nCreate past particular under shake technology. Here issue newspaper son.\nLet matter hundred ago little.',913,'give, person, help, article, include'),(28,'Mclean-Moore','Upon should deal understand article field. Report teach option structure wind street.\nPressure thank our certainly. Garden then student agree hot pretty computer.',633,'Democrat, town, civil, outside, high'),(29,'Clements PLC','Mission truth question station eight. Successful with business positive history. Positive husband should threat painting.\nAlmost reflect page always charge question. Oil ever baby site certainly let.',807,'interesting, remember, against, animal, laugh'),(30,'Krueger, Anderson and Romero','Institution into media prepare through seek kind. Seven total they manage guess risk. Discuss end student young science half money.',672,'ball, tend, throughout, evidence, he'),(31,'Global Stage','Multi-purpose performance venue',500,'sound,lighting,video');

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
INSERT INTO `buyer` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(9,9,0),(10,10,0),(11,11,0),(12,12,0),(13,13,0),(14,14,0),(15,15,0),(16,16,0),(17,17,0),(18,18,0),(19,19,0),(20,20,0),(21,21,0),(22,22,0),(23,23,0),(24,24,0),(25,25,0),(26,26,0),(27,27,0),(28,28,0),(29,29,0),(30,30,0),(31,31,0),(32,32,0),(33,33,0),(34,34,0),(35,35,0),(36,36,0),(37,37,0),(38,38,0),(39,39,1),(40,40,0),(41,41,0),(42,42,0),(43,43,0),(44,44,0),(45,45,0),(46,46,0),(47,47,0),(48,48,0),(49,49,0),(50,50,0),(51,51,0),(52,52,0),(53,53,0),(54,54,0),(55,55,0),(56,56,0),(57,57,0),(58,58,0),(59,59,0),(60,60,0),(61,61,0),(62,62,0),(63,63,0),(64,64,0),(65,65,0),(66,66,0),(67,67,0),(68,68,0),(69,69,0),(70,70,0),(71,71,0),(72,72,0),(73,73,0),(74,74,0),(75,75,0),(76,76,0),(77,77,0),(78,78,0),(79,79,0),(80,80,0),(81,81,0),(82,82,0),(83,83,0),(84,84,0),(85,85,0),(86,86,0),(87,87,0),(88,88,0),(89,89,0),(90,90,0),(91,91,0),(92,92,0),(93,93,0),(94,94,0),(95,95,0),(96,96,0),(97,97,0),(98,98,0),(99,99,0),(100,100,0),(101,101,0),(102,102,0),(103,103,0),(104,104,0),(105,105,0),(106,106,0),(107,107,0),(108,108,0),(109,109,0),(110,110,0),(111,111,0),(112,112,0),(113,113,0),(114,114,0),(115,115,0),(116,116,0),(117,117,0),(118,118,0),(119,119,0),(120,120,0),(121,121,0),(122,122,0),(123,123,0),(124,124,0),(125,125,0),(126,126,0),(127,127,0),(128,128,0),(129,129,0),(130,130,0),(131,131,0),(132,132,0),(133,133,1),(134,134,0),(135,135,1),(136,136,0),(137,137,0),(138,138,0),(139,139,0),(140,140,0),(141,141,0),(142,142,0),(143,143,0),(144,144,0),(145,145,0),(146,146,0),(147,147,0),(148,148,0),(149,149,0),(150,150,0);
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
  KEY `idx_events_festival` (`festival_ID`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`building_ID`) REFERENCES `building` (`building_ID`),
  CONSTRAINT `events_ibfk_2` FOREIGN KEY (`festival_ID`) REFERENCES `festival` (`festival_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;

INSERT INTO `events` VALUES (1,1,'Return Concert',1,'2017-08-18 08:50:00','2017-08-18 12:27:00',5,217),(2,1,'Score Concert',2,'2017-08-19 09:03:00','2017-08-19 12:20:00',24,197),(3,1,'Thus Concert',2,'2017-08-19 13:48:00','2017-08-19 17:19:00',23,211),(4,1,'Represent Concert',2,'2017-08-19 18:19:00','2017-08-19 21:48:00',10,209),(5,1,'Trip Concert',2,'2017-08-19 22:13:00','2017-08-19 01:27:00',19,194),(6,1,'Prevent Concert',2,'2017-08-19 02:45:00','2017-08-19 06:00:00',16,195),(7,1,'Step Concert',2,'2017-08-19 07:02:00','2017-08-19 10:08:00',24,186),(8,1,'Moment Concert',2,'2017-08-19 11:01:00','2017-08-19 14:23:00',28,202),(9,1,'Prepare Concert',2,'2017-08-19 15:17:00','2017-08-19 18:32:00',18,195),(10,1,'Total Concert',3,'2017-08-20 08:36:00','2017-08-20 11:37:00',7,181),(11,1,'Fall Concert',3,'2017-08-20 12:54:00','2017-08-20 16:16:00',6,202),(12,2,'Follow Concert',1,'2018-09-08 08:40:00','2018-09-08 11:53:00',5,193),(13,2,'Second Concert',1,'2018-09-08 12:31:00','2018-09-08 16:06:00',21,215),(14,2,'Every Concert',1,'2018-09-08 17:04:00','2018-09-08 20:34:00',12,210),(15,2,'Seat Concert',1,'2018-09-08 21:09:00','2018-09-08 00:41:00',6,212),(16,2,'New Concert',2,'2018-09-09 08:52:00','2018-09-09 11:53:00',21,181),(17,2,'Leave Concert',2,'2018-09-09 13:25:00','2018-09-09 16:58:00',18,213),(18,2,'Laugh Concert',2,'2018-09-09 18:22:00','2018-09-09 21:35:00',2,193),(19,2,'Sit Concert',2,'2018-09-09 22:28:00','2018-09-09 01:48:00',21,200),(20,2,'Democratic Concert',2,'2018-09-09 02:29:00','2018-09-09 06:00:00',16,211),(21,2,'Condition Concert',2,'2018-09-09 06:21:00','2018-09-09 09:52:00',12,211),(22,2,'Prevent Concert',2,'2018-09-09 10:57:00','2018-09-09 14:28:00',28,211),(23,2,'Artist Concert',2,'2018-09-09 14:53:00','2018-09-09 18:23:00',29,210),(24,2,'Clearly Concert',2,'2018-09-09 19:50:00','2018-09-09 23:08:00',25,198),(25,2,'Until Concert',2,'2018-09-09 23:55:00','2018-09-09 03:22:00',28,207),(26,2,'Bad Concert',3,'2018-09-10 08:35:00','2018-09-10 11:55:00',19,200),(27,2,'Fish Concert',3,'2018-09-10 12:47:00','2018-09-10 16:04:00',27,197),(28,2,'Bit Concert',3,'2018-09-10 16:31:00','2018-09-10 20:08:00',25,217),(29,2,'First Concert',3,'2018-09-10 20:41:00','2018-09-10 00:16:00',3,215),(30,2,'Voice Concert',3,'2018-09-10 01:37:00','2018-09-10 04:55:00',12,198),(31,2,'Compare Concert',3,'2018-09-10 06:06:00','2018-09-10 09:39:00',10,213),(32,2,'Likely Concert',3,'2018-09-10 10:19:00','2018-09-10 13:26:00',25,187),(33,2,'Buy Concert',3,'2018-09-10 14:45:00','2018-09-10 18:13:00',22,208),(34,2,'Goal Concert',3,'2018-09-10 19:50:00','2018-09-10 23:27:00',1,217),(35,2,'Enter Concert',4,'2018-09-11 09:37:00','2018-09-11 13:08:00',10,211),(36,2,'Under Concert',4,'2018-09-11 14:48:00','2018-09-11 18:11:00',19,203),(37,2,'Nation Concert',4,'2018-09-11 19:35:00','2018-09-11 22:50:00',27,195),(38,2,'Million Concert',4,'2018-09-11 23:40:00','2018-09-11 03:07:00',21,207),(39,2,'Subject Concert',4,'2018-09-11 04:17:00','2018-09-11 07:51:00',6,214),(40,2,'Contain Concert',4,'2018-09-11 08:30:00','2018-09-11 11:46:00',29,196),(41,2,'Teacher Concert',4,'2018-09-11 12:27:00','2018-09-11 16:07:00',12,220),(42,2,'Data Concert',4,'2018-09-11 17:04:00','2018-09-11 20:17:00',2,193),(43,3,'Identify Concert',1,'2019-08-28 08:20:00','2019-08-28 11:28:00',18,188),(44,3,'Suffer Concert',1,'2019-08-28 13:06:00','2019-08-28 16:19:00',20,193),(45,3,'Catch Concert',1,'2019-08-28 17:02:00','2019-08-28 20:28:00',25,206),(46,3,'Throw Concert',1,'2019-08-28 21:15:00','2019-08-28 00:44:00',10,209),(47,3,'Probably Concert',1,'2019-08-28 02:23:00','2019-08-28 05:41:00',15,198),(48,3,'Job Concert',1,'2019-08-28 06:45:00','2019-08-28 10:03:00',9,198),(49,3,'Compare Concert',1,'2019-08-28 11:43:00','2019-08-28 15:17:00',13,214),(50,3,'Someone Concert',2,'2019-08-29 08:43:00','2019-08-29 11:49:00',19,186),(51,3,'Hour Concert',2,'2019-08-29 13:17:00','2019-08-29 16:53:00',16,216),(52,3,'Than Concert',2,'2019-08-29 18:07:00','2019-08-29 21:26:00',28,199),(53,3,'Claim Concert',2,'2019-08-29 22:45:00','2019-08-29 01:54:00',23,189),(54,3,'Option Concert',2,'2019-08-29 03:34:00','2019-08-29 06:44:00',9,190),(55,3,'Worker Concert',2,'2019-08-29 07:18:00','2019-08-29 10:28:00',21,190),(56,3,'Speak Concert',2,'2019-08-29 11:01:00','2019-08-29 14:39:00',24,218),(57,3,'Difficult Concert',2,'2019-08-29 15:45:00','2019-08-29 19:16:00',25,211),(58,3,'White Concert',2,'2019-08-29 20:16:00','2019-08-29 23:32:00',5,196),(59,3,'Agency Concert',3,'2019-08-30 09:02:00','2019-08-30 12:23:00',26,201),(60,3,'Poor Concert',3,'2019-08-30 12:51:00','2019-08-30 16:31:00',3,220),(61,3,'In Concert',3,'2019-08-30 17:12:00','2019-08-30 20:20:00',14,188),(62,3,'Toward Concert',3,'2019-08-30 21:10:00','2019-08-30 00:25:00',8,195),(63,3,'Cell Concert',3,'2019-08-30 01:08:00','2019-08-30 04:20:00',29,192),(64,3,'View Concert',3,'2019-08-30 05:32:00','2019-08-30 08:36:00',23,184),(65,3,'Place Concert',3,'2019-08-30 08:56:00','2019-08-30 12:02:00',17,186),(66,4,'From Concert',1,'2020-09-25 08:31:00','2020-09-25 11:51:00',27,200),(67,4,'Wish Concert',1,'2020-09-25 13:12:00','2020-09-25 16:35:00',6,203),(68,4,'Detail Concert',1,'2020-09-25 18:13:00','2020-09-25 21:42:00',1,209),(69,4,'Discussion Concert',1,'2020-09-25 22:05:00','2020-09-25 01:29:00',28,204),(70,4,'Business Concert',1,'2020-09-25 01:49:00','2020-09-25 05:13:00',20,204),(71,4,'Edge Concert',1,'2020-09-25 06:22:00','2020-09-25 09:59:00',27,217),(72,4,'Reduce Concert',1,'2020-09-25 10:38:00','2020-09-25 14:13:00',5,215),(73,4,'Enter Concert',2,'2020-09-26 09:02:00','2020-09-26 12:08:00',9,186),(74,4,'Tv Concert',2,'2020-09-26 13:45:00','2020-09-26 17:00:00',21,195),(75,4,'Government Concert',2,'2020-09-26 17:54:00','2020-09-26 21:27:00',29,213),(76,4,'Issue Concert',3,'2020-09-27 09:39:00','2020-09-27 13:07:00',13,208),(77,4,'Themselves Concert',3,'2020-09-27 13:50:00','2020-09-27 17:04:00',3,194),(78,4,'Detail Concert',3,'2020-09-27 17:52:00','2020-09-27 21:09:00',18,197),(79,4,'Do Concert',3,'2020-09-27 21:58:00','2020-09-27 01:36:00',5,218),(80,4,'But Concert',3,'2020-09-27 02:13:00','2020-09-27 05:48:00',19,215),(81,4,'Industry Concert',4,'2020-09-28 09:22:00','2020-09-28 12:38:00',7,196),(82,4,'Between Concert',4,'2020-09-28 14:17:00','2020-09-28 17:29:00',27,192),(83,4,'Say Concert',4,'2020-09-28 18:00:00','2020-09-28 21:15:00',8,195),(84,4,'Trip Concert',4,'2020-09-28 22:09:00','2020-09-28 01:13:00',7,184),(85,4,'Treat Concert',4,'2020-09-28 01:42:00','2020-09-28 04:46:00',20,184),(86,4,'Student Concert',4,'2020-09-28 06:19:00','2020-09-28 09:33:00',5,194),(87,4,'Chance Concert',4,'2020-09-28 11:10:00','2020-09-28 14:37:00',11,207),(88,4,'Water Concert',4,'2020-09-28 16:11:00','2020-09-28 19:42:00',30,211),(89,4,'Painting Concert',5,'2020-09-29 09:17:00','2020-09-29 12:57:00',30,220),(90,4,'Sport Concert',5,'2020-09-29 13:35:00','2020-09-29 17:13:00',26,218),(91,4,'Bank Concert',5,'2020-09-29 18:29:00','2020-09-29 22:00:00',24,211),(92,4,'Military Concert',5,'2020-09-29 23:32:00','2020-09-29 02:45:00',12,193),(93,4,'Action Concert',5,'2020-09-29 04:11:00','2020-09-29 07:30:00',4,199),(94,4,'Become Concert',5,'2020-09-29 08:17:00','2020-09-29 11:31:00',17,194),(95,4,'Term Concert',5,'2020-09-29 12:07:00','2020-09-29 15:44:00',1,217),(96,5,'Space Concert',1,'2021-08-08 08:45:00','2021-08-08 12:03:00',27,198),(97,5,'Across Concert',1,'2021-08-08 12:54:00','2021-08-08 16:23:00',9,209),(98,5,'Put Concert',1,'2021-08-08 17:26:00','2021-08-08 20:59:00',10,213),(99,5,'Congress Concert',1,'2021-08-08 21:44:00','2021-08-08 01:04:00',26,200),(100,5,'Him Concert',1,'2021-08-08 02:36:00','2021-08-08 06:05:00',25,209),(101,5,'Real Concert',2,'2021-08-09 09:29:00','2021-08-09 12:57:00',8,208),(102,5,'Political Concert',2,'2021-08-09 14:17:00','2021-08-09 17:47:00',14,210),(103,5,'My Concert',2,'2021-08-09 19:22:00','2021-08-09 22:53:00',11,211),(104,6,'Player Concert',1,'2022-07-24 08:55:00','2022-07-24 12:14:00',8,199),(105,6,'Issue Concert',2,'2022-07-25 08:38:00','2022-07-25 11:44:00',1,186),(106,6,'Interview Concert',3,'2022-07-26 08:20:00','2022-07-26 11:36:00',10,196),(107,6,'Believe Concert',3,'2022-07-26 13:02:00','2022-07-26 16:04:00',20,182),(108,6,'Modern Concert',3,'2022-07-26 16:32:00','2022-07-26 20:11:00',8,219),(109,6,'Public Concert',3,'2022-07-26 21:20:00','2022-07-26 00:46:00',7,206),(110,6,'Year Concert',3,'2022-07-26 01:25:00','2022-07-26 04:31:00',16,186),(111,6,'This Concert',4,'2022-07-27 08:56:00','2022-07-27 12:00:00',25,184),(112,6,'Art Concert',4,'2022-07-27 12:43:00','2022-07-27 15:47:00',22,184),(113,6,'Sure Concert',4,'2022-07-27 16:21:00','2022-07-27 19:45:00',23,204),(114,6,'From Concert',5,'2022-07-28 09:03:00','2022-07-28 12:29:00',27,206),(115,7,'Glass Concert',1,'2023-08-12 08:33:00','2023-08-12 12:03:00',26,210),(116,7,'Base Concert',1,'2023-08-12 13:32:00','2023-08-12 16:51:00',24,199),(117,7,'Report Concert',1,'2023-08-12 17:16:00','2023-08-12 20:27:00',4,191),(118,7,'Color Concert',2,'2023-08-13 09:38:00','2023-08-13 12:46:00',16,188),(119,7,'Around Concert',2,'2023-08-13 14:20:00','2023-08-13 17:25:00',11,185),(120,7,'Ago Concert',2,'2023-08-13 17:55:00','2023-08-13 21:32:00',7,217),(121,7,'Site Concert',3,'2023-08-14 08:46:00','2023-08-14 12:12:00',15,206),(122,7,'Example Concert',3,'2023-08-14 13:36:00','2023-08-14 16:45:00',27,189),(123,7,'Role Concert',3,'2023-08-14 17:17:00','2023-08-14 20:35:00',26,198),(124,7,'Their Concert',3,'2023-08-14 22:09:00','2023-08-14 01:15:00',30,186),(125,7,'Ten Concert',3,'2023-08-14 02:29:00','2023-08-14 05:53:00',11,204),(126,7,'Control Concert',3,'2023-08-14 06:34:00','2023-08-14 09:47:00',18,193),(127,7,'Marriage Concert',3,'2023-08-14 11:02:00','2023-08-14 14:26:00',11,204),(128,7,'Born Concert',4,'2023-08-15 08:45:00','2023-08-15 12:13:00',6,208),(129,7,'Challenge Concert',4,'2023-08-15 13:12:00','2023-08-15 16:30:00',19,198),(130,7,'West Concert',4,'2023-08-15 17:17:00','2023-08-15 20:46:00',12,209),(131,7,'Image Concert',4,'2023-08-15 21:45:00','2023-08-15 01:21:00',10,216),(132,7,'Within Concert',4,'2023-08-15 02:55:00','2023-08-15 06:06:00',7,191),(133,7,'Agree Concert',4,'2023-08-15 06:45:00','2023-08-15 09:47:00',11,182),(134,7,'Yard Concert',4,'2023-08-15 10:25:00','2023-08-15 13:49:00',21,204),(135,7,'Appear Concert',4,'2023-08-15 14:54:00','2023-08-15 18:06:00',26,192),(136,7,'Story Concert',4,'2023-08-15 19:06:00','2023-08-15 22:34:00',15,208),(137,7,'Name Concert',4,'2023-08-15 23:43:00','2023-08-15 03:23:00',21,220),(138,7,'Majority Concert',5,'2023-08-16 09:28:00','2023-08-16 12:51:00',30,203),(139,7,'Onto Concert',5,'2023-08-16 14:08:00','2023-08-16 17:33:00',18,205),(140,7,'Voice Concert',5,'2023-08-16 17:53:00','2023-08-16 21:15:00',3,202),(141,7,'Force Concert',5,'2023-08-16 22:08:00','2023-08-16 01:48:00',23,220),(142,7,'Perhaps Concert',5,'2023-08-16 02:52:00','2023-08-16 06:16:00',29,204),(143,7,'Morning Concert',5,'2023-08-16 07:39:00','2023-08-16 10:55:00',4,196),(144,7,'Put Concert',5,'2023-08-16 11:19:00','2023-08-16 14:43:00',16,204),(145,7,'Economic Concert',5,'2023-08-16 15:28:00','2023-08-16 19:07:00',24,219),(146,7,'Expert Concert',5,'2023-08-16 19:57:00','2023-08-16 23:13:00',3,196),(147,8,'War Concert',1,'2024-08-03 08:53:00','2024-08-03 12:18:00',22,205),(148,8,'Small Concert',1,'2024-08-03 12:43:00','2024-08-03 16:01:00',13,198),(149,8,'Several Concert',1,'2024-08-03 17:16:00','2024-08-03 20:55:00',12,219),(150,8,'Get Concert',1,'2024-08-03 21:15:00','2024-08-03 00:47:00',9,212),(151,8,'Pattern Concert',2,'2024-08-04 08:48:00','2024-08-04 12:21:00',13,213),(152,8,'Pretty Concert',2,'2024-08-04 13:41:00','2024-08-04 17:13:00',19,212),(153,8,'Hotel Concert',2,'2024-08-04 17:42:00','2024-08-04 21:14:00',24,212),(154,8,'Quite Concert',2,'2024-08-04 22:03:00','2024-08-04 01:26:00',18,203),(155,8,'However Concert',2,'2024-08-04 02:27:00','2024-08-04 05:32:00',8,185),(156,8,'Choose Concert',2,'2024-08-04 06:47:00','2024-08-04 10:12:00',20,205),(157,8,'At Concert',2,'2024-08-04 11:37:00','2024-08-04 14:56:00',13,199),(158,8,'International Concert',2,'2024-08-04 15:52:00','2024-08-04 19:05:00',15,193),(159,8,'War Concert',3,'2024-08-05 08:42:00','2024-08-05 11:57:00',21,195),(160,8,'Group Concert',3,'2024-08-05 12:48:00','2024-08-05 15:55:00',7,187),(161,8,'Something Concert',4,'2024-08-06 09:38:00','2024-08-06 13:03:00',2,205),(162,9,'Yard Concert',1,'2025-07-19 09:34:00','2025-07-19 12:43:00',23,189),(163,9,'Understand Concert',1,'2025-07-19 13:37:00','2025-07-19 16:43:00',2,186),(164,9,'Involve Concert',1,'2025-07-19 17:15:00','2025-07-19 20:34:00',12,199),(165,9,'Investment Concert',2,'2025-07-20 08:53:00','2025-07-20 12:02:00',22,189),(166,9,'Act Concert',2,'2025-07-20 12:38:00','2025-07-20 15:52:00',6,194),(167,9,'Whose Concert',3,'2025-07-21 09:19:00','2025-07-21 12:44:00',27,205),(168,9,'Good Concert',3,'2025-07-21 13:20:00','2025-07-21 16:21:00',15,181),(169,9,'Race Concert',3,'2025-07-21 17:18:00','2025-07-21 20:36:00',19,198),(170,9,'Process Concert',3,'2025-07-21 21:07:00','2025-07-21 00:38:00',12,211),(171,9,'Plan Concert',3,'2025-07-21 02:09:00','2025-07-21 05:32:00',23,203),(172,9,'Find Concert',3,'2025-07-21 07:05:00','2025-07-21 10:38:00',7,213),(173,9,'Small Concert',4,'2025-07-22 08:53:00','2025-07-22 12:07:00',25,194),(174,9,'Indeed Concert',4,'2025-07-22 13:32:00','2025-07-22 16:46:00',9,194),(175,9,'Her Concert',4,'2025-07-22 17:54:00','2025-07-22 21:04:00',1,190),(176,9,'Either Concert',4,'2025-07-22 22:05:00','2025-07-22 01:33:00',30,208),(177,9,'Kid Concert',4,'2025-07-22 02:19:00','2025-07-22 05:51:00',25,212),(178,9,'My Concert',4,'2025-07-22 06:32:00','2025-07-22 09:46:00',8,194),(179,9,'Avoid Concert',4,'2025-07-22 10:20:00','2025-07-22 13:51:00',22,211),(180,9,'Amount Concert',4,'2025-07-22 15:02:00','2025-07-22 18:29:00',10,207),(181,9,'Down Concert',4,'2025-07-22 19:02:00','2025-07-22 22:41:00',5,219),(182,9,'Ready Concert',4,'2025-07-22 23:57:00','2025-07-22 03:06:00',11,189),(183,9,'Teacher Concert',5,'2025-07-23 08:47:00','2025-07-23 12:18:00',15,211),(184,10,'Half Concert',1,'2026-09-27 08:32:00','2026-09-27 11:40:00',30,188),(185,10,'Source Concert',2,'2026-09-28 09:33:00','2026-09-28 13:11:00',19,218),(186,10,'Choose Concert',2,'2026-09-28 13:46:00','2026-09-28 17:02:00',29,196),(187,10,'Ground Concert',2,'2026-09-28 18:33:00','2026-09-28 22:12:00',15,219),(188,10,'Kid Concert',2,'2026-09-28 22:45:00','2026-09-28 01:57:00',24,192),(189,10,'Beyond Concert',2,'2026-09-28 03:15:00','2026-09-28 06:25:00',17,190),(190,10,'Image Concert',2,'2026-09-28 07:39:00','2026-09-28 11:00:00',26,201),(191,10,'Social Concert',2,'2026-09-28 12:19:00','2026-09-28 15:38:00',5,199),(192,10,'Democrat Concert',2,'2026-09-28 16:38:00','2026-09-28 20:09:00',1,211),(193,10,'Movement Concert',3,'2026-09-29 09:01:00','2026-09-29 12:29:00',15,208),(194,10,'Physical Concert',3,'2026-09-29 14:02:00','2026-09-29 17:24:00',17,202),(195,10,'Edge Concert',3,'2026-09-29 18:17:00','2026-09-29 21:33:00',26,196),(196,10,'Career Concert',3,'2026-09-29 23:07:00','2026-09-29 02:16:00',21,189),(197,10,'Rich Concert',3,'2026-09-29 02:46:00','2026-09-29 06:16:00',5,210),(198,10,'Certain Concert',4,'2026-09-30 08:34:00','2026-09-30 12:01:00',24,207),(199,10,'Simple Concert',4,'2026-09-30 13:18:00','2026-09-30 16:21:00',6,183),(200,10,'Already Concert',4,'2026-09-30 17:59:00','2026-09-30 21:07:00',16,188),(201,10,'Pay Concert',4,'2026-09-30 22:27:00','2026-09-30 02:06:00',7,219),(202,10,'Door Concert',4,'2026-09-30 02:41:00','2026-09-30 06:03:00',25,202),(203,11,'Live Session 11',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180),(204,12,'Live Session 12',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180),(205,13,'Live Session 13',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180),(206,11,'Live Session 11',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180),(207,12,'Live Session 12',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180),(208,13,'Live Session 13',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180),(209,14,'Live Session 14',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180),(210,15,'Live Session 15',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180),(211,16,'Live Session 16',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180),(212,17,'Live Session 17',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180),(213,18,'Live Session 18',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180),(214,19,'Live Session 19',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180),(215,20,'Live Session 20',1,'2025-08-01 18:00:00','2025-08-01 21:00:00',31,180);

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

INSERT INTO `festival` VALUES (1,'2017-08-18',3),(2,'2018-09-08',4),(3,'2019-08-28',3),(4,'2020-09-25',5),(5,'2021-08-08',2),(6,'2022-07-24',5),(7,'2023-08-12',5),(8,'2024-08-03',4),(9,'2025-07-19',5),(10,'2026-09-27',4),(11,'2020-07-10',3),(12,'2021-07-10',3),(13,'2022-07-10',3),(14,'2023-07-10',3),(15,'2024-07-10',3),(16,'2025-07-10',3),(17,'2026-07-10',3),(18,'2027-07-10',3),(19,'2028-07-10',3),(20,'2029-07-10',3);

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

INSERT INTO `festival_location` VALUES (1,1,'770 Autumn Springs','North Sarah','Russian Federation','Europe','76.5733895,-65.333705'),(2,2,'9855 Amanda Passage Apt. 833','West Jeremymouth','Gabon','Europe','88.645154,-38.456867'),(3,3,'2523 Renee Wall Apt. 758','North Carol','Bolivia','Europe','-85.5402945,76.380995'),(4,4,'3593 Crystal Highway Suite 859','West Eric','Uzbekistan','Europe','-31.8109065,18.144519'),(5,5,'1237 Joseph Turnpike Suite 600','Hallfort','Puerto Rico','Europe','-55.420626,92.508136'),(6,6,'80485 Johnson Rapids Apt. 034','Suefurt','Singapore','Europe','79.116621,-60.002265'),(7,7,'089 Elizabeth Points Suite 615','Cameronshire','Gambia','Europe','28.1680925,121.544641'),(8,8,'10981 Eric Views','East Julie','Antigua and Barbuda','Europe','17.169410,29.422219'),(9,9,'508 George Lodge Apt. 085','Jeffreyburgh','Western Sahara','Europe','61.0512605,52.331654'),(10,10,'641 Jeremy Ridges','Payneport','Mexico','Europe','30.8812615,-12.757566'),(11,11,'10 Main St','Berlin','Germany','Europe','-33.0,151.0'),(12,12,'11 Main St','Tokyo','Japan','Asia','-32.0,152.0'),(13,13,'12 Main St','New York','USA','America','-31.0,153.0'),(14,14,'13 Main St','Cape Town','South Africa','Africa','-30.0,154.0'),(15,15,'14 Main St','Sydney','Australia','Oceania','-29.0,155.0'),(16,16,'15 Main St','McMurdo','Antarctica','Antarctica','-28.0,156.0'),(17,17,'16 Main St','São Paulo','Brazil','South America','-27.0,157.0'),(18,18,'17 Main St','Melbourne','Australia','Australia','-26.0,158.0'),(19,19,'18 Main St','Toronto','Canada','North America','-25.0,159.0'),(20,20,'19 Main St','Dubai','UAE','Middle East','-24.0,160.0');

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
  KEY `idx_genre_artist` (`artist_ID`),
  KEY `idx_genre_group` (`group_ID`),
  CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`artist_ID`) REFERENCES `artist` (`artist_ID`),
  CONSTRAINT `genre_ibfk_2` FOREIGN KEY (`group_ID`) REFERENCES `group` (`group_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Rock','Hard Rock',1,NULL),(2,'Electronic','House',1,NULL),(3,'Hip-Hop','Trap',1,NULL),(4,'Electronic','House',2,NULL),(5,'Hip-Hop','Trap',2,NULL),(6,'Jazz','Smooth Jazz',3,NULL),(7,'Electronic','House',3,NULL),(8,'Hip-Hop','Trap',4,NULL),(9,'Classical','Baroque',4,NULL),(10,'Hip-Hop','Trap',5,NULL),(11,'Pop',NULL,5,NULL),(12,'Rock','Hard Rock',6,NULL),(13,'Jazz','Smooth Jazz',6,NULL),(14,'Hip-Hop','Trap',6,NULL),(15,'Pop',NULL,7,NULL),(16,'Jazz','Smooth Jazz',7,NULL),(17,'Rock','Hard Rock',8,NULL),(18,'Rock','Hard Rock',9,NULL),(19,'Jazz','Smooth Jazz',9,NULL),(20,'Hip-Hop','Trap',9,NULL),(21,'Rock','Hard Rock',10,NULL),(22,'Classical','Baroque',10,NULL),(23,'Electronic','House',10,NULL),(24,'Pop',NULL,11,NULL),(25,'Rock','Hard Rock',11,NULL),(26,'Hip-Hop','Trap',11,NULL),(27,'Pop',NULL,12,NULL),(28,'Hip-Hop','Trap',13,NULL),(29,'Classical','Baroque',14,NULL),(30,'Pop',NULL,14,NULL),(31,'Hip-Hop','Trap',14,NULL),(32,'Rock','Hard Rock',15,NULL),(33,'Jazz','Smooth Jazz',15,NULL),(34,'Electronic','House',16,NULL),(35,'Jazz','Smooth Jazz',16,NULL),(36,'Pop',NULL,16,NULL),(37,'Electronic','House',17,NULL),(38,'Classical','Baroque',17,NULL),(39,'Electronic','House',18,NULL),(40,'Jazz','Smooth Jazz',18,NULL),(41,'Rock','Hard Rock',18,NULL),(42,'Jazz','Smooth Jazz',19,NULL),(43,'Hip-Hop','Trap',19,NULL),(44,'Jazz','Smooth Jazz',20,NULL),(45,'Jazz','Smooth Jazz',21,NULL),(46,'Hip-Hop','Trap',22,NULL),(47,'Electronic','House',22,NULL),(48,'Classical','Baroque',22,NULL),(49,'Jazz','Smooth Jazz',23,NULL),(50,'Electronic','House',23,NULL),(51,'Classical','Baroque',23,NULL),(52,'Pop',NULL,24,NULL),(53,'Classical','Baroque',24,NULL),(54,'Electronic','House',24,NULL),(55,'Electronic','House',25,NULL),(56,'Rock','Hard Rock',25,NULL),(57,'Jazz','Smooth Jazz',25,NULL),(58,'Rock','Hard Rock',26,NULL),(59,'Rock','Hard Rock',27,NULL),(60,'Pop',NULL,27,NULL),(61,'Rock','Hard Rock',28,NULL),(62,'Electronic','House',28,NULL),(63,'Jazz','Smooth Jazz',28,NULL),(64,'Hip-Hop','Trap',29,NULL),(65,'Jazz','Smooth Jazz',30,NULL),(66,'Rock','Hard Rock',30,NULL),(67,'Electronic','House',30,NULL),(68,'Jazz','Smooth Jazz',31,NULL),(69,'Pop',NULL,31,NULL),(70,'Jazz','Smooth Jazz',32,NULL),(71,'Rock','Hard Rock',33,NULL),(72,'Classical','Baroque',34,NULL),(73,'Rock','Hard Rock',35,NULL),(74,'Hip-Hop','Trap',35,NULL),(75,'Classical','Baroque',35,NULL),(76,'Classical','Baroque',36,NULL),(77,'Hip-Hop','Trap',36,NULL),(78,'Jazz','Smooth Jazz',36,NULL),(79,'Jazz','Smooth Jazz',37,NULL),(80,'Hip-Hop','Trap',37,NULL),(81,'Hip-Hop','Trap',38,NULL),(82,'Jazz','Smooth Jazz',38,NULL),(83,'Electronic','House',39,NULL),(84,'Pop',NULL,39,NULL),(85,'Classical','Baroque',39,NULL),(86,'Electronic','House',40,NULL),(87,'Electronic','House',41,NULL),(88,'Hip-Hop','Trap',41,NULL),(89,'Jazz','Smooth Jazz',41,NULL),(90,'Pop',NULL,42,NULL),(91,'Hip-Hop','Trap',42,NULL),(92,'Classical','Baroque',43,NULL),(93,'Jazz','Smooth Jazz',43,NULL),(94,'Electronic','House',43,NULL),(95,'Jazz','Smooth Jazz',44,NULL),(96,'Pop',NULL,44,NULL),(97,'Classical','Baroque',45,NULL),(98,'Pop',NULL,45,NULL),(99,'Rock','Hard Rock',46,NULL),(100,'Hip-Hop','Trap',46,NULL),(101,'Jazz','Smooth Jazz',47,NULL),(102,'Rock','Hard Rock',47,NULL),(103,'Hip-Hop','Trap',47,NULL),(104,'Classical','Baroque',48,NULL),(105,'Hip-Hop','Trap',48,NULL),(106,'Rock','Hard Rock',48,NULL),(107,'Pop',NULL,49,NULL),(108,'Jazz','Smooth Jazz',49,NULL),(109,'Classical','Baroque',49,NULL),(110,'Hip-Hop','Trap',50,NULL),(111,'Pop',NULL,NULL,1),(112,'Rock','Hard Rock',NULL,1),(113,'Classical','Baroque',NULL,1),(114,'Hip-Hop','Trap',NULL,2),(115,'Classical','Baroque',NULL,2),(116,'Pop',NULL,NULL,3),(117,'Hip-Hop','Trap',NULL,4),(118,'Rock','Hard Rock',NULL,4),(119,'Jazz','Smooth Jazz',NULL,5),(120,'Classical','Baroque',NULL,6),(121,'Pop',NULL,NULL,6),(122,'Pop',NULL,NULL,7),(123,'Pop',NULL,NULL,8),(124,'Hip-Hop','Trap',NULL,8),(125,'Classical','Baroque',NULL,9),(126,'Electronic','House',NULL,9),(127,'Pop',NULL,NULL,10),(128,'Rock','Hard Rock',NULL,10),(129,'Jazz','Smooth Jazz',NULL,11),(130,'Rock','Hard Rock',NULL,12),(131,'Pop',NULL,NULL,13),(132,'Classical','Baroque',NULL,13),(133,'Hip-Hop','Trap',NULL,13),(134,'Rock','Hard Rock',NULL,14),(135,'Classical','Baroque',NULL,15),(136,'Hip-Hop','Trap',NULL,15);
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
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
INSERT INTO `group` VALUES (1,'Melissa Parker Band','1991-07-04','2002-07-01','http://www.wells.com/','http://williams.biz/','Natasha Hood, Lisa Lewis, Kylie Smith, Anne Madden, '),(2,'Andrew Thomas Band','1984-07-03','1985-07-03','http://www.ward-gonzales.com/','http://www.jones.org/','Kelly Diaz, Adam Phillips, '),(3,'Jason Hood Band','1996-01-17','1999-01-16','https://www.wright.com/','http://www.martinez.biz/','Carrie Butler, Marc Brooks, Charles Scott, Olivia Stephens, '),(4,'Shannon Foster Band','1975-11-28','1992-11-23','http://mitchell.com/','https://richardson.com/','Michelle Hampton, Jeffrey Anderson, '),(5,'Chad Arnold Band','1983-07-14','1998-07-10','https://hogan.com/','http://watson.com/','Bradley Rocha, Paul Hess, Anne Madden, '),(6,'Christopher Perry Band','2001-10-02','2021-09-27','http://brown.com/','https://www.flores-brown.com/','Leah Clay, Jeffrey Anderson, '),(7,'Michael Rosario Band','1986-08-31','1992-08-29','http://johnson-phillips.com/','http://benjamin-anderson.com/','Richard Gallegos, Anne Madden, Leah Clay, '),(8,'Stephanie Bradshaw Band','1998-08-15','2013-08-11','http://www.sims.org/','http://www.lucas.com/','Donna Mckenzie, Sarah Bowers, Amanda Salazar, '),(9,'Peter Adams Band','1995-01-03','2001-01-01','https://williams-lambert.com/','http://taylor.com/','Lisa Lewis, Kylie Smith, '),(10,'Gary Carter Band','1997-01-29','2000-01-29','http://www.soto-baker.info/','https://www.duran.info/','Anne Madden, Kelly Diaz, '),(11,'Patricia Rivera Band','1977-10-22','1996-10-17','https://www.lopez.com/','http://www.clayton.org/','Kelly Diaz, Bradley Rocha, Gary Stone, Tasha Lawson, '),(12,'Mr. Curtis Thompson Band','1977-03-04','1987-03-02','http://www.parker.org/','http://www.caldwell-patel.com/','Crystal Lynch, Trevor Carter, Gina Chandler, Marc Brooks, '),(13,'Shannon Levy Band','2000-02-08','2002-02-07','https://charles-brown.com/','http://www.blake.com/','Lee Gonzalez, Gina Chandler, Kylie Smith, '),(14,'Derek Williams Band','1978-02-04','1997-01-30','https://lester.com/','https://bailey.net/','Marc Brooks, Trevor Carter, Pamela Bowen, Caroline Nguyen, Carrie Butler, '),(15,'Brooke Obrien Band','2004-01-30','2008-01-29','http://wolfe.org/','http://www.thomas.com/','Paul Hess, Lauren Bradford, Mr. Philip Hood, Kylie Smith, ');
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
INSERT INTO `group_members` VALUES (1,8),(1,35),(1,37),(1,40),(2,31),(2,43),(3,22),(3,24),(3,26),(3,29),(4,13),(4,45),(5,8),(5,27),(5,39),(6,45),(6,46),(7,5),(7,8),(7,46),(8,12),(8,17),(8,36),(9,37),(9,40),(10,8),(10,31),(11,9),(11,15),(11,31),(11,39),(12,1),(12,24),(12,44),(12,48),(13,6),(13,37),(13,44),(14,21),(14,24),(14,29),(14,48),(14,50),(15,14),(15,20),(15,27),(15,37);
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
  KEY `event_ID` (`event_ID`),
  KEY `building_ID` (`building_ID`),
  KEY `idx_perf_event_artist` (`event_ID`,`artist_ID`),
  KEY `idx_perf_artist_event` (`artist_ID`,`event_ID`),
  KEY `idx_perf_group_event` (`group_ID`,`event_ID`),
  CONSTRAINT `performances_ibfk_1` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`),
  CONSTRAINT `performances_ibfk_2` FOREIGN KEY (`building_ID`) REFERENCES `building` (`building_ID`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`performance_start_time` < `performance_end_time`),
  CONSTRAINT `CONSTRAINT_2` CHECK (`performance_duration` <= 180)

) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performances`
--

LOCK TABLES `performances` WRITE;
/*!40000 ALTER TABLE `performances` DISABLE KEYS */;

INSERT INTO `performances` VALUES (1,1,'warm up','2017-08-18 08:50:00','2017-08-18 10:06:00',76,5,'Keller-Smith',NULL,7),(2,1,'special_guest','2017-08-18 10:21:00','2017-08-18 12:14:00',113,5,'Keller-Smith',37,NULL),(3,2,'special_guest','2017-08-19 09:03:00','2017-08-19 10:20:00',77,24,'Johnson and Sons',NULL,7),(4,3,'headline','2017-08-19 13:48:00','2017-08-19 15:36:00',108,23,'Davis LLC',NULL,8),(5,4,'special_guest','2017-08-19 18:19:00','2017-08-19 18:54:00',35,10,'Morton Inc',NULL,15),(6,4,'headline','2017-08-19 19:08:00','2017-08-19 20:08:00',60,10,'Morton Inc',NULL,11),(7,4,'headline','2017-08-19 20:17:00','2017-08-19 20:50:00',33,10,'Morton Inc',NULL,5),(8,6,'headline','2017-08-19 02:45:00','2017-08-19 04:21:00',96,16,'Ramos, Thomas and Alvarez',NULL,2),(9,6,'finale','2017-08-19 04:30:00','2017-08-19 05:47:00',77,16,'Ramos, Thomas and Alvarez',NULL,3),(10,7,'special_guest','2017-08-19 07:02:00','2017-08-19 09:00:00',118,24,'Johnson and Sons',NULL,7),(11,8,'headline','2017-08-19 11:01:00','2017-08-19 12:47:00',106,28,'Mclean-Moore',NULL,1),(12,9,'special_guest','2017-08-19 15:17:00','2017-08-19 16:15:00',58,18,'Norris LLC',NULL,15),(13,9,'special_guest','2017-08-19 16:28:00','2017-08-19 18:03:00',95,18,'Norris LLC',47,NULL),(14,10,'warm up','2017-08-20 08:36:00','2017-08-20 09:10:00',34,7,'Daniels-Martin',12,NULL),(15,11,'special_guest','2017-08-20 12:54:00','2017-08-20 14:51:00',117,6,'Miller PLC',NULL,11),(16,12,'finale','2018-09-08 08:40:00','2018-09-08 09:11:00',31,5,'Keller-Smith',23,NULL),(17,12,'finale','2018-09-08 09:21:00','2018-09-08 11:03:00',102,5,'Keller-Smith',NULL,3),(18,13,'warm up','2018-09-08 12:31:00','2018-09-08 14:07:00',96,21,'Webb LLC',NULL,5),(19,14,'special_guest','2018-09-08 17:04:00','2018-09-08 17:58:00',54,12,'Hernandez-Hartman',NULL,4),(20,14,'headline','2018-09-08 18:07:00','2018-09-08 19:16:00',69,12,'Hernandez-Hartman',NULL,5),(21,14,'special_guest','2018-09-08 19:30:00','2018-09-08 20:08:00',38,12,'Hernandez-Hartman',14,NULL),(22,16,'special_guest','2018-09-09 08:52:00','2018-09-09 09:24:00',32,21,'Webb LLC',NULL,13),(23,16,'special_guest','2018-09-09 09:38:00','2018-09-09 10:44:00',66,21,'Webb LLC',NULL,15),(24,17,'headline','2018-09-09 13:25:00','2018-09-09 14:41:00',76,18,'Norris LLC',30,NULL),(25,17,'finale','2018-09-09 14:51:00','2018-09-09 15:36:00',45,18,'Norris LLC',NULL,8),(26,18,'special_guest','2018-09-09 18:22:00','2018-09-09 18:56:00',34,2,'Lopez, Olson and Herrera',NULL,9),(27,18,'finale','2018-09-09 19:03:00','2018-09-09 20:10:00',67,2,'Lopez, Olson and Herrera',NULL,2),(28,20,'headline','2018-09-09 02:29:00','2018-09-09 04:23:00',114,16,'Ramos, Thomas and Alvarez',NULL,11),(29,20,'headline','2018-09-09 04:32:00','2018-09-09 05:37:00',65,16,'Ramos, Thomas and Alvarez',NULL,12),(30,21,'finale','2018-09-09 06:21:00','2018-09-09 07:04:00',43,12,'Hernandez-Hartman',NULL,14),(31,21,'special_guest','2018-09-09 07:14:00','2018-09-09 08:20:00',66,12,'Hernandez-Hartman',49,NULL),(32,22,'finale','2018-09-09 10:57:00','2018-09-09 11:52:00',55,28,'Mclean-Moore',39,NULL),(33,22,'finale','2018-09-09 12:01:00','2018-09-09 14:00:00',119,28,'Mclean-Moore',NULL,13),(34,23,'finale','2018-09-09 14:53:00','2018-09-09 15:27:00',34,29,'Clements PLC',NULL,9),(35,24,'special_guest','2018-09-09 19:50:00','2018-09-09 21:31:00',101,25,'Rogers-Clark',8,NULL),(36,26,'finale','2018-09-10 08:35:00','2018-09-10 09:09:00',34,19,'Weber and Sons',44,NULL),(37,27,'special_guest','2018-09-10 12:47:00','2018-09-10 13:49:00',62,27,'Good, Green and Potter',NULL,6),(38,27,'finale','2018-09-10 13:54:00','2018-09-10 14:42:00',48,27,'Good, Green and Potter',20,NULL),(39,28,'warm up','2018-09-10 16:31:00','2018-09-10 18:27:00',116,25,'Rogers-Clark',NULL,12),(40,28,'special_guest','2018-09-10 18:42:00','2018-09-10 19:58:00',76,25,'Rogers-Clark',NULL,8),(41,30,'special_guest','2018-09-10 01:37:00','2018-09-10 02:40:00',63,12,'Hernandez-Hartman',NULL,10),(42,31,'special_guest','2018-09-10 06:06:00','2018-09-10 06:51:00',45,10,'Morton Inc',NULL,15),(43,32,'finale','2018-09-10 10:19:00','2018-09-10 11:29:00',70,25,'Rogers-Clark',29,NULL),(44,32,'warm up','2018-09-10 11:36:00','2018-09-10 12:32:00',56,25,'Rogers-Clark',NULL,1),(45,33,'headline','2018-09-10 14:45:00','2018-09-10 16:14:00',89,22,'Russo-Fisher',NULL,6),(46,34,'special_guest','2018-09-10 19:50:00','2018-09-10 21:17:00',87,1,'Mullen LLC',48,NULL),(47,34,'special_guest','2018-09-10 21:23:00','2018-09-10 23:21:00',118,1,'Mullen LLC',NULL,9),(48,35,'finale','2018-09-11 09:37:00','2018-09-11 11:18:00',101,10,'Morton Inc',NULL,6),(49,36,'warm up','2018-09-11 14:48:00','2018-09-11 15:31:00',43,19,'Weber and Sons',NULL,10),(50,37,'special_guest','2018-09-11 19:35:00','2018-09-11 20:11:00',36,27,'Good, Green and Potter',6,NULL),(51,39,'warm up','2018-09-11 04:17:00','2018-09-11 04:54:00',37,6,'Miller PLC',NULL,8),(52,40,'finale','2018-09-11 08:30:00','2018-09-11 09:21:00',51,29,'Clements PLC',NULL,9),(53,41,'finale','2018-09-11 12:27:00','2018-09-11 13:51:00',84,12,'Hernandez-Hartman',NULL,15),(54,41,'warm up','2018-09-11 13:56:00','2018-09-11 15:25:00',89,12,'Hernandez-Hartman',NULL,12),(55,42,'finale','2018-09-11 17:04:00','2018-09-11 17:38:00',34,2,'Lopez, Olson and Herrera',44,NULL),(56,43,'special_guest','2019-08-28 08:20:00','2019-08-28 09:49:00',89,18,'Norris LLC',NULL,8),(57,44,'special_guest','2019-08-28 13:06:00','2019-08-28 14:19:00',73,20,'Smith Group',NULL,9),(58,44,'special_guest','2019-08-28 14:30:00','2019-08-28 15:10:00',40,20,'Smith Group',31,NULL),(59,45,'warm up','2019-08-28 17:02:00','2019-08-28 18:13:00',71,25,'Rogers-Clark',NULL,13),(60,47,'warm up','2019-08-28 02:23:00','2019-08-28 03:01:00',38,15,'Daugherty-Walls',NULL,10),(61,47,'finale','2019-08-28 03:15:00','2019-08-28 04:39:00',84,15,'Daugherty-Walls',NULL,4),(62,48,'headline','2019-08-28 06:45:00','2019-08-28 07:31:00',46,9,'Brown LLC',NULL,12),(63,48,'headline','2019-08-28 07:40:00','2019-08-28 09:20:00',100,9,'Brown LLC',50,NULL),(64,49,'headline','2019-08-28 11:43:00','2019-08-28 13:09:00',86,13,'Nguyen, Gonzalez and Walker',20,NULL),(65,49,'headline','2019-08-28 13:18:00','2019-08-28 13:56:00',38,13,'Nguyen, Gonzalez and Walker',16,NULL),(66,49,'finale','2019-08-28 14:07:00','2019-08-28 14:59:00',52,13,'Nguyen, Gonzalez and Walker',NULL,2),(67,50,'finale','2019-08-29 08:43:00','2019-08-29 09:33:00',50,19,'Weber and Sons',NULL,15),(68,50,'finale','2019-08-29 09:44:00','2019-08-29 11:40:00',116,19,'Weber and Sons',NULL,10),(69,51,'warm up','2019-08-29 13:17:00','2019-08-29 14:21:00',64,16,'Ramos, Thomas and Alvarez',NULL,8),(70,52,'headline','2019-08-29 18:07:00','2019-08-29 19:40:00',93,28,'Mclean-Moore',NULL,13),(71,52,'finale','2019-08-29 19:47:00','2019-08-29 20:50:00',63,28,'Mclean-Moore',49,NULL),(72,54,'finale','2019-08-29 03:34:00','2019-08-29 05:18:00',104,9,'Brown LLC',NULL,8),(73,55,'special_guest','2019-08-29 07:18:00','2019-08-29 08:09:00',51,21,'Webb LLC',32,NULL),(74,56,'headline','2019-08-29 11:01:00','2019-08-29 12:05:00',64,24,'Johnson and Sons',NULL,3),(75,56,'special_guest','2019-08-29 12:19:00','2019-08-29 13:50:00',91,24,'Johnson and Sons',3,NULL),(76,57,'finale','2019-08-29 15:45:00','2019-08-29 16:56:00',71,25,'Rogers-Clark',NULL,14),(77,57,'special_guest','2019-08-29 17:01:00','2019-08-29 18:57:00',116,25,'Rogers-Clark',NULL,8),(78,58,'special_guest','2019-08-29 20:16:00','2019-08-29 22:02:00',106,5,'Keller-Smith',NULL,11),(79,59,'warm up','2019-08-30 09:02:00','2019-08-30 09:52:00',50,26,'Miller-Gomez',NULL,3),(80,60,'warm up','2019-08-30 12:51:00','2019-08-30 14:10:00',79,3,'Smith Ltd',NULL,1),(81,60,'warm up','2019-08-30 14:20:00','2019-08-30 15:44:00',84,3,'Smith Ltd',NULL,5),(82,61,'special_guest','2019-08-30 17:12:00','2019-08-30 18:26:00',74,14,'Pope-Wheeler',41,NULL),(83,63,'special_guest','2019-08-30 01:08:00','2019-08-30 02:28:00',80,29,'Clements PLC',NULL,8),(84,64,'finale','2019-08-30 05:32:00','2019-08-30 06:20:00',48,23,'Davis LLC',NULL,14),(85,65,'finale','2019-08-30 08:56:00','2019-08-30 09:38:00',42,17,'Trevino, Jones and Walton',NULL,14),(86,65,'special_guest','2019-08-30 09:53:00','2019-08-30 11:17:00',84,17,'Trevino, Jones and Walton',NULL,12),(87,66,'warm up','2020-09-25 08:31:00','2020-09-25 09:18:00',47,27,'Good, Green and Potter',43,NULL),(88,67,'warm up','2020-09-25 13:12:00','2020-09-25 14:27:00',75,6,'Miller PLC',25,NULL),(89,67,'finale','2020-09-25 14:37:00','2020-09-25 15:41:00',64,6,'Miller PLC',NULL,6),(90,68,'headline','2020-09-25 18:13:00','2020-09-25 18:47:00',34,1,'Mullen LLC',NULL,10),(91,68,'finale','2020-09-25 19:01:00','2020-09-25 20:07:00',66,1,'Mullen LLC',18,NULL),(92,70,'special_guest','2020-09-25 01:49:00','2020-09-25 02:19:00',30,20,'Smith Group',48,NULL),(93,70,'finale','2020-09-25 02:29:00','2020-09-25 04:05:00',96,20,'Smith Group',NULL,6),(94,71,'special_guest','2020-09-25 06:22:00','2020-09-25 07:59:00',97,27,'Good, Green and Potter',NULL,13),(95,72,'special_guest','2020-09-25 10:38:00','2020-09-25 12:26:00',108,5,'Keller-Smith',38,NULL),(96,73,'headline','2020-09-26 09:02:00','2020-09-26 10:42:00',100,9,'Brown LLC',NULL,7),(97,74,'special_guest','2020-09-26 13:45:00','2020-09-26 14:59:00',74,21,'Webb LLC',43,NULL),(98,74,'finale','2020-09-26 15:14:00','2020-09-26 16:53:00',99,21,'Webb LLC',NULL,6),(99,75,'finale','2020-09-26 17:54:00','2020-09-26 18:31:00',37,29,'Clements PLC',NULL,13),(100,75,'finale','2020-09-26 18:37:00','2020-09-26 19:27:00',50,29,'Clements PLC',NULL,14),(101,75,'headline','2020-09-26 19:33:00','2020-09-26 21:07:00',94,29,'Clements PLC',29,NULL),(102,76,'special_guest','2020-09-27 09:39:00','2020-09-27 10:47:00',68,13,'Nguyen, Gonzalez and Walker',NULL,4),(103,76,'warm up','2020-09-27 10:58:00','2020-09-27 12:09:00',71,13,'Nguyen, Gonzalez and Walker',29,NULL),(104,77,'headline','2020-09-27 13:50:00','2020-09-27 15:21:00',91,3,'Smith Ltd',36,NULL),(105,77,'headline','2020-09-27 15:27:00','2020-09-27 16:34:00',67,3,'Smith Ltd',NULL,7),(106,78,'headline','2020-09-27 17:52:00','2020-09-27 18:23:00',31,18,'Norris LLC',42,NULL),(107,78,'warm up','2020-09-27 18:32:00','2020-09-27 19:13:00',41,18,'Norris LLC',5,NULL),(108,78,'warm up','2020-09-27 19:19:00','2020-09-27 20:01:00',42,18,'Norris LLC',23,NULL),(109,80,'warm up','2020-09-27 02:13:00','2020-09-27 02:46:00',33,19,'Weber and Sons',18,NULL),(110,80,'finale','2020-09-27 02:53:00','2020-09-27 04:39:00',106,19,'Weber and Sons',7,NULL),(111,81,'finale','2020-09-28 09:22:00','2020-09-28 10:33:00',71,7,'Daniels-Martin',15,NULL),(112,82,'finale','2020-09-28 14:17:00','2020-09-28 15:41:00',84,27,'Good, Green and Potter',NULL,9),(113,83,'warm up','2020-09-28 18:00:00','2020-09-28 19:03:00',63,8,'Holmes-Johnson',NULL,9),(114,83,'warm up','2020-09-28 19:09:00','2020-09-28 20:32:00',83,8,'Holmes-Johnson',NULL,14),(115,85,'warm up','2020-09-28 01:42:00','2020-09-28 03:20:00',98,20,'Smith Group',41,NULL),(116,86,'special_guest','2020-09-28 06:19:00','2020-09-28 07:28:00',69,5,'Keller-Smith',NULL,9),(117,87,'special_guest','2020-09-28 11:10:00','2020-09-28 12:42:00',92,11,'Stone and Sons',5,NULL),(118,87,'warm up','2020-09-28 12:51:00','2020-09-28 13:48:00',57,11,'Stone and Sons',25,NULL),(119,88,'warm up','2020-09-28 16:11:00','2020-09-28 16:53:00',42,30,'Krueger, Anderson and Romero',11,NULL),(120,89,'warm up','2020-09-29 09:17:00','2020-09-29 10:03:00',46,30,'Krueger, Anderson and Romero',39,NULL),(121,89,'finale','2020-09-29 10:15:00','2020-09-29 11:47:00',92,30,'Krueger, Anderson and Romero',40,NULL),(122,90,'finale','2020-09-29 13:35:00','2020-09-29 15:01:00',86,26,'Miller-Gomez',NULL,10),(123,90,'warm up','2020-09-29 15:08:00','2020-09-29 16:36:00',88,26,'Miller-Gomez',12,NULL),(124,91,'warm up','2020-09-29 18:29:00','2020-09-29 19:30:00',61,24,'Johnson and Sons',NULL,4),(125,93,'warm up','2020-09-29 04:11:00','2020-09-29 05:32:00',81,4,'Bridges LLC',NULL,13),(126,93,'headline','2020-09-29 05:42:00','2020-09-29 06:14:00',32,4,'Bridges LLC',NULL,7),(127,94,'finale','2020-09-29 08:17:00','2020-09-29 08:47:00',30,17,'Trevino, Jones and Walton',NULL,7),(128,94,'finale','2020-09-29 08:52:00','2020-09-29 10:08:00',76,17,'Trevino, Jones and Walton',NULL,9),(129,95,'headline','2020-09-29 12:07:00','2020-09-29 12:48:00',41,1,'Mullen LLC',46,NULL),(130,95,'finale','2020-09-29 12:54:00','2020-09-29 13:52:00',58,1,'Mullen LLC',14,NULL),(131,95,'special_guest','2020-09-29 13:57:00','2020-09-29 15:44:00',107,1,'Mullen LLC',NULL,9),(132,96,'finale','2021-08-08 08:45:00','2021-08-08 09:23:00',38,27,'Good, Green and Potter',35,NULL),(133,96,'warm up','2021-08-08 09:37:00','2021-08-08 11:23:00',106,27,'Good, Green and Potter',NULL,3),(134,97,'finale','2021-08-08 12:54:00','2021-08-08 13:50:00',56,9,'Brown LLC',NULL,7),(135,98,'special_guest','2021-08-08 17:26:00','2021-08-08 18:41:00',75,10,'Morton Inc',NULL,2),(136,98,'headline','2021-08-08 18:53:00','2021-08-08 19:40:00',47,10,'Morton Inc',NULL,12),(137,100,'headline','2021-08-08 02:36:00','2021-08-08 03:56:00',80,25,'Rogers-Clark',NULL,7),(138,100,'special_guest','2021-08-08 04:11:00','2021-08-08 05:10:00',59,25,'Rogers-Clark',48,NULL),(139,101,'special_guest','2021-08-09 09:29:00','2021-08-09 11:14:00',105,8,'Holmes-Johnson',1,NULL),(140,101,'warm up','2021-08-09 11:22:00','2021-08-09 12:33:00',71,8,'Holmes-Johnson',NULL,11),(141,102,'finale','2021-08-09 14:17:00','2021-08-09 15:13:00',56,14,'Pope-Wheeler',14,NULL),(142,103,'warm up','2021-08-09 19:22:00','2021-08-09 21:00:00',98,11,'Stone and Sons',11,NULL),(143,103,'special_guest','2021-08-09 21:07:00','2021-08-09 22:20:00',73,11,'Stone and Sons',50,NULL),(144,104,'warm up','2022-07-24 08:55:00','2022-07-24 09:57:00',62,8,'Holmes-Johnson',NULL,4),(145,104,'special_guest','2022-07-24 10:09:00','2022-07-24 11:20:00',71,8,'Holmes-Johnson',NULL,9),(146,105,'warm up','2022-07-25 08:38:00','2022-07-25 09:39:00',61,1,'Mullen LLC',NULL,9),(147,105,'finale','2022-07-25 09:47:00','2022-07-25 11:10:00',83,1,'Mullen LLC',NULL,6),(148,106,'warm up','2022-07-26 08:20:00','2022-07-26 09:38:00',78,10,'Morton Inc',4,NULL),(149,107,'finale','2022-07-26 13:02:00','2022-07-26 13:32:00',30,20,'Smith Group',NULL,5),(150,107,'special_guest','2022-07-26 13:43:00','2022-07-26 15:16:00',93,20,'Smith Group',NULL,1),(151,108,'headline','2022-07-26 16:32:00','2022-07-26 18:05:00',93,8,'Holmes-Johnson',NULL,15),(152,110,'special_guest','2022-07-26 01:25:00','2022-07-26 02:52:00',87,16,'Ramos, Thomas and Alvarez',NULL,13),(153,110,'finale','2022-07-26 03:07:00','2022-07-26 04:21:00',74,16,'Ramos, Thomas and Alvarez',7,NULL),(154,111,'finale','2022-07-27 08:56:00','2022-07-27 10:09:00',73,25,'Rogers-Clark',32,NULL),(155,111,'finale','2022-07-27 10:17:00','2022-07-27 11:50:00',93,25,'Rogers-Clark',49,NULL),(156,112,'headline','2022-07-27 12:43:00','2022-07-27 13:45:00',62,22,'Russo-Fisher',NULL,14),(157,112,'warm up','2022-07-27 13:59:00','2022-07-27 15:08:00',69,22,'Russo-Fisher',NULL,8),(158,113,'warm up','2022-07-27 16:21:00','2022-07-27 16:55:00',34,23,'Davis LLC',NULL,12),(159,114,'headline','2022-07-28 09:03:00','2022-07-28 10:22:00',79,27,'Good, Green and Potter',NULL,12),(160,115,'special_guest','2023-08-12 08:33:00','2023-08-12 09:04:00',31,26,'Miller-Gomez',31,NULL),(161,116,'finale','2023-08-12 13:32:00','2023-08-12 15:10:00',98,24,'Johnson and Sons',18,NULL),(162,117,'headline','2023-08-12 17:16:00','2023-08-12 18:03:00',47,4,'Bridges LLC',NULL,5),(163,118,'special_guest','2023-08-13 09:38:00','2023-08-13 10:14:00',36,16,'Ramos, Thomas and Alvarez',15,NULL),(164,119,'finale','2023-08-13 14:20:00','2023-08-13 15:14:00',54,11,'Stone and Sons',23,NULL),(165,119,'finale','2023-08-13 15:22:00','2023-08-13 17:05:00',103,11,'Stone and Sons',NULL,1),(166,120,'finale','2023-08-13 17:55:00','2023-08-13 19:26:00',91,7,'Daniels-Martin',49,NULL),(167,120,'warm up','2023-08-13 19:40:00','2023-08-13 20:30:00',50,7,'Daniels-Martin',28,NULL),(168,121,'warm up','2023-08-14 08:46:00','2023-08-14 10:20:00',94,15,'Daugherty-Walls',NULL,13),(169,121,'headline','2023-08-14 10:30:00','2023-08-14 11:18:00',48,15,'Daugherty-Walls',NULL,6),(170,122,'headline','2023-08-14 13:36:00','2023-08-14 14:17:00',41,27,'Good, Green and Potter',NULL,12),(171,123,'headline','2023-08-14 17:17:00','2023-08-14 17:54:00',37,26,'Miller-Gomez',NULL,7),(172,123,'warm up','2023-08-14 18:00:00','2023-08-14 19:46:00',106,26,'Miller-Gomez',NULL,2),(173,125,'headline','2023-08-14 02:29:00','2023-08-14 03:18:00',49,11,'Stone and Sons',7,NULL),(174,125,'headline','2023-08-14 03:26:00','2023-08-14 04:16:00',50,11,'Stone and Sons',NULL,10),(175,125,'finale','2023-08-14 04:24:00','2023-08-14 05:07:00',43,11,'Stone and Sons',NULL,3),(176,126,'warm up','2023-08-14 06:34:00','2023-08-14 07:55:00',81,18,'Norris LLC',NULL,7),(177,127,'warm up','2023-08-14 11:02:00','2023-08-14 12:35:00',93,11,'Stone and Sons',NULL,8),(178,127,'warm up','2023-08-14 12:42:00','2023-08-14 14:15:00',93,11,'Stone and Sons',NULL,15),(179,128,'warm up','2023-08-15 08:45:00','2023-08-15 10:05:00',80,6,'Miller PLC',NULL,8),(180,128,'special_guest','2023-08-15 10:12:00','2023-08-15 12:05:00',113,6,'Miller PLC',NULL,6),(181,129,'warm up','2023-08-15 13:12:00','2023-08-15 14:11:00',59,19,'Weber and Sons',NULL,14),(182,130,'special_guest','2023-08-15 17:17:00','2023-08-15 19:14:00',117,12,'Hernandez-Hartman',NULL,13),(183,132,'headline','2023-08-15 02:55:00','2023-08-15 04:06:00',71,7,'Daniels-Martin',NULL,3),(184,133,'special_guest','2023-08-15 06:45:00','2023-08-15 07:47:00',62,11,'Stone and Sons',NULL,1),(185,133,'finale','2023-08-15 07:58:00','2023-08-15 09:34:00',96,11,'Stone and Sons',41,NULL),(186,134,'warm up','2023-08-15 10:25:00','2023-08-15 11:20:00',55,21,'Webb LLC',NULL,15),(187,134,'headline','2023-08-15 11:26:00','2023-08-15 13:17:00',111,21,'Webb LLC',31,NULL),(188,135,'headline','2023-08-15 14:54:00','2023-08-15 16:48:00',114,26,'Miller-Gomez',6,NULL),(189,135,'headline','2023-08-15 16:56:00','2023-08-15 17:44:00',48,26,'Miller-Gomez',40,NULL),(190,136,'warm up','2023-08-15 19:06:00','2023-08-15 20:38:00',92,15,'Daugherty-Walls',NULL,6),(191,138,'special_guest','2023-08-16 09:28:00','2023-08-16 11:25:00',117,30,'Krueger, Anderson and Romero',NULL,4),(192,139,'warm up','2023-08-16 14:08:00','2023-08-16 15:42:00',94,18,'Norris LLC',NULL,15),(193,139,'headline','2023-08-16 15:52:00','2023-08-16 16:38:00',46,18,'Norris LLC',45,NULL),(194,140,'finale','2023-08-16 17:53:00','2023-08-16 18:37:00',44,3,'Smith Ltd',NULL,9),(195,140,'headline','2023-08-16 18:44:00','2023-08-16 20:10:00',86,3,'Smith Ltd',30,NULL),(196,142,'headline','2023-08-16 02:52:00','2023-08-16 03:26:00',34,29,'Clements PLC',NULL,13),(197,142,'special_guest','2023-08-16 03:40:00','2023-08-16 05:00:00',80,29,'Clements PLC',NULL,1),(198,143,'warm up','2023-08-16 07:39:00','2023-08-16 09:18:00',99,4,'Bridges LLC',22,NULL),(199,144,'special_guest','2023-08-16 11:19:00','2023-08-16 12:35:00',76,16,'Ramos, Thomas and Alvarez',NULL,9),(200,144,'headline','2023-08-16 12:43:00','2023-08-16 13:54:00',71,16,'Ramos, Thomas and Alvarez',19,NULL),(201,145,'finale','2023-08-16 15:28:00','2023-08-16 16:02:00',34,24,'Johnson and Sons',16,NULL),(202,145,'finale','2023-08-16 16:10:00','2023-08-16 16:58:00',48,24,'Johnson and Sons',NULL,11),(203,146,'headline','2023-08-16 19:57:00','2023-08-16 20:49:00',52,3,'Smith Ltd',50,NULL),(204,146,'special_guest','2023-08-16 21:01:00','2023-08-16 22:24:00',83,3,'Smith Ltd',NULL,9),(205,147,'finale','2024-08-03 08:53:00','2024-08-03 10:13:00',80,22,'Russo-Fisher',NULL,7),(206,147,'headline','2024-08-03 10:18:00','2024-08-03 11:14:00',56,22,'Russo-Fisher',NULL,8),(207,148,'special_guest','2024-08-03 12:43:00','2024-08-03 14:31:00',108,13,'Nguyen, Gonzalez and Walker',NULL,5),(208,148,'headline','2024-08-03 14:36:00','2024-08-03 15:38:00',62,13,'Nguyen, Gonzalez and Walker',NULL,6),(209,149,'warm up','2024-08-03 17:16:00','2024-08-03 19:15:00',119,12,'Hernandez-Hartman',NULL,2),(210,151,'special_guest','2024-08-04 08:48:00','2024-08-04 10:21:00',93,13,'Nguyen, Gonzalez and Walker',NULL,9),(211,151,'warm up','2024-08-04 10:32:00','2024-08-04 11:46:00',74,13,'Nguyen, Gonzalez and Walker',14,NULL),(212,152,'special_guest','2024-08-04 13:41:00','2024-08-04 15:26:00',105,19,'Weber and Sons',NULL,4),(213,153,'headline','2024-08-04 17:42:00','2024-08-04 18:33:00',51,24,'Johnson and Sons',NULL,7),(214,153,'finale','2024-08-04 18:45:00','2024-08-04 20:33:00',108,24,'Johnson and Sons',27,NULL),(215,155,'finale','2024-08-04 02:27:00','2024-08-04 02:57:00',30,8,'Holmes-Johnson',NULL,9),(216,156,'special_guest','2024-08-04 06:47:00','2024-08-04 07:35:00',48,20,'Smith Group',NULL,6),(217,157,'special_guest','2024-08-04 11:37:00','2024-08-04 13:25:00',108,13,'Nguyen, Gonzalez and Walker',23,NULL),(218,157,'headline','2024-08-04 13:31:00','2024-08-04 14:22:00',51,13,'Nguyen, Gonzalez and Walker',30,NULL),(219,158,'finale','2024-08-04 15:52:00','2024-08-04 17:52:00',120,15,'Daugherty-Walls',NULL,14),(220,159,'warm up','2024-08-05 08:42:00','2024-08-05 10:14:00',92,21,'Webb LLC',4,NULL),(221,159,'special_guest','2024-08-05 10:20:00','2024-08-05 11:30:00',70,21,'Webb LLC',25,NULL),(222,160,'warm up','2024-08-05 12:48:00','2024-08-05 13:29:00',41,7,'Daniels-Martin',38,NULL),(223,160,'special_guest','2024-08-05 13:38:00','2024-08-05 14:38:00',60,7,'Daniels-Martin',NULL,11),(224,160,'special_guest','2024-08-05 14:48:00','2024-08-05 15:53:00',65,7,'Daniels-Martin',NULL,9),(225,161,'headline','2024-08-06 09:38:00','2024-08-06 11:34:00',116,2,'Lopez, Olson and Herrera',NULL,15),(226,161,'special_guest','2024-08-06 11:49:00','2024-08-06 12:35:00',46,2,'Lopez, Olson and Herrera',NULL,14),(227,162,'finale','2025-07-19 09:34:00','2025-07-19 10:36:00',62,23,'Davis LLC',NULL,12),(228,162,'warm up','2025-07-19 10:48:00','2025-07-19 11:32:00',44,23,'Davis LLC',NULL,1),(229,163,'headline','2025-07-19 13:37:00','2025-07-19 15:25:00',108,2,'Lopez, Olson and Herrera',NULL,13),(230,164,'headline','2025-07-19 17:15:00','2025-07-19 18:58:00',103,12,'Hernandez-Hartman',21,NULL),(231,164,'special_guest','2025-07-19 19:05:00','2025-07-19 20:21:00',76,12,'Hernandez-Hartman',40,NULL),(232,165,'headline','2025-07-20 08:53:00','2025-07-20 10:29:00',96,22,'Russo-Fisher',NULL,3),(233,166,'headline','2025-07-20 12:38:00','2025-07-20 13:45:00',67,6,'Miller PLC',43,NULL),(234,166,'warm up','2025-07-20 13:59:00','2025-07-20 14:29:00',30,6,'Miller PLC',NULL,3),(235,167,'warm up','2025-07-21 09:19:00','2025-07-21 09:53:00',34,27,'Good, Green and Potter',43,NULL),(236,168,'headline','2025-07-21 13:20:00','2025-07-21 15:18:00',118,15,'Daugherty-Walls',46,NULL),(237,169,'warm up','2025-07-21 17:18:00','2025-07-21 18:51:00',93,19,'Weber and Sons',NULL,3),(238,171,'special_guest','2025-07-21 02:09:00','2025-07-21 02:42:00',33,23,'Davis LLC',7,NULL),(239,171,'warm up','2025-07-21 02:55:00','2025-07-21 03:28:00',33,23,'Davis LLC',5,NULL),(240,171,'warm up','2025-07-21 03:38:00','2025-07-21 04:48:00',70,23,'Davis LLC',42,NULL),(241,172,'finale','2025-07-21 07:05:00','2025-07-21 08:39:00',94,7,'Daniels-Martin',NULL,3),(242,172,'warm up','2025-07-21 08:46:00','2025-07-21 10:16:00',90,7,'Daniels-Martin',NULL,2),(243,173,'headline','2025-07-22 08:53:00','2025-07-22 10:48:00',115,25,'Rogers-Clark',6,NULL),(244,174,'finale','2025-07-22 13:32:00','2025-07-22 15:25:00',113,9,'Brown LLC',NULL,12),(245,175,'warm up','2025-07-22 17:54:00','2025-07-22 19:06:00',72,1,'Mullen LLC',NULL,11),(246,175,'finale','2025-07-22 19:19:00','2025-07-22 20:42:00',83,1,'Mullen LLC',NULL,2),(247,177,'finale','2025-07-22 02:19:00','2025-07-22 04:06:00',107,25,'Rogers-Clark',NULL,1),(248,178,'finale','2025-07-22 06:32:00','2025-07-22 07:49:00',77,8,'Holmes-Johnson',41,NULL),(249,179,'headline','2025-07-22 10:20:00','2025-07-22 11:54:00',94,22,'Russo-Fisher',41,NULL),(250,179,'headline','2025-07-22 12:06:00','2025-07-22 13:02:00',56,22,'Russo-Fisher',NULL,7),(251,180,'headline','2025-07-22 15:02:00','2025-07-22 16:42:00',100,10,'Morton Inc',15,NULL),(252,180,'special_guest','2025-07-22 16:47:00','2025-07-22 17:52:00',65,10,'Morton Inc',NULL,1),(253,181,'finale','2025-07-22 19:02:00','2025-07-22 20:56:00',114,5,'Keller-Smith',28,NULL),(254,183,'headline','2025-07-23 08:47:00','2025-07-23 10:23:00',96,15,'Daugherty-Walls',25,NULL),(255,184,'special_guest','2026-09-27 08:32:00','2026-09-27 09:07:00',35,30,'Krueger, Anderson and Romero',NULL,10),(256,185,'special_guest','2026-09-28 09:33:00','2026-09-28 11:19:00',106,19,'Weber and Sons',NULL,6),(257,186,'warm up','2026-09-28 13:46:00','2026-09-28 15:00:00',74,29,'Clements PLC',NULL,8),(258,187,'finale','2026-09-28 18:33:00','2026-09-28 19:18:00',45,15,'Daugherty-Walls',NULL,8),(259,189,'special_guest','2026-09-28 03:15:00','2026-09-28 04:28:00',73,17,'Trevino, Jones and Walton',NULL,3),(260,190,'special_guest','2026-09-28 07:39:00','2026-09-28 09:32:00',113,26,'Miller-Gomez',25,NULL),(261,191,'finale','2026-09-28 12:19:00','2026-09-28 13:21:00',62,5,'Keller-Smith',28,NULL),(262,191,'finale','2026-09-28 13:31:00','2026-09-28 15:09:00',98,5,'Keller-Smith',NULL,15),(263,192,'headline','2026-09-28 16:38:00','2026-09-28 17:41:00',63,1,'Mullen LLC',NULL,3),(264,192,'warm up','2026-09-28 17:55:00','2026-09-28 18:54:00',59,1,'Mullen LLC',9,NULL),(265,193,'finale','2026-09-29 09:01:00','2026-09-29 10:59:00',118,15,'Daugherty-Walls',43,NULL),(266,194,'finale','2026-09-29 14:02:00','2026-09-29 15:55:00',113,17,'Trevino, Jones and Walton',13,NULL),(267,195,'finale','2026-09-29 18:17:00','2026-09-29 18:53:00',36,26,'Miller-Gomez',NULL,4),(268,195,'headline','2026-09-29 19:05:00','2026-09-29 20:47:00',102,26,'Miller-Gomez',NULL,4),(269,197,'finale','2026-09-29 02:46:00','2026-09-29 04:43:00',117,5,'Keller-Smith',NULL,5),(270,198,'finale','2026-09-30 08:34:00','2026-09-30 10:32:00',118,24,'Johnson and Sons',43,NULL),(271,198,'warm up','2026-09-30 10:43:00','2026-09-30 11:52:00',69,24,'Johnson and Sons',NULL,1),(272,199,'warm up','2026-09-30 13:18:00','2026-09-30 14:21:00',63,6,'Miller PLC',15,NULL),(273,199,'headline','2026-09-30 14:30:00','2026-09-30 15:13:00',43,6,'Miller PLC',40,NULL),(274,200,'finale','2026-09-30 17:59:00','2026-09-30 19:49:00',110,16,'Ramos, Thomas and Alvarez',NULL,4),(275,202,'warm up','2026-09-30 02:41:00','2026-09-30 03:56:00',75,25,'Rogers-Clark',NULL,3),(276,203,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',51,NULL),(277,203,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',51,NULL),(278,203,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',51,NULL),(279,204,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',52,NULL),(280,204,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',52,NULL),(281,204,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',52,NULL),(282,205,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',52,NULL),(283,205,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',52,NULL),(284,205,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',52,NULL),(285,206,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(286,206,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(287,206,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(288,207,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(289,207,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(290,207,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(291,208,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(292,208,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(293,208,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(294,209,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(295,209,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(296,209,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(297,210,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(298,210,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(299,210,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(300,211,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(301,211,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(302,211,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(303,212,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(304,212,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(305,212,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(306,213,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(307,213,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(308,213,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(309,214,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(310,214,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(311,214,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL),(312,215,'warm up','2025-08-01 18:00:00','2025-08-01 18:25:00',25,31,'Global Stage',53,NULL),(313,215,'warm up','2025-08-01 18:30:00','2025-08-01 18:55:00',25,31,'Global Stage',53,NULL),(314,215,'warm up','2025-08-01 19:00:00','2025-08-01 19:25:00',25,31,'Global Stage',53,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personel`
--

LOCK TABLES `personel` WRITE;
/*!40000 ALTER TABLE `personel` DISABLE KEYS */;
INSERT INTO `personel` VALUES (1,'Amber','Chan',41,'estuart@example.com','+1-919-210-0423x5564','intermidiate'),(2,'Stephanie','Johnson',28,'gravesrobert@example.com','(492)398-9982x741','beginer'),(3,'Erin','Short',57,'coconnell@example.org','446.671.9244x8829','intermidiate'),(4,'John','Meyers',40,'harperedward@example.org','001-386-928-7026x508','beginer'),(5,'Manuel','Clark',31,'jonesnicole@example.org','(847)953-6841','intern'),(6,'Ashley','Hale',32,'johnsonmitchell@example.net','(731)576-0516x68583','beginer'),(7,'Jordan','Ortiz',31,'pwallace@example.net','+1-589-665-9292x1950','intermidiate'),(8,'Brittney','Thomas',58,'mhenderson@example.org','878-889-7002x531','experienced'),(9,'Lauren','Franklin',53,'kristina38@example.org','(629)320-5933','intermidiate'),(10,'Dan','Keller',27,'unewman@example.com','9195252114','intermidiate');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resale_queue`
--

LOCK TABLES `resale_queue` WRITE;
/*!40000 ALTER TABLE `resale_queue` DISABLE KEYS */;
INSERT INTO `resale_queue` VALUES (1,39,NULL,'Indeed Concert','backstage',NULL,'2025-04-23 15:30:00'),(2,NULL,32,'Interview Concert','general_admission',207,'2022-07-15 12:15:00'),(3,NULL,72,'Physical Concert','general_admission',22,'2025-04-21 17:30:00'),(4,133,NULL,'Involve Concert','backstage',NULL,'2025-04-21 10:15:00'),(5,NULL,97,'Whose Concert','general_admission',150,'2025-04-27 10:45:00'),(6,NULL,21,'Buy Concert','general_admission',79,'2018-08-26 12:00:00'),(7,NULL,112,'Difficult Concert','backstage',41,'2019-08-10 11:45:00'),(8,135,NULL,'Student Concert','general_admission',NULL,'2020-09-10 16:30:00'),(9,NULL,144,'Pay Concert','backstage',58,'2025-04-19 13:45:00'),(10,NULL,46,'Clearly Concert','general_admission',202,'2018-08-24 10:45:00'),(11,NULL,121,'Their Concert','backstage',178,'2023-07-27 09:30:00');
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
  `ticket_ID` int(11) DEFAULT NULL,
  `artist_performance` enum('1','2','3','4','5') DEFAULT NULL,
  `sound_and_lighting` enum('1','2','3','4','5') DEFAULT NULL,
  `stage_presence` enum('1','2','3','4','5') DEFAULT NULL,
  `event_organization` enum('1','2','3','4','5') DEFAULT NULL,
  `overall_impression` enum('1','2','3','4','5') DEFAULT NULL,
  PRIMARY KEY (`review_ID`),
  KEY `ticket_ID` (`ticket_ID`),
  KEY `idx_review_ticket` (`ticket_ID`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`ticket_ID`) REFERENCES `ticket` (`ticket_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,'4','2','4','1','3'),(2,2,'1','5','2','5','3'),(3,3,'5','1','1','4','2'),(4,5,'2','4','5','3','4'),(5,6,'1','3','5','5','1'),(6,7,'2','5','4','2','4'),(7,8,'4','3','1','2','1'),(8,9,'2','2','5','2','1'),(9,10,'1','3','2','2','4'),(10,11,'3','5','2','2','4'),(11,12,'1','5','3','5','4'),(12,13,'1','3','5','1','1'),(13,14,'1','2','3','3','1'),(14,15,'2','4','2','2','3'),(15,16,'2','1','1','2','5'),(16,17,'4','1','4','4','5'),(17,18,'5','2','1','4','1'),(18,20,'2','2','3','3','5'),(19,24,'3','1','3','3','2'),(20,25,'5','3','3','2','3'),(21,28,'1','3','1','3','5'),(22,29,'4','4','2','5','1'),(23,33,'2','4','2','1','4'),(24,34,'2','1','1','2','3'),(25,36,'2','5','1','1','5'),(26,37,'5','2','2','4','2'),(27,38,'3','5','2','1','1'),(28,39,'2','2','2','5','4'),(29,40,'5','2','3','5','1'),(30,43,'2','1','2','1','3'),(31,44,'2','3','3','4','3'),(32,45,'5','3','4','1','4'),(33,46,'5','5','2','3','5'),(34,48,'5','4','1','5','4'),(35,49,'2','4','3','5','5'),(36,50,'4','5','5','1','2'),(37,51,'3','1','5','1','4'),(38,52,'1','4','2','3','5'),(39,53,'1','3','5','3','4'),(40,54,'1','5','4','3','2'),(41,55,'3','3','3','1','5'),(42,56,'1','3','2','4','3'),(43,57,'5','1','5','4','2'),(44,59,'1','1','3','1','1'),(45,60,'4','2','2','1','3'),(46,61,'2','1','5','5','2'),(47,63,'5','1','4','3','4'),(48,64,'4','1','4','4','3'),(49,65,'1','5','4','1','4'),(50,66,'1','4','2','3','4'),(51,67,'2','3','3','2','4'),(52,68,'3','3','4','1','5'),(53,69,'3','5','4','4','3'),(54,70,'4','1','3','2','2'),(55,71,'4','3','5','5','4'),(56,72,'4','5','1','2','5'),(57,73,'2','3','1','1','2'),(58,74,'5','3','3','3','5'),(59,75,'4','3','1','4','2'),(60,77,'5','4','4','4','5'),(61,80,'4','2','4','1','5'),(62,82,'2','1','1','4','1'),(63,84,'4','4','3','3','1'),(64,86,'1','4','5','5','1'),(65,88,'5','4','2','4','5'),(66,89,'2','4','3','3','2'),(67,90,'4','1','1','4','2'),(68,91,'3','5','3','1','3'),(69,92,'3','1','5','2','2'),(70,93,'3','1','4','5','1'),(71,95,'4','1','2','1','4'),(72,99,'5','5','5','4','2'),(73,100,'3','5','5','1','4'),(74,102,'1','3','2','4','4'),(75,103,'4','2','1','3','4'),(76,104,'1','2','3','5','4'),(77,105,'4','3','2','1','3'),(78,106,'4','5','5','3','4'),(79,108,'5','5','5','4','3'),(80,109,'5','5','2','1','3'),(81,110,'2','1','4','3','1'),(82,111,'3','2','1','4','5'),(83,115,'1','3','5','1','4'),(84,116,'1','5','5','2','1'),(85,118,'1','3','3','2','4'),(86,119,'1','5','2','4','3'),(87,121,'5','2','1','5','4'),(88,122,'5','4','5','3','5'),(89,123,'4','4','4','2','3'),(90,124,'3','4','5','5','1'),(91,127,'5','5','2','5','1'),(92,128,'2','2','3','2','1'),(93,129,'2','1','3','3','1'),(94,130,'5','3','3','2','3'),(95,131,'2','4','4','3','1'),(96,132,'2','1','5','4','1'),(97,135,'2','2','3','4','3'),(98,136,'3','2','5','3','3'),(99,137,'3','3','2','1','3'),(100,138,'1','4','1','3','1'),(101,139,'3','1','3','5','1'),(102,140,'4','5','1','4','5'),(103,141,'3','2','4','2','2'),(104,142,'3','5','1','4','2'),(105,143,'3','3','5','2','5'),(106,144,'4','3','1','2','3'),(107,145,'1','3','2','1','5'),(108,147,'5','5','4','2','1'),(109,149,'2','5','3','3','1'),(110,152,'4','5','2','2','5'),(111,153,'1','3','2','1','3'),(112,155,'3','3','1','3','2'),(113,156,'4','3','1','2','1'),(114,158,'3','1','5','2','5'),(115,159,'5','5','5','2','5'),(116,162,'4','5','2','1','2'),(117,165,'4','4','4','3','2'),(118,166,'3','5','5','4','2'),(119,167,'5','1','1','4','5'),(120,169,'2','5','1','4','4'),(121,170,'1','4','2','4','1'),(122,172,'5','5','3','4','3'),(123,174,'5','1','1','2','3'),(124,175,'3','4','4','2','3'),(125,176,'3','5','4','2','5'),(126,179,'1','5','4','1','4'),(127,180,'5','4','1','5','3'),(128,181,'4','1','1','1','1'),(129,182,'3','3','4','2','3'),(130,184,'5','5','5','2','3'),(131,185,'3','3','4','5','1'),(132,186,'2','5','5','4','4'),(133,187,'4','5','1','2','5'),(134,188,'3','1','4','1','5'),(135,189,'1','1','4','1','3'),(136,190,'4','5','1','1','5'),(137,192,'5','4','2','2','2'),(138,194,'3','3','1','4','5'),(139,196,'2','1','5','5','3'),(140,197,'4','5','5','4','1'),(141,198,'5','2','5','1','2'),(142,199,'2','4','5','1','5'),(143,201,'5','5','1','1','4'),(144,203,'3','3','3','3','1'),(145,205,'5','5','1','4','5'),(146,206,'2','5','2','2','2'),(147,208,'1','4','1','4','4'),(148,209,'2','3','2','3','3'),(149,210,'1','2','5','5','1'),(150,211,'2','2','5','1','1'),(151,212,'3','2','5','2','2'),(152,216,'5','4','4','1','2'),(153,217,'5','4','4','3','3'),(154,218,'4','4','4','3','1'),(155,219,'1','5','4','1','1'),(156,220,'2','4','3','2','5');
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

INSERT INTO `role_of_personel_on_event` VALUES (1,4,'support'),(1,6,'security'),(1,8,'techincal'),(1,16,'support'),(1,17,'security'),(1,22,'support'),(1,27,'support'),(1,31,'security'),(1,38,'support'),(1,41,'techincal'),(1,49,'techincal'),(1,50,'security'),(1,56,'support'),(1,57,'techincal'),(1,60,'techincal'),(1,61,'support'),(1,62,'support'),(1,68,'techincal'),(1,69,'security'),(1,70,'support'),(1,72,'support'),(1,77,'security'),(1,82,'security'),(1,88,'security'),(1,89,'security'),(1,94,'techincal'),(1,99,'support'),(1,108,'techincal'),(1,109,'security'),(1,117,'techincal'),(1,119,'techincal'),(1,122,'techincal'),(1,125,'techincal'),(1,129,'support'),(1,133,'security'),(1,135,'security'),(1,151,'security'),(1,155,'support'),(1,158,'support'),(1,162,'security'),(1,163,'support'),(1,164,'techincal'),(1,167,'security'),(1,168,'techincal'),(1,169,'techincal'),(1,171,'support'),(1,174,'support'),(1,185,'support'),(1,189,'support'),(1,194,'techincal'),(1,195,'support'),(1,198,'security'),(2,1,'security'),(2,3,'techincal'),(2,8,'security'),(2,11,'techincal'),(2,16,'support'),(2,21,'security'),(2,23,'support'),(2,24,'support'),(2,25,'support'),(2,30,'support'),(2,34,'security'),(2,36,'support'),(2,37,'support'),(2,38,'security'),(2,39,'techincal'),(2,40,'techincal'),(2,42,'techincal'),(2,43,'support'),(2,46,'security'),(2,47,'security'),(2,48,'security'),(2,51,'security'),(2,52,'techincal'),(2,53,'security'),(2,56,'security'),(2,60,'security'),(2,62,'techincal'),(2,74,'security'),(2,78,'techincal'),(2,86,'support'),(2,87,'techincal'),(2,92,'security'),(2,102,'support'),(2,103,'techincal'),(2,111,'support'),(2,114,'support'),(2,115,'techincal'),(2,118,'support'),(2,120,'techincal'),(2,131,'security'),(2,132,'security'),(2,134,'support'),(2,135,'techincal'),(2,136,'support'),(2,139,'security'),(2,140,'support'),(2,144,'techincal'),(2,145,'techincal'),(2,147,'security'),(2,149,'security'),(2,154,'support'),(2,161,'support'),(2,162,'techincal'),(2,163,'techincal'),(2,165,'techincal'),(2,166,'support'),(2,172,'security'),(2,173,'support'),(2,174,'support'),(2,175,'security'),(2,178,'techincal'),(2,180,'security'),(2,182,'support'),(2,188,'support'),(2,190,'support'),(2,193,'support'),(2,194,'security'),(2,197,'techincal'),(2,199,'techincal'),(2,201,'security'),(3,3,'security'),(3,7,'security'),(3,10,'security'),(3,12,'techincal'),(3,13,'techincal'),(3,20,'techincal'),(3,22,'security'),(3,24,'support'),(3,25,'techincal'),(3,34,'security'),(3,35,'techincal'),(3,37,'techincal'),(3,39,'security'),(3,41,'support'),(3,44,'security'),(3,45,'techincal'),(3,54,'support'),(3,56,'techincal'),(3,57,'techincal'),(3,58,'techincal'),(3,59,'security'),(3,64,'support'),(3,65,'support'),(3,66,'techincal'),(3,67,'security'),(3,70,'security'),(3,71,'support'),(3,72,'support'),(3,82,'security'),(3,83,'support'),(3,89,'support'),(3,92,'security'),(3,96,'techincal'),(3,101,'support'),(3,110,'support'),(3,112,'support'),(3,114,'support'),(3,116,'techincal'),(3,118,'security'),(3,121,'security'),(3,124,'security'),(3,128,'security'),(3,130,'support'),(3,136,'techincal'),(3,137,'security'),(3,139,'security'),(3,143,'support'),(3,145,'support'),(3,146,'support'),(3,147,'support'),(3,150,'security'),(3,156,'techincal'),(3,157,'techincal'),(3,159,'security'),(3,166,'security'),(3,168,'techincal'),(3,173,'support'),(3,176,'security'),(3,177,'techincal'),(3,181,'security'),(3,182,'techincal'),(3,189,'support'),(3,191,'security'),(3,195,'security'),(3,196,'security'),(3,197,'support'),(3,199,'techincal'),(4,1,'techincal'),(4,2,'techincal'),(4,3,'support'),(4,5,'techincal'),(4,10,'techincal'),(4,12,'security'),(4,18,'techincal'),(4,23,'support'),(4,30,'support'),(4,31,'support'),(4,33,'security'),(4,36,'techincal'),(4,37,'techincal'),(4,39,'techincal'),(4,41,'security'),(4,46,'support'),(4,48,'security'),(4,52,'security'),(4,58,'techincal'),(4,61,'security'),(4,66,'security'),(4,70,'techincal'),(4,73,'support'),(4,75,'security'),(4,79,'techincal'),(4,81,'support'),(4,82,'security'),(4,83,'support'),(4,90,'security'),(4,98,'security'),(4,100,'support'),(4,103,'techincal'),(4,105,'security'),(4,109,'support'),(4,112,'support'),(4,119,'security'),(4,120,'security'),(4,125,'security'),(4,126,'support'),(4,135,'techincal'),(4,136,'techincal'),(4,141,'techincal'),(4,142,'techincal'),(4,144,'security'),(4,147,'security'),(4,152,'support'),(4,157,'techincal'),(4,160,'support'),(4,161,'techincal'),(4,165,'security'),(4,167,'security'),(4,171,'security'),(4,173,'support'),(4,175,'support'),(4,177,'support'),(4,179,'support'),(4,181,'support'),(4,182,'security'),(4,183,'techincal'),(4,184,'support'),(4,185,'security'),(4,187,'support'),(4,190,'support'),(4,196,'techincal'),(4,197,'security'),(4,202,'support'),(5,1,'support'),(5,7,'security'),(5,19,'techincal'),(5,23,'support'),(5,24,'support'),(5,28,'security'),(5,29,'techincal'),(5,33,'security'),(5,41,'security'),(5,44,'support'),(5,49,'security'),(5,51,'security'),(5,55,'support'),(5,57,'support'),(5,62,'security'),(5,64,'security'),(5,65,'security'),(5,66,'support'),(5,73,'support'),(5,74,'security'),(5,85,'support'),(5,87,'security'),(5,91,'security'),(5,97,'security'),(5,99,'techincal'),(5,103,'techincal'),(5,108,'support'),(5,110,'security'),(5,111,'security'),(5,116,'techincal'),(5,119,'support'),(5,123,'support'),(5,124,'security'),(5,125,'support'),(5,129,'techincal'),(5,130,'security'),(5,134,'support'),(5,138,'techincal'),(5,139,'security'),(5,140,'techincal'),(5,141,'security'),(5,142,'support'),(5,146,'techincal'),(5,148,'support'),(5,151,'support'),(5,153,'support'),(5,154,'security'),(5,167,'support'),(5,170,'security'),(5,178,'techincal'),(5,181,'support'),(5,185,'support'),(5,194,'techincal'),(5,197,'security'),(5,199,'support'),(6,2,'techincal'),(6,4,'support'),(6,5,'security'),(6,7,'techincal'),(6,9,'support'),(6,11,'techincal'),(6,13,'support'),(6,14,'techincal'),(6,17,'security'),(6,19,'support'),(6,25,'support'),(6,29,'security'),(6,30,'techincal'),(6,31,'techincal'),(6,35,'support'),(6,40,'techincal'),(6,46,'techincal'),(6,47,'support'),(6,51,'support'),(6,54,'security'),(6,59,'techincal'),(6,66,'techincal'),(6,68,'security'),(6,71,'support'),(6,73,'support'),(6,75,'support'),(6,77,'support'),(6,78,'techincal'),(6,80,'support'),(6,81,'security'),(6,83,'techincal'),(6,88,'security'),(6,99,'support'),(6,102,'security'),(6,104,'techincal'),(6,107,'security'),(6,108,'techincal'),(6,109,'security'),(6,113,'support'),(6,114,'security'),(6,119,'techincal'),(6,120,'support'),(6,121,'support'),(6,122,'support'),(6,124,'techincal'),(6,125,'support'),(6,127,'security'),(6,128,'security'),(6,135,'support'),(6,138,'security'),(6,140,'security'),(6,141,'security'),(6,142,'support'),(6,144,'security'),(6,146,'support'),(6,147,'security'),(6,149,'support'),(6,150,'support'),(6,155,'support'),(6,156,'support'),(6,162,'security'),(6,163,'security'),(6,176,'security'),(6,183,'security'),(6,184,'support'),(6,187,'techincal'),(6,190,'security'),(6,192,'techincal'),(6,193,'techincal'),(6,195,'security'),(6,202,'techincal'),(7,6,'security'),(7,10,'techincal'),(7,12,'security'),(7,19,'support'),(7,21,'security'),(7,24,'support'),(7,26,'techincal'),(7,27,'security'),(7,31,'techincal'),(7,36,'support'),(7,38,'support'),(7,43,'techincal'),(7,45,'support'),(7,46,'techincal'),(7,50,'security'),(7,52,'support'),(7,53,'security'),(7,59,'security'),(7,67,'security'),(7,69,'techincal'),(7,71,'techincal'),(7,84,'techincal'),(7,94,'support'),(7,96,'techincal'),(7,98,'security'),(7,99,'support'),(7,100,'support'),(7,107,'support'),(7,111,'support'),(7,112,'techincal'),(7,123,'security'),(7,129,'techincal'),(7,130,'support'),(7,134,'techincal'),(7,146,'techincal'),(7,152,'security'),(7,157,'security'),(7,158,'support'),(7,161,'security'),(7,162,'security'),(7,163,'security'),(7,168,'security'),(7,171,'support'),(7,176,'security'),(7,180,'security'),(7,182,'security'),(7,183,'security'),(7,187,'security'),(7,188,'security'),(7,191,'support'),(7,200,'techincal'),(7,201,'techincal'),(7,202,'security'),(8,5,'security'),(8,7,'security'),(8,10,'techincal'),(8,11,'security'),(8,15,'support'),(8,28,'security'),(8,32,'support'),(8,33,'support'),(8,38,'security'),(8,40,'techincal'),(8,56,'security'),(8,57,'techincal'),(8,64,'support'),(8,68,'support'),(8,69,'techincal'),(8,72,'techincal'),(8,74,'security'),(8,77,'security'),(8,80,'security'),(8,83,'security'),(8,85,'techincal'),(8,86,'security'),(8,88,'security'),(8,90,'security'),(8,93,'techincal'),(8,94,'security'),(8,95,'security'),(8,97,'techincal'),(8,103,'support'),(8,104,'support'),(8,105,'techincal'),(8,113,'security'),(8,114,'techincal'),(8,115,'techincal'),(8,123,'security'),(8,131,'support'),(8,142,'support'),(8,143,'support'),(8,148,'security'),(8,158,'techincal'),(8,159,'support'),(8,160,'support'),(8,165,'security'),(8,167,'techincal'),(8,172,'security'),(8,177,'techincal'),(8,179,'security'),(8,184,'security'),(8,185,'support'),(8,196,'techincal'),(8,198,'support'),(9,9,'techincal'),(9,11,'support'),(9,14,'support'),(9,15,'techincal'),(9,16,'security'),(9,20,'security'),(9,21,'security'),(9,28,'security'),(9,39,'techincal'),(9,45,'techincal'),(9,51,'security'),(9,55,'security'),(9,58,'security'),(9,59,'techincal'),(9,63,'security'),(9,64,'security'),(9,76,'security'),(9,77,'security'),(9,79,'techincal'),(9,80,'techincal'),(9,81,'techincal'),(9,87,'security'),(9,95,'security'),(9,98,'techincal'),(9,106,'support'),(9,111,'security'),(9,113,'security'),(9,118,'techincal'),(9,121,'support'),(9,123,'support'),(9,127,'techincal'),(9,129,'support'),(9,130,'security'),(9,131,'security'),(9,132,'support'),(9,137,'security'),(9,140,'security'),(9,150,'security'),(9,152,'techincal'),(9,153,'security'),(9,154,'support'),(9,159,'security'),(9,161,'security'),(9,164,'support'),(9,165,'techincal'),(9,166,'support'),(9,169,'techincal'),(9,170,'support'),(9,171,'techincal'),(9,177,'security'),(9,186,'support'),(9,187,'techincal'),(9,190,'support'),(9,192,'support'),(9,193,'support'),(9,196,'support'),(9,199,'security'),(9,200,'support'),(9,201,'support'),(9,202,'security'),(10,3,'support'),(10,4,'support'),(10,18,'support'),(10,19,'support'),(10,21,'security'),(10,23,'security'),(10,25,'techincal'),(10,26,'security'),(10,28,'security'),(10,30,'techincal'),(10,32,'techincal'),(10,42,'security'),(10,47,'techincal'),(10,58,'security'),(10,63,'support'),(10,69,'security'),(10,70,'techincal'),(10,71,'support'),(10,73,'security'),(10,76,'techincal'),(10,79,'support'),(10,80,'techincal'),(10,84,'support'),(10,86,'support'),(10,88,'security'),(10,91,'techincal'),(10,93,'security'),(10,94,'support'),(10,101,'techincal'),(10,105,'techincal'),(10,106,'support'),(10,117,'techincal'),(10,120,'support'),(10,122,'techincal'),(10,124,'techincal'),(10,126,'techincal'),(10,128,'security'),(10,133,'security'),(10,139,'support'),(10,144,'techincal'),(10,145,'techincal'),(10,148,'techincal'),(10,149,'security'),(10,153,'support'),(10,154,'techincal'),(10,168,'support'),(10,169,'security'),(10,175,'techincal'),(10,176,'security'),(10,178,'support'),(10,180,'support'),(10,186,'support'),(10,189,'security'),(10,192,'techincal');

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
INSERT INTO `seller` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(9,9,0),(10,10,0),(11,11,0),(12,12,0),(13,13,0),(14,14,0),(15,15,0),(16,16,0),(17,17,0),(18,18,0),(19,19,0),(20,20,0),(21,21,1),(22,22,0),(23,23,0),(24,24,0),(25,25,0),(26,26,0),(27,27,0),(28,28,0),(29,29,0),(30,30,0),(31,31,0),(32,32,1),(33,33,0),(34,34,0),(35,35,0),(36,36,0),(37,37,0),(38,38,0),(39,39,0),(40,40,0),(41,41,0),(42,42,0),(43,43,0),(44,44,0),(45,45,0),(46,46,1),(47,47,0),(48,48,0),(49,49,0),(50,50,0),(51,51,0),(52,52,0),(53,53,0),(54,54,0),(55,55,0),(56,56,0),(57,57,0),(58,58,0),(59,59,0),(60,60,0),(61,61,0),(62,62,0),(63,63,0),(64,64,0),(65,65,0),(66,66,0),(67,67,0),(68,68,0),(69,69,0),(70,70,0),(71,71,0),(72,72,1),(73,73,0),(74,74,0),(75,75,0),(76,76,0),(77,77,0),(78,78,0),(79,79,0),(80,80,0),(81,81,0),(82,82,0),(83,83,0),(84,84,0),(85,85,0),(86,86,0),(87,87,0),(88,88,0),(89,89,0),(90,90,0),(91,91,0),(92,92,0),(93,93,0),(94,94,0),(95,95,0),(96,96,0),(97,97,1),(98,98,0),(99,99,0),(100,100,0),(101,101,0),(102,102,0),(103,103,0),(104,104,0),(105,105,0),(106,106,0),(107,107,0),(108,108,0),(109,109,0),(110,110,0),(111,111,0),(112,112,1),(113,113,0),(114,114,0),(115,115,0),(116,116,0),(117,117,0),(118,118,0),(119,119,0),(120,120,0),(121,121,1),(122,122,0),(123,123,0),(124,124,0),(125,125,0),(126,126,0),(127,127,0),(128,128,0),(129,129,0),(130,130,0),(131,131,0),(132,132,0),(133,133,0),(134,134,0),(135,135,0),(136,136,0),(137,137,0),(138,138,0),(139,139,0),(140,140,0),(141,141,0),(142,142,0),(143,143,0),(144,144,1),(145,145,0),(146,146,0),(147,147,0),(148,148,0),(149,149,0),(150,150,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_resale_matches`
--

LOCK TABLES `temp_resale_matches` WRITE;
/*!40000 ALTER TABLE `temp_resale_matches` DISABLE KEYS */;
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
  KEY `idx_ticket_visitor_event` (`visitor_ID`,`event_ID`),
  KEY `idx_ticket_event` (`event_ID`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`visitor_ID`) REFERENCES `visitor` (`visitor_ID`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`event_ID`) REFERENCES `events` (`event_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,95,132,'backstage','2020-09-17',35.11,'I-BAN',1),(2,136,110,'backstage','2023-08-02',41.62,'debit_card',1),(3,137,23,'general_admission','2023-08-03',87.38,'I-BAN',1),(4,164,133,'backstage','2025-04-30',68.71,'credit_card',0),(5,67,45,'backstage','2020-09-15',47.56,'debit_card',1),(6,138,120,'backstage','2023-08-04',75.15,'debit_card',1),(7,123,130,'general_admission','2023-08-06',29.23,'I-BAN',1),(8,19,142,'general_admission','2018-09-02',62.57,'I-BAN',1),(9,148,17,'general_admission','2024-07-26',59.15,'debit_card',1),(10,115,128,'general_admission','2023-08-03',83.27,'debit_card',1),(11,63,63,'backstage','2019-08-21',21.21,'I-BAN',1),(12,110,26,'general_admission','2022-07-18',71.38,'I-BAN',1),(13,53,30,'general_admission','2019-08-22',27.92,'credit_card',1),(14,137,82,'general_admission','2023-08-02',77.95,'credit_card',1),(15,75,112,'backstage','2020-09-18',43.73,'debit_card',1),(16,128,1,'backstage','2023-08-04',20.14,'credit_card',1),(17,91,74,'backstage','2020-09-19',31.68,'debit_card',1),(18,18,42,'general_admission','2018-09-02',31.28,'debit_card',1),(19,177,148,'general_admission','2025-05-01',93.84,'credit_card',0),(20,23,98,'backstage','2018-08-30',20.39,'credit_card',1),(21,20,140,'general_admission','2018-08-29',50.40,'credit_card',0),(22,194,72,'general_admission','2025-04-27',35.64,'debit_card',0),(23,171,22,'backstage','2025-05-01',58.90,'debit_card',0),(24,122,125,'general_admission','2023-08-05',59.24,'debit_card',1),(25,157,75,'backstage','2024-07-24',65.04,'credit_card',1),(26,5,41,'backstage','2017-08-11',87.20,'credit_card',0),(27,89,137,'general_admission','2020-09-16',73.04,'I-BAN',0),(28,130,105,'general_admission','2023-08-05',77.21,'debit_card',1),(29,78,28,'backstage','2020-09-15',45.72,'credit_card',1),(30,168,85,'backstage','2025-04-27',29.88,'debit_card',0),(31,201,63,'backstage','2025-04-27',95.10,'I-BAN',0),(32,180,132,'general_admission','2025-04-30',35.60,'I-BAN',0),(33,39,16,'general_admission','2018-08-30',44.28,'debit_card',1),(34,32,90,'general_admission','2018-08-29',73.21,'I-BAN',1),(35,182,74,'backstage','2025-05-01',49.09,'I-BAN',0),(36,34,62,'general_admission','2018-08-31',28.27,'I-BAN',1),(37,116,65,'general_admission','2023-08-04',67.30,'credit_card',1),(38,125,78,'backstage','2023-08-06',51.61,'debit_card',1),(39,75,99,'general_admission','2020-09-19',78.75,'I-BAN',1),(40,92,12,'backstage','2020-09-16',27.73,'debit_card',1),(41,57,112,'backstage','2019-08-20',93.65,'I-BAN',0),(42,170,72,'backstage','2025-04-30',35.99,'credit_card',0),(43,52,86,'general_admission','2019-08-18',82.68,'debit_card',1),(44,104,52,'backstage','2022-07-16',74.85,'credit_card',1),(45,60,11,'backstage','2019-08-18',38.46,'I-BAN',1),(46,64,111,'backstage','2019-08-19',74.19,'I-BAN',1),(47,28,58,'backstage','2018-08-31',45.60,'I-BAN',0),(48,112,71,'backstage','2022-07-14',82.45,'credit_card',1),(49,65,66,'backstage','2019-08-19',85.11,'credit_card',1),(50,159,89,'general_admission','2024-07-28',83.93,'credit_card',1),(51,71,81,'backstage','2020-09-18',37.48,'credit_card',1),(52,121,142,'general_admission','2023-08-04',83.26,'I-BAN',1),(53,121,60,'general_admission','2023-08-05',49.39,'credit_card',1),(54,96,34,'backstage','2021-07-29',25.67,'I-BAN',1),(55,42,84,'backstage','2018-08-31',94.74,'I-BAN',1),(56,36,53,'backstage','2018-08-29',60.42,'debit_card',1),(57,6,136,'backstage','2017-08-09',88.26,'credit_card',1),(58,201,144,'backstage','2025-04-29',49.60,'I-BAN',0),(59,127,79,'backstage','2023-08-06',44.15,'I-BAN',1),(60,134,49,'general_admission','2023-08-03',65.73,'I-BAN',1),(61,65,63,'backstage','2019-08-18',45.45,'I-BAN',1),(62,28,28,'backstage','2018-09-01',64.97,'I-BAN',0),(63,107,4,'general_admission','2022-07-18',83.48,'credit_card',1),(64,22,36,'backstage','2018-09-02',43.76,'credit_card',1),(65,54,111,'backstage','2019-08-18',40.99,'credit_card',1),(66,13,119,'general_admission','2018-08-31',56.73,'debit_card',1),(67,28,46,'backstage','2018-08-30',27.20,'credit_card',1),(68,28,24,'backstage','2018-09-01',70.77,'I-BAN',1),(69,74,77,'general_admission','2020-09-17',79.72,'I-BAN',1),(70,89,104,'backstage','2020-09-18',56.20,'debit_card',1),(71,115,87,'backstage','2023-08-03',61.76,'I-BAN',1),(72,77,50,'backstage','2020-09-18',82.19,'debit_card',1),(73,127,10,'general_admission','2023-08-03',52.39,'I-BAN',1),(74,49,98,'general_admission','2019-08-20',72.80,'debit_card',1),(75,61,23,'general_admission','2019-08-20',99.77,'credit_card',1),(76,13,100,'general_admission','2018-09-02',56.52,'debit_card',0),(77,140,118,'backstage','2023-08-06',95.75,'debit_card',1),(78,156,86,'general_admission','2024-07-24',37.46,'credit_card',0),(79,33,21,'general_admission','2018-09-01',63.26,'I-BAN',0),(80,73,136,'general_admission','2020-09-19',26.22,'debit_card',1),(81,36,12,'backstage','2018-08-30',35.36,'debit_card',0),(82,80,118,'backstage','2020-09-15',25.00,'credit_card',1),(83,172,129,'general_admission','2025-05-01',20.37,'debit_card',0),(84,114,22,'backstage','2022-07-17',30.68,'I-BAN',1),(85,163,37,'general_admission','2025-04-30',88.48,'debit_card',0),(86,69,6,'backstage','2020-09-16',96.85,'debit_card',1),(87,3,35,'general_admission','2017-08-12',58.04,'credit_card',0),(88,139,49,'backstage','2023-08-05',36.80,'debit_card',1),(89,64,33,'backstage','2019-08-21',36.71,'I-BAN',1),(90,76,41,'backstage','2020-09-15',45.51,'debit_card',1),(91,88,120,'general_admission','2020-09-19',31.68,'credit_card',1),(92,97,135,'general_admission','2021-07-29',89.19,'I-BAN',1),(93,31,79,'general_admission','2018-08-29',94.25,'debit_card',1),(94,151,127,'backstage','2024-07-28',57.91,'credit_card',0),(95,65,83,'general_admission','2019-08-18',92.66,'I-BAN',1),(96,14,72,'general_admission','2018-09-01',74.07,'credit_card',0),(97,199,11,'backstage','2025-04-28',32.68,'I-BAN',0),(98,164,20,'general_admission','2025-04-30',39.80,'I-BAN',0),(99,142,78,'backstage','2023-08-04',41.31,'credit_card',1),(100,113,77,'general_admission','2022-07-17',24.43,'credit_card',1),(101,167,22,'general_admission','2025-04-27',39.61,'I-BAN',0),(102,59,46,'backstage','2019-08-19',31.09,'credit_card',1),(103,22,84,'general_admission','2018-08-31',32.60,'I-BAN',1),(104,7,22,'general_admission','2017-08-10',68.75,'credit_card',1),(105,9,146,'general_admission','2017-08-09',96.08,'debit_card',1),(106,18,125,'general_admission','2018-08-30',94.63,'credit_card',1),(107,163,136,'backstage','2025-04-27',95.40,'debit_card',0),(108,129,108,'general_admission','2023-08-03',74.79,'debit_card',1),(109,122,142,'general_admission','2023-08-05',52.90,'I-BAN',1),(110,155,80,'general_admission','2024-07-26',93.18,'I-BAN',1),(111,90,80,'backstage','2020-09-19',56.60,'debit_card',1),(112,186,126,'general_admission','2025-04-28',20.85,'debit_card',0),(113,133,16,'backstage','2023-08-05',51.27,'I-BAN',0),(114,194,70,'general_admission','2025-04-27',38.80,'debit_card',0),(115,117,45,'general_admission','2023-08-04',73.06,'I-BAN',1),(116,117,144,'backstage','2023-08-06',81.14,'credit_card',1),(117,182,90,'backstage','2025-05-01',24.37,'credit_card',0),(118,138,75,'backstage','2023-08-04',80.84,'I-BAN',1),(119,113,23,'general_admission','2022-07-16',53.87,'debit_card',1),(120,191,101,'backstage','2025-04-27',65.70,'I-BAN',0),(121,38,4,'general_admission','2018-09-02',92.42,'credit_card',1),(122,88,136,'backstage','2020-09-16',75.62,'I-BAN',1),(123,42,69,'backstage','2018-08-29',32.17,'I-BAN',1),(124,52,54,'backstage','2019-08-21',31.59,'debit_card',1),(125,183,41,'backstage','2025-04-27',84.35,'I-BAN',0),(126,174,39,'backstage','2025-04-27',41.02,'debit_card',0),(127,57,66,'general_admission','2019-08-18',20.53,'debit_card',1),(128,15,41,'backstage','2018-08-29',48.26,'debit_card',1),(129,124,107,'backstage','2023-08-05',57.60,'I-BAN',1),(130,112,126,'general_admission','2022-07-16',86.50,'debit_card',1),(131,16,49,'backstage','2018-08-29',75.04,'credit_card',1),(132,143,119,'general_admission','2023-08-04',33.70,'debit_card',1),(133,176,134,'backstage','2025-04-27',69.19,'debit_card',0),(134,200,132,'general_admission','2025-04-27',39.72,'credit_card',0),(135,19,127,'backstage','2018-08-31',33.84,'credit_card',1),(136,126,66,'general_admission','2023-08-02',67.73,'debit_card',1),(137,40,60,'general_admission','2018-08-29',65.45,'debit_card',1),(138,18,23,'backstage','2018-08-31',26.48,'debit_card',1),(139,124,142,'general_admission','2023-08-04',88.05,'debit_card',1),(140,8,106,'general_admission','2017-08-08',75.62,'credit_card',1),(141,110,143,'backstage','2022-07-18',27.58,'I-BAN',1),(142,92,48,'general_admission','2020-09-16',67.94,'I-BAN',1),(143,5,56,'backstage','2017-08-12',47.96,'credit_card',1),(144,149,87,'backstage','2024-07-28',85.30,'credit_card',1),(145,154,24,'backstage','2024-07-27',90.94,'I-BAN',1),(146,174,27,'general_admission','2025-04-27',92.83,'debit_card',0),(147,129,119,'general_admission','2023-08-03',29.39,'debit_card',1),(148,157,85,'general_admission','2024-07-26',70.23,'I-BAN',0),(149,55,28,'general_admission','2019-08-21',31.13,'debit_card',1),(150,167,97,'general_admission','2025-05-01',26.87,'credit_card',0),(151,186,10,'backstage','2025-04-27',21.30,'I-BAN',0),(152,73,31,'backstage','2020-09-18',57.77,'debit_card',1),(153,6,58,'backstage','2017-08-09',95.58,'I-BAN',1),(154,181,54,'backstage','2025-04-29',54.84,'I-BAN',0),(155,38,60,'general_admission','2018-08-31',26.95,'I-BAN',1),(156,77,113,'backstage','2020-09-19',92.49,'I-BAN',1),(157,86,135,'general_admission','2020-09-19',71.59,'I-BAN',0),(158,2,64,'general_admission','2017-08-08',24.65,'debit_card',1),(159,70,76,'general_admission','2020-09-16',46.88,'debit_card',1),(160,192,27,'general_admission','2025-05-01',59.50,'I-BAN',0),(161,176,143,'backstage','2025-04-28',44.26,'I-BAN',0),(162,27,44,'backstage','2018-08-29',67.97,'credit_card',1),(163,199,14,'general_admission','2025-04-27',87.38,'credit_card',0),(164,47,50,'backstage','2019-08-22',77.84,'debit_card',0),(165,148,50,'general_admission','2024-07-26',91.88,'credit_card',1),(166,2,110,'backstage','2017-08-08',61.82,'I-BAN',1),(167,30,130,'general_admission','2018-09-01',33.99,'credit_card',1),(168,101,96,'general_admission','2021-07-31',33.19,'credit_card',0),(169,59,120,'backstage','2019-08-22',32.96,'I-BAN',1),(170,69,30,'backstage','2020-09-19',45.38,'debit_card',1),(171,188,81,'general_admission','2025-04-30',40.96,'I-BAN',0),(172,121,83,'general_admission','2023-08-03',35.72,'debit_card',1),(173,158,18,'backstage','2024-07-28',29.78,'credit_card',0),(174,25,85,'backstage','2018-08-31',72.81,'debit_card',1),(175,130,74,'general_admission','2023-08-02',69.58,'I-BAN',1),(176,106,93,'backstage','2022-07-14',35.95,'I-BAN',1),(177,201,40,'general_admission','2025-05-01',79.57,'credit_card',0),(178,124,121,'backstage','2023-08-06',86.09,'credit_card',0),(179,34,68,'general_admission','2018-08-30',58.43,'credit_card',1),(180,158,9,'general_admission','2024-07-25',46.54,'credit_card',1),(181,83,132,'backstage','2020-09-19',67.94,'I-BAN',1),(182,66,63,'backstage','2020-09-17',25.10,'I-BAN',1),(183,46,127,'backstage','2019-08-21',85.51,'I-BAN',0),(184,80,143,'general_admission','2020-09-17',50.99,'debit_card',1),(185,142,120,'backstage','2023-08-06',81.33,'credit_card',1),(186,93,53,'backstage','2020-09-17',39.79,'debit_card',1),(187,139,94,'general_admission','2023-08-03',31.14,'debit_card',1),(188,39,12,'general_admission','2018-08-31',58.05,'I-BAN',1),(189,156,51,'backstage','2024-07-24',60.19,'I-BAN',1),(190,117,50,'general_admission','2023-08-06',24.91,'credit_card',1),(191,163,13,'general_admission','2025-04-27',92.68,'debit_card',0),(192,9,44,'backstage','2017-08-11',55.88,'I-BAN',1),(193,194,53,'backstage','2025-04-29',90.85,'debit_card',0),(194,148,137,'general_admission','2024-07-24',71.69,'debit_card',1),(195,169,25,'general_admission','2025-04-28',34.31,'I-BAN',0),(196,61,78,'backstage','2019-08-21',21.46,'I-BAN',1),(197,92,55,'general_admission','2020-09-17',69.47,'debit_card',1),(198,137,32,'backstage','2023-08-06',78.00,'debit_card',1),(199,28,59,'backstage','2018-08-30',57.29,'credit_card',1),(200,186,32,'backstage','2025-04-28',93.18,'debit_card',0),(201,67,20,'general_admission','2020-09-17',34.03,'credit_card',1),(202,24,46,'general_admission','2018-09-02',25.47,'I-BAN',0),(203,95,79,'backstage','2020-09-18',53.65,'debit_card',1),(204,196,144,'backstage','2025-05-01',64.31,'credit_card',0),(205,48,138,'general_admission','2019-08-21',52.69,'credit_card',1),(206,122,99,'backstage','2023-08-06',62.77,'I-BAN',1),(207,106,32,'general_admission','2022-07-18',49.75,'debit_card',0),(208,125,68,'backstage','2023-08-02',82.81,'credit_card',1),(209,21,11,'general_admission','2018-08-30',97.78,'debit_card',1),(210,41,50,'backstage','2018-08-31',24.93,'I-BAN',1),(211,60,34,'backstage','2019-08-19',25.55,'I-BAN',1),(212,138,135,'backstage','2023-08-02',35.29,'credit_card',1),(213,195,104,'general_admission','2025-05-01',81.43,'credit_card',0),(214,196,79,'backstage','2025-04-27',70.33,'credit_card',0),(215,191,132,'backstage','2025-04-27',42.62,'debit_card',0),(216,36,35,'backstage','2018-09-01',36.20,'I-BAN',1),(217,90,128,'backstage','2020-09-16',51.96,'credit_card',1),(218,20,40,'general_admission','2018-09-02',91.70,'debit_card',1),(219,127,128,'backstage','2023-08-03',25.73,'debit_card',1),(220,80,9,'backstage','2020-09-17',37.11,'I-BAN',1);
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
INSERT INTO `visitor` VALUES (1,'Courtney','Hughes','537.764.2569x9784','martinezgregory@example.net',46),(2,'Adam','Stein','595-277-3168x11443','howardwilliam@example.net',46),(3,'Amanda','Jones','862.891.6127x8503','xwilson@example.org',59),(4,'Steven','Cortez','(972)642-9045x8096','ggarcia@example.org',50),(5,'John','Miles','(717)697-6778x07922','stephen23@example.com',42),(6,'John','Mccoy','+1-580-605-9062x304','susanramirez@example.com',52),(7,'Bradley','Morgan','+1-926-948-4585x2414','matthew50@example.com',64),(8,'Jodi','Green','+1-554-319-8139x9415','ysmith@example.net',64),(9,'Allen','Bryant','(596)727-0257x373','jhunt@example.org',55),(10,'Kristin','Peterson','+1-961-528-5657','joshua91@example.net',20),(11,'Lisa','Dyer','918-569-3787x265','patrickraymond@example.net',55),(12,'Frank','Hill','883.886.6277x25293','sfarrell@example.org',60),(13,'Patrick','Larson','861-471-4112x2739','denise42@example.com',50),(14,'Diane','Simon','760-562-8330x272','jason67@example.net',56),(15,'William','Romero','6748665787','melissaandersen@example.com',54),(16,'Geoffrey','Ruiz','001-345-977-1764x06664','brownkendra@example.net',64),(17,'Carly','Mann','817-768-8405','qbrown@example.com',36),(18,'Jill','Henderson','(274)801-4396x6276','tgarcia@example.net',59),(19,'Kenneth','Stevens','276-266-1806','barnesrobert@example.org',42),(20,'Bryan','Bates','362-242-7578','anthonyalexander@example.com',62),(21,'Sabrina','Johnson','276-979-7337x42140','christine63@example.com',24),(22,'Erica','Martin','+1-565-628-3020x652','mary85@example.net',65),(23,'Christopher','Jacobs','(715)753-2667','ckelly@example.net',65),(24,'Ryan','Sanchez','001-460-997-4146','gbenitez@example.net',33),(25,'Adrian','Richardson','246-290-1652','scottsusan@example.org',24),(26,'Anna','Vega','706-555-7578x4900','maureenbaker@example.net',46),(27,'Robert','Gonzalez','(605)705-7574','respinoza@example.net',29),(28,'Teresa','Moore','+1-381-494-4762x50193','jamesmcintyre@example.org',23),(29,'Robin','Rogers','001-728-772-0141x770','nsmith@example.net',32),(30,'Matthew','Wilson','3945493117','smithryan@example.net',26),(31,'William','Hancock','430.970.0499x59959','mgarcia@example.net',64),(32,'Kelly','Smith','506-696-7164x67504','grosario@example.org',51),(33,'Francisco','Ramos','739-885-9511','jeremy79@example.net',58),(34,'Nathaniel','Cunningham','232.548.6325','olivertiffany@example.net',28),(35,'Michael','Barrett','(898)942-5827','susansullivan@example.org',52),(36,'Scott','Sullivan','+1-420-253-3449x014','bmorgan@example.org',56),(37,'April','Smith','812-948-5675x0891','rachelramos@example.com',21),(38,'Billy','Baker','936.953.5449x314','oavery@example.net',45),(39,'Jeremiah','Burgess','(238)601-1906x8723','thomaslatoya@example.org',56),(40,'Jessica','Downs','(241)244-8598','kmullen@example.net',56),(41,'Kevin','Phillips','926-726-5227','anthonylucas@example.org',45),(42,'Lindsey','Johnson','001-727-740-9305x2050','dennisfelicia@example.com',54),(43,'Jessica','Brown','+1-556-744-1497x380','tonymartinez@example.org',45),(44,'Heather','Parsons','340-413-5958','xbond@example.net',55),(45,'Anthony','Garcia','(664)340-6907x720','qjohnson@example.org',27),(46,'Claudia','King','589.878.6721x7929','rjohnson@example.com',36),(47,'Crystal','Briggs','001-214-999-3255','kellijones@example.com',44),(48,'Patricia','Shepard','3567248831','troygutierrez@example.net',38),(49,'Katrina','Gates','001-947-898-1983','blakerichards@example.org',19),(50,'Leslie','Wagner','+1-602-642-6768x203','jayevans@example.org',58),(51,'Catherine','Lewis','939-786-6428x770','eknight@example.com',47),(52,'Madison','Morris','(478)889-1606x034','kreed@example.org',31),(53,'Dorothy','Martin','602.934.0777x188','lindseytiffany@example.com',35),(54,'Stephanie','Christensen','(946)617-3427','wmcgrath@example.net',19),(55,'Robert','Baker','001-392-984-0038x4983','andrewwright@example.net',36),(56,'Cynthia','Morrison','+1-534-396-2953x34367','cberger@example.org',19),(57,'Carolyn','Moore','+1-510-696-5823','bryantmegan@example.com',61),(58,'Kylie','Jones','847.574.9396','jlowe@example.net',55),(59,'Ronald','Johnson','(508)253-7443x0329','greerdavid@example.org',25),(60,'Amanda','Santos','868.236.0733x47003','simstami@example.org',51),(61,'Amanda','Evans','+1-794-387-1750x65724','kristenhernandez@example.com',38),(62,'Sheila','Young','480-913-7582','johnadams@example.org',27),(63,'Laurie','Le','546-538-5718x851','campbellgabrielle@example.com',58),(64,'Cheryl','Hernandez','6459156939','ymaldonado@example.com',22),(65,'Tara','Carter','609.278.1070x03841','debrachen@example.com',27),(66,'Tyler','Robertson','+1-515-444-1856x29135','jtaylor@example.org',39),(67,'Jay','Gonzales','648-441-1010x02908','michael52@example.net',44),(68,'Jennifer','Chaney','(620)637-8075x8600','jeffreyjames@example.net',64),(69,'Christopher','Miller','712.927.5800','zkoch@example.net',33),(70,'Toni','Wagner','+1-874-852-2694x3699','kelly39@example.net',42),(71,'Dalton','Taylor','+1-322-611-8957x05945','harriswarren@example.net',47),(72,'William','Smith','782-601-6089','ayalasarah@example.org',31),(73,'Scott','Holt','(620)319-7649x506','kingmichael@example.org',29),(74,'Luis','Burns','+1-339-700-6273','brownmelinda@example.org',60),(75,'Emily','Myers','001-798-606-7451','lbaker@example.com',63),(76,'Barbara','Walker','(749)997-0640','philipschmidt@example.com',56),(77,'Tyler','Stephenson','541.768.8444x8922','ggarza@example.net',57),(78,'Scott','Thompson','001-622-518-1827x57455','merrittsara@example.net',19),(79,'James','Johnston','596-216-0376','matthewmartinez@example.org',58),(80,'Alexander','Vang','001-421-524-4700x36723','johnsonmichael@example.net',44),(81,'Sergio','Castillo','591.370.0278x3799','youngalyssa@example.org',51),(82,'Miguel','Wright','001-806-494-1426x057','marvin83@example.org',56),(83,'Jennifer','Parker','3118489052','nserrano@example.net',32),(84,'Debra','Smith','7106890942','zachary78@example.com',31),(85,'Laurie','Carr','+1-885-701-5321x50135','kwatkins@example.com',27),(86,'Cameron','Reynolds','001-964-644-2783','brandi27@example.net',50),(87,'Sergio','Baker','5188746383','michelle24@example.org',34),(88,'Erin','Martin','6638041794','nicholsonamber@example.com',65),(89,'Michael','Whitaker','(989)633-4735','beankatherine@example.org',53),(90,'Connor','Johnston','325-750-1437x97500','jorgesharp@example.net',48),(91,'John','Guerrero','(400)951-0174x353','santosmartha@example.org',45),(92,'Rhonda','Lawrence','946.559.9836x495','christopher95@example.org',59),(93,'Tanya','Wood','001-322-207-8224x551','samantha18@example.net',35),(94,'Edward','Ramsey','431.277.9027','sheilakim@example.org',58),(95,'Marissa','Ortiz','(522)634-1219x3177','hensonkaitlyn@example.net',36),(96,'Barbara','Mckinney','001-686-970-2961x701','mark78@example.com',54),(97,'Christopher','Russell','(783)897-2132x9799','snydermicheal@example.net',50),(98,'Michael','Bauer','796.297.1253','tararodriguez@example.com',47),(99,'Ryan','Cisneros','692.675.3490','edwardsamanda@example.net',51),(100,'Ashley','Jones','+1-758-404-8453x3811','ocooper@example.com',65),(101,'Richard','Franco','001-456-307-4193x0229','richardsingleton@example.net',41),(102,'Katherine','Fuentes','+1-310-738-8095','lopezchristy@example.com',30),(103,'Ricardo','Dunn','668.291.3378x1449','rmoreno@example.net',53),(104,'Tristan','Gonzalez','001-372-799-8750x328','swilliams@example.org',59),(105,'Christopher','Murphy','212.730.6665x930','luke07@example.net',29),(106,'Chris','Harmon','611.551.2983x09956','loganandrew@example.org',39),(107,'Laura','Lara','7556378420','hamiltonrichard@example.org',32),(108,'Tracy','Pena','4846110692','rachellong@example.com',32),(109,'Mark','Bishop','545-655-5440','patriciaho@example.net',37),(110,'Jesus','Bartlett','+1-203-465-1387x9312','tammy37@example.net',55),(111,'Jodi','Gonzalez','(646)788-9540x3468','martinball@example.net',20),(112,'Stephanie','Orozco','+1-348-504-3761','anaedwards@example.org',31),(113,'Ann','Davis','280.745.2456x24846','ruizheather@example.net',48),(114,'Kimberly','Oconnor','(673)594-5745','weaverangela@example.org',59),(115,'Samuel','Decker','546-222-6969x4212','george68@example.org',42),(116,'Timothy','Edwards','563.524.8907','johnsonelizabeth@example.org',44),(117,'Walter','Sanchez','(589)465-2082x74721','martindaniel@example.com',46),(118,'Elizabeth','Hernandez','417.425.7161','lsimmons@example.net',58),(119,'Keith','Chapman','569-247-5161','jonesjessica@example.net',57),(120,'Andrew','Bell','5829063762','martinezann@example.org',22),(121,'Lisa','Davenport','+1-784-571-1549x430','gaysarah@example.net',19),(122,'Roberta','Harris','2054833896','jasonflowers@example.org',54),(123,'Dominique','Burgess','(353)478-0815','jessica14@example.org',55),(124,'Barbara','Greene','3965553907','smithchristina@example.org',65),(125,'Eric','Pope','(853)948-2099x456','brownchristine@example.com',19),(126,'Stephen','Patel','447-780-2636x044','pallison@example.net',47),(127,'Emily','Santos','(382)217-1896x45758','ashleyhayden@example.net',23),(128,'Jackson','Abbott','435-801-1502','carmenedwards@example.org',38),(129,'Corey','Weber','(713)393-1825','foxraymond@example.org',35),(130,'Sandra','Moss','(737)843-6625','jesseblake@example.net',19),(131,'Carl','Becker','+1-784-792-1303x012','jimlamb@example.com',21),(132,'Lynn','Friedman','+1-920-243-8650x3740','briancopeland@example.net',55),(133,'Kaitlyn','Morris','+1-978-823-4151x24674','ronaldsimmons@example.net',44),(134,'Eric','Cervantes','420-765-3650x598','brian61@example.net',28),(135,'Kayla','Smith','001-260-473-1313x833','zmiller@example.com',57),(136,'Colin','Stewart','(758)958-6737x641','carlosperez@example.net',30),(137,'Daniel','Tran','(873)620-3378x57719','michaelreed@example.com',34),(138,'Juan','Garcia','589.379.4133x3852','torressean@example.com',53),(139,'James','Stokes','305.773.5365','byrdgeorge@example.com',49),(140,'Christine','Mccarty','7297470573','millerrobert@example.org',56),(141,'Michael','Hutchinson','001-691-514-8992','desiree73@example.org',47),(142,'Paul','Evans','519-435-7152','wwashington@example.org',41),(143,'Mary','Hickman','7477982160','iwebb@example.net',18),(144,'Dylan','Wright','805-662-1323x093','uhouston@example.net',19),(145,'Rachel','Nguyen','483-633-0205x07766','tracie38@example.com',24),(146,'Thomas','Trujillo','+1-646-474-4561x555','deleondaniel@example.com',22),(147,'Colleen','Smith','(778)847-5351x8999','mcculloughhoward@example.com',51),(148,'Todd','Schultz','(725)751-9802x217','deannahall@example.org',41),(149,'Robert','Smith','001-857-596-9005x4569','danharris@example.net',19),(150,'Travis','Campbell','527-974-3761','hensleykim@example.com',41);
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


