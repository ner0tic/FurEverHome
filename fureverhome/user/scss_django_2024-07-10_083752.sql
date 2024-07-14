-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: scss_django
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `address_address`
--

DROP TABLE IF EXISTS `address_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `street` varchar(128) NOT NULL,
  `city` varchar(64) NOT NULL,
  `state` varchar(64) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  `street2` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_address_content_type_id_078b4a6d_fk_django_co` (`content_type_id`),
  CONSTRAINT `address_address_content_type_id_078b4a6d_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `address_address_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_address`
--

/*!40000 ALTER TABLE `address_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_address` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add address',6,'add_address'),(22,'Can change address',6,'change_address'),(23,'Can delete address',6,'delete_address'),(24,'Can view address',6,'view_address'),(25,'Can add requirement',7,'add_requirement'),(26,'Can change requirement',7,'change_requirement'),(27,'Can delete requirement',7,'delete_requirement'),(28,'Can view requirement',7,'view_requirement'),(29,'Can add course',8,'add_course'),(30,'Can change course',8,'change_course'),(31,'Can delete course',8,'delete_course'),(32,'Can view course',8,'view_course'),(33,'Can add organization enrollment',9,'add_organizationenrollment'),(34,'Can change organization enrollment',9,'change_organizationenrollment'),(35,'Can delete organization enrollment',9,'delete_organizationenrollment'),(36,'Can view organization enrollment',9,'view_organizationenrollment'),(37,'Can add facility enrollment',10,'add_facilityenrollment'),(38,'Can change facility enrollment',10,'change_facilityenrollment'),(39,'Can delete facility enrollment',10,'delete_facilityenrollment'),(40,'Can view facility enrollment',10,'view_facilityenrollment'),(41,'Can add week',11,'add_week'),(42,'Can change week',11,'change_week'),(43,'Can delete week',11,'delete_week'),(44,'Can view week',11,'view_week'),(45,'Can add period',12,'add_period'),(46,'Can change period',12,'change_period'),(47,'Can delete period',12,'delete_period'),(48,'Can view period',12,'view_period'),(49,'Can add faction enrollment',13,'add_factionenrollment'),(50,'Can change faction enrollment',13,'change_factionenrollment'),(51,'Can delete faction enrollment',13,'delete_factionenrollment'),(52,'Can view faction enrollment',13,'view_factionenrollment'),(53,'Can add leader enrollment',14,'add_leaderenrollment'),(54,'Can change leader enrollment',14,'change_leaderenrollment'),(55,'Can delete leader enrollment',14,'delete_leaderenrollment'),(56,'Can view leader enrollment',14,'view_leaderenrollment'),(57,'Can add organization course',15,'add_organizationcourse'),(58,'Can change organization course',15,'change_organizationcourse'),(59,'Can delete organization course',15,'delete_organizationcourse'),(60,'Can view organization course',15,'view_organizationcourse'),(61,'Can add facility class',16,'add_facilityclass'),(62,'Can change facility class',16,'change_facilityclass'),(63,'Can delete facility class',16,'delete_facilityclass'),(64,'Can view facility class',16,'view_facilityclass'),(65,'Can add facility class enrollment',17,'add_facilityclassenrollment'),(66,'Can change facility class enrollment',17,'change_facilityclassenrollment'),(67,'Can delete facility class enrollment',17,'delete_facilityclassenrollment'),(68,'Can view facility class enrollment',17,'view_facilityclassenrollment'),(69,'Can add attendee enrollment',18,'add_attendeeenrollment'),(70,'Can change attendee enrollment',18,'change_attendeeenrollment'),(71,'Can delete attendee enrollment',18,'delete_attendeeenrollment'),(72,'Can view attendee enrollment',18,'view_attendeeenrollment'),(73,'Can add attendee class enrollment',19,'add_attendeeclassenrollment'),(74,'Can change attendee class enrollment',19,'change_attendeeclassenrollment'),(75,'Can delete attendee class enrollment',19,'delete_attendeeclassenrollment'),(76,'Can view attendee class enrollment',19,'view_attendeeclassenrollment'),(77,'Can add faculty enrollment',20,'add_facultyenrollment'),(78,'Can change faculty enrollment',20,'change_facultyenrollment'),(79,'Can delete faculty enrollment',20,'delete_facultyenrollment'),(80,'Can view faculty enrollment',20,'view_facultyenrollment'),(81,'Can add faculty class enrollment',21,'add_facultyclassenrollment'),(82,'Can change faculty class enrollment',21,'change_facultyclassenrollment'),(83,'Can delete faculty class enrollment',21,'delete_facultyclassenrollment'),(84,'Can view faculty class enrollment',21,'view_facultyclassenrollment'),(85,'Can add active enrollment',22,'add_activeenrollment'),(86,'Can change active enrollment',22,'change_activeenrollment'),(87,'Can delete active enrollment',22,'delete_activeenrollment'),(88,'Can view active enrollment',22,'view_activeenrollment'),(89,'Can add facility',23,'add_facility'),(90,'Can change facility',23,'change_facility'),(91,'Can delete facility',23,'delete_facility'),(92,'Can view facility',23,'view_facility'),(93,'Can add department',24,'add_department'),(94,'Can change department',24,'change_department'),(95,'Can delete department',24,'delete_department'),(96,'Can view department',24,'view_department'),(97,'Can add quarters type',25,'add_quarterstype'),(98,'Can change quarters type',25,'change_quarterstype'),(99,'Can delete quarters type',25,'delete_quarterstype'),(100,'Can view quarters type',25,'view_quarterstype'),(101,'Can add quarters',26,'add_quarters'),(102,'Can change quarters',26,'change_quarters'),(103,'Can delete quarters',26,'delete_quarters'),(104,'Can view quarters',26,'view_quarters'),(105,'Can add faculty profile',27,'add_facultyprofile'),(106,'Can change faculty profile',27,'change_facultyprofile'),(107,'Can delete faculty profile',27,'delete_facultyprofile'),(108,'Can view faculty profile',27,'view_facultyprofile'),(109,'Can add faculty',28,'add_faculty'),(110,'Can change faculty',28,'change_faculty'),(111,'Can delete faculty',28,'delete_faculty'),(112,'Can view faculty',28,'view_faculty'),(113,'Can add faction',29,'add_faction'),(114,'Can change faction',29,'change_faction'),(115,'Can delete faction',29,'delete_faction'),(116,'Can view faction',29,'view_faction'),(117,'Can add attendee profile',30,'add_attendeeprofile'),(118,'Can change attendee profile',30,'change_attendeeprofile'),(119,'Can delete attendee profile',30,'delete_attendeeprofile'),(120,'Can view attendee profile',30,'view_attendeeprofile'),(121,'Can add leader profile',31,'add_leaderprofile'),(122,'Can change leader profile',31,'change_leaderprofile'),(123,'Can delete leader profile',31,'delete_leaderprofile'),(124,'Can view leader profile',31,'view_leaderprofile'),(125,'Can add attendee',32,'add_attendee'),(126,'Can change attendee',32,'change_attendee'),(127,'Can delete attendee',32,'delete_attendee'),(128,'Can view attendee',32,'view_attendee'),(129,'Can add leader',33,'add_leader'),(130,'Can change leader',33,'change_leader'),(131,'Can delete leader',33,'delete_leader'),(132,'Can view leader',33,'view_leader'),(133,'Can add organization',34,'add_organization'),(134,'Can change organization',34,'change_organization'),(135,'Can delete organization',34,'delete_organization'),(136,'Can view organization',34,'view_organization'),(137,'Can add organization labels',35,'add_organizationlabels'),(138,'Can change organization labels',35,'change_organizationlabels'),(139,'Can delete organization labels',35,'delete_organizationlabels'),(140,'Can view organization labels',35,'view_organizationlabels'),(141,'Can add user',36,'add_user'),(142,'Can change user',36,'change_user'),(143,'Can delete user',36,'delete_user'),(144,'Can view user',36,'view_user'),(145,'Can add dashboard layout',37,'add_dashboardlayout'),(146,'Can change dashboard layout',37,'change_dashboardlayout'),(147,'Can delete dashboard layout',37,'delete_dashboardlayout'),(148,'Can view dashboard layout',37,'view_dashboardlayout'),(149,'Can add menu item',38,'add_menuitem'),(150,'Can change menu item',38,'change_menuitem'),(151,'Can delete menu item',38,'delete_menuitem'),(152,'Can view menu item',38,'view_menuitem'),(153,'Can add menu',39,'add_menu'),(154,'Can change menu',39,'change_menu'),(155,'Can delete menu',39,'delete_menu'),(156,'Can view menu',39,'view_menu'),(157,'Can add message',40,'add_message'),(158,'Can change message',40,'change_message'),(159,'Can delete message',40,'delete_message'),(160,'Can view message',40,'view_message'),(161,'Can add notification',41,'add_notification'),(162,'Can change notification',41,'change_notification'),(163,'Can delete notification',41,'delete_notification'),(164,'Can view notification',41,'view_notification'),(165,'Can add tag',42,'add_tag'),(166,'Can change tag',42,'change_tag'),(167,'Can delete tag',42,'delete_tag'),(168,'Can view tag',42,'view_tag'),(169,'Can add tagged item',43,'add_taggeditem'),(170,'Can change tagged item',43,'change_taggeditem'),(171,'Can delete tagged item',43,'delete_taggeditem'),(172,'Can view tagged item',43,'view_taggeditem');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

--
-- Table structure for table `course_course`
--

DROP TABLE IF EXISTS `course_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_course`
--

/*!40000 ALTER TABLE `course_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_course` ENABLE KEYS */;

--
-- Table structure for table `course_course_prerequisites`
--

DROP TABLE IF EXISTS `course_course_prerequisites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_course_prerequisites` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `from_course_id` bigint NOT NULL,
  `to_course_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_course_prerequisi_from_course_id_to_course_149f0fd9_uniq` (`from_course_id`,`to_course_id`),
  KEY `course_course_prereq_to_course_id_1aa39964_fk_course_co` (`to_course_id`),
  CONSTRAINT `course_course_prereq_from_course_id_1eb9a439_fk_course_co` FOREIGN KEY (`from_course_id`) REFERENCES `course_course` (`id`),
  CONSTRAINT `course_course_prereq_to_course_id_1aa39964_fk_course_co` FOREIGN KEY (`to_course_id`) REFERENCES `course_course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_course_prerequisites`
--

/*!40000 ALTER TABLE `course_course_prerequisites` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_course_prerequisites` ENABLE KEYS */;

--
-- Table structure for table `course_course_requirements`
--

DROP TABLE IF EXISTS `course_course_requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_course_requirements` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course_id` bigint NOT NULL,
  `requirement_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_course_requiremen_course_id_requirement_id_c3746103_uniq` (`course_id`,`requirement_id`),
  KEY `course_course_requir_requirement_id_e51a7a06_fk_course_re` (`requirement_id`),
  CONSTRAINT `course_course_requir_course_id_70e67538_fk_course_co` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`),
  CONSTRAINT `course_course_requir_requirement_id_e51a7a06_fk_course_re` FOREIGN KEY (`requirement_id`) REFERENCES `course_requirement` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_course_requirements`
--

/*!40000 ALTER TABLE `course_course_requirements` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_course_requirements` ENABLE KEYS */;

--
-- Table structure for table `course_requirement`
--

DROP TABLE IF EXISTS `course_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_requirement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_requirement`
--

/*!40000 ALTER TABLE `course_requirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_requirement` ENABLE KEYS */;

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
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_user_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (6,'address','address'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(8,'course','course'),(7,'course','requirement'),(22,'enrollment','activeenrollment'),(19,'enrollment','attendeeclassenrollment'),(18,'enrollment','attendeeenrollment'),(16,'enrollment','facilityclass'),(17,'enrollment','facilityclassenrollment'),(10,'enrollment','facilityenrollment'),(13,'enrollment','factionenrollment'),(21,'enrollment','facultyclassenrollment'),(20,'enrollment','facultyenrollment'),(14,'enrollment','leaderenrollment'),(15,'enrollment','organizationcourse'),(9,'enrollment','organizationenrollment'),(12,'enrollment','period'),(11,'enrollment','week'),(24,'facility','department'),(23,'facility','facility'),(28,'facility','faculty'),(27,'facility','facultyprofile'),(26,'facility','quarters'),(25,'facility','quarterstype'),(32,'faction','attendee'),(30,'faction','attendeeprofile'),(29,'faction','faction'),(33,'faction','leader'),(31,'faction','leaderprofile'),(34,'organization','organization'),(35,'organization','organizationlabels'),(37,'pages','dashboardlayout'),(39,'pages','menu'),(38,'pages','menuitem'),(40,'pages','message'),(41,'pages','notification'),(5,'sessions','session'),(42,'taggit','tag'),(43,'taggit','taggeditem'),(36,'user','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-07-10 00:09:46.999371'),(2,'contenttypes','0002_remove_content_type_name','2024-07-10 00:09:47.409784'),(3,'address','0001_initial','2024-07-10 00:09:47.786156'),(4,'address','0002_address_street2','2024-07-10 00:09:47.887147'),(5,'auth','0001_initial','2024-07-10 00:09:49.254274'),(6,'auth','0002_alter_permission_name_max_length','2024-07-10 00:09:49.594618'),(7,'auth','0003_alter_user_email_max_length','2024-07-10 00:09:49.611987'),(8,'auth','0004_alter_user_username_opts','2024-07-10 00:09:49.632739'),(9,'auth','0005_alter_user_last_login_null','2024-07-10 00:09:49.655320'),(10,'auth','0006_require_contenttypes_0002','2024-07-10 00:09:49.669582'),(11,'auth','0007_alter_validators_add_error_messages','2024-07-10 00:09:49.689271'),(12,'auth','0008_alter_user_username_max_length','2024-07-10 00:09:49.709661'),(13,'auth','0009_alter_user_last_name_max_length','2024-07-10 00:09:49.728347'),(14,'auth','0010_alter_group_name_max_length','2024-07-10 00:09:49.780757'),(15,'auth','0011_update_proxy_permissions','2024-07-10 00:09:49.799798'),(16,'auth','0012_alter_user_first_name_max_length','2024-07-10 00:09:49.819853'),(17,'user','0001_initial','2024-07-10 00:09:51.624037'),(18,'admin','0001_initial','2024-07-10 00:09:52.551325'),(19,'admin','0002_logentry_remove_auto_add','2024-07-10 00:09:52.567389'),(20,'admin','0003_logentry_add_action_flag_choices','2024-07-10 00:09:52.594318'),(21,'taggit','0001_initial','2024-07-10 00:09:53.945708'),(22,'taggit','0002_auto_20150616_2121','2024-07-10 00:09:54.121755'),(23,'taggit','0003_taggeditem_add_unique_index','2024-07-10 00:09:54.189654'),(24,'taggit','0004_alter_taggeditem_content_type_alter_taggeditem_tag','2024-07-10 00:09:54.234381'),(25,'taggit','0005_auto_20220424_2025','2024-07-10 00:09:54.251060'),(26,'taggit','0006_rename_taggeditem_content_type_object_id_taggit_tagg_content_8fc721_idx','2024-07-10 00:09:54.354933'),(27,'course','0001_initial','2024-07-10 00:09:55.449930'),(28,'course','0002_course_slug_requirement_slug','2024-07-10 00:09:56.295201'),(29,'course','0003_alter_course_requirements','2024-07-10 00:09:56.310204'),(30,'course','0004_alter_course_requirements','2024-07-10 00:09:56.332441'),(31,'course','0005_alter_course_requirements','2024-07-10 00:09:56.348511'),(32,'course','0006_course_prerequisites_course_tags','2024-07-10 00:09:57.259118'),(33,'organization','0001_initial','2024-07-10 00:09:57.595539'),(34,'organization','0002_organization_slug','2024-07-10 00:09:58.086593'),(35,'faction','0001_initial','2024-07-10 00:09:58.332236'),(36,'faction','0002_initial','2024-07-10 00:10:00.353915'),(37,'faction','0003_faction_slug','2024-07-10 00:10:00.628822'),(38,'faction','0004_alter_faction_organization','2024-07-10 00:10:00.644709'),(39,'facility','0001_initial','2024-07-10 00:10:00.970528'),(40,'facility','0002_initial','2024-07-10 00:10:03.891575'),(41,'facility','0003_alter_facultyprofile_facility_and_more','2024-07-10 00:10:05.153150'),(42,'facility','0004_alter_quarters_type','2024-07-10 00:10:05.168560'),(43,'facility','0005_department_slug_facility_slug_quarters_slug','2024-07-10 00:10:06.391841'),(44,'facility','0006_alter_department_facility_alter_quarters_facility','2024-07-10 00:10:06.470661'),(45,'facility','0007_alter_facility_organization','2024-07-10 00:10:06.505354'),(46,'facility','0008_alter_facultyprofile_facility','2024-07-10 00:10:06.562464'),(47,'enrollment','0001_initial','2024-07-10 00:10:10.047803'),(48,'enrollment','0002_initial','2024-07-10 00:10:18.887935'),(49,'enrollment','0003_facilityenrollment_slug_organizationenrollment_slug_and_more','2024-07-10 00:10:20.848424'),(50,'enrollment','0004_activeenrollment','2024-07-10 00:10:22.132604'),(51,'enrollment','0005_activeenrollment_attendee_enrollment_and_more','2024-07-10 00:10:25.152802'),(52,'enrollment','0006_facultyclassenrollment_faculty_enrollment_and_more','2024-07-10 00:10:32.569551'),(53,'enrollment','0007_alter_facultyenrollment_facility_enrollment','2024-07-10 00:10:34.885361'),(54,'facility','0009_facultyprofile_enrollments_and_more','2024-07-10 00:10:35.142635'),(55,'enrollment','0008_remove_factionenrollment_facility_enrollment_and_more','2024-07-10 00:10:38.364558'),(56,'enrollment','0009_alter_leaderenrollment_leader','2024-07-10 00:10:38.409640'),(57,'enrollment','0010_attendeeclassenrollment_slug','2024-07-10 00:10:41.502281'),(58,'enrollment','0011_attendeeenrollment_slug','2024-07-10 00:10:43.399118'),(59,'enrollment','0012_alter_attendeeenrollment_attendee_and_more','2024-07-10 00:10:43.532326'),(60,'enrollment','0013_alter_facilityenrollment_options_and_more','2024-07-10 00:10:46.487611'),(61,'enrollment','0014_alter_facilityenrollment_options_and_more','2024-07-10 00:10:59.969144'),(62,'enrollment','0015_facilityclass_slug_organizationcourse_slug','2024-07-10 00:11:01.179339'),(63,'organization','0003_organization_max_depth','2024-07-10 00:11:02.291077'),(64,'organization','0004_organizationlabels','2024-07-10 00:11:02.810238'),(65,'organization','0005_organizationlabels_faction_label','2024-07-10 00:11:02.943355'),(66,'organization','0006_organization_date_created_organization_date_modified_and_more','2024-07-10 00:11:03.379977'),(67,'facility','0010_department_created_at_department_updated_at_and_more','2024-07-10 00:11:05.402055'),(68,'pages','0001_initial','2024-07-10 00:11:06.052493'),(69,'pages','0002_alter_menuitem_options_remove_menuitem_permission_and_more','2024-07-10 00:11:08.309465'),(70,'pages','0003_menuitem_url_params','2024-07-10 00:11:08.666975'),(71,'pages','0004_menuitem_visible_to','2024-07-10 00:11:08.859524'),(72,'pages','0005_alter_menuitem_url_params','2024-07-10 00:11:09.138214'),(73,'pages','0006_remove_menuitem_url_params_menuitem_image','2024-07-10 00:11:09.293511'),(74,'pages','0007_menuitem_css_class','2024-07-10 00:11:09.381151'),(75,'pages','0008_menuitem_image_path','2024-07-10 00:11:09.521017'),(76,'pages','0009_menuitem_url_params','2024-07-10 00:11:09.632254'),(77,'pages','0010_remove_menuitem_permissions','2024-07-10 00:11:09.745179'),(78,'pages','0011_menuitem_permissions','2024-07-10 00:11:10.570500'),(79,'pages','0012_alter_menuitem_options_remove_menuitem_menu_and_more','2024-07-10 00:11:11.634797'),(80,'pages','0013_message_notification','2024-07-10 00:11:12.847543'),(81,'pages','0014_dashboardlayout','2024-07-10 00:11:13.234317'),(82,'pages','0015_basemodelmixin','2024-07-10 00:11:13.336150'),(83,'faction','0005_faction_parent','2024-07-10 00:11:13.674386'),(84,'faction','0006_remove_faction_description_remove_faction_id_and_more','2024-07-10 00:21:11.257823'),(85,'sessions','0001_initial','2024-07-10 11:05:15.762691');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

--
-- Table structure for table `enrollment_activeenrollment`
--

DROP TABLE IF EXISTS `enrollment_activeenrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_activeenrollment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `facility_enrollment_id` bigint DEFAULT NULL,
  `faction_enrollment_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `attendee_enrollment_id` bigint DEFAULT NULL,
  `leader_enrollment_id` bigint DEFAULT NULL,
  `faculty_enrollment_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `enrollment_activeenrollm_user_id_leader_enrollmen_d934aa79_uniq` (`user_id`,`leader_enrollment_id`),
  UNIQUE KEY `enrollment_activeenrollm_user_id_faculty_enrollme_bfcf9c28_uniq` (`user_id`,`faculty_enrollment_id`),
  UNIQUE KEY `enrollment_activeenrollm_user_id_facility_enrollm_c53f64d0_uniq` (`user_id`,`facility_enrollment_id`),
  UNIQUE KEY `enrollment_activeenrollm_user_id_faction_enrollme_96389147_uniq` (`user_id`,`faction_enrollment_id`),
  UNIQUE KEY `enrollment_activeenrollm_user_id_attendee_enrollm_428deb26_uniq` (`user_id`,`attendee_enrollment_id`),
  KEY `enrollment_activeenr_facility_enrollment__e73354df_fk_enrollmen` (`facility_enrollment_id`),
  KEY `enrollment_activeenr_faction_enrollment_i_92f70344_fk_enrollmen` (`faction_enrollment_id`),
  KEY `enrollment_activeenr_attendee_enrollment__281eff14_fk_enrollmen` (`attendee_enrollment_id`),
  KEY `enrollment_activeenr_leader_enrollment_id_7fbdaf23_fk_enrollmen` (`leader_enrollment_id`),
  KEY `enrollment_activeenr_faculty_enrollment_i_9ed81570_fk_enrollmen` (`faculty_enrollment_id`),
  CONSTRAINT `enrollment_activeenr_attendee_enrollment__281eff14_fk_enrollmen` FOREIGN KEY (`attendee_enrollment_id`) REFERENCES `enrollment_attendeeenrollment` (`id`),
  CONSTRAINT `enrollment_activeenr_facility_enrollment__e73354df_fk_enrollmen` FOREIGN KEY (`facility_enrollment_id`) REFERENCES `enrollment_facilityenrollment` (`id`),
  CONSTRAINT `enrollment_activeenr_faction_enrollment_i_92f70344_fk_enrollmen` FOREIGN KEY (`faction_enrollment_id`) REFERENCES `enrollment_factionenrollment` (`id`),
  CONSTRAINT `enrollment_activeenr_faculty_enrollment_i_9ed81570_fk_enrollmen` FOREIGN KEY (`faculty_enrollment_id`) REFERENCES `enrollment_facultyenrollment` (`id`),
  CONSTRAINT `enrollment_activeenr_leader_enrollment_id_7fbdaf23_fk_enrollmen` FOREIGN KEY (`leader_enrollment_id`) REFERENCES `enrollment_leaderenrollment` (`id`),
  CONSTRAINT `enrollment_activeenrollment_user_id_30b7118d_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_activeenrollment`
--

/*!40000 ALTER TABLE `enrollment_activeenrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment_activeenrollment` ENABLE KEYS */;

--
-- Table structure for table `enrollment_attendeeclassenrollment`
--

DROP TABLE IF EXISTS `enrollment_attendeeclassenrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_attendeeclassenrollment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attendee_enrollment_id` bigint NOT NULL,
  `facility_class_enrollment_id` bigint NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `enrollment_attendeec_attendee_enrollment__1315c682_fk_enrollmen` (`attendee_enrollment_id`),
  KEY `enrollment_attendeec_facility_class_enrol_1c7aeebd_fk_enrollmen` (`facility_class_enrollment_id`),
  CONSTRAINT `enrollment_attendeec_attendee_enrollment__1315c682_fk_enrollmen` FOREIGN KEY (`attendee_enrollment_id`) REFERENCES `enrollment_attendeeenrollment` (`id`),
  CONSTRAINT `enrollment_attendeec_facility_class_enrol_1c7aeebd_fk_enrollmen` FOREIGN KEY (`facility_class_enrollment_id`) REFERENCES `enrollment_facilityclassenrollment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_attendeeclassenrollment`
--

/*!40000 ALTER TABLE `enrollment_attendeeclassenrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment_attendeeclassenrollment` ENABLE KEYS */;

--
-- Table structure for table `enrollment_attendeeenrollment`
--

DROP TABLE IF EXISTS `enrollment_attendeeenrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_attendeeenrollment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attendee_id` bigint NOT NULL,
  `quarters_id` bigint NOT NULL,
  `faction_enrollment_id` bigint NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `enrollment_attendeee_attendee_id_b02cb9f8_fk_user_user` (`attendee_id`),
  KEY `enrollment_attendeee_quarters_id_85d49ab7_fk_facility_` (`quarters_id`),
  KEY `enrollment_attendeee_faction_enrollment_i_8819ddbf_fk_enrollmen` (`faction_enrollment_id`),
  CONSTRAINT `enrollment_attendeee_attendee_id_b02cb9f8_fk_user_user` FOREIGN KEY (`attendee_id`) REFERENCES `user_user` (`id`),
  CONSTRAINT `enrollment_attendeee_faction_enrollment_i_8819ddbf_fk_enrollmen` FOREIGN KEY (`faction_enrollment_id`) REFERENCES `enrollment_factionenrollment` (`id`),
  CONSTRAINT `enrollment_attendeee_quarters_id_85d49ab7_fk_facility_` FOREIGN KEY (`quarters_id`) REFERENCES `facility_quarters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_attendeeenrollment`
--

/*!40000 ALTER TABLE `enrollment_attendeeenrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment_attendeeenrollment` ENABLE KEYS */;

--
-- Table structure for table `enrollment_facilityclass`
--

DROP TABLE IF EXISTS `enrollment_facilityclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_facilityclass` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `facility_enrollment_id` bigint NOT NULL,
  `organization_course_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `description` longtext NOT NULL DEFAULT (_utf8mb3' '),
  `name` varchar(100) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `enrollment_facilityc_facility_enrollment__1746865d_fk_enrollmen` (`facility_enrollment_id`),
  KEY `enrollment_facilityc_organization_course__be9553b4_fk_enrollmen` (`organization_course_id`),
  CONSTRAINT `enrollment_facilityc_facility_enrollment__1746865d_fk_enrollmen` FOREIGN KEY (`facility_enrollment_id`) REFERENCES `enrollment_facilityenrollment` (`id`),
  CONSTRAINT `enrollment_facilityc_organization_course__be9553b4_fk_enrollmen` FOREIGN KEY (`organization_course_id`) REFERENCES `enrollment_organizationcourse` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_facilityclass`
--

/*!40000 ALTER TABLE `enrollment_facilityclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment_facilityclass` ENABLE KEYS */;

--
-- Table structure for table `enrollment_facilityclassenrollment`
--

DROP TABLE IF EXISTS `enrollment_facilityclassenrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_facilityclassenrollment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `department_id` bigint NOT NULL,
  `facility_class_id` bigint NOT NULL,
  `period_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `enrollment_facilityc_department_id_899b555c_fk_facility_` (`department_id`),
  KEY `enrollment_facilityc_facility_class_id_e38f42c9_fk_enrollmen` (`facility_class_id`),
  KEY `enrollment_facilityc_period_id_772eab12_fk_enrollmen` (`period_id`),
  CONSTRAINT `enrollment_facilityc_department_id_899b555c_fk_facility_` FOREIGN KEY (`department_id`) REFERENCES `facility_department` (`id`),
  CONSTRAINT `enrollment_facilityc_facility_class_id_e38f42c9_fk_enrollmen` FOREIGN KEY (`facility_class_id`) REFERENCES `enrollment_facilityclass` (`id`),
  CONSTRAINT `enrollment_facilityc_period_id_772eab12_fk_enrollmen` FOREIGN KEY (`period_id`) REFERENCES `enrollment_period` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_facilityclassenrollment`
--

/*!40000 ALTER TABLE `enrollment_facilityclassenrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment_facilityclassenrollment` ENABLE KEYS */;

--
-- Table structure for table `enrollment_facilityenrollment`
--

DROP TABLE IF EXISTS `enrollment_facilityenrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_facilityenrollment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `facility_id` bigint NOT NULL,
  `organization_enrollment_id` bigint NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `end` datetime(6) NOT NULL,
  `start` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `enrollment_facilitye_facility_id_9e445ba5_fk_facility_` (`facility_id`),
  KEY `enrollment_facilitye_organization_enrollm_9bcf93ec_fk_enrollmen` (`organization_enrollment_id`),
  KEY `enrollment_facilityenrollment_is_active_3d55603f` (`is_active`),
  CONSTRAINT `enrollment_facilitye_facility_id_9e445ba5_fk_facility_` FOREIGN KEY (`facility_id`) REFERENCES `facility_facility` (`id`),
  CONSTRAINT `enrollment_facilitye_organization_enrollm_9bcf93ec_fk_enrollmen` FOREIGN KEY (`organization_enrollment_id`) REFERENCES `enrollment_organizationenrollment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_facilityenrollment`
--

/*!40000 ALTER TABLE `enrollment_facilityenrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment_facilityenrollment` ENABLE KEYS */;

--
-- Table structure for table `enrollment_factionenrollment`
--

DROP TABLE IF EXISTS `enrollment_factionenrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_factionenrollment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `faction_id` bigint NOT NULL,
  `quarters_id` bigint NOT NULL,
  `description` longtext NOT NULL DEFAULT (_utf8mb3' '),
  `name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `week_id` bigint NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `end` datetime(6) NOT NULL,
  `start` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `enrollment_factionen_faction_id_77387915_fk_faction_f` (`faction_id`),
  KEY `enrollment_factionen_quarters_id_9fdb6fa0_fk_facility_` (`quarters_id`),
  KEY `enrollment_factionen_week_id_7093afb5_fk_enrollmen` (`week_id`),
  KEY `enrollment_factionenrollment_is_active_b84e1b18` (`is_active`),
  CONSTRAINT `enrollment_factionen_faction_id_77387915_fk_faction_f` FOREIGN KEY (`faction_id`) REFERENCES `faction_faction` (`id`),
  CONSTRAINT `enrollment_factionen_quarters_id_9fdb6fa0_fk_facility_` FOREIGN KEY (`quarters_id`) REFERENCES `facility_quarters` (`id`),
  CONSTRAINT `enrollment_factionen_week_id_7093afb5_fk_enrollmen` FOREIGN KEY (`week_id`) REFERENCES `enrollment_week` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_factionenrollment`
--

/*!40000 ALTER TABLE `enrollment_factionenrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment_factionenrollment` ENABLE KEYS */;

--
-- Table structure for table `enrollment_facultyclassenrollment`
--

DROP TABLE IF EXISTS `enrollment_facultyclassenrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_facultyclassenrollment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `facility_class_enrollment_id` bigint DEFAULT NULL,
  `faculty_id` bigint NOT NULL,
  `faculty_enrollment_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enrollment_facultycl_faculty_id_f5fcb28c_fk_user_user` (`faculty_id`),
  KEY `enrollment_facultycl_faculty_enrollment_i_dfba4311_fk_enrollmen` (`faculty_enrollment_id`),
  KEY `enrollment_facultycl_facility_class_enrol_9d5b0d5a_fk_enrollmen` (`facility_class_enrollment_id`),
  CONSTRAINT `enrollment_facultycl_facility_class_enrol_9d5b0d5a_fk_enrollmen` FOREIGN KEY (`facility_class_enrollment_id`) REFERENCES `enrollment_facilityclassenrollment` (`id`),
  CONSTRAINT `enrollment_facultycl_faculty_enrollment_i_dfba4311_fk_enrollmen` FOREIGN KEY (`faculty_enrollment_id`) REFERENCES `enrollment_facultyenrollment` (`id`),
  CONSTRAINT `enrollment_facultycl_faculty_id_f5fcb28c_fk_user_user` FOREIGN KEY (`faculty_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_facultyclassenrollment`
--

/*!40000 ALTER TABLE `enrollment_facultyclassenrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment_facultyclassenrollment` ENABLE KEYS */;

--
-- Table structure for table `enrollment_facultyenrollment`
--

DROP TABLE IF EXISTS `enrollment_facultyenrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_facultyenrollment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `facility_enrollment_id` bigint NOT NULL,
  `faculty_id` bigint NOT NULL,
  `faculty_class_enrollments_id` bigint DEFAULT NULL,
  `quarters_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `enrollment_facultyenrollment_faculty_id_92feae77_fk_user_user_id` (`faculty_id`),
  KEY `enrollment_facultyen_quarters_id_ed9a3197_fk_facility_` (`quarters_id`),
  KEY `enrollment_facultyen_faculty_class_enroll_81905356_fk_enrollmen` (`faculty_class_enrollments_id`),
  KEY `enrollment_facultyen_facility_enrollment__12e69b9d_fk_enrollmen` (`facility_enrollment_id`),
  CONSTRAINT `enrollment_facultyen_facility_enrollment__12e69b9d_fk_enrollmen` FOREIGN KEY (`facility_enrollment_id`) REFERENCES `enrollment_facilityenrollment` (`id`),
  CONSTRAINT `enrollment_facultyen_faculty_class_enroll_81905356_fk_enrollmen` FOREIGN KEY (`faculty_class_enrollments_id`) REFERENCES `enrollment_facultyclassenrollment` (`id`),
  CONSTRAINT `enrollment_facultyen_quarters_id_ed9a3197_fk_facility_` FOREIGN KEY (`quarters_id`) REFERENCES `facility_quarters` (`id`),
  CONSTRAINT `enrollment_facultyenrollment_faculty_id_92feae77_fk_user_user_id` FOREIGN KEY (`faculty_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_facultyenrollment`
--

/*!40000 ALTER TABLE `enrollment_facultyenrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment_facultyenrollment` ENABLE KEYS */;

--
-- Table structure for table `enrollment_leaderenrollment`
--

DROP TABLE IF EXISTS `enrollment_leaderenrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_leaderenrollment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `faction_enrollment_id` bigint NOT NULL,
  `leader_id` bigint NOT NULL,
  `description` longtext NOT NULL DEFAULT (_utf8mb3' '),
  `name` varchar(100) NOT NULL,
  `quarters_id` bigint DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `end` datetime(6) NOT NULL,
  `start` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `enrollment_leaderenr_faction_enrollment_i_648eb185_fk_enrollmen` (`faction_enrollment_id`),
  KEY `enrollment_leaderenrollment_leader_id_b5121c29_fk_user_user_id` (`leader_id`),
  KEY `enrollment_leaderenr_quarters_id_dace5506_fk_facility_` (`quarters_id`),
  KEY `enrollment_leaderenrollment_is_active_0af6ebe1` (`is_active`),
  CONSTRAINT `enrollment_leaderenr_faction_enrollment_i_648eb185_fk_enrollmen` FOREIGN KEY (`faction_enrollment_id`) REFERENCES `enrollment_factionenrollment` (`id`),
  CONSTRAINT `enrollment_leaderenr_quarters_id_dace5506_fk_facility_` FOREIGN KEY (`quarters_id`) REFERENCES `facility_quarters` (`id`),
  CONSTRAINT `enrollment_leaderenrollment_leader_id_b5121c29_fk_user_user_id` FOREIGN KEY (`leader_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_leaderenrollment`
--

/*!40000 ALTER TABLE `enrollment_leaderenrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment_leaderenrollment` ENABLE KEYS */;

--
-- Table structure for table `enrollment_organizationcourse`
--

DROP TABLE IF EXISTS `enrollment_organizationcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_organizationcourse` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course_id` bigint NOT NULL,
  `organization_enrollment_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `description` longtext NOT NULL DEFAULT (_utf8mb3' '),
  `name` varchar(100) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `enrollment_organizat_course_id_7bcb4ddf_fk_course_co` (`course_id`),
  KEY `enrollment_organizat_organization_enrollm_7e6a46f1_fk_enrollmen` (`organization_enrollment_id`),
  CONSTRAINT `enrollment_organizat_course_id_7bcb4ddf_fk_course_co` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`),
  CONSTRAINT `enrollment_organizat_organization_enrollm_7e6a46f1_fk_enrollmen` FOREIGN KEY (`organization_enrollment_id`) REFERENCES `enrollment_organizationenrollment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_organizationcourse`
--

/*!40000 ALTER TABLE `enrollment_organizationcourse` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment_organizationcourse` ENABLE KEYS */;

--
-- Table structure for table `enrollment_organizationenrollment`
--

DROP TABLE IF EXISTS `enrollment_organizationenrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_organizationenrollment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `organization_id` bigint NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `end` datetime(6) NOT NULL,
  `start` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `enrollment_organizat_organization_id_67841b0e_fk_organizat` (`organization_id`),
  KEY `enrollment_organizationenrollment_is_active_10432dfe` (`is_active`),
  CONSTRAINT `enrollment_organizat_organization_id_67841b0e_fk_organizat` FOREIGN KEY (`organization_id`) REFERENCES `organization_organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_organizationenrollment`
--

/*!40000 ALTER TABLE `enrollment_organizationenrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment_organizationenrollment` ENABLE KEYS */;

--
-- Table structure for table `enrollment_period`
--

DROP TABLE IF EXISTS `enrollment_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_period` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `week_id` bigint NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `end` datetime(6) NOT NULL,
  `start` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `enrollment_period_week_id_24c74021_fk_enrollment_week_id` (`week_id`),
  KEY `enrollment_period_is_active_76c561bc` (`is_active`),
  CONSTRAINT `enrollment_period_week_id_24c74021_fk_enrollment_week_id` FOREIGN KEY (`week_id`) REFERENCES `enrollment_week` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_period`
--

/*!40000 ALTER TABLE `enrollment_period` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment_period` ENABLE KEYS */;

--
-- Table structure for table `enrollment_week`
--

DROP TABLE IF EXISTS `enrollment_week`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_week` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `facility_enrollment_id` bigint NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `end` datetime(6) NOT NULL,
  `start` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `enrollment_week_facility_enrollment__d9d61427_fk_enrollmen` (`facility_enrollment_id`),
  KEY `enrollment_week_is_active_c94ab67d` (`is_active`),
  CONSTRAINT `enrollment_week_facility_enrollment__d9d61427_fk_enrollmen` FOREIGN KEY (`facility_enrollment_id`) REFERENCES `enrollment_facilityenrollment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_week`
--

/*!40000 ALTER TABLE `enrollment_week` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment_week` ENABLE KEYS */;

--
-- Table structure for table `facility_department`
--

DROP TABLE IF EXISTS `facility_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `abbreviation` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `facility_id` bigint NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `facility_department_parent_id_b6d944a3_fk_facility_department_id` (`parent_id`),
  KEY `facility_department_facility_id_be0cca89_fk_facility_facility_id` (`facility_id`),
  CONSTRAINT `facility_department_facility_id_be0cca89_fk_facility_facility_id` FOREIGN KEY (`facility_id`) REFERENCES `facility_facility` (`id`),
  CONSTRAINT `facility_department_parent_id_b6d944a3_fk_facility_department_id` FOREIGN KEY (`parent_id`) REFERENCES `facility_department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_department`
--

/*!40000 ALTER TABLE `facility_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `facility_department` ENABLE KEYS */;

--
-- Table structure for table `facility_facility`
--

DROP TABLE IF EXISTS `facility_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_facility` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `organization_id` bigint NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `facility_facility_organization_id_343798cd_fk_organizat` (`organization_id`),
  CONSTRAINT `facility_facility_organization_id_343798cd_fk_organizat` FOREIGN KEY (`organization_id`) REFERENCES `organization_organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_facility`
--

/*!40000 ALTER TABLE `facility_facility` DISABLE KEYS */;
/*!40000 ALTER TABLE `facility_facility` ENABLE KEYS */;

--
-- Table structure for table `facility_facultyprofile`
--

DROP TABLE IF EXISTS `facility_facultyprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_facultyprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `facility_id` bigint DEFAULT NULL,
  `organization_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `enrollments_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `facility_facultyprof_facility_id_36e16977_fk_facility_` (`facility_id`),
  KEY `facility_facultyprof_organization_id_55ff6783_fk_organizat` (`organization_id`),
  KEY `facility_facultyprof_enrollments_id_257368e6_fk_enrollmen` (`enrollments_id`),
  CONSTRAINT `facility_facultyprof_enrollments_id_257368e6_fk_enrollmen` FOREIGN KEY (`enrollments_id`) REFERENCES `enrollment_facultyenrollment` (`id`),
  CONSTRAINT `facility_facultyprof_facility_id_36e16977_fk_facility_` FOREIGN KEY (`facility_id`) REFERENCES `facility_facility` (`id`),
  CONSTRAINT `facility_facultyprof_organization_id_55ff6783_fk_organizat` FOREIGN KEY (`organization_id`) REFERENCES `organization_organization` (`id`),
  CONSTRAINT `facility_facultyprofile_user_id_77608d86_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_facultyprofile`
--

/*!40000 ALTER TABLE `facility_facultyprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `facility_facultyprofile` ENABLE KEYS */;

--
-- Table structure for table `facility_quarters`
--

DROP TABLE IF EXISTS `facility_quarters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_quarters` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `capacity` int NOT NULL,
  `type_id` bigint NOT NULL,
  `facility_id` bigint NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `facility_quarters_facility_id_be8221ac_fk_facility_facility_id` (`facility_id`),
  KEY `facility_quarters_type_id_143fff12` (`type_id`),
  CONSTRAINT `facility_quarters_facility_id_be8221ac_fk_facility_facility_id` FOREIGN KEY (`facility_id`) REFERENCES `facility_facility` (`id`),
  CONSTRAINT `facility_quarters_type_id_143fff12_fk_facility_quarterstype_id` FOREIGN KEY (`type_id`) REFERENCES `facility_quarterstype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_quarters`
--

/*!40000 ALTER TABLE `facility_quarters` DISABLE KEYS */;
/*!40000 ALTER TABLE `facility_quarters` ENABLE KEYS */;

--
-- Table structure for table `facility_quarterstype`
--

DROP TABLE IF EXISTS `facility_quarterstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_quarterstype` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `organization_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `facility_quarterstyp_organization_id_590d923c_fk_organizat` (`organization_id`),
  CONSTRAINT `facility_quarterstyp_organization_id_590d923c_fk_organizat` FOREIGN KEY (`organization_id`) REFERENCES `organization_organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_quarterstype`
--

/*!40000 ALTER TABLE `facility_quarterstype` DISABLE KEYS */;
/*!40000 ALTER TABLE `facility_quarterstype` ENABLE KEYS */;

--
-- Table structure for table `faction_attendeeprofile`
--

DROP TABLE IF EXISTS `faction_attendeeprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faction_attendeeprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `organization_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `faction_id` bigint DEFAULT NULL,
  `enrollments_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `faction_attendeeprof_organization_id_ced6c64c_fk_organizat` (`organization_id`),
  KEY `faction_attendeeprof_faction_id_18589c89_fk_faction_f` (`faction_id`),
  KEY `faction_attendeeprof_enrollments_id_70d16473_fk_enrollmen` (`enrollments_id`),
  CONSTRAINT `faction_attendeeprof_enrollments_id_70d16473_fk_enrollmen` FOREIGN KEY (`enrollments_id`) REFERENCES `enrollment_attendeeenrollment` (`id`),
  CONSTRAINT `faction_attendeeprof_faction_id_18589c89_fk_faction_f` FOREIGN KEY (`faction_id`) REFERENCES `faction_faction` (`id`),
  CONSTRAINT `faction_attendeeprof_organization_id_ced6c64c_fk_organizat` FOREIGN KEY (`organization_id`) REFERENCES `organization_organization` (`id`),
  CONSTRAINT `faction_attendeeprofile_user_id_6b4e9ba2_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faction_attendeeprofile`
--

/*!40000 ALTER TABLE `faction_attendeeprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `faction_attendeeprofile` ENABLE KEYS */;

--
-- Table structure for table `faction_faction`
--

DROP TABLE IF EXISTS `faction_faction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faction_faction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `abbreviation` varchar(50) DEFAULT NULL,
  `organization_id` bigint NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `basemodelmixin_ptr_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  UNIQUE KEY `basemodelmixin_ptr_id` (`basemodelmixin_ptr_id`),
  KEY `faction_faction_organization_id_245d0767_fk_organizat` (`organization_id`),
  KEY `faction_faction_parent_id_f36060d8_fk_faction_faction_id` (`parent_id`),
  CONSTRAINT `faction_faction_basemodelmixin_ptr_i_443234cd_fk_pages_bas` FOREIGN KEY (`basemodelmixin_ptr_id`) REFERENCES `pages_basemodelmixin` (`id`),
  CONSTRAINT `faction_faction_organization_id_245d0767_fk_organizat` FOREIGN KEY (`organization_id`) REFERENCES `organization_organization` (`id`),
  CONSTRAINT `faction_faction_parent_id_f36060d8_fk_faction_faction_id` FOREIGN KEY (`parent_id`) REFERENCES `faction_faction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faction_faction`
--

/*!40000 ALTER TABLE `faction_faction` DISABLE KEYS */;
/*!40000 ALTER TABLE `faction_faction` ENABLE KEYS */;

--
-- Table structure for table `faction_leaderprofile`
--

DROP TABLE IF EXISTS `faction_leaderprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faction_leaderprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `faction_id` bigint DEFAULT NULL,
  `organization_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `faction_leaderprofile_faction_id_bf6aac36_fk_faction_faction_id` (`faction_id`),
  KEY `faction_leaderprofil_organization_id_33530ba4_fk_organizat` (`organization_id`),
  CONSTRAINT `faction_leaderprofil_organization_id_33530ba4_fk_organizat` FOREIGN KEY (`organization_id`) REFERENCES `organization_organization` (`id`),
  CONSTRAINT `faction_leaderprofile_faction_id_bf6aac36_fk_faction_faction_id` FOREIGN KEY (`faction_id`) REFERENCES `faction_faction` (`id`),
  CONSTRAINT `faction_leaderprofile_user_id_69e5df86_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faction_leaderprofile`
--

/*!40000 ALTER TABLE `faction_leaderprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `faction_leaderprofile` ENABLE KEYS */;

--
-- Table structure for table `organization_organization`
--

DROP TABLE IF EXISTS `organization_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization_organization` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `abbreviation` varchar(25) NOT NULL,
  `description` longtext NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `max_depth` int unsigned NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_modified` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `organization_organiz_parent_id_63fa691e_fk_organizat` (`parent_id`),
  CONSTRAINT `organization_organiz_parent_id_63fa691e_fk_organizat` FOREIGN KEY (`parent_id`) REFERENCES `organization_organization` (`id`),
  CONSTRAINT `organization_organization_chk_1` CHECK ((`max_depth` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_organization`
--

/*!40000 ALTER TABLE `organization_organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization_organization` ENABLE KEYS */;

--
-- Table structure for table `organization_organizationlabels`
--

DROP TABLE IF EXISTS `organization_organizationlabels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization_organizationlabels` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attendee_label` varchar(50) NOT NULL,
  `facility_label` varchar(50) NOT NULL,
  `sub_faction_label` varchar(50) NOT NULL,
  `faculty_label` varchar(50) NOT NULL,
  `leader_label` varchar(50) NOT NULL,
  `faculty_quarters_label` varchar(50) NOT NULL,
  `faction_quarters_label` varchar(50) NOT NULL,
  `leader_quarters_label` varchar(50) NOT NULL,
  `attendee_quarters_label` varchar(50) NOT NULL,
  `course_label` varchar(50) NOT NULL,
  `facility_enrollment_label` varchar(50) NOT NULL,
  `faction_enrollment_label` varchar(50) NOT NULL,
  `leader_enrollment_label` varchar(50) NOT NULL,
  `attendee_enrollment_label` varchar(50) NOT NULL,
  `attendee_class_enrollment_label` varchar(50) NOT NULL,
  `week_label` varchar(50) NOT NULL,
  `period_label` varchar(50) NOT NULL,
  `organization_id` bigint NOT NULL,
  `faction_label` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `organization_id` (`organization_id`),
  CONSTRAINT `organization_organiz_organization_id_275973ae_fk_organizat` FOREIGN KEY (`organization_id`) REFERENCES `organization_organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_organizationlabels`
--

/*!40000 ALTER TABLE `organization_organizationlabels` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization_organizationlabels` ENABLE KEYS */;

--
-- Table structure for table `pages_basemodelmixin`
--

DROP TABLE IF EXISTS `pages_basemodelmixin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_basemodelmixin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_basemodelmixin`
--

/*!40000 ALTER TABLE `pages_basemodelmixin` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_basemodelmixin` ENABLE KEYS */;

--
-- Table structure for table `pages_dashboardlayout`
--

DROP TABLE IF EXISTS `pages_dashboardlayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_dashboardlayout` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `layout` longtext NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `pages_dashboardlayout_user_id_bf493308_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_dashboardlayout`
--

/*!40000 ALTER TABLE `pages_dashboardlayout` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_dashboardlayout` ENABLE KEYS */;

--
-- Table structure for table `pages_menu`
--

DROP TABLE IF EXISTS `pages_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_menu`
--

/*!40000 ALTER TABLE `pages_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_menu` ENABLE KEYS */;

--
-- Table structure for table `pages_menu_items`
--

DROP TABLE IF EXISTS `pages_menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_menu_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `menu_id` bigint NOT NULL,
  `menuitem_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_menu_items_menu_id_menuitem_id_b94dd462_uniq` (`menu_id`,`menuitem_id`),
  KEY `pages_menu_items_menuitem_id_aa6a8403_fk_pages_menuitem_id` (`menuitem_id`),
  CONSTRAINT `pages_menu_items_menu_id_0d487489_fk_pages_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `pages_menu` (`id`),
  CONSTRAINT `pages_menu_items_menuitem_id_aa6a8403_fk_pages_menuitem_id` FOREIGN KEY (`menuitem_id`) REFERENCES `pages_menuitem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_menu_items`
--

/*!40000 ALTER TABLE `pages_menu_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_menu_items` ENABLE KEYS */;

--
-- Table structure for table `pages_menu_permissions`
--

DROP TABLE IF EXISTS `pages_menu_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_menu_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `menu_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_menu_permissions_menu_id_permission_id_4b79c0bc_uniq` (`menu_id`,`permission_id`),
  KEY `pages_menu_permissio_permission_id_3667cbf2_fk_auth_perm` (`permission_id`),
  CONSTRAINT `pages_menu_permissio_permission_id_3667cbf2_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `pages_menu_permissions_menu_id_1b1dc699_fk_pages_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `pages_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_menu_permissions`
--

/*!40000 ALTER TABLE `pages_menu_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_menu_permissions` ENABLE KEYS */;

--
-- Table structure for table `pages_menuitem`
--

DROP TABLE IF EXISTS `pages_menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_menuitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `url_name` varchar(100) DEFAULT NULL,
  `visible_to` varchar(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `css_class` varchar(100) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `url_params` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_menuitem_parent_id_db997f07_fk_pages_menuitem_id` (`parent_id`),
  CONSTRAINT `pages_menuitem_parent_id_db997f07_fk_pages_menuitem_id` FOREIGN KEY (`parent_id`) REFERENCES `pages_menuitem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_menuitem`
--

/*!40000 ALTER TABLE `pages_menuitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_menuitem` ENABLE KEYS */;

--
-- Table structure for table `pages_menuitem_permissions`
--

DROP TABLE IF EXISTS `pages_menuitem_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_menuitem_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `menuitem_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_menuitem_permissio_menuitem_id_permission_i_cc9aaf5f_uniq` (`menuitem_id`,`permission_id`),
  KEY `pages_menuitem_permi_permission_id_e251fe3a_fk_auth_perm` (`permission_id`),
  CONSTRAINT `pages_menuitem_permi_menuitem_id_303ec576_fk_pages_men` FOREIGN KEY (`menuitem_id`) REFERENCES `pages_menuitem` (`id`),
  CONSTRAINT `pages_menuitem_permi_permission_id_e251fe3a_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_menuitem_permissions`
--

/*!40000 ALTER TABLE `pages_menuitem_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_menuitem_permissions` ENABLE KEYS */;

--
-- Table structure for table `pages_message`
--

DROP TABLE IF EXISTS `pages_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `read` tinyint(1) NOT NULL,
  `receiver_id` bigint NOT NULL,
  `sender_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_message_receiver_id_d05d2636_fk_user_user_id` (`receiver_id`),
  KEY `pages_message_sender_id_88e9ce1d_fk_user_user_id` (`sender_id`),
  CONSTRAINT `pages_message_receiver_id_d05d2636_fk_user_user_id` FOREIGN KEY (`receiver_id`) REFERENCES `user_user` (`id`),
  CONSTRAINT `pages_message_sender_id_88e9ce1d_fk_user_user_id` FOREIGN KEY (`sender_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_message`
--

/*!40000 ALTER TABLE `pages_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_message` ENABLE KEYS */;

--
-- Table structure for table `pages_notification`
--

DROP TABLE IF EXISTS `pages_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `read` tinyint(1) NOT NULL,
  `message_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_notification_message_id_05b8d6c5_fk_pages_message_id` (`message_id`),
  KEY `pages_notification_user_id_1e0ae457_fk_user_user_id` (`user_id`),
  CONSTRAINT `pages_notification_message_id_05b8d6c5_fk_pages_message_id` FOREIGN KEY (`message_id`) REFERENCES `pages_message` (`id`),
  CONSTRAINT `pages_notification_user_id_1e0ae457_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_notification`
--

/*!40000 ALTER TABLE `pages_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_notification` ENABLE KEYS */;

--
-- Table structure for table `taggit_tag`
--

DROP TABLE IF EXISTS `taggit_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taggit_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_tag`
--

/*!40000 ALTER TABLE `taggit_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggit_tag` ENABLE KEYS */;

--
-- Table structure for table `taggit_taggeditem`
--

DROP TABLE IF EXISTS `taggit_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taggit_taggeditem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int NOT NULL,
  `content_type_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggit_taggeditem_content_type_id_object_id_tag_id_4bb97a8e_uniq` (`content_type_id`,`object_id`,`tag_id`),
  KEY `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` (`tag_id`),
  KEY `taggit_taggeditem_object_id_e2d7d1df` (`object_id`),
  KEY `taggit_tagg_content_8fc721_idx` (`content_type_id`,`object_id`),
  CONSTRAINT `taggit_taggeditem_content_type_id_9957a03c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_taggeditem`
--

/*!40000 ALTER TABLE `taggit_taggeditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggit_taggeditem` ENABLE KEYS */;

--
-- Table structure for table `user_user`
--

DROP TABLE IF EXISTS `user_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user`
--

/*!40000 ALTER TABLE `user_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user` ENABLE KEYS */;

--
-- Table structure for table `user_user_groups`
--

DROP TABLE IF EXISTS `user_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_user_groups_user_id_group_id_bb60391f_uniq` (`user_id`,`group_id`),
  KEY `user_user_groups_group_id_c57f13c0_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_user_groups_group_id_c57f13c0_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_user_groups_user_id_13f9a20d_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_groups`
--

/*!40000 ALTER TABLE `user_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user_groups` ENABLE KEYS */;

--
-- Table structure for table `user_user_user_permissions`
--

DROP TABLE IF EXISTS `user_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq` (`user_id`,`permission_id`),
  KEY `user_user_user_permi_permission_id_ce49d4de_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_user_user_permi_permission_id_ce49d4de_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_user_user_permissions_user_id_31782f58_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_user_permissions`
--

/*!40000 ALTER TABLE `user_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user_user_permissions` ENABLE KEYS */;

--
-- Dumping routines for database 'scss_django'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-10  8:38:02
