-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: finlove
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `blocked_chats`
--

DROP TABLE IF EXISTS `blocked_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocked_chats` (
  `blockID` int NOT NULL AUTO_INCREMENT,
  `user1ID` int NOT NULL,
  `user2ID` int DEFAULT NULL,
  `matchID` int NOT NULL,
  `isBlocked` tinyint(1) DEFAULT '1',
  `blockTimestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`blockID`),
  KEY `user1ID` (`user1ID`),
  KEY `user2ID` (`user2ID`),
  KEY `matchID` (`matchID`),
  CONSTRAINT `blocked_chats_ibfk_1` FOREIGN KEY (`user1ID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `blocked_chats_ibfk_2` FOREIGN KEY (`user2ID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `blocked_chats_ibfk_3` FOREIGN KEY (`matchID`) REFERENCES `matches` (`matchID`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocked_chats`
--

LOCK TABLES `blocked_chats` WRITE;
/*!40000 ALTER TABLE `blocked_chats` DISABLE KEYS */;
INSERT INTO `blocked_chats` VALUES (121,126,125,27,1,'2024-10-28 15:16:31'),(122,119,128,28,0,'2024-10-28 17:05:27'),(123,129,119,30,0,'2024-10-29 15:36:27');
/*!40000 ALTER TABLE `blocked_chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chats` (
  `chatID` int NOT NULL AUTO_INCREMENT,
  `matchID` int NOT NULL,
  `senderID` int NOT NULL,
  `message` text NOT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastBackupTimestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`chatID`),
  KEY `matchID` (`matchID`),
  KEY `senderID` (`senderID`),
  CONSTRAINT `chats_ibfk_1` FOREIGN KEY (`matchID`) REFERENCES `matches` (`matchID`),
  CONSTRAINT `chats_ibfk_2` FOREIGN KEY (`senderID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (97,27,125,'hello','2024-10-28 15:14:15',NULL),(98,27,125,'my','2024-10-28 15:14:26',NULL),(99,27,125,'boo','2024-10-28 15:14:35',NULL),(100,27,126,'Hello jay','2024-10-28 15:15:14',NULL),(101,27,126,'ลอบ ชูบ ลีม บูม ไหม เจ้','2024-10-28 15:15:32',NULL),(102,27,126,'แลบอูบลมอมไหมคะเจ้ ทูเดย?','2024-10-28 15:15:55',NULL),(103,27,126,'แลบอู้บเลียวสู','2024-10-28 15:16:03',NULL),(104,28,119,'hello','2024-10-28 17:05:25',NULL),(105,28,128,'สวัสดีครับ','2024-10-28 17:05:26',NULL),(106,28,119,'d ค่ะ','2024-10-29 14:55:24',NULL),(107,30,129,'Dekub Fullll','2024-10-29 15:35:50',NULL),(108,30,119,'hi','2024-10-29 15:36:02',NULL),(109,30,129,'nong Sod a paol','2024-10-29 15:36:03',NULL),(110,30,129,'love u','2024-10-29 15:36:13',NULL),(111,30,129,'iwiwiwiwi','2024-10-29 15:36:18',NULL),(112,30,129,'<====O','2024-10-29 15:36:23',NULL),(113,30,129,'Sorry','2024-10-29 15:36:55',NULL),(114,30,119,'love u so','2024-10-29 15:37:06',NULL),(115,30,119,'Jeo','2024-10-31 13:30:27',NULL),(116,31,130,'Sawadee kaa','2025-05-30 13:33:43',NULL),(117,31,123,'de kabbb','2025-05-30 13:34:15',NULL),(118,31,123,'what is your name','2025-05-30 14:03:05',NULL),(119,31,123,'1','2025-05-30 14:03:11',NULL),(120,31,123,'2','2025-05-30 14:03:12',NULL),(121,31,123,'3','2025-05-30 14:03:13',NULL),(122,31,123,'4','2025-05-30 14:03:13',NULL),(123,31,123,'5','2025-05-30 14:03:14',NULL),(124,31,123,'6','2025-05-30 14:03:14',NULL),(125,31,123,'7','2025-05-30 14:03:15',NULL),(126,31,123,'8','2025-05-30 14:03:16',NULL),(127,31,123,'9','2025-05-30 14:03:16',NULL),(128,31,123,'10','2025-05-30 14:03:18',NULL),(129,31,123,'1','2025-05-30 14:03:19',NULL),(130,31,123,'12','2025-05-30 14:03:21',NULL),(131,31,130,'sad','2025-06-03 15:39:05',NULL),(132,31,123,'ho','2025-06-09 12:23:13',NULL),(133,31,123,'ที่นี่น่าสนใจดีนะ คุณอยากลองเดทกับฉันไหม?\n\n? ท้องฟ้าจำลอง\n? ท้องฟ้าจำลองเอกมัยหรือศูนย์วิทยาศาสตร์เพื่อการศึกษา เป็นหนึ่งในสถานที่ยอดฮิตพวกคุณสามารถมีเวลาที่ดีร่วมกันได้ที่นี่\n? พิกัด: ห่างจากคุณ 0.00 กม.','2025-06-21 16:15:27',NULL),(134,31,123,'ที่นี่น่าสนใจดีนะ คุณอยากลองเดทกับฉันไหม?\n\n? สวนเบญจกิตติ\n? เต็มไปด้วยธรรมชาติที่ร่มลื่นให้ความรู้สึกสงบและปลอดภัย พร้อมกิจกรรมมากมายที่ทำร่วมกันได้ เช่น ปั่นจักรยานและนั่งพูดคุย\n? พิกัด: ห่างจากคุณ 5.06 กม.','2025-06-21 16:15:46',NULL),(135,31,123,'ที่นี่น่าสนใจดีนะ คุณอยากลองเดทกับฉันไหม?\n\n? ท้องฟ้าจำลอง\n? ท้องฟ้าจำลองเอกมัยหรือศูนย์วิทยาศาสตร์เพื่อการศึกษา เป็นหนึ่งในสถานที่ยอดฮิตพวกคุณสามารถมีเวลาที่ดีร่วมกันได้ที่นี่\n? พิกัด: ห่างจากฉัน 0.00 กม.','2025-06-21 16:19:34',NULL),(136,31,123,'ที่นี่น่าสนใจดีนะ คุณอยากลองเดทกับฉันไหม?\n\n? ท้องฟ้าจำลอง\n? ท้องฟ้าจำลองเอกมัยหรือศูนย์วิทยาศาสตร์เพื่อการศึกษา เป็นหนึ่งในสถานที่ยอดฮิตพวกคุณสามารถมีเวลาที่ดีร่วมกันได้ที่นี่\n? พิกัด: ห่างจากฉัน 0.00 กม.','2025-06-21 19:39:14',NULL),(137,32,131,'1','2025-06-21 19:43:57',NULL),(138,32,131,'2','2025-06-21 19:44:01',NULL),(139,32,131,'3','2025-06-21 19:44:02',NULL),(140,32,131,'4','2025-06-21 19:44:03',NULL),(141,32,131,'5','2025-06-21 19:44:03',NULL),(142,32,131,'6','2025-06-21 19:44:04',NULL),(143,32,131,'7','2025-06-21 19:44:05',NULL),(144,32,131,'8','2025-06-21 19:44:05',NULL),(145,32,131,'9','2025-06-21 19:44:06',NULL),(146,32,131,'10','2025-06-21 19:44:08',NULL),(147,32,131,'11','2025-06-21 19:44:09',NULL),(148,32,131,'12','2025-06-21 19:44:10',NULL),(149,32,131,'13','2025-06-21 19:44:11',NULL),(150,32,131,'14','2025-06-21 19:44:12',NULL),(151,32,131,'15','2025-06-21 19:44:13',NULL),(152,32,131,'ที่นี่น่าสนใจดีนะ คุณอยากลองเดทกับฉันไหม?\n\n? ท้องฟ้าจำลอง\n? ท้องฟ้าจำลองเอกมัยหรือศูนย์วิทยาศาสตร์เพื่อการศึกษา เป็นหนึ่งในสถานที่ยอดฮิตพวกคุณสามารถมีเวลาที่ดีร่วมกันได้ที่นี่\n? พิกัด: ห่างจากฉัน 0.00 กม.','2025-06-21 19:44:24',NULL),(153,32,123,'ที่นี่น่าสนใจดีนะ คุณอยากลองเดทกับฉันไหม?\n\n? ท้องฟ้าจำลอง\n? ท้องฟ้าจำลองเอกมัยหรือศูนย์วิทยาศาสตร์เพื่อการศึกษา เป็นหนึ่งในสถานที่ยอดฮิตพวกคุณสามารถมีเวลาที่ดีร่วมกันได้ที่นี่\n? พิกัด: ห่างจากฉัน 0.00 กม.','2025-06-27 12:04:50',NULL),(154,32,123,'ที่นี่น่าสนใจดีนะ คุณอยากลองเดทกับฉันไหม?\n\n? ท้องฟ้าจำลอง\n? ท้องฟ้าจำลองเอกมัยหรือศูนย์วิทยาศาสตร์เพื่อการศึกษา เป็นหนึ่งในสถานที่ยอดฮิตพวกคุณสามารถมีเวลาที่ดีร่วมกันได้ที่นี่\n? พิกัด: ห่างจากฉัน 0.00 กม.','2025-06-27 12:35:23',NULL);
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deleted_chats`
--

DROP TABLE IF EXISTS `deleted_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deleted_chats` (
  `deleteID` int NOT NULL AUTO_INCREMENT,
  `userID` int DEFAULT NULL,
  `matchID` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `deleteTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`deleteID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleted_chats`
--

LOCK TABLES `deleted_chats` WRITE;
/*!40000 ALTER TABLE `deleted_chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `deleted_chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `educationID` int NOT NULL AUTO_INCREMENT,
  `EducationName` varchar(255) NOT NULL,
  PRIMARY KEY (`educationID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,'มัธยมศึกษา'),(2,'ปริญญาตรี'),(3,'ปริญญาโท'),(4,'ปริญญาเอก'),(5,'กำลังทำงาน');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `empID` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `phonenumber` char(10) DEFAULT NULL,
  `gender` tinyint DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `imageFile` varchar(100) DEFAULT NULL,
  `positionID` tinyint DEFAULT NULL,
  `loginAttempt` tinyint DEFAULT '0',
  `lastAttemptTime` datetime DEFAULT NULL,
  `isActive` tinyint DEFAULT '1',
  PRIMARY KEY (`empID`),
  UNIQUE KEY `username` (`username`),
  KEY `positionID` (`positionID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`positionID`) REFERENCES `position` (`positionID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (2,'ปริญ','วรกมล','0898763723',1,'parin@hotmail.com','admin','$2b$12$wyVTHmMTyd2NZ6cz9heMcezolwQR7LSQcXrRpu1zYHbejRvJrjI5u','img2.png',1,0,NULL,1),(3,'สมชาย','หารณรงค์','0862134496',1,'somchai@gmail.com','ant','$2a$10$9PA9zeFRXx1U1zSnhODMw..X87PmIqN8axlC6JaP0fhxEO8OYN3Ti','img3.jpg',2,0,NULL,1),(4,'กาญจนา','กิ่งแก้ว','0868927364',1,'karnjana@gmail.com','karnjana','$2a$10$9PA9zeFRXx1U1zSnhODMw..X87PmIqN8axlC6JaP0fhxEO8OYN3Ti','img4.jpg',2,0,NULL,1),(5,'ขนิษฐา','กองแก้ว','0893524367',1,'khanitha@hotmail.com','khanitha','$2a$10$9PA9zeFRXx1U1zSnhODMw..X87PmIqN8axlC6JaP0fhxEO8OYN3Ti','1729529584219-wp9463344-loki-and-sylvie-wallpapers.jpg',2,0,NULL,1),(6,'พิเชษ','เจตจำนงค์','0896789076',1,'pichet@hotmail.com','pichet','$2a$10$9PA9zeFRXx1U1zSnhODMw..X87PmIqN8axlC6JaP0fhxEO8OYN3Ti','img6.jpg',2,0,NULL,1),(7,'นิดา','แสนสุข','0897658261',1,'nida@gmail.com','nida','$2a$10$9PA9zeFRXx1U1zSnhODMw..X87PmIqN8axlC6JaP0fhxEO8OYN3Ti','img7.jpg',2,0,NULL,1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `GenderID` int NOT NULL AUTO_INCREMENT,
  `Gender_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`GenderID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Male'),(2,'Female'),(3,'Other');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal`
--

DROP TABLE IF EXISTS `goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goal` (
  `goalID` int NOT NULL AUTO_INCREMENT,
  `goalName` varchar(255) NOT NULL,
  PRIMARY KEY (`goalID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal`
--

LOCK TABLES `goal` WRITE;
/*!40000 ALTER TABLE `goal` DISABLE KEYS */;
INSERT INTO `goal` VALUES (1,'หาคู่รักที่จริงใจ'),(2,'หาคู่เดทช่วงสั้นๆ'),(3,'หาเพื่อนใหม่'),(4,'ยังไม่แน่ใจ');
/*!40000 ALTER TABLE `goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interestgender`
--

DROP TABLE IF EXISTS `interestgender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interestgender` (
  `interestGenderID` int NOT NULL AUTO_INCREMENT,
  `interestGenderName` varchar(255) NOT NULL,
  PRIMARY KEY (`interestGenderID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interestgender`
--

LOCK TABLES `interestgender` WRITE;
/*!40000 ALTER TABLE `interestgender` DISABLE KEYS */;
INSERT INTO `interestgender` VALUES (1,'Male'),(2,'Female'),(3,'Other');
/*!40000 ALTER TABLE `interestgender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matches` (
  `matchID` int NOT NULL AUTO_INCREMENT,
  `user1ID` int NOT NULL,
  `user2ID` int NOT NULL,
  `matchDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `isBlocked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`matchID`),
  KEY `fk_user1` (`user1ID`),
  KEY `fk_user2` (`user2ID`),
  CONSTRAINT `fk_user1` FOREIGN KEY (`user1ID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `fk_user2` FOREIGN KEY (`user2ID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES (27,125,126,'2024-10-28 15:13:46',0),(28,119,128,'2024-10-28 17:05:12',0),(29,120,119,'2024-10-29 07:45:59',0),(30,119,129,'2024-10-29 15:32:50',0),(31,130,123,'2025-05-30 13:33:13',0),(32,123,131,'2025-06-21 19:41:16',0),(33,132,131,'2025-06-26 13:03:06',0),(34,130,133,'2025-06-26 13:13:22',0);
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `image_url` varchar(500) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (5,'ท้องฟ้าจำลอง','ห้องฟ้าจำลองเอกมัย หรือศูนย์วิทยาศาสตร์เพื่อการศึกษา เป็นหนึ่งในสถานที่ยอดฮิต่พวกคุณสามารถมีเวลาที่ดีร่วมกันได้ที่นี่','skyroom_pic.jpg','928ถนนสุขมวิท, กรุงเทพมหานคร 10110',13.719688,100.582909),(6,'สวนเบญจกิตติ','เต็มไปด้วยธรรมชาติที่ร่มลื่นให้ความรู้สึกสงบและปลอดภัย พร้อมกิจกรรมมากมายที่ทำร่วมกันได้ เช่น ปั่นจักรยานและนั่งพูดคุย','Benjakitti-Park_pic.jpg','ถนนรัชดาภิเษก, กรุงเทพมหานคร 10110',13.729498,100.558479);
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `positionID` tinyint NOT NULL,
  `positionName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`positionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Admin'),(2,'Employee');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferences`
--

DROP TABLE IF EXISTS `preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferences` (
  `PreferenceID` int NOT NULL AUTO_INCREMENT,
  `PreferenceNames` varchar(255) NOT NULL,
  PRIMARY KEY (`PreferenceID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferences`
--

LOCK TABLES `preferences` WRITE;
/*!40000 ALTER TABLE `preferences` DISABLE KEYS */;
INSERT INTO `preferences` VALUES (1,'ฟุตบอล'),(2,'ภาพยนตร์'),(3,'ท่องเที่ยว'),(4,'อนิเมชั่น'),(5,'ช็อปปิ้ง'),(6,'เล่นดนตรี'),(7,'เล่นกีฬา'),(8,'เล่นเกม'),(9,'อ่านหนังสือ'),(10,'ปาร์ตี้'),(11,'สายควัน'),(12,'ออกกำลังกาย'),(13,'ตกปลา'),(14,'รักสัตว์'),(15,'ของหวาน'),(16,'ถ่ายรูป');
/*!40000 ALTER TABLE `preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `reportID` int NOT NULL,
  `reportType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`reportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,'ก่อกวน/ปั่นป่วน'),(2,'ไม่ตอบสนอง'),(3,'ข้อมูลเท็จ');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `nickname` varchar(15) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phonenumber` varchar(10) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `home` varchar(255) DEFAULT NULL,
  `DateBirth` date DEFAULT NULL,
  `imageFile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `GenderID` int DEFAULT NULL,
  `educationID` int DEFAULT NULL,
  `goalID` int DEFAULT NULL,
  `interestGenderID` int DEFAULT NULL,
  `loginAttempt` tinyint NOT NULL DEFAULT '0',
  `lastAttemptTime` timestamp NULL DEFAULT NULL,
  `pinCode` varchar(10) DEFAULT NULL,
  `pinCodeExpiration` datetime DEFAULT NULL,
  `isActive` tinyint DEFAULT '1',
  `verify` tinyint DEFAULT '0',
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserID_UNIQUE` (`UserID`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `educationID` (`educationID`),
  KEY `goalID` (`goalID`),
  KEY `interestGenderID` (`interestGenderID`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`educationID`) REFERENCES `education` (`educationID`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`goalID`) REFERENCES `goal` (`goalID`),
  CONSTRAINT `user_ibfk_4` FOREIGN KEY (`interestGenderID`) REFERENCES `interestgender` (`interestGenderID`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (119,'ant','$2b$10$xF72PfFkIf1r4foNIFpWDe8zKj1aIIHuCYxbhxsv8j85ZmIGMr5Jq','Methaporn','Limrostham','AnT','pedza507@gmail.com','0642727318',180,'bangkok','2003-10-06','image8671668793612128899.jpg',1,2,1,2,0,'2025-06-11 08:45:27',NULL,NULL,1,1,NULL,NULL),(120,'Flukey','$2b$10$lgaIMdviz9UPYtR2ro8ajuIqyhqah6aFXPHnmHnrJXeLECMJGjDCe','ทนชัย','บัวรง','ฟลัก','thanachai.bua@rmutto.ac.th','0896586458',199,'บ้าน','2004-10-25','d91dfab9-0ac0-4254-a400-79a5b257662d.jpg',3,2,1,2,0,'2025-05-30 06:30:44',NULL,NULL,1,1,NULL,NULL),(121,'new','$2b$10$jfjqIDUtTTPqH3vf731ADeYLdwPAXaS0VOfHMYUyzmJCKKfdQG26.','ธวัชชัย','กรีเวก','นิว','tawatchai.kee@rmutto.ac.th','0922732903',175,'ลาดพร้าว63','2004-04-05','image7000707563503606090.jpg',1,2,3,2,2,'2025-06-05 06:19:15',NULL,NULL,1,0,NULL,NULL),(122,'mark','$2b$10$r9/Zfxa07c/k3tA1KXR6bOqLliE7Q/eEFejmHXJxvyZcaworsMBiK','สิทธินนท์','สิงห์พะเนา','มาร์ค','sittinon.sin@rmutto.ac.th','0999463125',175,'ลาดพร้าว','2003-12-11','052fad33-ff4c-4120-971d-444a07fe0ffa.jpg',1,2,4,2,0,'2025-06-05 06:19:36',NULL,NULL,1,0,NULL,NULL),(123,'beamdota','$2b$10$p07TiELppYG2Yfi7sLbCh.pjnl4ydaLXtKahszlthA62stcI9gO66','vorrapat','kobsinkha','b_heeeeem','9beamdota@gmail.com','0855240541',171,'78 bankok','2004-07-07','image2488230466155421622.jpg',1,2,1,2,0,'2025-07-09 09:21:44',NULL,NULL,1,0,NULL,NULL),(124,'first','$2b$10$ZeLYhpWNCj6dFTDu5pX/Wu6HnhpTIYNOjjktiE19GGBshpUmZhNXu','Ananchai','Kamtom','first','frist519@gmail.com','0649083637',171,'54/101','2002-01-19','image3578457392566033464.jpg',1,2,3,2,0,NULL,NULL,NULL,1,0,NULL,NULL),(125,'yammy','$2b$10$PNq2C3TGdFXBQfXiGdO.bOMAT7zBYVl78GwoRzFP4GTRq2CWToXoK','ralinthip','sakunain','yam','yam17.tuesday@gmail.com','0834526953',153,'ราชมงคล','2004-02-03','image3184228084906191281.jpg',2,2,3,2,1,'2025-05-30 06:30:34',NULL,NULL,1,0,NULL,NULL),(126,'Alxne','$2b$10$9MoUFpFhIXgRjsJP91E2WO6L798G2gH74hUSF8fWsiG2RgufwnLyO','Alxne','Dekdee','Alxne','suttipong.poo@rmutto.ac.th','0639542700',175,'กทม','2004-05-22','image7423651299233763588.jpg',3,2,2,1,0,'2024-10-28 08:15:04',NULL,NULL,1,0,NULL,NULL),(127,'toey','$2b$10$RQ3aSOZcWZ5Pm6DbkbMHnODTsBbSfAAB8P5jW/wymInGa5uQPY57C','Thanon','Srisukarn','Toey','teeprakorn@fff.com','0855111711',900,'Bangkok','1971-10-28','image7663523415649047225.jpg',2,3,1,1,3,'2025-06-05 06:19:53',NULL,NULL,1,0,NULL,NULL),(128,'kittipob','$2b$10$YvWnr1e85A58rahL0vZ6CeFaRJLlxacw40B3Wjdxq0B8dKIrVpcJa','kittipob','jirapanichakul','nack','kittipob242@gmail.com','0800262835',187,'rmutto','2003-09-22','17b6689f-4501-48ef-8ca3-c2faba18453c.jpg',1,2,3,2,0,'2024-10-28 10:04:25',NULL,NULL,1,1,NULL,NULL),(129,'wmmyo123','$2b$10$s9okBbtH1hPbNjzzJvoRVO3OxSFXQScvCu6j1yxPcihohcdZLsBJC','Jiratikarn','Prisricram','Dodo','wmmyo123@gmail.com','0958884525',175,'219 Phathum Tanee','2003-12-07','image6929627347264205590.jpg',1,2,4,2,1,'2024-10-29 08:42:49',NULL,NULL,1,0,NULL,NULL),(130,'test','$2b$10$YwPI1VprmxQih4C2gNj3tOLISy1NYX79UHyyX5GKOwmyUpZF9wKiu','Aina_na','(:','Aina_na','beamdotaha@gmail.com','0928272281',168,'no','2003-05-15','ebfbaf5a-b53b-4fa7-a439-2abd2f47f09a.jpg',2,2,1,1,0,'2025-07-09 09:26:52',NULL,NULL,1,0,NULL,NULL),(131,'paopao','$2b$10$tmkIk9/6GHNzUpQiLVn0.OiFNS8H6K12LFK760wIIHgNTe5ITWeku','nicha','maibok','paopao','ppao5217@gmail.com','0872668186',162,'krugthep','2005-06-07','image8661692173081748797.jpg',2,2,1,1,0,'2025-06-27 04:53:33',NULL,NULL,1,0,NULL,NULL),(132,'Akapol','$2b$10$6gluf6lXHjlI0ANRNt9qau5WWFw6OCd4UWdSWrN6KAmU9F0TMTFPC','Akapol','Suksena','Pol_pipi','Akapolpipi@gmail.com','0852671762',171,'Pinklao','2003-05-12','image4642179817235686307.jpg',1,2,1,2,0,'2025-06-26 06:03:02',NULL,NULL,1,0,NULL,NULL),(133,'basmono','$2b$10$WwFdpl0jibzL7KQwgtswa.UAhyicGgoR.7sFRQopZ/dZvFaSbqRXO','tatthep','phaijaturud','bas','basmono@gmail.com','0855240541',189,'bangkok','2001-07-11','320eef38-c2ed-45ef-8631-9933285dff7f.jpg',1,2,1,2,0,'2025-06-26 06:13:03',NULL,NULL,1,0,NULL,NULL),(134,'Sirasak','$2b$10$jS7qFd/12R.1v5erzA4GC.8IqmfSh2XrLLhiTuBf1wVxOPUrt8ry2','Sirasak','nakbalee','DeeDee','Sirasak.nakbalee@gmail.com','0982716682',171,'Ladprao','2003-06-19','image8481230414963541920.jpg',1,2,1,2,0,'2025-06-19 05:26:01',NULL,NULL,1,0,NULL,NULL),(135,'savevenjer','$2b$10$rvKBDAEFGsdBirwhi34KSOueEPC3RVC14SwosUNDBvG1BjTaLcrQW','savevenjer','phentayakron','save','savevenjer@gmail.com','0987266271',187,'Bang phree','2005-06-19','image5259559237956022441.jpg',1,2,3,2,0,'2025-06-19 05:29:01',NULL,NULL,1,0,NULL,NULL),(136,'guyguy','$2b$10$A/Rb47/8L3eVr689tmosFeMtREo2GSWIgjqYr.Qt/I75iqBSN.AcS','guy','huyguy','guy','guguygaming@gmail.com','0986278911',169,'Lad Prao','2005-03-17','image3877973702691517247.jpg',1,2,3,3,0,'2025-06-19 05:32:34',NULL,NULL,1,0,NULL,NULL),(137,'icezing','$2b$10$JaUsHPy.il/lwoRGtu2CNuUlLBJtd4HhmGLzmVC6kztx6LBhM9Yd6','purit','jensarakit','icezing','Ice_iceice@gmail.com','0962132134',170,'Samutprakarn','2005-07-01','image4778518693012280688.jpg',2,2,3,1,0,'2025-06-19 05:35:22',NULL,NULL,1,0,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdislike`
--

DROP TABLE IF EXISTS `userdislike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdislike` (
  `dislikeID` int NOT NULL AUTO_INCREMENT,
  `dislikerID` int NOT NULL,
  `dislikedID` int NOT NULL,
  PRIMARY KEY (`dislikeID`),
  KEY `userdislike_ibfk_1` (`dislikerID`),
  KEY `userdislike_ibfk_2` (`dislikedID`),
  CONSTRAINT `userdislike_ibfk_1` FOREIGN KEY (`dislikerID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `userdislike_ibfk_2` FOREIGN KEY (`dislikedID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdislike`
--

LOCK TABLES `userdislike` WRITE;
/*!40000 ALTER TABLE `userdislike` DISABLE KEYS */;
INSERT INTO `userdislike` VALUES (79,121,119),(83,125,119),(84,125,120),(85,125,121),(86,125,122),(88,126,119),(89,126,120),(90,126,121),(92,126,123),(93,126,124),(95,125,123),(96,125,124),(106,128,120),(107,128,121),(108,128,122),(109,128,123),(110,128,124),(111,128,125),(112,128,126),(113,128,127),(117,120,121),(118,120,122),(119,120,123),(120,120,124),(121,120,125),(122,120,126),(123,120,127),(124,120,128),(127,122,126),(128,122,127),(129,122,128),(130,122,119),(133,129,121),(134,129,122),(135,129,123),(136,129,124),(137,129,125),(143,130,119),(145,123,127),(146,132,127),(148,131,119),(154,133,131),(155,134,130),(156,134,131),(157,137,135),(158,137,136),(159,131,133),(160,131,134),(161,130,134);
/*!40000 ALTER TABLE `userdislike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlike`
--

DROP TABLE IF EXISTS `userlike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlike` (
  `likeID` int NOT NULL AUTO_INCREMENT,
  `likerID` int NOT NULL,
  `likedID` int NOT NULL,
  PRIMARY KEY (`likeID`),
  KEY `likerID` (`likerID`),
  KEY `likedID` (`likedID`),
  CONSTRAINT `userlike_ibfk_1` FOREIGN KEY (`likerID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `userlike_ibfk_2` FOREIGN KEY (`likedID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=412 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlike`
--

LOCK TABLES `userlike` WRITE;
/*!40000 ALTER TABLE `userlike` DISABLE KEYS */;
INSERT INTO `userlike` VALUES (356,126,125),(357,126,125),(358,125,126),(359,126,122),(361,128,119),(366,119,128),(367,119,128),(368,119,128),(371,119,120),(372,120,119),(374,122,120),(375,122,121),(376,122,123),(377,122,124),(378,122,125),(379,129,119),(380,129,120),(381,129,126),(387,119,129),(388,119,123),(389,119,124),(390,119,125),(391,119,126),(392,119,127),(393,119,121),(394,119,122),(395,119,123),(396,119,124),(397,119,125),(398,119,126),(399,120,130),(401,123,130),(402,130,123),(403,119,130),(405,119,131),(406,131,123),(407,123,131),(408,131,132),(409,132,131),(410,133,130),(411,130,133);
/*!40000 ALTER TABLE `userlike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpreferences`
--

DROP TABLE IF EXISTS `userpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userpreferences` (
  `UserID` int NOT NULL,
  `PreferenceID` int NOT NULL,
  PRIMARY KEY (`UserID`,`PreferenceID`),
  KEY `PreferenceID` (`PreferenceID`),
  CONSTRAINT `userpreferences_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE,
  CONSTRAINT `userpreferences_ibfk_2` FOREIGN KEY (`PreferenceID`) REFERENCES `preferences` (`PreferenceID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpreferences`
--

LOCK TABLES `userpreferences` WRITE;
/*!40000 ALTER TABLE `userpreferences` DISABLE KEYS */;
INSERT INTO `userpreferences` VALUES (119,1),(120,1),(123,1),(124,1),(128,1),(130,1),(133,1),(119,2),(122,2),(129,2),(131,2),(132,2),(134,2),(135,2),(122,3),(131,3),(132,3),(133,3),(134,3),(135,3),(136,3),(137,3),(119,4),(120,4),(121,4),(123,4),(124,4),(125,4),(131,4),(136,4),(125,5),(129,5),(137,5),(121,6),(129,6),(130,6),(133,6),(134,6),(135,7),(120,8),(121,8),(122,8),(123,8),(124,8),(126,8),(127,8),(132,8),(136,8),(125,9),(130,10),(137,10),(127,12),(127,16);
/*!40000 ALTER TABLE `userpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userreport`
--

DROP TABLE IF EXISTS `userreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userreport` (
  `userreportID` int NOT NULL AUTO_INCREMENT,
  `reporterID` int NOT NULL,
  `reportedID` int NOT NULL,
  `reportID` int NOT NULL,
  PRIMARY KEY (`userreportID`),
  KEY `reporterID` (`reporterID`),
  KEY `reportedID` (`reportedID`),
  KEY `reportID` (`reportID`),
  CONSTRAINT `userreport_ibfk_1` FOREIGN KEY (`reporterID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `userreport_ibfk_2` FOREIGN KEY (`reportedID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `userreport_ibfk_3` FOREIGN KEY (`reportID`) REFERENCES `report` (`reportID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userreport`
--

LOCK TABLES `userreport` WRITE;
/*!40000 ALTER TABLE `userreport` DISABLE KEYS */;
INSERT INTO `userreport` VALUES (28,128,128,1),(29,120,120,3),(30,119,119,1);
/*!40000 ALTER TABLE `userreport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-10 13:52:57

