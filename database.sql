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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,8,6,9,NULL,'present','2026-03-10 20:31:56','12'),(2,9,6,9,NULL,'present','2026-03-10 20:34:05','12'),(3,10,6,9,NULL,'present','2026-03-10 20:34:05','12'),(4,11,6,9,NULL,'present','2026-03-10 20:34:05','12'),(5,8,6,2,NULL,'absent','2026-03-10 20:34:58','12'),(6,9,6,2,NULL,'absent','2026-03-10 20:34:58','12'),(7,10,6,2,NULL,'absent','2026-03-10 20:34:58','12'),(8,11,6,2,NULL,'absent','2026-03-10 20:34:58','12'),(9,8,8,9,NULL,'present','2026-03-10 20:38:45','14'),(10,9,8,9,NULL,'absent','2026-03-10 20:38:49','14'),(11,10,8,9,NULL,'absent','2026-03-10 20:38:49','14'),(12,11,8,9,NULL,'absent','2026-03-10 20:38:49','14');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'Computer Lab 1','LAB101','Building A','Room 101',8.52410000,76.93660000,100,'2026-01-23 17:16:44'),(2,'Computer Lab 2','LAB102','Building A','Room 102',8.52420000,76.93670000,100,'2026-01-23 17:16:44'),(3,'Physics Lab','PLAB201','Building B','Room 201',8.52430000,76.93680000,100,'2026-01-23 17:16:44'),(4,'Classroom 301','CLS301','Building C','Room 301',8.52440000,76.93690000,100,'2026-01-23 17:16:44'),(5,'vuu','l','fewf','ew',10.53221120,76.23699550,2,'2026-01-23 17:28:27'),(6,'cs','ac121','palocaran','121',10.52348400,76.21937500,100,'2026-02-06 04:25:57'),(7,'ac21','cs','palocaren squareac121','AC123',10.52342950,76.21937900,100,'2026-02-06 10:23:11'),(8,'jos','j','gutf','dr',10.53203340,76.23666430,100,'2026-02-09 16:49:35'),(9,'frtgrrth','thhthy','htyth','1234',10.53196100,76.23651100,10,'2026-03-10 18:05:42');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Computer Science','CS','UG','2026-01-23 17:16:44'),(2,'Physics','PHY','UG','2026-01-23 17:16:44'),(3,' BSc.Chemistry','CHEM','UG','2026-01-23 17:16:44'),(4,'Mathematics','MATH','UG','2026-01-23 17:16:44'),(5,'Computer Science','CS','PG','2026-01-23 17:16:44'),(6,'Physics','PHY','PG','2026-01-23 17:16:44');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (5,'machine learning','CS201',1,6,'2026-01-23 17:22:27'),(6,'android programming','CS301',1,6,'2026-01-23 17:22:27'),(7,'operating Systems','CS202',1,6,'2026-01-23 17:22:27'),(8,'Computer Networks','CS401',1,6,'2026-01-23 17:22:27');
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
INSERT INTO `teacher_default_classes` VALUES (1,12,6,9,'2026-03-10 19:01:57'),(20,14,8,9,'2026-03-10 20:37:08');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_subjects`
--

LOCK TABLES `teacher_subjects` WRITE;
/*!40000 ALTER TABLE `teacher_subjects` DISABLE KEYS */;
INSERT INTO `teacher_subjects` VALUES (7,13,5,'2026-01-23 17:23:45'),(8,15,7,'2026-01-23 17:23:51'),(17,12,6,'2026-03-10 20:00:37'),(18,14,8,'2026-03-10 20:37:08');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','pass','Admin User',NULL,NULL,'admin',NULL,NULL,NULL,'active','2026-01-23 17:16:44'),(2,'teacher','pass','Prof. John Smith',NULL,NULL,'teacher',1,NULL,NULL,'active','2026-01-23 17:16:44'),(3,'teacher2','pass','Dr. Sarah Johnson',NULL,NULL,'teacher',2,NULL,NULL,'active','2026-01-23 17:16:44'),(4,'teacher3','pass','Prof. Mike Davis',NULL,NULL,'teacher',5,NULL,NULL,'active','2026-01-23 17:16:44'),(5,'student','pass','John Doe','CSUG101',NULL,'student',1,1,1,'active','2026-01-23 17:16:44'),(6,'student2','pass','Jane Smith','CSUG102',NULL,'student',1,1,1,'active','2026-01-23 17:16:44'),(7,'student3','pass','Bob Wilson','PHYUG201',NULL,'student',2,3,2,'active','2026-01-23 17:16:44'),(8,'jos','jos','jos martin','CS2023001',NULL,'student',1,6,3,'active','2026-01-23 17:17:29'),(9,'flora','flora','flora','CS2023002',NULL,'student',1,6,3,'active','2026-01-23 17:17:29'),(10,'akshay','akshay','akshay','CS2023003',NULL,'student',1,6,3,'active','2026-01-23 17:17:29'),(11,'thanseeha','thanseeha','thanseeha','CS2023004',NULL,'student',1,6,3,'active','2026-01-23 17:17:29'),(12,'sijo','sijo','sijo',NULL,NULL,'teacher',1,NULL,NULL,'active','2026-01-23 17:17:29'),(13,'dhanya','dhanya','dhanya',NULL,NULL,'teacher',1,NULL,NULL,'active','2026-01-23 17:17:29'),(14,'anil','anil','anil',NULL,NULL,'teacher',1,NULL,NULL,'active','2026-01-23 17:17:29'),(15,'maidhili','maidhili','maidhili',NULL,NULL,'teacher',1,NULL,NULL,'active','2026-01-23 17:17:29');
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

-- Dump completed on 2026-03-11  2:12:17
