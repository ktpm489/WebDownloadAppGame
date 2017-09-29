-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: webappgame
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (3,'admin','$2a$10$jwapQREx1RikdoyLohjsCeeuXqsseoQwRndrlBCuft9FUTorSCERq');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(25000) DEFAULT NULL,
  `metadata` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (4,'http://gamers.article-trader-plus.com/wp-content/uploads/2016/11/aion-sld-1-1050-banner.jpg','home1'),(5,'http://gamers.article-trader-plus.com/wp-content/uploads/2016/11/banner_wowwod-1050x200.jpg','home2'),(6,'http://4.bp.blogspot.com/-XeP6FwsFyx4/VYrjjQyFx2I/AAAAAAAAGtQ/WRRoOB_yiww/s1600/bfgarmada.png','home3'),(7,'https://www.facebook.com/','facebook'),(8,'https://twitter.com/?lang=vi\n','twitter'),(9,'https://www.google.com.vn','google'),(10,'https://www.youtube.com','youtube'),(11,'<center><a href=\"http://Zozapps.net/\"><img src=\"http://image.sharkgame.net/flabby-kid-banner-728-90-mobile-ad-1.jpg\" alt=\"\"></a></center>\r\n','728x90'),(12,'<a href=\"http://zozapps.net/\"><img src=\"http://yanair.net/wp-content/uploads/2017/02/160x600.jpg\" alt=\"\"></a>\r\n','160x600_1'),(13,'<a href=\"http://Zozapps.net/\"><img src=\"https://i.pinimg.com/736x/94/2f/ec/942fec9c67a7b49122c4c3c5f3dda3c7--most-popular-games-casino-games.jpg\" alt=\"\"></a>\r\n','160x600_2'),(14,'<a href=\"http://zozapps.net/\"><img src=\"https://i.pinimg.com/originals/78/92/49/7892497d7ed7d92587a657f5cdde7377.jpg\" alt=\"\"></a>\r\n','300x250_1'),(15,'<a href=\"http://zozapps.net/\"><img src=\"https://www.adworkmedia.com/creatives/1456317869_zmIb1.jpg\" alt=\"\"></a>\r\n','300x250_2'),(16,'<a href=\"http://zozapps.net/\"><img src=\"https://i.pinimg.com/564x/16/b3/7d/16b37d67b94665d34cb7b13e50b33369--angry-birds-games-free-bird-games-free.jpg\" alt=\"\"></a>\r\n','300x250_3'),(17,'<a href=\"http://zozapps.net/\"><img src=\"http://www.lumaarcade.com/wp-content/uploads/2016/07/banner_300x250.jpg\" alt=\"\"></a>\r\n','300x250_4');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(256) NOT NULL,
  `icon` varchar(256) DEFAULT NULL,
  `metadata` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (5,'Action','https://i.dowload.vn/data/image/icon/2015/target.png','GAME'),(6,'Adventure','https://i.dowload.vn/data/image/icon/2017/zombie.png','GAME'),(7,'Strategy','https://i.dowload.vn/data/image/icon/2017/gamer.png','GAME'),(8,'Sports','https://i.dowload.vn/data/image/icon/2017/olympic-games.png','GAME'),(10,'Racing','https://i.dowload.vn/data/image/icon/2015/finish-flag.png','GAME'),(12,'Casino','https://i.dowload.vn/data/image/icon/2015/dressbarbie.png','GAME'),(14,'Tools','http://cdn.marketplaceimages.windowsphone.com/v8/images/a83b608a-8d20-4d1c-8912-ae24390d504e?imageType=ws_icon_large','APP'),(15,'Map & Navigation','https://cdn2.iconfinder.com/data/icons/color-svg-vector-icons-part-2/512/places_network_my_google_plates-512.png','APP'),(16,'Enterprise','http://www.appscale.com/wp-content/uploads/2015/12/enterprise-icon.png','APP'),(17,'Android Wear','https://lh6.ggpht.com/KItvb_F5fVTvQg3hWNc4idE_QBDjWgu5yDseSbb9fguTbGJGRvMbLEHqAZp-eKCSDA=w300','APP'),(18,'Education','http://thetalentcode.com/wp-content/uploads/meStudying_app_icon.png','APP'),(19,'Personalized','https://cordova.apache.org/static/img/showcase-apps/CleverBaby.png','APP'),(20,'Entertainment','http://bestapp4u.com/uploaded_files/app_categories/entr.png','APP'),(21,'Travel & Local','https://c.tadst.com/gfx/android/app/worldclock-400.png','APP'),(22,'Riddle','http://www.evolvingrpg.com/wp-content/uploads/2017/03/Icon_puzzle.png','GAME'),(23,'Education','https://www.educationalappstore.com/images/upload/8894-logo-skillpixels_icon_EAS.png','GAME'),(24,'Simulation','https://cdn2.iconfinder.com/data/icons/illustricon-tech-vii/512/vr_glasses-512.png','GAME'),(25,'Music','http://s.apptoko.com/a/uploads/thumbnails/022017/shuttle-music-player_icon.png','GAME'),(26,'Role-Play','https://cdn.sstatic.net/Sites/rpg/img/apple-touch-icon@2.png?v=4c03147b9ffe','GAME'),(27,'Card','http://www.playingfavoritesgame.com/assets/images/playingFavoritesAndroidIcon.png','GAME'),(28,'Dating','https://upload.wikimedia.org/wikipedia/commons/c/c2/Lovoo_Icon_Heart.png','APP'),(29,'Make Up','http://store-images.s-microsoft.com/image/apps.33538.14130438462068435.5a8d93f1-ca62-4334-86cd-108802d87402.00a44e09-3f57-4326-94c7-09ec43069bb5','APP'),(30,'Contact','https://i.pinimg.com/originals/1b/7d/d4/1b7dd4b55b396c5d298734ed62221eb5.png','APP'),(31,'Life Style','http://www.savecannockchase.org.uk/wp-content/uploads/2016/06/81f3ff1bc80838a91eb84c3782ed914ed3c1c40720304c009ca4eab2-1.png','APP'),(32,'Shopping','http://icons.iconarchive.com/icons/sonya/swarm/256/Shopping-icon.png','APP'),(33,'Productivity','https://i.pinimg.com/originals/86/23/31/862331909df46ee60f804401f03de977.png','APP'),(34,'Art & Design','https://appicon.gallery/wp-content/uploads/2017/04/cornieicons-android-icon.png','APP'),(35,'House','http://scottgrubbe.com/wp-content/uploads/2013/12/house-icon.png','APP'),(36,'Music & Sound','https://i.pinimg.com/originals/5e/71/44/5e71448ba6a3ae9b25ae5798eb392964.png','APP'),(37,'Photography','https://3.bp.blogspot.com/-MJTPG8VW9Bs/VjrGzzLqVUI/AAAAAAAAEA8/-YBA7nWHb40/s1600/6-li-doGoogle_Photos_vo-dich.png','APP');
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` int(11) DEFAULT NULL,
  `i_name` varchar(10000) DEFAULT NULL,
  `icon` varchar(10000) DEFAULT NULL,
  `image` varchar(10000) DEFAULT NULL,
  `description` text,
  `link_download` varchar(10000) DEFAULT NULL,
  `download_count` int(11) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `metadata` text,
  `image2` varchar(10000) DEFAULT NULL,
  `image3` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistent_logins`
--

LOCK TABLES `persistent_logins` WRITE;
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
INSERT INTO `persistent_logins` VALUES ('admin','BAOZl3h+dKIrQ2LuV6I3XQ==','X7IX8smIJqv8rdczHpcEsA==','2017-09-22 10:24:51'),('admin','eaj5hujD89/Z3ymeqRZntg==','b/KD2qUa+y3CD9IDnxuafw==','2017-09-28 19:55:31'),('admin','FbMeZ9QTYobrvatIDILx+g==','xIodvSt9RvoXGFXp5PaN6A==','2017-09-20 08:01:35'),('admin','mrM1SlU2F0WMh6A4YWA4OQ==','ZBccGfqjZ/wprKHj6wZ5ug==','2017-09-27 14:48:40'),('admin','WCBj8tzhJbSZK4Yd3GTYYQ==','doPCSHRvbAPTWSFZLe6uGA==','2017-09-21 07:36:52'),('admin','WlDbJTAkz1OfLidsIflD4Q==','woezjSuCSxHE43ogLJ2XHQ==','2017-09-28 19:12:47');
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (2,'ADMIN'),(1,'USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_role` (`role_id`),
  CONSTRAINT `fk_account` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`),
  CONSTRAINT `fk_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (3,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-29 11:34:28
