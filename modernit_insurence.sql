-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: insurence
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_countries`
--

DROP TABLE IF EXISTS `location_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_short_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_symbol` json DEFAULT NULL,
  `serial` int DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_countries`
--

LOCK TABLES `location_countries` WRITE;
/*!40000 ALTER TABLE `location_countries` DISABLE KEYS */;
INSERT INTO `location_countries` VALUES (1,'Moldova','+373','MD','https://flagcdn.com/w320/md.png','{\"MDL\": {\"name\": \"Moldovan leu\", \"symbol\": \"L\"}}',NULL,NULL,'moldova-2971858','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(2,'United States','+1201','US','https://flagcdn.com/w320/us.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'united-states-7462480','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(3,'Mayotte','+262','YT','https://flagcdn.com/w320/yt.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'mayotte-9533997','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(4,'Nauru','+674','NR','https://flagcdn.com/w320/nr.png','{\"AUD\": {\"name\": \"Australian dollar\", \"symbol\": \"$\"}}',NULL,NULL,'nauru-7604487','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(5,'Mozambique','+258','MZ','https://flagcdn.com/w320/mz.png','{\"MZN\": {\"name\": \"Mozambican metical\", \"symbol\": \"MT\"}}',NULL,NULL,'mozambique-5305702','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(6,'Brazil','+55','BR','https://flagcdn.com/w320/br.png','{\"BRL\": {\"name\": \"Brazilian real\", \"symbol\": \"R$\"}}',NULL,NULL,'brazil-6956729','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(7,'Cape Verde','+238','CV','https://flagcdn.com/w320/cv.png','{\"CVE\": {\"name\": \"Cape Verdean escudo\", \"symbol\": \"Esc\"}}',NULL,NULL,'cape-verde-4187656','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(8,'Equatorial Guinea','+240','GQ','https://flagcdn.com/w320/gq.png','{\"XAF\": {\"name\": \"Central African CFA franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'equatorial-guinea-5418134','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(9,'Albania','+355','AL','https://flagcdn.com/w320/al.png','{\"ALL\": {\"name\": \"Albanian lek\", \"symbol\": \"L\"}}',NULL,NULL,'albania-8279121','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(10,'United States Virgin Islands','+1340','VI','https://flagcdn.com/w320/vi.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'united-states-virgin-islands-27210142','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(11,'Niue','+683','NU','https://flagcdn.com/w320/nu.png','{\"NZD\": {\"name\": \"New Zealand dollar\", \"symbol\": \"$\"}}',NULL,NULL,'niue-80611857','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(12,'Palau','+680','PW','https://flagcdn.com/w320/pw.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'palau-98712272','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(13,'Nigeria','+234','NG','https://flagcdn.com/w320/ng.png','{\"NGN\": {\"name\": \"Nigerian naira\", \"symbol\": \"₦\"}}',NULL,NULL,'nigeria-37913928','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(14,'British Virgin Islands','+1284','VG','https://flagcdn.com/w320/vg.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'british-virgin-islands-53014445','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(15,'Gambia','+220','GM','https://flagcdn.com/w320/gm.png','{\"GMD\": {\"name\": \"dalasi\", \"symbol\": \"D\"}}',NULL,NULL,'gambia-56415570','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(16,'Somalia','+252','SO','https://flagcdn.com/w320/so.png','{\"SOS\": {\"name\": \"Somali shilling\", \"symbol\": \"Sh\"}}',NULL,NULL,'somalia-43916725','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(17,'Yemen','+967','YE','https://flagcdn.com/w320/ye.png','{\"YER\": {\"name\": \"Yemeni rial\", \"symbol\": \"﷼\"}}',NULL,NULL,'yemen-31117643','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(18,'Malaysia','+60','MY','https://flagcdn.com/w320/my.png','{\"MYR\": {\"name\": \"Malaysian ringgit\", \"symbol\": \"RM\"}}',NULL,NULL,'malaysia-94618906','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(19,'Dominica','+1767','DM','https://flagcdn.com/w320/dm.png','{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}',NULL,NULL,'dominica-31719674','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(20,'United Kingdom','+44','GB','https://flagcdn.com/w320/gb.png','{\"GBP\": {\"name\": \"British pound\", \"symbol\": \"£\"}}',NULL,NULL,'united-kingdom-24620792','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(21,'Madagascar','+261','MG','https://flagcdn.com/w320/mg.png','{\"MGA\": {\"name\": \"Malagasy ariary\", \"symbol\": \"Ar\"}}',NULL,NULL,'madagascar-26521794','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(22,'Western Sahara','+2125288','EH','https://flagcdn.com/w320/eh.png','{\"DZD\": {\"name\": \"Algerian dinar\", \"symbol\": \"دج\"}, \"MAD\": {\"name\": \"Moroccan dirham\", \"symbol\": \"DH\"}, \"MRU\": {\"name\": \"Mauritanian ouguiya\", \"symbol\": \"UM\"}}',NULL,NULL,'western-sahara-17222956','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(23,'Cyprus','+357','CY','https://flagcdn.com/w320/cy.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'cyprus-24623690','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(24,'Antigua and Barbuda','+1268','AG','https://flagcdn.com/w320/ag.png','{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}',NULL,NULL,'antigua-and-barbuda-82724331','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(25,'Ireland','+353','IE','https://flagcdn.com/w320/ie.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'ireland-73325386','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(26,'Paraguay','+595','PY','https://flagcdn.com/w320/py.png','{\"PYG\": {\"name\": \"Paraguayan guaraní\", \"symbol\": \"₲\"}}',NULL,NULL,'paraguay-55326940','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(27,'Sri Lanka','+94','LK','https://flagcdn.com/w320/lk.png','{\"LKR\": {\"name\": \"Sri Lankan rupee\", \"symbol\": \"Rs  රු\"}}',NULL,NULL,'sri-lanka-85827116','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(28,'South Africa','+27','ZA','https://flagcdn.com/w320/za.png','{\"ZAR\": {\"name\": \"South African rand\", \"symbol\": \"R\"}}',NULL,NULL,'south-africa-66128384','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(29,'Kuwait','+965','KW','https://flagcdn.com/w320/kw.png','{\"KWD\": {\"name\": \"Kuwaiti dinar\", \"symbol\": \"د.ك\"}}',NULL,NULL,'kuwait-25029962','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(30,'Algeria','+213','DZ','https://flagcdn.com/w320/dz.png','{\"DZD\": {\"name\": \"Algerian dinar\", \"symbol\": \"د.ج\"}}',NULL,NULL,'algeria-95430815','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(31,'Croatia','+385','HR','https://flagcdn.com/w320/hr.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'croatia-29331786','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(32,'Martinique','+596','MQ','https://flagcdn.com/w320/mq.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'martinique-41632858','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(33,'Sierra Leone','+232','SL','https://flagcdn.com/w320/sl.png','{\"SLL\": {\"name\": \"Sierra Leonean leone\", \"symbol\": \"Le\"}}',NULL,NULL,'sierra-leone-44933801','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(34,'Northern Mariana Islands','+1670','MP','https://flagcdn.com/w320/mp.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'northern-mariana-islands-20134233','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(35,'Rwanda','+250','RW','https://flagcdn.com/w320/rw.png','{\"RWF\": {\"name\": \"Rwandan franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'rwanda-88535153','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(36,'Syria','+963','SY','https://flagcdn.com/w320/sy.png','{\"SYP\": {\"name\": \"Syrian pound\", \"symbol\": \"£\"}}',NULL,NULL,'syria-70436222','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(37,'Saint Vincent and the Grenadines','+1784','VC','https://flagcdn.com/w320/vc.png','{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}',NULL,NULL,'saint-vincent-and-the-grenadines-66237243','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(38,'Kosovo','+383','XK','https://flagcdn.com/w320/xk.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'kosovo-91538849','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(39,'Saint Lucia','+1758','LC','https://flagcdn.com/w320/lc.png','{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}',NULL,NULL,'saint-lucia-18539600','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(40,'Honduras','+504','HN','https://flagcdn.com/w320/hn.png','{\"HNL\": {\"name\": \"Honduran lempira\", \"symbol\": \"L\"}}',NULL,NULL,'honduras-58140404','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(41,'Jordan','+962','JO','https://flagcdn.com/w320/jo.png','{\"JOD\": {\"name\": \"Jordanian dinar\", \"symbol\": \"د.ا\"}}',NULL,NULL,'jordan-30441270','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(42,'Tuvalu','+688','TV','https://flagcdn.com/w320/tv.png','{\"AUD\": {\"name\": \"Australian dollar\", \"symbol\": \"$\"}, \"TVD\": {\"name\": \"Tuvaluan dollar\", \"symbol\": \"$\"}}',NULL,NULL,'tuvalu-63442589','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(43,'Nepal','+977','NP','https://flagcdn.com/w320/np.png','{\"NPR\": {\"name\": \"Nepalese rupee\", \"symbol\": \"₨\"}}',NULL,NULL,'nepal-67843206','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(44,'Liberia','+231','LR','https://flagcdn.com/w320/lr.png','{\"LRD\": {\"name\": \"Liberian dollar\", \"symbol\": \"$\"}}',NULL,NULL,'liberia-33344879','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(45,'Heard Island and McDonald Islands','','HM','https://flagcdn.com/w320/hm.png','\"\"',NULL,NULL,'heard-island-and-mcdonald-islands-37845524','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(46,'Austria','+43','AT','https://flagcdn.com/w320/at.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'austria-98646141','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(47,'Guernsey','+44','GG','https://flagcdn.com/w320/gg.png','{\"GBP\": {\"name\": \"British pound\", \"symbol\": \"£\"}, \"GGP\": {\"name\": \"Guernsey pound\", \"symbol\": \"£\"}}',NULL,NULL,'guernsey-37247273','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(48,'Central African Republic','+236','CF','https://flagcdn.com/w320/cf.png','{\"XAF\": {\"name\": \"Central African CFA franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'central-african-republic-84748503','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(49,'Mauritania','+222','MR','https://flagcdn.com/w320/mr.png','{\"MRU\": {\"name\": \"Mauritanian ouguiya\", \"symbol\": \"UM\"}}',NULL,NULL,'mauritania-18749939','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(50,'Djibouti','+253','DJ','https://flagcdn.com/w320/dj.png','{\"DJF\": {\"name\": \"Djiboutian franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'djibouti-65650858','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(51,'Fiji','+679','FJ','https://flagcdn.com/w320/fj.png','{\"FJD\": {\"name\": \"Fijian dollar\", \"symbol\": \"$\"}}',NULL,NULL,'fiji-19251849','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(52,'Norway','+47','NO','https://flagcdn.com/w320/no.png','{\"NOK\": {\"name\": \"Norwegian krone\", \"symbol\": \"kr\"}}',NULL,NULL,'norway-98852957','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(53,'Latvia','+371','LV','https://flagcdn.com/w320/lv.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'latvia-33053795','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(54,'Falkland Islands','+500','FK','https://flagcdn.com/w320/fk.png','{\"FKP\": {\"name\": \"Falkland Islands pound\", \"symbol\": \"£\"}}',NULL,NULL,'falkland-islands-12254117','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(55,'Kazakhstan','+76','KZ','https://flagcdn.com/w320/kz.png','{\"KZT\": {\"name\": \"Kazakhstani tenge\", \"symbol\": \"₸\"}}',NULL,NULL,'kazakhstan-82455443','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(56,'Åland Islands','+35818','AX','https://flagcdn.com/w320/ax.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'aland-islands-64456507','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(57,'Turkmenistan','+993','TM','https://flagcdn.com/w320/tm.png','{\"TMT\": {\"name\": \"Turkmenistan manat\", \"symbol\": \"m\"}}',NULL,NULL,'turkmenistan-28657327','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(58,'Cocos (Keeling) Islands','+61','CC','https://flagcdn.com/w320/cc.png','{\"AUD\": {\"name\": \"Australian dollar\", \"symbol\": \"$\"}}',NULL,NULL,'cocos-keeling-islands-43558693','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(59,'Bulgaria','+359','BG','https://flagcdn.com/w320/bg.png','{\"BGN\": {\"name\": \"Bulgarian lev\", \"symbol\": \"лв\"}}',NULL,NULL,'bulgaria-18559290','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(60,'Tokelau','+690','TK','https://flagcdn.com/w320/tk.png','{\"NZD\": {\"name\": \"New Zealand dollar\", \"symbol\": \"$\"}}',NULL,NULL,'tokelau-89560616','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(61,'New Caledonia','+687','NC','https://flagcdn.com/w320/nc.png','{\"XPF\": {\"name\": \"CFP franc\", \"symbol\": \"₣\"}}',NULL,NULL,'new-caledonia-71161231','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(62,'Barbados','+1246','BB','https://flagcdn.com/w320/bb.png','{\"BBD\": {\"name\": \"Barbadian dollar\", \"symbol\": \"$\"}}',NULL,NULL,'barbados-40062386','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(63,'São Tomé and Príncipe','+239','ST','https://flagcdn.com/w320/st.png','{\"STN\": {\"name\": \"São Tomé and Príncipe dobra\", \"symbol\": \"Db\"}}',NULL,NULL,'sao-tome-and-principe-55463668','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(64,'Antarctica','','AQ','https://flagcdn.com/w320/aq.png','\"\"',NULL,NULL,'antarctica-69664212','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(65,'Brunei','+673','BN','https://flagcdn.com/w320/bn.png','{\"BND\": {\"name\": \"Brunei dollar\", \"symbol\": \"$\"}, \"SGD\": {\"name\": \"Singapore dollar\", \"symbol\": \"$\"}}',NULL,NULL,'brunei-77965776','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(66,'Bhutan','+975','BT','https://flagcdn.com/w320/bt.png','{\"BTN\": {\"name\": \"Bhutanese ngultrum\", \"symbol\": \"Nu.\"}, \"INR\": {\"name\": \"Indian rupee\", \"symbol\": \"₹\"}}',NULL,NULL,'bhutan-85666611','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(67,'Cameroon','+237','CM','https://flagcdn.com/w320/cm.png','{\"XAF\": {\"name\": \"Central African CFA franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'cameroon-85267606','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(68,'Argentina','+54','AR','https://flagcdn.com/w320/ar.png','{\"ARS\": {\"name\": \"Argentine peso\", \"symbol\": \"$\"}}',NULL,NULL,'argentina-79468610','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(69,'Azerbaijan','+994','AZ','https://flagcdn.com/w320/az.png','{\"AZN\": {\"name\": \"Azerbaijani manat\", \"symbol\": \"₼\"}}',NULL,NULL,'azerbaijan-15169199','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(70,'Mexico','+52','MX','https://flagcdn.com/w320/mx.png','{\"MXN\": {\"name\": \"Mexican peso\", \"symbol\": \"$\"}}',NULL,NULL,'mexico-20970372','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(71,'Morocco','+212','MA','https://flagcdn.com/w320/ma.png','{\"MAD\": {\"name\": \"Moroccan dirham\", \"symbol\": \"د.م.\"}}',NULL,NULL,'morocco-50071884','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(72,'Guatemala','+502','GT','https://flagcdn.com/w320/gt.png','{\"GTQ\": {\"name\": \"Guatemalan quetzal\", \"symbol\": \"Q\"}}',NULL,NULL,'guatemala-48772723','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(73,'Kenya','+254','KE','https://flagcdn.com/w320/ke.png','{\"KES\": {\"name\": \"Kenyan shilling\", \"symbol\": \"Sh\"}}',NULL,NULL,'kenya-64373863','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(74,'Malta','+356','MT','https://flagcdn.com/w320/mt.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'malta-34274482','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(75,'Czechia','+420','CZ','https://flagcdn.com/w320/cz.png','{\"CZK\": {\"name\": \"Czech koruna\", \"symbol\": \"Kč\"}}',NULL,NULL,'czechia-27775814','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(76,'Gibraltar','+350','GI','https://flagcdn.com/w320/gi.png','{\"GIP\": {\"name\": \"Gibraltar pound\", \"symbol\": \"£\"}}',NULL,NULL,'gibraltar-32376814','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(77,'Aruba','+297','AW','https://flagcdn.com/w320/aw.png','{\"AWG\": {\"name\": \"Aruban florin\", \"symbol\": \"ƒ\"}}',NULL,NULL,'aruba-59577873','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(78,'Saint Barthélemy','+590','BL','https://flagcdn.com/w320/bl.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'saint-barthelemy-83078297','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(79,'Monaco','+377','MC','https://flagcdn.com/w320/mc.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'monaco-54579526','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(80,'United Arab Emirates','+971','AE','https://flagcdn.com/w320/ae.png','{\"AED\": {\"name\": \"United Arab Emirates dirham\", \"symbol\": \"د.إ\"}}',NULL,NULL,'united-arab-emirates-52780423','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(81,'South Sudan','+211','SS','https://flagcdn.com/w320/ss.png','{\"SSP\": {\"name\": \"South Sudanese pound\", \"symbol\": \"£\"}}',NULL,NULL,'south-sudan-23981127','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(82,'Puerto Rico','+1787','PR','https://flagcdn.com/w320/pr.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'puerto-rico-75482818','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(83,'El Salvador','+503','SV','https://flagcdn.com/w320/sv.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'el-salvador-55483227','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(84,'France','+33','FR','https://flagcdn.com/w320/fr.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'france-53884874','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(85,'Niger','+227','NE','https://flagcdn.com/w320/ne.png','{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'niger-11085329','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(86,'Ivory Coast','+225','CI','https://flagcdn.com/w320/ci.png','{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'ivory-coast-56286598','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(87,'South Georgia','+500','GS','https://flagcdn.com/w320/gs.png','{\"SHP\": {\"name\": \"Saint Helena pound\", \"symbol\": \"£\"}}',NULL,NULL,'south-georgia-89887526','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(88,'Botswana','+267','BW','https://flagcdn.com/w320/bw.png','{\"BWP\": {\"name\": \"Botswana pula\", \"symbol\": \"P\"}}',NULL,NULL,'botswana-12388272','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(89,'British Indian Ocean Territory','+246','IO','https://flagcdn.com/w320/io.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'british-indian-ocean-territory-62189722','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(90,'Uzbekistan','+998','UZ','https://flagcdn.com/w320/uz.png','{\"UZS\": {\"name\": \"Uzbekistani soʻm\", \"symbol\": \"so\'m\"}}',NULL,NULL,'uzbekistan-41090319','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(91,'Tunisia','+216','TN','https://flagcdn.com/w320/tn.png','{\"TND\": {\"name\": \"Tunisian dinar\", \"symbol\": \"د.ت\"}}',NULL,NULL,'tunisia-27991822','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(92,'Hong Kong','+852','HK','https://flagcdn.com/w320/hk.png','{\"HKD\": {\"name\": \"Hong Kong dollar\", \"symbol\": \"$\"}}',NULL,NULL,'hong-kong-69592347','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(93,'North Macedonia','+389','MK','https://flagcdn.com/w320/mk.png','{\"MKD\": {\"name\": \"denar\", \"symbol\": \"den\"}}',NULL,NULL,'north-macedonia-33793725','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(94,'Suriname','+597','SR','https://flagcdn.com/w320/sr.png','{\"SRD\": {\"name\": \"Surinamese dollar\", \"symbol\": \"$\"}}',NULL,NULL,'suriname-91894705','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(95,'Belgium','+32','BE','https://flagcdn.com/w320/be.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'belgium-76795287','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(96,'American Samoa','+1684','AS','https://flagcdn.com/w320/as.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'american-samoa-14396807','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(97,'Solomon Islands','+677','SB','https://flagcdn.com/w320/sb.png','{\"SBD\": {\"name\": \"Solomon Islands dollar\", \"symbol\": \"$\"}}',NULL,NULL,'solomon-islands-27197230','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(98,'Ukraine','+380','UA','https://flagcdn.com/w320/ua.png','{\"UAH\": {\"name\": \"Ukrainian hryvnia\", \"symbol\": \"₴\"}}',NULL,NULL,'ukraine-80098551','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(99,'Finland','+358','FI','https://flagcdn.com/w320/fi.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'finland-74399272','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(100,'Burkina Faso','+226','BF','https://flagcdn.com/w320/bf.png','{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'burkina-faso-596100854','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(101,'Bosnia and Herzegovina','+387','BA','https://flagcdn.com/w320/ba.png','{\"BAM\": {\"name\": \"Bosnia and Herzegovina convertible mark\"}}',NULL,NULL,'bosnia-and-herzegovina-225101554','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(102,'Iran','+98','IR','https://flagcdn.com/w320/ir.png','{\"IRR\": {\"name\": \"Iranian rial\", \"symbol\": \"﷼\"}}',NULL,NULL,'iran-223102164','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(103,'Cuba','+53','CU','https://flagcdn.com/w320/cu.png','{\"CUC\": {\"name\": \"Cuban convertible peso\", \"symbol\": \"$\"}, \"CUP\": {\"name\": \"Cuban peso\", \"symbol\": \"$\"}}',NULL,NULL,'cuba-155103167','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(104,'Eritrea','+291','ER','https://flagcdn.com/w320/er.png','{\"ERN\": {\"name\": \"Eritrean nakfa\", \"symbol\": \"Nfk\"}}',NULL,NULL,'eritrea-895104699','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(105,'Slovakia','+421','SK','https://flagcdn.com/w320/sk.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'slovakia-583105994','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(106,'Lithuania','+370','LT','https://flagcdn.com/w320/lt.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'lithuania-953106652','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(107,'Saint Martin','+590','MF','https://flagcdn.com/w320/mf.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'saint-martin-274107943','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(108,'Pitcairn Islands','+64','PN','https://flagcdn.com/w320/pn.png','{\"NZD\": {\"name\": \"New Zealand dollar\", \"symbol\": \"$\"}}',NULL,NULL,'pitcairn-islands-236108726','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(109,'Guinea-Bissau','+245','GW','https://flagcdn.com/w320/gw.png','{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'guinea-bissau-927109943','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(110,'Montserrat','+1664','MS','https://flagcdn.com/w320/ms.png','{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}',NULL,NULL,'montserrat-530110401','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(111,'Turkey','+90','TR','https://flagcdn.com/w320/tr.png','{\"TRY\": {\"name\": \"Turkish lira\", \"symbol\": \"₺\"}}',NULL,NULL,'turkey-712111841','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(112,'Philippines','+63','PH','https://flagcdn.com/w320/ph.png','{\"PHP\": {\"name\": \"Philippine peso\", \"symbol\": \"₱\"}}',NULL,NULL,'philippines-952112315','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(113,'Vanuatu','+678','VU','https://flagcdn.com/w320/vu.png','{\"VUV\": {\"name\": \"Vanuatu vatu\", \"symbol\": \"Vt\"}}',NULL,NULL,'vanuatu-527113746','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(114,'Bolivia','+591','BO','https://flagcdn.com/w320/bo.png','{\"BOB\": {\"name\": \"Bolivian boliviano\", \"symbol\": \"Bs.\"}}',NULL,NULL,'bolivia-114114153','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(115,'Saint Kitts and Nevis','+1869','KN','https://flagcdn.com/w320/kn.png','{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}',NULL,NULL,'saint-kitts-and-nevis-738115203','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(116,'Romania','+40','RO','https://flagcdn.com/w320/ro.png','{\"RON\": {\"name\": \"Romanian leu\", \"symbol\": \"lei\"}}',NULL,NULL,'romania-185116392','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(117,'Cambodia','+855','KH','https://flagcdn.com/w320/kh.png','{\"KHR\": {\"name\": \"Cambodian riel\", \"symbol\": \"៛\"}, \"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'cambodia-789117406','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(118,'Zimbabwe','+263','ZW','https://flagcdn.com/w320/zw.png','{\"ZWL\": {\"name\": \"Zimbabwean dollar\", \"symbol\": \"$\"}}',NULL,NULL,'zimbabwe-117118370','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(119,'Jersey','+44','JE','https://flagcdn.com/w320/je.png','{\"GBP\": {\"name\": \"British pound\", \"symbol\": \"£\"}, \"JEP\": {\"name\": \"Jersey pound\", \"symbol\": \"£\"}}',NULL,NULL,'jersey-493119596','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(120,'Kyrgyzstan','+996','KG','https://flagcdn.com/w320/kg.png','{\"KGS\": {\"name\": \"Kyrgyzstani som\", \"symbol\": \"с\"}}',NULL,NULL,'kyrgyzstan-321120324','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(121,'Caribbean Netherlands','+599','BQ','https://flagcdn.com/w320/bq.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'caribbean-netherlands-608121840','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(122,'Guyana','+592','GY','https://flagcdn.com/w320/gy.png','{\"GYD\": {\"name\": \"Guyanese dollar\", \"symbol\": \"$\"}}',NULL,NULL,'guyana-587122670','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(123,'United States Minor Outlying Islands','+268','UM','https://flagcdn.com/w320/um.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'united-states-minor-outlying-islands-696123958','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(124,'Armenia','+374','AM','https://flagcdn.com/w320/am.png','{\"AMD\": {\"name\": \"Armenian dram\", \"symbol\": \"֏\"}}',NULL,NULL,'armenia-502124464','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(125,'Lebanon','+961','LB','https://flagcdn.com/w320/lb.png','{\"LBP\": {\"name\": \"Lebanese pound\", \"symbol\": \"ل.ل\"}}',NULL,NULL,'lebanon-620125554','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(126,'Montenegro','+382','ME','https://flagcdn.com/w320/me.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'montenegro-344126541','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(127,'Greenland','+299','GL','https://flagcdn.com/w320/gl.png','{\"DKK\": {\"name\": \"krone\", \"symbol\": \"kr.\"}}',NULL,NULL,'greenland-149127635','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(128,'Papua New Guinea','+675','PG','https://flagcdn.com/w320/pg.png','{\"PGK\": {\"name\": \"Papua New Guinean kina\", \"symbol\": \"K\"}}',NULL,NULL,'papua-new-guinea-484128306','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(129,'Zambia','+260','ZM','https://flagcdn.com/w320/zm.png','{\"ZMW\": {\"name\": \"Zambian kwacha\", \"symbol\": \"ZK\"}}',NULL,NULL,'zambia-313129783','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(130,'Trinidad and Tobago','+1868','TT','https://flagcdn.com/w320/tt.png','{\"TTD\": {\"name\": \"Trinidad and Tobago dollar\", \"symbol\": \"$\"}}',NULL,NULL,'trinidad-and-tobago-525130776','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(131,'French Southern and Antarctic Lands','+262','TF','https://flagcdn.com/w320/tf.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'french-southern-and-antarctic-lands-489131554','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(132,'Peru','+51','PE','https://flagcdn.com/w320/pe.png','{\"PEN\": {\"name\": \"Peruvian sol\", \"symbol\": \"S/ \"}}',NULL,NULL,'peru-617132950','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(133,'Sweden','+46','SE','https://flagcdn.com/w320/se.png','{\"SEK\": {\"name\": \"Swedish krona\", \"symbol\": \"kr\"}}',NULL,NULL,'sweden-706133626','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(134,'Sudan','+249','SD','https://flagcdn.com/w320/sd.png','{\"SDG\": {\"name\": \"Sudanese pound\"}}',NULL,NULL,'sudan-663134324','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(135,'Saint Pierre and Miquelon','+508','PM','https://flagcdn.com/w320/pm.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'saint-pierre-and-miquelon-159135861','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(136,'Oman','+968','OM','https://flagcdn.com/w320/om.png','{\"OMR\": {\"name\": \"Omani rial\", \"symbol\": \"ر.ع.\"}}',NULL,NULL,'oman-109136576','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(137,'India','+91','IN','https://flagcdn.com/w320/in.png','{\"INR\": {\"name\": \"Indian rupee\", \"symbol\": \"₹\"}}',NULL,NULL,'india-892137968','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(138,'Taiwan','+886','TW','https://flagcdn.com/w320/tw.png','{\"TWD\": {\"name\": \"New Taiwan dollar\", \"symbol\": \"$\"}}',NULL,NULL,'taiwan-745138726','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(139,'Mongolia','+976','MN','https://flagcdn.com/w320/mn.png','{\"MNT\": {\"name\": \"Mongolian tögrög\", \"symbol\": \"₮\"}}',NULL,NULL,'mongolia-240139423','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(140,'Senegal','+221','SN','https://flagcdn.com/w320/sn.png','{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'senegal-235140397','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(141,'Tanzania','+255','TZ','https://flagcdn.com/w320/tz.png','{\"TZS\": {\"name\": \"Tanzanian shilling\", \"symbol\": \"Sh\"}}',NULL,NULL,'tanzania-113141655','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(142,'Canada','+1','CA','https://flagcdn.com/w320/ca.png','{\"CAD\": {\"name\": \"Canadian dollar\", \"symbol\": \"$\"}}',NULL,NULL,'canada-113142373','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(143,'Costa Rica','+506','CR','https://flagcdn.com/w320/cr.png','{\"CRC\": {\"name\": \"Costa Rican colón\", \"symbol\": \"₡\"}}',NULL,NULL,'costa-rica-112143226','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(144,'China','+86','CN','https://flagcdn.com/w320/cn.png','{\"CNY\": {\"name\": \"Chinese yuan\", \"symbol\": \"¥\"}}',NULL,NULL,'china-742144258','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(145,'Colombia','+57','CO','https://flagcdn.com/w320/co.png','{\"COP\": {\"name\": \"Colombian peso\", \"symbol\": \"$\"}}',NULL,NULL,'colombia-325145507','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(146,'Myanmar','+95','MM','https://flagcdn.com/w320/mm.png','{\"MMK\": {\"name\": \"Burmese kyat\", \"symbol\": \"Ks\"}}',NULL,NULL,'myanmar-600146772','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(147,'Russia','+73','RU','https://flagcdn.com/w320/ru.png','{\"RUB\": {\"name\": \"Russian ruble\", \"symbol\": \"₽\"}}',NULL,NULL,'russia-913147783','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(148,'North Korea','+850','KP','https://flagcdn.com/w320/kp.png','{\"KPW\": {\"name\": \"North Korean won\", \"symbol\": \"₩\"}}',NULL,NULL,'north-korea-570148467','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(149,'Cayman Islands','+1345','KY','https://flagcdn.com/w320/ky.png','{\"KYD\": {\"name\": \"Cayman Islands dollar\", \"symbol\": \"$\"}}',NULL,NULL,'cayman-islands-376149574','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(150,'Bouvet Island','+47','BV','https://flagcdn.com/w320/bv.png','\"\"',NULL,NULL,'bouvet-island-829150611','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(151,'Belarus','+375','BY','https://flagcdn.com/w320/by.png','{\"BYN\": {\"name\": \"Belarusian ruble\", \"symbol\": \"Br\"}}',NULL,NULL,'belarus-381151417','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(152,'Portugal','+351','PT','https://flagcdn.com/w320/pt.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'portugal-568152410','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(153,'Eswatini','+268','SZ','https://flagcdn.com/w320/sz.png','{\"SZL\": {\"name\": \"Swazi lilangeni\", \"symbol\": \"L\"}, \"ZAR\": {\"name\": \"South African rand\", \"symbol\": \"R\"}}',NULL,NULL,'eswatini-356153403','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(154,'Poland','+48','PL','https://flagcdn.com/w320/pl.png','{\"PLN\": {\"name\": \"Polish złoty\", \"symbol\": \"zł\"}}',NULL,NULL,'poland-405154800','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(155,'Switzerland','+41','CH','https://flagcdn.com/w320/ch.png','{\"CHF\": {\"name\": \"Swiss franc\", \"symbol\": \"Fr.\"}}',NULL,NULL,'switzerland-919155372','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(156,'Republic of the Congo','+242','CG','https://flagcdn.com/w320/cg.png','{\"XAF\": {\"name\": \"Central African CFA franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'republic-of-the-congo-312156901','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(157,'Venezuela','+58','VE','https://flagcdn.com/w320/ve.png','{\"VES\": {\"name\": \"Venezuelan bolívar soberano\", \"symbol\": \"Bs.S.\"}}',NULL,NULL,'venezuela-686157803','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(158,'Panama','+507','PA','https://flagcdn.com/w320/pa.png','{\"PAB\": {\"name\": \"Panamanian balboa\", \"symbol\": \"B/.\"}, \"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'panama-283158220','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(159,'Netherlands','+31','NL','https://flagcdn.com/w320/nl.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'netherlands-474159106','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(160,'Samoa','+685','WS','https://flagcdn.com/w320/ws.png','{\"WST\": {\"name\": \"Samoan tālā\", \"symbol\": \"T\"}}',NULL,NULL,'samoa-937160371','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(161,'Denmark','+45','DK','https://flagcdn.com/w320/dk.png','{\"DKK\": {\"name\": \"Danish krone\", \"symbol\": \"kr\"}}',NULL,NULL,'denmark-271161765','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(162,'Luxembourg','+352','LU','https://flagcdn.com/w320/lu.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'luxembourg-593162874','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(163,'Faroe Islands','+298','FO','https://flagcdn.com/w320/fo.png','{\"DKK\": {\"name\": \"Danish krone\", \"symbol\": \"kr\"}, \"FOK\": {\"name\": \"Faroese króna\", \"symbol\": \"kr\"}}',NULL,NULL,'faroe-islands-135163936','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(164,'Slovenia','+386','SI','https://flagcdn.com/w320/si.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'slovenia-687164146','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(165,'Togo','+228','TG','https://flagcdn.com/w320/tg.png','{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'togo-229165166','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(166,'Thailand','+66','TH','https://flagcdn.com/w320/th.png','{\"THB\": {\"name\": \"Thai baht\", \"symbol\": \"฿\"}}',NULL,NULL,'thailand-748166962','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(167,'Wallis and Futuna','+681','WF','https://flagcdn.com/w320/wf.png','{\"XPF\": {\"name\": \"CFP franc\", \"symbol\": \"₣\"}}',NULL,NULL,'wallis-and-futuna-835167233','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(168,'Bahamas','+1242','BS','https://flagcdn.com/w320/bs.png','{\"BSD\": {\"name\": \"Bahamian dollar\", \"symbol\": \"$\"}, \"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'bahamas-275168594','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(169,'Tonga','+676','TO','https://flagcdn.com/w320/to.png','{\"TOP\": {\"name\": \"Tongan paʻanga\", \"symbol\": \"T$\"}}',NULL,NULL,'tonga-977169651','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(170,'Greece','+30','GR','https://flagcdn.com/w320/gr.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'greece-650170347','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(171,'San Marino','+378','SM','https://flagcdn.com/w320/sm.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'san-marino-718171844','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(172,'Réunion','+262','RE','https://flagcdn.com/w320/re.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'reunion-169172674','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(173,'Vatican City','+3906698','VA','https://flagcdn.com/w320/va.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'vatican-city-935173495','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(174,'Burundi','+257','BI','https://flagcdn.com/w320/bi.png','{\"BIF\": {\"name\": \"Burundian franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'burundi-248174378','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(175,'Bahrain','+973','BH','https://flagcdn.com/w320/bh.png','{\"BHD\": {\"name\": \"Bahraini dinar\", \"symbol\": \".د.ب\"}}',NULL,NULL,'bahrain-879175468','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(176,'Marshall Islands','+692','MH','https://flagcdn.com/w320/mh.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'marshall-islands-122176448','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(177,'Turks and Caicos Islands','+1649','TC','https://flagcdn.com/w320/tc.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'turks-and-caicos-islands-396177783','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(178,'Isle of Man','+44','IM','https://flagcdn.com/w320/im.png','{\"GBP\": {\"name\": \"British pound\", \"symbol\": \"£\"}, \"IMP\": {\"name\": \"Manx pound\", \"symbol\": \"£\"}}',NULL,NULL,'isle-of-man-322178683','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(179,'Haiti','+509','HT','https://flagcdn.com/w320/ht.png','{\"HTG\": {\"name\": \"Haitian gourde\", \"symbol\": \"G\"}}',NULL,NULL,'haiti-926179296','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(180,'Afghanistan','+93','AF','https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_the_Taliban.svg/320px-Flag_of_the_Taliban.svg.png','{\"AFN\": {\"name\": \"Afghan afghani\", \"symbol\": \"؋\"}}',NULL,NULL,'afghanistan-235180735','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(181,'Israel','+972','IL','https://flagcdn.com/w320/il.png','{\"ILS\": {\"name\": \"Israeli new shekel\", \"symbol\": \"₪\"}}',NULL,NULL,'israel-936181417','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(182,'Libya','+218','LY','https://flagcdn.com/w320/ly.png','{\"LYD\": {\"name\": \"Libyan dinar\", \"symbol\": \"ل.د\"}}',NULL,NULL,'libya-289182423','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(183,'Uruguay','+598','UY','https://flagcdn.com/w320/uy.png','{\"UYU\": {\"name\": \"Uruguayan peso\", \"symbol\": \"$\"}}',NULL,NULL,'uruguay-301183714','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(184,'Norfolk Island','+672','NF','https://flagcdn.com/w320/nf.png','{\"AUD\": {\"name\": \"Australian dollar\", \"symbol\": \"$\"}}',NULL,NULL,'norfolk-island-907184382','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(185,'Nicaragua','+505','NI','https://flagcdn.com/w320/ni.png','{\"NIO\": {\"name\": \"Nicaraguan córdoba\", \"symbol\": \"C$\"}}',NULL,NULL,'nicaragua-876185525','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(186,'Cook Islands','+682','CK','https://flagcdn.com/w320/ck.png','{\"CKD\": {\"name\": \"Cook Islands dollar\", \"symbol\": \"$\"}, \"NZD\": {\"name\": \"New Zealand dollar\", \"symbol\": \"$\"}}',NULL,NULL,'cook-islands-317186107','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(187,'Laos','+856','LA','https://flagcdn.com/w320/la.png','{\"LAK\": {\"name\": \"Lao kip\", \"symbol\": \"₭\"}}',NULL,NULL,'laos-396187942','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(188,'Christmas Island','+61','CX','https://flagcdn.com/w320/cx.png','{\"AUD\": {\"name\": \"Australian dollar\", \"symbol\": \"$\"}}',NULL,NULL,'christmas-island-616188116','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(189,'Saint Helena, Ascension and Tristan da Cunha','+290','SH','https://flagcdn.com/w320/sh.png','{\"GBP\": {\"name\": \"Pound sterling\", \"symbol\": \"£\"}, \"SHP\": {\"name\": \"Saint Helena pound\", \"symbol\": \"£\"}}',NULL,NULL,'saint-helena-ascension-and-tristan-da-cunha-803189447','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(190,'Anguilla','+1264','AI','https://flagcdn.com/w320/ai.png','{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}',NULL,NULL,'anguilla-755190811','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(191,'Micronesia','+691','FM','https://flagcdn.com/w320/fm.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'micronesia-954191197','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(192,'Germany','+49','DE','https://flagcdn.com/w320/de.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'germany-855192176','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(193,'Guam','+1671','GU','https://flagcdn.com/w320/gu.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'guam-451193629','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(194,'Kiribati','+686','KI','https://flagcdn.com/w320/ki.png','{\"AUD\": {\"name\": \"Australian dollar\", \"symbol\": \"$\"}, \"KID\": {\"name\": \"Kiribati dollar\", \"symbol\": \"$\"}}',NULL,NULL,'kiribati-437194749','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(195,'Sint Maarten','+1721','SX','https://flagcdn.com/w320/sx.png','{\"ANG\": {\"name\": \"Netherlands Antillean guilder\", \"symbol\": \"ƒ\"}}',NULL,NULL,'sint-maarten-230195172','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(196,'Spain','+34','ES','https://flagcdn.com/w320/es.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'spain-819196825','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(197,'Jamaica','+1876','JM','https://flagcdn.com/w320/jm.png','{\"JMD\": {\"name\": \"Jamaican dollar\", \"symbol\": \"$\"}}',NULL,NULL,'jamaica-396197538','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(198,'Palestine','+970','PS','https://flagcdn.com/w320/ps.png','{\"EGP\": {\"name\": \"Egyptian pound\", \"symbol\": \"E£\"}, \"ILS\": {\"name\": \"Israeli new shekel\", \"symbol\": \"₪\"}, \"JOD\": {\"name\": \"Jordanian dinar\", \"symbol\": \"JD\"}}',NULL,NULL,'palestine-135198890','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(199,'French Guiana','+594','GF','https://flagcdn.com/w320/gf.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'french-guiana-965199916','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(200,'Andorra','+376','AD','https://flagcdn.com/w320/ad.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'andorra-465200604','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(201,'Chile','+56','CL','https://flagcdn.com/w320/cl.png','{\"CLP\": {\"name\": \"Chilean peso\", \"symbol\": \"$\"}}',NULL,NULL,'chile-469201472','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(202,'Lesotho','+266','LS','https://flagcdn.com/w320/ls.png','{\"LSL\": {\"name\": \"Lesotho loti\", \"symbol\": \"L\"}, \"ZAR\": {\"name\": \"South African rand\", \"symbol\": \"R\"}}',NULL,NULL,'lesotho-189202287','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(203,'Australia','+61','AU','https://flagcdn.com/w320/au.png','{\"AUD\": {\"name\": \"Australian dollar\", \"symbol\": \"$\"}}',NULL,NULL,'australia-339203122','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(204,'Grenada','+1473','GD','https://flagcdn.com/w320/gd.png','{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}',NULL,NULL,'grenada-460204626','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(205,'Ghana','+233','GH','https://flagcdn.com/w320/gh.png','{\"GHS\": {\"name\": \"Ghanaian cedi\", \"symbol\": \"₵\"}}',NULL,NULL,'ghana-998205957','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(206,'Seychelles','+248','SC','https://flagcdn.com/w320/sc.png','{\"SCR\": {\"name\": \"Seychellois rupee\", \"symbol\": \"₨\"}}',NULL,NULL,'seychelles-892206837','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(207,'Angola','+244','AO','https://flagcdn.com/w320/ao.png','{\"AOA\": {\"name\": \"Angolan kwanza\", \"symbol\": \"Kz\"}}',NULL,NULL,'angola-862207359','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(208,'Bermuda','+1441','BM','https://flagcdn.com/w320/bm.png','{\"BMD\": {\"name\": \"Bermudian dollar\", \"symbol\": \"$\"}}',NULL,NULL,'bermuda-739208551','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(209,'Pakistan','+92','PK','https://flagcdn.com/w320/pk.png','{\"PKR\": {\"name\": \"Pakistani rupee\", \"symbol\": \"₨\"}}',NULL,NULL,'pakistan-339209124','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(210,'Mali','+223','ML','https://flagcdn.com/w320/ml.png','{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'mali-950210590','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(211,'Saudi Arabia','+966','SA','https://flagcdn.com/w320/sa.png','{\"SAR\": {\"name\": \"Saudi riyal\", \"symbol\": \"ر.س\"}}',NULL,NULL,'saudi-arabia-861211256','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(212,'Curaçao','+599','CW','https://flagcdn.com/w320/cw.png','{\"ANG\": {\"name\": \"Netherlands Antillean guilder\", \"symbol\": \"ƒ\"}}',NULL,NULL,'curacao-685212119','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(213,'South Korea','+82','KR','https://flagcdn.com/w320/kr.png','{\"KRW\": {\"name\": \"South Korean won\", \"symbol\": \"₩\"}}',NULL,NULL,'south-korea-558213231','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(214,'Ethiopia','+251','ET','https://flagcdn.com/w320/et.png','{\"ETB\": {\"name\": \"Ethiopian birr\", \"symbol\": \"Br\"}}',NULL,NULL,'ethiopia-405214170','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(215,'Guadeloupe','+590','GP','https://flagcdn.com/w320/gp.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'guadeloupe-518215956','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(216,'Bangladesh','+880','BD','https://flagcdn.com/w320/bd.png','{\"BDT\": {\"name\": \"Bangladeshi taka\", \"symbol\": \"৳\"}}',1,NULL,'bangladesh-668216236','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(217,'New Zealand','+64','NZ','https://flagcdn.com/w320/nz.png','{\"NZD\": {\"name\": \"New Zealand dollar\", \"symbol\": \"$\"}}',NULL,NULL,'new-zealand-607217311','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(218,'Comoros','+269','KM','https://flagcdn.com/w320/km.png','{\"KMF\": {\"name\": \"Comorian franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'comoros-300218493','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(219,'Belize','+501','BZ','https://flagcdn.com/w320/bz.png','{\"BZD\": {\"name\": \"Belize dollar\", \"symbol\": \"$\"}}',NULL,NULL,'belize-138219430','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(220,'Uganda','+256','UG','https://flagcdn.com/w320/ug.png','{\"UGX\": {\"name\": \"Ugandan shilling\", \"symbol\": \"Sh\"}}',NULL,NULL,'uganda-944220880','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(221,'Singapore','+65','SG','https://flagcdn.com/w320/sg.png','{\"SGD\": {\"name\": \"Singapore dollar\", \"symbol\": \"$\"}}',NULL,NULL,'singapore-235221253','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(222,'Liechtenstein','+423','LI','https://flagcdn.com/w320/li.png','{\"CHF\": {\"name\": \"Swiss franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'liechtenstein-643222625','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(223,'Hungary','+36','HU','https://flagcdn.com/w320/hu.png','{\"HUF\": {\"name\": \"Hungarian forint\", \"symbol\": \"Ft\"}}',NULL,NULL,'hungary-602223216','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(224,'Iceland','+354','IS','https://flagcdn.com/w320/is.png','{\"ISK\": {\"name\": \"Icelandic króna\", \"symbol\": \"kr\"}}',NULL,NULL,'iceland-145224451','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(225,'Tajikistan','+992','TJ','https://flagcdn.com/w320/tj.png','{\"TJS\": {\"name\": \"Tajikistani somoni\", \"symbol\": \"ЅМ\"}}',NULL,NULL,'tajikistan-269225897','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(226,'Namibia','+264','NA','https://flagcdn.com/w320/na.png','{\"NAD\": {\"name\": \"Namibian dollar\", \"symbol\": \"$\"}, \"ZAR\": {\"name\": \"South African rand\", \"symbol\": \"R\"}}',NULL,NULL,'namibia-460226809','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(227,'Timor-Leste','+670','TL','https://flagcdn.com/w320/tl.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'timor-leste-732227330','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(228,'Egypt','+20','EG','https://flagcdn.com/w320/eg.png','{\"EGP\": {\"name\": \"Egyptian pound\", \"symbol\": \"£\"}}',NULL,NULL,'egypt-202228543','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(229,'Serbia','+381','RS','https://flagcdn.com/w320/rs.png','{\"RSD\": {\"name\": \"Serbian dinar\", \"symbol\": \"дин.\"}}',NULL,NULL,'serbia-352229790','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(230,'Mauritius','+230','MU','https://flagcdn.com/w320/mu.png','{\"MUR\": {\"name\": \"Mauritian rupee\", \"symbol\": \"₨\"}}',NULL,NULL,'mauritius-602230404','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(231,'Macau','+853','MO','https://flagcdn.com/w320/mo.png','{\"MOP\": {\"name\": \"Macanese pataca\", \"symbol\": \"P\"}}',NULL,NULL,'macau-262231439','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(232,'French Polynesia','+689','PF','https://flagcdn.com/w320/pf.png','{\"XPF\": {\"name\": \"CFP franc\", \"symbol\": \"₣\"}}',NULL,NULL,'french-polynesia-244232273','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(233,'Maldives','+960','MV','https://flagcdn.com/w320/mv.png','{\"MVR\": {\"name\": \"Maldivian rufiyaa\", \"symbol\": \".ރ\"}}',NULL,NULL,'maldives-417233595','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(234,'Indonesia','+62','ID','https://flagcdn.com/w320/id.png','{\"IDR\": {\"name\": \"Indonesian rupiah\", \"symbol\": \"Rp\"}}',NULL,NULL,'indonesia-301234962','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(235,'DR Congo','+243','CD','https://flagcdn.com/w320/cd.png','{\"CDF\": {\"name\": \"Congolese franc\", \"symbol\": \"FC\"}}',NULL,NULL,'dr-congo-389235981','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(236,'Estonia','+372','EE','https://flagcdn.com/w320/ee.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'estonia-479236901','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(237,'Vietnam','+84','VN','https://flagcdn.com/w320/vn.png','{\"VND\": {\"name\": \"Vietnamese đồng\", \"symbol\": \"₫\"}}',NULL,NULL,'vietnam-270237729','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(238,'Italy','+39','IT','https://flagcdn.com/w320/it.png','{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}',NULL,NULL,'italy-272238747','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(239,'Guinea','+224','GN','https://flagcdn.com/w320/gn.png','{\"GNF\": {\"name\": \"Guinean franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'guinea-136239155','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(240,'Chad','+235','TD','https://flagcdn.com/w320/td.png','{\"XAF\": {\"name\": \"Central African CFA franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'chad-137240557','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(241,'Ecuador','+593','EC','https://flagcdn.com/w320/ec.png','{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}',NULL,NULL,'ecuador-194241860','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(242,'Georgia','+995','GE','https://flagcdn.com/w320/ge.png','{\"GEL\": {\"name\": \"lari\", \"symbol\": \"₾\"}}',NULL,NULL,'georgia-441242256','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(243,'Malawi','+265','MW','https://flagcdn.com/w320/mw.png','{\"MWK\": {\"name\": \"Malawian kwacha\", \"symbol\": \"MK\"}}',NULL,NULL,'malawi-540243972','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(244,'Iraq','+964','IQ','https://flagcdn.com/w320/iq.png','{\"IQD\": {\"name\": \"Iraqi dinar\", \"symbol\": \"ع.د\"}}',NULL,NULL,'iraq-290244167','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(245,'Svalbard and Jan Mayen','+4779','SJ','https://flagcdn.com/w320/sj.png','{\"NOK\": {\"name\": \"krone\", \"symbol\": \"kr\"}}',NULL,NULL,'svalbard-and-jan-mayen-649245794','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(246,'Benin','+229','BJ','https://flagcdn.com/w320/bj.png','{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'benin-198246725','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(247,'Japan','+81','JP','https://flagcdn.com/w320/jp.png','{\"JPY\": {\"name\": \"Japanese yen\", \"symbol\": \"¥\"}}',NULL,NULL,'japan-134247764','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(248,'Dominican Republic','+1809','DO','https://flagcdn.com/w320/do.png','{\"DOP\": {\"name\": \"Dominican peso\", \"symbol\": \"$\"}}',NULL,NULL,'dominican-republic-806248679','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(249,'Qatar','+974','QA','https://flagcdn.com/w320/qa.png','{\"QAR\": {\"name\": \"Qatari riyal\", \"symbol\": \"ر.ق\"}}',NULL,NULL,'qatar-300249425','active','2024-09-16 10:44:52','2024-09-16 10:44:52'),(250,'Gabon','+241','GA','https://flagcdn.com/w320/ga.png','{\"XAF\": {\"name\": \"Central African CFA franc\", \"symbol\": \"Fr\"}}',NULL,NULL,'gabon-202250935','active','2024-09-16 10:44:52','2024-09-16 10:44:52');
/*!40000 ALTER TABLE `location_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_districts`
--

DROP TABLE IF EXISTS `location_districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_districts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint DEFAULT NULL,
  `state_division_id` bigint DEFAULT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_districts`
--

LOCK TABLES `location_districts` WRITE;
/*!40000 ALTER TABLE `location_districts` DISABLE KEYS */;
/*!40000 ALTER TABLE `location_districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_state_divisions`
--

DROP TABLE IF EXISTS `location_state_divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_state_divisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_state_divisions`
--

LOCK TABLES `location_state_divisions` WRITE;
/*!40000 ALTER TABLE `location_state_divisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `location_state_divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_stations`
--

DROP TABLE IF EXISTS `location_stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_stations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint DEFAULT NULL,
  `state_division_id` bigint DEFAULT NULL,
  `district_id` bigint DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_stations`
--

LOCK TABLES `location_stations` WRITE;
/*!40000 ALTER TABLE `location_stations` DISABLE KEYS */;
/*!40000 ALTER TABLE `location_stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2016_06_01_000001_create_oauth_auth_codes_table',1),(5,'2016_06_01_000002_create_oauth_access_tokens_table',1),(6,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(7,'2016_06_01_000004_create_oauth_clients_table',1),(8,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(9,'2019_08_19_000000_create_failed_jobs_table',1),(10,'2019_12_14_000001_create_personal_access_tokens_table',1),(11,'create_omi_money_receipts_table',2),(12,'create_otp_codes_table',2),(13,'create_sliders_table',2),(14,'create_visitor_count_table',2),(15,'create_countries_table',3),(16,'create_districts_table',3),(17,'create_orders_table',3),(18,'create_roles_table',3),(19,'create_state_divisions_table',3),(20,'create_stations_table',3),(21,'create_users_table',3),(22,'create_motors_table',4),(23,'create_overseas_mediclaim_insurences_table',4),(24,'create_price_range_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motors`
--

DROP TABLE IF EXISTS `motors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `visa_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stay_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motors`
--

LOCK TABLES `motors` WRITE;
/*!40000 ALTER TABLE `motors` DISABLE KEYS */;
/*!40000 ALTER TABLE `motors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','U9CDpgCkBwalqq0wj5ZIqIXl4bRSOHtLrbsujq4X',NULL,'http://localhost',1,0,0,'2024-09-16 10:44:54','2024-09-16 10:44:54'),(2,NULL,'Laravel Password Grant Client','UF0qut3dsuuzJg8900Ip1ztgMsRlZqHgeno8VBim','users','http://localhost',0,1,0,'2024-09-16 10:44:54','2024-09-16 10:44:54');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2024-09-16 10:44:54','2024-09-16 10:44:54');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omi_money_receipts`
--

DROP TABLE IF EXISTS `omi_money_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `omi_money_receipts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `omi_order_id` int DEFAULT NULL,
  `money_receipt_no` int DEFAULT NULL,
  `received_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_received` double(8,2) DEFAULT NULL,
  `amount_received_in_word` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `down_on_payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issued_against` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stamp_cost` int DEFAULT '0',
  `vat` int DEFAULT NULL,
  `net_cost` int DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omi_money_receipts`
--

LOCK TABLES `omi_money_receipts` WRITE;
/*!40000 ALTER TABLE `omi_money_receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `omi_money_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omi_overseas_mediclaim_insurences`
--

DROP TABLE IF EXISTS `omi_overseas_mediclaim_insurences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `omi_overseas_mediclaim_insurences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stay_duration` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `journy_date_start_from` date DEFAULT NULL,
  `journy_date_end_to` date DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `total_cost` double(8,2) DEFAULT NULL,
  `vat_cost` double(8,2) DEFAULT NULL,
  `net_cost` double(8,2) DEFAULT NULL,
  `stay_of_days` int DEFAULT NULL,
  `mrp_no` bigint DEFAULT NULL,
  `policy_no` bigint DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omi_overseas_mediclaim_insurences`
--

LOCK TABLES `omi_overseas_mediclaim_insurences` WRITE;
/*!40000 ALTER TABLE `omi_overseas_mediclaim_insurences` DISABLE KEYS */;
/*!40000 ALTER TABLE `omi_overseas_mediclaim_insurences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `omi_price_range`
--

DROP TABLE IF EXISTS `omi_price_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `omi_price_range` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age_band_0_40_years` int NOT NULL,
  `age_band_41_50_years` int NOT NULL,
  `age_band_51_55_years` int NOT NULL,
  `age_band_56_59_years` int NOT NULL,
  `age_band_60_65_years` int NOT NULL,
  `age_band_66_70_years` int NOT NULL,
  `age_band_71_75_years` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `omi_price_range`
--

LOCK TABLES `omi_price_range` WRITE;
/*!40000 ALTER TABLE `omi_price_range` DISABLE KEYS */;
INSERT INTO `omi_price_range` VALUES (1,'non schengen','15',1115,1795,2249,2249,2249,7318,10824,NULL,NULL),(2,'non schengen','30',1795,2923,3666,3666,3666,11631,17189,NULL,NULL),(3,'non schengen','45',2249,3666,4597,4597,4597,14608,21580,NULL,NULL),(4,'non schengen','60',2343,3456,4567,4567,4567,15789,22345,NULL,NULL),(5,'non schengen','75',2450,3567,4789,4789,4789,16789,23456,NULL,NULL),(6,'non schengen','90',2560,3678,4890,4890,4890,17890,24567,NULL,NULL),(7,'non schengen','105',2670,3789,5001,5001,5001,18901,25678,NULL,NULL),(8,'non schengen','120',2780,3890,5112,5112,5112,20012,26789,NULL,NULL),(9,'non schengen','135',2890,4001,5223,5223,5223,21123,27890,NULL,NULL),(10,'non schengen','150',3000,4112,5334,5334,5334,22234,28901,NULL,NULL),(11,'non schengen','160',3110,4223,5445,5445,5445,23345,30012,NULL,NULL);
/*!40000 ALTER TABLE `omi_price_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp_codes`
--

DROP TABLE IF EXISTS `otp_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('register','reset') COLLATE utf8mb4_unicode_ci DEFAULT 'register',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_status` tinyint(1) DEFAULT '0',
  `validate_till` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_codes`
--

LOCK TABLES `otp_codes` WRITE;
/*!40000 ALTER TABLE `otp_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `otp_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin',NULL,'5371497','active','2024-09-16 10:44:53','2024-09-16 10:44:53'),(2,'user',NULL,'5952914','active','2024-09-16 10:44:53','2024-09-16 10:44:53');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@gmail.com','1234567890','$2y$12$NER.3EzMXhTMIqqULHx.qerzFcJmVDP.6nZXmpIWpSYgVsScoYO6q','1496 Hettie Village\nErnestoville, GA 24653',1,NULL,'admin-3601321','active','2024-09-16 10:44:53','2024-09-16 10:44:53'),(2,'user','user@gmail.com','1234567890','$2y$12$9WzwgSPQN5vAbieJPatw1eznyIgURvVzSrSj5SzMLMer8cHWrYdQm','8305 Bennie Knolls\nSouth Murlstad, VT 90804-0392',2,NULL,'user-3132887','active','2024-09-16 10:44:53','2024-09-16 10:44:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor_count`
--

DROP TABLE IF EXISTS `visitor_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor_count` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` bigint unsigned DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor_count`
--

LOCK TABLES `visitor_count` WRITE;
/*!40000 ALTER TABLE `visitor_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitor_count` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-16 22:45:27
