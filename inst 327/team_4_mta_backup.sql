-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: mta_inst_final
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `Amenity_ID` int NOT NULL,
  `Amenity_Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Amenity_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,'Shelter'),(2,'Benches'),(3,'Public Restroom'),(4,'Public Phone');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bikes`
--

DROP TABLE IF EXISTS `bikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bikes` (
  `Bike_ID` int NOT NULL,
  `Bicycle_Racks_Number` int NOT NULL,
  `Bicycle_Racks_Type` varchar(45) DEFAULT NULL,
  `Bicycle_Lockers_Number` int NOT NULL,
  `Bicycle_Lockers_Occupied` int DEFAULT NULL,
  PRIMARY KEY (`Bike_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bikes`
--

LOCK TABLES `bikes` WRITE;
/*!40000 ALTER TABLE `bikes` DISABLE KEYS */;
INSERT INTO `bikes` VALUES (1,2,'2 other',1,0),(2,6,'2 Inverted U; 4 Other',0,0),(3,70,'70 Inverted U',27,0),(4,0,'N/A',8,1),(5,35,'12 Inverted U; 23 Thick Inverted U',8,0),(6,3,'2 Inverted U; 1 Wave',10,10),(7,4,'4 Inverted U',0,0),(8,0,'N/A',0,0),(9,2,'1 Bicycle Shaped; 1 Other',0,0),(10,0,'N/A',0,0),(11,0,'N/A',0,0),(12,4,'2 Inverted U; 1 BR-Wheel Bender Combo; 1 Wave',0,0),(13,2,'2 Thick Inverted U',0,0),(14,0,'N/A',0,0),(15,2,'2 Inverted U',0,0),(16,0,'N/A',0,0),(17,2,'2 Inverted U',10,0),(18,3,'3 Swerve',0,0);
/*!40000 ALTER TABLE `bikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `construction_permits`
--

DROP TABLE IF EXISTS `construction_permits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `construction_permits` (
  `Construction_Permit_ID` int NOT NULL,
  `Permit_Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Construction_Permit_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `construction_permits`
--

LOCK TABLES `construction_permits` WRITE;
/*!40000 ALTER TABLE `construction_permits` DISABLE KEYS */;
INSERT INTO `construction_permits` VALUES (1,'Residential New Construction'),(2,'Nonresidential New Contruction'),(3,'Mixed Use New Construction');
/*!40000 ALTER TABLE `construction_permits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurisdiction`
--

DROP TABLE IF EXISTS `jurisdiction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jurisdiction` (
  `Jurisdiction_ID` int NOT NULL,
  `Jurisdiction` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Jurisdiction_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurisdiction`
--

LOCK TABLES `jurisdiction` WRITE;
/*!40000 ALTER TABLE `jurisdiction` DISABLE KEYS */;
INSERT INTO `jurisdiction` VALUES (1,'Montgomery County'),(2,'Prince George\'s County'),(3,'Baltimore City');
/*!40000 ALTER TABLE `jurisdiction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking`
--

DROP TABLE IF EXISTS `parking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parking` (
  `Parking_ID` int NOT NULL,
  `Regular_Parking_Spots` int NOT NULL,
  `Parking_Fee` varchar(3) NOT NULL,
  `Parking_Spots_ADA` int NOT NULL,
  PRIMARY KEY (`Parking_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking`
--

LOCK TABLES `parking` WRITE;
/*!40000 ALTER TABLE `parking` DISABLE KEYS */;
INSERT INTO `parking` VALUES (1,108,'No',4),(2,618,'No',14),(3,0,'Yes',0),(4,667,'No',15),(5,0,'Yes',0),(6,257,'No',10),(7,73,'No',2),(8,16,'No',0),(9,41,'No',1),(10,16,'No',0),(11,0,'Yes',0),(12,672,'No',22),(13,102,'No',5),(14,0,'No',0),(15,36,'No',2),(16,0,'No',9),(17,318,'No',19),(18,0,'No',0);
/*!40000 ALTER TABLE `parking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rail_lines`
--

DROP TABLE IF EXISTS `rail_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rail_lines` (
  `Rail_Type_ID` int NOT NULL,
  `Rail_Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Rail_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rail_lines`
--

LOCK TABLES `rail_lines` WRITE;
/*!40000 ALTER TABLE `rail_lines` DISABLE KEYS */;
INSERT INTO `rail_lines` VALUES (1,'WMATA Metro'),(2,'MARC: Brunswick Line'),(3,'Metro'),(4,'MARC: Penn Line'),(5,'Light Rail'),(6,'MARC: Brunswick Line; Amtrak'),(7,'MARC: Penn Line; WMATA Metro; Amtrak'),(8,'MARC: Camden Line'),(9,'MARC: Penn Line; Light Rail; Amtrak'),(10,'MARC: Brunswick Line; WMATA Metro'),(11,'MARC: Camden Line; WMATA Metro'),(12,'MARC: Camden Line; Light Rail');
/*!40000 ALTER TABLE `rail_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station_access`
--

DROP TABLE IF EXISTS `station_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_access` (
  `Access_ID` int NOT NULL,
  `Station_ID` int NOT NULL,
  `Bike_Access_Score` int NOT NULL,
  `Ped_Access_Score` int NOT NULL,
  PRIMARY KEY (`Access_ID`,`Station_ID`),
  KEY `fk_Station_ID_idx` (`Station_ID`),
  KEY `fk_Access_ID_idx` (`Access_ID`),
  CONSTRAINT `Station_ID3` FOREIGN KEY (`Station_ID`) REFERENCES `stations` (`Station_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_access`
--

LOCK TABLES `station_access` WRITE;
/*!40000 ALTER TABLE `station_access` DISABLE KEYS */;
INSERT INTO `station_access` VALUES (1,72,1,4),(2,58,1,1),(3,70,4,4),(4,69,1,1),(5,60,5,2),(6,59,1,2),(7,81,1,1),(8,80,2,1),(9,88,1,3),(10,82,2,1),(11,90,4,5),(12,83,2,2),(13,89,1,3),(14,34,4,5),(15,36,4,4),(16,14,4,5),(17,8,4,4),(18,37,3,3);
/*!40000 ALTER TABLE `station_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station_amenities`
--

DROP TABLE IF EXISTS `station_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_amenities` (
  `Amenity_ID` int NOT NULL,
  `Station_ID` int NOT NULL,
  `Does_Exist` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`Amenity_ID`,`Station_ID`),
  KEY `fk_Amenity_ID_idx` (`Amenity_ID`),
  KEY `fk_Station_ID_idx` (`Station_ID`),
  CONSTRAINT `Amenity_ID1` FOREIGN KEY (`Amenity_ID`) REFERENCES `amenities` (`Amenity_ID`),
  CONSTRAINT `Station_ID2` FOREIGN KEY (`Station_ID`) REFERENCES `stations` (`Station_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_amenities`
--

LOCK TABLES `station_amenities` WRITE;
/*!40000 ALTER TABLE `station_amenities` DISABLE KEYS */;
INSERT INTO `station_amenities` VALUES (1,8,'Yes'),(1,14,'Yes'),(1,34,'Yes'),(1,36,'Yes'),(1,37,'Yes'),(1,58,'Yes'),(1,59,'Yes'),(1,60,'Yes'),(1,69,'Yes'),(1,70,'Yes'),(1,72,'Yes'),(1,80,'No'),(1,81,'Yes'),(1,82,'Yes'),(1,83,'Yes'),(1,88,'Yes'),(1,89,'Yes'),(1,90,'Yes'),(2,8,'Yes'),(2,14,'No'),(2,34,'Yes'),(2,36,'Yes'),(2,37,'Yes'),(2,58,'Yes'),(2,59,'Yes'),(2,60,'Yes'),(2,69,'Yes'),(2,70,'Yes'),(2,72,'Yes'),(2,80,'No'),(2,81,'No'),(2,82,'Yes'),(2,83,'Yes'),(2,88,'Yes'),(2,89,'Yes'),(2,90,'No'),(3,8,'No'),(3,14,'No'),(3,34,'No'),(3,36,'No'),(3,37,'No'),(3,58,'No'),(3,59,'Yes'),(3,60,'Yes'),(3,69,'No'),(3,70,'No'),(3,72,'No'),(3,80,'No'),(3,81,'No'),(3,82,'No'),(3,83,'No'),(3,88,'No'),(3,89,'Yes'),(3,90,'No'),(4,8,'Yes'),(4,14,'Yes'),(4,34,'Yes'),(4,36,'Yes'),(4,37,'Yes'),(4,58,'No'),(4,59,'No'),(4,60,'No'),(4,69,'No'),(4,70,'No'),(4,72,'No'),(4,80,'No'),(4,81,'Yes'),(4,82,'No'),(4,83,'Yes'),(4,88,'No'),(4,89,'No'),(4,90,'No');
/*!40000 ALTER TABLE `station_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station_lines`
--

DROP TABLE IF EXISTS `station_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_lines` (
  `Rail_Type_ID` int NOT NULL,
  `Station_ID` int NOT NULL,
  PRIMARY KEY (`Rail_Type_ID`,`Station_ID`),
  KEY `fk_Station_ID_idx` (`Station_ID`),
  KEY `Station_Lines_idx` (`Rail_Type_ID`),
  CONSTRAINT `Station_ID4` FOREIGN KEY (`Station_ID`) REFERENCES `stations` (`Station_ID`),
  CONSTRAINT `Station_Lines1` FOREIGN KEY (`Rail_Type_ID`) REFERENCES `rail_lines` (`Rail_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_lines`
--

LOCK TABLES `station_lines` WRITE;
/*!40000 ALTER TABLE `station_lines` DISABLE KEYS */;
INSERT INTO `station_lines` VALUES (3,8),(3,14),(5,34),(5,36),(5,37),(4,58),(4,59),(7,60),(8,69),(11,70),(8,72),(2,80),(2,81),(2,82),(2,83),(2,88),(2,89),(10,90);
/*!40000 ALTER TABLE `station_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station_permits`
--

DROP TABLE IF EXISTS `station_permits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_permits` (
  `Construction_Permit_ID` int NOT NULL,
  `Station_ID` int NOT NULL,
  `Number_Of_Permits` int DEFAULT NULL,
  PRIMARY KEY (`Construction_Permit_ID`,`Station_ID`),
  KEY `fk_Construction_Permit_ID_idx` (`Construction_Permit_ID`),
  KEY `fk_Station_ID_idx` (`Station_ID`),
  CONSTRAINT `Construction_Permit_ID1` FOREIGN KEY (`Construction_Permit_ID`) REFERENCES `construction_permits` (`Construction_Permit_ID`),
  CONSTRAINT `Station_ID10` FOREIGN KEY (`Station_ID`) REFERENCES `stations` (`Station_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_permits`
--

LOCK TABLES `station_permits` WRITE;
/*!40000 ALTER TABLE `station_permits` DISABLE KEYS */;
INSERT INTO `station_permits` VALUES (1,8,6),(1,14,16),(1,34,30),(1,36,30),(1,37,92),(1,58,0),(1,59,0),(1,60,0),(1,69,0),(1,70,0),(1,72,0),(1,80,0),(1,81,0),(1,82,0),(1,83,0),(1,88,0),(1,89,0),(1,90,0),(2,8,0),(2,14,0),(2,34,306),(2,36,159),(2,37,0),(2,58,0),(2,59,0),(2,60,0),(2,69,0),(2,70,0),(2,72,0),(2,80,0),(2,81,0),(2,82,0),(2,83,0),(2,88,0),(2,89,0),(2,90,0),(3,8,0),(3,14,0),(3,34,1),(3,36,1),(3,37,0),(3,58,0),(3,59,0),(3,60,0),(3,69,0),(3,70,0),(3,72,0),(3,80,0),(3,81,0),(3,82,0),(3,83,0),(3,88,0),(3,89,0),(3,90,0);
/*!40000 ALTER TABLE `station_permits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station_type`
--

DROP TABLE IF EXISTS `station_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_type` (
  `Station_Type_ID` int NOT NULL,
  `Station_Type` varchar(20) NOT NULL,
  PRIMARY KEY (`Station_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_type`
--

LOCK TABLES `station_type` WRITE;
/*!40000 ALTER TABLE `station_type` DISABLE KEYS */;
INSERT INTO `station_type` VALUES (1,'Anchor'),(2,'Neighborhood'),(3,'Walk-up'),(4,'Regional'),(5,'Urban Neighborhood'),(6,'Downtown');
/*!40000 ALTER TABLE `station_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stations` (
  `Station_ID` int NOT NULL,
  `Station_Type_ID` int NOT NULL,
  `Bike_ID` int NOT NULL,
  `Parking_ID` int NOT NULL,
  `TOD_ID` int NOT NULL,
  `Jurisdiction_ID` int NOT NULL,
  `Station_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Station_ID`),
  KEY `fk_Station_Type_ID_idx` (`Station_Type_ID`),
  KEY `fk_Bike_ID_idx` (`Bike_ID`),
  KEY `fk_Parking_ID_idx` (`Parking_ID`),
  KEY `fk_TOD_ID_idx` (`TOD_ID`),
  KEY `fk_Jurisdiction_ID_idx` (`Jurisdiction_ID`),
  CONSTRAINT `Bike_ID` FOREIGN KEY (`Bike_ID`) REFERENCES `bikes` (`Bike_ID`),
  CONSTRAINT `Jurisdiction_ID` FOREIGN KEY (`Jurisdiction_ID`) REFERENCES `jurisdiction` (`Jurisdiction_ID`),
  CONSTRAINT `Parking_ID` FOREIGN KEY (`Parking_ID`) REFERENCES `parking` (`Parking_ID`),
  CONSTRAINT `Station_Type_ID` FOREIGN KEY (`Station_Type_ID`) REFERENCES `station_type` (`Station_Type_ID`),
  CONSTRAINT `TOD_ID` FOREIGN KEY (`TOD_ID`) REFERENCES `tod` (`TOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (8,5,17,17,4,3,'Rogers Avenue'),(14,6,16,16,1,3,'Lexington Market'),(34,6,14,14,1,3,'Cultural Center/State Center'),(36,5,15,15,4,3,'North Avenue'),(37,5,18,18,4,3,'Woodberry'),(58,1,3,2,2,2,'Bowie State'),(59,1,6,6,2,2,'Seabrook'),(60,1,5,5,2,2,'New Carrollton'),(69,1,4,4,2,2,'Muirkirk'),(70,2,10,3,4,2,'Greenbelt'),(72,2,9,1,4,2,'Riverdale'),(80,4,12,8,3,1,'Dickerson'),(81,4,11,7,3,1,'Barnesville'),(82,4,13,10,3,1,'Boyds'),(83,1,2,12,2,1,'Germantown'),(88,2,7,9,4,1,'Garrett Park'),(89,2,8,13,4,1,'Kensington'),(90,1,1,11,2,1,'Silver Spring');
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tod`
--

DROP TABLE IF EXISTS `tod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tod` (
  `TOD_ID` int NOT NULL,
  `TOD_Place_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`TOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tod`
--

LOCK TABLES `tod` WRITE;
/*!40000 ALTER TABLE `tod` DISABLE KEYS */;
INSERT INTO `tod` VALUES (1,' Downtown'),(2,'Town, Suburban, or Employment Center'),(3,'Village Center or Rural Town'),(4,'Urban Neighborhood');
/*!40000 ALTER TABLE `tod` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-11  8:14:22
