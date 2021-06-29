Enter password: 
-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: qldt_db
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `id` char(32) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(320) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `join_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('pbkdf2_sha256$260000$w2tfd0jrxSg22DDtOHVvZ4$q2PdEwPc9L34BKxX5Rp2J7FC3NavMtvEM6aOewGZhEE=',NULL,'0700d96260cd44b8b623a7422b7a2d19','admin','',1,1,'2021-06-29 12:23:24.677018'),('123456',NULL,'0b52a1bade4943c396fdf4022c38c79f','us9','us9@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'1252cab560474027bdd80fd109ca8f58','us19','us19@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'1272cdc4005e46c5a1fc7841cf127213','us7','us7@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'186a2680f1cf4f78bdd8c85d0ed6748f','us18','us18@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'1c2bf4a4894043bdb8d7d11e46635b85','us12','us12@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'374f6987de8349b3afbaeca2749e9ede','us30','us30@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('pbkdf2_sha256$260000$NyabD0XlatwzgSsYrmuTsg$YG9ynW9Ly4REQSYifsRlVZnZ5x0QkRlmPABHZfx9itA=',NULL,'3a7fae700dc4454893b720598a95572c','ngant84','ngant@gmail.com',0,1,'2021-06-29 12:25:06.521153'),('123456',NULL,'3fd1a35000084496b0ee48878748e693','us17','us17@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'5767d73a4f084afc890c9ac72e72e4a6','us20','us20@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'592acc456f5440e6aee749f6bf8596f7','us10','us11@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'5bad5086a70e4459b51fa1081d99a305','us4','us4@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'605f3e11cc864f0285fa873e24c324b4','us26','us26@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'79c35cef16524229928ddfb693c53a0e','us28','us28@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'7c5bdc5eb77b4c4280422efca0bf35eb','us24','us24@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'8369c38c61ef4cf3a72f532b85cfa2fe','us3','us3@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('pbkdf2_sha256$260000$RUwqTZbCQopfHL8rZ8vNKQ$bQgpWQpRxeoOc6u9mv6fZp+905eRurlDS4kH5kxZPZk=',NULL,'89455b659b0e4204bc081cc30d259119','longbh14','longbh@gmail.com',0,1,'2021-06-29 12:36:01.191964'),('pbkdf2_sha256$260000$kN2ZUq2FxznKmZyY64MPa7$ekqMdwf7tbkLvIj5vPHBQzE7ijSb1QvAyvmY6LiYC7c=',NULL,'8dc2ed21d1254918a5044416369a175b','nhunt84','nhunt@gmail.com',0,1,'2021-06-29 12:24:54.616176'),('123456',NULL,'903272fb35b040caacc6e1a2421b0ddd','us32','us31@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'92de5ed0a0a34b009e07c6dc96e8f38a','us16','us16@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'9555ca48f9e8430e833a3e12c0a2da30','us22','us22@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'9c04e69822294d9f9fa741fd847a37fc','us13','us13@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'a203ba1a520a43bd975166320fbd855a','us27','us27@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'a35847f42df34bbb83dc6305d5f3abc8','us8','us8@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('pbkdf2_sha256$260000$C7x31plAgryso2H3Mxgogo$R03fSQJr7ASPERPp6eOhY8r7lzfFNtZhi5xDGG5OwxY=',NULL,'a82181dbe8b6415eb54a13b72d06bf0d','lonhpdh15','longpdh@gmail.com',0,1,'2021-06-29 12:36:10.508865'),('123456',NULL,'aa6d630c1860467d9ca367b0ceb0b09c','us6','us6@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('pbkdf2_sha256$260000$JqDcCV2WxORfnRtIaGUXzt$GyxmU7sjb9QYqtPrWAmLCKoMTfb8paNTcAmlDxbMPlY=',NULL,'ab8b1ae25b1748fc959591c55d2eec57','trampt84','trampt@gmail.com',0,1,'2021-06-29 12:25:17.455294'),('123456',NULL,'ae2f85f5fe334e5684454752e5441e45','us21','us21@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'b7010ba85f9741eea81acc9233f53658','us1','us1@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'b83fa17a85ec457aa748a515684d9927','us11','us10@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'bc97b631bab74cc9b91836ef584d86b1','us5','us5@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'c3d54fd3e24c4eb7adda2adc321c56a0','us29','us29@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'ca53a85bea98436fa93ac73fa40d82aa','us2','us2@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'d2d3f4e8b63a4b359c4c10a9ae1935f7','us14','us14@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'db6088afe35341df81b8e523890c7322','us31','us31@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'dfa8ba8bf02c49aaa4e89c8269695cf4','us23','us23@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'eb416ee9bdd74d408f8676780c16eaf3','us15','us15@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('123456',NULL,'eb6c37e0853e48dd9b2a14b77a68e005','us25','us25@gmail.com',0,1,'2021-01-01 00:00:00.000000'),('pbkdf2_sha256$260000$XgyW9lkk244kPyJiIt4AN4$7EIV+cI6bnAMwGWCCgJf+ZOiDtn7u5vNJPVJcKwhS08=',NULL,'fdda59e254034b378343c77667e923ce','hoangdm13','hoangdm@gmail.com',0,1,'2021-06-29 12:35:51.240733');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_permissions`
--

DROP TABLE IF EXISTS `account_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_id` char(32) NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_permissions_account_id_permission_id_894e705a_uniq` (`account_id`,`permission_id`),
  KEY `account_permissions_permission_id_3ceae6ec_fk_permission_id` (`permission_id`),
  CONSTRAINT `account_permissions_account_id_11e8836c_fk_account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `account_permissions_permission_id_3ceae6ec_fk_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_permissions`
--

LOCK TABLES `account_permissions` WRITE;
/*!40000 ALTER TABLE `account_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `achievement`
--

DROP TABLE IF EXISTS `achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `achievement_name` varchar(128) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievement`
--

LOCK TABLES `achievement` WRITE;
/*!40000 ALTER TABLE `achievement` DISABLE KEYS */;
INSERT INTO `achievement` VALUES (1,'Hoc sinh gioi 2021','2021-01-01 00:00:00.000000'),(2,'Hoc sinh tien tien 2021','2021-01-01 00:00:00.000000'),(3,'Hoc sinh gioi Toan thanh pho 2021','2021-01-01 00:00:00.000000'),(4,'Hoc sinh gioi Ngu van thanh pho 2021','2021-01-01 00:00:00.000000'),(5,'Hoc sinh gioi Vat ly thanh pho 2021','2021-01-01 00:00:00.000000'),(6,'Hoc sinh gioi Hoa hoc thanh pho 2021','2021-01-01 00:00:00.000000'),(7,'Hoc sinh gioi Ngoai ngu thanh pho 2021','2021-01-01 00:00:00.000000'),(8,'Giao vien xuat sac 2021','2021-01-01 00:00:00.000000'),(9,'Giao vien gioi thanh pho 2021','2021-01-01 00:00:00.000000'),(10,'Lop xuat sac 2021','2021-01-01 00:00:00.000000');
/*!40000 ALTER TABLE `achievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add permission',6,'add_permission'),(22,'Can change permission',6,'change_permission'),(23,'Can delete permission',6,'delete_permission'),(24,'Can view permission',6,'view_permission'),(25,'Can add account',7,'add_account'),(26,'Can change account',7,'change_account'),(27,'Can delete account',7,'delete_account'),(28,'Can view account',7,'view_account'),(29,'Can add achievement',8,'add_achievement'),(30,'Can change achievement',8,'change_achievement'),(31,'Can delete achievement',8,'delete_achievement'),(32,'Can view achievement',8,'view_achievement'),(33,'Can add health',9,'add_health'),(34,'Can change health',9,'change_health'),(35,'Can delete health',9,'delete_health'),(36,'Can view health',9,'view_health'),(37,'Can add person info',10,'add_personinfo'),(38,'Can change person info',10,'change_personinfo'),(39,'Can delete person info',10,'delete_personinfo'),(40,'Can view person info',10,'view_personinfo'),(41,'Can add teacher',11,'add_teacher'),(42,'Can change teacher',11,'change_teacher'),(43,'Can delete teacher',11,'delete_teacher'),(44,'Can view teacher',11,'view_teacher'),(45,'Can add student',12,'add_student'),(46,'Can change student',12,'change_student'),(47,'Can delete student',12,'delete_student'),(48,'Can view student',12,'view_student'),(49,'Can add parent',13,'add_parent'),(50,'Can change parent',13,'change_parent'),(51,'Can delete parent',13,'delete_parent'),(52,'Can view parent',13,'view_parent'),(53,'Can add grade',14,'add_grade'),(54,'Can change grade',14,'change_grade'),(55,'Can delete grade',14,'delete_grade'),(56,'Can view grade',14,'view_grade'),(57,'Can add conduct',15,'add_conduct'),(58,'Can change conduct',15,'change_conduct'),(59,'Can delete conduct',15,'delete_conduct'),(60,'Can view conduct',15,'view_conduct'),(61,'Can add classroom',16,'add_classroom'),(62,'Can change classroom',16,'change_classroom'),(63,'Can delete classroom',16,'delete_classroom'),(64,'Can view classroom',16,'view_classroom'),(65,'Can add course',17,'add_course'),(66,'Can change course',17,'change_course'),(67,'Can delete course',17,'delete_course'),(68,'Can view course',17,'view_course'),(69,'Can add device',18,'add_device'),(70,'Can change device',18,'change_device'),(71,'Can delete device',18,'delete_device'),(72,'Can view device',18,'view_device'),(73,'Can add timetable',19,'add_timetable'),(74,'Can change timetable',19,'change_timetable'),(75,'Can delete timetable',19,'delete_timetable'),(76,'Can view timetable',19,'view_timetable'),(77,'Can add teaching info',20,'add_teachinginfo'),(78,'Can change teaching info',20,'change_teachinginfo'),(79,'Can delete teaching info',20,'delete_teachinginfo'),(80,'Can view teaching info',20,'view_teachinginfo'),(81,'Can add study document',21,'add_studydocument'),(82,'Can change study document',21,'change_studydocument'),(83,'Can delete study document',21,'delete_studydocument'),(84,'Can view study document',21,'view_studydocument'),(85,'Can add device manage',22,'add_devicemanage'),(86,'Can change device manage',22,'change_devicemanage'),(87,'Can delete device manage',22,'delete_devicemanage'),(88,'Can view device manage',22,'view_devicemanage'),(89,'Can add class record',23,'add_classrecord'),(90,'Can change class record',23,'change_classrecord'),(91,'Can delete class record',23,'delete_classrecord'),(92,'Can view class record',23,'view_classrecord');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_record`
--

DROP TABLE IF EXISTS `class_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `classification` varchar(1) DEFAULT NULL,
  `study_week` smallint NOT NULL,
  `attendant` smallint DEFAULT NULL,
  `note` longtext,
  `day_of_week` varchar(3) NOT NULL,
  `shifts` smallint NOT NULL,
  `semester` smallint NOT NULL,
  `school_year` smallint NOT NULL,
  `classroom_id` int NOT NULL,
  `course_id` int DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_record_classroom_id_a9c7dff7_fk_classroom_id` (`classroom_id`),
  KEY `class_record_course_id_cd90ab8f_fk_course_id` (`course_id`),
  KEY `class_record_teacher_id_b136ac2b_fk_teacher_id` (`teacher_id`),
  CONSTRAINT `class_record_classroom_id_a9c7dff7_fk_classroom_id` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`id`),
  CONSTRAINT `class_record_course_id_cd90ab8f_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `class_record_teacher_id_b136ac2b_fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_record`
--

LOCK TABLES `class_record` WRITE;
/*!40000 ALTER TABLE `class_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(8) NOT NULL,
  `location` varchar(16) NOT NULL,
  `homeroom_teacher_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classroom_homeroom_teacher_id_dbfd8321_fk_teacher_id` (`homeroom_teacher_id`),
  CONSTRAINT `classroom_homeroom_teacher_id_dbfd8321_fk_teacher_id` FOREIGN KEY (`homeroom_teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom`
--

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
INSERT INTO `classroom` VALUES (1,'10A - K1','B102',4),(2,'10B - K1','B103',5),(3,'10C - K1','B104',6),(4,'10D - K1','B105',7),(5,'10E - K1','B106',8),(6,'10H - K1','B107',9),(7,'10G - K1','B108',10),(8,'10H - K1','B109',11),(9,'11A - K1','B202',12),(10,'11B - K1','B203',13),(11,'11C - K1','B204',14),(12,'11D - K1','B205',15),(13,'11E - K1','B206',16),(14,'11H - K1','B207',17),(15,'11G - K1','B208',18),(16,'11H - K1','B209',19),(17,'12A - K1','B302',1),(18,'12B - K1','B303',2),(19,'12C - K1','B304',3),(20,'12D - K1','B305',20),(21,'12E - K1','B306',21),(22,'12H - K1','B307',22),(23,'12G - K1','B308',23),(24,'12H - K1','B309',24);
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conduct`
--

DROP TABLE IF EXISTS `conduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conduct` (
  `id` int NOT NULL AUTO_INCREMENT,
  `score` varchar(2) DEFAULT NULL,
  `semester` smallint NOT NULL,
  `school_year` smallint NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `conduct_student_id_6542c6fa_fk_student_id` (`student_id`),
  CONSTRAINT `conduct_student_id_6542c6fa_fk_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conduct`
--

LOCK TABLES `conduct` WRITE;
/*!40000 ALTER TABLE `conduct` DISABLE KEYS */;
INSERT INTO `conduct` VALUES (17,'K',1,2018,1),(18,'T',2,2018,1),(19,'T',1,2019,1),(20,'T',2,2019,1),(21,'T',1,2020,1),(22,'T',1,2018,2),(23,'T',2,2018,2),(24,'T',1,2019,2),(25,'T',2,2019,2),(26,'T',1,2020,2),(27,'K',1,2018,3),(28,'T',2,2018,3),(29,'K',1,2019,3),(30,'T',2,2019,3),(31,'T',1,2020,3),(32,NULL,2,2020,1),(33,NULL,2,2020,2),(34,NULL,2,2020,3);
/*!40000 ALTER TABLE `conduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(32) NOT NULL,
  `group_course` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Toan','Sc'),(2,'Ngu van','So'),(3,'Ngoai ngu','So'),(4,'Giao duc con dan','So'),(5,'Dia ly','Sc'),(6,'Hoa hoc','Sc'),(7,'Vat ly','Sc'),(8,'Sinh hoc','Sc'),(9,'Cong nghe','Sc'),(10,'Tin hoc','Sc'),(11,'Giao duc the chat','Ph'),(12,'Giao duc quoc phong','Ph');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(1) NOT NULL,
  `device_name` varchar(128) NOT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (1,'O','Dai cat set - IBN01',200000),(2,'O','Dai cat set - IBN02',200000),(3,'O','Dai cat set - IBN03',200000),(4,'O','Dai cat set - IBN04',200000),(5,'O','Dai cat set - IBN05',200000),(6,'O','Dai cat set - IBN06',200000),(7,'O','Dai cat set - IBN07',200000),(8,'O','Dai cat set - IBN08',200000),(9,'O','Dai cat set - IBN09',200000),(10,'O','Dai cat set - IBN010',200000),(11,'O','Dai cat set - IBN011',200000),(12,'O','Dai cat set - IBN012',200000),(13,'N','Dai Casio-FX1',500000),(14,'N','Dai Casio-FX2',500000),(15,'N','Dai Casio-FX3',500000),(16,'N','Dai Casio-FX4',500000),(17,'N','Dai Casio-FX5',500000),(18,'N','Dai Casio-FX6',500000),(19,'N','Dai Casio-FX7',500000),(20,'N','Dai Casio-FX8',500000),(21,'N','Dai Casio-FX9',500000),(22,'N','Dai Casio-FX10',500000),(23,'N','Dai Casio-FX11',500000),(24,'N','Dai Casio-FX12',500000),(25,'N','Dai Casio-FX13',500000),(26,'N','Dai Casio-FX14',500000),(27,'N','Dai Casio-FX15',500000),(28,'N','Dai Casio-FX16',500000),(29,'N','Dai Casio-FX17',500000),(30,'N','Dai Casio-FX18',500000),(31,'N','Dai Casio-FX19',500000),(32,'N','Dai Casio-FX20',500000),(33,'N','Dieu hoa Tosiba-T1',5000000),(34,'N','Dieu hoa Tosiba-T2',5000000),(35,'N','Dieu hoa Tosiba-T3',5000000),(36,'N','Dieu hoa Tosiba-T4',5000000),(37,'N','Dieu hoa Tosiba-T5',5000000),(38,'N','May chieu-M1',10000000),(39,'N','May chieu-M2',10000000),(40,'N','May chieu-M3',10000000),(41,'N','May chieu-M4',10000000),(42,'N','May chieu-M5',10000000),(43,'N','Loa JBL-01',300000),(44,'N','Loa JBL-02',300000),(45,'N','Loa JBL-03',300000),(46,'N','Loa JBL-04',300000),(47,'N','Loa JBL-05',300000),(48,'N','Loa JBL-06',300000),(49,'N','Mic-KROK-01',200000),(50,'N','Mic-KROK-02',200000),(51,'N','Mic-KROK-03',200000),(52,'N','Mic-KROK-04',200000),(53,'N','Mic-KROK-05',200000),(54,'N','Mic-KROK-06',200000),(55,'N','Mic-KROK-07',200000),(56,'N','Mic-KROK-08',200000),(57,'N','Mic-KROK-09',200000),(58,'N','Mic-KROK-10',200000),(59,'N','Mic-KROK-11',200000),(60,'N','Mic-KROK-12',200000);
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_manage`
--

DROP TABLE IF EXISTS `device_manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_manage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day_of_week` varchar(3) NOT NULL,
  `shifts` smallint NOT NULL,
  `week` smallint NOT NULL,
  `device_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `device_manage_device_id_50235478_fk_device_id` (`device_id`),
  KEY `device_manage_teacher_id_b22d8f5d_fk_teacher_id` (`teacher_id`),
  CONSTRAINT `device_manage_device_id_50235478_fk_device_id` FOREIGN KEY (`device_id`) REFERENCES `device` (`id`),
  CONSTRAINT `device_manage_teacher_id_b22d8f5d_fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_manage`
--

LOCK TABLES `device_manage` WRITE;
/*!40000 ALTER TABLE `device_manage` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_account_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_account_id` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'accounts','account'),(6,'accounts','permission'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(8,'persons','achievement'),(9,'persons','health'),(10,'persons','personinfo'),(23,'school','classrecord'),(16,'school','classroom'),(17,'school','course'),(18,'school','device'),(22,'school','devicemanage'),(21,'school','studydocument'),(20,'school','teachinginfo'),(19,'school','timetable'),(5,'sessions','session'),(15,'students','conduct'),(14,'students','grade'),(13,'students','parent'),(12,'students','student'),(11,'teachers','teacher');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'accounts','0001_initial','2021-06-29 12:22:57.833916'),(2,'contenttypes','0001_initial','2021-06-29 12:22:57.911596'),(3,'admin','0001_initial','2021-06-29 12:22:58.152402'),(4,'admin','0002_logentry_remove_auto_add','2021-06-29 12:22:58.162289'),(5,'admin','0003_logentry_add_action_flag_choices','2021-06-29 12:22:58.171585'),(6,'contenttypes','0002_remove_content_type_name','2021-06-29 12:22:58.314990'),(7,'auth','0001_initial','2021-06-29 12:22:58.652050'),(8,'auth','0002_alter_permission_name_max_length','2021-06-29 12:22:58.731066'),(9,'auth','0003_alter_user_email_max_length','2021-06-29 12:22:58.740873'),(10,'auth','0004_alter_user_username_opts','2021-06-29 12:22:58.749586'),(11,'auth','0005_alter_user_last_login_null','2021-06-29 12:22:58.757946'),(12,'auth','0006_require_contenttypes_0002','2021-06-29 12:22:58.762252'),(13,'auth','0007_alter_validators_add_error_messages','2021-06-29 12:22:58.774316'),(14,'auth','0008_alter_user_username_max_length','2021-06-29 12:22:58.784158'),(15,'auth','0009_alter_user_last_name_max_length','2021-06-29 12:22:58.792659'),(16,'auth','0010_alter_group_name_max_length','2021-06-29 12:22:58.819468'),(17,'auth','0011_update_proxy_permissions','2021-06-29 12:22:58.833373'),(18,'auth','0012_alter_user_first_name_max_length','2021-06-29 12:22:58.844666'),(19,'persons','0001_initial','2021-06-29 12:22:58.950865'),(20,'teachers','0001_initial','2021-06-29 12:22:59.283455'),(21,'school','0001_initial','2021-06-29 12:23:00.685062'),(22,'sessions','0001_initial','2021-06-29 12:23:00.742426'),(23,'students','0001_initial','2021-06-29 12:23:01.887558'),(24,'students','0002_auto_20210629_1240','2021-06-29 12:41:07.572940'),(25,'students','0003_auto_20210629_1241','2021-06-29 12:41:55.445163');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `school_year` smallint NOT NULL,
  `semester` smallint NOT NULL,
  `quiz1` decimal(4,2) DEFAULT NULL,
  `quiz2` decimal(4,2) DEFAULT NULL,
  `quiz3` decimal(4,2) DEFAULT NULL,
  `test` decimal(4,2) DEFAULT NULL,
  `mid_term_test` decimal(4,2) DEFAULT NULL,
  `final_test` decimal(4,2) DEFAULT NULL,
  `start_update` datetime(6) DEFAULT NULL,
  `course_id` int NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grade_course_id_57ca325c_fk_course_id` (`course_id`),
  KEY `grade_student_id_d11d152d_fk_student_id` (`student_id`),
  CONSTRAINT `grade_course_id_57ca325c_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `grade_student_id_d11d152d_fk_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (37,2020,1,10.00,9.00,9.00,8.50,7.50,9.00,'2020-12-28 00:00:00.000000',1,1),(38,2020,1,8.00,9.00,7.00,8.50,7.00,9.00,'2020-12-28 00:00:00.000000',2,1),(39,2020,1,10.00,7.00,9.00,8.00,7.50,9.50,'2020-12-28 00:00:00.000000',3,1),(40,2020,1,8.50,9.50,9.50,8.00,7.50,8.00,'2020-12-28 00:00:00.000000',4,1),(41,2020,1,6.00,7.50,7.00,8.00,7.50,7.50,'2020-12-28 00:00:00.000000',5,1),(42,2020,1,8.00,8.00,6.00,8.50,7.50,7.00,'2020-12-28 00:00:00.000000',6,1),(43,2020,1,9.00,9.00,9.00,8.50,7.50,7.00,'2020-12-28 00:00:00.000000',7,1),(44,2020,1,7.00,9.00,9.00,8.50,7.50,8.00,'2020-12-28 00:00:00.000000',8,1),(45,2020,1,7.00,9.00,9.00,8.50,7.50,8.50,'2020-12-28 00:00:00.000000',9,1),(46,2020,1,8.00,9.00,7.00,8.50,7.50,9.00,'2020-12-28 00:00:00.000000',10,1),(47,2020,1,10.00,9.00,8.00,8.50,7.50,10.00,'2020-12-28 00:00:00.000000',11,1),(48,2020,1,7.00,5.00,6.50,8.50,7.50,6.00,'2020-12-28 00:00:00.000000',12,1),(49,2020,1,8.50,9.00,7.50,8.50,7.50,6.00,'2020-12-28 00:00:00.000000',1,2),(50,2020,1,8.00,9.00,7.50,7.50,8.00,10.00,'2020-12-28 00:00:00.000000',2,2),(51,2020,1,10.00,7.50,9.50,8.00,7.50,9.50,'2020-12-28 00:00:00.000000',3,2),(52,2020,1,8.00,9.50,8.00,8.00,7.50,8.00,'2020-12-28 00:00:00.000000',4,2),(53,2020,1,6.50,7.00,7.00,8.00,7.50,9.00,'2020-12-28 00:00:00.000000',5,2),(54,2020,1,8.00,8.00,10.00,8.50,5.00,7.50,'2020-12-28 00:00:00.000000',6,2),(55,2020,1,9.00,9.00,10.00,8.50,10.00,9.00,'2020-12-28 00:00:00.000000',7,2),(56,2020,1,7.00,9.50,9.00,8.00,7.50,8.50,'2020-12-28 00:00:00.000000',8,2),(57,2020,1,7.50,9.00,9.50,8.50,7.00,8.50,'2020-12-28 00:00:00.000000',9,2),(58,2020,1,8.50,9.00,7.50,8.50,7.00,9.50,'2020-12-28 00:00:00.000000',10,2),(59,2020,1,10.00,9.00,8.50,8.50,7.00,10.00,'2020-12-28 00:00:00.000000',11,2),(60,2020,1,7.00,10.00,6.50,10.00,9.00,6.50,'2020-12-28 00:00:00.000000',12,2),(61,2020,1,8.00,9.00,8.00,7.00,7.50,9.50,'2020-12-28 00:00:00.000000',1,3),(62,2020,1,8.50,9.00,8.00,8.00,8.00,9.50,'2020-12-28 00:00:00.000000',2,3),(63,2020,1,10.00,10.00,9.00,8.00,10.00,9.50,'2020-12-28 00:00:00.000000',3,3),(64,2020,1,7.50,9.00,9.00,8.00,7.00,8.00,'2020-12-28 00:00:00.000000',4,3),(65,2020,1,8.00,6.50,7.00,8.00,6.50,8.50,'2020-12-28 00:00:00.000000',5,3),(66,2020,1,9.00,8.00,6.50,8.50,8.50,7.50,'2020-12-28 00:00:00.000000',6,3),(67,2020,1,9.50,9.00,9.00,8.50,7.50,7.50,'2020-12-28 00:00:00.000000',7,3),(68,2020,1,7.00,9.00,9.00,8.50,7.50,8.00,'2020-12-28 00:00:00.000000',8,3),(69,2020,1,7.50,8.00,9.00,8.00,7.50,8.50,'2020-12-28 00:00:00.000000',9,3),(70,2020,1,8.50,9.00,7.50,8.50,7.50,9.00,'2020-12-28 00:00:00.000000',10,3),(71,2020,1,10.00,9.00,10.00,8.50,6.50,10.00,'2020-12-28 00:00:00.000000',11,3),(72,2020,1,7.50,8.00,7.50,8.50,8.50,10.00,'2020-12-28 00:00:00.000000',12,3),(73,2020,2,8.50,7.50,8.50,NULL,7.50,8.50,'2021-06-28 00:00:00.000000',1,1),(74,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',2,1),(75,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',3,1),(76,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',4,1),(77,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',5,1),(78,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',6,1),(79,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',7,1),(80,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',8,1),(81,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',9,1),(82,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',10,1),(83,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',11,1),(84,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',12,1),(85,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',1,2),(86,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',2,2),(87,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',3,2),(88,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',4,2),(89,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',5,2),(90,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',6,2),(91,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',7,2),(92,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',8,2),(93,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',9,2),(94,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',10,2),(95,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',11,2),(96,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',12,2),(97,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',1,3),(98,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',2,3),(99,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',3,3),(100,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',4,3),(101,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',5,3),(102,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',6,3),(103,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',7,3),(104,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',8,3),(105,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',9,3),(106,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',10,3),(107,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',11,3),(108,2020,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-06-28 00:00:00.000000',12,3);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health`
--

DROP TABLE IF EXISTS `health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `health` (
  `id` int NOT NULL AUTO_INCREMENT,
  `height` smallint NOT NULL,
  `weight` smallint NOT NULL,
  `eye_sight` smallint NOT NULL,
  `health_status` longtext,
  `disease` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health`
--

LOCK TABLES `health` WRITE;
/*!40000 ALTER TABLE `health` DISABLE KEYS */;
/*!40000 ALTER TABLE `health` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avacation` varchar(128) NOT NULL,
  `person_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `person_id` (`person_id`),
  CONSTRAINT `parent_person_id_183bb9c1_fk_person_info_id` FOREIGN KEY (`person_id`) REFERENCES `person_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_student`
--

DROP TABLE IF EXISTS `parent_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent_student` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `parent_student_parent_id_student_id_241e005e_uniq` (`parent_id`,`student_id`),
  KEY `parent_student_student_id_51af8232_fk_student_id` (`student_id`),
  CONSTRAINT `parent_student_parent_id_9702123a_fk_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `parent` (`id`),
  CONSTRAINT `parent_student_student_id_51af8232_fk_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_student`
--

LOCK TABLES `parent_student` WRITE;
/*!40000 ALTER TABLE `parent_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(128) NOT NULL,
  `permission_code` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_info`
--

DROP TABLE IF EXISTS `person_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_info` (
  `id` char(32) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` varchar(128) NOT NULL,
  `ethnicity` varchar(32) DEFAULT NULL,
  `religion` varchar(32) DEFAULT NULL,
  `phone_number` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_info`
--

LOCK TABLES `person_info` WRITE;
/*!40000 ALTER TABLE `person_info` DISABLE KEYS */;
INSERT INTO `person_info` VALUES ('0024536990684dfda5adb08a8cb8ca74','Tam','Nguyen Thi','F','1954-04-23','21 Mai Lam, Ha Noi','Kinh','None','09397722080'),('0113731f0f424d41888de0f2e2ae73a0','THao','Pham Thi','F','1978-07-24','124 Hiep Thuan, Ha Noi','Kinh','None','09345941674'),('01f78cc5a36143b0a02d85f8a08e7410','Ha','Do Thi','F','1995-03-23','268 La Khe, Ha Noi','Kinh','None','09396021192'),('0267aa4f76f34ec0bb1c1b62a30b7bab','Vi','Ly Anh','M','2000-03-18','93 Mai Dong, Ha Noi','Kinh','None',NULL),('0871816cb60a421e8dd603f52c71f27c','Anh','Hoang Viet','F','1974-10-06','383 Thanh Liet, Ha Noi','Kinh','None','09964532499'),('13c9a9c9b7de44efabef7255f57321f5','Hoa','Ngo Thi','F','1989-04-15','89 Xuan Quan, Ha Noi','Kinh','None','09589309467'),('1425c659e3814c93bdbd6425858f3bd1','Long','Bui Hoang','M','2000-06-14','179 Phu Luong, Ha Noi','Kinh','None','0928529434'),('15cd87297f1a4c15b956bf9128565134','Linh','Phan Thi','F','1974-08-08','46 Phuc La, Ha Noi','Kinh','None','09646261896'),('16b5f3ef46894d9397ac0f1ba582a66b','Trung','Ngo Vu','M','2000-07-29','128 Quan Hoa, Ha Noi','Kinh','None',NULL),('184a21a37f09483da325305e8681e7ad','Hung','Nguyen Anh','M','2000-04-19','127 Minh Khai, Ha Noi','Kinh','None',NULL),('193a150d861245f0a28e09874d6d04b2','Lan','Dang Thi','F','1990-10-17','123 Huong Ngai, Ha Noi','Kinh','None','09744831734'),('1fe7bbb0465447ff8f0e05da2c4176b5','Trung','Nguyen Anh','M','2000-02-04','19 Duong Lang, Ha Noi','Kinh','None',NULL),('218a53b5454241de93c00d1ec3a6de65','Uyen','Phi Thi','F','1989-04-29','289 Phu Thuong, Ha Noi','Kinh','None','09520010887'),('242bc226a52a46cbb37f8bb1815d0e98','Nga','Nguyen Thi','F','1993-01-31','19 Nam Dong, Ha Noi','Kinh','None','09904990781'),('27020af80d6346febf65a35d0fee0bd8','Khanh','Nguyen Anh','M','2000-08-01','129 Le Van Luong, Ha Noi','Kinh','None',NULL),('2883e66ed421493e8acaba5f385a813d','Chi','Nguyen Thi','F','1984-04-30','157 Quang Trung, Ha Noi','Kinh','None','09623916428'),('34f809f79a844d1cb694b946bf3abc8a','Mai','Tran Thi','F','1985-04-10','52 Ton That Tung, Ha Noi','Kinh','None','09996894433'),('3de55726966e44bab283302e3fa89bd1','Hong','Tran Thi','F','1986-01-10','16 Tho Xuan, Ha Noi','Kinh','None','09678960885'),('486799bb2010490aa80b1ce7c587d5b3','Thuy','Do Thi','F','1958-03-23','148 Van Noi, Ha Noi','Kinh','None','09853010227'),('49c513fb41ca418385bc60e734f42221','Ngan','Dang Thi','F','1965-09-07','147 Bac Viet, Ha Noi','Kinh','None','09430301754'),('4a24b40a498849508928b9fe1db9a546','Cuong','Vo Minh','M','2000-05-13','19 Le Dai Thanh, Ha Noi','Kinh','None',NULL),('4f958ef002a7424784f2d3ecbdeb9e7b','Chi','Ngo Thi','F','1985-04-15','147 Tien Phong, Ha Noi','Kinh','None','09183101489'),('51aff52a6a5145938cac440c28127544','Giang','Binh Dinh','M','2000-01-07','12 Truong Chinh, Ha Noi','Kinh','None',NULL),('53c64404fca44dd69d4ba7f4f543b108','Ngoc','Nguyen Thi','F','1984-04-23','10 Hai Ba Trung, Ha Noi','Kinh','None','09275445385'),('54cd62a97f32436db9cc160848e1f6cc','An','Phan Thi','F','1974-12-25','358 Canh Nau, Ha Noi','Kinh','None','09712687303'),('54e41a47ba9247e1800fdad186d63a62','Hai Long','Phan Dinh','M','2000-06-15','178 Phu Luong, Ha Noi','Kinh','None','0982362852'),('54eed90423ca4a6c92d580341a9b33cf','Thu','Nguyen Thi','F','1998-04-30','17 Vong La, Ha Noi','Kinh','None','09678883267'),('5c26c68bece244229e7d91966e7df31d','Vy','Nguyen Thi','F','1989-04-28','167 Thuong Cat, Ha Noi','Kinh','None','09483703004'),('5d36088e065c4a16aacd0f1ea9825b43','Trung','Nguyen Anh','M','2000-09-08','649 Quang Trung, Ha Noi','Kinh','None',NULL),('60ea61de2e054b41b54ca162281bfe59','Hue','Phi Thi','F','1948-04-29','481 Duong Lieu, Ha Noi','Kinh','None','09850731524'),('62e17fa9494c43898b334f494e8d58bf','Dat','Nguyen Anh','M','2000-04-12','149 Nguyen Du, Ha Noi','Kinh','None',NULL),('6500554c2a3b455d920268ebb56ee96a','Nam','Dang Anh','M','2000-08-05','14 Quang Trung, Ha Noi','Kinh','None',NULL),('660e18dc53ea46bf853670e84d19cc70','Hien','Le Thi','F','1979-03-12','72 Dan Phuong, Ha Noi','Kinh','None','09305856601'),('661c31500e8241feaf1baf0e45ce1326','My','Ngo Thi','F','1979-06-15','148 Van Phuc, Ha Noi','Kinh','None','09922951999'),('6b6dbf5c40cc4ba4aeffd0c0215a29ca','Trang','Le Thi','F','1946-12-12','238 Lien Mac, Ha Noi','Kinh','None','09125699948'),('6dc489e6b8bb4d3fbbb48c1af6d2c74f','Khai','Nguyen Anh','M','2000-06-30','128 Lieu Gai, Ha Noi','Kinh','None',NULL),('768ca567dede44b8996b44e7e65e4d61','Son','Phan Anh','M','2000-02-21','18 Thanh Tri, Ha Noi','Kinh','None',NULL),('7693f451f70842babf0963c57eabf8d7','Minh','Tran Anh','M','2000-02-02','253 Nguyen Du, Ha Noi','Kinh','None',NULL),('770842e4387343c3b6a4da5707313571','Thanh','Hoang Viet','F','1990-10-14','14 Sai Son, Ha Noi','Kinh','None','09336397388'),('781ee411c9c14bf39a1a3ac5d85ba638','Thao','Pham Thi','F','1994-07-11','25 Yen Hoa, Ha Noi','Kinh','None','09515807203'),('7a3c984d4d7541419b59a8095675ac9f','Phuoc','Duong Dai','M','2000-11-17','53 Tuong Khai, Ha Noi','Kinh','None',NULL),('7b6d5f4a9c0f4dd0afaf81281903e89b','Lan','Phan Thi','F','1956-08-08','589 Thuy Lam, Ha Noi','Kinh','None','09739723036'),('7ba61f70e5b0488792e3cb9ced8f372a','An','To Minh','M','2000-10-02','189 Quang Trung, Ha Noi','Kinh','None',NULL),('7bfb8323c15342fe9a017beb97440bbc','Khoi','Nguyen Thu','M','2000-07-15','38 Dong Tam Ha Noi','Kinh','None',NULL),('7cf09bfdd13a4fa6846ee95a6206a339','Phi','Dang Van','M','2000-06-14','395 Phuong Liet, Ha Noi','Kinh','None',NULL),('7dc4d467601c445899ca722de29a5051','Thang','Ly Anh','M','2000-07-06','73 Kim Lien, Ha Noi','Kinh','None',NULL),('7dee6815366d453f82df8f57f8f2dadf','Huy','Vu Van','M','2000-10-09','269 Tran Hung Dao, Ha Noi','Kinh','None',NULL),('7e6b199ed77d4be5be8cac723945e79c','Hung','Nguyen Anh','M','2000-03-28','128 Ngoc Khanh, Ha Noi','Kinh','None',NULL),('813e946fc3134bc2aecbef7c7cbfbb18','Huong','Le Thi','F','1986-12-12','53 Trung Hoa, Ha Noi','Kinh','None','09918314975'),('854b01b8cfa84402b7ed508b8faf60ad','Khanh','Ho Anh','M','2000-04-27','89 Thanh Cong, Ha Noi','Kinh','None',NULL),('8715b1bd1cc8487095d2899f3ccf6e98','Tung','Nguyen Van','M','2000-01-24','713 Doi Can, Ha Noi','Kinh','None',NULL),('8b12ac7200104365b249c9b278453548','Nhung','Nguyen Thi','F','1989-04-28','278 Hai Ba Trung, Ha Noi','Kinh','None','09437383581'),('93dffd2fb9f34d8c9c9f3cc9f762aa8a','Nhu','Nguyen Thi','F','1995-04-03','178 Tran Hung Dao, Ha Noi','Kinh','None','09224214570'),('9436348051594fea90befe90607ae62d','Quang','Ly Anh','M','2000-01-20','98 Vinh Hung, Ha Noi','Kinh','None',NULL),('94be7f99846e4d538c9cb75a4fce6ea3','Hoang','Do Minh','M','2000-06-13','180 Phu Luong, Ha Noi','Kinh','None','0947462222'),('98463210689c497ea8df685408c9ad0f','Dang','Nguyen Anh','M','2000-12-10','358 Hang Bo, Ha Noi','Kinh','None',NULL),('a2a36194d06c4c268a6a25ba0283fc16','Yen','Pham Thi','F','1957-07-11','135 Dong Anh, Ha Noi','Kinh','None','09103338193'),('a2fb578482564e9f9db3b3f5e649e53d','Van','Tran Anh','M','2000-08-16','148 Phuong Lien, Ha Noi','Kinh','None',NULL),('a910175fe1a54195a6159442cbbaac5b','Chau','Hoang Viet','F','1978-10-06','178 Nam Hong, Ha Noi','Kinh','None','09790677179'),('ad41136ad4ce4ddeb7fb4ac94942519b','Dat','Nguyen Hoang','M','2000-03-23','89 Ngoc Ha, Ha Noi','Kinh','None',NULL),('b8cc772870bd4c8a942a73ada944b848','Tuan','Tu Anh','M','2000-05-03','129 Tay Son, Ha Noi','Kinh','None',NULL),('c00c35ad3b8743b886174e46887e1aac','Nhi','Do Thi','F','1986-03-08','184 Phu Luong, Ha Noi','Kinh','None','09947467251'),('c087838e15464d27bcf9d67d8ba547f0','Cong','Bui Van','M','2000-12-22','129 Mai Dong, Ha Noi','Kinh','None',NULL),('c51a578107b5444d900171cdbec4b4e1','Khoi','Thai Ngoc','M','2000-07-31','91 Vinh Phuc, Ha Noi','Kinh','None',NULL),('ce9832815a3a4795bfefacdc7009c3e8','Thanh','Phan Anh','M','2000-05-04','26 Co Loa, Ha Noi','Kinh','None',NULL),('d19d41d714c14bd99c8d2b99f27c31c4','Phuong','Dang Thi','F','1965-09-07','489 Hoang Liet, Ha Noi','Kinh','None','09620006220'),('d20f9e955eb0474d9a8d92c312546e64','Tram','Phi Thi','F','1992-09-27','981 Cat Linh, Ha Noi','Kinh','None','09056028783'),('d23468e9c3994f4d8f6eb3eb7ec5812e','Khoa','Dinh Tien','M','2000-04-05','37 Nam Dong, Ha Noi','Kinh','None',NULL),('d4fe771a3ecf4a88a4d2cb5b1d22836c','Dung','Nguyen Anh','M','2000-01-01','5 Quang Trung, Ha Noi','Kinh','None',NULL),('d974626a93c64bb48e2e12c71ff0966d','Bao','Dao Manh','M','2000-09-06','218 Dinh Cong, Ha Noi','Kinh','None',NULL),('e5721d2ce6a14e3dbad80f1a031cb805','Hoang','Nguyen Huu','M','2000-11-11','124 Hang Giai, Ha Noi','Kinh','None',NULL),('ead5fcc5d5334367ab644a43d8726209','Dan','Tran Thi','F','1965-04-10','67 Dong Ngac, Ha Noi','Kinh','None','09663209009'),('f754db6381c340fd89a42e9248c388e0','Kien','Pham Van','M','2000-03-03','6 Van Chuong, Ha Noi','Kinh','None',NULL),('f7c1f2c30f124f50936109f89e42996b','Manh','Nguyen Van','M','2000-01-25','192 Kim Ma, Ha Noi','Kinh','None',NULL),('fc99cbd182224448a5cd854079f73c96','Tai','Le Hai','M','2000-08-07','38 Bui Thi Xuan, Ha Noi','Kinh','None',NULL);
/*!40000 ALTER TABLE `person_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(2) DEFAULT NULL,
  `admission_year` smallint NOT NULL,
  `account_id` char(32) DEFAULT NULL,
  `classroom_id` int NOT NULL,
  `health_id` int DEFAULT NULL,
  `person_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `person_id` (`person_id`),
  KEY `student_account_id_34e2a8a4_fk_account_id` (`account_id`),
  KEY `student_classroom_id_831a0c26_fk_classroom_id` (`classroom_id`),
  KEY `student_health_id_afc82371_fk_health_id` (`health_id`),
  CONSTRAINT `student_account_id_34e2a8a4_fk_account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `student_classroom_id_831a0c26_fk_classroom_id` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`id`),
  CONSTRAINT `student_health_id_afc82371_fk_health_id` FOREIGN KEY (`health_id`) REFERENCES `health` (`id`),
  CONSTRAINT `student_person_id_c6bda30d_fk_person_info_id` FOREIGN KEY (`person_id`) REFERENCES `person_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'DH',2018,'fdda59e254034b378343c77667e923ce',17,NULL,'94be7f99846e4d538c9cb75a4fce6ea3'),(2,'DH',2018,'89455b659b0e4204bc081cc30d259119',18,NULL,'1425c659e3814c93bdbd6425858f3bd1'),(3,'DH',2018,'a82181dbe8b6415eb54a13b72d06bf0d',18,NULL,'54e41a47ba9247e1800fdad186d63a62'),(4,'DH',2018,NULL,17,NULL,'d4fe771a3ecf4a88a4d2cb5b1d22836c'),(5,'DH',2018,NULL,17,NULL,'7693f451f70842babf0963c57eabf8d7'),(6,'DH',2018,NULL,17,NULL,'f754db6381c340fd89a42e9248c388e0'),(7,'DH',2018,NULL,17,NULL,'ce9832815a3a4795bfefacdc7009c3e8'),(8,'DH',2018,NULL,17,NULL,'d23468e9c3994f4d8f6eb3eb7ec5812e'),(9,'DH',2018,NULL,17,NULL,'7dc4d467601c445899ca722de29a5051'),(10,'DH',2018,NULL,17,NULL,'fc99cbd182224448a5cd854079f73c96'),(11,'DH',2018,NULL,17,NULL,'5d36088e065c4a16aacd0f1ea9825b43'),(12,'DH',2018,NULL,17,NULL,'7dee6815366d453f82df8f57f8f2dadf'),(13,'DH',2018,NULL,17,NULL,'98463210689c497ea8df685408c9ad0f'),(14,'DH',2018,NULL,17,NULL,'e5721d2ce6a14e3dbad80f1a031cb805'),(15,'DH',2018,NULL,17,NULL,'62e17fa9494c43898b334f494e8d58bf'),(16,'DH',2018,NULL,17,NULL,'4a24b40a498849508928b9fe1db9a546'),(17,'DH',2018,NULL,17,NULL,'7cf09bfdd13a4fa6846ee95a6206a339'),(18,'DH',2018,NULL,17,NULL,'7bfb8323c15342fe9a017beb97440bbc'),(19,'DH',2018,NULL,17,NULL,'a2fb578482564e9f9db3b3f5e649e53d'),(20,'DH',2018,NULL,17,NULL,'7a3c984d4d7541419b59a8095675ac9f'),(21,'DH',2018,NULL,17,NULL,'0267aa4f76f34ec0bb1c1b62a30b7bab'),(22,'DH',2018,NULL,17,NULL,'184a21a37f09483da325305e8681e7ad'),(23,'DH',2018,NULL,17,NULL,'9436348051594fea90befe90607ae62d'),(24,'DH',2018,NULL,17,NULL,'768ca567dede44b8996b44e7e65e4d61'),(25,'DH',2018,NULL,17,NULL,'c087838e15464d27bcf9d67d8ba547f0'),(26,'DH',2018,NULL,17,NULL,'ad41136ad4ce4ddeb7fb4ac94942519b'),(27,'DH',2018,NULL,17,NULL,'8715b1bd1cc8487095d2899f3ccf6e98'),(28,'DH',2018,NULL,17,NULL,'f7c1f2c30f124f50936109f89e42996b'),(29,'DH',2018,NULL,17,NULL,'854b01b8cfa84402b7ed508b8faf60ad'),(30,'DH',2018,NULL,17,NULL,'7e6b199ed77d4be5be8cac723945e79c'),(31,'DH',2018,NULL,17,NULL,'16b5f3ef46894d9397ac0f1ba582a66b'),(32,'DH',2018,NULL,17,NULL,'6dc489e6b8bb4d3fbbb48c1af6d2c74f'),(33,'DH',2018,NULL,17,NULL,'c51a578107b5444d900171cdbec4b4e1'),(34,'DH',2018,NULL,17,NULL,'27020af80d6346febf65a35d0fee0bd8'),(35,'DH',2018,NULL,17,NULL,'7ba61f70e5b0488792e3cb9ced8f372a'),(36,'DH',2018,NULL,17,NULL,'b8cc772870bd4c8a942a73ada944b848'),(37,'DH',2018,NULL,17,NULL,'1fe7bbb0465447ff8f0e05da2c4176b5'),(38,'DH',2018,NULL,17,NULL,'6500554c2a3b455d920268ebb56ee96a'),(39,'DH',2018,NULL,17,NULL,'d974626a93c64bb48e2e12c71ff0966d'),(40,'DH',2018,NULL,17,NULL,'51aff52a6a5145938cac440c28127544');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_archivement`
--

DROP TABLE IF EXISTS `student_archivement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_archivement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `achievement_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_archivement_student_id_achievement_id_3ea61ba0_uniq` (`student_id`,`achievement_id`),
  KEY `student_archivement_achievement_id_bb150621_fk_achievement_id` (`achievement_id`),
  CONSTRAINT `student_archivement_achievement_id_bb150621_fk_achievement_id` FOREIGN KEY (`achievement_id`) REFERENCES `achievement` (`id`),
  CONSTRAINT `student_archivement_student_id_40545676_fk_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_archivement`
--

LOCK TABLES `student_archivement` WRITE;
/*!40000 ALTER TABLE `student_archivement` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_archivement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_document`
--

DROP TABLE IF EXISTS `study_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `study_document` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `file` varchar(100) NOT NULL,
  `study_week` smallint NOT NULL,
  `classroom_id` int DEFAULT NULL,
  `course_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `study_document_classroom_id_931ccbff_fk_classroom_id` (`classroom_id`),
  KEY `study_document_course_id_5898d838_fk_course_id` (`course_id`),
  KEY `study_document_teacher_id_24b84cfc_fk_teacher_id` (`teacher_id`),
  CONSTRAINT `study_document_classroom_id_931ccbff_fk_classroom_id` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`id`),
  CONSTRAINT `study_document_course_id_5898d838_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `study_document_teacher_id_24b84cfc_fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_document`
--

LOCK TABLES `study_document` WRITE;
/*!40000 ALTER TABLE `study_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `study_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` char(32) DEFAULT NULL,
  `person_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `person_id` (`person_id`),
  KEY `teacher_account_id_246b9c70_fk_account_id` (`account_id`),
  CONSTRAINT `teacher_account_id_246b9c70_fk_account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `teacher_person_id_9a53b27c_fk_person_info_id` FOREIGN KEY (`person_id`) REFERENCES `person_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'8dc2ed21d1254918a5044416369a175b','93dffd2fb9f34d8c9c9f3cc9f762aa8a'),(2,'3a7fae700dc4454893b720598a95572c','242bc226a52a46cbb37f8bb1815d0e98'),(3,'ab8b1ae25b1748fc959591c55d2eec57','d20f9e955eb0474d9a8d92c312546e64'),(4,'b7010ba85f9741eea81acc9233f53658','53c64404fca44dd69d4ba7f4f543b108'),(5,'ca53a85bea98436fa93ac73fa40d82aa','34f809f79a844d1cb694b946bf3abc8a'),(6,'8369c38c61ef4cf3a72f532b85cfa2fe','813e946fc3134bc2aecbef7c7cbfbb18'),(7,'5bad5086a70e4459b51fa1081d99a305','781ee411c9c14bf39a1a3ac5d85ba638'),(8,'bc97b631bab74cc9b91836ef584d86b1','15cd87297f1a4c15b956bf9128565134'),(9,'aa6d630c1860467d9ca367b0ceb0b09c','d19d41d714c14bd99c8d2b99f27c31c4'),(10,'1272cdc4005e46c5a1fc7841cf127213','0871816cb60a421e8dd603f52c71f27c'),(11,'a35847f42df34bbb83dc6305d5f3abc8','13c9a9c9b7de44efabef7255f57321f5'),(12,'0b52a1bade4943c396fdf4022c38c79f','01f78cc5a36143b0a02d85f8a08e7410'),(13,'b83fa17a85ec457aa748a515684d9927','2883e66ed421493e8acaba5f385a813d'),(14,'592acc456f5440e6aee749f6bf8596f7','8b12ac7200104365b249c9b278453548'),(15,'1c2bf4a4894043bdb8d7d11e46635b85','218a53b5454241de93c00d1ec3a6de65'),(16,'9c04e69822294d9f9fa741fd847a37fc','0024536990684dfda5adb08a8cb8ca74'),(17,'d2d3f4e8b63a4b359c4c10a9ae1935f7','ead5fcc5d5334367ab644a43d8726209'),(18,'eb416ee9bdd74d408f8676780c16eaf3','6b6dbf5c40cc4ba4aeffd0c0215a29ca'),(19,'92de5ed0a0a34b009e07c6dc96e8f38a','a2a36194d06c4c268a6a25ba0283fc16'),(20,'3fd1a35000084496b0ee48878748e693','7b6d5f4a9c0f4dd0afaf81281903e89b'),(21,'186a2680f1cf4f78bdd8c85d0ed6748f','49c513fb41ca418385bc60e734f42221'),(22,'1252cab560474027bdd80fd109ca8f58','a910175fe1a54195a6159442cbbaac5b'),(23,'5767d73a4f084afc890c9ac72e72e4a6','4f958ef002a7424784f2d3ecbdeb9e7b'),(24,'ae2f85f5fe334e5684454752e5441e45','486799bb2010490aa80b1ce7c587d5b3'),(25,'9555ca48f9e8430e833a3e12c0a2da30','54eed90423ca4a6c92d580341a9b33cf'),(26,'dfa8ba8bf02c49aaa4e89c8269695cf4','5c26c68bece244229e7d91966e7df31d'),(27,'7c5bdc5eb77b4c4280422efca0bf35eb','60ea61de2e054b41b54ca162281bfe59'),(28,'eb6c37e0853e48dd9b2a14b77a68e005','3de55726966e44bab283302e3fa89bd1'),(29,'605f3e11cc864f0285fa873e24c324b4','660e18dc53ea46bf853670e84d19cc70'),(30,'a203ba1a520a43bd975166320fbd855a','0113731f0f424d41888de0f2e2ae73a0'),(31,'79c35cef16524229928ddfb693c53a0e','54cd62a97f32436db9cc160848e1f6cc'),(32,'c3d54fd3e24c4eb7adda2adc321c56a0','193a150d861245f0a28e09874d6d04b2'),(33,'374f6987de8349b3afbaeca2749e9ede','770842e4387343c3b6a4da5707313571'),(34,'db6088afe35341df81b8e523890c7322','661c31500e8241feaf1baf0e45ce1326'),(35,'903272fb35b040caacc6e1a2421b0ddd','c00c35ad3b8743b886174e46887e1aac');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_archivement`
--

DROP TABLE IF EXISTS `teacher_archivement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_archivement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `achievement_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teacher_archivement_teacher_id_achievement_id_504a05e2_uniq` (`teacher_id`,`achievement_id`),
  KEY `teacher_archivement_achievement_id_6f61ed6e_fk_achievement_id` (`achievement_id`),
  CONSTRAINT `teacher_archivement_achievement_id_6f61ed6e_fk_achievement_id` FOREIGN KEY (`achievement_id`) REFERENCES `achievement` (`id`),
  CONSTRAINT `teacher_archivement_teacher_id_c327be6d_fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_archivement`
--

LOCK TABLES `teacher_archivement` WRITE;
/*!40000 ALTER TABLE `teacher_archivement` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_archivement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teaching_information`
--

DROP TABLE IF EXISTS `teaching_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teaching_information` (
  `id` int NOT NULL AUTO_INCREMENT,
  `school_year` varchar(250) NOT NULL,
  `semester` smallint NOT NULL,
  `classroom_id` int NOT NULL,
  `course_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teaching_information_classroom_id_0f4c5a7a_fk_classroom_id` (`classroom_id`),
  KEY `teaching_information_course_id_03968512_fk_course_id` (`course_id`),
  KEY `teaching_information_teacher_id_9bfff701_fk_teacher_id` (`teacher_id`),
  CONSTRAINT `teaching_information_classroom_id_0f4c5a7a_fk_classroom_id` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`id`),
  CONSTRAINT `teaching_information_course_id_03968512_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `teaching_information_teacher_id_9bfff701_fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teaching_information`
--

LOCK TABLES `teaching_information` WRITE;
/*!40000 ALTER TABLE `teaching_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `teaching_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timetable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day_of_week` varchar(3) NOT NULL,
  `shifts` smallint NOT NULL,
  `semester` smallint NOT NULL,
  `school_year` smallint NOT NULL,
  `classroom_id` int NOT NULL,
  `course_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `timetable_classroom_id_660c94c9_fk_classroom_id` (`classroom_id`),
  KEY `timetable_course_id_185407ba_fk_course_id` (`course_id`),
  KEY `timetable_teacher_id_351c8414_fk_teacher_id` (`teacher_id`),
  CONSTRAINT `timetable_classroom_id_660c94c9_fk_classroom_id` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`id`),
  CONSTRAINT `timetable_course_id_185407ba_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `timetable_teacher_id_351c8414_fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable`
--

LOCK TABLES `timetable` WRITE;
/*!40000 ALTER TABLE `timetable` DISABLE KEYS */;
INSERT INTO `timetable` VALUES (1,'Mon',1,1,2020,17,1,1),(2,'Mon',2,1,2020,17,1,1),(3,'Mon',3,1,2020,17,4,10),(4,'Mon',4,1,2020,17,12,12),(5,'Mon',5,1,2020,17,12,12),(6,'Tue',1,1,2020,17,6,4),(7,'Tue',2,1,2020,17,6,4),(8,'Tue',3,1,2020,17,7,5),(9,'Tue',4,1,2020,17,7,5),(10,'Tue',5,1,2020,17,3,3),(11,'Wed',1,1,2020,17,3,3),(12,'Wed',2,1,2020,17,3,3),(13,'Wed',3,1,2020,17,10,1),(14,'Wed',4,1,2020,17,10,1),(15,'Wed',5,1,2020,17,5,2),(16,'Thu',1,1,2020,17,1,10),(17,'Thu',2,1,2020,17,1,2),(18,'Thu',3,1,2020,17,1,2),(19,'Thu',4,1,2020,17,1,2),(20,'Thu',5,1,2020,17,7,5),(21,'Fri',1,1,2020,17,8,6),(22,'Fri',2,1,2020,17,8,6),(23,'Fri',3,1,2020,17,9,8),(24,'Fri',4,1,2020,17,11,11),(25,'Fri',5,1,2020,17,11,11),(26,'Sat',1,1,2020,17,1,1),(27,'Sat',2,1,2020,17,6,4),(28,'Sat',3,1,2020,17,8,6),(29,'Sat',4,1,2020,17,9,8),(30,'Sat',5,1,2020,17,5,2),(31,'Mon',6,1,2020,18,1,10),(32,'Mon',7,1,2020,18,1,2),(33,'Mon',8,1,2020,18,1,2),(34,'Mon',9,1,2020,18,1,2),(35,'Mon',10,1,2020,18,7,5),(36,'Tue',6,1,2020,18,8,6),(37,'Tue',7,1,2020,18,8,6),(38,'Tue',8,1,2020,18,9,8),(39,'Tue',9,1,2020,18,11,11),(40,'Tue',10,1,2020,18,11,11),(41,'Wed',6,1,2020,18,1,1),(42,'Wed',7,1,2020,18,6,4),(43,'Wed',8,1,2020,18,8,6),(44,'Wed',9,1,2020,18,9,8),(45,'Wed',10,1,2020,18,5,2),(46,'Thu',6,1,2020,18,1,1),(47,'Thu',7,1,2020,18,1,1),(48,'Thu',8,1,2020,18,4,10),(49,'Thu',9,1,2020,18,12,12),(50,'Thu',10,1,2020,18,12,12),(51,'Fri',6,1,2020,18,6,4),(52,'Fri',7,1,2020,18,6,4),(53,'Fri',8,1,2020,18,7,5),(54,'Fri',9,1,2020,18,7,5),(55,'Fri',10,1,2020,18,3,3),(56,'Sat',6,1,2020,18,3,3),(57,'Sat',7,1,2020,18,3,3),(58,'Sat',8,1,2020,18,10,1),(59,'Sat',9,1,2020,18,10,1),(60,'Sat',10,1,2020,18,5,2);
/*!40000 ALTER TABLE `timetable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-29  8:58:49
