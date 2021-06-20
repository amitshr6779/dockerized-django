-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: payrolldb
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add account',6,'add_account'),(22,'Can change account',6,'change_account'),(23,'Can delete account',6,'delete_account'),(24,'Can view account',6,'view_account'),(25,'Can add m address',7,'add_maddress'),(26,'Can change m address',7,'change_maddress'),(27,'Can delete m address',7,'delete_maddress'),(28,'Can view m address',7,'view_maddress'),(29,'Can add m company',8,'add_mcompany'),(30,'Can change m company',8,'change_mcompany'),(31,'Can delete m company',8,'delete_mcompany'),(32,'Can view m company',8,'view_mcompany'),(33,'Can add m grade',9,'add_mgrade'),(34,'Can change m grade',9,'change_mgrade'),(35,'Can delete m grade',9,'delete_mgrade'),(36,'Can view m grade',9,'view_mgrade'),(37,'Can add m state',10,'add_mstate'),(38,'Can change m state',10,'change_mstate'),(39,'Can delete m state',10,'delete_mstate'),(40,'Can view m state',10,'view_mstate'),(41,'Can add m employee',11,'add_memployee'),(42,'Can change m employee',11,'change_memployee'),(43,'Can delete m employee',11,'delete_memployee'),(44,'Can view m employee',11,'view_memployee'),(45,'Can add m department',12,'add_mdepartment'),(46,'Can change m department',12,'change_mdepartment'),(47,'Can delete m department',12,'delete_mdepartment'),(48,'Can view m department',12,'view_mdepartment'),(49,'Can add t leave',13,'add_tleave'),(50,'Can change t leave',13,'change_tleave'),(51,'Can delete t leave',13,'delete_tleave'),(52,'Can view t leave',13,'view_tleave'),(53,'Can add t achievement',14,'add_tachievement'),(54,'Can change t achievement',14,'change_tachievement'),(55,'Can delete t achievement',14,'delete_tachievement'),(56,'Can view t achievement',14,'view_tachievement'),(57,'Can add m paygrade',15,'add_mpaygrade'),(58,'Can change m paygrade',15,'change_mpaygrade'),(59,'Can delete m paygrade',15,'delete_mpaygrade'),(60,'Can view m paygrade',15,'view_mpaygrade'),(61,'Can add m pay',16,'add_mpay'),(62,'Can change m pay',16,'change_mpay'),(63,'Can delete m pay',16,'delete_mpay'),(64,'Can view m pay',16,'view_mpay');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_payroll_m` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_payroll_m` FOREIGN KEY (`user_id`) REFERENCES `payroll_manager_account` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(6,'payroll_manager','account'),(7,'payroll_manager','maddress'),(8,'payroll_manager','mcompany'),(12,'payroll_manager','mdepartment'),(11,'payroll_manager','memployee'),(9,'payroll_manager','mgrade'),(16,'payroll_manager','mpay'),(15,'payroll_manager','mpaygrade'),(10,'payroll_manager','mstate'),(14,'payroll_manager','tachievement'),(13,'payroll_manager','tleave'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'payroll_manager','0001_initial','2021-02-22 10:26:58.757748'),(2,'contenttypes','0001_initial','2021-02-22 10:27:28.039206'),(3,'admin','0001_initial','2021-02-22 10:27:29.019858'),(4,'admin','0002_logentry_remove_auto_add','2021-02-22 10:27:36.637292'),(5,'admin','0003_logentry_add_action_flag_choices','2021-02-22 10:27:36.720845'),(6,'contenttypes','0002_remove_content_type_name','2021-02-22 10:27:51.518570'),(7,'auth','0001_initial','2021-02-22 10:27:57.528864'),(8,'auth','0002_alter_permission_name_max_length','2021-02-22 10:28:12.311331'),(9,'auth','0003_alter_user_email_max_length','2021-02-22 10:28:12.401183'),(10,'auth','0004_alter_user_username_opts','2021-02-22 10:28:12.482347'),(11,'auth','0005_alter_user_last_login_null','2021-02-22 10:28:12.565658'),(12,'auth','0006_require_contenttypes_0002','2021-02-22 10:28:12.661717'),(13,'auth','0007_alter_validators_add_error_messages','2021-02-22 10:28:12.841248'),(14,'auth','0008_alter_user_username_max_length','2021-02-22 10:28:12.924364'),(15,'auth','0009_alter_user_last_name_max_length','2021-02-22 10:28:12.999569'),(16,'auth','0010_alter_group_name_max_length','2021-02-22 10:28:17.549456'),(17,'auth','0011_update_proxy_permissions','2021-02-22 10:28:22.914711'),(18,'auth','0012_alter_user_first_name_max_length','2021-02-22 10:28:29.522474'),(19,'sessions','0001_initial','2021-02-22 10:28:39.326942');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('10rfr1vu0qfx1woszcr4qlxq8gui4fcl','.eJxVjMsOgjAQRf-la9NgX3RcuvcbyC0zCGrahMLK-O9CwkK395xz36rDuozdWmXuJlYXZdTpd0von5J3wA_ke9F9ycs8Jb0r-qBV3wrL63q4fwcj6rjVgcIgHqCWXRN9tI4QGWdrHVNMJISht2KCIBhODr41DRNC43kjUJ8v5jE4cg:1lrd8J:3_-QF4rz2CtbeDjN6pDIAR92KvyN3r5_ybk7nsqWZ00','2021-06-25 09:07:19.744444'),('29ikpxmae71tpqu715sjusy7hgzqriha','.eJxVjMsOwiAQAP-FsyFbHkI9evcbyLILUjWQlPZk_HdD0oNeZybzFgH3rYS9pzUsLC7CitMvi0jPVIfgB9Z7k9Tqti5RjkQetstb4_S6Hu3foGAvY8uRJh3VzE57lxnIU8w5K1BncHbGCb0Fp6xHJHBMJmowKSdKYNCS-HwB9gQ4gw:1lOw98:al_IK8JX40-MU16vmt-bmYx9STqEEKON1zIl7ffKe1U','2021-04-07 05:33:34.331784'),('6ozm6fal6af4570zz8dgf5lz97ztfnip','.eJxVjDsOwjAQBe_iGlnLOv5R0ucMlu3d4ACypTipEHeHSCmgfTPzXiLEbS1h67yEmcRFgDj9binmB9cd0D3WW5O51XWZk9wVedAux0b8vB7u30GJvXxrNt4qdDyhZ4sOmBQZB8M5Tgk9GB6chYTKkk2gtfaQndLAqJFRGRLvD8OxNr0:1lTNlT:ATDRoNwpbiQv6M13-QJsnA24GLwZM_Wpb6WJfS8HOB4','2021-04-19 11:51:31.234188'),('8d00a15pta55n8ulm3vir2le0lytjy7k','.eJxVjMsOwiAQRf-FtSEMtAy4dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOAsTpd2OKj9x2kO7UbrOMc1uXieWuyIN2eZ1Tfl4O9--gUq_fmhygNkxJG1QWrHJxZLDeaUDjNbkhkY5sQBdlcIhWMRafcSzosycQ7w-zIzbg:1lOGWA:ATdsYYOG_k1oANVwR9X51u8pqPg6eQeJSHdGC2F2AgQ','2021-04-05 09:06:34.194097'),('aj20n61gd4naofnsi1ucaln91zgxphmb','.eJxVjDsOwjAQBe_iGlnLOv5R0ucMlu3d4ACypTipEHeHSCmgfTPzXiLEbS1h67yEmcRFgDj9binmB9cd0D3WW5O51XWZk9wVedAux0b8vB7u30GJvXxrNt4qdDyhZ4sOmBQZB8M5Tgk9GB6chYTKkk2gtfaQndLAqJFRGRLvD8OxNr0:1lOcSW:ohfYqUv7FnFuOUXNlpU0huSn8OiAhNQZ-GkmUslSK9I','2021-04-06 08:32:16.877368'),('ckh6da1zn0idxufzqy0dcfdm49v0hd61','.eJxVjEsOAiEQBe_C2hBg6AZcuvcMBOhGRg2TzGdlvLtOMgvdvqp6LxHTtra4LTzHkcRZoHNBnH7nnMqD-87onvptkmXq6zxmuSvyoIu8TsTPy-H-HbS0tG-dDSlvFXHVCgCqHhwiB8wZLIeQq-PBArIyhJ5MUcBkPCalAYMnL94fUPM4AQ:1lEonT:pGMZ0T2G9xlzBsTTw0qXtOk29sJd1uYjdvhGD0c6_v0','2021-03-10 07:41:23.673886'),('l6vnoh67itq2p6eted9a5grgnkffbjih','.eJxVjDsOwjAQBe_iGlnLOv5R0ucMlu3d4ACypTipEHeHSCmgfTPzXiLEbS1h67yEmcRFgDj9binmB9cd0D3WW5O51XWZk9wVedAux0b8vB7u30GJvXxrNt4qdDyhZ4sOmBQZB8M5Tgk9GB6chYTKkk2gtfaQndLAqJFRGRLvD8OxNr0:1lg9BI:4wInEf9TLL7p8NT5WQQxNcC6IHnZeNsky0g8Zcrcetc','2021-05-24 16:54:56.852742'),('nw9w6w3n48ocirp00dc2ccumqxg4vehv','.eJxVjDsOwjAQBe_iGln-LSaU9JwhWnt3cQDZUpxUiLtDpBTQvpl5LzXiupRx7TyPE6mziurwuyXMD64boDvWW9O51WWekt4UvdOur434edndv4OCvXxrGzgJDAGE05Ao5-C8jck7jgbQHG1A9iCUwRpykTAj48kLWPSIIur9AQAwOQk:1lc5rO:yjeIvusJTXLRtcbRAyyMhQZnI_drBibRMQdcyVjRmfg','2021-05-13 12:33:38.574545'),('rned71nupxakfponlg9yacd36gktc80z','.eJxVjDsOwjAQBe_iGlnLOv5R0ucMlu3d4ACypTipEHeHSCmgfTPzXiLEbS1h67yEmcRFgDj9binmB9cd0D3WW5O51XWZk9wVedAux0b8vB7u30GJvXxrNt4qdDyhZ4sOmBQZB8M5Tgk9GB6chYTKkk2gtfaQndLAqJFRGRLvD8OxNr0:1lg4o6:mNmWl-8SRrkp8A8EEb1aFDKzvVQaUwnEKmoqQesiLJw','2021-05-24 12:14:42.476969'),('rzt43nl8lae79f21dzrk4nk8oh2e4rc8','.eJxVjMsOgjAQRf-la9NgX3RcuvcbyC0zCGrahMLK-O9CwkK395xz36rDuozdWmXuJlYXZdTpd0von5J3wA_ke9F9ycs8Jb0r-qBV3wrL63q4fwcj6rjVgcIgHqCWXRN9tI4QGWdrHVNMJISht2KCIBhODr41DRNC43kjUJ8v5jE4cg:1lcSJO:kFPq5GIqIvLjmEg16JWZ0dUGq1FKp217lIFVv_VhFtI','2021-05-14 12:32:02.223217'),('yh3bt0uu4z8bucztd3hki72zjqi21bkk','.eJxVjMsOgjAQRf-la9NgX3RcuvcbyC0zCGrahMLK-O9CwkK395xz36rDuozdWmXuJlYXZdTpd0von5J3wA_ke9F9ycs8Jb0r-qBV3wrL63q4fwcj6rjVgcIgHqCWXRN9tI4QGWdrHVNMJISht2KCIBhODr41DRNC43kjUJ8v5jE4cg:1ltW8h:tqzKE82OaJ9DzR5FMCANJQ33pRPTGiWuLNg_4P127MQ','2021-06-30 14:03:31.402820');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_address`
--

DROP TABLE IF EXISTS `m_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `building_details` varchar(30) NOT NULL,
  `road` varchar(20) NOT NULL,
  `landmark` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) DEFAULT NULL,
  `state_id` varchar(2) NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `m_address_state_id_61826fb1_fk_m_state_state_code` (`state_id`),
  CONSTRAINT `m_address_state_id_61826fb1_fk_m_state_state_code` FOREIGN KEY (`state_id`) REFERENCES `m_state` (`state_code`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_address`
--

LOCK TABLES `m_address` WRITE;
/*!40000 ALTER TABLE `m_address` DISABLE KEYS */;
INSERT INTO `m_address` VALUES (101,'Buil-A','5th Road','Near City Mall','Kolkata','India','WB'),(102,'Sun Building','Beena  Road','Near MeenaBazaar','Bareily','India','UP'),(103,'Coach Buil','Nani Road','Near Cine Hall','Jaipur','India','RA'),(104,'Farmer Building','Rajesh Road nagar','Near Vellore Fort','Velloree','India','TN'),(105,'Buil-o','Nano Road','Near Max Store','Bhopal','Bharat','RA'),(106,'Office Buil','Nicco Park','Near SaltLake','Kolkata','India','WB'),(107,'SBI Building','NH-32','Talgoria More','Bokaro','india','UP'),(108,'SBI Building','NH-32','Talgoria More','noida','india','UP'),(109,'SBI Building','NH-32','Talgoria More','noida','india','UP'),(110,'SBI Building','NH-32','Talgoria More','noida','india','UP'),(111,'Farmer Building','NH-32','Talgoria More','Bokaro','India','UP'),(112,'varanasi','varanasi','varanasi','varanasi','india','UP');
/*!40000 ALTER TABLE `m_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_company`
--

DROP TABLE IF EXISTS `m_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`company_id`),
  KEY `m_company_address_id_0df15fc4_fk_m_address_address_id` (`address_id`),
  CONSTRAINT `m_company_address_id_0df15fc4_fk_m_address_address_id` FOREIGN KEY (`address_id`) REFERENCES `m_address` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_company`
--

LOCK TABLES `m_company` WRITE;
/*!40000 ALTER TABLE `m_company` DISABLE KEYS */;
INSERT INTO `m_company` VALUES (1,'InfoBliss Capital',101),(2,'InfoBliss Cloud Solutions',103),(3,'InfoBliss Aegis',104);
/*!40000 ALTER TABLE `m_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_department`
--

DROP TABLE IF EXISTS `m_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(30) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`department_id`),
  KEY `m_department_company_id_42cf2f2b_fk_m_company_company_id` (`company_id`),
  CONSTRAINT `m_department_company_id_42cf2f2b_fk_m_company_company_id` FOREIGN KEY (`company_id`) REFERENCES `m_company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_department`
--

LOCK TABLES `m_department` WRITE;
/*!40000 ALTER TABLE `m_department` DISABLE KEYS */;
INSERT INTO `m_department` VALUES (11,'Human Resources',1),(12,'Human Resources',2),(13,'Marketing',1),(14,'Technical',2),(15,'Accounts & Finance',3),(16,'Production',3),(17,'Research & Development',2),(18,'Accounts & Finance',1);
/*!40000 ALTER TABLE `m_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_employee`
--

DROP TABLE IF EXISTS `m_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_employee` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(30) NOT NULL,
  `employee_doj` date NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `m_employee_address_id_d5ee3fd9_fk_m_address_address_id` (`address_id`),
  KEY `m_employee_company_id_2b3b813b_fk_m_company_company_id` (`company_id`),
  KEY `m_employee_department_id_18850b5c_fk_m_department_department_id` (`department_id`),
  KEY `m_employee_grade_id_0e9ab532_fk_m_grade_grade_id` (`grade_id`),
  CONSTRAINT `m_employee_address_id_d5ee3fd9_fk_m_address_address_id` FOREIGN KEY (`address_id`) REFERENCES `m_address` (`address_id`),
  CONSTRAINT `m_employee_company_id_2b3b813b_fk_m_company_company_id` FOREIGN KEY (`company_id`) REFERENCES `m_company` (`company_id`),
  CONSTRAINT `m_employee_department_id_18850b5c_fk_m_department_department_id` FOREIGN KEY (`department_id`) REFERENCES `m_department` (`department_id`),
  CONSTRAINT `m_employee_employee_id_99a71b97_fk_payroll_m` FOREIGN KEY (`employee_id`) REFERENCES `payroll_manager_account` (`user_id`),
  CONSTRAINT `m_employee_grade_id_0e9ab532_fk_m_grade_grade_id` FOREIGN KEY (`grade_id`) REFERENCES `m_grade` (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_employee`
--

LOCK TABLES `m_employee` WRITE;
/*!40000 ALTER TABLE `m_employee` DISABLE KEYS */;
INSERT INTO `m_employee` VALUES (0,'amit','2021-06-11',NULL,1,14,2),(1,'Rajesh Raushan','2015-02-02',102,1,11,1),(2,'Vinay Verma','2014-09-12',104,2,12,1),(3,'Divya Doijod','2019-12-01',106,1,13,2),(4,'Manisha Mangal','2018-08-30',105,2,14,2),(5,'Payal Pandey','2018-05-23',101,3,15,1),(6,'Nandana Nair','2017-09-15',104,3,16,2),(7,'Anant Agarwal','2020-04-11',105,2,17,3),(8,'Kanan Kapoor','2019-07-11',102,1,18,2),(9,'Tanmay Tandon','2017-05-28',102,3,15,3),(10,'Farah fisher','2018-11-19',103,1,11,3),(11,'Howard Herman','1995-08-25',106,3,15,4),(983,'abhishek sharma','2010-01-01',NULL,1,11,1),(6779,'amit','2020-08-02',NULL,2,14,2);
/*!40000 ALTER TABLE `m_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_grade`
--

DROP TABLE IF EXISTS `m_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_grade` (
  `grade_id` int(11) NOT NULL,
  `grade_name` varchar(20) NOT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_grade`
--

LOCK TABLES `m_grade` WRITE;
/*!40000 ALTER TABLE `m_grade` DISABLE KEYS */;
INSERT INTO `m_grade` VALUES (1,'Head of Department'),(2,'Senior Officer'),(3,'Junior Staff'),(4,'Janitor');
/*!40000 ALTER TABLE `m_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_pay`
--

DROP TABLE IF EXISTS `m_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_pay` (
  `fin_year` int(11) NOT NULL,
  `gross_salary` int(11) NOT NULL,
  `gross_dedn` int(11) NOT NULL,
  `net_salary` int(11) NOT NULL,
  `MPay_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`MPay_id`),
  UNIQUE KEY `m_pay_fin_year_employee_id_3749471f_uniq` (`fin_year`,`employee_id`),
  KEY `m_pay_employee_id_b47f06f6_fk_m_employee_employee_id` (`employee_id`),
  CONSTRAINT `m_pay_employee_id_b47f06f6_fk_m_employee_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `m_employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_pay`
--

LOCK TABLES `m_pay` WRITE;
/*!40000 ALTER TABLE `m_pay` DISABLE KEYS */;
INSERT INTO `m_pay` VALUES (2020,458000,2000,456000,1,1),(2020,458000,3000,455000,2,2),(2020,324900,1555,323345,3,3),(2020,324900,2000,322900,4,4),(2020,458000,1700,456300,5,5),(2020,324900,1700,323200,6,6),(2020,404700,2300,402400,7,7),(2020,404700,2300,402400,8,8),(2020,404700,2300,402400,9,9),(2020,404700,2300,402400,10,10),(2020,29500,100,29400,11,11),(2021,350000,12000,335000,12,6779);
/*!40000 ALTER TABLE `m_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_paygrade`
--

DROP TABLE IF EXISTS `m_paygrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_paygrade` (
  `basic_amt` int(11) NOT NULL,
  `da_amt` int(11) NOT NULL,
  `pf_amt` int(11) NOT NULL,
  `medical_amt` int(11) NOT NULL,
  `paygrade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`paygrade_id`),
  UNIQUE KEY `m_paygrade_employee_id_grade_id_35cb6409_uniq` (`employee_id`,`grade_id`),
  KEY `m_paygrade_grade_id_5b8a16b2_fk_m_grade_grade_id` (`grade_id`),
  CONSTRAINT `m_paygrade_employee_id_c657a8bc_fk_m_employee_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `m_employee` (`employee_id`),
  CONSTRAINT `m_paygrade_grade_id_5b8a16b2_fk_m_grade_grade_id` FOREIGN KEY (`grade_id`) REFERENCES `m_grade` (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_paygrade`
--

LOCK TABLES `m_paygrade` WRITE;
/*!40000 ALTER TABLE `m_paygrade` DISABLE KEYS */;
INSERT INTO `m_paygrade` VALUES (400000,30000,3000,2500,1,1,1),(300000,20000,2400,2500,2,2,3),(230000,17000,2200,2500,3,3,7),(16000,10000,1000,2500,4,4,11),(335000,10000,1200,1500,5,2,6779);
/*!40000 ALTER TABLE `m_paygrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_state`
--

DROP TABLE IF EXISTS `m_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_state` (
  `state_code` varchar(2) NOT NULL,
  `state_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`state_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_state`
--

LOCK TABLES `m_state` WRITE;
/*!40000 ALTER TABLE `m_state` DISABLE KEYS */;
INSERT INTO `m_state` VALUES ('MP','Madhya Pradesh'),('RA','Rajasthan'),('TN','Tamil Nadu'),('UP','Uttar Pradesh'),('WB','West Bengal');
/*!40000 ALTER TABLE `m_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_manager_account`
--

DROP TABLE IF EXISTS `payroll_manager_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payroll_manager_account` (
  `password` varchar(128) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_employer` tinyint(1) NOT NULL,
  `is_employee` tinyint(1) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `date_joined` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_manager_account`
--

LOCK TABLES `payroll_manager_account` WRITE;
/*!40000 ALTER TABLE `payroll_manager_account` DISABLE KEYS */;
INSERT INTO `payroll_manager_account` VALUES ('pbkdf2_sha256$216000$RKX4ub1Ou4zF$j6gEojOm+LhZdKk0cBd6EMTZjJvPYB5fayhDn2BbOrg=',0,0,1,NULL,'2021-06-11 06:56:06.393129','2021-06-11 06:56:06.393238',0,1,0,0),('pbkdf2_sha256$216000$TLf2qTqC37EU$ByhuuW4juQsSkPAffGyxmo6Oxb14mrbtJtQMWku3vj4=',1,0,1,NULL,'2021-02-22 10:30:04.942880','2021-04-29 12:17:20.022510',0,1,0,0),('pbkdf2_sha256$216000$GDCv19XVbCjI$iNLAZVdjhHD+vpKLZm3camkIDFQ0T2px/uJMhyEAgiY=',2,0,1,NULL,'2021-02-22 10:30:05.222133','2021-06-17 11:58:50.321024',0,1,0,0),('pbkdf2_sha256$216000$PGZRJtuocpCH$vzepr2AMONraUyNe3TxNhDUXbizWIni3XOiCu+KfIVM=',3,0,1,NULL,'2021-02-22 10:30:05.427199','2021-02-24 11:00:41.280765',0,1,0,0),('pbkdf2_sha256$216000$BSGGax8z7yfx$TtbO0FHRIfYHLJKOpTpSixNUIh9QVHmzS+1jcjHzrrs=',4,0,1,NULL,'2021-02-22 10:30:05.637620','2021-02-22 10:30:05.637642',0,1,0,0),('pbkdf2_sha256$216000$MIlDmjr3YOYU$wM7ZShzn0nO0cHKiDlVHAnlO+tJWwL7zbCmsAkWHyZM=',5,0,1,NULL,'2021-02-22 10:30:05.846742','2021-04-29 12:24:16.938207',0,1,0,0),('pbkdf2_sha256$216000$vaKrx0ImcFe1$nWSbBJk0qrgi3CldagQP1Hm7v3Wg06r9td9O6dWVmp8=',6,0,1,NULL,'2021-02-22 10:30:06.056228','2021-02-22 10:30:06.056251',0,1,0,0),('pbkdf2_sha256$216000$HqNBR9rYPMSm$hUTOmuUjmB7XyZJxfA6CEldP0+fOolvPy5Uxy2BEezk=',7,0,1,NULL,'2021-02-22 10:30:06.261853','2021-04-29 12:33:38.516226',0,1,0,0),('pbkdf2_sha256$216000$fW9MQB0NNa65$5GPdm2SmODbqEbXPxpezMggTjTxu+3Nt8EjAPNsDWKU=',8,0,1,NULL,'2021-02-22 10:30:06.468974','2021-02-22 10:30:06.468997',0,1,0,0),('pbkdf2_sha256$216000$6IwtgsQOs0Qe$HYOjfc3c2zdYy1smRyDNB7L1Zcla+7aPCmgTnZoKbp8=',9,0,1,NULL,'2021-02-22 10:30:06.680050','2021-03-18 11:36:06.071039',0,1,0,0),('pbkdf2_sha256$216000$JwB00qEStJOX$xLpp09B/PRj7QOIvyKJxMFxjyLCcERFbhbHAcicwy+w=',10,0,1,NULL,'2021-02-22 10:30:06.889061','2021-04-29 12:25:00.964791',0,1,0,0),('pbkdf2_sha256$216000$oMQkYUuJh8dP$KqfkRcGkum2/WqKpBObwKxPmeTiqYtE1uDWgxwchqiM=',11,0,1,NULL,'2021-02-22 10:30:07.104423','2021-02-22 10:30:07.104448',0,1,0,0),('pbkdf2_sha256$216000$EFZA729pT8gb$l8uqynAqfHGi7U4uMB03n/od1SuVHC2BmDd5H+FhNW4=',983,0,1,NULL,'2021-04-06 11:08:49.618200','2021-04-06 11:09:15.760292',0,1,0,0),('pbkdf2_sha256$216000$QgRc1L3q1lLR$XklQq/23GDt6ndKaO4WTwMi+5TWDOH6/HIQ0ekZFRKU=',6779,0,1,NULL,'2021-02-24 07:24:06.918124','2021-04-29 12:21:13.200497',0,1,0,0);
/*!40000 ALTER TABLE `payroll_manager_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_achievement`
--

DROP TABLE IF EXISTS `t_achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_achievement` (
  `achievement_date` date NOT NULL,
  `achievement_type` varchar(80) NOT NULL,
  `achievement_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`achievement_id`),
  KEY `t_achievement_employee_id_9c7c4015_fk_m_employee_employee_id` (`employee_id`),
  CONSTRAINT `t_achievement_employee_id_9c7c4015_fk_m_employee_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `m_employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_achievement`
--

LOCK TABLES `t_achievement` WRITE;
/*!40000 ALTER TABLE `t_achievement` DISABLE KEYS */;
INSERT INTO `t_achievement` VALUES ('2020-06-25','25 Years Of Service',1,11),('2020-11-12','Good Customer Service',2,3),('2020-02-29','Employee of The Year',3,6),('2020-03-03','Special Projects',4,10),('2019-09-22','cricket',5,5);
/*!40000 ALTER TABLE `t_achievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_leave`
--

DROP TABLE IF EXISTS `t_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_leave` (
  `fin_year` int(11) NOT NULL,
  `leave_date` date NOT NULL,
  `leave_type` varchar(4) NOT NULL,
  `is_approved` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`leave_id`),
  KEY `t_leave_employee_id_7f5e8198_fk_m_employee_employee_id` (`employee_id`),
  CONSTRAINT `t_leave_employee_id_7f5e8198_fk_m_employee_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `m_employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_leave`
--

LOCK TABLES `t_leave` WRITE;
/*!40000 ALTER TABLE `t_leave` DISABLE KEYS */;
INSERT INTO `t_leave` VALUES (2020,'2020-09-11','LWP',1,1,1),(2020,'2020-10-23','PL',1,2,4),(2020,'2020-03-01','CL',1,3,9),(2020,'2020-07-10','SL',-1,4,11),(2021,'2021-02-25','CL',-1,5,2),(2021,'2021-02-25','CL',1,6,6779),(2021,'2021-03-19','SL',1,7,2),(2021,'2019-02-22','CL',1,8,983),(2021,'2021-05-03','CL',1,9,1),(2021,'2021-04-30','PL',1,10,6779),(2021,'2021-04-30','CL',-1,11,10),(2021,'2021-05-04','CL',1,12,2);
/*!40000 ALTER TABLE `t_leave` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-20 21:32:49
