-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: SistemaArquivosLicitacao
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

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
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Arquivo',1,NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `coupon_histories`
--

LOCK TABLES `coupon_histories` WRITE;
/*!40000 ALTER TABLE `coupon_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `document_comments`
--

LOCK TABLES `document_comments` WRITE;
/*!40000 ALTER TABLE `document_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `document_histories`
--

LOCK TABLES `document_histories` WRITE;
/*!40000 ALTER TABLE `document_histories` DISABLE KEYS */;
INSERT INTO `document_histories` VALUES (1,1,'Atualização de documento',8,'Atualização do documento teste 1 atualizado por Emilson Souza',1,'2024-10-14 01:48:18','2024-10-14 01:48:18'),(2,1,'Atualização de documento',8,'Atualização do documento teste 1 atualizado por Emilson Souza',1,'2024-10-14 01:52:28','2024-10-14 01:52:28'),(3,1,'Atualização de documento',8,'Atualização do documento teste 1 atualizado por Emilson Souza',1,'2024-10-14 01:52:35','2024-10-14 01:52:35'),(4,3,'Criação de documento',8,'Novo documento Emilson De Souza Nascimento criado por Emilson Souza',1,'2024-10-14 02:02:31','2024-10-14 02:02:31'),(5,3,'Atualização de documento',8,'Atualização do documento Emilson De Souza Nascimento atualizado por Emilson Souza',1,'2024-10-14 02:03:26','2024-10-14 02:03:26'),(6,3,'Atualização de documento',8,'Atualização do documento Emilson De Souza Nascimento atualizado por Emilson Souza',1,'2024-10-14 02:13:54','2024-10-14 02:13:54'),(7,3,'Atualização de documento',8,'Atualização do documento Emilson De Souza Nascimento atualizado por Emilson Souza',1,'2024-10-14 02:14:48','2024-10-14 02:14:48'),(8,3,'Atualização de documento',8,'Atualização do documento Emilson De Souza Nascimento atualizado por Emilson Souza',1,'2024-10-14 02:18:19','2024-10-14 02:18:19');
/*!40000 ALTER TABLE `document_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,'teste 1',1,1,'teste1','',8,8,'2024-10-14 01:38:42','2025-10-13','2024-10-14 01:52:35'),(2,'teste 2',1,1,'','',8,8,'2024-10-14 01:38:43',NULL,'2024-10-14 01:38:43'),(3,'Emilson De Souza Nascimento',1,1,'teste','',8,1,'2024-10-14 02:02:30','2024-10-03','2024-10-14 02:14:48');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `logged_histories`
--

LOCK TABLES `logged_histories` WRITE;
/*!40000 ALTER TABLE `logged_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `logged_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2020_05_21_065337_create_permission_tables',1),(6,'2021_05_08_100002_create_subscriptions_table',1),(7,'2021_05_08_124950_create_settings_table',1),(8,'2021_05_29_180034_create_notice_boards_table',1),(9,'2021_05_29_183858_create_contacts_table',1),(10,'2023_07_23_051513_create_documents_table',1),(11,'2023_07_23_052655_create_categories_table',1),(12,'2023_07_23_052715_create_sub_categories_table',1),(13,'2023_07_23_105702_create_tags_table',1),(14,'2023_07_31_160008_create_document_comments_table',1),(15,'2023_07_31_170000_create_reminders_table',1),(16,'2023_08_01_161941_create_version_histories_table',1),(17,'2023_08_02_145848_create_share_documents_table',1),(18,'2023_08_03_172747_create_document_histories_table',1),(19,'2023_08_04_164513_create_logged_histories_table',1),(20,'2024_01_12_141909_create_coupons_table',1),(21,'2024_01_12_171136_create_coupon_histories_table',1),(22,'2024_02_17_052552_create_package_transactions_table',1),(24,'2024_10_13_224124_alter_add_column_in_documents_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(2,'App\\Models\\User',2),(3,'App\\Models\\User',3),(4,'App\\Models\\User',4),(4,'App\\Models\\User',6),(4,'App\\Models\\User',8);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `notice_boards`
--

LOCK TABLES `notice_boards` WRITE;
/*!40000 ALTER TABLE `notice_boards` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice_boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `package_transactions`
--

LOCK TABLES `package_transactions` WRITE;
/*!40000 ALTER TABLE `package_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('emilsonsn2@gmail.com','$2y$10$HtzcRSMnq6mAzylwO.Nxq.zuzdr3qdfXgOurhq5A6q5WRpB7r8F4G','2024-09-18 03:35:06');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'manage user','web',NULL,NULL),(2,'create user','web',NULL,NULL),(3,'edit user','web',NULL,NULL),(4,'delete user','web',NULL,NULL),(5,'manage role','web',NULL,NULL),(6,'create role','web',NULL,NULL),(7,'edit role','web',NULL,NULL),(8,'delete role','web',NULL,NULL),(9,'manage contact','web',NULL,NULL),(10,'create contact','web',NULL,NULL),(11,'edit contact','web',NULL,NULL),(12,'delete contact','web',NULL,NULL),(13,'manage note','web',NULL,NULL),(14,'create note','web',NULL,NULL),(15,'edit note','web',NULL,NULL),(16,'delete note','web',NULL,NULL),(17,'manage logged history','web',NULL,NULL),(18,'delete logged history','web',NULL,NULL),(19,'manage pricing packages','web',NULL,NULL),(20,'create pricing packages','web',NULL,NULL),(21,'edit pricing packages','web',NULL,NULL),(22,'delete pricing packages','web',NULL,NULL),(23,'buy pricing packages','web',NULL,NULL),(24,'manage coupon','web',NULL,NULL),(25,'create coupon','web',NULL,NULL),(26,'edit coupon','web',NULL,NULL),(27,'delete coupon','web',NULL,NULL),(28,'manage coupon history','web',NULL,NULL),(29,'delete coupon history','web',NULL,NULL),(30,'manage pricing transation','web',NULL,NULL),(31,'manage account settings','web',NULL,NULL),(32,'manage password settings','web',NULL,NULL),(33,'manage general settings','web',NULL,NULL),(34,'manage company settings','web',NULL,NULL),(35,'manage email settings','web',NULL,NULL),(36,'manage payment settings','web',NULL,NULL),(37,'manage seo settings','web',NULL,NULL),(38,'manage google recaptcha settings','web',NULL,NULL),(39,'manage category','web',NULL,NULL),(40,'create category','web',NULL,NULL),(41,'edit category','web',NULL,NULL),(42,'delete category','web',NULL,NULL),(43,'manage sub category','web',NULL,NULL),(44,'create sub category','web',NULL,NULL),(45,'edit sub category','web',NULL,NULL),(46,'delete sub category','web',NULL,NULL),(47,'manage tag','web',NULL,NULL),(48,'create tag','web',NULL,NULL),(49,'edit tag','web',NULL,NULL),(50,'delete tag','web',NULL,NULL),(51,'manage document','web',NULL,NULL),(52,'create document','web',NULL,NULL),(53,'edit document','web',NULL,NULL),(54,'delete document','web',NULL,NULL),(55,'show document','web',NULL,NULL),(56,'manage my document','web',NULL,NULL),(57,'edit my document','web',NULL,NULL),(58,'delete my document','web',NULL,NULL),(59,'show my document','web',NULL,NULL),(60,'create my document','web',NULL,NULL),(61,'manage reminder','web',NULL,NULL),(62,'create reminder','web',NULL,NULL),(63,'edit reminder','web',NULL,NULL),(64,'delete reminder','web',NULL,NULL),(65,'show reminder','web',NULL,NULL),(66,'manage my reminder','web',NULL,NULL),(67,'manage document history','web',NULL,NULL),(68,'download document','web',NULL,NULL),(69,'preview document','web',NULL,NULL),(70,'manage comment','web',NULL,NULL),(71,'create comment','web',NULL,NULL),(72,'manage version','web',NULL,NULL),(73,'create version','web',NULL,NULL),(74,'manage share document','web',NULL,NULL),(75,'delete share document','web',NULL,NULL),(76,'create share document','web',NULL,NULL),(77,'manage mail','web',NULL,NULL),(78,'send mail','web',NULL,NULL),(79,'manage user','web',NULL,NULL),(80,'create user','web',NULL,NULL),(81,'edit user','web',NULL,NULL),(82,'delete user','web',NULL,NULL),(83,'manage role','web',NULL,NULL),(84,'create role','web',NULL,NULL),(85,'edit role','web',NULL,NULL),(86,'delete role','web',NULL,NULL),(87,'manage contact','web',NULL,NULL),(88,'create contact','web',NULL,NULL),(89,'edit contact','web',NULL,NULL),(90,'delete contact','web',NULL,NULL),(91,'manage note','web',NULL,NULL),(92,'create note','web',NULL,NULL),(93,'edit note','web',NULL,NULL),(94,'delete note','web',NULL,NULL),(95,'manage logged history','web',NULL,NULL),(96,'delete logged history','web',NULL,NULL),(97,'manage pricing packages','web',NULL,NULL),(98,'create pricing packages','web',NULL,NULL),(99,'edit pricing packages','web',NULL,NULL),(100,'delete pricing packages','web',NULL,NULL),(101,'buy pricing packages','web',NULL,NULL),(102,'manage coupon','web',NULL,NULL),(103,'create coupon','web',NULL,NULL),(104,'edit coupon','web',NULL,NULL),(105,'delete coupon','web',NULL,NULL),(106,'manage coupon history','web',NULL,NULL),(107,'delete coupon history','web',NULL,NULL),(108,'manage pricing transation','web',NULL,NULL),(109,'manage account settings','web',NULL,NULL),(110,'manage password settings','web',NULL,NULL),(111,'manage general settings','web',NULL,NULL),(112,'manage company settings','web',NULL,NULL),(113,'manage email settings','web',NULL,NULL),(114,'manage payment settings','web',NULL,NULL),(115,'manage seo settings','web',NULL,NULL),(116,'manage google recaptcha settings','web',NULL,NULL),(117,'manage category','web',NULL,NULL),(118,'create category','web',NULL,NULL),(119,'edit category','web',NULL,NULL),(120,'delete category','web',NULL,NULL),(121,'manage sub category','web',NULL,NULL),(122,'create sub category','web',NULL,NULL),(123,'edit sub category','web',NULL,NULL),(124,'delete sub category','web',NULL,NULL),(125,'manage tag','web',NULL,NULL),(126,'create tag','web',NULL,NULL),(127,'edit tag','web',NULL,NULL),(128,'delete tag','web',NULL,NULL),(129,'manage document','web',NULL,NULL),(130,'create document','web',NULL,NULL),(131,'edit document','web',NULL,NULL),(132,'delete document','web',NULL,NULL),(133,'show document','web',NULL,NULL),(134,'manage my document','web',NULL,NULL),(135,'edit my document','web',NULL,NULL),(136,'delete my document','web',NULL,NULL),(137,'show my document','web',NULL,NULL),(138,'create my document','web',NULL,NULL),(139,'manage reminder','web',NULL,NULL),(140,'create reminder','web',NULL,NULL),(141,'edit reminder','web',NULL,NULL),(142,'delete reminder','web',NULL,NULL),(143,'show reminder','web',NULL,NULL),(144,'manage my reminder','web',NULL,NULL),(145,'manage document history','web',NULL,NULL),(146,'download document','web',NULL,NULL),(147,'preview document','web',NULL,NULL),(148,'manage comment','web',NULL,NULL),(149,'create comment','web',NULL,NULL),(150,'manage version','web',NULL,NULL),(151,'create version','web',NULL,NULL),(152,'manage share document','web',NULL,NULL),(153,'delete share document','web',NULL,NULL),(154,'create share document','web',NULL,NULL),(155,'manage mail','web',NULL,NULL),(156,'send mail','web',NULL,NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(19,1),(20,1),(21,1),(22,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(35,1),(36,1),(37,1),(38,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(23,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(39,2),(40,2),(41,2),(42,2),(43,2),(44,2),(45,2),(46,2),(47,2),(48,2),(49,2),(50,2),(51,2),(52,2),(53,2),(54,2),(55,2),(56,2),(57,2),(58,2),(59,2),(60,2),(61,2),(62,2),(63,2),(64,2),(65,2),(66,2),(67,2),(68,2),(69,2),(70,2),(71,2),(72,2),(73,2),(74,2),(75,2),(76,2),(77,2),(78,2),(1,3),(2,3),(3,3),(4,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(39,3),(40,3),(41,3),(42,3),(43,3),(44,3),(45,3),(46,3),(47,3),(48,3),(49,3),(50,3),(51,3),(52,3),(53,3),(54,3),(55,3),(56,3),(57,3),(58,3),(59,3),(60,3),(61,3),(62,3),(63,3),(64,3),(65,3),(66,3),(67,3),(68,3),(69,3),(70,3),(71,3),(72,3),(73,3),(74,3),(75,3),(76,3),(77,3),(78,3),(9,4),(10,4),(11,4),(12,4),(13,4),(14,4),(15,4),(16,4),(56,4),(57,4),(58,4),(59,4),(60,4),(65,4),(66,4),(68,4),(69,4),(70,4),(71,4),(72,4),(74,4),(76,4);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'super admin','web',0,'2024-09-18 03:30:20','2024-09-18 03:30:20'),(2,'owner','web',1,'2024-09-18 03:30:21','2024-09-18 03:30:21'),(3,'manager','web',2,'2024-09-18 03:30:21','2024-09-18 03:30:21'),(4,'employee','web',2,'2024-09-18 03:30:21','2024-09-18 03:30:21');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'theme_color','color1','common',1,NULL,NULL),(2,'sidebar_mode','dark','common',1,NULL,NULL),(3,'layout_direction','ltrmode','common',1,NULL,NULL),(4,'layout_mode','darkmode','common',1,NULL,NULL),(5,'own_color','','common',1,NULL,NULL),(6,'own_color_code','','common',1,NULL,NULL),(7,'color_type','default','common',1,NULL,NULL),(8,'register_page','on','common',1,NULL,NULL),(9,'landing_page','on','common',1,NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `share_documents`
--

LOCK TABLES `share_documents` WRITE;
/*!40000 ALTER TABLE `share_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `share_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (1,'Registro',1,1,NULL,NULL);
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,'Basic',0.00,'Unlimited',10,10,1,1,'2024-09-18 03:30:21','2024-09-18 03:30:21');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Super Admin',NULL,'emilsonsn2001@gmail.com','super admin','avatar.png',NULL,'portuguese',NULL,NULL,0,NULL,'$2y$10$DSGAZcxkwWCHPs3mtiPilOc9p9P/JFkd94FT1VuifhLJEcW1cqWyq',1,NULL,'2024-09-18 03:30:21','2024-09-18 03:37:51'),(2,'Owner',NULL,'owner@gmail.com','owner','avatar.png',NULL,'english',1,NULL,1,NULL,'$2y$10$exPjpzOaryJ8pbShTENtVO..Dzt61555OWBsnQIzZfKX0vWNb5yNC',1,NULL,'2024-09-18 03:30:21','2024-09-18 03:30:21'),(3,'Manager',NULL,'manager@gmail.com','manager','avatar.png',NULL,'english',0,NULL,1,NULL,'$2y$10$0hwiBVKrAk0FCKJDNa29k.ifRmrYwRdidPBo.avYlB1JA3nmhRYAy',1,NULL,'2024-09-18 03:30:21','2024-09-18 03:30:21'),(4,'Employee',NULL,'employee@gmail.com','employee','avatar.png',NULL,'portuguese',1,NULL,1,NULL,'$2y$10$8kqDTBqUnfjhx86oPAeuWOOnHFPu/1hjya8gQBBh5c4yATFKfrmRu',1,NULL,'2024-09-18 03:30:21','2024-09-18 03:44:00'),(8,'Emilson','Souza','emilsonsn2@gmail.com','employee','avatar.png','','portuguese',1,NULL,1,NULL,'$2y$10$s44pglADCUEqwjgHLz4pd.I0i0tq0DJMELWy9ilEIWrbIcwvMOVG.',1,NULL,'2024-10-14 01:38:33','2024-10-14 01:38:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `version_histories`
--

LOCK TABLES `version_histories` WRITE;
/*!40000 ALTER TABLE `version_histories` DISABLE KEYS */;
INSERT INTO `version_histories` VALUES (1,'1728860551.json','1','3',8,1,'2024-10-14 02:02:31','2024-10-14 02:02:31');
/*!40000 ALTER TABLE `version_histories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-15  0:28:21
