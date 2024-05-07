-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment` (
  `id` int NOT NULL,
  `courseCode` int NOT NULL,
  `dueDate` date NOT NULL,
  `isSubmitted` varchar(25) DEFAULT NULL,
  `gradeID` int DEFAULT NULL,
  `isReturned` tinyint DEFAULT NULL,
  `lateSubmission` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courseCode` (`courseCode`),
  KEY `gradeID` (`gradeID`),
  CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`courseCode`) REFERENCES `course` (`courseCode`),
  CONSTRAINT `assignment_ibfk_2` FOREIGN KEY (`gradeID`) REFERENCES `grade` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES (1,101,'2024-04-01','T',1,1,NULL),(2,102,'2023-10-14','F',5,1,NULL),(3,102,'2023-05-29','T',5,1,NULL),(4,101,'2023-11-10','T',4,1,NULL),(5,101,'2023-09-24','F',3,1,NULL),(6,102,'2023-11-01','T',3,1,NULL),(7,101,'2023-09-13','T',3,1,NULL),(8,101,'2024-03-09','T',4,1,NULL),(9,101,'2023-12-09','F',3,1,NULL),(10,103,'2023-05-27','T',3,1,NULL),(11,101,'2023-06-06','F',3,1,NULL),(12,102,'2023-07-12','F',2,1,NULL),(13,101,'2023-10-14','T',1,1,NULL),(14,103,'2023-08-12','T',5,1,NULL),(15,103,'2023-06-21','T',2,1,NULL),(16,101,'2024-01-18','T',3,1,NULL),(17,102,'2023-12-22','T',2,1,NULL),(18,102,'2024-02-26','T',3,1,NULL),(19,101,'2024-02-12','F',2,1,NULL),(20,103,'2023-08-18','F',2,1,NULL),(21,102,'2023-12-14','T',5,1,NULL),(22,103,'2023-05-29','F',3,1,NULL),(23,103,'2024-02-12','F',3,1,NULL),(24,102,'2023-09-14','T',3,1,NULL),(25,103,'2023-12-21','T',2,1,NULL),(26,101,'2023-08-23','T',3,1,NULL),(27,103,'2024-03-22','F',5,0,NULL),(28,101,'2023-08-12','F',2,0,NULL),(29,101,'2023-09-21','T',5,0,NULL),(30,103,'2023-11-06','T',5,0,NULL),(31,103,'2023-12-12','F',2,0,NULL),(32,103,'2023-07-02','T',1,0,NULL),(33,102,'2023-08-26','F',5,0,NULL),(34,101,'2023-08-18','F',3,0,NULL),(35,101,'2023-09-25','T',2,0,NULL),(36,103,'2024-01-24','F',3,0,NULL),(37,102,'2023-07-09','F',1,0,NULL),(38,102,'2023-11-18','T',2,0,NULL),(39,102,'2023-06-14','T',4,0,NULL),(40,103,'2024-02-28','T',1,0,NULL),(41,103,'2023-12-10','T',4,0,NULL),(42,101,'2023-10-28','F',2,0,NULL),(43,101,'2023-07-14','T',3,0,NULL),(44,103,'2024-01-12','F',5,0,NULL),(45,103,'2023-12-05','T',3,0,NULL),(46,101,'2023-09-15','F',2,0,NULL),(47,103,'2023-09-17','T',1,0,NULL),(48,103,'2023-07-29','T',3,0,NULL),(49,102,'2023-07-09','T',4,0,NULL),(50,102,'2024-01-12','F',4,1,NULL),(51,101,'2024-02-20','F',4,1,NULL),(52,102,'2023-10-28','T',1,1,NULL),(53,101,'2023-12-04','F',5,1,NULL),(54,103,'2023-05-07','F',3,1,NULL),(55,102,'2024-03-11','F',3,1,NULL),(56,103,'2023-11-16','F',2,1,NULL),(57,103,'2023-08-21','T',5,1,NULL),(58,103,'2023-12-22','T',5,1,NULL),(59,101,'2024-02-09','F',3,1,NULL),(60,103,'2024-04-19','T',1,1,NULL),(61,101,'2024-03-17','F',4,1,NULL),(62,102,'2024-05-01','F',3,1,NULL),(63,102,'2023-08-03','F',3,1,NULL),(64,101,'2023-11-16','T',4,1,NULL),(65,103,'2024-04-03','F',4,1,NULL),(66,101,'2023-12-25','T',1,1,NULL),(67,103,'2023-10-04','F',4,1,NULL),(68,103,'2023-12-20','F',2,1,NULL),(69,103,'2023-08-27','F',1,1,NULL),(70,101,'2024-04-06','T',5,1,NULL),(71,102,'2023-12-14','F',3,1,NULL),(72,103,'2024-03-20','T',4,1,NULL),(73,102,'2023-05-16','F',5,1,NULL),(74,103,'2023-06-25','T',3,1,NULL),(75,102,'2024-01-13','F',1,1,NULL),(76,102,'2024-04-03','T',2,1,NULL),(77,102,'2024-02-14','T',5,1,NULL),(78,101,'2024-05-04','T',4,1,NULL),(79,101,'2024-04-17','T',3,1,NULL),(80,103,'2023-12-22','T',1,1,NULL),(81,102,'2023-09-22','T',1,1,NULL),(82,102,'2023-08-15','F',4,1,NULL),(83,103,'2024-02-17','T',4,1,NULL),(84,101,'2023-05-28','F',4,1,NULL),(85,102,'2023-08-28','F',4,1,NULL),(86,101,'2023-09-13','T',4,1,NULL),(87,102,'2024-01-20','F',2,1,NULL),(88,102,'2023-12-19','F',1,1,NULL),(89,101,'2023-09-27','F',2,1,NULL),(90,101,'2023-05-14','F',2,1,NULL),(91,101,'2024-04-06','T',3,1,NULL),(92,101,'2023-10-05','F',2,1,NULL),(93,101,'2023-10-25','F',2,1,NULL),(94,103,'2024-01-29','F',5,1,NULL),(95,102,'2023-05-20','T',3,1,NULL),(96,102,'2023-11-13','F',3,1,NULL),(97,102,'2023-05-16','F',4,1,NULL),(98,101,'2023-06-23','T',2,1,NULL),(99,103,'2023-12-15','F',3,1,NULL),(100,103,'2023-11-30','F',1,1,NULL);
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `courseCode` int NOT NULL,
  `courseName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`courseCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (101,'WAA'),(102,'DBMS'),(103,'WAP');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courseinstructor`
--

DROP TABLE IF EXISTS `courseinstructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courseinstructor` (
  `courseCode` int NOT NULL,
  `instructorID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courseinstructor`
--

LOCK TABLES `courseinstructor` WRITE;
/*!40000 ALTER TABLE `courseinstructor` DISABLE KEYS */;
INSERT INTO `courseinstructor` VALUES (102,1),(103,4),(102,4),(103,1),(103,2),(101,4),(103,5),(102,5),(101,5),(101,2);
/*!40000 ALTER TABLE `courseinstructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `id` int NOT NULL,
  `score` int NOT NULL,
  `grade` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (1,90,'A'),(2,80,'B'),(3,70,'C'),(4,60,'D'),(5,50,'E');
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `id` int NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (1,'Alic','M'),(2,'Georgianna','F'),(3,'Faustina','F'),(4,'Dana','F'),(5,'Karel','M');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL,
  `name` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Bogey','M'),(2,'Leese','F'),(3,'Frederico','M'),(4,'Cchaddie','M'),(5,'Eloise','F'),(6,'Joe','M'),(7,'Alyda','F'),(8,'Noah','M'),(9,'Fanni','F'),(10,'Suki','F'),(11,'Scarface','M'),(12,'Trudie','F'),(13,'Laureen','F'),(14,'Janot','F'),(15,'Sadie','F'),(16,'Cristie','F'),(17,'Gerri','F'),(18,'Fran','M'),(19,'Ezechiel','M'),(20,'Nicholle','F'),(21,'Kass','F'),(22,'Cozmo','M'),(23,'Eben','M'),(24,'Brockie','M'),(25,'Sean','F'),(26,'Gisele','F'),(27,'Vale','M'),(28,'Cordy','F'),(29,'Tremayne','M'),(30,'Kikelia','F'),(31,'Nerita','F'),(32,'Auberon','M'),(33,'Cleve','M'),(34,'Nicholas','M'),(35,'Jard','M'),(36,'Thomasin','F'),(37,'Wells','M'),(38,'Kaia','F'),(39,'Goober','M'),(40,'Alis','F'),(41,'Richmond','M'),(42,'Iorgos','M'),(43,'Johanna','F'),(44,'Elicia','F'),(45,'Miran','F'),(46,'Lilah','F'),(47,'Mikol','M'),(48,'Isadore','M'),(49,'Glenna','F'),(50,'Dael','F'),(51,'Daisey','F'),(52,'Kele','M'),(53,'Dukie','M'),(54,'Carmelle','F'),(55,'Auria','F'),(56,'Claybourne','M'),(57,'Marrilee','F'),(58,'Gifford','M'),(59,'Sheila','F'),(60,'Sancho','M'),(61,'Lesya','F'),(62,'Anne','F'),(63,'Willyt','F'),(64,'Cosme','M'),(65,'Pierrette','F'),(66,'Zechariah','M'),(67,'Trixie','F'),(68,'Anita','F'),(69,'Crosby','M'),(70,'Dare','M'),(71,'Scotti','M'),(72,'Whitney','F'),(73,'Hillery','M'),(74,'Marcelia','F'),(75,'Georgeta','F'),(76,'Brit','M'),(77,'Sherline','F'),(78,'Vittoria','F'),(79,'Leila','F'),(80,'Jodee','F'),(81,'Fraze','M'),(82,'Kittie','F'),(83,'Hamid','M'),(84,'Baldwin','M'),(85,'Carolynn','F'),(86,'Curcio','M'),(87,'Vin','F'),(88,'Elna','F'),(89,'Sanders','M'),(90,'Lexy','F'),(91,'Betsy','F'),(92,'Lura','F'),(93,'Palm','M'),(94,'Demetri','M'),(95,'Corrie','M'),(96,'Casie','F'),(97,'Angeli','M'),(98,'Henriette','F'),(99,'Cal','F'),(100,'Kerwinn','M');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentcourse`
--

DROP TABLE IF EXISTS `studentcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentcourse` (
  `studentID` int NOT NULL,
  `courseCode` int NOT NULL,
  `gradeid` int DEFAULT NULL,
  KEY `studentcourse_studentcourse__fk` (`gradeid`),
  CONSTRAINT `studentcourse_studentcourse__fk` FOREIGN KEY (`gradeid`) REFERENCES `grade` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentcourse`
--

LOCK TABLES `studentcourse` WRITE;
/*!40000 ALTER TABLE `studentcourse` DISABLE KEYS */;
INSERT INTO `studentcourse` VALUES (49,103,1),(90,102,2),(100,101,3),(94,101,1),(43,101,2),(29,101,3),(95,101,2),(93,103,1),(35,103,1),(79,101,1),(8,101,1),(1,103,1),(53,102,4),(72,103,4),(75,101,4),(67,103,5),(28,103,1),(35,102,2),(59,102,3),(20,103,4),(99,102,5),(88,103,1),(32,103,1),(37,103,1),(89,102,1),(70,101,2),(79,102,2),(9,101,2),(53,101,2),(46,103,2),(46,102,3),(55,103,3),(54,101,3),(53,103,4),(18,102,4),(77,103,4),(47,102,4),(68,103,4),(19,103,5),(64,102,1),(21,103,1),(3,103,1),(96,101,1),(1,102,1),(12,101,1),(45,103,1),(65,102,1),(98,103,1),(5,102,1),(23,101,1),(33,103,1),(60,103,1),(44,101,2),(100,103,3),(20,101,4),(4,101,3),(85,101,4),(24,103,5),(62,102,5),(55,102,5),(96,102,5),(1,101,5),(21,101,5),(66,101,5),(35,101,5),(81,102,2),(81,103,1),(86,102,2),(54,103,3),(92,101,1),(30,102,2),(77,102,1),(7,103,1),(10,102,1),(45,101,1),(3,101,1),(83,102,1),(49,101,1),(91,102,2),(94,102,1),(92,103,4),(93,102,4),(22,103,4),(37,102,4),(45,102,4),(64,101,4);
/*!40000 ALTER TABLE `studentcourse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-07  8:47:29
