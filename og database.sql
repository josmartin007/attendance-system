-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: geoattend
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `class_id` int NOT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `status` enum('present','absent') DEFAULT 'absent',
  `marked_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `marked_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `subject_id` (`subject_id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (13,16,15,10,NULL,'present','2026-03-17 17:27:39','64'),(14,17,15,10,NULL,'present','2026-03-17 17:27:39','64'),(15,18,15,10,NULL,'present','2026-03-17 17:27:39','64'),(16,19,15,10,NULL,'present','2026-03-17 17:27:39','64'),(17,20,15,10,NULL,'present','2026-03-17 17:27:39','64'),(18,21,15,10,NULL,'present','2026-03-17 17:27:39','64'),(19,22,15,10,NULL,'present','2026-03-17 17:27:39','64'),(20,23,15,10,NULL,'present','2026-03-17 17:27:39','64'),(21,24,15,10,NULL,'present','2026-03-17 17:27:39','64'),(22,25,15,10,NULL,'present','2026-03-17 17:27:39','64'),(23,26,15,10,NULL,'present','2026-03-17 17:27:39','64'),(24,27,15,10,NULL,'present','2026-03-17 17:27:39','64'),(25,28,15,10,NULL,'present','2026-03-17 17:27:39','64'),(26,29,15,10,NULL,'present','2026-03-17 17:27:39','64'),(27,30,15,10,NULL,'present','2026-03-17 17:27:39','64'),(28,31,15,10,NULL,'present','2026-03-17 17:27:39','64'),(29,32,15,10,NULL,'present','2026-03-17 17:27:39','64'),(30,33,15,10,NULL,'present','2026-03-17 17:27:39','64'),(31,34,15,10,NULL,'present','2026-03-17 17:27:39','64'),(32,35,15,10,NULL,'present','2026-03-17 17:27:39','64'),(33,36,15,10,NULL,'present','2026-03-17 17:27:39','64'),(34,37,15,10,NULL,'present','2026-03-17 17:27:39','64'),(35,38,15,10,NULL,'present','2026-03-17 17:27:39','64'),(36,39,15,10,NULL,'present','2026-03-17 17:27:39','64'),(37,40,15,10,NULL,'present','2026-03-17 17:27:39','64'),(38,41,15,10,NULL,'present','2026-03-17 17:27:39','64'),(39,42,15,10,NULL,'present','2026-03-17 17:27:39','64'),(40,43,15,10,NULL,'present','2026-03-17 17:27:39','64'),(41,44,15,10,NULL,'present','2026-03-17 17:27:39','64'),(42,45,15,10,NULL,'present','2026-03-17 17:27:39','64'),(43,46,15,10,NULL,'present','2026-03-17 17:27:39','64'),(44,47,15,10,NULL,'present','2026-03-17 17:27:39','64'),(45,48,15,10,NULL,'present','2026-03-17 17:27:39','64'),(46,49,15,10,NULL,'present','2026-03-17 17:27:39','64'),(47,50,15,10,NULL,'present','2026-03-17 17:27:30','64'),(48,51,15,10,NULL,'present','2026-03-17 17:27:39','64'),(49,52,15,10,NULL,'present','2026-03-17 17:27:39','64'),(50,53,15,10,NULL,'present','2026-03-17 17:27:39','64'),(51,54,15,10,NULL,'present','2026-03-17 17:27:39','64'),(52,55,15,10,NULL,'present','2026-03-17 17:27:39','64'),(53,56,15,10,NULL,'present','2026-03-17 17:27:39','64'),(54,57,15,10,NULL,'present','2026-03-17 17:27:39','64'),(55,16,18,10,NULL,'present','2026-03-17 17:30:29','64'),(56,17,18,10,NULL,'present','2026-03-17 17:30:29','64'),(57,18,18,10,NULL,'present','2026-03-17 17:30:29','64'),(58,19,18,10,NULL,'present','2026-03-17 17:30:29','64'),(59,20,18,10,NULL,'present','2026-03-17 17:30:29','64'),(60,21,18,10,NULL,'present','2026-03-17 17:30:29','64'),(61,22,18,10,NULL,'present','2026-03-17 17:30:29','64'),(62,23,18,10,NULL,'present','2026-03-17 17:30:29','64'),(63,24,18,10,NULL,'present','2026-03-17 17:30:29','64'),(64,25,18,10,NULL,'present','2026-03-17 17:30:29','64'),(65,26,18,10,NULL,'present','2026-03-17 17:30:29','64'),(66,27,18,10,NULL,'present','2026-03-17 17:30:29','64'),(67,28,18,10,NULL,'present','2026-03-17 17:30:29','64'),(68,29,18,10,NULL,'present','2026-03-17 17:30:29','64'),(69,30,18,10,NULL,'present','2026-03-17 17:30:29','64'),(70,31,18,10,NULL,'present','2026-03-17 17:30:29','64'),(71,32,18,10,NULL,'present','2026-03-17 17:30:29','64'),(72,33,18,10,NULL,'present','2026-03-17 17:30:29','64'),(73,34,18,10,NULL,'present','2026-03-17 17:30:29','64'),(74,35,18,10,NULL,'present','2026-03-17 17:30:29','64'),(75,36,18,10,NULL,'present','2026-03-17 17:30:29','64'),(76,37,18,10,NULL,'present','2026-03-17 17:30:29','64'),(77,38,18,10,NULL,'present','2026-03-17 17:30:29','64'),(78,39,18,10,NULL,'present','2026-03-17 17:30:29','64'),(79,40,18,10,NULL,'present','2026-03-17 17:30:29','64'),(80,41,18,10,NULL,'present','2026-03-17 17:30:29','64'),(81,42,18,10,NULL,'present','2026-03-17 17:30:29','64'),(82,43,18,10,NULL,'present','2026-03-17 17:30:29','64'),(83,44,18,10,NULL,'present','2026-03-17 17:30:29','64'),(84,45,18,10,NULL,'present','2026-03-17 17:30:29','64'),(85,46,18,10,NULL,'present','2026-03-17 17:30:29','64'),(86,47,18,10,NULL,'present','2026-03-17 17:30:29','64'),(87,48,18,10,NULL,'present','2026-03-17 17:30:29','64'),(88,49,18,10,NULL,'present','2026-03-17 17:30:29','64'),(89,50,18,10,NULL,'present','2026-03-17 17:30:14','64'),(90,51,18,10,NULL,'present','2026-03-17 17:30:29','64'),(91,52,18,10,NULL,'present','2026-03-17 17:30:29','64'),(92,53,18,10,NULL,'present','2026-03-17 17:30:29','64'),(93,54,18,10,NULL,'present','2026-03-17 17:30:29','64'),(94,55,18,10,NULL,'present','2026-03-17 17:30:29','64'),(95,56,18,10,NULL,'present','2026-03-17 17:30:29','64'),(96,57,18,10,NULL,'present','2026-03-17 17:30:29','64'),(97,16,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(98,17,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(99,18,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(100,19,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(101,20,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(102,21,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(103,22,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(104,23,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(105,24,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(106,25,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(107,26,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(108,27,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(109,28,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(110,29,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(111,30,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(112,31,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(113,32,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(114,33,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(115,34,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(116,35,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(117,36,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(118,37,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(119,38,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(120,39,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(121,40,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(122,41,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(123,42,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(124,43,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(125,44,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(126,45,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(127,46,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(128,47,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(129,48,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(130,49,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(131,50,17,10,NULL,'present','2026-03-17 17:35:36','64'),(132,51,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(133,52,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(134,53,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(135,54,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(136,55,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(137,56,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(138,57,17,10,NULL,'absent','2026-03-17 17:35:44','64'),(139,16,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(140,17,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(141,18,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(142,19,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(143,20,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(144,21,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(145,22,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(146,23,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(147,24,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(148,25,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(149,26,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(150,27,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(151,28,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(152,29,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(153,30,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(154,31,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(155,32,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(156,33,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(157,34,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(158,35,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(159,36,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(160,37,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(161,38,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(162,39,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(163,40,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(164,41,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(165,42,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(166,43,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(167,44,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(168,45,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(169,46,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(170,47,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(171,48,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(172,49,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(173,50,15,10,NULL,'present','2026-03-17 17:39:45','64'),(174,51,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(175,52,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(176,53,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(177,54,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(178,55,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(179,56,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(180,57,15,10,NULL,'absent','2026-03-17 17:40:02','64'),(181,16,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(182,17,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(183,18,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(184,19,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(185,20,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(186,21,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(187,22,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(188,23,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(189,24,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(190,25,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(191,26,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(192,27,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(193,28,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(194,29,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(195,30,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(196,31,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(197,32,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(198,33,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(199,34,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(200,35,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(201,36,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(202,37,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(203,38,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(204,39,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(205,40,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(206,41,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(207,42,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(208,43,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(209,44,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(210,45,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(211,46,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(212,47,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(213,48,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(214,49,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(215,50,15,10,NULL,'present','2026-03-17 18:02:42','64'),(216,51,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(217,52,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(218,53,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(219,54,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(220,55,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(221,56,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(222,57,15,10,NULL,'absent','2026-03-17 18:02:58','64'),(223,16,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(224,17,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(225,18,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(226,19,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(227,20,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(228,21,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(229,22,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(230,23,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(231,24,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(232,25,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(233,26,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(234,27,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(235,28,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(236,29,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(237,30,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(238,31,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(239,32,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(240,33,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(241,34,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(242,35,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(243,36,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(244,37,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(245,38,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(246,39,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(247,40,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(248,41,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(249,42,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(250,43,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(251,44,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(252,45,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(253,46,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(254,47,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(255,48,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(256,49,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(257,50,15,10,NULL,'present','2026-03-17 18:08:50','64'),(258,51,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(259,52,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(260,53,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(261,54,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(262,55,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(263,56,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(264,57,15,10,NULL,'absent','2026-03-17 18:09:01','64'),(265,16,15,10,NULL,'present','2026-03-17 18:22:25','64'),(266,17,15,10,NULL,'present','2026-03-17 18:22:25','64'),(267,18,15,10,NULL,'present','2026-03-17 18:22:25','64'),(268,19,15,10,NULL,'present','2026-03-17 18:22:25','64'),(269,20,15,10,NULL,'present','2026-03-17 18:22:25','64'),(270,21,15,10,NULL,'present','2026-03-17 18:22:25','64'),(271,22,15,10,NULL,'present','2026-03-17 18:22:25','64'),(272,23,15,10,NULL,'present','2026-03-17 18:22:25','64'),(273,24,15,10,NULL,'present','2026-03-17 18:22:25','64'),(274,25,15,10,NULL,'present','2026-03-17 18:22:25','64'),(275,26,15,10,NULL,'present','2026-03-17 18:22:25','64'),(276,27,15,10,NULL,'present','2026-03-17 18:22:25','64'),(277,28,15,10,NULL,'present','2026-03-17 18:22:25','64'),(278,29,15,10,NULL,'present','2026-03-17 18:22:25','64'),(279,30,15,10,NULL,'present','2026-03-17 18:22:25','64'),(280,31,15,10,NULL,'present','2026-03-17 18:22:25','64'),(281,32,15,10,NULL,'present','2026-03-17 18:22:25','64'),(282,33,15,10,NULL,'present','2026-03-17 18:22:25','64'),(283,34,15,10,NULL,'present','2026-03-17 18:22:25','64'),(284,35,15,10,NULL,'present','2026-03-17 18:22:25','64'),(285,36,15,10,NULL,'present','2026-03-17 18:22:25','64'),(286,37,15,10,NULL,'present','2026-03-17 18:22:25','64'),(287,38,15,10,NULL,'present','2026-03-17 18:22:25','64'),(288,39,15,10,NULL,'present','2026-03-17 18:22:25','64'),(289,40,15,10,NULL,'present','2026-03-17 18:22:25','64'),(290,41,15,10,NULL,'present','2026-03-17 18:22:25','64'),(291,42,15,10,NULL,'present','2026-03-17 18:22:25','64'),(292,43,15,10,NULL,'present','2026-03-17 18:22:25','64'),(293,44,15,10,NULL,'present','2026-03-17 18:22:25','64'),(294,45,15,10,NULL,'present','2026-03-17 18:22:25','64'),(295,46,15,10,NULL,'present','2026-03-17 18:22:25','64'),(296,47,15,10,NULL,'present','2026-03-17 18:22:25','64'),(297,48,15,10,NULL,'present','2026-03-17 18:22:25','64'),(298,49,15,10,NULL,'present','2026-03-17 18:22:25','64'),(299,50,15,10,NULL,'present','2026-03-17 18:21:58','64'),(300,51,15,10,NULL,'present','2026-03-17 18:22:25','64'),(301,52,15,10,NULL,'present','2026-03-17 18:22:25','64'),(302,53,15,10,NULL,'present','2026-03-17 18:22:25','64'),(303,54,15,10,NULL,'present','2026-03-17 18:22:25','64'),(304,55,15,10,NULL,'present','2026-03-17 18:22:25','64'),(305,56,15,10,NULL,'present','2026-03-17 18:22:25','64'),(306,57,15,10,NULL,'present','2026-03-17 18:22:25','64');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(20) NOT NULL,
  `building` varchar(100) DEFAULT NULL,
  `room_number` varchar(50) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `geo_radius` int DEFAULT '100',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'Computer Lab 1','LAB101','Building A','Room 101',8.52410000,76.93660000,100,'2026-01-23 17:16:44'),(2,'Computer Lab 2','LAB102','Building A','Room 102',8.52420000,76.93670000,100,'2026-01-23 17:16:44'),(3,'Physics Lab','PLAB201','Building B','Room 201',8.52430000,76.93680000,100,'2026-01-23 17:16:44'),(4,'Classroom 301','CLS301','Building C','Room 301',8.52440000,76.93690000,100,'2026-01-23 17:16:44'),(10,'Jos home','Jos','Jos','123445',10.53215390,76.23650800,10,'2026-03-17 17:22:56');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(20) NOT NULL,
  `program_type` enum('UG','PG') NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Computer Science','CS','UG','2026-01-23 17:16:44'),(2,'Physics','PHY','UG','2026-01-23 17:16:44'),(3,' BSc.Chemistry','CHEM','UG','2026-01-23 17:16:44'),(4,'Mathematics','MATH','UG','2026-01-23 17:16:44'),(5,'Computer Science','CS','PG','2026-01-23 17:16:44'),(6,'Physics','PHY','PG','2026-01-23 17:16:44'),(12,'Mathematics','MATH','PG','2026-03-17 16:30:24'),(14,'Chemistry','CHEM','PG','2026-03-17 16:30:24');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_subscriptions`
--

DROP TABLE IF EXISTS `push_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_subscriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `subscription` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user` (`user_id`),
  CONSTRAINT `push_sub_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_subscriptions`
--

LOCK TABLES `push_subscriptions` WRITE;
/*!40000 ALTER TABLE `push_subscriptions` DISABLE KEYS */;
INSERT INTO `push_subscriptions` VALUES (1,64,'{\"endpoint\":\"https://wns2-pn1p.notify.windows.com/w/?token=BQYAAAD1wf27dwi89yCeR3K8n6%2bEKSEhUYdP9cGNlBtlzDPtXXukBS4oy1HHnNwiJLaLEDYH0GILDmKNzcykRvsiR81QL1wjbK1P0OFaCAy%2bGWAr6dA%2f7zxj1yV1nzPNivDSh3%2fV6uMQOmxG1NFRl4HXgPf8MbT4V2BMU25u5X24tfzrn4SiWxfI9jxWjldE%2bLC5uV57QgTKL9r0aSgvah7fqsarD8ChkCUlIjZNGu1%2bmYJicxfGNNfYXPyjOXyzIgfO4UUSwD8Xke3apfoo8Ztmoz9xzp2xirvYXYlUVKUEhq2a83pZpV3VCSiOdkPnmEsZECeSjP8yswfVeTH5MtEjfgXBHsDyNY%2bD5%2bARcrcO1X%2bn2Q%3d%3d\",\"expirationTime\":null,\"keys\":{\"p256dh\":\"BKZCPatCT3E5a9FVna-egK_NfsKTlkGzPycujL9pn9ApzR9PXQ1KPEghhptFa-Weyt8uS-S_Z3-HHFBsHanL60Q\",\"auth\":\"i7nLbOixulLCWx5samnhHg\"}}','2026-03-17 18:02:20','2026-03-17 18:21:24'),(2,50,'{\"endpoint\":\"https://fcm.googleapis.com/fcm/send/fcCPIIVb2Fs:APA91bGHNcJUVhV1ntiljHa_NiTU9KvHzkh1QdH_uUum3XXdyipIXs5OmMGyNVCXr2HH-COZXwVnBMTVUENCMUOx0ZwiwCFnvnmqJR9Rlt-R5wZgDc8TFlVGuEYzIZnSzI4G2aWNd-tM\",\"expirationTime\":null,\"keys\":{\"p256dh\":\"BDBMLp0VaQb3xvATJNQJ5Bfk2l8cu5STBS6xXf-dJn0uMnhaL3wzC0cZUnpZvsa31c57xZ2bwdYBCuanwX5BfVE\",\"auth\":\"Lo4ol4oP5nQSZidHhtQZgQ\"}}','2026-03-17 18:02:40','2026-03-17 18:21:58');
/*!40000 ALTER TABLE `push_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(20) NOT NULL,
  `department_id` int NOT NULL,
  `semester` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (13,'Operating Systems','BCS6B12',1,6,'2026-03-17 16:31:24'),(14,'Computer Networks','BCS6B13',1,6,'2026-03-17 16:31:24'),(15,'Android Programming','BCS6B11',1,6,'2026-03-17 16:31:24'),(16,'Machine Learning','BCS6B16',1,6,'2026-03-17 16:31:24'),(17,'PROGRAMMING LABORATORY - IV: ANDROID AND LINUX SHELL PROGRAMMING','BCS6B15',1,6,'2026-03-17 16:31:24'),(18,'PROGRAMMING LABORATORY - III: JAVA AND PHP PROGRAMMING','BCS6B14',1,6,'2026-03-17 16:31:24');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_default_classes`
--

DROP TABLE IF EXISTS `teacher_default_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_default_classes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `class_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_teacher_subject_class` (`teacher_id`,`subject_id`),
  KEY `subject_id` (`subject_id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `teacher_default_classes_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `teacher_default_classes_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `teacher_default_classes_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_default_classes`
--

LOCK TABLES `teacher_default_classes` WRITE;
/*!40000 ALTER TABLE `teacher_default_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_default_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_subjects`
--

DROP TABLE IF EXISTS `teacher_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_teacher_subject` (`teacher_id`,`subject_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `teacher_subjects_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `teacher_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_subjects`
--

LOCK TABLES `teacher_subjects` WRITE;
/*!40000 ALTER TABLE `teacher_subjects` DISABLE KEYS */;
INSERT INTO `teacher_subjects` VALUES (19,64,15,'2026-03-17 17:13:46'),(20,61,14,'2026-03-17 17:14:04'),(21,66,16,'2026-03-17 17:14:16'),(22,65,13,'2026-03-17 17:14:34'),(23,64,18,'2026-03-17 17:14:58'),(24,65,18,'2026-03-17 17:14:58'),(25,64,17,'2026-03-17 17:15:07'),(26,65,17,'2026-03-17 17:15:07');
/*!40000 ALTER TABLE `teacher_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `roll_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `role` enum('admin','student','teacher') NOT NULL,
  `department_id` int DEFAULT NULL,
  `semester` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `status` varchar(20) DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `roll_number` (`roll_number`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','pass','Admin User',NULL,NULL,'admin',NULL,NULL,NULL,'active','2026-01-23 17:16:44'),(2,'teacher','pass','Prof. John Smith',NULL,NULL,'teacher',4,NULL,NULL,'active','2026-01-23 17:16:44'),(3,'teacher2','pass','Dr. Sarah Johnson',NULL,NULL,'teacher',2,NULL,NULL,'active','2026-01-23 17:16:44'),(4,'teacher3','pass','Prof. Mike Davis',NULL,NULL,'teacher',14,NULL,NULL,'active','2026-01-23 17:16:44'),(16,'ansala','ansala123','ANSALA SAJEEV','CS2023001',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(17,'ashly','ashly123','ASHLY MARIA SIBY','CS2023002',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(18,'aswathy','aswathy123','ASWATHY P A','CS2023003',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(19,'christy','christy123','CHRISTY XAVIER','CS2023004',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(20,'gopika','gopika123','GOPIKA S','CS2023005',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(21,'gouri','gouri123','GOURI RAJ','CS2023006',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(22,'krishnaja','krishnaja123','KRISHNAJA.G','CS2023007',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(23,'navya','navya123','NAVYA T','CS2023008',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(24,'abhinav','abhinav123','ABHINAVKRISHNA K A','CS2023009',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(25,'adhwaidh','adhwaidh123','ADHWAIDH K NAIR','CS2023010',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(26,'ashin','ashin123','ASHIN BABU','CS2023011',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(27,'delvin','delvin123','DELVIN SUNNY','CS2023012',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(28,'effrin','effrin123','EFFRIN JOFFRIN','CS2023013',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(29,'hari','hari123','HARIKUMAR P R','CS2023014',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(30,'joel','joel123','JOEL JOHNSON MULLORE','CS2023015',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(31,'kailas ','kailas 123','KAILAS NATH M','CS2023016',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(32,'mithul ','mithul 123','MITHUL KRISHNA P R','CS2023017',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(33,'rinson','rinson123','RINSON THOMAS','CS2023019',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(34,'sanju','sanju123','SANJU BAIJU','CS2023020',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(35,'shinoj ','shinoj 123','SHINOJ C S','CS2023021',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(36,'soorya','soorya123','SOORYATHEJ K L','CS2023022',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(37,'vivek','vivek123','VIVEK P D','CS2023023',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(38,'yadhu','yadhu123','YADHU KRISHNAN N S','CS2023024',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(39,'akshaya','akshaya123','AKSHAYA T S','CS2023025',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(40,'anitha ','anitha 123','ANITHA BABU P','CS2023026',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(41,'flora','flora123','FLORA MARIA JOEMON','CS2023027',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(42,'gemma','gemma123','GEMMA MARIA RAPHY','CS2023028',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(43,'harsha','harsha123','HARSHA BYJU','CS2023029',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(44,'thanseeha','thanseeha123','THANSEEHA E H','CS2023030',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(45,'abel','abel123','ABEL C.S','CS2023031',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(46,'akshay ','akshay 123','AKSHAY T VIJI','CS2023032',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(47,'alet','alet123','ALET JOHNY','CS2023033',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(48,'amith','amith123','AMITH SABU RAJ','CS2023034',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(49,'elvin','elvin123','ELVIN JOSEPH','CS2023035',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(50,'jos','jos123','JOS MARTIN','CS2023036',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(51,'kevin','kevin123','KEVIN RAJU','CS2023037',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(52,'litto','litto123','LITTO JIMMY','CS2023038',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(53,'rijo','rijo123','RIJO JOSEPH','CS2023039',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(54,'roshan ','roshan 123','ROSHAN E R','CS2023040',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(55,'sayooj ','sayooj 123','SAYOOJ C S','CS2023041',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(56,'shine','shine123','SHINE SHAJU','CS2023042',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(57,'vishnu','vishnu123','VISHNU M  ','CS2023043',NULL,'student',1,6,3,'active','2026-03-17 16:37:32'),(58,'jiju','jiju123','Dr. Jiju A.  Mathew',NULL,NULL,'teacher',5,NULL,NULL,'active','2026-03-17 16:49:06'),(59,'rameela','rameela123','Mrs. Rameela Ravindran K',NULL,NULL,'teacher',5,NULL,NULL,'active','2026-03-17 16:50:03'),(60,'sunil','sunil123','Dr. Sunil Sunny Chalakkal',NULL,NULL,'teacher',5,NULL,NULL,'active','2026-03-17 16:50:43'),(61,'anil','anil123','Dr. Fr. Anil George K CMI',NULL,NULL,'teacher',1,NULL,NULL,'active','2026-03-17 16:51:31'),(62,'johnpaul','johnpaul123','Dr. Johnpaul C. I.',NULL,NULL,'teacher',5,NULL,NULL,'active','2026-03-17 16:52:20'),(63,'roshni','roshni123','Ms. Roshni Varghese',NULL,NULL,'teacher',5,NULL,NULL,'active','2026-03-17 16:53:29'),(64,'sijojose','sijo123','Mr. Sijo Jose',NULL,NULL,'teacher',1,NULL,NULL,'active','2026-03-17 16:54:12'),(65,'maidhili','maidhili123','Ms. Maidhili Mohan K.',NULL,NULL,'teacher',1,NULL,NULL,'active','2026-03-17 16:55:12'),(66,'dhanya','dhanya123','Ms. Dhanya Anto',NULL,NULL,'teacher',1,NULL,NULL,'active','2026-03-17 16:55:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-18  0:03:02
