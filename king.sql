-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: king
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0:关闭 1:启用',
  `created_on` int(10) unsigned NOT NULL,
  `modified_on` int(10) unsigned NOT NULL,
  `deleted_on` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '名称',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '分类标签 0:功能建议 1:性能问题',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '反馈内容',
  `picture` varchar(255) DEFAULT NULL COMMENT '图片',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0:未处理 1:已处理',
  `created_at` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `modified_at` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  `deleted_at` int(10) unsigned DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='意见反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (1,'1213',1,'13631303285',1,'ecshi',NULL,0,1585100249,1585100249,NULL);
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_menu`
--

DROP TABLE IF EXISTS `goadmin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `order` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_menu`
--

LOCK TABLES `goadmin_menu` WRITE;
/*!40000 ALTER TABLE `goadmin_menu` DISABLE KEYS */;
INSERT INTO `goadmin_menu` VALUES (1,0,1,2,'Admin','fa-tasks','',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,1,1,2,'Users','fa-users','/info/manager',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(3,1,1,3,'Roles','fa-user','/info/roles',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(4,1,1,4,'Permission','fa-ban','/info/permission',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(5,1,1,5,'Menu','fa-bars','/menu',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(6,1,1,6,'Operation log','fa-history','/info/op',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(8,0,0,2,'内容','fa-bars','','','2020-03-24 07:10:12','2020-03-24 07:10:12'),(9,8,0,2,'标签','fa-bars','/info/tags','','2020-03-25 02:08:04','2020-03-25 10:08:47'),(10,0,0,2,'后勤','fa-bars','','','2020-03-25 08:14:07','2020-03-25 08:14:07'),(11,10,0,2,'意见反馈','fa-bars','/info/feedbacks','','2020-03-25 08:14:23','2020-03-25 08:14:23');
/*!40000 ALTER TABLE `goadmin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_operation_log`
--

DROP TABLE IF EXISTS `goadmin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_operation_log`
--

LOCK TABLES `goadmin_operation_log` WRITE;
/*!40000 ALTER TABLE `goadmin_operation_log` DISABLE KEYS */;
INSERT INTO `goadmin_operation_log` VALUES (1,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-23 01:40:20','2020-03-23 01:40:20'),(2,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-23 01:40:40','2020-03-23 01:40:40'),(3,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-23 01:40:41','2020-03-23 01:40:41'),(4,1,'/admin/info/permission','GET','127.0.0.1','','2020-03-23 01:40:41','2020-03-23 01:40:41'),(5,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:40:42','2020-03-23 01:40:42'),(6,1,'/admin/info/op','GET','127.0.0.1','','2020-03-23 01:40:42','2020-03-23 01:40:42'),(7,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:40:44','2020-03-23 01:40:44'),(8,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:46:30','2020-03-23 01:46:30'),(9,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:47:51','2020-03-23 01:47:51'),(10,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:47:54','2020-03-23 01:47:54'),(11,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:48:35','2020-03-23 01:48:35'),(12,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:49:18','2020-03-23 01:49:18'),(13,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:49:19','2020-03-23 01:49:19'),(14,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-23 01:49:25','2020-03-23 01:49:25'),(15,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-23 01:49:26','2020-03-23 01:49:26'),(16,1,'/admin/info/permission','GET','127.0.0.1','','2020-03-23 01:49:27','2020-03-23 01:49:27'),(17,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:50:25','2020-03-23 01:50:25'),(18,1,'/admin/info/op','GET','127.0.0.1','','2020-03-23 01:50:26','2020-03-23 01:50:26'),(19,1,'/admin/info/op','GET','127.0.0.1','','2020-03-23 03:06:57','2020-03-23 03:06:57'),(20,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-23 03:07:01','2020-03-23 03:07:01'),(21,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-23 03:07:04','2020-03-23 03:07:04'),(22,1,'/admin/info/permission','GET','127.0.0.1','','2020-03-23 03:07:05','2020-03-23 03:07:05'),(23,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 03:07:56','2020-03-23 03:07:56'),(24,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-23 03:07:58','2020-03-23 03:07:58'),(25,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-23 03:08:01','2020-03-23 03:08:01'),(26,1,'/admin/info/roles/new','GET','127.0.0.1','','2020-03-23 03:09:23','2020-03-23 03:09:23'),(27,1,'/admin/new/roles','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/roles?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"f37f3392-fc5b-4fb6-b5ae-6f0566550bde\"],\"name\":[\"121\"],\"permission_id[]\":[\"\"],\"slug\":[\"32\"]}','2020-03-23 03:09:28','2020-03-23 03:09:28'),(28,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-23 03:09:32','2020-03-23 03:09:32'),(29,1,'/admin/delete/roles','POST','127.0.0.1','','2020-03-23 03:09:36','2020-03-23 03:09:36'),(30,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-23 03:09:36','2020-03-23 03:09:36'),(31,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-23 03:53:09','2020-03-23 03:53:09'),(32,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 03:53:11','2020-03-23 03:53:11'),(33,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-24 07:07:20','2020-03-24 07:07:20'),(34,1,'/admin/info/op','GET','127.0.0.1','','2020-03-24 07:07:22','2020-03-24 07:07:22'),(35,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:07:43','2020-03-24 07:07:43'),(36,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-24 07:09:31','2020-03-24 07:09:31'),(37,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:35','2020-03-24 07:09:35'),(38,1,'/admin/menu/delete','POST','127.0.0.1','','2020-03-24 07:09:44','2020-03-24 07:09:44'),(39,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:44','2020-03-24 07:09:44'),(40,1,'/admin/menu/delete','POST','127.0.0.1','','2020-03-24 07:09:46','2020-03-24 07:09:46'),(41,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:46','2020-03-24 07:09:46'),(42,1,'/admin/menu/delete','POST','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(43,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(44,1,'/admin/menu/delete','POST','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(45,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(46,1,'/admin/menu/delete','POST','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(47,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(48,1,'/admin/menu/delete','POST','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(49,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(50,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:49','2020-03-24 07:09:49'),(51,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"04712b6d-616a-414f-85c1-ee1c8c59bce8\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"0\"],\"title\":[\"内容\"],\"uri\":[\"\"]}','2020-03-24 07:10:12','2020-03-24 07:10:12'),(52,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:10:15','2020-03-24 07:10:15'),(53,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 02:07:27','2020-03-25 02:07:27'),(54,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 02:07:29','2020-03-25 02:07:29'),(55,1,'/admin/info/permission','GET','127.0.0.1','','2020-03-25 02:07:30','2020-03-25 02:07:30'),(56,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-25 02:07:31','2020-03-25 02:07:31'),(57,1,'/admin/info/permission','GET','127.0.0.1','','2020-03-25 02:07:31','2020-03-25 02:07:31'),(58,1,'/admin/info/op','GET','127.0.0.1','','2020-03-25 02:07:32','2020-03-25 02:07:32'),(59,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 02:07:39','2020-03-25 02:07:39'),(60,1,'/admin/menu','GET','127.0.0.1','','2020-03-25 02:07:41','2020-03-25 02:07:41'),(61,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"b2bdc9ce-4b5c-4d6a-ba62-ebfd6ea74f89\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"8\"],\"title\":[\"标签\"],\"uri\":[\"/tags\"]}','2020-03-25 02:08:04','2020-03-25 02:08:04'),(62,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 02:08:18','2020-03-25 02:08:18'),(63,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:08:27','2020-03-25 02:08:27'),(64,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:11:06','2020-03-25 02:11:06'),(65,1,'/admin/menu','GET','127.0.0.1','','2020-03-25 02:11:11','2020-03-25 02:11:11'),(66,1,'/admin/menu/edit/show','GET','127.0.0.1','','2020-03-25 02:11:14','2020-03-25 02:11:14'),(67,1,'/admin/menu/edit','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"57b0e81e-4efa-4785-b67c-fc44f517209e\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"id\":[\"9\"],\"parent_id\":[\"8\"],\"title\":[\"标签\"],\"uri\":[\"info/tags\"]}','2020-03-25 02:11:20','2020-03-25 02:11:20'),(68,1,'/admin/menu/edit/show','GET','127.0.0.1','','2020-03-25 02:11:26','2020-03-25 02:11:26'),(69,1,'/admin/menu/edit','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"138924f1-5abd-4bca-826a-05b084309c18\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"id\":[\"9\"],\"parent_id\":[\"8\"],\"title\":[\"标签\"],\"uri\":[\"/info/tags\"]}','2020-03-25 02:11:32','2020-03-25 02:11:32'),(70,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 02:11:41','2020-03-25 02:11:41'),(71,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:11:44','2020-03-25 02:11:44'),(72,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:15:44','2020-03-25 02:15:44'),(73,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:15:45','2020-03-25 02:15:45'),(74,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:15:46','2020-03-25 02:15:46'),(75,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:15:46','2020-03-25 02:15:46'),(76,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:15:46','2020-03-25 02:15:46'),(77,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:15:46','2020-03-25 02:15:46'),(78,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:29:15','2020-03-25 02:29:15'),(79,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:35:20','2020-03-25 02:35:20'),(80,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:35:27','2020-03-25 02:35:27'),(81,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:02:17','2020-03-25 03:02:17'),(82,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:02:22','2020-03-25 03:02:22'),(83,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:03:47','2020-03-25 03:03:47'),(84,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:03:47','2020-03-25 03:03:47'),(85,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:03:47','2020-03-25 03:03:47'),(86,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:03:47','2020-03-25 03:03:47'),(87,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:03:48','2020-03-25 03:03:48'),(88,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:03:48','2020-03-25 03:03:48'),(89,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:06:34','2020-03-25 03:06:34'),(90,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:06:34','2020-03-25 03:06:34'),(91,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:06:35','2020-03-25 03:06:35'),(92,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:06:35','2020-03-25 03:06:35'),(93,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:06:35','2020-03-25 03:06:35'),(94,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:09:53','2020-03-25 03:09:53'),(95,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:09:55','2020-03-25 03:09:55'),(96,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:10:07','2020-03-25 03:10:07'),(97,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 03:10:11','2020-03-25 03:10:11'),(98,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-25 03:10:12','2020-03-25 03:10:12'),(99,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-25 03:10:12','2020-03-25 03:10:12'),(100,1,'/admin/info/permission','GET','127.0.0.1','','2020-03-25 03:10:13','2020-03-25 03:10:13'),(101,1,'/admin/menu','GET','127.0.0.1','','2020-03-25 03:10:13','2020-03-25 03:10:13'),(102,1,'/admin/info/op','GET','127.0.0.1','','2020-03-25 03:10:13','2020-03-25 03:10:13'),(103,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:10:15','2020-03-25 03:10:15'),(104,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:30:10','2020-03-25 03:30:10'),(105,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:31:06','2020-03-25 03:31:06'),(106,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:10','2020-03-25 03:31:10'),(107,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:18','2020-03-25 03:31:18'),(108,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:20','2020-03-25 03:31:20'),(109,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:21','2020-03-25 03:31:21'),(110,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:21','2020-03-25 03:31:21'),(111,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:22','2020-03-25 03:31:22'),(112,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:22','2020-03-25 03:31:22'),(113,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:22','2020-03-25 03:31:22'),(114,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:22','2020-03-25 03:31:22'),(115,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:22','2020-03-25 03:31:22'),(116,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:23','2020-03-25 03:31:23'),(117,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:23','2020-03-25 03:31:23'),(118,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:23','2020-03-25 03:31:23'),(119,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:24','2020-03-25 03:31:24'),(120,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:24','2020-03-25 03:31:24'),(121,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:24','2020-03-25 03:31:24'),(122,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:31:31','2020-03-25 03:31:31'),(123,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:33','2020-03-25 03:31:33'),(124,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:32:02','2020-03-25 03:32:02'),(125,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:32:09','2020-03-25 03:32:09'),(126,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:32:12','2020-03-25 03:32:12'),(127,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:35:27','2020-03-25 03:35:27'),(128,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:36:43','2020-03-25 03:36:43'),(129,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:36:46','2020-03-25 03:36:46'),(130,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"bc9bad15-e673-4630-85d2-d9aa9478a06b\"],\"created_on\":[\"\"],\"deleted_on\":[\"\"],\"modified_on\":[\"\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 03:36:50','2020-03-25 03:36:50'),(131,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"c80d1abd-3dc8-4b25-a064-a4d18796f9fa\"],\"created_on\":[\"\"],\"deleted_on\":[\"\"],\"modified_on\":[\"\"],\"name\":[\"\"],\"status\":[\"0\"]}','2020-03-25 03:40:59','2020-03-25 03:40:59'),(132,1,'/admin/menu','GET','127.0.0.1','','2020-03-25 03:41:27','2020-03-25 03:41:27'),(133,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:41:30','2020-03-25 03:41:30'),(134,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:41:33','2020-03-25 03:41:33'),(135,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"590ed0d4-5c33-48ed-ba45-39f74498bec5\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 03:41:36','2020-03-25 03:41:36'),(136,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"f6c9f120-1e9e-4671-8f36-665ca7dd63b4\"],\"name\":[\"\"],\"status\":[\"0\"]}','2020-03-25 03:41:43','2020-03-25 03:41:43'),(137,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:43:10','2020-03-25 03:43:10'),(138,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"c9c56242-f1d9-4882-8fb2-f930e547e31f\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 03:43:13','2020-03-25 03:43:13'),(139,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"0e6c9645-c971-42a4-8047-e479a2922f60\"],\"name\":[\"\"],\"status\":[\"0\"]}','2020-03-25 03:43:24','2020-03-25 03:43:24'),(140,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:47:01','2020-03-25 03:47:01'),(141,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"e65de5ca-f608-4cf5-95de-8394496cd8f5\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 03:47:09','2020-03-25 03:47:09'),(142,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:48:21','2020-03-25 03:48:21'),(143,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"6e422cd1-8e70-4c2a-8637-a1644758a107\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 03:48:25','2020-03-25 03:48:25'),(144,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"4ca11b31-67cd-4ecb-94f7-bdb6f6dcc159\"],\"name\":[\"\"],\"status\":[\"0\"]}','2020-03-25 03:48:40','2020-03-25 03:48:40'),(145,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:48:47','2020-03-25 03:48:47'),(146,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:49:20','2020-03-25 03:49:20'),(147,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:56:22','2020-03-25 03:56:22'),(148,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:57:41','2020-03-25 03:57:41'),(149,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:59:34','2020-03-25 03:59:34'),(150,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 03:59:38','2020-03-25 03:59:38'),(151,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_post_type\":[\"0\"],\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"4846de04-aa33-4f46-9f74-4e573a906fa3\"],\"id\":[\"1\"],\"name\":[\"1213\"],\"status\":[\"1\"]}','2020-03-25 03:59:42','2020-03-25 03:59:42'),(152,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 06:03:01','2020-03-25 06:03:01'),(153,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:03:05','2020-03-25 06:03:05'),(154,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:03:07','2020-03-25 06:03:07'),(155,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"3df9f378-62d1-4b41-9961-98d11987d7fe\"],\"name\":[\"于文浩\"],\"status\":[\"0\"]}','2020-03-25 06:03:10','2020-03-25 06:03:10'),(156,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:05:53','2020-03-25 06:05:53'),(157,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"http://127.0.0.1:9033/admin/new/tags\"],\"__go_admin_t_\":[\"6b1332e3-c305-4c2f-9c1b-0c139accaa3c\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:05:56','2020-03-25 06:05:56'),(158,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:06:54','2020-03-25 06:06:54'),(159,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"http://127.0.0.1:9033/admin/new/tags\"],\"__go_admin_t_\":[\"fe2b44be-8a9b-4048-8d75-586909efe78c\"],\"created_on\":[\"1585116253\"],\"modified_on\":[\"1585116253\"],\"name\":[\"于文浩\"],\"status\":[\"0\"]}','2020-03-25 06:06:58','2020-03-25 06:06:58'),(160,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:07:27','2020-03-25 06:07:27'),(161,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"http://127.0.0.1:9033/admin/new/tags\"],\"__go_admin_t_\":[\"e790f0f2-0a51-42a7-a577-da16e24d8d9b\"],\"created_on\":[\"1585116292\"],\"modified_on\":[\"1585116292\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:07:37','2020-03-25 06:07:37'),(162,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:30:26','2020-03-25 06:30:26'),(163,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:30:28','2020-03-25 06:30:28'),(164,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"c0d73d5d-a5fd-4690-919c-00d9ae8ca479\"],\"created_on\":[\"1585117668\"],\"modified_on\":[\"1585117668\"],\"name\":[\"\"],\"status\":[\"0\"]}','2020-03-25 06:30:32','2020-03-25 06:30:32'),(165,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:30:35','2020-03-25 06:30:35'),(166,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"c9b0a439-8d7b-48bc-8e50-1f0cf07e0ad2\"],\"created_on\":[\"1585117674\"],\"modified_on\":[\"1585117674\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:30:38','2020-03-25 06:30:38'),(167,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:30:40','2020-03-25 06:30:40'),(168,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:31:36','2020-03-25 06:31:36'),(169,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_post_type\":[\"1\"],\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"b0f33107-fe74-427c-bf23-ad3c655e8b35\"],\"created_on\":[\"1585117734\"],\"id\":[\"2\"],\"modified_on\":[\"1585117734\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:31:39','2020-03-25 06:31:39'),(170,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 06:32:04','2020-03-25 06:32:04'),(171,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_post_type\":[\"0\"],\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"5dec92c3-fc33-4eea-acf9-5dcb5273aa9e\"],\"id\":[\"2\"],\"modified_on\":[\"1585117764\"],\"name\":[\"资讯\"],\"status\":[\"1\"]}','2020-03-25 06:32:08','2020-03-25 06:32:08'),(172,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:33:49','2020-03-25 06:33:49'),(173,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 06:33:53','2020-03-25 06:33:53'),(174,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_post_type\":[\"0\"],\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"4afa761c-cee1-42b2-a7c8-b31105cf2d99\"],\"id\":[\"2\"],\"modified_at\":[\"2020-03-25 14:31:18\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:34:02','2020-03-25 06:34:02'),(175,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 06:35:35','2020-03-25 06:35:35'),(176,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_post_type\":[\"0\"],\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"7b10899d-5d57-472a-8883-c1e6772d64e5\"],\"id\":[\"2\"],\"modified_at\":[\"2020-03-25 14:32:56\"],\"name\":[\"资讯\"],\"status\":[\"1\"]}','2020-03-25 06:35:40','2020-03-25 06:35:40'),(177,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 06:41:06','2020-03-25 06:41:06'),(178,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_post_type\":[\"0\"],\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"0dbff129-d6b3-4eff-a4d5-bb63613d3190\"],\"id\":[\"2\"],\"modified_at\":[\"2020-03-25 14:38:24\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:41:09','2020-03-25 06:41:09'),(179,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 06:42:02','2020-03-25 06:42:02'),(180,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_post_type\":[\"0\"],\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"8b1a2240-bf8e-4881-9bdb-4e67185ee660\"],\"id\":[\"2\"],\"modified_at\":[\"2020-03-25 14:39:20\"],\"name\":[\"资讯\"],\"status\":[\"1\"]}','2020-03-25 06:42:04','2020-03-25 06:42:04'),(181,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:51:00','2020-03-25 06:51:00'),(182,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 06:51:03','2020-03-25 06:51:03'),(183,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"ce600b68-cb41-4e51-ac7c-38a52e330436\"],\"id\":[\"2\"],\"modified_at\":[\"2020-03-25 14:48:21\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:51:06','2020-03-25 06:51:06'),(184,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:54:29','2020-03-25 06:54:29'),(185,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:54:32','2020-03-25 06:54:32'),(186,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"e2a24973-6306-47a4-9f6d-6645e70c9d14\"],\"created_at\":[\"1585119113\"],\"id\":[\"3\"],\"modified_at\":[\"1585119113\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:54:38','2020-03-25 06:54:38'),(187,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:55:46','2020-03-25 06:55:46'),(188,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:55:47','2020-03-25 06:55:47'),(189,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:55:49','2020-03-25 06:55:49'),(190,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:55:49','2020-03-25 06:55:49'),(191,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:55:49','2020-03-25 06:55:49'),(192,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:00:53','2020-03-25 07:00:53'),(193,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:01:21','2020-03-25 07:01:21'),(194,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:03:18','2020-03-25 07:03:18'),(195,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:03:25','2020-03-25 07:03:25'),(196,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 07:03:47','2020-03-25 07:03:47'),(197,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"09e8e8e2-9acb-4c36-9f84-8d1d11e2632b\"],\"id\":[\"3\"],\"modified_at\":[\"1585119665\"],\"name\":[\"资讯\"],\"status\":[\"1\"]}','2020-03-25 07:03:50','2020-03-25 07:03:50'),(198,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:03:51','2020-03-25 07:03:51'),(199,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:07:36','2020-03-25 07:07:36'),(200,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:07:38','2020-03-25 07:07:38'),(201,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:08:47','2020-03-25 07:08:47'),(202,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:08:53','2020-03-25 07:08:53'),(203,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:09:12','2020-03-25 07:09:12'),(204,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:09:14','2020-03-25 07:09:14'),(205,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:11:14','2020-03-25 07:11:14'),(206,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:15:26','2020-03-25 07:15:26'),(207,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:16:46','2020-03-25 07:16:46'),(208,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:19:22','2020-03-25 07:19:22'),(209,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:19:24','2020-03-25 07:19:24'),(210,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:19:26','2020-03-25 07:19:26'),(211,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:22:05','2020-03-25 07:22:05'),(212,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:22:08','2020-03-25 07:22:08'),(213,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:22:12','2020-03-25 07:22:12'),(214,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:22:35','2020-03-25 07:22:35'),(215,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:23:34','2020-03-25 07:23:34'),(216,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:23:41','2020-03-25 07:23:41'),(217,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:23:43','2020-03-25 07:23:43'),(218,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:23:44','2020-03-25 07:23:44'),(219,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:23:44','2020-03-25 07:23:44'),(220,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:23:44','2020-03-25 07:23:44'),(221,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:23:45','2020-03-25 07:23:45'),(222,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 08:13:24','2020-03-25 08:13:24'),(223,1,'/admin/menu','GET','127.0.0.1','','2020-03-25 08:13:27','2020-03-25 08:13:27'),(224,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"23fc1941-c1f9-480a-bf3f-e93b0910135e\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"0\"],\"title\":[\"后勤\"],\"uri\":[\"\"]}','2020-03-25 08:14:07','2020-03-25 08:14:07'),(225,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"3f984e30-f8fb-49dc-98b8-0263cd715618\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"10\"],\"title\":[\"意见反馈\"],\"uri\":[\"/info/feedbacks\"]}','2020-03-25 08:14:24','2020-03-25 08:14:24'),(226,1,'/admin/menu','GET','127.0.0.1','','2020-03-25 08:14:27','2020-03-25 08:14:27'),(227,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 08:14:29','2020-03-25 08:14:29'),(228,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:04:25','2020-03-25 09:04:25'),(229,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:04:33','2020-03-25 09:04:33'),(230,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:04:34','2020-03-25 09:04:34'),(231,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:04:36','2020-03-25 09:04:36'),(232,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:04:36','2020-03-25 09:04:36'),(233,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:04:36','2020-03-25 09:04:36'),(234,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:04:37','2020-03-25 09:04:37'),(235,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:59:18','2020-03-25 09:59:18'),(236,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:59:20','2020-03-25 09:59:20'),(237,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:59:21','2020-03-25 09:59:21'),(238,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:59:21','2020-03-25 09:59:21'),(239,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:59:58','2020-03-25 09:59:58'),(240,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 10:02:15','2020-03-25 10:02:15'),(241,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 10:02:31','2020-03-25 10:02:31'),(242,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 10:06:18','2020-03-25 10:06:18'),(243,1,'/admin/update/feedbacks','POST','127.0.0.1','','2020-03-25 10:06:20','2020-03-25 10:06:20'),(244,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 10:06:24','2020-03-25 10:06:24'),(245,1,'/admin/update/feedbacks','POST','127.0.0.1','','2020-03-25 10:06:25','2020-03-25 10:06:25'),(246,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 10:06:26','2020-03-25 10:06:26'),(247,1,'/admin/update/feedbacks','POST','127.0.0.1','','2020-03-25 10:06:29','2020-03-25 10:06:29'),(248,1,'/admin/update/feedbacks','POST','127.0.0.1','','2020-03-25 10:06:30','2020-03-25 10:06:30');
/*!40000 ALTER TABLE `goadmin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_permissions`
--

DROP TABLE IF EXISTS `goadmin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_permissions`
--

LOCK TABLES `goadmin_permissions` WRITE;
/*!40000 ALTER TABLE `goadmin_permissions` DISABLE KEYS */;
INSERT INTO `goadmin_permissions` VALUES (1,'All permission','*','','*','2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,'Dashboard','dashboard','GET,PUT,POST,DELETE','/','2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_role_menu`
--

DROP TABLE IF EXISTS `goadmin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_role_menu` (
  `role_id` int(11) unsigned NOT NULL,
  `menu_id` int(11) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_role_menu`
--

LOCK TABLES `goadmin_role_menu` WRITE;
/*!40000 ALTER TABLE `goadmin_role_menu` DISABLE KEYS */;
INSERT INTO `goadmin_role_menu` VALUES (1,1,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(1,8,'2019-09-11 10:20:55','2019-09-11 10:20:55'),(2,8,'2019-09-11 10:20:55','2019-09-11 10:20:55');
/*!40000 ALTER TABLE `goadmin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_role_permissions`
--

DROP TABLE IF EXISTS `goadmin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_role_permissions` (
  `role_id` int(11) unsigned NOT NULL,
  `permission_id` int(11) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `admin_role_permissions` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_role_permissions`
--

LOCK TABLES `goadmin_role_permissions` WRITE;
/*!40000 ALTER TABLE `goadmin_role_permissions` DISABLE KEYS */;
INSERT INTO `goadmin_role_permissions` VALUES (1,1,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(1,2,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,2,'2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_role_users`
--

DROP TABLE IF EXISTS `goadmin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_role_users` (
  `role_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `admin_user_roles` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_role_users`
--

LOCK TABLES `goadmin_role_users` WRITE;
/*!40000 ALTER TABLE `goadmin_role_users` DISABLE KEYS */;
INSERT INTO `goadmin_role_users` VALUES (1,1,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,2,'2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_roles`
--

DROP TABLE IF EXISTS `goadmin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_roles`
--

LOCK TABLES `goadmin_roles` WRITE;
/*!40000 ALTER TABLE `goadmin_roles` DISABLE KEYS */;
INSERT INTO `goadmin_roles` VALUES (1,'Administrator','administrator','2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,'Operator','operator','2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_session`
--

DROP TABLE IF EXISTS `goadmin_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_session` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `values` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_session`
--

LOCK TABLES `goadmin_session` WRITE;
/*!40000 ALTER TABLE `goadmin_session` DISABLE KEYS */;
INSERT INTO `goadmin_session` VALUES (6,'cdbc9ab4-1804-425e-bbb8-81731dbed8c4','{\"user_id\":1}','2020-03-25 08:13:24','2020-03-25 08:13:24');
/*!40000 ALTER TABLE `goadmin_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_user_permissions`
--

DROP TABLE IF EXISTS `goadmin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_user_permissions` (
  `user_id` int(11) unsigned NOT NULL,
  `permission_id` int(11) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `admin_user_permissions` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_user_permissions`
--

LOCK TABLES `goadmin_user_permissions` WRITE;
/*!40000 ALTER TABLE `goadmin_user_permissions` DISABLE KEYS */;
INSERT INTO `goadmin_user_permissions` VALUES (1,1,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,2,'2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_users`
--

DROP TABLE IF EXISTS `goadmin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_users`
--

LOCK TABLES `goadmin_users` WRITE;
/*!40000 ALTER TABLE `goadmin_users` DISABLE KEYS */;
INSERT INTO `goadmin_users` VALUES (1,'admin','$2a$10$0R6aRU/7N069zNsMWqYmpughjQRyT2SU764Ucs7kSPJV5Ofv5e472','admin','','tlNcBVK9AvfYH7WEnwB1RKvocJu8FfRy4um3DJtwdHuJy0dwFsLOgAc0xUfh','2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,'operator','$2a$10$rVqkOzHjN2MdlEprRflb1eGP0oZXuSrbJLOmJagFsCd81YZm0bsh.','Operator','',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created_at` int(10) unsigned NOT NULL,
  `modified_at` int(10) unsigned NOT NULL,
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (3,'资讯',1,1585119113,1585119665,0);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-25 10:12:30
