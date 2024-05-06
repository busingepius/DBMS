-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	8.0.36

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
INSERT INTO `assignment` VALUES (1,101,'2024-04-01','T',1),(2,102,'2023-10-14','F',5),(3,102,'2023-05-29','T',5),(4,101,'2023-11-10','T',4),(5,101,'2023-09-24','F',3),(6,102,'2023-11-01','T',3),(7,101,'2023-09-13','T',3),(8,101,'2024-03-09','T',4),(9,101,'2023-12-09','F',3),(10,103,'2023-05-27','T',3),(11,101,'2023-06-06','F',3),(12,102,'2023-07-12','F',2),(13,101,'2023-10-14','T',1),(14,103,'2023-08-12','T',5),(15,103,'2023-06-21','T',2),(16,101,'2024-01-18','T',3),(17,102,'2023-12-22','T',2),(18,102,'2024-02-26','T',3),(19,101,'2024-02-12','F',2),(20,103,'2023-08-18','F',2),(21,102,'2023-12-14','T',5),(22,103,'2023-05-29','F',3),(23,103,'2024-02-12','F',3),(24,102,'2023-09-14','T',3),(25,103,'2023-12-21','T',2),(26,101,'2023-08-23','T',3),(27,103,'2024-03-22','F',5),(28,101,'2023-08-12','F',2),(29,101,'2023-09-21','T',5),(30,103,'2023-11-06','T',5),(31,103,'2023-12-12','F',2),(32,103,'2023-07-02','T',1),(33,102,'2023-08-26','F',5),(34,101,'2023-08-18','F',3),(35,101,'2023-09-25','T',2),(36,103,'2024-01-24','F',3),(37,102,'2023-07-09','F',1),(38,102,'2023-11-18','T',2),(39,102,'2023-06-14','T',4),(40,103,'2024-02-28','T',1),(41,103,'2023-12-10','T',4),(42,101,'2023-10-28','F',2),(43,101,'2023-07-14','T',3),(44,103,'2024-01-12','F',5),(45,103,'2023-12-05','T',3),(46,101,'2023-09-15','F',2),(47,103,'2023-09-17','T',1),(48,103,'2023-07-29','T',3),(49,102,'2023-07-09','T',4),(50,102,'2024-01-12','F',4),(51,101,'2024-02-20','F',4),(52,102,'2023-10-28','T',1),(53,101,'2023-12-04','F',5),(54,103,'2023-05-07','F',3),(55,102,'2024-03-11','F',3),(56,103,'2023-11-16','F',2),(57,103,'2023-08-21','T',5),(58,103,'2023-12-22','T',5),(59,101,'2024-02-09','F',3),(60,103,'2024-04-19','T',1),(61,101,'2024-03-17','F',4),(62,102,'2024-05-01','F',3),(63,102,'2023-08-03','F',3),(64,101,'2023-11-16','T',4),(65,103,'2024-04-03','F',4),(66,101,'2023-12-25','T',1),(67,103,'2023-10-04','F',4),(68,103,'2023-12-20','F',2),(69,103,'2023-08-27','F',1),(70,101,'2024-04-06','T',5),(71,102,'2023-12-14','F',3),(72,103,'2024-03-20','T',4),(73,102,'2023-05-16','F',5),(74,103,'2023-06-25','T',3),(75,102,'2024-01-13','F',1),(76,102,'2024-04-03','T',2),(77,102,'2024-02-14','T',5),(78,101,'2024-05-04','T',4),(79,101,'2024-04-17','T',3),(80,103,'2023-12-22','T',1),(81,102,'2023-09-22','T',1),(82,102,'2023-08-15','F',4),(83,103,'2024-02-17','T',4),(84,101,'2023-05-28','F',4),(85,102,'2023-08-28','F',4),(86,101,'2023-09-13','T',4),(87,102,'2024-01-20','F',2),(88,102,'2023-12-19','F',1),(89,101,'2023-09-27','F',2),(90,101,'2023-05-14','F',2),(91,101,'2024-04-06','T',3),(92,101,'2023-10-05','F',2),(93,101,'2023-10-25','F',2),(94,103,'2024-01-29','F',5),(95,102,'2023-05-20','T',3),(96,102,'2023-11-13','F',3),(97,102,'2023-05-16','F',4),(98,101,'2023-06-23','T',2),(99,103,'2023-12-15','F',3),(100,103,'2023-11-30','F',1);
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
  `courseCode` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentcourse`
--

LOCK TABLES `studentcourse` WRITE;
/*!40000 ALTER TABLE `studentcourse` DISABLE KEYS */;
INSERT INTO `studentcourse` VALUES (49,103),(90,102),(100,101),(94,101),(43,101),(29,101),(95,101),(93,103),(35,103),(79,101),(8,101),(1,103),(53,102),(72,103),(75,101),(67,103),(28,103),(35,102),(59,102),(20,103),(99,102),(88,103),(32,103),(37,103),(89,102),(70,101),(79,102),(9,101),(53,101),(46,103),(46,102),(55,103),(54,101),(53,103),(18,102),(77,103),(47,102),(68,103),(19,103),(64,102),(21,103),(3,103),(96,101),(1,102),(12,101),(45,103),(65,102),(98,103),(5,102),(23,101),(33,103),(60,103),(44,101),(100,103),(20,101),(4,101),(85,101),(24,103),(62,102),(55,102),(96,102),(1,101),(21,101),(66,101),(35,101),(81,102),(81,103),(86,102),(54,103),(92,101),(30,102),(77,102),(7,103),(10,102),(45,101),(3,101),(83,102),(49,101),(91,102),(94,102),(92,103),(93,102),(22,103),(37,102),(45,102),(64,101);
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

-- Dump completed on 2024-05-06 16:05:00
