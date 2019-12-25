-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: blogs
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `author` varchar(15) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `data_posted` date DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES ('Bhupendra','Web Dev','loram ipsum web dev backend flask','2019-12-07',2),('Wikipedia','India','By 55,000 years ago, the first modern humans, or Homo sapiens, had arrived on the Indian subcontinent from Africa, where they had earlier evolved.[64][65][66] The earliest known modern human remains in South Asia date to about 30,000 years ago.[67]','2019-12-04',7),('Nitish','Environment','Descending from the Middle French preposition environ “around,” environment , in its most basic meaning, is “that which surrounds.” When preceded by the and unmodified, it usually refers to the natural world (“please don’t litter if you care about the environment”). In a less physical, more extended sense, it may signify the circumstances and conditions that make up everyday life (“He grew up in a loving environment.”) ','2019-12-11',8),('Chirag','Machine Learning','With ML.NET, you can create custom ML models using C# or F# without having to leave the .NET ecosystem.\r\n\r\nML.NET lets you re-use all the knowledge, skills, code, and libraries you already have as a .NET developer so that you can easily integrate machine learning into your web, mobile, desktop, gaming, and IoT apps.','2019-12-07',10),('aaa','aaaa','this is the new blog that i am about to edit','2019-12-12',13),('Abhishek  S','backend','Backend development (also stylized as back-end or back end development) is the skill that powers the web. Yet it does it modestly, without fanfare—allowing people to browse their favorite sites without even knowing about all the work put in by the backend developer or team.','2019-12-18',14),('aaaaaaaaaaa','aaaa','this is it ','2019-12-18',15),('shrey','computer','computer can do many thing faster than a human and even without any fatigue and this property or advantage makes computer to replace humans in various fields of production...','2019-12-19',16);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-25 13:55:50
