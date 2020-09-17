CREATE DATABASE  IF NOT EXISTS `2018_2019_nba_eastern_conf_upd` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `2018_2019_nba_eastern_conf_upd`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: 2018_2019_nba_eastern_conf_upd
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `atl_home_100`
--

DROP TABLE IF EXISTS `atl_home_100`;
/*!50001 DROP VIEW IF EXISTS `atl_home_100`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `atl_home_100` AS SELECT 
 1 AS `Home Team`,
 1 AS `Score`,
 1 AS `Game`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `coaches`
--

DROP TABLE IF EXISTS `coaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coaches` (
  `coach_id` int(11) NOT NULL AUTO_INCREMENT,
  `coach_fn` varchar(45) NOT NULL,
  `coach_ln` varchar(45) NOT NULL,
  `coach_type` varchar(90) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`coach_id`),
  KEY `teams_to_coaches_idx` (`team_id`),
  CONSTRAINT `coaches_to_team` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaches`
--

LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;
INSERT INTO `coaches` VALUES (1,'Lloyd','Pierce','Head Coach',1),(2,'Greg','Foster','Assistant Coach',1),(3,'Brad','Stevens','Head Coach',2),(4,'Jerome','Allen','Assistant Coach',2),(5,'Kenny','Atkinson','Head Coach',3),(6,'Adam','Harrington','Assistant Coach',3),(7,'James','Borrego','Head Coach',4),(8,'Nate','Mitchell','Assistant Coach',4),(9,'Jim','Boylen','Head Coach',5),(10,'Chris','Fleming','Assistant Coach',5),(11,'John','Beilein','Head Coach',6),(12,'Lindsay','Gottlieb','Assistant Coach',6),(13,'Dwane','Casey','Head Coach',7),(14,'Tim','Grgurich','Assistant Coach',7),(15,'Nate','McMillan','Head Coach',8),(16,'Daniel','Burke','Assistant Coach',8),(17,'Erik','Spoelstra','Head Coach',9),(18,'Malik','Allen','Assistant Coach',9),(19,'Mike','Budenholzer','Head Coach',10),(20,'Vin','Baker','Assistant Coach',10),(21,'David','Fizdale','Head Coach',11),(22,'Mike','Miller','Assistant Coach',11),(23,'Steve','Clifford','Head Coach',12),(24,'Steve','Hetzel','Assistant Coach',12),(25,'Brett','Brown','Head Coach',13),(26,'Ime','Udoka','Assistant Coach',13),(27,'Nick','Nurse','Head Coach',14),(28,'Patrick','Mutombo','Assistant Coach',14),(29,'Scott','Brooks','Head Coach',15),(30,'Tony','Brown','Assistant Coach',15);
/*!40000 ALTER TABLE `coaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `committed_fouls`
--

DROP TABLE IF EXISTS `committed_fouls`;
/*!50001 DROP VIEW IF EXISTS `committed_fouls`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `committed_fouls` AS SELECT 
 1 AS `Game`,
 1 AS `Venue`,
 1 AS `Infractions`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `conference_roster`
--

DROP TABLE IF EXISTS `conference_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conference_roster` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_fn` varchar(45) NOT NULL,
  `player_ln` varchar(45) NOT NULL,
  `player_no` int(11) NOT NULL,
  `player_position` varchar(45) NOT NULL,
  `player_weight` int(11) NOT NULL,
  `player_height` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`player_id`),
  KEY `conf_roster_to_teams_idx` (`team_id`),
  CONSTRAINT `conf_roster_to_teams` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conference_roster`
--

LOCK TABLES `conference_roster` WRITE;
/*!40000 ALTER TABLE `conference_roster` DISABLE KEYS */;
INSERT INTO `conference_roster` VALUES (1,'Trae','Young',11,'PG',180,73,1),(2,'Kevin','Huerter',3,'SG',190,79,1),(3,'Taurean','Prince',12,'SF',218,79,1),(4,'John','Collins',20,'PF',235,81,1),(5,'Dewayne','Dedmon',14,'C',245,84,1),(6,'Kyrie','Irving',11,'PG',195,74,2),(7,'Jaylen','Brown',7,'SG',223,78,2),(8,'Jayson','Tatum',0,'SF',210,80,2),(9,'Gordon','Hayward',20,'PF',225,79,2),(10,'Al','Horford',42,'C',240,81,2),(11,'D\'Angelo','Russell',1,'PG',193,76,3),(12,'Allen','Crabbe',33,'SG',212,77,3),(13,'Caris','LeVert',22,'SF',205,78,3),(14,'Rondae','Hollis-Jefferson',24,'PF',217,78,3),(15,'Jarrett','Allen',31,'C',243,83,3),(16,'Kemba ','Walker',15,'PG',184,72,4),(17,'Jeremy ','Lamb',3,'SG',180,77,4),(18,'Nicolas','Batum',5,'SF',230,81,4),(19,'Marvin','Williams',2,'PF',237,80,4),(20,'Cody','Zeller',40,'C',240,84,4),(21,'Kris','Dunn',32,'PG',205,75,5),(22,'Zach','Lavine',8,'SG',200,78,5),(23,'Justin','Holiday',7,'SF',180,78,5),(24,'Jabari','Parker',5,'PF',245,80,5),(25,'Robin','Lopez',42,'C',281,84,5),(26,'George','Hill',3,'PG',188,75,6),(27,'Rodney','Hood',5,'SG',208,80,6),(28,'Cedi','Osman',16,'SF',230,79,6),(29,'Kevin','Love',0,'PF',251,80,6),(30,'Larry','Nance Jr.',22,'C',245,79,6),(31,'Reggie','Jackson',1,'PG',208,75,7),(32,'Bruce','Brown',6,'SG',202,76,7),(33,'Stanley','Johnson',5,'SF',242,78,7),(34,'Blake','Griffin',23,'PF',250,81,7),(35,'Andre','Drummond',0,'C',279,82,7),(36,'Darren','Collison',2,'PG',175,72,8),(37,'Victor','Oladipo',4,'SG',213,76,8),(38,'Bojan','Bogdanovic',44,'SF',226,80,8),(39,'T.J.','Leaf',22,'PF',222,82,8),(40,'Myles','Turner',33,'C',250,83,8),(41,'Goran','Dragic',7,'PG',190,75,9),(42,'Tyler','Johnson',8,'SG',186,75,9),(43,'Josh','Richardson',0,'SF',200,77,9),(44,'James','Johnson',16,'PF',240,79,9),(45,'Hassan','Whiteside',21,'C',265,84,9),(46,'Eric','Bledsoe',6,'PG',214,73,10),(47,'Malcolm','Brogdon',7,'SG',229,77,10),(48,'Khris','Middleton',22,'SF',222,79,10),(49,'Giannis','Antetokounmpo',34,'PF',242,83,10),(50,'Brook','Lopez',11,'C',282,84,10),(51,'Trey','Burke',23,'PG',185,72,11),(52,'Tim','Hardaway Jr.',11,'SG',205,77,11),(53,'Kevin','Knox II',20,'SF',215,79,11),(54,'Lance','Thomas',42,'PF',240,80,11),(55,'Enes','Kanter',11,'C',250,82,11),(56,'D.J.','Augustin',14,'PG',183,71,12),(57,'Evan','Frounier',10,'SG',205,79,12),(58,'Jonathan','Isaac',1,'SF',230,83,12),(59,'Aaron','Gordon',0,'PF',235,80,12),(60,'Nikola','Vucevic',9,'C',260,83,12),(61,'Ben','Simmons',25,'PG',240,82,13),(62,'Markelle','Fultz',20,'SG',209,75,13),(63,'Robert','Covington',33,'SF',209,79,13),(64,'Dario','Saric',20,'PF',225,82,13),(65,'Joel','Embiid',21,'C',280,84,13),(66,'Kyle','Lowry',7,'PG',196,72,14),(67,'Danny','Green',14,'SG',215,78,14),(68,'Kawhi','Leonard',2,'SF',225,79,14),(69,'Serge','Ibaka',9,'PF',235,84,14),(70,'Jonas','Valanciunas',17,'C',265,83,14),(71,'John','Wall',2,'PG',210,86,15),(72,'Bradley','Beal',3,'SG',207,75,15),(73,'Otto','Porter',22,'SF',198,80,15),(74,'Markieff','Morris',8,'PF',245,80,15),(75,'Dwight','Howard',39,'C',265,82,15);
/*!40000 ALTER TABLE `conference_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_signed` datetime NOT NULL,
  `year_length` int(11) NOT NULL,
  `dollar_amount` int(11) NOT NULL,
  `player_id` int(11) DEFAULT NULL,
  `coach_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`contract_id`),
  KEY `contracts_to_confrence_roster_idx` (`player_id`) /*!80000 INVISIBLE */,
  KEY `contracts_coaches_idx` (`coach_id`),
  CONSTRAINT `contracts_coaches` FOREIGN KEY (`coach_id`) REFERENCES `coaches` (`coach_id`),
  CONSTRAINT `contracts_to_player` FOREIGN KEY (`player_id`) REFERENCES `conference_roster` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts`
--

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
INSERT INTO `contracts` VALUES (1,'2017-05-24 00:00:00',2,21324966,1,NULL),(2,'2018-09-11 00:00:00',1,23664945,2,NULL),(3,'2014-03-02 00:00:00',5,17156885,3,NULL),(4,'2017-09-07 00:00:00',4,13143637,4,NULL),(5,'2016-07-14 00:00:00',4,17261343,5,NULL),(6,'2012-03-05 00:00:00',7,3370463,6,NULL),(7,'2014-03-11 00:00:00',7,13212891,7,NULL),(8,'2016-09-27 00:00:00',2,3153636,8,NULL),(9,'2015-10-20 00:00:00',4,2533441,9,NULL),(10,'2017-09-29 00:00:00',2,3783351,10,NULL),(11,'2017-12-26 00:00:00',3,14309461,11,NULL),(12,'2017-10-08 00:00:00',4,7456366,12,NULL),(13,'2017-10-11 00:00:00',3,24715233,13,NULL),(14,'2016-11-25 00:00:00',3,9646537,14,NULL),(15,'2013-09-21 00:00:00',5,10633747,15,NULL),(16,'2016-09-30 00:00:00',2,22533980,16,NULL),(17,'2017-01-05 00:00:00',4,21092993,17,NULL),(18,'2016-06-09 00:00:00',2,22793615,18,NULL),(19,'2014-07-06 00:00:00',5,12559633,19,NULL),(20,'2016-09-11 00:00:00',3,16178331,20,NULL),(21,'2016-09-24 00:00:00',3,17479343,21,NULL),(22,'2014-06-16 00:00:00',4,27788789,22,NULL),(23,'2013-04-15 00:00:00',6,17800886,23,NULL),(24,'2015-11-04 00:00:00',3,26842591,24,NULL),(25,'2017-05-11 00:00:00',5,26937520,25,NULL),(26,'2015-01-26 00:00:00',3,22297465,26,NULL),(27,'2016-12-18 00:00:00',2,22713388,27,NULL),(28,'2017-04-10 00:00:00',2,6268913,28,NULL),(29,'2016-07-10 00:00:00',5,5213450,29,NULL),(30,'2016-06-12 00:00:00',3,25751227,30,NULL),(31,'2014-12-08 00:00:00',4,14143443,31,NULL),(32,'2014-08-01 00:00:00',4,17405633,32,NULL),(33,'2018-10-13 00:00:00',2,5741870,33,NULL),(34,'2014-02-05 00:00:00',5,5840674,34,NULL),(35,'2017-11-12 00:00:00',4,9540441,35,NULL),(36,'2014-11-14 00:00:00',3,6862781,36,NULL),(37,'2016-07-25 00:00:00',5,2304642,37,NULL),(38,'2015-12-05 00:00:00',4,19120592,38,NULL),(39,'2017-06-23 00:00:00',5,15404733,39,NULL),(40,'2016-03-09 00:00:00',3,20671364,40,NULL),(41,'2015-02-25 00:00:00',4,4162594,41,NULL),(42,'2012-02-28 00:00:00',7,12544108,42,NULL),(43,'2016-04-09 00:00:00',5,1525317,43,NULL),(44,'2013-11-28 00:00:00',6,14909621,44,NULL),(45,'2017-10-04 00:00:00',1,16756607,45,NULL),(46,'2013-08-23 00:00:00',6,12056026,46,NULL),(47,'2017-04-13 00:00:00',3,2877004,47,NULL),(48,'2016-11-02 00:00:00',2,27838676,48,NULL),(49,'2016-11-11 00:00:00',3,15879356,49,NULL),(50,'2015-01-29 00:00:00',4,18470187,50,NULL),(51,'2015-09-25 00:00:00',5,1493010,51,NULL),(52,'2012-11-13 00:00:00',6,18550258,52,NULL),(53,'2012-07-29 00:00:00',7,26556019,53,NULL),(54,'2012-06-13 00:00:00',7,1731742,54,NULL),(55,'2016-03-23 00:00:00',4,18106469,55,NULL),(56,'2015-12-26 00:00:00',5,25770838,56,NULL),(57,'2016-02-15 00:00:00',4,6740410,57,NULL),(58,'2017-02-05 00:00:00',3,17322419,58,NULL),(59,'2014-08-22 00:00:00',4,15863120,59,NULL),(60,'2017-12-18 00:00:00',3,7389327,60,NULL),(61,'2016-04-27 00:00:00',4,9332459,61,NULL),(62,'2016-02-09 00:00:00',3,26005335,62,NULL),(63,'2016-05-03 00:00:00',4,4947522,63,NULL),(64,'2016-04-22 00:00:00',3,6479626,64,NULL),(65,'2016-06-22 00:00:00',4,17953554,65,NULL),(66,'2013-08-20 00:00:00',5,17325661,66,NULL),(67,'2014-05-13 00:00:00',4,5536366,67,NULL),(68,'2016-01-28 00:00:00',5,20074640,68,NULL),(69,'2018-10-03 00:00:00',5,11378250,69,NULL),(70,'2017-09-15 00:00:00',4,9284397,70,NULL),(71,'2017-02-05 00:00:00',3,3095045,71,NULL),(72,'2017-04-13 00:00:00',6,23714976,72,NULL),(73,'2016-09-07 00:00:00',3,3513951,73,NULL),(74,'2017-03-15 00:00:00',4,17384751,74,NULL),(75,'2017-01-09 00:00:00',2,3667413,75,NULL),(76,'2015-01-28 00:00:00',4,12851476,NULL,1),(77,'2018-03-13 00:00:00',5,8458480,NULL,2),(78,'2016-02-21 00:00:00',4,4565976,NULL,3),(79,'2015-04-10 00:00:00',4,14211063,NULL,4),(80,'2015-06-20 00:00:00',4,12128805,NULL,5),(81,'2017-10-11 00:00:00',3,11025193,NULL,6),(82,'2015-04-08 00:00:00',5,1493076,NULL,7),(83,'2014-02-12 00:00:00',5,7157579,NULL,8),(84,'2016-03-04 00:00:00',4,11870458,NULL,9),(85,'2013-11-08 00:00:00',5,13542676,NULL,10),(86,'2014-07-13 00:00:00',5,14409894,NULL,11),(87,'2014-07-17 00:00:00',5,13507796,NULL,12),(88,'2018-02-15 00:00:00',2,663239,NULL,13),(89,'2015-07-23 00:00:00',4,10141360,NULL,14),(90,'2017-12-11 00:00:00',3,8084710,NULL,15),(91,'2017-04-21 00:00:00',2,6374760,NULL,16),(92,'2013-10-21 00:00:00',5,13502999,NULL,17),(93,'2017-12-22 00:00:00',4,14550904,NULL,18),(94,'2017-08-16 00:00:00',2,14223297,NULL,19),(95,'2018-03-23 00:00:00',3,2795044,NULL,20),(96,'2018-02-04 00:00:00',1,5698608,NULL,21),(97,'2013-05-09 00:00:00',6,6625448,NULL,22),(98,'2013-05-09 00:00:00',6,10367066,NULL,23),(99,'2018-07-25 00:00:00',5,8589915,NULL,24),(100,'2014-08-05 00:00:00',5,3846504,NULL,25),(101,'2015-04-02 00:00:00',4,14411054,NULL,26),(102,'2015-11-12 00:00:00',6,14490286,NULL,27),(103,'2017-05-13 00:00:00',2,9702661,NULL,28),(104,'2016-04-18 00:00:00',4,13506227,NULL,29),(105,'2018-07-03 00:00:00',5,1955613,NULL,30);
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `full_season`
--

DROP TABLE IF EXISTS `full_season`;
/*!50001 DROP VIEW IF EXISTS `full_season`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `full_season` AS SELECT 
 1 AS `Player Name`,
 1 AS `player_position`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `team_arena` varchar(45) NOT NULL,
  `team_1_score` varchar(45) NOT NULL,
  `team_2_score` varchar(45) NOT NULL,
  PRIMARY KEY (`game_id`),
  KEY `games_to_teams_idx` (`team_id`),
  KEY `games_to_teams2_idx` (`team_arena`),
  CONSTRAINT `games_to_teams` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,15,'state farm','87','79'),(2,14,'td garden','109','110'),(3,13,'barclays','105','99'),(4,12,'spectrum center','109','102'),(5,11,'united center','115','125'),(6,10,'rocket mortgage fieldhouse','100','95'),(7,9,'little ceasers','102','98'),(8,8,'bankers life fieldhouse','95','107'),(9,7,'american airlines','93','101'),(10,6,'fiserv forum','100','96'),(11,5,'madison square garden','108','114'),(12,4,'amway center','98','105'),(13,3,'wells fargo','95','88'),(14,2,'scotiabank','107','113'),(15,1,'capital one','107','93'),(16,14,'state farm','95','119'),(17,15,'td garden','99','101'),(18,12,'barclays','108','98'),(19,13,'spectrum center','115','107'),(20,10,'united center','118','116'),(21,11,'rocket mortgage fieldhouse','98','103'),(22,9,'little ceasers','95','93'),(23,7,'bankers life fieldhouse','99','96'),(24,8,'american airlines','120','114'),(25,6,'fiserv forum','125','119'),(26,4,'madison square garden','99','103'),(27,5,'amway center','106','95'),(28,3,'wells fargo','109','121'),(29,1,'scotiabank','98','115'),(30,2,'capital one','102','99');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infractions`
--

DROP TABLE IF EXISTS `infractions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infractions` (
  `infraction_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `infraction_description` varchar(45) NOT NULL,
  PRIMARY KEY (`infraction_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infractions`
--

LOCK TABLES `infractions` WRITE;
/*!40000 ALTER TABLE `infractions` DISABLE KEYS */;
INSERT INTO `infractions` VALUES (1,'traveling'),(2,'frontcourt/backcourt'),(3,'out of bounds'),(4,'improper dribbling or failure to dribble'),(5,'improper throw-in'),(6,'striking the ball'),(7,'improper jumpball'),(8,'violation of offensive three-second rule'),(9,'violation of defensive three-second rule'),(10,'violation of eight-second rule'),(11,'illegal assist in scoring'),(12,'entering basket from below'),(13,'swinging elbow'),(14,'Offensive Screen Set Out-of-Bounds'),(15,'Offensive Player Out-of-Bounds'),(16,'Five-Second Back-to-the-Basket Violation');
/*!40000 ALTER TABLE `infractions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infractions_games`
--

DROP TABLE IF EXISTS `infractions_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infractions_games` (
  `infraction_type_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  KEY `infractions_to_games_idx` (`game_id`),
  KEY `infractions_to_infractionlink` (`infraction_type_id`),
  CONSTRAINT `infractions_to_games` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`),
  CONSTRAINT `infractions_to_infractionlink` FOREIGN KEY (`infraction_type_id`) REFERENCES `infractions` (`infraction_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infractions_games`
--

LOCK TABLES `infractions_games` WRITE;
/*!40000 ALTER TABLE `infractions_games` DISABLE KEYS */;
INSERT INTO `infractions_games` VALUES (2,1),(3,1),(1,1),(3,1),(3,2),(12,2),(4,2),(7,2),(14,2),(5,2),(16,3),(7,3),(4,3),(12,4),(1,4),(4,5),(14,5),(15,6),(16,6),(11,6),(11,6),(1,6),(5,7),(4,7),(2,7),(6,8),(15,8),(2,8),(10,8),(9,9),(12,9),(1,9),(4,9),(5,9),(7,9),(9,9),(7,10),(4,11),(2,11),(12,12),(10,13),(13,14),(14,14),(11,14),(15,14),(16,14),(16,14),(1,14),(1,15),(2,15),(4,15),(3,15),(6,16),(7,16),(8,16),(2,16),(3,17),(1,17),(3,18),(3,18),(12,18),(4,19),(7,19),(14,20),(5,20),(16,20),(7,20),(4,20),(12,21),(1,21),(4,21),(14,21),(15,21),(16,22),(11,22),(11,23),(1,23),(5,23),(4,23),(2,24),(6,25),(9,25),(7,25),(4,26),(2,26),(12,26),(10,26),(13,26),(14,27),(11,28),(15,28),(16,28),(16,29),(1,29),(1,29),(2,29),(4,30),(3,30),(6,30),(7,30);
/*!40000 ALTER TABLE `infractions_games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infractions_players`
--

DROP TABLE IF EXISTS `infractions_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infractions_players` (
  `infraction_type_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  KEY `infrap_to_infrax_idx` (`infraction_type_id`),
  KEY `infrap_to_confros_idx` (`player_id`),
  CONSTRAINT `infrap_to_confros` FOREIGN KEY (`player_id`) REFERENCES `conference_roster` (`player_id`),
  CONSTRAINT `infrap_to_infrax` FOREIGN KEY (`infraction_type_id`) REFERENCES `infractions` (`infraction_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infractions_players`
--

LOCK TABLES `infractions_players` WRITE;
/*!40000 ALTER TABLE `infractions_players` DISABLE KEYS */;
INSERT INTO `infractions_players` VALUES (2,22),(11,1),(10,2),(14,65),(3,32),(9,56),(8,72),(7,12),(12,35),(9,21),(14,34),(4,6),(11,8),(12,54),(12,23),(7,53),(15,63),(2,29),(14,38),(15,18),(8,20),(5,27),(13,30),(8,61),(2,53),(14,14),(6,25),(1,42),(8,36),(11,26),(3,43),(2,13),(3,52),(2,39),(6,61),(5,19),(5,18),(12,7),(16,2),(16,32),(7,4),(9,9),(4,33),(8,53),(10,44),(2,15),(3,18),(5,75),(12,68),(6,29),(7,12),(7,32),(15,42),(8,26),(12,30),(13,18),(2,53),(14,44),(5,39),(12,49),(8,5),(3,6),(3,11),(4,45),(16,46),(14,23),(8,53),(8,59),(6,43),(9,63),(8,11),(2,10),(12,44),(4,68),(14,39),(1,75),(3,69),(2,28),(6,54),(5,74),(5,42),(11,10),(8,46),(12,68),(1,26),(11,6),(7,43),(2,8),(3,22),(3,72),(6,68),(8,5),(16,22),(13,11),(1,23),(8,2),(2,58),(13,25),(12,54),(10,27),(9,29),(5,61),(10,25),(11,71),(11,23),(16,42),(5,57),(16,28),(1,52),(8,28),(4,18),(2,29),(8,55),(7,45),(2,20),(14,35),(10,36),(5,16),(10,27),(2,29),(5,60),(4,69),(13,74),(2,34),(1,63),(1,57),(4,12),(15,19),(9,46),(11,67),(8,72),(3,14),(16,12),(10,23),(8,54),(10,20),(14,55),(11,63),(14,16),(3,27),(14,15),(7,7),(8,21),(13,63),(7,30),(3,74),(16,69),(14,30),(7,11),(11,69),(7,63),(13,4),(10,52),(8,20),(13,41),(4,17),(16,5),(7,33),(6,12),(8,42),(11,75),(10,40),(9,75),(4,25),(1,38),(5,54),(4,45),(4,22),(9,62),(6,42),(4,72),(4,23),(11,23),(5,55),(8,59),(13,30),(11,59),(4,11),(9,60),(14,65),(4,55),(16,72),(13,67),(11,36),(6,43),(8,69),(3,52),(3,8),(3,40),(16,14),(9,12),(5,69),(3,1),(8,68),(8,2),(8,13),(6,44),(4,18),(11,71),(4,69),(6,43),(3,52),(9,8),(5,6),(5,8),(6,11),(2,11),(15,40),(15,66),(7,71),(12,45),(13,2),(8,63),(5,74),(13,15),(13,67),(15,22),(14,55),(8,46),(4,30),(9,30),(9,50),(13,62),(6,23),(13,27),(6,34),(9,71),(3,44),(10,59),(4,70),(6,74),(2,66),(9,63),(11,55),(1,8),(11,10),(7,73),(6,50),(3,12),(10,5),(2,46),(3,46),(3,14),(13,62),(9,50),(4,22),(1,44),(10,7),(15,39),(12,41),(4,33),(3,53),(13,2),(14,51),(4,12),(15,11),(5,20),(16,18),(9,38),(2,28),(16,56),(14,74),(11,17),(11,2),(5,41),(3,33),(1,25),(2,53),(5,55),(4,17),(13,21),(16,23),(11,19),(10,9),(16,27),(15,7),(14,39),(8,45),(10,35),(6,31),(2,36),(2,37),(5,35),(12,61),(4,66),(2,64),(2,30),(8,18),(1,36),(16,6),(7,66),(11,73),(8,33),(16,18),(9,36),(7,1),(8,69),(13,54),(15,67),(16,25);
/*!40000 ALTER TABLE `infractions_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_stats`
--

DROP TABLE IF EXISTS `player_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_stats` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `games_played` int(11) NOT NULL,
  `total_points` int(11) NOT NULL,
  `total_assists` int(11) NOT NULL,
  `total_steals` int(11) NOT NULL,
  `total_blocks` int(11) NOT NULL,
  `total_rebounds` int(11) NOT NULL,
  PRIMARY KEY (`player_id`),
  CONSTRAINT `player_stats_to_confrence_roster` FOREIGN KEY (`player_id`) REFERENCES `conference_roster` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_stats`
--

LOCK TABLES `player_stats` WRITE;
/*!40000 ALTER TABLE `player_stats` DISABLE KEYS */;
INSERT INTO `player_stats` VALUES (1,81,1549,653,72,15,301),(2,75,727,214,65,25,245),(3,55,742,118,53,19,199),(4,61,1188,121,22,39,595),(5,64,693,90,69,71,480),(6,67,1596,464,103,34,335),(7,74,964,100,69,32,313),(8,79,1243,168,84,57,477),(9,72,825,244,62,23,322),(10,68,925,283,59,86,458),(11,81,1712,563,100,20,315),(12,43,413,46,23,13,148),(13,40,547,156,42,14,151),(14,59,527,96,44,27,310),(15,80,873,110,43,120,672),(16,82,2102,484,102,34,361),(17,79,1208,172,88,32,434),(18,75,699,247,71,43,390),(19,75,756,92,71,61,407),(20,49,497,102,38,41,333),(21,46,166,277,68,21,187),(22,63,1492,283,60,26,294),(23,82,857,146,121,36,323),(24,64,930,152,46,30,421),(25,74,704,89,11,78,286),(26,60,458,135,52,8,148),(27,72,805,126,59,12,157),(28,76,991,195,60,11,357),(29,22,374,48,6,5,239),(30,67,627,214,100,40,552),(31,82,1260,344,55,9,216),(32,74,319,91,40,36,185),(33,66,454,88,60,14,217),(34,75,1841,402,52,28,565),(35,79,1370,112,136,138,1232),(36,69,855,368,92,15,178),(37,75,484,103,43,12,287),(38,64,972,232,65,40,182),(39,50,674,94,12,21,92),(40,76,1873,103,53,36,345),(41,82,235,282,78,19,82),(42,80,885,147,45,28,435),(43,65,215,184,73,29,391),(44,78,1123,137,25,72,271),(45,73,653,193,109,63,623),(46,36,145,84,36,25,821),(47,48,732,151,42,16,353),(48,53,201,183,38,29,421),(49,74,1398,70,53,36,251),(50,72,438,259,49,46,843),(51,68,817,147,61,27,523),(52,40,1458,194,79,46,276),(53,82,427,149,88,49,456),(54,74,621,263,63,42,734),(55,68,874,318,20,37,597),(56,75,379,207,131,45,484),(57,44,1290,120,93,53,561),(58,82,832,163,27,49,395),(59,36,573,183,43,62,316),(60,82,924,204,17,28,211),(61,77,732,89,53,13,648),(62,74,287,258,48,8,597),(63,68,1978,311,84,18,954),(64,53,631,184,47,38,169),(65,68,903,169,63,74,523),(66,82,271,138,12,28,395),(67,80,714,181,37,26,245),(68,79,1245,199,95,37,354),(69,44,658,183,34,24,235),(70,76,832,127,76,54,754),(71,73,945,215,42,40,478),(72,27,642,96,87,52,466),(73,64,372,172,34,48,246),(74,82,1472,158,70,49,385),(75,24,415,162,47,140,524);
/*!40000 ALTER TABLE `player_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `player_three_year_contract`
--

DROP TABLE IF EXISTS `player_three_year_contract`;
/*!50001 DROP VIEW IF EXISTS `player_three_year_contract`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `player_three_year_contract` AS SELECT 
 1 AS `Full Name`,
 1 AS `year_length`,
 1 AS `Contract Value`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(45) NOT NULL,
  `team_city` varchar(45) NOT NULL,
  `team_state` varchar(45) NOT NULL,
  `team_division` varchar(45) NOT NULL,
  `team_arena` varchar(45) NOT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Hawks','Atlanta','Georgia','southeast','state farm'),(2,'Celtics','Boston','Massachusets','atlantic','td garden'),(3,'Nets','Brooklyn','New York','atlantic','barclays'),(4,'Hornets','Charlotte','North Carolina','southeast','spectrum center'),(5,'Bulls','Chicago','Illinois','central','united center'),(6,'Cavaliers','Cleveland','Ohio','central','rocket mortgage fieldhouse'),(7,'Pistons','Detroit','Michicgan','central','little ceasers '),(8,'Pacers','Indianapolis','Indiana','central','bankers life fieldhouse'),(9,'Heat','Miami','Florida','southeast','american airlines'),(10,'Bucks','Milwuakee','Wisconsin','central','fiserv forum'),(11,'Knicks','Manhattan','New York','atlantic','madison square garden'),(12,'Magic','Orlando','Florida','southeast','amway center'),(13,'76ers','Philadelphia','Pennsylvania','atlantic','wells fargo'),(14,'Raptors','Toronto','Ontario','atlantic','scotiabank'),(15,'Wizards','Washington','D.C','southeast','capital one');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `top_5_pg`
--

DROP TABLE IF EXISTS `top_5_pg`;
/*!50001 DROP VIEW IF EXISTS `top_5_pg`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_5_pg` AS SELECT 
 1 AS `Player Name`,
 1 AS `Points Per Game`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `atl_home_100`
--

/*!50001 DROP VIEW IF EXISTS `atl_home_100`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `atl_home_100` AS select concat(`teams`.`team_city`,' ',`teams`.`team_name`) AS `Home Team`,`games`.`team_2_score` AS `Score`,`games`.`game_id` AS `Game` from (`teams` join `games` on((`teams`.`team_arena` = `games`.`team_arena`))) where ((`teams`.`team_division` = 'atlantic') and (`games`.`team_2_score` >= 100)) order by `games`.`game_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `committed_fouls`
--

/*!50001 DROP VIEW IF EXISTS `committed_fouls`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `committed_fouls` AS select distinct `infractions_games`.`game_id` AS `Game`,`games`.`team_arena` AS `Venue`,`fw`.`Infractions` AS `Infractions` from (((`infractions` join `infractions_games` on((`infractions`.`infraction_type_id` = `infractions_games`.`infraction_type_id`))) join `games` on((`infractions_games`.`game_id` = `games`.`game_id`))) join (select `infractions_games`.`game_id` AS `game_id`,count(`infractions_games`.`game_id`) AS `Infractions` from `infractions_games` group by `infractions_games`.`game_id`) `fw` on((`infractions_games`.`game_id` = `fw`.`game_id`))) where (`games`.`team_1_score` > `games`.`team_2_score`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `full_season`
--

/*!50001 DROP VIEW IF EXISTS `full_season`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `full_season` AS select concat(`conference_roster`.`player_fn`,' ',`conference_roster`.`player_ln`) AS `Player Name`,`conference_roster`.`player_position` AS `player_position` from (`conference_roster` join `player_stats` on((`conference_roster`.`player_id` = `player_stats`.`player_id`))) where (`player_stats`.`games_played` = 82) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `player_three_year_contract`
--

/*!50001 DROP VIEW IF EXISTS `player_three_year_contract`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `player_three_year_contract` AS select concat(`conference_roster`.`player_fn`,' ',`conference_roster`.`player_ln`) AS `Full Name`,`contracts`.`year_length` AS `year_length`,concat('$',convert(format(`contracts`.`dollar_amount`,2) using utf8mb4)) AS `Contract Value` from (`contracts` join `conference_roster` on((`conference_roster`.`player_id` = `contracts`.`player_id`))) where ((`contracts`.`year_length` > 3) and (`conference_roster`.`player_position` = 'PF')) order by (`contracts`.`dollar_amount` / `contracts`.`year_length`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_5_pg`
--

/*!50001 DROP VIEW IF EXISTS `top_5_pg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_5_pg` AS select concat(`conference_roster`.`player_fn`,' ',`conference_roster`.`player_ln`) AS `Player Name`,round((`player_stats`.`total_points` / `player_stats`.`games_played`),0) AS `Points Per Game` from (`conference_roster` join `player_stats` on((`conference_roster`.`player_id` = `player_stats`.`player_id`))) where (`conference_roster`.`player_position` = 'PG') order by (`player_stats`.`total_points` / `player_stats`.`games_played`) desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-06 15:42:46
