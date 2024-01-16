-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.31

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add review rating',9,'add_reviewrating'),(34,'Can change review rating',9,'change_reviewrating'),(35,'Can delete review rating',9,'delete_reviewrating'),(36,'Can view review rating',9,'view_reviewrating'),(37,'Can add customer',10,'add_customer'),(38,'Can change customer',10,'change_customer'),(39,'Can delete customer',10,'delete_customer'),(40,'Can view customer',10,'view_customer'),(41,'Can add contact',11,'add_contact'),(42,'Can change contact',11,'change_contact'),(43,'Can delete contact',11,'delete_contact'),(44,'Can view contact',11,'view_contact'),(45,'Can add order item',12,'add_orderitem'),(46,'Can change order item',12,'change_orderitem'),(47,'Can delete order item',12,'delete_orderitem'),(48,'Can view order item',12,'view_orderitem'),(49,'Can add order',13,'add_order'),(50,'Can change order',13,'change_order'),(51,'Can delete order',13,'delete_order'),(52,'Can view order',13,'view_order');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$CzVbhxkePsTkgSQwasLqm8$NQNBA8UZ4FlezcgL9fTuomr7lRcu1sSaZOuVD7cqF9s=','2023-05-27 08:12:37.570599',0,'admin','','','admin@gmail.com',0,1,'2023-05-25 16:19:21.492816'),(2,'pbkdf2_sha256$390000$95AXwTW6TDh6oVNrpVIEdI$VWNXBubDLxGGuo5OGjG/TGMzIkseujfaZ234cZ6tu2o=','2023-05-28 11:52:26.444216',1,'thanhphong','','','thanhphong@gmail.com',1,1,'2023-05-25 16:26:24.535104');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_order`
--

DROP TABLE IF EXISTS `cart_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `start_date` datetime(6) NOT NULL,
  `ordered_date` datetime(6) NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_order_user_id_279b5d53_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cart_order_user_id_279b5d53_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_order`
--

LOCK TABLES `cart_order` WRITE;
/*!40000 ALTER TABLE `cart_order` DISABLE KEYS */;
INSERT INTO `cart_order` VALUES (2,'2023-05-27 08:45:04.723955','2023-05-27 08:45:04.723402',1,1),(3,'2023-05-27 11:54:10.902640','2023-05-27 11:54:10.901906',0,1);
/*!40000 ALTER TABLE `cart_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_order_items`
--

DROP TABLE IF EXISTS `cart_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_order_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `orderitem_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cart_order_items_order_id_orderitem_id_01268049_uniq` (`order_id`,`orderitem_id`),
  KEY `cart_order_items_orderitem_id_8299cf1c_fk_cart_orderitem_id` (`orderitem_id`),
  CONSTRAINT `cart_order_items_order_id_2b44e945_fk_cart_order_id` FOREIGN KEY (`order_id`) REFERENCES `cart_order` (`id`),
  CONSTRAINT `cart_order_items_orderitem_id_8299cf1c_fk_cart_orderitem_id` FOREIGN KEY (`orderitem_id`) REFERENCES `cart_orderitem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_order_items`
--

LOCK TABLES `cart_order_items` WRITE;
/*!40000 ALTER TABLE `cart_order_items` DISABLE KEYS */;
INSERT INTO `cart_order_items` VALUES (5,2,5),(6,3,2);
/*!40000 ALTER TABLE `cart_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_orderitem`
--

DROP TABLE IF EXISTS `cart_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_orderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ordered` tinyint(1) NOT NULL,
  `quantity` int NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_orderitem_product_id_7e8cb6d7_fk_store_product_id` (`product_id`),
  KEY `cart_orderitem_user_id_f36b1cee_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cart_orderitem_product_id_7e8cb6d7_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  CONSTRAINT `cart_orderitem_user_id_f36b1cee_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_orderitem`
--

LOCK TABLES `cart_orderitem` WRITE;
/*!40000 ALTER TABLE `cart_orderitem` DISABLE KEYS */;
INSERT INTO `cart_orderitem` VALUES (2,0,1,1,1),(3,0,1,6,1),(4,0,1,2,1),(5,0,1,3,1);
/*!40000 ALTER TABLE `cart_orderitem` ENABLE KEYS */;
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
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-05-25 16:35:35.253772','1','Điện thoại',1,'[{\"added\": {}}]',7,2),(2,'2023-05-25 16:35:37.287896','1','Điện thoại',2,'[]',7,2),(3,'2023-05-25 16:35:50.585930','2','Máy tính',1,'[{\"added\": {}}]',7,2),(4,'2023-05-25 16:36:16.942212','3','Phụ kiện',1,'[{\"added\": {}}]',7,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(13,'cart','order'),(12,'cart','orderitem'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'store','category'),(11,'store','contact'),(10,'store','customer'),(8,'store','product'),(9,'store','reviewrating');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-05-25 00:52:06.235833'),(2,'auth','0001_initial','2023-05-25 00:52:06.325584'),(3,'admin','0001_initial','2023-05-25 00:52:06.348571'),(4,'admin','0002_logentry_remove_auto_add','2023-05-25 00:52:06.352079'),(5,'admin','0003_logentry_add_action_flag_choices','2023-05-25 00:52:06.355812'),(6,'contenttypes','0002_remove_content_type_name','2023-05-25 00:52:06.373461'),(7,'auth','0002_alter_permission_name_max_length','2023-05-25 00:52:06.386958'),(8,'auth','0003_alter_user_email_max_length','2023-05-25 00:52:06.395891'),(9,'auth','0004_alter_user_username_opts','2023-05-25 00:52:06.399742'),(10,'auth','0005_alter_user_last_login_null','2023-05-25 00:52:06.411266'),(11,'auth','0006_require_contenttypes_0002','2023-05-25 00:52:06.412371'),(12,'auth','0007_alter_validators_add_error_messages','2023-05-25 00:52:06.416230'),(13,'auth','0008_alter_user_username_max_length','2023-05-25 00:52:06.430880'),(14,'auth','0009_alter_user_last_name_max_length','2023-05-25 00:52:06.445044'),(15,'auth','0010_alter_group_name_max_length','2023-05-25 00:52:06.451859'),(16,'auth','0011_update_proxy_permissions','2023-05-25 00:52:06.455558'),(17,'auth','0012_alter_user_first_name_max_length','2023-05-25 00:52:06.468341'),(18,'store','0001_initial','2023-05-25 00:52:06.544779'),(19,'cart','0001_initial','2023-05-25 00:52:06.605155'),(20,'sessions','0001_initial','2023-05-25 00:52:06.614414'),(21,'store','0002_remove_contact_user','2023-05-25 00:52:06.633450'),(22,'store','0003_alter_contact_phone_contact','2023-05-25 00:52:06.645519'),(23,'store','0004_alter_contact_phone_contact','2023-05-25 00:52:06.652874');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('24ulgt5168zillao22b33zvcc13of49b','.eJxVjEEOwiAQRe_C2pCWMgVcuvcMZGBmpGpoUtqV8e7apAvd_vfef6mI21ri1niJE6mzMur0uyXMD647oDvW26zzXNdlSnpX9EGbvs7Ez8vh_h0UbOVbJ5aRMho_irPWswEIQ8-WoEuDDSgAOXXiXUYEocAiFri3HpML7ES9P_-nOOE:1q2rxK:6IS6CKqjvV9jjo-VYB2sLetwupruwzXXPu40lOtf71A','2023-06-10 11:19:30.967197'),('dkis74cjvp8vm3rd9qj1f1wdfhtase9g','.eJxVjDsOwjAQBe_iGllOFv8o6XMGa-1d4wCypTipEHeHSCmgfTPzXiLgtpawdV7CTOIiBnH63SKmB9cd0B3rrcnU6rrMUe6KPGiXUyN-Xg_376BgL9-ak9IZLGSKaLRS3iarLTszMqkIGc5EfswRouVBO22cMo7RA_uUsyfx_gDtsDhS:1q2p2T:_Y6fS0Q0nxD7ZDyAWwrTvWXOvDowOgHW9XCmW5Fwu-A','2023-06-10 08:12:37.571723'),('n0j3ktx07uiks8jl96ikrzsw0o9ji31i','.eJxVjDsOwjAQBe_iGllOFv8o6XMGa-1d4wCypTipEHeHSCmgfTPzXiLgtpawdV7CTOIiBnH63SKmB9cd0B3rrcnU6rrMUe6KPGiXUyN-Xg_376BgL9-ak9IZLGSKaLRS3iarLTszMqkIGc5EfswRouVBO22cMo7RA_uUsyfx_gDtsDhS:1q2Evw:vUAj58BlOXND7qZMOV7fBoNbUnmMLG-HK2FMeyZV3Co','2023-06-08 17:39:28.668150'),('pc7wb51hp7lz1hhu722i4fkaoat3lkmf','.eJxVjEEOwiAQRe_C2pCWMgVcuvcMZGBmpGpoUtqV8e7apAvd_vfef6mI21ri1niJE6mzMur0uyXMD647oDvW26zzXNdlSnpX9EGbvs7Ez8vh_h0UbOVbJ5aRMho_irPWswEIQ8-WoEuDDSgAOXXiXUYEocAiFri3HpML7ES9P_-nOOE:1q3Ewk:7jJsFbnMSbVsSzPx66ieXdXq8a2TJ2IXS3Y6nTKgunw','2023-06-11 11:52:26.445290'),('zrlsz9bhtgntv3j6y890kdt9pcteox1c','.eJxVjEEOwiAQRe_C2pCWMgVcuvcMZGBmpGpoUtqV8e7apAvd_vfef6mI21ri1niJE6mzMur0uyXMD647oDvW26zzXNdlSnpX9EGbvs7Ez8vh_h0UbOVbJ5aRMho_irPWswEIQ8-WoEuDDSgAOXXiXUYEocAiFri3HpML7ES9P_-nOOE:1q3Epm:v-PdtK3hHjvMpL-Pu46Gjcec4lBEeitENck3ljnnrfc','2023-06-11 11:45:14.800460');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_category`
--

DROP TABLE IF EXISTS `store_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_name` (`category_name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_category`
--

LOCK TABLES `store_category` WRITE;
/*!40000 ALTER TABLE `store_category` DISABLE KEYS */;
INSERT INTO `store_category` VALUES (1,'Điện thoại','phone'),(2,'Máy tính','computer'),(3,'Phụ kiện','phu-kien');
/*!40000 ALTER TABLE `store_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_contact`
--

DROP TABLE IF EXISTS `store_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name_contact` varchar(100) NOT NULL,
  `email_contact` longtext NOT NULL,
  `phone_contact` varchar(15) NOT NULL,
  `comment_contact` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_contact`
--

LOCK TABLES `store_contact` WRITE;
/*!40000 ALTER TABLE `store_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_customer`
--

DROP TABLE IF EXISTS `store_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `phone_field` varchar(13) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `store_customer_user_id_04276401_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_customer`
--

LOCK TABLES `store_customer` WRITE;
/*!40000 ALTER TABLE `store_customer` DISABLE KEYS */;
INSERT INTO `store_customer` VALUES (1,'0348482493',1);
/*!40000 ALTER TABLE `store_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `desc` longtext NOT NULL,
  `price` int unsigned NOT NULL,
  `product_availabale_count` int NOT NULL,
  `img` varchar(100) NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`),
  CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`),
  CONSTRAINT `store_product_chk_1` CHECK ((`price` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product`
--

LOCK TABLES `store_product` WRITE;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
INSERT INTO `store_product` VALUES (1,'iPhone 14 Pro Max','iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.\r\nThiết kế cao cấp bền bỉ\r\niPhone năm nay sẽ được thừa hưởng nét đặc trưng từ người anh iPhone 13 Pro Max, vẫn sẽ là khung thép không gỉ và mặt lưng kính cường lực kết hợp với tạo hình vuông vức hiện đại thông qua cách tạo hình phẳng ở các cạnh và phần mặt lưng.\r\n\r\nThiết kế sang trọng - iPhone 14 Pro Max 128GB\r\n\r\nDòng Pro năm nay được ra mắt với nhiều tùy chọn màu sắc và trong đó nổi bật nhất có lẽ là phiên bản Deep Purple (tím), bởi vì đây là một màu mới nên mang lại độ nhận diện khá cao.\r\n\r\nMàu sắc mới mẻ - iPhone 14 Pro Max 128GB\r\n\r\nNổi bật với thiết kế màn hình mới\r\nĐiểm ấn tượng nhất trên điện thoại iPhone năm nay nằm ở thiết kế màn hình, có thể dễ dàng nhận thấy được là hãng cũng đã loại bỏ cụm tai thỏ truyền thống qua bao đời iPhone bằng một hình dáng mới vô cùng lạ mắt.\r\n\r\nThiết kế hình notch mới - iPhone 14 Pro Max 128GB\r\n\r\nSo với cụm tai thỏ hình notch năm nay đã có phần tiết kiệm diện tích tương đối tốt, nhưng khi so với các kiểu màn hình dạng “nốt ruồi” thì đây vẫn chưa thực sự là một điều quá tối ưu cho phần màn hình. Thế nhưng Apple lại rất biết cách tận dụng những nhược điểm để biến chúng trở thành ưu điểm một cách ngoạn mục bằng cách phát minh nhiều hiệu ứng thú vị.\r\n\r\nKích thước nhỏ gọn - iPhone 14 Pro Max 128GB\r\n\r\nĐể làm cho chúng trở nên bắt mắt hơn Apple cũng đã giới thiệu nhiều hiệu ứng chuyển động nhằm làm tăng sự thích thú cho người dùng, điều này được kích hoạt trong lúc mình ấn giữ phần hình notch khi đang dùng các phần mềm hỗ trợ như: Nghe nhạc, đồng hồ hẹn giờ, ghi âm,...\r\n\r\nHiệu ứng sinh động - iPhone 14 Pro Max 128GB\r\n\r\nHiển thị nội dung chân thực hơn thông qua màn hình chất lượng\r\nTừ trước đến nay, tấm nền OLED luôn được cộng đồng người dùng đánh giá rất cao khi xuất hiện trên các dòng sản phẩm của Apple, với chiếc iPhone 14 Pro Max điều này cũng không là ngoại lệ khi hình ảnh mà máy mang lại hết sức chân thực.\r\n\r\nMàn hình cao cấp - iPhone 14 Pro Max 128GB\r\n\r\nNhìn vào màn hình ta sẽ thấy được một độ trong trẻo vô cùng thích mắt, nội dung hiển thị có chiều sâu, cảm giác khi xem phim hay chơi game cũng trở nên sống động hơn.\r\n\r\nĐiểm vượt trội nhất mà các loại tấm nền khác khó mà đạt được là độ chuẩn các về màu sắc cao, mình cũng đã sử dụng iPhone 14 Pro Max để thiết kế một vài ấn phẩm như poster hay sticker đơn giản và thành quả lúc in ra sau khi đối chiếu lại với ảnh trên điện thoại thì gần như là bằng nhau, độ sai lệch không quá đáng kể giúp mình an tâm hơn trong việc thiết kế hình ảnh.\r\n\r\nĐộ chuẩn xác về màu cao - iPhone 14 Pro Max 128GB\r\n\r\nĐộ phân giải màn hình đạt mức 2796 x 1290 Pixels nên việc tái tạo hình ảnh có độ chi tiết cao là điều hết sức dễ dàng, hiện tượng như rỗ màn hình là điều mà mình chưa từng thấy xuất hiện trên điện thoại trong 2 tuần trải nghiệm.\r\n\r\nĐộ chi tiết cực lớn - iPhone 14 Pro Max 128GB\r\n\r\nHỗ trợ tính năng Always On Display\r\nBên cạnh sự đổi mới về hình notch, năm nay Apple còn trang bị cho dòng Pro và Pro Max thêm công nghệ màn hình Always On Display, điều này cho phép thiết bị không tắt màn hình hẳn mà vẫn hiển thị màn hình khóa với một độ sáng khá nhỏ, đủ để mình có thể đọc thông báo nhanh xem ngày giờ khá thuận tiện.\r\n\r\nXem thêm: Always On Display là gì? Có tốn pin không? Cách bật, tắt\r\n\r\nTÍnh năng trên màn hình - iPhone 14 Pro Max 128GB\r\n\r\nTuy nhiên màn hình lúc này khá tối nên dùng ngoài trời sẽ hơi khó nhìn đôi chút. Bên cạnh đó, tính năng này cũng sẽ giảm tuổi thọ pin hơn so với thông thường, để điện thoại qua đêm khoảng 7 tiếng ở chế độ Always On Display thì máy mất khoảng 3 - 4% dung lượng pin.\r\n\r\nTần số quét 120 Hz\r\niPhone 14 Pro Max có tần số quét rất cao vậy nên mọi thao tác hằng ngày của mình đều được phản hồi nhanh chóng, cảm giác vuốt chạm cũng trở nên thích hơn, hiện tượng khựng hay độ trễ trong lúc vuốt đã được cải thiện đáng kể so với những chuẩn màn hình 60 Hz.\r\n\r\nVuốt chạm mượt mà - iPhone 14 Pro Max 128GB\r\n\r\nNgoài ra, Apple còn bổ sung tùy chọn để giúp bạn có thể dễ dàng điều chỉnh tần số quét lên 120 Hz hay xuống 60 Hz tùy vào nhu cầu sử dụng, phù hợp để dùng trong những tình huống khẩn cấp như đang muốn tiết kiệm pin nhằm đảm bảo thiết bị có thể duy trì sử dụng dài lâu.\r\n\r\nĐộ sáng 2000 nits\r\nSo với những đối thủ khác trong phân khúc thì độ sáng 2000 nits được xem là ưu điểm vượt trội mà ít có hãng nào có thể sánh kịp, thế liệu nó giúp ích được gì và có thực sự hiệu quả hay không chắc hẳn là điều được rất nhiều người thắc mắc.\r\n\r\nĐộ sáng màn hình cao - iPhone 14 Pro Max 128GB\r\n\r\nCụ thể là màn hình có độ sáng cao đã giúp ích cho mình rất nhiều trong mọi nhu cầu sử dụng hằng ngày của mình, kể từ khi sử dụng iPhone 14 Pro Max việc xem bản đồ khi đang ở ngoài đường lúc trời nắng gắt cũng trở nên dễ dàng, màn hình lúc này không quá sập tối hay lóa, các thông báo chỉ dẫn đường đi cũng đều được thể hiện rõ ràng.\r\n\r\nĐộ sáng màn hình cao - iPhone 14 Pro Max 128GB\r\n\r\nBên cạnh đó, khi chụp ảnh ở ngoài trời nắng độ sáng màn hình cao cũng sẽ là một lợi thế, nó hữu ích trong lúc mình căn chỉnh góc chụp khi mọi đường lưới đều được hiển thị rõ, chủ thể đã được lấy nét hay chưa thì mình cũng có thể dễ dàng quan sát trực tiếp ngay trên màn hình mà không cần dùng tay để che chắn ánh sáng chiếu vào như phần lớn các dòng điện thoại khác.\r\n\r\nMặt kính cường lực Ceramic Shield\r\nCeramic Shield có lẽ không còn là thuật ngữ quá xa lạ đối với phần lớn người dùng khi đây được xem là loại công nghệ đã từng xuất hiện ở thế hệ iPhone 12, chuẩn này nổi tiếng với độ bền bỉ cực cao và khả năng kháng lại vết xước rất tốt.\r\n\r\nThực tế, mình đã kiểm tra độ bền của mặt kính này thông qua việc xây xát các loại vật dụng khác dễ tiếp xúc như: Móc khóa, đầu dây sạc, bút bi và cả gọng kính. Kết quả mà mình nhận được cũng hết sức ấn tượng, màn hình gần như không bị tổn hại khi không thấy xuất hiện của bất kỳ một vết xước nào cả.\r\n\r\nMặt kính kháng xước - iPhone 14 Pro Max 128GB\r\n\r\nTuy nhiên đây cũng là một bài kiểm tra nên lực dùng để xây xát là không quá lớn, vì thế người dùng cũng không nên quá chủ quan trước những tình huống làm rơi. Điều này chỉ giúp mình an tâm hơn trong việc đặt úp điện thoại lên mặt phẳng hay để cùng với các loại vật dụng khác mà không lo bị trầy xước.\r\n\r\nBắt trọn mọi khoảnh khắc thông qua camera chính 48 MP\r\nẢnh chụp chế độ thường\r\nTrước khi đi vào phần đánh giá trải nghiệm mình cùng điểm sơ qua thông số camera của iPhone 14 Pro Max, thiết bị năm nay vẫn sẽ được bố trí với cụm 3 camera, trong đó cảm biến chính có độ phân giải 48 MP, cảm biến góc rộng 12 MP và cuối cùng là ống kính tele 12 MP. Với thông số ấn tượng như vậy nên máy hứa hẹn sẽ trở thành điện thoại chụp ảnh, quay phim hàng đầu trong năm 2022.\r\n\r\nẢnh chụp từ điều kiện thường cho ra kết quả làm mình rất ưng ý, hình ảnh được tái tạo với độ chi tiết cao, màu sắc hiển thị rất chân thực, ảnh khi zoom sẽ không bị bể quá nhiều giúp cho tác vụ phóng to hay thay đổi khung hình không bị thay đổi quá nhiều về mặt chất lượng.\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro Max 128GB\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro Max 128GB\r\n\r\nĐiểm ưng ý nhất về phần camera chính là về khả năng cân bằng màu cực tốt, chất lượng ảnh cho ra có gam màu trung tính, không xảy ra hiện tượng ám vàng hay ám xanh như trên một vài chiếc smartphone của những đối thủ khác trên thị trường. Điều này giúp việc chỉnh sửa ảnh trở nên dễ dàng hơn bởi mình không cần tinh chỉnh sắc độ để đưa chúng về màu ban đầu nữa.\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro Max 128GB\r\n\r\nẢnh chụp góc siêu rộng\r\nCòn đối với chế độ chụp góc siêu rộng thông qua cảm biến phụ 12 MP kết quả thu được làm mình rất ưng ý, bức ảnh chụp vẫn có độ chi tiết cao, mọi khung cảnh trước mắt mình gần như được đưa hết vào trong bức ảnh, những vùng mở rộng cũng không hề bị bóp méo hay giảm chất lượng ảnh giúp cho tổng thể bức hình trở nên rất chất lượng.\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro Max 128GB\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro Max 128GB\r\n\r\nẢnh chụp ngược sáng\r\nBị tối mặt hay lóa sáng được xem là tình huống phổ biến đối với các smartphone thông thường, thế nhưng trên chiếc iPhone 14 Pro Max thì điều này đã được cải thiện đi đáng kể thông qua tính năng Smart HDR 4.\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro Max 128GB\r\n\r\nKhi đối mặt với những nguồn có độ sáng cao điện thoại sẽ tự động nhận diện chủ thể và khung cảnh, từ đó tăng sáng những vùng cần lấy nét tập trung và giảm độ sáng cho những vị trí còn lại để giúp cho bức ảnh của mình trở nên dễ nhìn hơn, ngoài ra nó còn giúp cho bức ảnh của mình được tăng thêm phần nghệ thuật.\r\n\r\nẢnh chụp tele\r\nỞ chế độ chụp tele điện thoại hỗ trợ cho chúng ta khá nhiều mức độ điều chỉnh từ 2X, 3X cho đến 5X và 10X,...Tuy nhiên máy sẽ chỉ hỗ trợ zoom quang học tối đa lên đến 3X và với các mức độ lớn hơn thì điện thoại sẽ chuyển sang chế độ zoom kỹ thuật số.\r\n\r\nẢnh chụp từ chế độ zoom quang học máy sẽ sử dụng một camera riêng biệt có độ phân giải 12 MP để lấy nét, chất lượng ảnh cho ra vẫn sẽ có độ chi tiết cao, mọi thứ được lưu giữ gần như nguyên bản và không mấy khác biệt so với những bức ảnh chụp từ chế độ mặc định, tuy nhiên để tránh hiểu lầm thì đây cũng chỉ là một ví dụ so sánh nếu như không soi xét quá kỹ về tỷ lệ độ phân giải của cả hai.\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro Max 128GB\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro Max 128GB\r\n\r\nCòn ở bức ảnh chụp từ tính năng zoom kỹ thuật số bức ảnh mà mình có chụp được vẫn khá ổn, ở đây camera của điện thoại sẽ làm việc với nguyên lý tương tự như bạn đang crop bức ảnh của mình với khung hình và tỷ lệ nhỏ hơn, vì thế chất lượng ảnh sẽ có phần kém hơn so với chụp mặc định.\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro Max 128GB\r\n\r\nNhưng nhờ camera chính có độ phân giải lớn và độ chi tiết thu được khá cao, cho nên khi chụp bằng chế độ zoom kỹ thuật số thì ảnh vẫn có độ chi tiết tốt, mọi vật thể và khung cảnh đều được thu lại tương đối rõ ràng.\r\n\r\nẢnh chụp khung cảnh nhiều màu sắc\r\nNăm nay thì Apple truyền thông khá nhiều về các tính năng phụ cũng như loại công nghệ trên camera của iPhone 14 Pro Max, được nhắc đến nhiều có lẽ là những cái tên như: Deep Fusion, Smart HDR 4 và Dolby Vision HDR.\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro Max 128GB\r\n\r\nĐây được xem là những loại công nghệ gần như chưa có mặt trên bất kỳ một chiếc điện thoại Android nào cả, vậy nên đây chính là lợi thế vượt trội mà mình đánh giá rất cao trên camera của iPhone 14 Pro Max.\r\n\r\nThực tế thì ảnh chụp của điện thoại cho ra có màu rất giống so với ngoài đời thật, độ chi tiết cực cao, những vùng có màu sắc riêng biệt không thấy xảy ra tình trạng pha trộn lẫn nhau, tổng thể bức ảnh làm cho mình có cảm giác nhìn rất đã mắt.\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro Max 128GB\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro Max 128GB\r\n\r\nBởi vì được hỗ trợ tính năng Deep Fusion nên máy có khả năng chụp tổng cộng là 9 tấm trong quá trình mình chụp một bức hình, từ đó máy sẽ tự động phân tích để đưa ra bức hình có độ chi tiết cũng như chất lượng tốt nhất để hiển thị. Vậy nên trong khúc chụp mình có xảy ra tình trạng run tay nhẹ thì ảnh cho ra vẫn không hề bị nhòe hay mất nét.\r\n\r\nHiệu năng đáng kinh ngạc với chip set Apple A16 Bionic\r\nTheo thông lệ từ trước đến nay của Apple thì mỗi lần ra mắt dòng điện thoại mới là nhà táo lại trình làng thêm một con chip với hiệu năng cực khủng và ở thế hệ điện iPhone 14 Series sẽ là con chip Apple A16 Bionic 6 nhân với xung nhịp tối đa lên đến 3.46 GHz.\r\n\r\nXem thêm: Đánh giá chip Apple A16 Bionic chi tiết về thông số và hiệu năng\r\n\r\nTheo như thông số mình đo được qua các phần mềm con chip Apple A16 Bionic đạt được mức điểm như sau: 1887 (đơn nhân), 5354 (đa nhân) trên Benchmark và 15508 điểm đánh giá tổng thể. Đây quả thực là những con số quá khủng khiếp, dường như chip đã vượt mặt gần như toàn bộ các vi xử lý hiện đang có mặt trên thị trường di động trong năm 2022.\r\n\r\nHiệu năng mạnh mẽ - iPhone 14 Pro Max 128GB\r\n\r\nBởi vì cầm trên tay một chiếc máy có hiệu năng vô đối như vậy cho nên mình cũng đã tự tin mở ngay Genshin Impact với mức đồ họa cao nhất để trải nghiệm, chất lượng hình ảnh cho ra phải nói là vô cùng đẹp mắt, mọi hiệu ứng đồ họa trong game đều được tái hiện rõ nét, các pha hành động như đánh nhau, tung chiêu đều được thể hiện mượt mà và ổn định.\r\n\r\nHiệu năng mạnh mẽ - iPhone 14 Pro Max 128GB\r\n\r\nBên cạnh đó, đây còn là một chiếc điện thoại RAM 6 GB cho nên các thao tác về phần đa nhiệm đều được máy xử lý dễ dàng, dùng đồng thời nhiều ứng dụng cũng không hề xảy ra tình trạng khựng hay load lại từ đầu mỗi khi mình mở lại.\r\n\r\nỞ phiên bản này điện thoại sẽ được tích hợp sẵn hệ điều hành iOS 16 kể từ khi kích hoạt máy, được bổ sung hàng loạt các tính năng mới mẻ nên mình cảm thấy rất là hứng khởi trong quá trình trải nghiệm máy.\r\n\r\nHiệu năng mạnh mẽ - iPhone 14 Pro Max 128GB\r\n\r\nNhững tính năng nổi bật và cực kỳ hữu ích trên iOS 16 có thể kể đến như: Tùy chỉnh màn hình khóa, thêm widget mới cho màn hình khóa, Live Text, tách nền ảnh,... đều được mình sử dụng hằng ngày một cách tiện lợi cho công việc và kể cả những nhu cầu giải trí.\r\n\r\nBên trong điện thoại sẽ được tích hợp viên pin có dung lượng lên tới 4323 mAh nên mình cũng đã an tâm hơn trong việc sử dụng máy phục vụ các tác vụ cơ bản cả ngày. Cụ thể là trong một ngày trải nghiệm máy mình đã mất khoảng 7 giờ 23 phút sử dụng liên tục để có thể dùng hết 100% pin trên điện thoại.\r\n\r\nPin trâu dùng lâu - iPhone 14 Pro Max 128GB\r\n\r\nVới những bạn đang mong muốn có cho mình một thiết bị có ngoại hình đẹp, hiệu năng cao và kể cả chụp ảnh quay phim chuyên nghiệm thì iPhone 14 Pro Max có thể coi là sự lựa chọn rất phù hợp cho năm 2022 và 2023 sắp tới. So với những gì mà thiết bị mang lại cho chúng ta thì mức giá bán của điện thoại được xem là cực kỳ xứng đáng.',26490000,10,'product/iphone-14-pro-max-purple-1.jpg',1,'2023-05-25 16:39:46.467270',1),(2,'Samsung Galaxy A24','Samsung Galaxy A24 6GB tiếp tục sẽ là mẫu điện thoại tầm trung được nhà Samsung giới thiệu đến thị trường Việt Nam vào tháng 04/2023, máy nổi bật với giá thành rẻ, màn hình Super AMOLED cùng camera 50 MP chụp ảnh sắc nét.\r\nThiết kế hiện đại với tạo hình vuông vắn\r\nGalaxy A24 được lấy cảm hứng thiết kế đến từ những mẫu điện thoại Galaxy dòng A được ra mắt trong năm 2023, máy có thiên hướng vuông vắn với tạo hình phẳng ở cả phần mặt lưng và bộ khung.\r\n\r\nThiết kế trẻ trung - Samsung Galaxy A24 6GB\r\n\r\nTổng thể chiếc máy được cấu tạo chủ yếu từ nhựa cho cả phần mặt lưng và khung máy, điều này giúp tối ưu được khối lượng giúp cho cảm giác cầm nắm khi sử dụng trở nên nhẹ nhàng hơn.\r\n\r\nHiển thị hình ảnh sống động với tấm nền Super AMOLED\r\nChiếc điện thoại Samsung này được sử dụng công nghệ màn hình Super AMOLED, với ưu điểm là hiển thị hình ảnh có màu sắc sống động, tối ưu được điện năng tiêu thụ cũng như mang đến khả năng bảo vệ mắt nhờ việc giảm thiểu lượng ánh sáng xanh gây ra.\r\n\r\nMáy có khả năng hiển thị hình ảnh sắc nét nhờ độ phân giải tối đa được hỗ trợ lên đến Full HD+ (1080 x 2340 Pixels), được bố trí trên một màn hình có kích thước vừa phải khoảng 6.5 inch, từ đó mang đến mật độ điểm ảnh cao để có thể biến mọi nội dung đều trở nên chân thực.\r\n\r\nMàn hình chất lượng - Samsung Galaxy A24 6GB\r\n\r\nBên cạnh những ưu điểm trên thì máy còn được hỗ trợ thêm tần số quét cao 90 Hz và độ sáng màn hình 1000 nits, đây có thể xem là hai ưu điểm nổi trội mà ít có dòng sản phẩm trong phân khúc giá ở thời điểm hiện tại tích hợp.\r\n\r\nChụp ảnh sắc nét với camera 50 MP\r\nVề hệ thống camera của máy, Galaxy A24 được nhà Samsung trang bị cho bộ 3 ống kính với độ phân giải tối đa lên đến 50 MP cho cảm biến chính, kèm theo đó sẽ là hai camera phụ có độ phân giải lần lượt là 5 MP và 2 MP.\r\n\r\nVới bộ cảm biến tốt như vậy nên Galaxy A24 hoàn toàn có thể tự tin mang đến những bức ảnh có chất lượng tốt, độ chi tiết cao cũng như màu sắc được tái hiện lại rực rỡ nhằm giúp người dùng có thể sử dụng ngay mà không cần thêm bước hậu kỳ - chỉnh sửa.\r\n\r\nChụp ảnh sắc nét - Samsung Galaxy A24 6GB\r\n\r\nNgoài ra, Galaxy A24 còn bổ sung thêm nhiều tính năng hỗ trợ chụp ảnh như AI Camera, làm đẹp và HDR để giúp cho màu sắc bức hình trở nên đẹp mắt hơn, những vùng khuyết điểm như mụn, tàn nhang trên mặt chủ thể cũng sẽ được xử lý và làm mờ để cho kết quả chụp trở nên ưng ý.\r\n\r\nHiệu năng ổn định với chip MediaTek Helio G99\r\nGalaxy A24 sẽ được trang bị con chip MediaTek Helio G99 với mức xung nhịp tối đa đạt được là 2.2 GHz, đây được đánh giá là mẫu chip có hiệu suất tốt trong phân khúc điện thoại Android tầm trung - giá rẻ, vừa đem khả năng xử lý tốt và vừa tối ưu được năng lượng tiêu thụ để giúp kéo dài thời gian sử dụng.\r\n\r\nHiệu năng ổn định - Samsung Galaxy A24 6GB\r\n\r\nGalaxy A24 có thể xử lý các tác vụ đa nhiệm một cách trơn tru mượt mà, bởi đây là mẫu điện thoại RAM 6 GB nên gần như các thao tác chuyển ứng đều được phản hồi nhanh chóng và gần như không thấy xuất hiện hiện tượng khựng hay giật lag.\r\n\r\nSử dụng dài lâu với pin 5000 mAh\r\nCung cấp năng lượng cho điện thoại sẽ là viên pin có dung lượng lớn đến 5000 mAh, điều này đem đến thời gian sử dụng vừa đủ cho một ngày đối với các tác vụ thông thường hay thậm chí là vài ngày khi dùng để nghe gọi là chủ yếu.\r\n\r\nNhằm rút ngắn thời gian sạc thì hãng cũng đã trang bị thêm cho máy công nghệ sạc pin nhanh 25 W, nhờ vậy mà người dùng sẽ không còn mất quá nhiều thời gian để chờ đợi, giúp trải nghiệm sử dụng của bạn trở nên liền mạch hơn và ít bị gián đoạn quá lâu.\r\n\r\nPin trâu dùng lâu - Samsung Galaxy A24 6GB\r\n\r\nTổng hợp lại thì đây là mẫu máy phù hợp cho các bạn đang là học sinh - sinh viên đang tìm kiếm một mẫu máy có giá thành tốt để phục vụ tra cứu tài liệu học tập, với hiệu năng tốt và camera sắc nét nên hứa hẹn đây sẽ là thiết bị có thể đồng hành cùng bạn dài lâu.',6490000,10,'product/samsung-galaxy-a24.jpg',1,'2023-05-25 17:01:57.494153',1),(3,'iPhone 14 Pro','iPhone 14 Pro 128GB - Mẫu smartphone đến từ nhà Apple được mong đợi nhất năm 2022, lần này nhà Táo mang đến cho chúng ta một phiên bản với kiểu thiết kế hình notch mới, cấu hình mạnh mẽ nhờ con chip Apple A16 Bionic và cụm camera có độ phân giải được nâng cấp lên đến 48 MP.\r\nThiết kế mang dáng vẻ sang trọng và đặc trưng\r\nĐến với thiết kế của iPhone 14 Pro năm nay, hãng vẫn giữ lại nét đặc trưng vốn có từ các đời trước, vẫn mang trong mình ngoại hình vuông vức với các cạnh và mặt lưng vát phẳng. Hiện tại thị hiếu của người dùng về kiểu thiết kế này vẫn đang rất cao, vậy nên theo mình thấy thì đây vẫn sẽ là chiếc điện thoại bắt trend cho trong nhiều năm tiếp theo.\r\n\r\nThiết kế sang trọng - iPhone 14 Pro 128GB\r\n\r\nBộ khung điện thoại được làm từ chất liệu thép không gỉ và hoàn thiện theo kiểu bóng nhoáng, điều này giúp thiết bị trở nên bền bỉ cũng như làm tăng thêm phần sang trọng. Mỗi khi nghiêng máy qua nhiều góc độ khác nhau mình thấy phần khung này trở nên cuốn hút hơn nhờ khả năng phản quang vô cùng thú vị.\r\n\r\nKhung viền sáng bóng - iPhone 14 Pro 128GB\r\n\r\nSau một thời gian sử dụng, mình thấy bộ khung này khá là dễ bám dấu vân tay, sử dụng điện thoại khi tay có mồ hôi cũng sẽ trở nên khó khăn hơn đôi chút bởi máy lúc này khá trơn. Để khắc phục được hai việc trên thì người dùng cũng có thể dùng thêm ốp lưng để đảm bảo quá trình sử dụng được thuận tiện nhất.\r\n\r\nDễ bám dấu vân tay - iPhone 14 Pro 128GB\r\n\r\nVề phần mặt lưng, vật liệu cấu tạo chính sẽ là kính cường lực và được hoàn thiện nhám để cho ra cái nhìn cao cấp hơn, mình cảm thấy cách làm nhám này cũng đã khắc phục được đáng kể tình trạng bám dấu vân tay so với mặt lưng bóng trên iPhone 14.\r\n\r\nHạn chế vết xước - iPhone 14 Pro 128GB\r\n\r\nĐối với iPhone 14 Pro, màu sắc đặc trưng sẽ là màu tím, đây được dự đoán là phiên bản màu bán chạy nhất bởi sự đặc trưng và dễ dàng nhận diện. \r\n\r\nNổi bật với thiết kế hình notch mới\r\nSau nhiều năm sử dụng kiểu màn hình tai thỏ thì đến nay Apple cũng đã quyết định thay đổi kiểu hình notch này sang một dạng mới trên iPhone 14 Pro series. Như cách quen thuộc mà mọi người hay nói thì đây là kiểu thiết kế dạng viên thuốc, nó tiết kiệm không gian hơn so với tai thỏ.\r\n\r\nThiết kế hình notch mới - iPhone 14 Pro 128GB\r\n\r\nTuy nhiên khi so sánh về mặt tối ưu không gian với những kiểu thiết kế dạng hình notch khác như: Giọt nước, nốt ruồi thì dạng viên thuốc vẫn chưa thực sự cạnh tranh được. Và Apple cũng đã biết cách làm chúng trở nên nổi bật hơn, hãng biến chúng trở thành ưu điểm bằng cách bổ sung thêm nhiều hiệu ứng sinh động nhằm tăng thêm phần thú vị mỗi khi người dùng sử dụng, và hãng gọi đây là Dynamic Island.\r\n\r\nXem thêm: Dynamic Island trên iPhone dòng \"Pro\" là gì? Hoạt động như thế nào?\r\n\r\nThiết kế hình notch mới - iPhone 14 Pro 128GB\r\n\r\nNhư mình có trải nghiệm thì hiệu ứng này sẽ được kích hoạt mỗi khi dùng các ứng dụng như: Ghi âm, nghe nhạc, đồng hồ hẹn giờ,... mình chỉ cần ấn giữ phần hình notch là máy sẽ tự động hiển thị ra thêm một màn hình thu nhỏ của các ứng dụng đang dùng, từ đó mình có thể thao tác nhanh mà không cần mở ứng dụng.\r\n\r\nThiết kế hình notch mới - iPhone 14 Pro 128GB\r\n\r\nMàn hình với chất lượng tốt hơn cùng nhiều tính năng thú vị\r\niPhone 14 Pro sử dụng tấm nền OLED và độ phân giải 2556 x 1179 Pixels, màu sắc hiển thị có độ tương phản cao giúp nội dung trở nên có chiều sâu hơn, cảm giác khi nhìn vào những bộ phim hay trò chơi cũng trở nên chân thực hơn so với các loại màn hình như AMOLED hay LCD thông thường.\r\n\r\nXem thêm: Màn hình OLED là gì? Có gì nổi bật? Thiết bị nào có màn hình OLED?\r\n\r\nMàn hình chất lượng - iPhone 14 Pro 128GB\r\n\r\nMàn hình có độ chi tiết cao và khả năng tái hiện màu sắc chuẩn xác, nên các công việc thiên về thiết kế hay chỉnh sửa nội dung cũng trở nên dễ dàng hơn. Ngoài ra mình còn dùng iPhone 14 Pro để tham chiếu màu sắc mỗi khi thực hiện công việc trên desktop, bởi sau khi đối chiếu với các ấn phẩm đã in ra sẽ không có quá nhiều sự khác biệt, từ đó giúp mình an tâm hơn trong các công việc.\r\n\r\nMàn hình chất lượng - iPhone 14 Pro 128GB\r\n\r\nTần số quét màn hình lên tới 120 Hz giúp cho mọi thao tác vuốt chạm được diễn ra mượt mà, tốc độ phản ứng của màn hình là rất nhanh để có thể bắt kịp chuyển động khi thao tác. Nó giúp mình có thể chơi tốt những tựa game đồ họa cao như PUBG Mobile hay Genshin Impact, bởi độ trễ của máy theo mình cảm nhận được là gần như bằng 0.\r\n\r\nHạn chế độ trễ - iPhone 14 Pro 128GB\r\n\r\nTheo như hãng công bố, độ sáng của màn hình đạt tới 2000 nits, đây quả thực là một con số rất lớn và gần như trên thị trường có rất ít điện thoại có thể hỗ trợ đến mức này. Cho nên khi phát các video ở định dạng HDR thì sẽ mang lại những trải nghiệm tuyệt vời nhất.\r\n\r\nHiển thị rõ ràng - iPhone 14 Pro 128GB\r\n\r\niPhone 14 Pro có kích thước màn hình là 6.1 inch và đây cũng là con số tương đồng iPhone 14, điều này đem đến cho mình cảm giác cầm nắm tương đối gọn, bỏ túi cũng trở nên dễ dàng hơn mà ít khi bị cộm như iPhone 14 Pro Max.\r\n\r\nKích thước nhỏ gọn - iPhone 14 Pro 128GB\r\n\r\nAlways On Display là tính năng mới được phát triển trên dòng iPhone 14 Pro, giờ đây màn hình điện thoại sẽ không phải tắt hẳn mà thay vào đó là giảm độ sáng màn hình khóa, nhờ vậy mà mình có thể dễ dàng xem ngày - giờ hay thậm chí là các thông báo nhanh mà không cần phải mở khóa.\r\n\r\nXem thêm: Sự thật thú vị về Always On Display và những điện thoại có \'màn hình luôn bật\'\r\n\r\nTính năng mới mẻ - iPhone 14 Pro 128GB\r\n\r\nThỏa sức nhiếp ảnh với camera 48 MP\r\nNăm nay hãng vẫn tiếp tục trang bị cho điện thoại iPhone bộ 3 camera như những thế hệ trước đó, tuy nhiên có một sự nâng cấp ở đây mà mình thấy được là cụm camera chính cũng đã tăng lên 48 MP chứ không còn là 12 MP nữa. Cả cụm 3 camera này giờ đây cũng đã được thiết kế lớn hơn và có phần nhô ra đôi chút so với iPhone 13 Pro Max.\r\n\r\nTrang bị 3 camera - iPhone 14 Pro 128GB\r\n\r\nĐối với ảnh chụp từ chế độ thường, iPhone 14 Pro cho ra kết quả làm mình rất ưng ý, từ chi tiết cho đến màu sắc thì điện thoại đều có thu lại một cách sắc nét và cực kỳ chân thực. Bởi máy có khẩu độ lớn f/1.78 cho nên lượng ánh sáng thu vào là khá nhiều, ảnh chụp ở những môi trường âm u, không có nhiều ánh sáng cũng trở nên dễ nhìn và nịnh mắt hơn hẳn những thế hệ trước đó.\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro 128GB\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro 128GB\r\n\r\nTuy chưa phải là camera góc siêu rộng nhưng bức ảnh chụp từ chế độ thường vẫn cho ra trường nhìn tương đối lớn, điều này giúp mình thu lại hình ảnh có nhiều chi tiết và độ sắc nét cao hơn mà không cần dùng tới chế độ chụp ảnh góc siêu rộng.\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro 128GB\r\n\r\nĐể có thể chụp được bức ảnh có chất lượng độ phân giải 48 MP thì ta phải thiết lập thủ công trong phần cài đặt, lúc này tính năng sẽ được hiển thị với cái tên ProRAW và cho phép ta cài đặt ở hai mức là 12 MP và 48 MP.\r\n\r\nXem thêm: Cách chụp ProRAW trên iPhone 14 series để có những bức ảnh cực kỳ sắc nét\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro 128GB\r\n\r\nSau khi thiết lập xong, ở phần giao diện sẽ hiển thị biểu tượng bằng dòng chữ “RAW”, ta chỉ cần việc chạm vào biểu tượng là máy đã có thể kích hoạt tính năng cho chúng ta, độ phân giải của chế độ RAW này phụ thuộc vào mức mà ta đã tùy chỉnh thủ công trước đó trong phần cài đặt.\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro 128GB\r\n\r\nĐối với ảnh chụp ở định dạng 48 MP, mức dung lượng của mỗi tấm hình cũng rất cao, qua một vài bức mà mình chụp thì con số này dao động tầm 43 - 70 MP/tấm. Vậy nên để tiết kiệm được dung lượng bộ nhớ thì mình thường chỉ dùng nó cho một vài tình huống quan trọng như: Chụp ảnh để in ấn, cho bài viết hay để chỉnh sửa chuyên nghiệp mà không quá lo lắng chất lượng bị giảm đi nhiều.\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro 128GB\r\n\r\nCòn với ảnh chụp từ camera góc siêu rộng, bức ảnh sẽ có độ bao quát toàn diện hơn, cảm giác khi nhìn vào cũng rất là chân thực. Đây được xem là tính năng mà mình thường dùng để chụp những khung cảnh rộng lớn, ở những vị trí quá sát chủ thể thì tính năng này giúp mình chụp được đầy đủ các chi tiết mà không cần phải di chuyển vị trí chụp ra xa hơn.\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro 128GB\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro 128GB\r\n\r\nNgoài ra chiếc điện thoại chụp ảnh, quay phim này còn được trang bị camera tele có độ phân giải 12 MP, cảm biến này hỗ trợ tính năng zoom quang học 3X với độ chi tiết thu lại cũng rất cao. Thay vì hoạt động bằng nguyên lý phóng to và crop ảnh như tính năng zoom kỹ thuật số, thì ở chế độ này máy sẽ hoạt động bằng một cảm biến độc lập để phụ trách việc zoom, vậy nên chất lượng ảnh cho ra vẫn có độ chi tiết gần như tương đồng so với chế độ chụp ảnh mặc định.\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro 128GB\r\n\r\nẢnh chụp từ camera - iPhone 14 Pro 128GB\r\n\r\nHiệu năng mạnh mẽ nhờ con chip Apple A16 Bionic\r\nNăm nay nhà Apple mang đến cho chúng ta con chip Apple A16 Bionic có hiệu suất mạnh mẽ, được trang bị cho điện thoại sẽ hoạt động với 6 nhân và tốc độ xung nhịp tối đa là 3.46 GHz. Ngoài ra mình còn dùng phần mềm để chấm điểm hiệu năng để có thể đối chiếu với nhiều mẫu máy khác, kết quả mình nhận được như sau: 1886 (đơn nhân), 5427 (đa nhân) trên Benchmark và 951476 trên AnTuTu Benchmark.\r\n\r\nHiệu năng mạnh mẽ - iPhone 14 Pro 128GB\r\n\r\nKhi chơi ở những tựa game như: Liên Quân Mobile, PUBG Mobile hay kể cả Genshin Impact thì máy đều dễ dàng xử lý được, vì được trang bị con chip mạnh mẽ nên mình cũng đã thoải mái hơn trong việc bật max cấu hình mà không quá lo lắng đến việc giật lag.\r\n\r\nHiệu năng mạnh mẽ - iPhone 14 Pro 128GB\r\n\r\nBên cạnh việc trang bị con chip hiệu năng cao, máy còn là điện thoại RAM 6 GB với dung lượng bộ nhớ lưu trữ là 128 GB, nhờ vậy mà mọi thao tác đa nhiệm của mình cũng được trở nên ổn định hơn.\r\n\r\niPhone 14 Pro được tích hợp hệ điều hành iOS 16 kể từ khi kích hoạt, ở hệ điều hành này ta sẽ có được nhiều bản cập nhật cùng hàng loạt các tính năng thú vị, trong đó những cái mình thường dùng là tính năng tách nền ảnh thông minh, tùy biến giao diện màn hình khoá theo ý thích cá nhân thông qua nhiều chủ đề mới mẻ mà hãng mang đến.\r\n\r\nHệ ddieuf hành mới mẻ - iPhone 14 Pro 128GB\r\n\r\nỞ phiên bản iPhone 14 Pro, máy chỉ được trang bị viên pin 3200 mAh, thế nhưng thời gian sử dụng của máy lại vượt xa những gì mình tưởng tượng. Sau một ngày dài làm việc và học tập cùng với iPhone 14 Pro thì mình cũng đã mất 7 tiếng 54 phút mới có thể sử dụng hết 100% pin.\r\n\r\nPin khủng dùng lâu - iPhone 14 Pro 128GB\r\n\r\nCòn về thời gian sạc, điện thoại mất khoảng 1 giờ 32 phút là đã có thể lấp đầy được viên pin, vào những trường hợp khẩn cấp thì chỉ cần 30 phút là điện thoại đã có ngay 46% pin.\r\n\r\nHỗ trợ sạc nhanh chóng - iPhone 14 Pro 128GB\r\n\r\niPhone 14 Pro được xem là mẫu smartphone nhỏ gọn nhưng được trang bị gần như đầy đủ mọi loại công nghệ tiên tiến nhất của Apple trong năm 2022. Máy đáp ứng tốt các tiêu chí về thiết kế, cấu hình cùng khả năng quay chụp chất lượng cao giúp cho người dùng có được những trải nghiệm tốt nhất.',25490000,10,'product/iphone14-pro-1.jpg',1,'2023-05-25 17:07:03.731932',1),(4,'MacBook Air M1 2020 7-core GPU','Laptop Apple MacBook Air M1 2020 thuộc dòng laptop cao cấp sang trọng có cấu hình mạnh mẽ, chinh phục được các tính năng văn phòng lẫn đồ hoạ mà bạn mong muốn, thời lượng pin dài, thiết kế mỏng nhẹ sẽ đáp ứng tốt các nhu cầu làm việc của bạn.\r\nChip Apple M1 tốc độ xử lý nhanh gấp 3.5 lần thế hệ trước\r\nChiếc MacBook này được trang bị con chip Apple M1 được sản xuất độc quyền bởi Nhà Táo trên tiến trình 5 nm, 8 lõi bao gồm 4 lõi tiết kiệm điện và 4 lõi hiệu suất cao, mang đến một hiệu năng kinh ngạc, xử lý mọi tác vụ văn phòng một cách mượt mà như Word, Excel, Powerpoint,... thực hiện tốt các nhiệm vụ chỉnh sửa hình ảnh, kết xuất 2D trên các phần mềm Photoshop, AI,... máy còn hỗ trợ tiết kiệm được điện năng cao.\r\n\r\nApple MacBook Air M1 2020 - Làm việc đa nhiệm\r\n\r\nĐi cùng CPU là card đồ họa tích hợp 7 nhân GPU có hiệu năng vượt trội sau nhiều bài thử nghiệm hiệu năng đồ họa của benchmark, bạn có thể sử dụng nhiều phần mềm đồ họa chuyên nghiệp, thoả sức sáng tạo nội dung, render video ổn định với chất lượng hình ảnh cao.\r\n\r\nApple MacBook Air M1 2020 - Render video\r\n\r\nMacBook Air được trang bị RAM 8 GB cho khả năng đa nhiệm cao, bạn có thể mở cùng lúc nhiều cửa sổ hoặc ứng dụng để phục vụ cho công việc, giải trí của mình ví dụ như vừa mở Chrome tra cứu thông tin vừa mở Word để làm việc cực kỳ tiện lợi mà không cần lo lắng là máy sẽ bị đơ.\r\n\r\nMacBook sở hữu ổ cứng SSD 256 GB cho tốc độ xử lý nhanh chóng, thao tác cuộn trong Safari cực mượt, đánh thức máy đang trong chế độ ngủ chỉ mất vài giây và đem đến không gian lưu trữ rộng rãi bạn cứ thoải mái lưu lại những bộ phim hay mà không lo nó sẽ chiếm chỗ của các tệp tài liệu công việc.\r\n\r\nApple MacBook Air M1 2020 - RAM \r\n\r\nBên cạnh sử dụng con chip mới Apple còn ra mắt phiên bản hệ điều hành macOS Big Sur với giao diện hoàn hảo hơn, các chuyển động cuộn, phóng to và chuyển tiếp màn hình mượt mà. Ngoài đổi mới giao diện macOS Big Sur còn mang đến khả năng phản hồi nhanh chóng và kho ứng dụng khổng lồ.\r\n\r\nXem thêm: Danh sách ứng dụng chạy được trên Macbook chip Apple M1.\r\n\r\nThiết kế sang trọng, tinh tế\r\nMacBook Air M1 256GB 2020 không những thừa hưởng thiết kế mỏng nhẹ, hiện đại của các thế hệ trước mà còn học hỏi thêm phong cách hiện đại của các dòng Macbook Pro. Khối lượng máy chỉ vỏn vẹn 1.29 kg và mỏng của thân máy là 16.1 mm có tính cơ động cao, dễ đem theo xử lý công việc.\r\n\r\nVỏ máy được thiết kế nguyên khối từ nguyên liệu nhôm tái chế 100% vừa góp phần bảo vệ môi trường vừa cho độ bền cao, chịu va đập tốt bảo vệ các linh kiện bên trong an toàn nếu có xảy ra va chạm mạnh.\r\n\r\nApple MacBook Air M1 2020 - Thiết kế\r\n\r\nMagic Keyboard có hành trình phím 1 mm mang lại trải nghiệm gõ nhạy, thoải mái và yên tĩnh, bàn phím còn được trang bị thêm đèn nền vừa tạo cảm giác sang trọng vừa hỗ trợ bạn gõ phím chính xác hơn trong môi trường thiếu sáng.\r\n\r\nLaptop được trang bị 2 cổng kết nối Thunderbolt 3 với tốc độ truyền tải lên đến 40 Gb/s cho tốc độ truyền tải nhanh gấp 2 lần so với thế hệ Thunderbolt 2 trước đây. Bên cạnh Thunderbolt 3 máy còn được trang bị thêm kết nối không dây là Wi-Fi 6 cho tốc độ truyền tải dữ liệu nhanh chóng lên đến 10.000 Mbps cao hơn Wi-Fi 5 chỉ có 7.000 Mbps và Bluetooth v5.0 có tốc độ tối đa là 50 Mbps cho bạn trải nghiệm mượt mà hơn.\r\n\r\nApple MacBook Air M1 2020 - Kết nối\r\n\r\nApple trang bị cho chiếc Macbook M1 này bảo mật vân tay giúp bạn mở khóa nhanh chóng chỉ với một cái chạm nhẹ. Bên cạnh đó, vân tay của bạn sẽ được tích hợp vào việc xác nhận thông tin khi mua sắm online hay truy cập vào các tài liệu có bảo mật mà không cần phải nhập mật khẩu cực kỳ tiện lợi.\r\n\r\nMàu sắc chân thực, hình ảnh sắc nét \r\nLaptop màn hình Retina 13.3 inch cao cấp cho hình ảnh sắc nét màu sắc tự nhiên. Kết hợp cùng công nghệ True Tone giúp điều chỉnh cân bằng sắc trắng cũng như độ sáng để màu sắc hình ảnh hiển thị chính xác nhất.\r\n\r\nNgoài ra, góc nhìn của máy cũng được mở rộng hơn nhờ có công nghệ IPS đem lại trải nghiệm nhìn đã mắt, dù bạn nhìn màn hình bằng góc nghiêng.\r\n\r\nApple MacBook Air M1 2020 - Màn hình\r\n\r\nMacBook Air M1 được trang bị camera FaceTime HD giúp bạn gọi video cho người thân, bạn bè với chất lượng hiển thị cao. Tích hợp dãy 3 micro giúp truyền tải giọng nói của bạn chính xác hơn. \r\n\r\nLaptop Apple MacBook Air M1 2020 với hiệu năng mạnh mẽ đáp ứng tốt mọi công việc, thiết kế cực mỏng sẽ là sự lựa chọn tuyệt vời dành cho bạn.',18490000,10,'product/grey-1-org.jpg',1,'2023-05-25 17:10:15.376412',2),(5,'MSI Gaming GF63 Thin 11UD i7 11800H (648VN)','Sở hữu một vẻ ngoài độc đáo, mạnh mẽ phù hợp với mọi game thủ, chiếc laptop MSI Gaming GF63 Thin 11UD i7 11800H (648VN) được trang bị dòng chip Intel thế hệ 11 hiệu năng mạnh mẽ vượt trội khi đi cùng card rời RTX 30 series sẵn sàng chiến mượt bất kì tựa game phổ biến hay thiết kế đồ họa chuyên sâu.\r\n• Sở hữu CPU Intel Core i7 11800H kết hợp cùng card màn hình NVIDIA RTX 3050Ti Max-Q 4 GB mang lại trải nghiệm giải trí cực đã với các tựa game đình đám như GTA V, CS:GO, FIFA,... Bên cạnh đó khả năng xử lý đồ họa chuyên sâu cũng sẽ là lợi thế của dòng card RTX này.\r\n\r\n• Laptop MSI được trang bị bộ nhớ SSD 512 GB kết hợp RAM 8 GB cho khả năng lưu trữ dữ liệu đủ dùng, tốc độ truy xuất dữ liệu, ghi chép dữ liệu cũng như khởi động máy nhanh chóng.\r\n\r\n• Chiếc laptop MSI GF được trang bị màn hình 15.6 inch có độ phủ màu 100% sRGB kết hợp tấm nền IPS mang lại chất lượng hình ảnh sắc nét, sống động cùng góc nhìn rộng lên đến 178 độ. Tính năng được tích hợp đi kèm là chống chói Anti-Glare giúp bảo vệ mắt của bạn sau một thời gian dài sử dụng.\r\n\r\n• Diện mạo đậm chất laptop gaming được hoàn thiện từ lớp vỏ kim loại bền bỉ, khối lượng chỉ 1.86 kg và dày 21.7 mm dễ dàng đồng hành cùng bạn trong mọi không gian chiến game.\r\n\r\n• Đa dạng cổng kết nối giúp bạn dễ dàng kết nối với các thiết bị ngoại vi mọi lúc như: 3 x Type-A USB 3.2 Gen 1, HDMI, LAN (RJ45), USB Type-C.\r\n\r\n• Công nghệ Realtek High Definition Audio trên laptop cung cấp chất lượng âm thanh ổn định, ngoài ra còn có tính năng khuếch đại khi xem phim, nghe nhạc, giải trí, tăng sự phấn khích khi chiến game.',21490000,10,'product/msi-gaming-gf63-thin-11ud-i7-648vn-1.jpg',1,'2023-05-25 17:11:32.755804',2),(6,'Samsung 25W EB-P3400','Thông tin sản phẩm\r\nPin sạc dự phòng 10000 mAh Type C PD Samsung EB-P3400 sở hữu kiểu dáng mỏng nhẹ, gam màu tinh tế, dung lượng pin lớn cùng hiệu suất sạc khá cao, hứa hẹn mang đến cho người dùng những trải nghiệm vô cùng tuyệt vời.\r\n• Kiểu dáng pin sạc dự phòng gọn chắc, vừa tay cầm, dễ dàng mang theo mọi lúc mọi nơi.\r\n\r\n• Dung lượng pin 10.000 mAh, hiệu suất sạc 66% cho phép người dùng sạc bị nhiều lần cho các thiết bị như điện thoại thông minh, tai nghe,...\r\n\r\n• Pin sạc dự phòng Samsung trang bị cho người dùng 1 dây cáp Type C - Type C sẵn trong hộp, chỉ cần kết nối là có thể sử dụng ngay lập tức.\r\n\r\n• Công suất sạc siêu nhanh lên đến 25 W giúp nạp năng lượng nhanh chóng, tối ưu thời gian chờ đợi.\r\n\r\n• Lõi pin Polymer bền bỉ, sạc pin an toàn với thiết bị.',710000,10,'product/pin-sac-du-phong-10000mah-type-c-pd-samsung-eb-p3400-1.jpg',1,'2023-05-25 17:12:44.352485',3),(7,'Samsung 25W EB-P3300','Sạc dự phòng Samsung mỏng nhẹ, vẻ ngoài tỏa sáng với gam màu xám sang trọng\r\nHình dạng và kích thước gần như 1 chiếc smartphone thời thượng của Samsung, sạc dự phòng dễ dàng cầm nắm, dịch chuyển, không choáng chỗ trong túi xách, balo của bạn khi mang theo bên mình trong hành trang thường nhật.\r\n\r\nPin sạc dự phòng Polymer 10.000mAh Type C PD 25W Samsung EB-P3300 Xám - Mỏng nhẹ, vẻ ngoài tỏa sáng với gam màu xám sang trọng\r\n\r\nNạp đầy pin cho điện thoại và sạc dự phòng tức thì với công nghệ sạc nhanh Super Fast Charging và Power Delivery\r\nĐược hỗ trợ các công nghệ sạc nhanh tân tiến nhất hiện nay, pin sạc dự phòng Polymer 10.000mAh Type C PD 25W Samsung EB-P3300 xám đáp ứng được nhiều dòng sạc khác nhau Type C (PDO): 5V - 3A, 9V – 2.77A (PPS), 3.3-5.9V - 3A, 3.3-11V – 2.25A, USB: 5V - 2A, 9V - 2A, 12V – 2.1A.\r\n\r\nTương thích được với nhiều loại thiết bị, dòng điện thoại như Galaxy Note10 lite, S10 lite, Note10+, Note10, S10 5G, A91, A90 5G, A80, A70 và các dòng máy phù hợp khác, luôn sẵn sàng cho bạn chia sẻ năng lượng khi cần.\r\n\r\nPin sạc dự phòng Polymer 10.000mAh Type C PD 25W Samsung EB-P3300 Xám - Nạp đầy pin cho điện thoại và sạc dự phòng tức thì với công nghệ sạc nhanh Super Fast Charging và Power Delivery\r\n\r\nSử dụng hiệu quả, bền lâu với dung lượng sạc dự phòng 10.000 mAh, lõi pin Polymer \r\nChứa đựng 1 nguồn năng lượng lớn, Samsung EB-P3300 cho phép bạn sạc được nhiều thiết bị hoặc sạc 1 thiết bị nhiều lần với hiệu suất đến 60%, có thể nạp pin cho iPhone X khoảng 2 lần.\r\n\r\nTích hợp lõi pin Polymer cho trọng lượng sạc dự phòng nhẹ hơn, bền hơn, hạn chế thất thoát năng lượng và chai pin tối đa.\r\n\r\nPin sạc dự phòng Polymer 10.000mAh Type C PD 25W Samsung EB-P3300 Xám - Sử dụng hiệu quả, bền lâu với dung lượng sạc dự phòng 10.000 mAh, lõi pin Polymer\r\n\r\nThiết kế cổng kết nối Type-C và USB phổ biến\r\nTrong đó cổng kết nối Type-C vừa là nguồn ra vừa là nguồn vào, cho công suất tối đa 25 W, cổng USB là nguồn ra, công suất tới 25 W. Có thể sạc cho máy cùng lúc, tuy nhiên, sạc nhanh ở Type-C sẽ không đạt đến mức 25 W.\r\n\r\nCó nút nguồn, đèn báo dung lượng pin với mỗi đèn tương ứng với 25% pin cho bạn tiện kiểm tra và sạc dễ dàng.\r\n\r\nPin sạc dự phòng Polymer 10.000mAh Type C PD 25W Samsung EB-P3300 Xám - Thiết kế cổng kết nối Type-C và USB phổ biến\r\n\r\nKhi sạc lại cho sạc dự phòng, thời gian sạc đầy 10 - 11 giờ (dùng adapter 1A) và tầm 6 - 8 giờ (dùng adapter 2A).\r\n\r\nPin sạc dự phòng Polymer 10.000mAh Type C PD 25W Samsung EB-P3300 Xám - Khi sạc lại cho sạc dự phòng, thời gian sạc đầy linh hoạt\r\n\r\nNhìn chung, với 1 thiết kế đẹp, khả năng sạc nhanh nổi bật, chất lượng tốt, Samsung EB-P3300 xứng đáng nằm trong tay mọi người dùng công nghệ.',630000,10,'product/polymer-10000mah-type-c-25w-samsung-eb-p3300-2-1-org.jpg',1,'2023-05-25 17:15:38.630130',3),(8,'Tai nghe Bluetooth True Wireless Rezo Air','Tai nghe Bluetooth True Wireless Rezo Air mang đến thiết kế mới lạ, thời trang, âm thanh đầy đủ và rõ ràng cùng các tiện ích khác, hứa hẹn đem đến trải nghiệm hài lòng cho bạn khi sử dụng.\r\n• Hộp sạc được thiết kế đặc biệt với các phiên bản màu sắc thời thượng, toàn bộ thiết kế bên ngoài phủ một lớp nhựa trong suốt tạo hiệu ứng bóng bẩy, làm nổi bật tai nghe bên trong và màu sắc vốn có của hộp sạc.\r\n\r\n• Tai nghe In-ear với đệm tai êm ái được nghiên cứu kỹ lưỡng để phù hợp với cấu trúc tai của đa số người dùng. Ngoài ra, trong mỗi hộp sản phẩm khi mua mới sẽ được trang bị thêm 1 cặp đệm tai thay thế.\r\n\r\n• Âm thanh rõ ràng, tách bạch cho khả năng thể hiện tốt hầu hết các bản nhạc từ Ballad nhẹ nhàng tới pop, EDM sôi động. Ngoài ra, Rezo Air còn trang bị thêm công nghệ Power bass with Dynamic driver giúp tăng âm trầm, cho bản nhạc thêm cuốn hút, âm bass dày và sâu hơn.\r\n\r\n• Tai nghe Rezo còn được trang bị mic thoại hỗ trợ nghe gọi tiện lợi, tham gia cuộc trò chuyện hay các buổi họp một cách nhanh chóng, công nghệ DNS Talking Noise Cancelling giúp giảm tối đa tiếng ồn khi đàm thoại, giọng thu được trong trẻo và rành mạch hơn.\r\n\r\n• Trang bị Bluetooth 5.3 mới nhất thời điểm ra mắt (tháng 02/2023) cho phép kết nối nhanh chóng với độ trễ cực thấp, đường truyền ổn định. Không chỉ vậy, tai nghe còn được trang bị thêm chế độ Game Mode giúp hạn chế tối đa độ trễ, tự tin tham chiến cùng đồng đội, bắt kịp từng khoảnh khắc trong game.\r\n\r\n• Bảo vệ tốt tai nghe trước những tiếp xúc với nước nhờ chuẩn chống nước IPX6, giữ tai nghe an toàn khi vô tình gặp mưa hoặc dính mồ hôi trong lúc tập thể dục.\r\n\r\n• Điều khiển dễ dàng với phần cảm ứng nhanh nhạy trên tai nghe với đầy đủ các chức năng cơ bản như: Tạm/dừng phát nhạc, tăng/giảm âm lượng, nghe/dừng cuộc gọi, bật chế độ Game Mode và chuyển bài hát.\r\n\r\n• Dung lượng pin lớn, nghe nhạc liên tục trong 8 giờ, nghe gọi liền mạch tới 9 giờ và khi sử dụng cùng hộp sạc có thể kéo dài thời gian dùng lên tới 35 giờ.',710000,10,'product/tai-nghe-bluetooth-tws-rezo-air-den-1.jpeg',1,'2023-05-25 17:16:58.238151',3),(9,'Tai nghe Bluetooth AirPods 2 Lightning Charge Apple MV7N2','Tai nghe Bluetooth AirPods 2 Lightning Charge Apple MV7N2 - được mệnh danh là một chiếc AirPods huyền thoại quốc dân rất được lòng của các fan nhà táo. Sau thành công vang dội của AirPods đời đầu thì phiên bản đời thứ 2 này của nhà Apple có gì cải tiến để có thể vượt qua người tiền nhiệm và cho tới thời điểm hiện tại vẫn còn nhận được nhiều sự ưa chuộng với các bạn trẻ đến vậy?\r\nHệ sinh thái kết nối cực nhanh, cực xịn, mic thoại chất lượng cao\r\nĐầu tiên, nhắc đến điểm cải tiến đáng \"ăn tiền\" nhất trên chiếc tai nghe này chính là AirPods 2 được tích hợp chip xử lý H1 thế hệ mới cho thời gian chuyển đổi kết nối giữa các thiết bị nhanh hơn gấp 2 lần so với phiên bản cũ.\r\n\r\nĐồng thời, trang bị công nghệ Bluetooth 5.0 cho kết nối nhanh chóng, ổn định, độ trễ ít, AirPods 2 cho tốc độ kết nối tới cuộc gọi thoại nhanh gấp 1.5 lần so với bình thường, giảm độ trễ âm thanh khi gọi thoại, chơi game,…Với khả năng cho tốc độ kết nối nhanh và đáp ứng độ trễ âm thanh tốt thì AirPods 2 vẫn là một ứng cử viên sáng giá cho những bạn chuộng hệ sinh thái nhà Apple.\r\n\r\nTai nghe Bluetooth AirPods 2 Apple MV7N2 - Kết nối\r\n\r\nTiếp theo, một trong những lý do khiến nhiều người dùng vẫn luôn “săn đón\" chiếc tai nghe này là khả năng đàm thoại với mic khử tiếng ồn tốt, đem đến một chất âm sạch, trong trẻo dễ nghe.\r\n\r\nMình đã thử sử dụng tai nghe trong phòng máy lạnh (loại máy lạnh công nghiệp). Tất nhiên, như những gì đã đề cập ở trên, AirPods 2 thu âm tiếng cực kỳ trong và rõ, không bị trộn tạp âm hay tiếng ồn phà phà hơi gió của máy lạnh vào micro, rất phù hợp cho những bạn thường xuyên phải sử dụng tai nghe để họp hay làm việc trực tuyến khi ở trong môi trường có nhiều người. Đây là một ưu điểm rất lớn mà cho dù đã ra mắt khá lâu nhưng về chất lượng sản phẩm mà hãng Apple đem lại thì luôn làm hài lòng người dùng.\r\n\r\nTai nghe Bluetooth AirPods 2 Apple MV7N2 - Mic thoại\r\n\r\nĐối với những bạn sử dụng điện thoại Android, chiếc tai nghe này vẫn có khả năng kết nối đầy đủ và sử dụng bình thường. Tuy nhiên, tốc độ kết nối sẽ bị chậm và tai nghe cũng sẽ không hoạt động hết tối đa công suất của nó, tất nhiên đây vẫn là sự ưu tiên đến từ mục đích “những sản phẩm trong hệ sinh thái độc quyền của nhà Apple”. \r\n\r\nGiữ nguyên mẫu thiết kế quen thuộc, nhỏ gọn và tiện lợi, đi kèm thời lượng pin ổn định\r\nAirPods 2 giữ nguyên thiết kế của người tiền nhiệm, vẫn là vỏ hộp đựng bo tròn được làm bằng nhựa trơn bóng, kết hợp là bản lề đóng mở nắp hộp mang lại sự hoàn thiện cao, 2 tay hay 1 tay sử dụng đóng mở nắp hộp vẫn rất tiện lợi, cho cảm giác cầm nắm gọn trong lòng bàn tay và dễ dàng bỏ vào túi quần, túi áo, balo, túi xách để mang theo sử dụng mọi lúc.\r\n\r\nTai nghe Bluetooth AirPods 2 Apple MV7N2 - Thiết kế\r\n\r\nỞ phần đèn LED và nút bấm, giống như thế hệ “đàn anh\" vị trí đèn LED vẫn nằm ở trong hộp, nút bấm vẫn nằm ở vị trí cũ là phía sau hộp, khi bấm nút nhận diện kết nối thì đèn có màu trắng. Ở tình trạng gần hết pin, đèn sẽ chuyển báo hiệu cho bạn thấy màu cam và khi được sạc đầy thì lại hiển thị về màu xanh. \r\n\r\nTai nghe Bluetooth AirPods 2 Apple MV7N2 - Thiết kế\r\n\r\nVề thiết kế tai nghe dù không thay đổi gì nhiều, nhưng tai nghe Apple lại mang đến sự trải nghiệm thoải mái bậc nhất trên thị trường tai nghe không dây. Tai nghe nhỏ nhưng khó rơi, vừa vặn và không gây khó chịu hay bị bí tai khi đeo thời gian dài.\r\n\r\n“Housing tai nghe” này cũng là một điểm “đáng tiền” vì phần lớn ở giai đoạn những năm trước đây, các hãng đều cho ra mắt các loại tai nghe in-ears và có một khoảng người dùng không thích kiểu tai nghe nhét này, mình cũng nằm trong số đó. Apple vào thời điểm đó đem tới đúng cái người dùng cần là dạng form tai nghe earbuds, nên đó là lý do vì sao hệ sản phẩm của họ vẫn luôn “on top” về mặt “đáng mua” và “đáng dùng”. \r\n\r\nTai nghe Bluetooth AirPods 2 Apple MV7N2 - Form tai nghe\r\n\r\nĐối với tai nghe AirPods 2 đã được cải tiến hơn nhiều so với phiên bản trước. Cho thời gian khi đàm thoại khoảng 3 giờ – hơn 1 tiếng so với AirPods thế hệ đầu và lên đến 5 giờ khi sử dụng để nghe nhạc liên tục. Một điểm cải tiến rất nhiều để cạnh tranh với nhiều dòng tai nghe True Wireless với các nhà khác. \r\n\r\nTai nghe Bluetooth AirPods 2 Apple MV7N2 - Đèn LED\r\n\r\nTuy vậy, tình huống AirPods 2 bị cạn pin là rất hiếm khi xảy ra, vì hộp đựng có thể tiếp thêm năng lượng cho 2 bên tai và kéo dài tổng thời gian sử dụng lên đến 24 giờ. Vì viên pin trong từng bên tai rất nhỏ nên chỉ cần bỏ vào khoảng 15 phút hay nửa tiếng là đã có thể dùng được thêm 2 - 3 giờ khi sử dụng ở mức dung lượng nghe 50% nhờ tích hợp công nghệ sạc nhanh tiện lợi cho người dùng.\r\n\r\nThao tác điều khiển cảm ứng nhanh nhạy, chất âm phù hợp với mọi thể loại nhạc\r\nSo với bản 1 thì có thêm tính năng gọi siri. Nhưng cơ bản vào năm 2022 thì gần như mọi tai nghe đều có rồi nên đây vẫn làm mức đáp ứng đủ nhu cầu thông thường chứ không quá đặc biệt. Trải nghiệm thì tất nhiên, đây là những sản phẩm chuẩn mực về mặt thao tác điều khiển, khả năng xử lý rất tốt, chạm vào “siêu xịn”.\r\n\r\nTai nghe Bluetooth AirPods 2 Apple MV7N2 - Cảm ứng chạm\r\n\r\nTất cả các tính năng như: gọi Siri, chuyển bài hát, tạm dừng bài hát, nghe nhận cuộc gọi chỉ cần thực hiện thao tác chạm là rất “nhạy” và cho đến thời điểm hiện tại, rất ít các hãng làm tốt được điểm này như AirPods, vì cũng còn khá nhiều sản phẩm ở phần cảm ứng chạm vẫn chưa được linh hoạt và nhanh nhạy như vậy.\r\n\r\nVề chất âm, hơi thiên bass ở mức độ nhẹ nhưng vẫn đầy đủ các chất âm cho những bạn dùng thông thường, không yêu cầu quá cao về chất âm nghe nhạc. Đối với các dải âm như mid và treble thì khá tròn vai. Với dải mid thì khá ổn, rõ ràng và tách bạch, cùng dải treble hơi thiên âm cao. Phù hợp nghe nhiều thể loại nhạc và một vài dòng hơi thiên bass nhẹ như EDM hay Rap. Đây là một chất âm hợp thời đại chứ không thể gọi là quá xuất sắc.\r\n\r\nTai nghe Bluetooth AirPods 2 Apple MV7N2 - Chất âm\r\n\r\nTóm lại, nếu bạn đang sử dụng hệ sinh thái của Apple, thì tới thời điểm hiện tại AirPods 2 vẫn là một ứng viên sáng giá trong danh sách tai nghe True Wireless đáng để bạn lựa chọn từ thiết kế gọn nhẹ, micro đàm thoại chất lượng cao, phù hợp cho mọi nhu cầu nghe nhạc hay kết nối giữa các thiết bị nhanh chóng.',2640000,10,'product/bluetooth-airpods-2-apple-mv7n2-imei-1-org.jpg',1,'2023-05-25 17:20:18.967599',3),(10,'Tai nghe Chụp Tai Mozard IP-840','Thiết kế gọn đẹp, trẻ trung \r\nTai nghe được hoàn thiện từ chất liệu nhựa với phần đệm đầu được làm bằng da êm ái, không đau đầu dù đeo lâu. Với 2 màu sắc xanh lá hoặc màu be tùy chọn, chiếc tai nghe này vô cùng phù hợp cho các bạn trẻ hiện đại.\r\n\r\nGọn đẹp, trẻ trung - Tai nghe chụp tai Mozard IP-840\r\n\r\nTai nghe Mozard với jack cắm 3.5 mm tương thích với hầu hết các điện thoại hiện nay, dùng tốt với cả máy tính bảng, loa qua cổng 3.5 mm\r\nJack 3.5 - Tai nghe chụp tai Mozard IP-840\r\n\r\nTai nghe Chụp Tai Mozard IP-840 với phần chụp tai gấp gọn dễ dàng để bạn mang theo trong túi xách, tiện lợi khi bảo quản\r\nDễ gấp gọn - Tai nghe chụp tai Mozard IP-840\r\n\r\nPhần đệm tai với lớp đệm mút dày bọc giả da mịn đẹp, giúp tai nghe chụp tai thật thoải mái khi đeo, lọc tạp âm tốt, cho chất lượng âm hoàn hảo hơn.\r\n\r\nChụp tai êm ái - Tai nghe chụp tai Mozard IP-840\r\n\r\nKhoảng nới 3.8 cm trên tai nghe cho phép tùy chỉnh linh hoạt theo cỡ đầu người dùng, mang lại sự thoải mái tốt nhất\r\nKhớp nới linh hoạt - Tai nghe chụp tai Mozard IP-840\r\n\r\nTai nghe có dây sử dụng tiện lợi với chiều dài dây đến 147 cm, linh hoạt trong mọi cử động của người dùng\r\nDây dài 147 cm - Tai nghe chụp tai Mozard IP-840\r\n\r\nTích hợp các điều khiển tiện ích trên tai nghe\r\n- Mic thoại.\r\n\r\n- Nghe/nhận cuộc gọi hoặc phát/dừng chơi nhạc.\r\n\r\n- Tăng/giảm âm lượng.\r\n\r\nĐiều khiển trên dây - Tai nghe chụp tai Mozard IP-840\r\n\r\nNhìn chung, với chiếc tai nghe Chụp Tai Mozard IP-840 này, bạn sẽ thật hài lòng khi dùng nó cho nhu cầu giải trí, công việc, mang lại trải nghiệm riêng tư và thoải mái nhất cho cá nhân.',175000,10,'product/tai-nghe-chup-tai-mozard-ip-840-mau-be-2-2-org.jpg',1,'2023-05-25 17:30:22.913307',3),(11,'Tai nghe Bluetooth Chụp Tai Kanen K6','Tai nghe Bluetooth Chụp Tai Kanen K6 có thiết kế trẻ trung, dễ dàng mang theo và sử dụng trong những chuyến đi\r\nTai nghe Bluetooth Kanen K6 Xám Gold có màu sắc năng động\r\n\r\nTai nghe không chiếm quá nhiều diện tích khi dễ dàng được gấp gọn gàng và cất đi khi không sử dụng\r\nTai nghe Bluetooth Kanen K6 xám gold có thể gấp gọn\r\nChụp tai có lớp đệm êm ái, cho cảm giác thoải mái và dễ chịu khi sử dụng\r\nTai nghe Bluetooth Kanen K6 xám gold có đệm tai nghe êm ái\r\nVới các tính năng như:\r\n- Mic thoại, nghe/nhận cuộc gọi.\r\n\r\n- Phát/dừng chơi nhạc, chuyển bài hát, tăng/giảm âm lượng.\r\n\r\nTai nghe Bluetooth Kanen K6 xám gold nút điều khiển với nhiều tính năng\r\n\r\nCó cổng sạc micro USB thông dụng với thời gian sạc 2 giờ và thời gian dùng lên đến 18 giờ\r\nTai nghe Bluetooth Kanen K6 xám gold có cổng sạc Micro USB\r\nTai nghe Bluetooth có khả năng kết nối trong phạm vi 10 m, cho bạn nghe nhạc hay xem phim khi ngồi xa thiết bị phát\r\nTai nghe Bluetooth Kanen K6 Xám Gold kết nối trong phạm vi 10 m\r\nTai nghe Kanen được trang bị thêm jack cắm tai nghe 3.5 mm, tương thích với nhiều thiết bị hiện nay\r\nTai nghe Bluetooth Kanen K6 Xám Gold tương thích với nhiều thiết bị\r\n\r\nCó thêm các tính năng hiện đại như ra lệnh bằng giọng nói, hay tính năng kích hoạt Siri trên các thiết bị iPhone',420000,10,'product/tai-nghe-bluetooth-kanen-k6-xam-gold-2-org.jpg',1,'2023-05-25 17:31:53.830036',3),(12,'Laptop Lenovo IdeaPad 1 15AMN7 R5 7520U/8GB/256GB/Win11 (82VG0061VN)','Laptop Lenovo IdeaPad 1 15AMN7 R5 (82VG0061VN) hứa hẹn sẽ phá đảo phân khúc laptop học tập - văn phòng nhờ lối thiết kế thanh lịch cùng hiệu năng mạnh mẽ, đây cũng là mẫu laptop đầu tiên được trang bị CPU AMD 7000 series mới nhất tại Thế Giới Di Động.\r\n• Laptop Lenovo IdeaPad sở hữu bộ vi xử lý AMD Ryzen 5 7520U và card đồ họa tích hợp AMD Radeon 610M cung cấp hiệu năng vượt trội có thể cân mọi tác vụ trên Word, Excel, PowerPoint,... hay thậm chí thiết kế hình ảnh 2D không quá phức tạp trong Photoshop, Canva,...\r\n\r\n• RAM 8 GB LPDDR5 tốc độ cao giúp tối ưu khả năng xử lý tác vụ nặng, cho phép bạn đa nhiệm mượt mà với các tác vụ học tập, văn phòng mà không bị giật lag. Ổ cứng SSD 256 GB tăng tốc độ khởi động Windows cũng như ứng dụng, cho bạn trải nghiệm sử dụng trơn tru nhất.\r\n\r\n• Màn hình 15.6 inch độ phân giải Full HD (1920 x 1080) cung cấp khung hình to rõ, độ chi tiết cao với màu sắc tươi tắn. Tấm nền TN kết hợp cùng công nghệ Anti Glare làm tăng trải nghiệm thị giác, đồng thời hạn chế mỏi mắt khi sử dụng trong thời gian dài.\r\n\r\n• Hệ thống loa hai kênh tạo âm thanh stereo đi cùng công nghệ Dolby Audio tái tạo hoàn hảo những âm sắc của một bản nhạc hay một bộ phim, ứng dụng được cài sẵn trong máy cho phép bạn cấu hình âm thanh tùy theo nhu cầu sử dụng.\r\n\r\n• Laptop Lenovo được thiết kế với lớp vỏ nhựa sơn màu xám sang trọng, khối lượng tương đối nhẹ chỉ 1.58 kg giúp bạn dễ dàng mang theo máy bên mình, phục vụ cho công việc ở mọi lúc, mọi nơi.\r\n\r\n• Laptop được trang bị công tắc khóa camera giúp bạn bảo mật thông tin cá nhân trước các nguy cơ xâm nhập trái phép từ các nguồn không xác định.\r\n\r\n• Dọc hai bên máy có các cổng kết nối như: USB 2.0, USB 3.2, HDMI, Jack 3.5 mm, USB Type-C.',9490000,10,'product/lenovo-ideapad-1-15amn7-r5-82vg0061vn-glr-1.jpg',1,'2023-05-25 17:33:05.376540',2),(13,'Chuột Không dây Bluetooth Silent Rapoo M500','Thiết kế nhỏ gọn, vừa vặn tay cầm, kiểu dáng năng động, trẻ trung với màu sắc bắt mắt, họa tiết ấn tượng\r\nChuột máy tính Silent Rapoo M500 với 3 thiết kế màu sắc: Màu xám hiện đại, màu đỏ trẻ trung, màu xanh dương bắt mắt cho bạn lựa chọn theo sở thích.\r\n\r\nTrẻ trung, hiện đại - Chuột Bluetooth Silent Rapoo M500\r\n\r\nKết nối với các thiết bị qua USB Receiver hoặc Bluetooth với khoảng cách đến 10 mét, ổn định, nhanh nhạy\r\nBạn có thể kết nối sử dụng chuột không dây với các thiết bị tương thích để hỗ trợ tích cực nhất cho nhu cầu công việc, giải trí.\r\n\r\nĐây là lựa chọn thuận tiện đặc biệt khi bạn cần làm việc với không gian linh động trên laptop, bên ngoài văn phòng, phòng làm việc, với chuột không dây gọn gàng tiện mang theo.\r\n\r\nKết nối không dây - Chuột Bluetooth Silent Rapoo M500\r\n\r\nTương thích tốt với hệ điều hành Windows, MacOS (MacBook, iMac)\r\nKết nối với nhiều thiết bị - Chuột Bluetooth Silent Rapoo M500\r\n\r\nĐộ phân giải tùy chỉnh với mức 600 - 1600 DPI cho chuột di chuyển nhanh, thao tác nhạy bén và chuẩn xác trên màn hình\r\nChuột Rapoo dùng chơi game tốt, làm việc tốt, thiết kế cơ bản tốt,... thỏa mãn các nhu cầu thông dụng của người dùng. Chỉ cần nhấn nút DPI trên chuột để thay đổi độ nhạy ở mức mong muốn.\r\n\r\nNhạy bén - Chuột Bluetooth Silent Rapoo M500\r\n\r\nCông nghệ Silent giúp chuột hoạt động thật êm ái, không tiếng ồn, thoải mái cho mọi không gian\r\nHoạt động êm ái - Chuột Bluetooth Silent Rapoo M500\r\n\r\nSản phẩm sử dụng năng lượng pin AA đơn giản, tiện lợi, dễ thay thế, thời gian sử dụng pin đến 12 tháng\r\nLựa chọn lý tưởng cho nhu cầu sử dụng chuột với tần suất cao trong mỗi ngày sống và làm việc của bạn.\r\n\r\nDùng pin AA - Chuột Bluetooth Silent Rapoo M500\r\n\r\nTham khảo video hướng dẫn sử dụng chuột đa kết nối Rapoo:\r\n\r\n\r\nTóm lại, chuột Không dây Bluetooth Silent Rapoo M500 là lựa chọn tuyệt vời cho các bạn trẻ năng động thích các thiết kế ấn tượng, nổi bật, đẹp mắt và tiện dụng, mang đến trải nghiệm hài lòng khi sử dụng.',250000,10,'product/chuot-bluetooth-silent-rapoo-m500-xam-1-1-org.jpg',1,'2023-05-25 17:33:59.325632',3),(14,'Xiaomi Redmi Note 12 4G','Xiaomi Redmi Note 12 8GB/128GB - ĐỘC QUYỀN là mẫu điện thoại tầm trung vừa được ra mắt tại thị trường Việt Nam, máy thu hút sự chú ý đến từ người dùng nhờ được trang bị con chip Snapdragon 685 và camera 50 MP nổi bật trong phân khúc.\r\nTỏa sáng với diện mạo đẹp mắt\r\nRedmi Note 12 sở hữu cho mình một dáng vẻ vuông vắn đầy thời thượng, các góc bo tròn cùng mặt lưng và bộ khung vát phẳng tạo nên nên một cái nhìn hiện đại và cực kỳ trẻ trung. Hơn hết, màu sắc cũng chính là điều góp phần làm cho chiếc máy trở nên thu hút với 3 tone màu hiện đại là: Xám, Xanh Dương và Xanh Lá.\r\n\r\nThiết kế sang trọng - Xiaomi Redmi Note 12 8GB\r\n\r\nVề mặt trước thì điện thoại được trang bị một màn hình phẳng cùng nguyên lý thiết kế kiểu nốt ruồi, kèm theo đó là việc tối ưu viền màn hình mỏng giúp mang lại không gian hiển thị rộng lớn.\r\n\r\nTrang bị chipset đến từ nhà Qualcomm\r\nCung cấp sức mạnh cho máy là bộ vi xử lý Snapdragon 685 được sản xuất bởi nhà Qualcomm bằng tiến trình hiện đại 6 nm, chip mang lại hiệu quả về mặt hiệu suất khi mức xung nhịp tối đa đạt được là 2.8 GHz.\r\n\r\nHiệu năng ổn định - Xiaomi Redmi Note 12 8GB\r\n\r\nVới các tác vụ thông thường như đàm thoại, lướt web xem phim thì Redmi Note 12 hoàn toàn là một thiết bị có thể cân tốt, ngoài ra thì máy cũng có thể hỗ trợ chơi tốt nhiều tựa game thịnh hành ở mức cấu hình vừa phải như trên Liên Quân Mobile hay PUBG Mobile.\r\n\r\nNâng tầm nhiếp ảnh với camera 50 MP\r\nTích hợp trên máy sẽ là bộ cảm biến 3 camera với thông số lần lượt là 50 MP trên camera chính, 8 MP đối với camera góc siêu rộng và cuối cùng là cảm biến macro 2 MP hỗ trợ cho việc chụp cận cảnh.\r\n\r\nCamera chụp ảnh sắc nét - Xiaomi Redmi Note 12 8GB\r\n\r\nNhờ trang bị nhiều ống kính như trên nên bạn hoàn toàn có thể tự mình khám phá nhiều phong cách chụp khác nhau thông qua nhiều chế độ đa dạng, ngoài ra máy cũng có thể hỗ trợ tính năng chụp ảnh chân dung với khả năng tạo hiệu ứng bokeh tự nhiên hết sức lung linh và ảo diệu.\r\n\r\nTrải nghiệm thích hơn với màn hình lớn\r\nĐối với chiếc điện thoại Xiaomi Redmi này thì hãng sử dụng cho máy một tấm nền AMOLED và có độ phân giải Full HD+ (1080 x 2400 Pixels), nhờ vậy mà chất lượng nội dung hiển thị có độ chi tiết cao, màu sắc sinh động cũng như tái hiện nội dung có chiều sâu để biến mọi thước phim đều trở nên chân thực.\r\n\r\nMàn hình hiển thị tốt - Xiaomi Redmi Note 12 8GB\r\n\r\nNgoài ra thì máy cũng là một chiếc máy có hỗ trợ tần số quét 120 Hz và đọ sáng tối đa 1200 nits, vừa giúp nâng cao trải nghiệm vuốt chạm xong máy cũng đem lại nhiều tiện ích cho việc sử dụng ngoài trời khi hạn chế được tình trạng tối màn hình mỗi khi sử dụng.\r\n\r\nKéo dài thời lượng dùng với pin lớn\r\nĐược trang bị một viên pin lớn 5000 mAh nên đây chắc hẳn sẽ là chiếc điện thoại Xiaomi lý tưởng cho những bạn có nhu cầu sử dụng điện thoại trong nhiều giờ liền mà ít khi phải cắm sạc, theo như thông tin từ hãng thì máy thể duy trì việc sử dụng cho bạn trong khoảng 1.35 ngày cho tới lần sạc kế tiếp.\r\n\r\nPin lớn 5000 mAh - Xiaomi Redmi Note 12 8GB\r\n\r\nNgoài ra thì máy còn là điện thoại sạc siêu nhanh với công suất tối đa mà hãng có hỗ trợ là 33 W, điều này đem lại hiệu quả cực kỳ lớn khi bạn không phải mất quá nhiều thời gian chờ đợi cho việc nạp đầy dung lượng một viên pin lớn.\r\n\r\nSo sánh thông số kỹ thuật giữa Xiaomi Redmi Note 12 và Xiaomi Redmi Note 12 Pro\r\nDưới đây là bảng tổng hợp các danh mục về thông số kỹ thuật của Xiaomi Redmi Note 12 và Xiaomi Redmi Note 12 Pro vừa được công bố:\r\n\r\nThuộc tính	Xiaomi Redmi Note 12	Xiaomi Redmi Note 12 Pro\r\nMàn hình	AMOLED 6.67 inch	AMOLED 6.67 inch\r\nChip xử lý	Snapdragon 685 8 nhân	MediaTek Dimensity 1080 8 nhân\r\nCamera sau	Chính 50 MP & Phụ 8 MP, 2 MP	Chính 50 MP & Phụ 12 MP, 10 MP\r\nCamera trước	13 MP	16 MP\r\nRAM 	8 GB	8 GB\r\nDung lượng pin	5000 mAh và sạc siêu nhanh 33 W	5000 mAh và sạc siêu nhanh 67 W\r\nMàu sắc	Xanh dương, xám và xanh lá	Trắng, xanh dương và đen\r\nVideo đánh giá chi tiết Xiaomi Redmi Note 12\r\nDưới đây sẽ là video đánh giá chi tiết Xiaomi Redmi Note 12 với đầy đủ thông tin từ hình ảnh cho đến trải nghiệm thực tế người dùng:\r\n\r\n\r\nCâu hỏi thường gặp trước khi mua Xiaomi Redmi Note 12 là gì?\r\nRedmi Note 12 có thực sự nổi bật về camera trong phân khúc giá?\r\n\r\nVới camera có độ phân giải lớn lên đến 50 MP cùng với nhiều tính năng chụp ảnh chuyên nghiệp, Redmi Note 12 tự tin mang lại chất lượng ảnh chụp vượt trội trong phân khúc giá. Ngoài ra camera chính còn có khẩu độ f/1.8, vì thế khả năng thu sáng trên thiết bị này được tăng cường giúp ảnh chụp được rõ ràng và nịnh mắt.\r\n\r\nRedmi Note 12 có hỗ trợ công nghệ tản nhiệt không?\r\n\r\nNhằm mang lại hiệu suất tối ưu cho máy cũng như hạn chế việc ảnh hưởng tuổi thọ của linh kiện từ nhiệt độ do chip sinh ra, vì thế Xiaomi trang bị cho điện thoại hệ thống tản nhiệt mang tên \"Graphit\", giúp duy trì nhiệt độ ổn định trên thân máy để thiết bị có thể vận hành một cách trơn tru và ổn định.\r\n\r\nCon chip Snapdragon 685 8 nhân được ra đời từ khi nào?\r\n\r\nSnapdragon 685 là mẫu chip mới vừa được nhà Qualcomm giới thiệu đến người dùng trong năm 2023, vậy nên chip được trang bị nhiều công nghệ mới mẻ hàng đầu cũng như được sản xuất trên dây chuyền hiện đại, từ đó đem đến một hiệu năng tốt giúp người dùng có thể sử dụng nhiều tác vụ nâng cao được ổn định.\r\n\r\nVới một mức giá bán phải chăng cùng nhiều loại công nghệ lý tưởng, Redmi Note 12 chắc chắn sẽ làm đốn tim người dùng công nghệ khi không cần bỏ qua số tiền quá lớn, nhưng vẫn có thể trải nghiệm được nhiều tính năng cũng như nhiều loại công nghệ điện thoại hàng đầu hiện nay.',5290000,10,'product/xiaomi-redmi-note-12-xam-1.jpg',1,'2023-05-25 17:35:08.472884',1);
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_reviewrating`
--

DROP TABLE IF EXISTS `store_reviewrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_reviewrating` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) NOT NULL,
  `review` longtext NOT NULL,
  `rating` double NOT NULL,
  `ip` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_reviewrating_product_id_2e1974d6_fk_store_product_id` (`product_id`),
  KEY `store_reviewrating_user_id_da0ed849_fk_auth_user_id` (`user_id`),
  CONSTRAINT `store_reviewrating_product_id_2e1974d6_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  CONSTRAINT `store_reviewrating_user_id_da0ed849_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_reviewrating`
--

LOCK TABLES `store_reviewrating` WRITE;
/*!40000 ALTER TABLE `store_reviewrating` DISABLE KEYS */;
INSERT INTO `store_reviewrating` VALUES (1,'Sẽ giới thiệu cho bạn bè, người thân','bạn giao hàng bên thế giới di động tư vấn nhiệt tình, là sản phẩm mới nên dùng rất tốt',5,'127.0.0.1',1,'2023-05-25 17:27:36.060082','2023-05-25 17:27:36.060175',2,2),(2,'Sản phẩm chất lượng','Sử dụng rất tốt',4,'127.0.0.1',1,'2023-05-25 17:40:39.071474','2023-05-25 17:40:39.071493',1,1);
/*!40000 ALTER TABLE `store_reviewrating` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-28 18:57:00
