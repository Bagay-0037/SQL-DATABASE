CREATE DATABASE  IF NOT EXISTS `scholarship_amsystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `scholarship_amsystem`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: scholarship_amsystem
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `church`
--

DROP TABLE IF EXISTS `church`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `church` (
  `church_id` int NOT NULL AUTO_INCREMENT,
  `church_name` varchar(255) NOT NULL,
  PRIMARY KEY (`church_id`),
  UNIQUE KEY `church_name` (`church_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `church`
--

LOCK TABLES `church` WRITE;
/*!40000 ALTER TABLE `church` DISABLE KEYS */;
INSERT INTO `church` VALUES (2,'FJC'),(1,'JCM'),(3,'Praise');
/*!40000 ALTER TABLE `church` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `church_admin`
--

DROP TABLE IF EXISTS `church_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `church_admin` (
  `chAdmin_id` int NOT NULL AUTO_INCREMENT,
  `chAdmin_name` varchar(155) DEFAULT NULL,
  `chAdmin_email` varchar(255) DEFAULT NULL,
  `chAdmin_password` varchar(255) NOT NULL,
  `scholar_id` int DEFAULT NULL,
  `ch_personnel_id` int DEFAULT NULL,
  `church_id` int DEFAULT NULL,
  PRIMARY KEY (`chAdmin_id`),
  KEY `scholar_id` (`scholar_id`),
  KEY `ch_personnel_id` (`ch_personnel_id`),
  KEY `church_id` (`church_id`),
  CONSTRAINT `church_admin_ibfk_1` FOREIGN KEY (`scholar_id`) REFERENCES `scholars` (`scholar_id`),
  CONSTRAINT `church_admin_ibfk_2` FOREIGN KEY (`ch_personnel_id`) REFERENCES `church_personnel` (`ch_personnel_id`),
  CONSTRAINT `church_admin_ibfk_3` FOREIGN KEY (`church_id`) REFERENCES `church` (`church_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `church_admin`
--

LOCK TABLES `church_admin` WRITE;
/*!40000 ALTER TABLE `church_admin` DISABLE KEYS */;
INSERT INTO `church_admin` VALUES (1,'Admin JCM','admin@jcm.com','jcmChadmin1!',NULL,NULL,1),(2,'Admin FJC','admin@fjc.com','fjcChadmin2!',NULL,NULL,2),(3,'Admin Praise','admin@praise.com','prsChadmin3!',NULL,NULL,3);
/*!40000 ALTER TABLE `church_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `church_personnel`
--

DROP TABLE IF EXISTS `church_personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `church_personnel` (
  `ch_personnel_id` int NOT NULL AUTO_INCREMENT,
  `ch_personnel_name` varchar(155) DEFAULT NULL,
  `ch_personnel_email` varchar(255) DEFAULT NULL,
  `ch_personnel_password` varchar(255) NOT NULL,
  `church_id` int DEFAULT NULL,
  PRIMARY KEY (`ch_personnel_id`),
  KEY `church_id` (`church_id`),
  CONSTRAINT `church_personnel_ibfk_1` FOREIGN KEY (`church_id`) REFERENCES `church` (`church_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `church_personnel`
--

LOCK TABLES `church_personnel` WRITE;
/*!40000 ALTER TABLE `church_personnel` DISABLE KEYS */;
INSERT INTO `church_personnel` VALUES (1,'Ch Personnel 1','pn1@jcm.com','P3rsonnel01!',1),(2,'Ch Personnel 2','pn2@jcm.com','P3rsonnel02!',1),(3,'Ch Personnel 3','pn3@fjc.com','P3rsonnel03!',2),(4,'Ch Personnel 4','pn4@fjc.com','P3rsonnel04!',2),(5,'Ch Personnel 5','pn5@praise.com','P3rsonnel05!',3),(6,'Ch Personnel 6','pn6@praise.com','P3rsonnel06!',3);
/*!40000 ALTER TABLE `church_personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) NOT NULL,
  PRIMARY KEY (`dept_id`),
  UNIQUE KEY `dept_name` (`dept_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (3,'Housekeeping'),(1,'IT Department'),(2,'Library');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept_admin`
--

DROP TABLE IF EXISTS `dept_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept_admin` (
  `deptAdmin_id` int NOT NULL AUTO_INCREMENT,
  `deptAdmin_name` varchar(155) DEFAULT NULL,
  `deptAdmin_email` varchar(255) DEFAULT NULL,
  `deptAdmin_password` varchar(255) NOT NULL,
  `scholar_id` int DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  `personnel_id` int DEFAULT NULL,
  PRIMARY KEY (`deptAdmin_id`),
  KEY `dept_id` (`dept_id`),
  KEY `scholar_id` (`scholar_id`),
  KEY `personnel_id` (`personnel_id`),
  CONSTRAINT `dept_admin_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`),
  CONSTRAINT `dept_admin_ibfk_2` FOREIGN KEY (`scholar_id`) REFERENCES `scholars` (`scholar_id`),
  CONSTRAINT `dept_admin_ibfk_3` FOREIGN KEY (`personnel_id`) REFERENCES `dept_personnel` (`personnel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_admin`
--

LOCK TABLES `dept_admin` WRITE;
/*!40000 ALTER TABLE `dept_admin` DISABLE KEYS */;
INSERT INTO `dept_admin` VALUES (1,'Admin IT Dept','admin@itdept.com','itdDpadmin1!',NULL,1,NULL),(2,'Admin Library','admin@library.com','libDpadmin2!',NULL,2,NULL),(3,'Admin Hkeeping','admin@hkeeping.com','hkpDpadmin3!',NULL,3,NULL);
/*!40000 ALTER TABLE `dept_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept_personnel`
--

DROP TABLE IF EXISTS `dept_personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept_personnel` (
  `personnel_id` int NOT NULL AUTO_INCREMENT,
  `personnel_name` varchar(155) DEFAULT NULL,
  `personnel_email` varchar(255) DEFAULT NULL,
  `personnel_password` varchar(255) NOT NULL,
  `dept_id` int DEFAULT NULL,
  PRIMARY KEY (`personnel_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `dept_personnel_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_personnel`
--

LOCK TABLES `dept_personnel` WRITE;
/*!40000 ALTER TABLE `dept_personnel` DISABLE KEYS */;
INSERT INTO `dept_personnel` VALUES (1,'Personnel 1','pn1@itdept.com','P3rsonnel01!',1),(2,'Personnel 2','pn2@itdept.com','P3rsonnel02!',1),(3,'Personnel 3','pn3@library.com','P3rsonnel03!',2),(4,'Personnel 4','pn4@library.com','P3rsonnel04!',2),(5,'Personnel 5','pn5@hkeeping.com','P3rsonnel05!',3),(6,'Personnel 6','pn6@hkeeping.com','P3rsonnel06!',3);
/*!40000 ALTER TABLE `dept_personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fellowship_logs`
--

DROP TABLE IF EXISTS `fellowship_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fellowship_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scholar_id` int NOT NULL,
  `fellowship` datetime NOT NULL,
  `total_fellowship` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fellowship_logs`
--

LOCK TABLES `fellowship_logs` WRITE;
/*!40000 ALTER TABLE `fellowship_logs` DISABLE KEYS */;
INSERT INTO `fellowship_logs` VALUES (1,10005,'2024-10-15 18:00:12',1),(2,10005,'2024-10-15 18:00:12',2),(3,10005,'2024-10-15 18:00:12',2),(4,10005,'2024-10-15 18:00:12',2),(5,10005,'2024-10-15 18:00:12',2),(6,10005,'2024-10-15 18:00:13',2),(7,10005,'2024-10-15 18:00:14',3),(8,10005,'2024-10-15 18:00:14',4),(9,10005,'2024-10-15 18:00:14',4),(10,10001,'2024-10-15 18:07:31',1),(11,10001,'2024-10-15 18:07:55',2),(12,10005,'2024-10-15 21:22:12',4),(13,10005,'2024-10-15 21:45:05',5),(14,10005,'2024-10-15 21:50:59',6),(15,10004,'2024-10-15 17:14:38',1),(16,10004,'2024-10-16 01:25:57',2),(17,10004,'2024-10-16 01:32:03',3),(18,10004,'2024-10-16 01:40:42',4),(19,10005,'2024-10-17 00:15:08',7),(20,10006,'2024-10-17 00:40:26',1),(21,10009,'2024-10-17 18:31:28',1),(22,10006,'2024-10-17 21:50:53',2),(23,10006,'2024-10-17 21:51:12',3),(24,10006,'2024-10-17 21:59:26',4),(25,10006,'2024-10-17 22:00:10',5),(26,10006,'2024-10-17 22:00:15',6),(27,10006,'2024-10-17 22:00:20',7),(28,10012,'2024-10-18 02:55:32',1);
/*!40000 ALTER TABLE `fellowship_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scholar_id` int NOT NULL,
  `start_time` timestamp NOT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `total_time` time DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `total_duty_time` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_scholar` (`scholar_id`),
  CONSTRAINT `fk_scholar` FOREIGN KEY (`scholar_id`) REFERENCES `scholars` (`scholar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,10001,'2024-10-06 22:53:45',NULL,'00:00:22',NULL,NULL),(2,10001,'2024-10-06 22:54:59',NULL,'00:00:22',NULL,NULL),(3,10001,'2024-10-06 23:00:39',NULL,'00:00:22',NULL,NULL),(4,10001,'2024-10-06 23:02:31','2024-10-06 23:02:31','00:00:22',NULL,'00:00:00'),(5,10001,'2024-10-06 23:02:57','2024-10-06 23:02:57','00:00:22',NULL,'00:00:00'),(6,10001,'2024-10-06 23:08:34','2024-10-06 23:08:43','00:00:22',NULL,'00:00:09'),(7,10002,'2024-10-06 23:12:03','2024-10-06 23:12:12','00:01:32',NULL,'00:00:09'),(8,10002,'2024-10-06 23:12:45','2024-10-06 23:12:50','00:01:32',NULL,'00:00:05'),(9,10002,'2024-10-06 23:13:28','2024-10-06 23:13:38','00:01:32',NULL,'00:00:10'),(10,10002,'2024-10-12 20:20:03','2024-10-12 20:20:08','00:01:32',NULL,'00:00:05'),(11,10002,'2024-10-13 03:45:36','2024-10-13 03:45:41','00:01:32',NULL,'00:00:05'),(12,10002,'2024-10-13 03:46:20','2024-10-13 03:46:45','00:01:32',NULL,'00:00:25'),(13,10002,'2024-10-13 03:47:51','2024-10-13 03:48:02','00:01:32',NULL,'00:00:11'),(14,10002,'2024-10-13 03:49:11','2024-10-13 03:49:17','00:01:32',NULL,'00:00:06'),(15,10002,'2024-10-14 00:51:34','2024-10-14 00:51:42','00:01:32',NULL,'00:00:08'),(16,10001,'2024-10-14 10:39:31','2024-10-14 10:39:44','00:00:22',NULL,'00:00:13'),(17,10004,'2024-10-14 10:52:06',NULL,'00:00:12',NULL,NULL),(18,10004,'2024-10-14 03:03:15','2024-10-14 03:03:20','00:00:12',NULL,'00:00:05'),(19,10002,'2024-10-14 03:05:18','2024-10-14 03:05:26','00:01:32',NULL,'00:00:08'),(20,10004,'2024-10-14 11:22:42','2024-10-14 11:22:49','00:00:12',NULL,'00:00:07'),(23,10005,'2024-10-14 23:00:28','2024-10-14 23:00:33','00:00:32',NULL,'00:00:05'),(24,10005,'2024-10-14 23:21:34','2024-10-14 23:21:39','00:00:32',NULL,'00:00:05'),(25,10005,'2024-10-15 00:45:47','2024-10-15 00:45:54','00:00:32',NULL,'00:00:07'),(26,10005,'2024-10-15 01:04:55','2024-10-15 01:05:00','00:00:32',NULL,'00:00:05'),(27,10005,'2024-10-15 01:33:33','2024-10-15 01:33:38','00:00:32',NULL,'00:00:05'),(28,10005,'2024-10-15 02:44:26','2024-10-15 02:44:31','00:00:32',NULL,'00:00:05'),(29,10005,'2024-10-15 13:38:18',NULL,NULL,NULL,NULL),(30,10006,'2024-10-16 00:25:19',NULL,'00:01:57',NULL,NULL),(31,10006,'2024-10-16 00:28:12','2024-10-16 00:28:24','00:01:57',NULL,'00:00:12'),(32,10006,'2024-10-16 00:35:29','2024-10-16 00:35:47','00:01:57',NULL,'00:00:18'),(33,10006,'2024-10-16 00:37:49',NULL,'00:01:57',NULL,NULL),(34,10006,'2024-10-16 00:42:41','2024-10-16 00:43:07','00:01:57',NULL,'00:00:26'),(35,10006,'2024-10-16 00:44:51','2024-10-16 00:44:56','00:01:57',NULL,'00:00:05'),(36,10006,'2024-10-16 00:46:12','2024-10-16 00:46:19','00:01:57',NULL,'00:00:07'),(37,10006,'2024-10-16 00:46:54','2024-10-16 00:47:04','00:01:57',NULL,'00:00:10'),(38,10006,'2024-10-16 00:59:59','2024-10-16 01:00:14','00:01:57',NULL,'00:00:15'),(39,10006,'2024-10-16 01:01:32',NULL,'00:01:57',NULL,NULL),(40,10006,'2024-10-16 01:05:51','2024-10-16 01:06:05','00:01:57',NULL,'00:00:14'),(41,10006,'2024-10-16 01:08:19','2024-10-16 01:08:29','00:01:57',NULL,'00:00:10'),(42,10009,'2024-10-17 02:00:00','2024-10-19 14:00:00','60:00:00',NULL,'60:00:00'),(43,10009,'2024-10-17 02:00:00','2024-10-19 14:00:00','60:00:00',NULL,'60:00:00'),(46,10013,'2024-10-17 07:24:20',NULL,NULL,NULL,NULL),(47,10015,'2024-10-17 07:25:34','2024-10-17 07:25:43','00:00:09',NULL,'00:00:09');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `schedule` varchar(50) DEFAULT NULL,
  `max_scholars` int DEFAULT '15',
  `current_scholars` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `schedule` (`schedule`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,'Monday 8-12pm',15,0),(2,'Monday 1-5pm',15,0),(3,'Tuesday 8-12pm',15,0),(4,'Tuesday 1-5pm',15,0),(5,'Wednesday 8-12pm',15,0),(6,'Wednesday 1-5pm',15,0),(7,'Thursday 8-12pm',15,0),(8,'Thursday 1-5pm',15,0),(9,'Friday 8-12pm',15,0),(10,'Friday 1-5pm',15,0),(11,'Saturday 8-12pm',15,0),(12,'Saturday 1-5pm',15,0);
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scholars`
--

DROP TABLE IF EXISTS `scholars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scholars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `scholar_id` int DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  `schedule_id` int DEFAULT NULL,
  `church_id` int DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `qr_code` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scholar_id` (`scholar_id`),
  KEY `fk_schedule` (`schedule_id`),
  KEY `fk_department` (`dept_id`),
  KEY `fk_church` (`church_id`),
  CONSTRAINT `fk_church` FOREIGN KEY (`church_id`) REFERENCES `church` (`church_id`),
  CONSTRAINT `fk_department` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`),
  CONSTRAINT `fk_schedule` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholars`
--

LOCK TABLES `scholars` WRITE;
/*!40000 ALTER TABLE `scholars` DISABLE KEYS */;
INSERT INTO `scholars` VALUES (12,'Bagay, Japheth Mateo D.','Male',10001,3,10,2,'Bagay12345#6','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAODSURBVO3BO65jSwIDwWRB+99yThvPoFXAgaTbn2FE/IWZ/xxmymGmHGbKYaYcZsphphxmymGmHGbKYaYcZsphphxmymGmHGbKizcl4SeptCQ0lZsk3KjcJOFGpSXhJ6m84zBTDjPlMFNefJjKJyXhRqUloak8kYQblZaEJ1Q+KQmfdJgph5lymCkvviwJT6g8kYSmcqPSktBUWhJaEj4pCU+ofNNhphxmymGmvPjLqdwk4ZNU/mWHmXKYKYeZ8uIfk4SmcpOEloSbJDSVf8lhphxmymGmvPgylW9KQlO5SUJTeSIJn6TyJznMlMNMOcyUFx+WhD9JEppKS0JTaUloKi0JTeUmCX+yw0w5zJTDTIm/8A9Jwo3KE0l4QuVvdpgph5lymCkv3pSEptKS0FSeSMKNSlN5RxJuVFoSnkhCU7lJQlNpSWgq7zjMlMNMOcyUFz8sCU2lJaGptCS0JPxOKjdJ+JscZsphphxmyosvU2lJaEloKi0JTaUl4QmVloSmcpOEG5UblZaEP8lhphxmymGmvPhhKi0JLQlN5UalJeEJlZaEpnKjcqPyDpWWhG86zJTDTDnMlBdvUnkiCU3lJglNpSXhRuUmCe9IwjtUWhJ+p8NMOcyUw0x58WVJaCo3SWgqLQlN5ZNUblRukvBJSWgqLQmfdJgph5lymCkv3pSEb0rCTRKeULlJwiepPKHyOx1mymGmHGZK/IUvSsKNyhNJaCotCe9QaUloKi0JTaUl4R0qLQk3Ku84zJTDTDnMlBdvSsKNyhNJeIdKS0JTuUnCTRJukvA3O8yUw0w5zJQXb1L5JJUnktBUvkmlJaGpPJGEmyT8pMNMOcyUw0x58aYk/CSVJ1RaEppKU/mkJDSVd6i0JHzSYaYcZsphprz4MJVPSsKNSkvCjcpNEppKS8ITKu9QaUn4psNMOcyUw0x58WVJeELlHSotCS0J35SEn6TySYeZcpgph5ny4v+MSktCU7lReUcSmsoTKt90mCmHmXKYKS/+ckm4UXkiCTcqLQlNpSWhqbQkNJWWhCdU3nGYKYeZcpgpL75M5ZtUnkjCjUpLQktCU7lReSIJTeUnHWbKYaYcZsqLD0vCT0pCU7lRuUnCE0n4JJUnktBU3nGYKYeZcpgp8Rdm/nOYKYeZcpgph5lymCmHmXKYKYeZcpgph5lymCmHmXKYKYeZcpgp/wP3mHkyI2XPSQAAAABJRU5ErkJggg=='),(13,'Bagay, Japheth Mateo D.','Male',10002,3,10,2,'Bags123456#7','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAO7SURBVO3BQa5bRwADwe6B7n9lxgsvuBrgQdKPnbDK/MLMb4eZcpgph5lymCmHmXKYKYeZcpgph5lymCmHmXKYKYeZcpgph5ny4k0qPykJNyotCU3liSTcqLQkNJWflIR3HGbKYaYcZsqLD0vCJ6ncqLQkNJUnktBUPikJn6TySYeZcpgph5ny4stUnkjCE0loKi0JNypN5SYJTeUdKk8k4ZsOM+UwUw4z5cX/jEpLQlO5UWlJ+C85zJTDTDnMlBd/OZUblRuVloSm0pLwX3aYKYeZcpgpL74sCd+UhKbSknCj0lRaEr4pCX+Sw0w5zJTDTHnxYSo/SaUloam0JNwkoam0JDSVloQblT/ZYaYcZsphprx4UxL+TUl4QqUloal8UhL+JoeZcpgph5ny4k0qLQlNpSWhqbQkNJWWhBuVJ1RaEppKU/kklZaEG5WWhE86zJTDTDnMFPMLb1C5ScI3qTyRhKbSktBUbpLQVG6ScKPyjiS84zBTDjPlMFNefFgSmsoTSWgqN0m4UWkqNyotCTcqT6jcJKGp/KTDTDnMlMNMefFlSWgqLQk3SbhReSIJ71B5IglN5Ykk3Kh80mGmHGbKYaa8+DCVloSWhCdUbpLwDpWWhJskNJWWhKbSkvAnO8yUw0w5zJQXb0rCJ6m0JDSVG5V3qLQkNJWWhG9S+UmHmXKYKYeZ8uJNKi0JTeUdKi0JTaUloak8kYSm0pLQVFoSWhKaSktCU2lJaCrfdJgph5lymCnmFz5IpSXhCZWWhCdUWhJuVH5SEppKS8ITKi0J7zjMlMNMOcyUF29SaUloKi0JT6g8kYSmcpOEG5WWhKbyhMqf7DBTDjPlMFNevCkJN0l4IglPqNwkoam8Q+UmCU+o3Ki0JHzTYaYcZsphprx4k8pPSkJLwo1KS8KNSktCU3lCpSXhHSrfdJgph5lymCkvPiwJn6TySSotCS0JN0loKjdJeEcSblQ+6TBTDjPlMFNefJnKE0l4QuUmCTcqLQnvUPlJSfikw0w5zJTDTHnxl0vCjcoTKi0JTaUloam0JDyh0pLQVFoSPukwUw4z5TBTXvzlVD4pCU3lRuVG5R0qLQlNpSXhHYeZcpgph5ny4suS8E1JuFFpSWgqTeUmCTcqLQlN5SYJNyotCZ90mCmHmXKYKS8+TOUnqdwkoam0JNyo3Ki0JDSVloSm0lRaEm5UWhLecZgph5lymCnmF2Z+O8yUw0w5zJTDTDnMlMNMOcyUw0w5zJTDTDnMlMNMOcyUw0w5zJR/AGXVl1llL5OLAAAAAElFTkSuQmCC'),(14,'Romeo Catacutan','Male',10003,2,1,3,'Romeo123#456','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAOPSURBVO3BQa5bRwADweZA979yx4ssuBpAeNK3nbAq/sLMvw4z5TBTDjPlMFMOM+UwUw4z5TBTDjPlMFMOM+UwUw4z5TBTDjPlxUNJ+EkqN0m4UblJwjtUbpLwk1SeOMyUw0w5zJQXH6bySUl4h8pPSkJTuVH5pCR80mGmHGbKYaa8+LIkvEPlHUl4QuVGpSWhqTyRhHeofNNhphxmymGmvPiPU3mHSkvC/8lhphxmymGmvPiPUfkklZaEloSm8jc7zJTDTDnMlBdfpvI7JaGpPKHySSp/ksNMOcyUw0x58WFJ+Jskoam0JDSVloSmcpOEP9lhphxmymGmvHhI5U+ShKbyO6n8TQ4z5TBTDjMl/sIDSWgqLQmfpPKOJLxD5ZOS8Ekq33SYKYeZcpgpLx5SaUloKi0JTeWJJDSVJ5LwDpUblZaEptKS8DsdZsphphxmyosPU2lJuElCU2lJaCpNpSWhqbQkNJWWhCeS8EkqLQk3Kk8cZsphphxmyosfptKScKPSktBUmkpLwk0SblRuktBUWhKaSktCU3mHyicdZsphphxmyouHknCj0pLQVG6S0FRaEm5UWhJuVFoSblQ+KQk3Ki0JTeWJw0w5zJTDTHnxYSotCU3lJglNpSWhqbQktCQ0lXeotCTcJKGptCQ0lZsk3Kh80mGmHGbKYaa8+DKVmyTcJOEJlZaEG5UnVN6RhKZyk4QblScOM+UwUw4z5cWXJeFG5R1JuFF5h8pNEm6S0FQ+SaUloal80mGmHGbKYaa8+DKVdyThRqUl4UblCZWWhJskPJGEG5WWhKbyxGGmHGbKYabEX/iLJaGptCQ0lZaET1J5RxKaSkvCjconHWbKYaYcZsqLh5Lwk1SaSkvCO1RaEm5UWhJuktBUbpLQVFoSWhKayhOHmXKYKYeZ8uLDVD4pCTdJuFG5ScKNyhMq71B5h8onHWbKYaYcZsqLL0vCO1SeUHlCpSXhHUl4Igk3Kt90mCmHmXKYKS/+45LQVJrKjUpLQlO5ScKNSktCU7lJQlN54jBTDjPlMFNe/M8k4UblRuUmCU+o/E6HmXKYKYeZ8uLLVL5J5UalJaGp3CShqdyotCQ0lZaEpvI7HWbKYaYcZsqLD0vCT0rCjcoTKi0JTeUJlZsk/KTDTDnMlMNMib8w86/DTDnMlMNMOcyUw0w5zJTDTDnMlMNMOcyUw0w5zJTDTDnMlMNM+QfSkaXz5vxXGwAAAABJRU5ErkJggg=='),(15,'JP Cabrera','Male',10004,3,1,1,'Cabrera#1234','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAN+SURBVO3BQW7cSAAEwazG/P/LuTr4UCcCBGdkyVsR8QszfxxmymGmHGbKYaYcZsphphxmymGmHGbKYaYcZsphphxmymGmHGbKi4eS8J1UWhKaypUkXFF5pyR8J5UnDjPlMFMOM+XFm6m8UxKuqLQk3KHyRBKayhWVd0rCOx1mymGmHGbKiw9Lwh0q76TSktCScEWlJeGdknCHyicdZsphphxmyotfLglNpSXhisqVJPyfHGbKYaYcZsqLf0wSmsqVJNyh0pLwLznMlMNMOcyUFx+m8p1UriShqbQkXElCU3lC5Sc5zJTDTDnMlBdvloSfJAlNpSWhqbQkNJWWhKZyJQk/2WGmHGbKYaa8eEjlN1N5QuWKym9ymCmHmXKYKfELDyShqdyRhKbSkvBJKi0Jd6i0JLyTypUkNJUnDjPlMFMOMyV+4YEk3KHSknBF5ZOS0FS+UxKaSktCU/mkw0w5zJTDTHnxZipXknBHEr5TEp5QuZKEptKS8DcdZsphphxmyos3S8IdKi0JTeWTknBFpSXhShKaSlNpSWgqLQlXktBUnjjMlMNMOcyUFw+ptCQ0lZaEKyotCU+ofJLKlSRcUflJDjPlMFMOMyV+4YEkNJWWhDtU7khCU3kiCVdUriShqVxJwh0qn3SYKYeZcpgp8QvfKAmfpNKS0FSeSMInqfxNh5lymCmHmfLiL1NpSWgqLQlNpSWhqVxJQlNpSbii0pLwTkloKi0JTeWJw0w5zJTDTHnxUBLuULkjCU3ljiRcUWlJuKLSkvAvOcyUw0w5zJT4hV8sCU3ljiQ0lTuS0FTuSMITKu90mCmHmXKYKS8eSsJ3UrmShKbSknAlCVdU7khCU3lC5ZMOM+UwUw4z5cWbqbxTEq6oXEnCFZWWhKbyhModKi0JV5LQVJ44zJTDTDnMlBcfloQ7VO5IwhWVK0l4pyR8J5V3OsyUw0w5zJQXv5zKEyotCS0JTaWpXElCU2lJuKJyJQlN5YnDTDnMlMNMefGPSUJTuUPljiQ0labSktBUriThiso7HWbKYaYcZsqLD1P5yZLQVFoSmsqVJDSVptKS0FT+psNMOcyUw0x58WZJ+E5JaCpXktBUWhLuULmShDuScEcSmsoTh5lymCmHmRK/MPPHYaYcZsphphxmymGmHGbKYaYcZsphphxmymGmHGbKYaYcZsphpvwH4AKFEQU14gcAAAAASUVORK5CYII='),(21,'Leo Capalad','Male',10005,1,4,3,'Leo123456###','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAN/SURBVO3BQY7kSAIDQWcg//9l3zrMgScBgpQ10700iz+Y+cdhphxmymGmHGbKYaYcZsphphxmymGmHGbKYaYcZsphphxmymGmfHgoCb9JpSWhqbQkXFG5IwlXVFoSfpPKE4eZcpgph5ny4WUqb0rCHUloKi0JT6i0JNyh8qYkvOkwUw4z5TBTPnxZEu5QeULljiQ0lStJeFMS7lD5psNMOcyUw0z58IdTaUm4ovKESkvC3+QwUw4z5TBTPvzhktBU3pSE/yeHmXKYKYeZ8uHLVL5JpSWhqbQkNJUrKi0Jb1L5LznMlMNMOcyUDy9Lwm9KQlNpSWgqLQlNpSWhqbQk3JGE/7LDTDnMlMNMiT/4iyXhCZWWhCsqf7LDTDnMlMNM+fBQEprKlSR8k8odKi0JV1RaEloSmsqVJDSVloQ7VJ44zJTDTDnMlA8vS8IdKm9KwhWVb1K5koQ7VH7TYaYcZsphpnx4mcodSbhDpSXhikpLwhNJaCpXknBHEprKlSQ0lScOM+UwUw4zJf7gFyXhisodSWgqTyShqbQkPKHSknCHyjcdZsphphxmyoeXJeGKypUkXFF5UxLuUGlJuCMJTaUloam0JFxReeIwUw4z5TBT4g8eSMIVlZaEO1RaEq6oPJGEKypXktBUriThDpVvOsyUw0w5zJQP/zKVK0l4IglPqLQkXFF5QuVKEq6oPHGYKYeZcpgpH16m8iaVloQrSWgqLQlN5Q6VJ5LQVFoS7lB502GmHGbKYaZ8+LIkNJWWhKbSktBUWhKaSktCU7kjCd+UhCeS0FSeOMyUw0w5zJT4gz9YEprKlSQ8odKS0FTuSMIVld90mCmHmXKYKR8eSsJvUrmShDtUvikJTeWOJDSVloSm8sRhphxmymGmfHiZypuScIdKS0JTaUloKi0JT6g8odKS0FTedJgph5lymCkfviwJd6i8SeWOJDyRhG9S+abDTDnMlMNM+fCXS0JTaSpXktBUWhKaSkvCHSotCU2lJaGpPHGYKYeZcpgpH/5wKi0JTeVKEprKHSrfpNKS8E2HmXKYKYeZ8uHLVH6TSktCU2kqdyThCZWWhJaEf9NhphxmymGmfHhZEn5TEppKU7kjCd+UhCsqdyThTYeZcpgph5kSfzDzj8NMOcyUw0w5zJTDTDnMlMNMOcyUw0w5zJTDTDnMlMNMOcyUw0z5H30YgRufQHXpAAAAAElFTkSuQmCC'),(22,'Yuta Saitoh','Male',10006,3,6,1,'Yuta123456##','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAODSURBVO3BO45jSQADwcyC7n9l7hhr0CrgQVLPB4wwvzDzv8NMOcyUw0w5zJTDTDnMlMNMOcyUw0w5zJTDTDnMlMNMOcyUw0x58SaVn5SEptKS0FRaEt6hcpOEpvKTkvCOw0w5zJTDTHnxYUn4JJWbJDSVJ1SeSEJTeSIJn6TySYeZcpgph5ny4stUnkjCEyotCTcqN0loKk3lk1SeSMI3HWbKYaYcZsqLv1wSmsoTSXgiCf+yw0w5zJTDTHnxj0vCEyo3Ki0J/5LDTDnMlMNMefFlSfgmlRuVloSbJNyofFIS/iSHmXKYKYeZ8uLDVH6nJDSVG5WWhKbSktBUWhJuVP5kh5lymCmHmWJ+4R+mcpOEG5UnkvA3O8yUw0w5zJQXb1JpSWgqLQlPqNwk4SYJNypPJKGpPKHSknCj0pLQVFoS3nGYKYeZcpgpL96UhKZyo3KThJaEG5WWhJ+UhBuVv8lhphxmymGmvHiTSktCU7lJwo3KTRKayjuScKNyk4SbJDSVP8lhphxmymGmvPgwlZaEptJUbpLQVN6RhKbSVFoSWhKayk0S3pGEpvJNh5lymCmHmfLiy1RaEp5QaUm4ScKNyjepPJGEpvI7HWbKYaYcZsqLNyWhqbQk3Ki0JLQkNJWWhBuVloSm0pLwRBKayieptCQ0lU86zJTDTDnMlBdvUrlReYfKT1L5pCQ8kYTf6TBTDjPlMFNevCkJT6g8kYSm8kQSmspNEppKS0JTaUloKu9IQlP5psNMOcyUw0x58SaVmyTcJKGp3CThRqUloSXhRuVG5Ublb3aYKYeZcpgpL96UhCeScJOEJ1R+UhKaSkvCEyo3Kj/pMFMOM+UwU168SeUnJeEmCTcqLQktCZ+k0pLwjiQ0lU86zJTDTDnMlBcfloRPUrlJwo1KS8KNSktCU3kiCe9IQlP5psNMOcyUw0x58WUqTyThm1S+SeUnJeGTDjPlMFMOM+XFP0alJeFGpSXhJgnvUGlJeCIJ33SYKYeZcpgpL/5yKi0J71C5SUJTaUloKi0JTaUloak8kYR3HGbKYaYcZsqLL0vCNyWhqbwjCU2lqbQk3CThCZWWhJ90mCmHmXKYKS8+TOUnqbQkvEPlCZVPSsITKi0J7zjMlMNMOcwU8wsz/zvMlMNMOcyUw0w5zJTDTDnMlMNMOcyUw0w5zJTDTDnMlMNMOcyU/wALk3U5xe7WxgAAAABJRU5ErkJggg=='),(24,'Liam ','Other',10008,1,7,2,'Liam123456##','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAOSSURBVO3BQa5bRwADweZA979yx4ssuBpAeNK3nbAq/sLMvw4z5TBTDjPlMFMOM+UwUw4z5TBTDjPlMFMOM+UwUw4z5TBTDjPlxUNJ+EkqN0loKi0Jn6Ryk4SfpPLEYaYcZsphprz4MJVPSsI7VN6h0pLwjiQ0lRuVT0rCJx1mymGmHGbKiy9LwjtU3pGEptKS0FRaEm5UWhKayhNJeIfKNx1mymGmHGbKi/+YJDSVd6i0JPyfHGbKYaYcZsqL/zmVG5WWhJaEpvI3O8yUw0w5zJQXX6byk1RuknCjcqPySSp/ksNMOcyUw0x58WFJ+JMkoam0JNwkoam0JDSVmyT8yQ4z5TBTDjPlxUMqf5IkNJWWhKbyTSp/k8NMOcyUw0yJv/BAEppKS8Inqdwk4UblJyXhk1S+6TBTDjPlMFNefJlKS8KNyk0S3qHSktBUWhLeoXKj0pLQVFoSfqfDTDnMlMNMefGQSkvCjUpLwk0SPknlm5LwSSotCTcqTxxmymGmHGbKiw9TuUlCU7lRaUloKt+k0pJwo9KS0FRaEprKO1Q+6TBTDjPlMFNePJSEd6i8Iwk3SbhRaUm4UWlJuElCU3kiCTcqLQlN5YnDTDnMlMNMefGHSUJTeSIJTeUdKi0JTaUloam0JDSVmyTcqHzSYaYcZsphprz4MJWWhJaEG5WWhKZyk4SbJNyoPKHyjiQ0lZsk3Kg8cZgph5lymCkvvkylJaGptCQ0lZskNJWbJDSVmyTcJKGpfJJKS0JT+aTDTDnMlMNMefGHS8KNSktCU3lCpSXhJglPJOFGpSWhqTxxmCmHmXKYKfEX/mJJaCotCU2lJeGTVN6RhKbSknCj8kmHmXKYKYeZEn/hgST8JJWbJDSVdyThRqUloam0JDSVloQblZaEG5UnDjPlMFMOM+XFh6l8UhJuknCThKbSknCj8oTKO1TeofJJh5lymCmHmfLiy5LwDpUnVFoS3qHSkvCOJDyRhBuVbzrMlMNMOcyUF/8xSXiHyo1KS0JTuUnCjUpLQlO5SUJTeeIwUw4z5TBTXvzHqbQk3KjcqNwk4QmV3+kwUw4z5TBTXnyZyjep3CThRuUmCU3lRqUloam0JDSV3+kwUw4z5TBTXnxYEn5SEr5JpSWhqTyhcpOEn3SYKYeZcpgp8Rdm/nWYKYeZcpgph5lymCmHmXKYKYeZcpgph5lymCmHmXKYKYeZcpgp/wBmbKD+QYkerAAAAABJRU5ErkJggg=='),(26,'Testing','Male',10009,3,10,2,'Testing1234#','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAOESURBVO3BO65jSwIDwWRB+99yThvPoFXAgaTbn2FE/IWZ/xxmymGmHGbKYaYcZsphphxmymGmHGbKYaYcZsphphxmymGmHGbKizcl4SeptCTcqPxOSfhJKu84zJTDTDnMlBcfpvJJSbhRaUloSbhReUcSmsqNyicl4ZMOM+UwUw4z5cWXJeEJlU9SuUnCjUpLwicl4QmVbzrMlMNMOcyUF3+5JNwk4QmVloT/J4eZcpgph5ny4h+jcpOEmyTcqLQk/EsOM+UwUw4z5cWXqfxOSWgqLQlPJKGpvEPlT3KYKYeZcpgpLz4sCX8zlZaEptKS0FRukvAnO8yUw0w5zJQXb1L5k6l8k8qNyt/kMFMOM+UwU168KQlN5YkkNJWWhG9SaUm4SUJTaUn4JJWbJDSVdxxmymGmHGbKiy9LwhNJaCotCU2lJaGptCTcqLxD5YkkNJWWhKbSVD7pMFMOM+UwU168SaUloam0JDyRhKbyRBJuVFoS3qFyk4Sm0pLwOx1mymGmHGZK/IU3JOEJlXck4Sep3CThRuUmCU2lJaGptCQ0lXccZsphphxmyosPU2lJaEm4UWlJuFG5SUJTaUn4JJWWhBuVP8lhphxmymGmxF94QxLeofKOJDyhcpOEG5WbJDSVmyQ8ofJNh5lymCmHmRJ/4YuS8E0qLQlN5ZOS8E0qv9NhphxmymGmvPhhKi0JTeWJJNwkoam0JDSVloQblZaET0pCU2lJaCrvOMyUw0w5zJQXb0rCE0m4ScITKk8koam0JNyotCT8Sw4z5TBTDjMl/sJfLAk3KjdJaCpPJKGpPJGEd6h80mGmHGbKYaa8eFMSfpLKO5Jwk4QblSeS0FTeofJNh5lymCmHmfLiw1Q+KQk3KjdJuFFpSWgq71B5QqUl4SYJTeUdh5lymCmHmfLiy5LwhMoTSbhRuUnCJyXhJ6l80mGmHGbKYaa8+Mup3CShqTSVloSWhKbSVG6S0FRaEm5UbpLQVN5xmCmHmXKYKS/+MUloKk+oPJGEptJUWhKayk0SblQ+6TBTDjPlMFNefJnKT1JpSWgqLQlNpSWhqdwkoak0lZaEpvI7HWbKYaYcZsqLD0vCT0rCjUpLQlNpSXhC5SYJTyThiSQ0lXccZsphphxmSvyFmf8cZsphphxmymGmHGbKYaYcZsphphxmymGmHGbKYaYcZsphphxmyv8AoaaBIfacP94AAAAASUVORK5CYII='),(28,'John Daniel Valera','Male',10011,1,9,1,'Niel10070012!','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAODSURBVO3BQY5jBxYDwcwH3f/KHC+84OoDglTV7gEjzD+Y+dcxU46ZcsyUY6YcM+WYKcdMOWbKMVOOmXLMlGOmHDPlmCnHTHnxIZXflISm8iQJT1Q+kYQnKr8pCZ84ZsoxU46Z8uLLkvBNKp9Q+UQSnqi0JDxJwjepfNMxU46ZcsyUFz9M5R1JeEcSmkpLQlNpSfiTVN6RhJ90zJRjphwz5cVfTuWJyidUniTh/8kxU46ZcsyUF3+5JDSVd6i0JDxJQlNpSfibHTPlmCnHTHnxw5LwN1FpSWgq35SE/5Jjphwz5ZgpL75M5TeptCQ0lZaEptKS0FRaEprKO1T+y46ZcsyUY6a8+FAS/suS8IkkNJV3JOFvcsyUY6YcM+XFh1RaEprKkyQ0lXck4YlKS0JLQlNpSfiESkvCE5WWhKbyJAmfOGbKMVOOmfLiD1NpSXii0lRaEloSmkpLwhOVJ0l4koSm0pLwRKUl4ScdM+WYKcdMefHLktBUnqj8JJUnSfhJKi0Jf9IxU46ZcsyUFz8sCU+S8CQJTeUdKu9IwhOVloRvUvlEEj5xzJRjphwz5cWHktBUniThico7ktBUWhKeqDxReaLSktBUWhKayjuS0FS+6Zgpx0w5ZsqLL0tCU/lEEppKU3mHyieS8AmVT6j8pGOmHDPlmCkvvkzlHSpPVJ4k4RNJaCotCU9UWhKeJKGpPElCU2lJ+KZjphwz5ZgpLz6k0pLQVJpKS0JTaUl4ovJNSWgqn0hCU3mShD/pmCnHTDlmyosPJeFJEprKO1RaEloSmkpLwhOVloQnSWgqTeWbVH7TMVOOmXLMFPMP/mIqLQlNpSXhHSotCU2lJeEdKk+S0FSeJOETx0w5ZsoxU158SOU3JeEnqXyTSkvCf9kxU46ZcsyUF1+WhG9S+SaVloR3qLwjCd+UhKbyTcdMOWbKMVNe/DCVdyThHUloKk+S8IkkNJWm8okk/EnHTDlmyjFTXvzlVFoSmso7kvBEpSXhicqTJDSVloTfdMyUY6YcM+XF/xmVb1L5RBKaSlN5h0pLwjcdM+WYKcdMefHDkvCTkvBEpal8k0pLwjeptCT8pGOmHDPlmCkvvkzlN6l8IgnvUGlJeKLSkvAOlabyJAmfOGbKMVOOmWL+wcy/jplyzJRjphwz5Zgpx0w5ZsoxU46ZcsyUY6YcM+WYKcdMOWbK/wB+qGxO01MA1AAAAABJRU5ErkJggg=='),(30,'Angel Nicole R. Aquino','Other',10012,1,9,1,'123456789#ANGELl','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAOMSURBVO3BQa5bRwADweZA979yx4ssuBpAeNK3nbAq/sLMvw4z5TBTDjPlMFMOM+UwUw4z5TBTDjPlMFMOM+UwUw4z5TBTDjPlxUNJ+EkqN0l4h0pLwjtUbpLwk1SeOMyUw0w5zJQXH6bySUl4h8pNEj4pCU3lRuWTkvBJh5lymCmHmfLiy5LwDpV3JKGptCQ0lZaEG5WWhKbyRBLeofJNh5lymCmHmfLifyYJNyotCf8nh5lymCmHmfLif0alJeFGpSWhJaGp/M0OM+UwUw4z5cWXqfykJLxD5R0qn6TyJznMlMNMOcyUFx+WhN9JpSXhJglNpSWhqbQkNJWbJPzJDjPlMFMOM+XFQyp/MpUblW9S+ZscZsphphxmSvyFB5LQVFoSPknlJglN5XdKwiepfNNhphxmymGmxF/4oCS8Q6UloancJOEdKjdJeIfKO5LQVFoSblS+6TBTDjPlMFNefJhKS8ITSWgq71BpSWgqn5SET1JpSbhReeIwUw4z5TBTXnyZyk0SmspNEj4pCTcqLQk3Ki0JTaUloam8Q+WTDjPlMFMOM+XFQ0loKjdJaCotCU+oPKHSktBUWhKayhNJuFFpSWgqTxxmymGmHGZK/IUHkvBNKi0JTeUmCU3liSQ0lZaEptKS0FRuktBUvukwUw4z5TBTXnyYSktCU2lJaCotCU2lJaGp3CThRuUJlXckoancJOFG5YnDTDnMlMNMefFlKi0JN0loKk+otCQ0lZsk3CShqXySSktCU/mkw0w5zJTDTHnxZUm4UblJwjuS8EkqLQk3SXgiCTcqLQlN5YnDTDnMlMNMib/wF0tCU2lJaCotCZ+k8o4kNJWWhBuVTzrMlMNMOcyUFw8l4SepNJUnVFoSblRaEm6S0FRuktBUWhJaEprKE4eZcpgph5ny4sNUPikJN0loKu9Iwo3KEyrvUHmHyicdZsphphxmyosvS8I7VD5J5R0qLQnvSMITSbhR+abDTDnMlMNMefEfk4SmcqNyo9KS0FRuknCj0pLQVG6S0FSeOMyUw0w5zJQX/3FJeIfKjcpNEp5Q+Z0OM+UwUw4z5cWXqXyTyk0SblRuktBUblRaEppKS0JT+Z0OM+UwUw4z5cWHJeEnJeGbVFoSmsoTKjdJ+EmHmXKYKYeZEn9h5l+HmXKYKYeZcpgph5lymCmHmXKYKYeZcpgph5lymCmHmXKYKYeZ8g9E5573Q0GiAgAAAABJRU5ErkJggg=='),(31,'Name','Male',10013,3,10,2,'Name123456##','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAOCSURBVO3BQa5bRwADweZA979yx4ssuBpAeNK3nbAq/sLMvw4z5TBTDjPlMFMOM+UwUw4z5TBTDjPlMFMOM+UwUw4z5TBTDjPlxUNJ+Ekq70hCU2lJeELlJgk/SeWJw0w5zJTDTHnxYSqflIRPSkJTaUl4RxKayo3KJyXhkw4z5TBTDjPlxZcl4R0q70jCN6m0JDSVJ5LwDpVvOsyUw0w5zJQX/zEqLQnvUGlJ+D85zJTDTDnMlBdzpdKS0JLQVP5mh5lymCmHmfLiy1R+J5WWhCdUPknlT3KYKYeZcpgpLz4sCX+SJDSVloSm0pLQVFoSmspNEv5kh5lymCmHmfLiIZU/SRLeofJNKn+Tw0w5zJTDTIm/8EASmkpLwiep3CThRuUnJeGTVL7pMFMOM+UwU148pPIOlSeScKPSknCThCdUblRaEppKS8LvdJgph5lymCkvHkpCU2kqN0l4QqUloam0JHxTEj5JpSXhRuWJw0w5zJTDTHnxkEpLwjtUWhKaSkvCjconqbxDpSWhqbQkNJV3qHzSYaYcZsphprx4KAlNpSXhJgk3SWgqLQlNpSWhqbQkNJWWhKbSktBUnkjCjUpLQlN54jBTDjPlMFNefJlKS8KNyjtUnlC5UWlJaCotCU2lJaGp3CThRuWTDjPlMFMOM+XFlyWhqbwjCe9QuUnCjcoTKu9IQlO5ScKNyhOHmXKYKYeZ8uI3S8KNyk0SWhKaSktCU7lJwk0SmsonqbQkNJVPOsyUw0w5zJQXfxiVloSm0lRaEloSnlBpSbhJwhNJuFFpSWgqTxxmymGmHGZK/IW/WBKayjuS8Ekq70hCU2lJuFH5pMNMOcyUw0yJv/BAEn6Syjcl4UalJaGptCQ0lZaEG5WWhBuVJw4z5TBTDjPlxYepfFISbpJwo3KThBuVJ1TeofIOlU86zJTDTDnMlBdfloR3qDyh0pLQVG5UWhLekYQnknCj8k2HmXKYKYeZ8uI/JglN5UblRqUloancJOFGpSWhqdwkoak8cZgph5lymCkv/meScKNyo3KThCdUfqfDTDnMlMNMefFlKt+k8oTKTRKayo1KS0JTaUloKr/TYaYcZsphprz4sCT8pCQ0lU9SaUloKk+o3CThJx1mymGmHGZK/IWZfx1mymGmHGbKYaYcZsphphxmymGmHGbKYaYcZsphphxmymGmHGbKP2I7mvUd7zVLAAAAAElFTkSuQmCC'),(32,'Name','Male',10014,1,10,2,'Name123456##','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAOASURBVO3BO47kWAADweSD7n/l3DXGoCVAUFXPB4yI/2Pml8NMOcyUw0w5zJTDTDnMlMNMOcyUw0w5zJTDTDnMlMNMOcyUw0y5eCkJP0mlJaGpPJGEpnInCXdUWhJ+ksobh5lymCmHmXLxYSqflIQ7Ki0JTeWJJNxRaUl4QuWTkvBJh5lymCmHmXLxZUl4QuWJJDyRhKZyJwktCZ+UhCdUvukwUw4z5TBTLv5yKi0Jd1TeUPmXHWbKYaYcZsrFPy4JTeVOEu4koan8Sw4z5TBTDjPl4stUvikJd1RaEppKU7mThE9S+ZMcZsphphxmysWHJeF3UmlJaCotCU2lJaGptCQ0lTtJ+JMdZsphphxmysVLKr+Tyk9KwhMqf5PDTDnMlMNMuXgpCU2lJaGpPJGEOyotCXeScCcJd1RaEp5IQlO5k4Sm0pLQVN44zJTDTDnMlIsvU2lJaCp3VFoSWhKaSktCU7mThCdU7iThb3KYKYeZcpgpF3+YJNxRuZOEJ5LQVO4k4Y7KHZWWhD/JYaYcZsphplx8WRKaSkvCHZU7SWgqT6i0JDSVptKScEflDZWWhG86zJTDTDnMlIuXVFoSmkpLQlNpSWhJ+KYkvKHSkvCESkvC73SYKYeZcpgpF1+WhDtJuKPSktBUWhKayhMqf5IkNJWWhE86zJTDTDnMlIuXknBH5Y0kNJU7Km8k4ZNUnlD5nQ4z5TBTDjPl4iWVJ5LwhMqdJHySSktCU2lJaCotCW+otCR802GmHGbKYaZcvJSEN1TuJKGpNJVPSsKdJNxJwt/sMFMOM+UwUy5eUvkmlTtJaCotCU3lDZWWhKbyRBLuJOEnHWbKYaYcZsrFS0n4SSp3ktBUWhKaSlP5pCQ0lTdUWhI+6TBTDjPlMFMuPkzlk5JwR+UJlTtJaCotCU+ovKHSkvBNh5lymCmHmXLxZUl4QuWTkvCTkvCTVD7pMFMOM+UwUy7+MUloKneS0FTuqLyRhKbyhMo3HWbKYaYcZsrFXy4JTeWNJNxRaUloKi0JTaUloam0JDyh8sZhphxmymGmXHyZyjep3EnCEyotCS0JTeWOyhNJaCo/6TBTDjPlMFMuPiwJPykJTeWOyp0kPJGET1J5IglN5Y3DTDnMlMNMif9j5pfDTDnMlMNMOcyUw0w5zJTDTDnMlMNMOcyUw0w5zJTDTDnMlMNM+Q9bWXQ6C3RbIgAAAABJRU5ErkJggg=='),(33,'Name','Male',10015,3,8,2,'Name123456##','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAOBSURBVO3BQY4jSQIDQWdA//+ybx/mwFMAQkpVPbM0i38w84/DTDnMlMNMOcyUw0w5zJTDTDnMlMNMOcyUw0w5zJTDTDnMlMNMefFQEn6Syk0SblRukvAOlZsk/CSVJw4z5TBTDjPlxYepfFIS3qHSkvBNSWgqNyqflIRPOsyUw0w5zJQXX5aEd6i8IwlN5SYJ71BpSWgqTyThHSrfdJgph5lymCkv/uNUnkjC/5PDTDnMlMNMefEfk4SmcpOEptJUWhJaEprKv9lhphxmymGmvPgyld+UhKbyhMonqfxNDjPlMFMOM+XFhyXhN6m0JDyRhKbSktBUbpLwNzvMlMNMOcyUFw+p/M1UblS+SeXf5DBTDjPlMFPiHzyQhKbSkvBJKjdJuFFpSWgqn5SET1L5psNMOcyUw0x58ZBKS0JTaUloKi0JTeUmCU2lJeFGpSXhHSo3Ki0JTaUl4TcdZsphphxmyosfpnKj0pLQVJpKS0JTaUloKp+UhE9SaUm4UXniMFMOM+UwU1785VTeoXKj0pJwo3KThKbSktBUWhKayjtUPukwUw4z5TBTXnyYyk0SmspNEm5UPkmlJaGpfFMSblRaEprKE4eZcpgph5kS/+CBJDSVdyShqfzNktBUWhKaSktCU7lJQlP5psNMOcyUw0x58WVJaCpNpSXhRqUloam0JLxD5QmVdyShqdwk4UblicNMOcyUw0x58cOS8A6VdyThHSo3SbhJQlP5JJWWhKbySYeZcpgph5kS/+CBJDSVJ5Jwo/KOJNyovCMJv0mlJaGpPHGYKYeZcpgp8Q/+xZJwo3KThE9SeUcSmkpLwo3KJx1mymGmHGbKi4eS8JNUmkpLwjtUWhJuVFoSbpLQVG6S0FRaEloSmsoTh5lymCmHmfLiw1Q+KQk3SWgqLQlNpSXhRuUJlXeovEPlkw4z5TBTDjPlxZcl4R0qv0mlJeEdSXgiCTcq33SYKYeZcpgpL/7jVG5UblRaEprKTRJuVFoSmspNEprKE4eZcpgph5ny4v9MEm5UblRukvCEym86zJTDTDnMlBdfpvJNKi0JTeVG5SYJTeVGpSWhqbQkNJXfdJgph5lymCkvPiwJPykJN0l4QqUloak8oXKThJ90mCmHmXKYKfEPZv5xmCmHmXKYKYeZcpgph5lymCmHmXKYKYeZcpgph5lymCmHmXKYKf8Ds7ik3Ox4QswAAAAASUVORK5CYII='),(34,'Gojo Saturo','Male',10016,1,9,1,'Gojo@123456789!','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAOsSURBVO3BQY5jiRUDwcwH3f/K9Cy84OoDglTl7jEjzD+Y+a9jphwz5Zgpx0w5ZsoxU46ZcsyUY6YcM+WYKcdMOWbKMVOOmfLiQyq/KQlPVJ4koak8ScITlZaEpvKbkvCJY6YcM+WYKS++LAnfpPJEpSWhqTxJwhOVb0rCN6l80zFTjplyzJQXP0zlHUl4RxKayidUniShqXxC5R1J+EnHTDlmyjFTXvzLJKGpNJVPqLQk/JscM+WYKcdMefGXU3mShCcqLQlNpSXh3+yYKcdMOWbKix+WhJ+UhCcqLQktCU2lJeEnJeFPcsyUY6YcM+XFl6n8JpWWhHeotCQ0lZaEptKS8ETlT3bMlGOmHDPF/IP/IyqfSEJTaUn4mx0z5Zgpx0x58SGVloSm0pLQVFoSmkpLwieS0FRaEppKU/kmlZaEJyotCd90zJRjphwz5cWXqbQkNJV3JKGpfCIJ35SEpvIkCS0JTeUdKi0JnzhmyjFTjpny4n8sCU3lHUloKk9UWhKaSkvCE5V3qDxJQlP5TcdMOWbKMVNefCgJTaWpvCMJT1TekYSm8iQJT1RaEppKS0JTeUcSnqh80zFTjplyzJQXPywJTeUdKk9Unqg8UWlJeJKEptKS0FRaEv5kx0w5ZsoxU178MJVPJOGbVJ6otCQ8ScJPUvlNx0w5ZsoxU158SKUloam8Q+UdSWgqn0hCU2lJaCotCS0JTaUloam0JDSVn3TMlGOmHDPF/IMvUvmmJDxRaUloKi0JTeU3JaGptCS8Q6Ul4RPHTDlmyjFTXnxIpSXhHSotCU2lJeETKi0JT1RaEprKO1T+ZMdMOWbKMVNefCgJn0jCkyS8Q+UnqTxJwjtUnqi0JPykY6YcM+WYKS8+pPKbktCS8E0qLQlN5R0qLQmfUPlJx0w5ZsoxU158WRK+SeUTKk+S0JLwJAlN5UkSPpGEJyrfdMyUY6YcM+XFD1N5RxLeofKOJDSVloRPqPymJHzTMVOOmXLMlBd/uSQ0lZaEpvJEpSWhqbQkNJWWhHeotCQ0lZaEbzpmyjFTjpny4i+n0pLQVN6RhKbyROWJyidUWhKaSkvCJ46ZcsyUY6a8+GFJ+ElJeJKEJypN5UkSnqi0JDSVJ0l4otKS8E3HTDlmyjFTXnyZym9SaUloKk+S8ETliUpLQlNpSWgqTaUl4YlKS8InjplyzJRjpph/MPNfx0w5ZsoxU46ZcsyUY6YcM+WYKcdMOWbKMVOOmXLMlGOmHDPlP0PIjlY3tlNIAAAAAElFTkSuQmCC'),(35,'clarence','Male',10017,1,9,2,'Clarence@123!','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAO8SURBVO3BQY5bSwIDQWZB979yTi/+gqsCHiQ1bA8j8Edm/nMyU05myslMOZkpJzPlZKaczJSTmXIyU05myslMOZkpJzPlZKaczJRX3gTkN6l5AsiNmgakqbkB0tQ0IL9JzTtOZsrJTDmZKa98mJpPAnIDpKlpap5Q04B8kppPAvJJJzPlZKaczJRXvgzIE2qeUHMD5JPUNCDvAPKEmm86mSknM+Vkprzyf05NA3IDpKn5l5zMlJOZcjJTXvnLAblR04DcqGlAmpp/2clMOZkpJzPllS9T801qGpB3AGlqvknNn+RkppzMlJOZ8sqHAflNQJqaBqSpaUCamgakqWlAmpobIH+yk5lyMlNOZgr+yD8EyDepaUCamr/ZyUw5mSknM+WVNwFpahqQpqYBaWoakKbmRk0D0tQ0IE1NA9KAfBKQpuYGSFPzSScz5WSmnMyUV75MzRNAmpobIE3NE2reoaYBuVHT1DQgTwBpat5xMlNOZsrJTMEf+SAgN2oakCfUNCDfpOYGyCepaUCeUPOOk5lyMlNOZsorH6bmk9Q0IDdqboA0Ne9Q04A0NQ3IE2pugHzSyUw5mSknM+WVDwPyDjUNSFPTgDQgTU1T04A0NU8AaWoakKbmT3YyU05myslMeeXD1NwAaWoakKamAWlqngByA6SpuVHzTUB+08lMOZkpJzMFf+QNQJqaBuST1NwAeYeaBqSpaUCamhsgTU0D0tQ0IDdq3nEyU05myslMwR/5ICBNzQ2QGzU3QJ5Q04D8JjUNSFPzBJCm5h0nM+VkppzMlFfeBKSpuQHS1NwAuVFzA6QBaWpugDQ1DcgTQP5kJzPlZKaczJRX3qTmCTVPqLkBcqOmAXkHkBs1TwC5AdLUfNPJTDmZKScz5ZU3AflNapqaGyBNzQ2QpqYBeQJIU/MOIN90MlNOZsrJTHnlw9R8EpAngDQ1DUhT09TcqGlAbtS8Q80NkE86mSknM+VkprzyZUCeUPMEkCfUNCBNzTuA/CY1n3QyU05myslMeeUvp6YBuQFyA6SpaUCamgakqXkCSFPTgDQ1n3QyU05myslMeeUvB6SpeYeaBuQGyA2QdwBpahqQpuYdJzPlZKaczJRXvkzNN6m5AdLUNCANyI2aGyBNTQNyo+YGSFPzSScz5WSmnMyUVz4MyG8CcqOmAWlqboDcAGlqGpCmpgFpQJqaGyBNzTtOZsrJTDmZKfgjM/85mSknM+VkppzMlJOZcjJTTmbKyUw5mSknM+VkppzMlJOZcjJTTmbK/wCZbrEnNUIvYgAAAABJRU5ErkJggg=='),(36,'Milo Miller','Male',10018,2,6,2,'Milo123456##','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAYAAABRRIOnAAAAAklEQVR4AewaftIAAAOQSURBVO3BO45jSQADwcyC7n9l7hhr0CrgQVLPB4wwvzDzv8NMOcyUw0w5zJTDTDnMlMNMOcyUw0w5zJTDTDnMlMNMOcyUw0x58SaVn5SEpvKOJDyhcpOEpvKTkvCOw0w5zJTDTHnxYUn4JJWbJDSVmyTcqNwkoak8kYRPUvmkw0w5zJTDTHnxZSpPJOEJlSdUbpLQVJrKJ6k8kYRvOsyUw0w5zJQXf7kkNJWWhKbyjiT8yw4z5TBTDjPlxT9OpSXhRuVGpSXhX3KYKYeZcpgpL74sCd+k0pLwhEpLwo3KJyXhT3KYKYeZcpgpLz5M5U+i0pLwhEpLQlNpSbhR+ZMdZsphphxmyos3JeF3SsJPUnkiCX+Tw0w5zJTDTHnxJpWWhKbSkvCEyk0SmkpLQlNpSWgqN0loKk+otCTcqLQkNJWWhHccZsphphxmyosPU7lRuUlCS0JTaSotCU3lm5Jwo/I3OcyUw0w5zJQXb0pCU2lJuFFpKk8k4YkkNJWWhBuVmyTcJKGp/EkOM+UwUw4z5cWHJeFGpSXhCZUnktBUWhKaSktCS0JTuUnCO5LQVL7pMFMOM+UwU168SaUloam0JDSVloSm8klJaCpPqNyoPJGEpvI7HWbKYaYcZsqLNyXhCZWWhKbSktBUblRuknCThCeS0FQ+SaUloal80mGmHGbKYaa8eJPKE0l4QuWJJDSVJ1SeULlJwhNJ+J0OM+UwUw4zxfzCF6k8kYQblSeS0FRuktBUWhKaSktCU3lHEprKTRLecZgph5lymCkv3qTyjiTcqDyRhKbSknCjcqNyo/I3O8yUw0w5zJQXb0rCNyXhRqWpfFMSmkpLwhMqNyo/6TBTDjPlMFNevEnlJyXhJgk3Ki0JLQmfpNKS8I4kNJVPOsyUw0w5zJQXH5aET1K5ScITSbhRaUloKk8k4R1JaCrfdJgph5lymCkvvkzliSR8kspPUvlJSfikw0w5zJTDTHnxj1FpSbhRaUm4ScI7VFoSnkjCNx1mymGmHGbKi7+cSktCU2lJuFG5SUJTaUloKi0JTaUloak8kYR3HGbKYaYcZsqLL0vCNyXhJglN5SYJTaWptCTcJOEJlZaEn3SYKYeZcpgpLz5M5SeptCTcJOFG5QmVT0rCEyotCe84zJTDTDnMFPMLM/87zJTDTDnMlMNMOcyUw0w5zJTDTDnMlMNMOcyUw0w5zJTDTDnMlP8A6/F7Qgs13xMAAAAASUVORK5CYII=');
/*!40000 ALTER TABLE `scholars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_admin`
--

DROP TABLE IF EXISTS `system_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `scholar_id` int DEFAULT NULL,
  `church_id` int DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  `id` int DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `scholar_id` (`scholar_id`),
  KEY `church_id` (`church_id`),
  KEY `dept_id` (`dept_id`),
  KEY `id` (`id`),
  CONSTRAINT `system_admin_ibfk_1` FOREIGN KEY (`scholar_id`) REFERENCES `scholars` (`scholar_id`),
  CONSTRAINT `system_admin_ibfk_2` FOREIGN KEY (`church_id`) REFERENCES `church` (`church_id`),
  CONSTRAINT `system_admin_ibfk_3` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`),
  CONSTRAINT `system_admin_ibfk_4` FOREIGN KEY (`id`) REFERENCES `logs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_admin`
--

LOCK TABLES `system_admin` WRITE;
/*!40000 ALTER TABLE `system_admin` DISABLE KEYS */;
INSERT INTO `system_admin` VALUES (1,'admin@system.com','systemAdmin123',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `system_admin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-18 12:53:04
