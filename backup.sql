-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: webappgame
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.17.04.1

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
  `data` varchar(1538) DEFAULT NULL,
  `metadata` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (1,'https://cdn.mmos.com/rev/revplay7.jpg','728x90'),(2,'http://via.placeholder.com/300x250','300x250'),(3,'http://via.placeholder.com/160x160','160x160'),(4,'https://images-na.ssl-images-amazon.com/images/I/91D%2BpTsGf4L._AC_SL1500_.jpg','home1'),(5,'https://www.technobuffalo.com/wp-content/uploads/2014/02/Beyond-Good-and-Evil.jpg','home2'),(6,'https://images-na.ssl-images-amazon.com/images/I/810NcWUYJEL._AC_SL1500_.jpg','home3');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (4,'RPG','http://findicons.com/files/icons/2229/social_media_mini/48/share.png',NULL),(5,'Action','http://findicons.com/files/icons/2229/social_media_mini/48/geotag.png',NULL),(6,'Adventure','http://findicons.com/files/icons/2229/social_media_mini/48/skype.png',NULL),(7,'Strategy','http://findicons.com/files/icons/2229/social_media_mini/48/delicious.png',NULL),(8,'Sports','http://findicons.com/files/icons/2229/social_media_mini/48/wikipedia.png',NULL),(9,'Fighting','http://findicons.com/files/icons/2229/social_media_mini/48/yahoo_buzz.png',NULL),(10,'Racing','http://findicons.com/files/icons/2229/social_media_mini/48/ebay.png',NULL),(11,'Riddle','http://findicons.com/files/icons/2229/social_media_mini/48/flickr.png',NULL),(12,'Casino','http://findicons.com/files/icons/2229/social_media_mini/48/picasa.png',NULL),(13,'Vigilante 8','https://lukie-games-res.cloudinary.com/t_300.t2/img/assets/images/PS1/ps1_vigilante_8_2nd_offense-120314.jpg',NULL);
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
  `i_name` varchar(256) DEFAULT NULL,
  `icon` varchar(1538) DEFAULT NULL,
  `image` varchar(1538) DEFAULT NULL,
  `description` varchar(1538) DEFAULT NULL,
  `link_download` varchar(256) DEFAULT NULL,
  `download_count` int(11) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `metadata` varchar(1538) DEFAULT NULL,
  `image2` varchar(1538) DEFAULT NULL,
  `image3` varchar(1538) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (6,6,'Dota','http://www.mcvuk.com/cimages/1fbd79bc873679edc935a3b3356ee81c.jpg','https://s-media-cache-ak0.pinimg.com/originals/db/3c/69/db3c6932ab7f48aa37911fa229efa7ba.jpg','*Offer valid for Call of Duty: WWII Digital Standard Edition and Digital Deluxe Edition. Call of Duty: Points (CP) will be accessible in Call of Duty: WWII once CP are made available in game.\r\n\r\nPlatform and region availability may vary and are subject to change.\r\n\r\n**Season Pass purchasers receive 2018 Call of Duty®: WWII Season Pass content.  Season Pass content is not final, is subject to change, and may not include all downloadable content available for the game.  Season Pass content may not be available in all countries, and pricing and release dates may vary by platform. Season Pass content should be downloaded from the in-game store only; do not purchase separately, or you will be charged again.  Season Pass content may be sold separately.','https://www.youtube.com/watch?v=zu3iCi0wAC8',2,'2017-09-20 11:00:06','2017-09-21 08:09:06','TRENDING','http://mobile.vtc.vn/photo/images/truykich/2017/08/15/tai-client1024.png','https://i.ytimg.com/vi/RMQwyeWQBgs/maxresdefault.jpg'),(7,5,'Watch Dog2','http://www.mcvuk.com/cimages/9ee62a00a55d5bb603560eb273f2e457.jpg','https://images-na.ssl-images-amazon.com/images/I/91rxmAiYi2L._AC_SL1500_.jpg','PLAYSTATION EXCLUSIVE ?Play future Mission Packs 30 days early on the PlayStation®4\r\nEXPLORE THE MASSIVE AND DYNAMIC OPEN WORLD OF SAN FRANSISCO BAY -Experience an incredible variety of gameplay possibilities in the winding streets of San Francisco, the vibrant neighborhoods of Oakland, and cutting edge Silicon Valley.\r\nHACK EVERYTHING-Every person, vehicle and connected device can be hacked. Take control of drones, cars, cranes, and more to use them as your weapon.\r\nCONNECT WITH FRIENDS -Play Co-op and Player vs. Player activities in a seamless shared world.\r\nYOU ARE IN CTRL -Develop your skills and combine hacking, weapons and stealth to complete missions in ways that suit your playstyle.','https://www.amazon.com/Watch-Dogs-2-PlayStation-4/dp/B01GKF7T9S%3Fpsc%3D1%26SubscriptionId%3DAKIAIGDJ75UVPLJ6HYAA%26tag%3Dgamespot-vg-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB01GKF7T9S?th=1',999,'2017-09-22 09:54:15','2017-09-22 09:54:15','TRENDING','https://images-na.ssl-images-amazon.com/images/I/71CwMZhRruL._AC_SL1000_.jpg','https://images-na.ssl-images-amazon.com/images/I/91VAqgNYZRL._AC_SL1500_.jpg'),(8,6,'Titanfall 2','http://i1.2pcdn.com/node14/image/game/20160413065151a0edpx52khpne2pj.jpg','https://images-na.ssl-images-amazon.com/images/I/91gPnR90n9L._AC_SL1500_.jpg','Advanced, Action-Packed Gameplay ? Whether fighting as a Pilot, the dominant force on The Frontier, or as a Titan, 20-foot tall war machines, Titanfall 2 provides an incredibly fun, fluid, and thrilling combat experience that is unmatched.\r\nCaptivating Single Player Campaign ? Step on to The Frontier as a Militia rifleman with aspirations of becoming a Pilot. Stranded behind enemy lines, and against overwhelming odds, you must team up with a veteran Vanguard-class Titan and uphold a mission you were never meant to carry out.\r\nDeeper Multiplayer Action ? With six brand-new Titans, a host of deadly new Pilot abilities, an expanded customization system, new modes and much more, Titanfall 2 gives players the deeper Multiplayer experience they have been asking for.\r\nPlay with Friends, or Make New Ones ? The social tissue of Titanfall 2, Networks makes it fast and easy to play with friends old and new. Whether Social or Competitive, players will be able to create and join a variety of Networks that best suit their play styles and preferences.','https://www.amazon.com/Titanfall-2-PC/dp/B01GKGVI8K%3Fpsc%3D1%26SubscriptionId%3DAKIAIGDJ75UVPLJ6HYAA%26tag%3Dgamespot-vg-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB01GKGVI8K?th=1',13643,'2017-09-22 09:55:34','2017-09-22 09:55:34','TRENDING','https://images-na.ssl-images-amazon.com/images/I/91mNOuZ8GIL._AC_SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/91GUYuvOJCL._AC_SL1500_.jpg'),(9,6,'Dead Space 2','http://www.gamershopbd.com/wp-content/uploads/2016/11/dead-space-2.jpg','http://web-vassets.ea.com/Assets/Richmedia/Image/Screenshots/beat3_screen4_preview_656x369.jpg?cb=1412974908','Release Date: Jan 25, 2011 Genre: Action, Third Person Shooter Rating: M for Mature Game Modes: Single player, multiplayer Series: Dead Space Dead Space 2 the survival horror sci-fi sequel comes in at number one on my list of Top Survival Horror Games for the PC. Players once again take on Isaac Clarke who wakes to find himself in a hospital bed confined in a straight jacket, with no memory of the past few years. Upon escaping, players must fight their way through the Sprawl, an enormous space city, in hopes of defeating an evil being known as the Ma','http://store.steampowered.com/app/47780/',423,'2017-09-22 09:56:31','2017-09-22 09:56:31','TRENDING','http://web-vassets.ea.com/Assets/Richmedia/Image/Screenshots/Dead-Space-2-Isaac-Attacked_656x369.jpg?cb=1315963582','http://www.relyonhorror.com/wp-content/uploads/2011/04/ds2wii.jpg'),(10,5,'Doom','https://lh3.googleusercontent.com/nXukbpEc64Ds65r7N9orVw5GsEnd6kA44U8Kpz6d7kWmrkKbC-pFRrNSt1jVIJk1b0Go1ZZL=w300','https://images-na.ssl-images-amazon.com/images/I/81cDUAn9wnL._AC_SL1500_.jpg','A Relentless Campaign: There is no taking cover or stopping to regenerate health as you beat back Hell\'s raging demon hordes\r\nReturn of id Multiplayer: Dominate your opponents in DOOM\'s signature, fast-paced arena-style combat\r\nNear-Limitless Gameplay: DOOM SnapMap - A powerful, but easy-to-use game and level editor that allows for limitl','https://www.amazon.com/Doom-PC/dp/B00M3D8ISS%3Fpsc%3D1%26SubscriptionId%3DAKIAIGDJ75UVPLJ6HYAA%26tag%3Dgamespot-vg-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB00M3D8ISS?th=1',0,'2017-09-22 09:57:51','2017-09-22 09:57:51','TRENDING','https://images-na.ssl-images-amazon.com/images/I/81HAKP99GuL._AC_SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/81kn0atBlUL._AC_SL1500_.jpg'),(11,5,'FIFA 17','http://media.psu.com/media/articles/16-09-26-06-52_0_large_fifa17ps4.jpg','','Powered by Frostbite: One of the industry?s leading game engines, Frostbite delivers authentic, true-to-life action, takes players to new football worlds, and introduces fans to characters full of depth and emotion in FIFA 17.\r\nThe Journey: For the first time ever in FIFA, live your story on and off the pitch as the Premier League?s next rising star, Alex Hunter. Play on any club in the premier league, for authentic managers and alongside some of the best players on the planet. Experience brand new worlds in FIFA 17, all while navigating your way through the emotional highs and lows of The Journey.\r\nOwn Every Moment: Complete innovation in the way players think and move, physically interact with opponents, and execute in attack puts you in complete control of every moment on the pitch.','https://www.easports.com/fifa',1,'2017-09-22 09:58:36','2017-09-22 09:58:36','TRENDING','',''),(12,5,'Forza Motorsport 6','https://lh3.googleusercontent.com/fUt-GMYvRGKyFG5TSMv6gQ6VUdnME4u-lQzC_9QWi9kb8STbsA5qaMhIAZw-hOQdzkuEirHr=w300','','Forza Motorsport 6 is another highly anticipated game that is scheduled for September 2015 release on XBox One. New to the game is the wet-weather racing. To make this as realistic as possible the developers visited real world tracks to identify where water puddles are formed.\r\n\r\nForza 6 launches with a record breaking 450 cars and 26 tracks. Over 60 car makes have been confirmed so far, and race cars from leading series such as FIA WEC, WTCC, BTCC, V8 Supercars, F1 and Formula E are also included in Forza 6. New tracks include COTA, Brands Hatch, Lime Rock Park, Daytona Speedway, Monza and Watkins Glen.\r\n\r\n','https://www.forzamotorsport.net/en-us/games/fm6',22,'2017-09-22 09:59:12','2017-09-22 09:59:12','TRENDING','',''),(13,5,'Mad Max','http://www.thewildbore.com/wp-content/uploads/2016/02/mad-max-game-thumb-300x300.jpg','https://pbs.twimg.com/media/CvM8hxZWcAEzW8u.jpg','Mad Max is an open world action-adventure video game based on the Mad Max franchise. Developed by Avalanche Studios and published by Warner Bros','http://madmaxgame.com/age_gate/',53563,'2017-09-22 09:59:58','2017-09-22 09:59:58','TRENDING','http://download.gamezone.com/uploads/image/data/1189183/mad-max.jpg','http://cdn1-www.comingsoon.net/assets/uploads/2015/04/madmaxgameheader.jpg'),(14,6,'Path of Exile','http://i1.2pcdn.com/node14/image/game/20121227221209a0dcwazoz910m0wn.jpg','https://screenshots.en.sftcdn.net/en/scrn/69654000/69654141/path-of-exile-03-700x393.jpg','This excellent free-to-play action RPG is heaven for players that enjoy stewing over builds to construct the most effective killing machine possible. It?s not the most glamorous ARPG, but it has extraordinary depth of progression and an excellent free-to-play model that relies on cosmetics rather than game-altering upgrades. It may look muddy and indistinct, and the combat doesn?t feel as good as Diablo 3, but if you enjoy number crunching this is one of the brainiest RPGs around.\r\n\r\nPath of Exile?s scary complexity becomes apparent the moment you arrive on your character?s level-up screen, which looks like this. As you plough through enemies and level up, you travel across this huge board, tailoring your character a little with each upgrade. Gear customization is equally detailed. Path of Exile borrows Final Fantasy VII?s concept of connected gem slots. Every piece of armor has an arrangement of slots that take magic gems. These gems confer stat bonuses and bonus adjacency effects when set in the right formations. Ideally you?ll want to build synergies between your gemmed-up gear and leveling choices to create the most powerful warrior you can. Doing so requires plenty of planning, but it?s a','https://www.pathofexile.com/game',0,'2017-09-22 10:00:53','2017-09-22 10:00:53','TRENDING','http://cdn.mos.cms.futurecdn.net/b1002bd9fc7173d0f0ab82a84a0023bc.jpg','https://screenshots.en.sftcdn.net/en/scrn/69654000/69654141/path-of-exile-04-700x393.jpg'),(15,5,'Resident Evil 7 Biohazard','http://i1.2pcdn.com/node14/image/game/20161120085730a0ekhq4yteez9pna.jpg','https://images-na.ssl-images-amazon.com/images/I/810FoQFFyqL._AC_SL1500_.jpg','Delivers an experience reminiscent of the series\' signature gameplay including exploration, puzzles and realistic tense atmosphere for players to encounter\r\nComplete refresh of the gameplay systems to propel the survival horror experience to the next level\r\nA new shift for the series to first person view brings the terrifying horror directly up close and personal\r\nA brand new VR compatible development engine in tandem with industry leading audio and visual technologies to create a disturbingly photorealistic experience for an unprecedented level of immersion','https://www.amazon.com/Resident-Evil-7-Biohazard-Xbox-One/dp/B01GW8XLCM%3Fpsc%3D1%26SubscriptionId%3DAKIAIGDJ75UVPLJ6HYAA%26tag%3Dgamespot-vg-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB01GW8XLCM?th=1',123,'2017-09-22 10:01:42','2017-09-22 10:01:42','TRENDING','https://images-na.ssl-images-amazon.com/images/I/71qT0xYlaCL._AC_SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/71GUl7RGDZL._AC_SL1500_.jpg'),(16,5,'Sniper Elite 4','http://crack2games.com/wp-content/uploads/2017/01/Sniper-Elite-4-crack-300x300.png','https://images-na.ssl-images-amazon.com/images/I/91xt-OenHQL._AC_SL1500_.jpg','Sniper Elite 4 is a third-person tactical shooter combining genre-defining ballistics and emergent stealth tactics across the largest and most diverse environments ever seen in a Sniper Elite game.\r\nPlayers assume the role of covert agent and elite marksman Karl Fairburne, who must fight alongside the brave men and women of the Italian Resistance.\r\nFighting to help free their country from the yoke of Fascism, and defeat a terrifying new threat with the potential to halt the Allied fightback in Europe before it begins.\r\n1-2 player, dedicated co-op, adversarial multiplayer modes','https://www.amazon.com/Sniper-Elite-4-PlayStation/dp/B01IPARX1A%3Fpsc%3D1%26SubscriptionId%3DAKIAIGDJ75UVPLJ6HYAA%26tag%3Dgamespot-vg-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB01IPARX1A?th=1',132,'2017-09-22 10:02:38','2017-09-22 10:02:38','TRENDING','https://images-na.ssl-images-amazon.com/images/I/81ewcznSifL._AC_SL1500_.jpg','https://images-na.ssl-images-amazon.com/images/I/A1fXv1V1izL._AC_SL1500_.jpg'),(17,6,'SHERLOC','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTajh1dDI0bEKHR6qcPBOFMEAEKNvoifMPvRqZnhS3fwsIbRCuq','http://img.news.zing.vn/img/92/t92903.jpg','And here it is: the place of honour. I couldn?t have chosen differently since I?ve been an avid reader of Sherlock Holmes stories from an early age, I love the Holmes games made by Frogwares and currently I?m obsessed with the BBC show ?Sherlock? (make a game starring Benedict Cumberbatch and I?ll die happily). You couldn?t possible fathom the amount of love I have for this game. I could ramble for hours how brilliant Sherlock Holmes: Nemesis is, but I?ll try to contain my enthusiasm not to bore you to death. ?Try? is the key word here.','http://store.steampowered.com/app/11040/',7,'2017-09-22 10:03:32','2017-09-22 10:03:57','TRENDING','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTtU6RB-z26FXI3QzYmayTrUyTuCHUAqeFL-JBunkT0le5Nm_DG','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwk4JAdT-g8KdwRQVVAvN7EOv6Muk7yk8uDu_zul6dSFvzmk_v'),(18,5,'South Park','https://lh4.ggpht.com/1xBZjC9srf4AW9U1SZ-pbzyhN-FVfhGKUW5PLWa4YB4N_kEZCNEz0UnR1ilc7GRqIb4m=w300','https://upload.wikimedia.org/wikipedia/en/5/59/South_Park.png','This really shouldn?t have worked. Most licensed games are bad on their own, but a role-playing game based on a crudely animated, foul-mouthed television show should be downright awful. Stick of Truth beats the odds, thanks to the way Obsidian applied the South Park license to some clever RPG tropes?party members are recruited through a Facebook-like interface, a q','http://southpark.cc.com/',0,'2017-09-22 10:06:37','2017-09-22 10:06:37',NULL,'https://pmcvariety.files.wordpress.com/2014/07/south-park-hulu1.jpg?w=670&h=377&crop=1','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQKb4S4HpjmCFziKwgiX7UfQ-_lC2K-yAruJnujt5l6a88gp8q4'),(19,6,'Asphalt 8','http://www.androidapksfree.com/wp-content/uploads/2014/08/Asphalt-8-Airborne-APK-1.png','https://lh3.googleusercontent.com/akjKSXomid5yp6Nt-sbOamclieoByJLd5kDZjMWpxyqHrpSla7QUUxPVdVmFuFkm9YA=h900-rw','200 MILLION PLAYERS CAN NOT BE WRONG!  RIDING WITH THE WIND MAY TEAR OF ONE HAND LINE PLAY MOBILE RACING GAME!  ** The full game installed requires at least 1.8 GB of memory space. **  PLAYERS AND PRESS PRAISE!  WIN: ** Application Best Mobile Game MWC 2015 **  WIN: ** Award Game Racing e / Pocket Gamer Best Sports 2014 **  THE ABSOLUTE: ** 5/5 - TouchArcade **  THE ABSOLUTE : ** 5/5 - AppSpy **  THE aBSOLUTE: ** 5/5 - Slide to Play **  THE aBSOLUTE: 100/100 ** - ** GameReactor  EXPRESSLY POINTS: ** 5/5 - MacLife * *  REMOVE XA GRAVITY!  ? KEY SPEED 140+ machine BRAND: Ferrari, Lamborghini, McLaren, Bugatti, Mercedes, Audi, Ford, Chevrolet ... We have before!  ? stunning graphics: Experience interacting with the car, the track','http://down1.koplayer.com/autoapk/com.gameloft.android.ANMP.GloftA8HM/com.gameloft.android.ANMP.GloftA8HM-29027.apk',53,'2017-09-22 10:07:29','2017-09-22 10:07:29','TRENDING','https://lh3.googleusercontent.com/cJOcgI-LrZpSeWmckYqHSj-jN-Ijy9qbYZkVUEe-h8jDyeNv0lUTM1oaSPcc1IsD5w=h900-rw','https://lh3.googleusercontent.com/rrnk33uazBjznwYNUDxH2le0cDgnUKR4Dz0PqhWZroLpzfbqKLXkFBM8e22uep74D8U=h900-rw'),(20,6,'Rope','https://lh4.ggpht.com/7qKgZVumNdQxGICDqf6LBdOtmw-eF48UX6BLvQ8FBMXZdzR0PPSVZL-QUHSVFz6aIw=w300','https://lh3.ggpht.com/y7On3vVZhFWycuekTPLwARYJ3MwQyODIzKHRt4ofyeS_gmXRDF271NsFDfu_lLhlX2Rj=h900-rw',' fun, award-winning, physics-based game! Game awards: Apple Design Award BAFTA Award Pocket Gamer Award GDC Award Best App Ever Award Key features:  - 17 boxes with 425 levels - Innovative physics gameplay - Adorable character - Outstanding graphics - \"Om Nom Stories\" animation shorts - Superpowers ALREADY A FAN? CONNECT WITH OM NOM * Facebook: http://facebook.com/cuttherope * Twitter: http://twitter.com/cut_the_rope * Website: http://cuttherope.net * Pinterest: http://pinterest.com/cuttherope * Instagram: http://instagram.com/cuttheropeofficial --------------------- Now you can earn free superpowers by trying new apps from Getjar. All these permissions allows us to give you Superpowers and Star Key for free.  ? \"Get Tasks\" permission. This allows us to give you free Superpowers. If you install an app for a ','http://down1.koplayer.com/autoapk/com.zeptolab.ctr.ads/com.zeptolab.ctr.ads-1729411.apk',41,'2017-09-22 10:27:45','2017-09-22 10:27:45','TRENDING','https://lh3.ggpht.com/ZBHE3V7Ixxq3T4K6Ur7kUQfvT0zzGFbMCRrcBMs2K-ZFKvyggU3VLEly5OjlLpqDgDY=h900-rw','https://lh3.googleusercontent.com/JtpaLruWxTd545qFjAjQFLxqedJDjVu2Xqnz6iZ5WNuIJOMTTyCq2bGIALUCVnKQtfo=h900-rw'),(21,12,'Evil 5','http://www.allkeyshop.com/blog/wp-content/uploads/buy-resident-evil-5-untold-stories-cd-key-pc-download-img1.jpg','https://services.tegrazone.com/sites/default/files/article-feature-images/resident-evil-5.jpg','Release Date: Sep 15, 2009 Genre: Third Person Shooter Rating: M for Mature Game Modes: Single player, multiplayer co-op Read the Full Review\r\n\r\nChris Redfield, hero from the original Resident Evil game, is back in Resident Evil 5. Set 10 years since the events of the first game Resident Evil 5 takes place in a fictionalized west African region. Chris and Sheva Alomar are on a mission to capture an arms dealer before he is able to sell a bio weapon on the black market. Along the way they encounter scores of parasite infe','http://www.residentevil.com/5/',0,'2017-09-22 10:28:37','2017-09-22 10:28:37','TRENDING','http://1079638729.rsc.cdn77.org/androidgame_img/resident_evil_5/real/5_resident_evil_5.jpg','http://cdn.stevivor.com/wp-content/uploads/2016/06/residentevil5-1.jpg'),(22,5,'Amnesia','https://lh3.googleusercontent.com/QPVokOmb5-Gq68vtxDGcI7_lN7pu46510-L74RgxykXhPIrPKdt3WFF6LIn2THI60L1oKDGxcw=w300','',' First Person Rating: M for Mature Game Modes: Single player Amnesia: The Dark Descent is top survival horror game from Frictional Games, the same developer behind the Penumbra series of survival horror games. Players will take on the role of Daniel as he awakens to find himself in a mysterious castle with no memory about his past. Not only will players explore through the physical castle they will also experience Daniel\'s tormented memories as he slowly regains them, not knowing what is real or im','http://store.steampowered.com/app/57300/',64,'2017-09-22 10:29:20','2017-09-22 10:29:20','TRENDING','',''),(23,5,'Anachronox','http://orig12.deviantart.net/33ee/f/2012/352/b/8/anachronox_for_windows_8_oblytile_by_masakari666-d5og2cc.jpg','https://upload.wikimedia.org/wikipedia/en/f/f8/Anachronox_Characters.png','d to make a turn-based RPG, like Final Fantasy, but with a distinctly Western voice. It?s that tone that makes Anachronox so brilliant: few other games of any genre have dialogue as funny as Sly Boots? negotiation with a sock-chewing mutant warlord, and no other game we?ve played lets you add an entire planet to your party.','http://store.steampowered.com/agecheck/app/242940/',9990,'2017-09-22 10:30:38','2017-09-22 10:30:38','TRENDING','http://www.theisozone.com/images/screens/windows-2984-21328244485.jpg',''),(24,5,'Park','https://lh4.ggpht.com/1xBZjC9srf4AW9U1SZ-pbzyhN-FVfhGKUW5PLWa4YB4N_kEZCNEz0UnR1ilc7GRqIb4m=w300','https://upload.wikimedia.org/wikipedia/en/5/59/South_Park.png','This really shouldn?t have worked. Most licensed games are bad on their own, but a role-playing game based on a crudely animated, foul-mouthed television show should be downright awful. Stick of Truth beats the odds, thanks to the way Obsidian applied the South Park license to some clever RPG tropes?party members are recruited through a Facebook-like interface, a quest sends you to retrie','http://southpark.cc.com/',0,'2017-09-22 10:32:23','2017-09-22 10:32:23','TRENDING','https://pmcvariety.files.wordpress.com/2014/07/south-park-hulu1.jpg?w=670&h=377&crop=1','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQKb4S4HpjmCFziKwgiX7UfQ-_lC2K-yAruJnujt5l6a88gp8q4'),(25,6,'Homeworld','http://tidegames.com/uploads/posts/2016-01/1453900174_homeworld-deserts-of-kharak.jpg','https://hydra-media.cursecdn.com/homeworlddesertsofkharak.gamepedia.com/9/95/IP1uqO3HS3Vc.878x0.Z-Z96KYq.jpg','meworld: Deserts of Kharak sounded almost sacrilegious at first. Over a decade since the last Homeworld game, it was going to take a game remembered for its spaceships and 3D movement and turn it into a ground-based RTS with tanks? And it was a prequel? Yet in spite of all the ways this could have gone horribly wrong, Deserts of Kharak succeeds on almost every count. It\'s not only a terrific RTS that sets itself apart from the rest of the genre\'s recent games, but it\'s also an excellent Homeworld game that reinvents the series while also recapturing its magic.','http://store.steampowered.com/app/433241',6,'2017-09-22 10:33:54','2017-09-22 10:33:54','TRENDING','','');
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
INSERT INTO `persistent_logins` VALUES ('admin','BAOZl3h+dKIrQ2LuV6I3XQ==','X7IX8smIJqv8rdczHpcEsA==','2017-09-22 10:24:51'),('admin','FbMeZ9QTYobrvatIDILx+g==','xIodvSt9RvoXGFXp5PaN6A==','2017-09-20 08:01:35'),('admin','WCBj8tzhJbSZK4Yd3GTYYQ==','doPCSHRvbAPTWSFZLe6uGA==','2017-09-21 07:36:52');
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

-- Dump completed on 2017-09-22 15:23:35
