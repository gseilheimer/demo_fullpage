## Redaxo Database Dump Version 5
## Prefix rex_
## charset utf-8

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `rex_action`;
CREATE TABLE `rex_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `preview` text,
  `presave` text,
  `postsave` text,
  `previewmode` tinyint(4) DEFAULT NULL,
  `presavemode` tinyint(4) DEFAULT NULL,
  `postsavemode` tinyint(4) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_article`;
CREATE TABLE `rex_article` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `catpriority` int(10) unsigned NOT NULL,
  `startarticle` tinyint(1) NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `template_id` int(10) unsigned NOT NULL,
  `clang_id` int(10) unsigned NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  `art_title` text,
  `art_keywords` text,
  `art_description` text,
  `art_online_from` text,
  `art_online_to` text,
  `art_bgimage` varchar(255) DEFAULT '',
  `art_bgcolor` text,
  `cat_bgimage` varchar(255) DEFAULT '',
  `cat_bgcolor` text,
  `cat_autoheight` varchar(255) DEFAULT '',
  `cat_nomenu` varchar(255) DEFAULT '',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `find_articles` (`id`,`clang_id`),
  KEY `id` (`id`),
  KEY `clang_id` (`clang_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_article` WRITE;
/*!40000 ALTER TABLE `rex_article` DISABLE KEYS */;
INSERT INTO `rex_article` VALUES 
  (1,1,0,'Fullpage-Demo','Fullpage-Demo',1,1,1,'|',1,'2017-05-24 09:17:25','2017-06-08 15:36:34',1,1,'admin','admin',0,'Fullpage-Demo für das REDAXO CMS','Fullpage-Demo, REDAXO CMS, fullpage.js','Fullpage-Demo für das REDAXO CMS','','','','','bg01.jpg','','||','|true|'),
  (2,2,0,'Über diese Demo','Über diese Demo',2,1,1,'|',1,'2017-05-24 09:18:12','2017-06-08 15:37:23',1,1,'admin','admin',0,'','','','','','','','bg02.jpg','','||','||'),
  (3,3,0,'Addon-Einstellungen','Addon-Einstellungen',3,1,1,'|',1,'2017-05-24 09:18:14','2017-06-09 13:21:59',1,1,'admin','admin',0,'','','','','','','','bg03.jpg','','||','||'),
  (4,4,0,'Artikel / Kategorien','Artikel / Kategorien',4,1,1,'|',1,'2017-05-24 09:18:15','2017-06-09 13:29:33',1,1,'admin','admin',0,'','','','','','','','bg04.jpg','','||','||'),
  (5,5,0,'Inhaltselemente','Inhaltselemente',5,1,1,'|',1,'2017-05-24 15:28:43','2017-06-09 14:55:37',1,1,'admin','admin',0,'','','','','','','','bg05.jpg','','||','||'),
  (6,6,0,'Informationen','Informationen',7,1,1,'|',1,'2017-05-31 02:09:04','2017-06-08 22:24:12',1,1,'admin','admin',0,'','','','','','','','bg06.jpg','','||','||'),
  (7,7,0,'404','',0,0,1,'|',1,'2017-05-20 22:45:24','2017-05-24 09:18:20',1,1,'admebe','admin',0,'','','','','','','','','','',''),
  (8,8,0,'Download','',0,0,2,'|',1,'2017-06-09 01:11:26','2017-06-09 01:12:53',5,1,'admin','admin',0,'','','','','','','','','','',''),
  (9,9,5,'Inhaltselemente Headline','Inhaltselemente',0,0,2,'|5|',0,'2017-06-09 13:39:17','2017-06-09 14:39:54',5,1,'admin','admin',0,'','','','','','','','','','',''),
  (11,11,0,'Headlines','Beispiele',6,1,1,'|',0,'2017-06-13 20:51:14','2017-06-09 16:32:47',5,1,'admin','admin',0,'','','','','','','','bg10.jpg','','|true|','|true|'),
  (12,12,11,'Text mit Bild','Beispiele',0,0,2,'|11|',1,'2017-06-09 16:33:44','2017-06-09 16:37:25',5,1,'admin','admin',0,'','','','','','','','','','','');
/*!40000 ALTER TABLE `rex_article` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_article_slice`;
CREATE TABLE `rex_article_slice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clang_id` int(10) unsigned NOT NULL,
  `ctype_id` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `value1` text,
  `value2` text,
  `value3` text,
  `value4` text,
  `value5` text,
  `value6` text,
  `value7` text,
  `value8` text,
  `value9` text,
  `value10` text,
  `value11` text,
  `value12` text,
  `value13` text,
  `value14` text,
  `value15` text,
  `value16` text,
  `value17` text,
  `value18` text,
  `value19` text,
  `value20` text,
  `media1` varchar(255) DEFAULT NULL,
  `media2` varchar(255) DEFAULT NULL,
  `media3` varchar(255) DEFAULT NULL,
  `media4` varchar(255) DEFAULT NULL,
  `media5` varchar(255) DEFAULT NULL,
  `media6` varchar(255) DEFAULT NULL,
  `media7` varchar(255) DEFAULT NULL,
  `media8` varchar(255) DEFAULT NULL,
  `media9` varchar(255) DEFAULT NULL,
  `media10` varchar(255) DEFAULT NULL,
  `medialist1` text,
  `medialist2` text,
  `medialist3` text,
  `medialist4` text,
  `medialist5` text,
  `medialist6` text,
  `medialist7` text,
  `medialist8` text,
  `medialist9` text,
  `medialist10` text,
  `link1` varchar(10) DEFAULT NULL,
  `link2` varchar(10) DEFAULT NULL,
  `link3` varchar(10) DEFAULT NULL,
  `link4` varchar(10) DEFAULT NULL,
  `link5` varchar(10) DEFAULT NULL,
  `link6` varchar(10) DEFAULT NULL,
  `link7` varchar(10) DEFAULT NULL,
  `link8` varchar(10) DEFAULT NULL,
  `link9` varchar(10) DEFAULT NULL,
  `link10` varchar(10) DEFAULT NULL,
  `linklist1` text,
  `linklist2` text,
  `linklist3` text,
  `linklist4` text,
  `linklist5` text,
  `linklist6` text,
  `linklist7` text,
  `linklist8` text,
  `linklist9` text,
  `linklist10` text,
  `article_id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slice_priority` (`article_id`,`priority`,`module_id`),
  KEY `clang_id` (`clang_id`),
  KEY `article_id` (`article_id`),
  KEY `find_slices` (`clang_id`,`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_article_slice` WRITE;
/*!40000 ALTER TABLE `rex_article_slice` DISABLE KEYS */;
INSERT INTO `rex_article_slice` VALUES 
  (18,1,1,3,'','','','','','','','','','','','','','','','','','','','','screen01.png','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,3,'2017-06-02 16:18:08','2017-06-07 08:36:08','admin','admin',0),
  (19,1,1,1,'','','','','','','','','','Fullpage-Demo','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,1,'2017-06-02 16:31:02','2017-06-06 16:02:32','admin','admin',0),
  (21,1,1,2,'','','','','','','','','','für das REDAXO CMS','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,1,'2017-06-06 16:02:15','2017-06-07 11:35:07','admin','admin',0),
  (23,1,1,1,'Die Fullpage-Demo für REDAXO demonstriert eine sogenannte \"Onepage-Website\".\r\nDie Root-Kategorien werden automatisch zu den einzelnen Seiten der Website zusammengesetzt und die Hauptnavigation wird automatisch generiert.','Jede einzelne Seite kann über die Metadaten der Kategorien angepasst werden. Es kann eine Hintergrundfarbe oder ein Hintergrundbild für jede Seite ausgewählt werden. Eine Kategorie kann auch aus der Hauptnavigation ausgeblendet werden.','Die einzelnen Seiten werden automatisch an die Höhe des Browser-Fensters angepasst (fullpage). \r\nÜber diverse Einstellungen des Addons kann das Scroll-Verhalten und die Darstellung der Webseite angepasst werden.','','','','','','3','Über diese Demo','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,2,'2017-06-06 16:40:09','2017-06-08 15:37:23','admin','admin',0),
  (24,1,1,1,'Über die Addon-Einstellungen können folgende Parameter für die Website geändert werden:\r\n\r\n* Theme\r\n* Scrollverhalten der Website\r\n* zusätzliche Navigationen\r\n* Artikel oder Kategorien für horizontale Slides','Mit dem Addon kommen automatisch drei verschiedene Themes die sich durch unterschiedliche CSS-Definitionen und JavaScript-Effekte unterscheiden.','Screenshot der Einstellungen','','','','','','3','Addon-Einstellungen','h1','','','','','','','','','','','','screenshot_addon_settings.jpg','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',3,2,'2017-06-07 14:22:10','2017-06-09 00:13:49','admin','admin',0),
  (26,1,1,4,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,5,'2017-06-08 13:27:53','2017-06-08 13:27:53','admin','admin',0),
  (27,1,1,2,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','screenshot_struktur.jpg,screenshot_metainfo_cat.jpg,screenshot_frontend.jpg','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,4,'2017-06-08 14:23:30','2017-06-08 15:08:20','admin','admin',0),
  (28,1,1,1,'Die Fullpage-Demo für REDAXO ist völlig frei verwendbar, sowohl für private als auch für kommerzielle Projekte!\r\n\r\nDie Demo vermeidet ganz bewusst Abhängigkeiten von weiteren Addons und ist so einfach wie möglich gehalten.\r\n\r\nDemo und Addon von Andreas Eberhard\r\nhttp://aesoft.de\r\n\r\nFotos: \r\nFFCU - FREE for commercial use.\r\nhttp://freeforcommercialuse.net/','Verwendete Software:\r\n\r\nREDAXO - https://redaxo.org/\r\nfullPage js - https://alvarotrigo.com/fullPage/\r\nbootstrap - http://getbootstrap.com/\r\nswipebox - http://brutaldesign.github.io/swipebox/\r\n\r\nBugs zur Demo bitte direkt in github melden https://github.com/FriendsOfREDAXO/demo_fullpage\r\n\r\nVielen Dank an:\r\nJan Kristinus, Thomas Blum, Gregor Harlan, Peter Bickel','Credits','','','','','','2','Informationen zur Fullpage-Demo','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',6,2,'2017-06-08 15:43:33','2017-06-08 22:24:12','admin','admin',0),
  (29,1,1,1,'Screenshot Module','Die Fullpage-Demo bringt einige Module für die Inhalte mit.\r\n\r\n* Headline\r\n* Text mit Bild (1-3 Spalten)\r\n* Bild in voller Größe\r\n* Bildergalerie\r\n* Download\r\n* Scrolldown-Arrow','Beispiele dafür hier in dieser Demo und auf den nächsten Seiten (horizontal scrollen).\r\nDiese Beispiele dienen zur Veranschaulichung der horizontalen Slides aus den Artikeln ...','','','','','','3','Inhaltselemente','h1','','','','','','','','','','screenshot_module.jpg','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',5,2,'2017-06-08 15:44:02','2017-06-09 13:54:59','admin','admin',0),
  (30,1,1,1,'Standardmässig ist das Addon so eingestellt dass alle Artikel einer Kategorie automatisch als horizontale \"Slides\" einer Seite dargestellt werden. Es werden automatisch Navigationspfeile für das horizontale scrollen erzeugt.','In den Addon-Einstellungen kann statt oder zusätzlich zu den Navigationspfeilen noch eine Punktenavigation eingeblendet werden.','Wenn gewünscht kann in den Addon-Einstellungen ausgewählt werden die Unterkategorien der Rootkategorie anstatt den Artikeln als Slides zu verwenden.\r\nIn diesem Fall werden alle Startartikel der Unterkategorien als horizontale Slides generiert.','','','','','','3','Artikel / Kategorien','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',4,2,'2017-06-08 15:44:30','2017-06-09 13:29:33','admin','admin',0),
  (32,1,1,2,'','','','','','','','','','Eine Überschrift der 1. Ebene <h1>','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',9,1,'2017-06-09 13:39:34','2017-06-09 13:56:13','admin','admin',0),
  (33,1,1,3,'','','','','','','','','','Eine Überschrift der 2. Ebene <h2>','h2','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',9,1,'2017-06-09 13:39:45','2017-06-09 13:56:32','admin','admin',0),
  (34,1,1,4,'','','','','','','','','','Eine Überschrift der 3. Ebene <h3>','h3','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',9,1,'2017-06-09 13:39:56','2017-06-09 13:56:42','admin','admin',0),
  (35,1,1,1,'','','','','','','','','','Inhaltselemente: Headline','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',9,1,'2017-06-09 13:55:46','2017-06-09 13:55:46','admin','admin',0),
  (36,1,1,2,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',5,5,'2017-06-09 14:55:37','2017-06-09 14:55:37','admin','admin',0),
  (38,1,1,2,'','','','','','','','','','Überschrift der 1. Ebene','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',11,1,'2017-06-09 15:44:12','2017-06-09 15:49:52','admin','admin',0),
  (39,1,1,3,'','','','','','','','','','Überschrift der 2. Ebene','h2','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',11,1,'2017-06-09 15:44:12','2017-06-09 15:50:02','admin','admin',0),
  (40,1,1,4,'','','','','','','','','','Überschrift der 3. Ebene','h3','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',11,1,'2017-06-09 15:44:12','2017-06-09 15:50:12','admin','admin',0),
  (44,1,1,1,'','','','','','','','','','Beispiele Inhaltselemente','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',11,1,'2017-06-09 16:32:47','2017-06-09 16:32:47','admin','admin',0),
  (45,1,1,1,'Streng dem definierten Wesen des Blindtextes folgend, fungiere ich als solcher und gebe mich unverbindlich inhaltsleer. ','In bedrückender Enge in vorgefertigte Masken gepresst friste ich ein freudloses Dasein auf dem schmalen Grat zwischen Nichtbeachtung und Bedeutungslosigkeit und habe doch eine Bitte: Handeln Sie Sinn stiftend für meine Existenz und lesen Sie mich.','Dies ist ein Blindtext. Dieser Text ist nicht dafür vorgesehen, den Betrachter in die Welt der Dunkelheit zu führen, sondern dafür, einfach etwas Leeres mit etwas Inhaltlosem zu füllen. Eigentlich könnte man diese Plattform als Propagandamaschine verwenden .... dem ist hier aber nicht so!!! Dies ist und bleibt ein sinnloser Blindtext ohne Sinn und Zweck.','','','','','','3','Text mit Bild 3 Spalten','h1','','','','','','','','','','bg01.jpg','bg03.jpg','bg05.jpg','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',12,2,'2017-06-09 16:36:00','2017-06-09 16:37:25','admin','admin',0);
/*!40000 ALTER TABLE `rex_article_slice` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_clang`;
CREATE TABLE `rex_clang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_clang` WRITE;
/*!40000 ALTER TABLE `rex_clang` DISABLE KEYS */;
INSERT INTO `rex_clang` VALUES 
  (1,'de','deutsch',1,1,0);
/*!40000 ALTER TABLE `rex_clang` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_config`;
CREATE TABLE `rex_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(75) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_key` (`namespace`,`key`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_config` WRITE;
/*!40000 ALTER TABLE `rex_config` DISABLE KEYS */;
INSERT INTO `rex_config` VALUES 
  (3,'core','version','\"5.3.0\"'),
  (4,'media_manager','jpg_quality','85'),
  (5,'structure/content','default_template_id','1'),
  (6,'structure','start_article_id','1'),
  (8,'structure','notfound_article_id','7'),
  (33,'phpmailer','from','\"from@example.com\"'),
  (34,'phpmailer','fromname','\"Mailer\"'),
  (35,'phpmailer','confirmto','\"\"'),
  (36,'phpmailer','bcc','\"\"'),
  (37,'phpmailer','mailer','\"mail\"'),
  (38,'phpmailer','host','\"localhost\"'),
  (39,'phpmailer','port','25'),
  (40,'phpmailer','charset','\"utf-8\"'),
  (41,'phpmailer','wordwrap','120'),
  (42,'phpmailer','encoding','\"8bit\"'),
  (43,'phpmailer','priority','0'),
  (44,'phpmailer','smtpsecure','\"\"'),
  (45,'phpmailer','smtpauth','false'),
  (46,'phpmailer','username','\"\"'),
  (47,'phpmailer','password','\"\"'),
  (48,'phpmailer','smtp_debug','\"0\"'),
  (196,'be_style/customizer','codemirror_theme','\"eclipse\"'),
  (197,'be_style/customizer','codemirror','1'),
  (198,'be_style/customizer','showlink','1'),
  (201,'be_style/customizer','labelcolor','\"\"'),
  (275,'demo_fullpage','theme','\"theme\"'),
  (276,'demo_fullpage','showscrollbar','\"1\"'),
  (277,'demo_fullpage','scrollingspeed','\"500\"'),
  (281,'demo_fullpage','navigationposition','\"right\"'),
  (282,'demo_fullpage','showslidearrows','\"1\"'),
  (284,'demo_fullpage','slidenavigationposition','\"bottom\"'),
  (286,'core','package-config','{\"backup\":{\"install\":true,\"status\":true},\"be_style\":{\"install\":true,\"status\":true,\"plugins\":{\"customizer\":{\"install\":true,\"status\":false},\"redaxo\":{\"install\":true,\"status\":true}}},\"cronjob\":{\"install\":false,\"status\":false,\"plugins\":{\"article_status\":{\"install\":false,\"status\":false},\"optimize_tables\":{\"install\":false,\"status\":false}}},\"demo_fullpage\":{\"install\":true,\"status\":true},\"install\":{\"install\":true,\"status\":true},\"media_manager\":{\"install\":true,\"status\":true},\"mediapool\":{\"install\":true,\"status\":true},\"metainfo\":{\"install\":true,\"status\":true},\"phpmailer\":{\"install\":true,\"status\":true},\"project\":{\"install\":true,\"status\":true},\"structure\":{\"install\":true,\"status\":true,\"plugins\":{\"content\":{\"install\":true,\"status\":true},\"history\":{\"install\":false,\"status\":false},\"version\":{\"install\":false,\"status\":false}}},\"users\":{\"install\":true,\"status\":true},\"yform\":{\"install\":true,\"status\":true,\"plugins\":{\"docs\":{\"install\":true,\"status\":true},\"email\":{\"install\":true,\"status\":true},\"geo\":{\"install\":false,\"status\":false},\"manager\":{\"install\":true,\"status\":true},\"tools\":{\"install\":false,\"status\":false}}}}'),
  (288,'core','package-order','[\"be_style\",\"be_style\\/redaxo\",\"users\",\"backup\",\"install\",\"media_manager\",\"mediapool\",\"phpmailer\",\"project\",\"structure\",\"demo_fullpage\",\"metainfo\",\"structure\\/content\",\"yform\",\"yform\\/docs\",\"yform\\/email\",\"yform\\/manager\"]'),
  (289,'demo_fullpage','autoscrolling','\"\"'),
  (291,'demo_fullpage','shownavigationtooltip','\"\"'),
  (293,'demo_fullpage','usesubcategories','\"\"'),
  (294,'demo_fullpage','shownavigation','\"\"'),
  (295,'demo_fullpage','showslidenavigation','\"1\"');
/*!40000 ALTER TABLE `rex_config` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media`;
CREATE TABLE `rex_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `attributes` text,
  `filetype` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `filesize` varchar(255) DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  `med_description` text,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media` WRITE;
/*!40000 ALTER TABLE `rex_media` DISABLE KEYS */;
INSERT INTO `rex_media` VALUES 
  (3,1,'','image/jpeg','bg01.jpg','bg01.jpg','40864',1200,800,'','2017-06-06 15:44:22','2017-06-08 21:17:15','admin','admin',0,''),
  (4,2,'','image/png','screen01.png','screen01.png','18340',900,377,'Screenshot REDAXO Backend','2017-06-06 15:50:08','2017-06-10 22:40:43','admin','admin',0,''),
  (5,1,'','image/jpeg','bg02.jpg','bg02.jpg','93565',1200,800,'','2017-06-06 15:58:43','2017-06-08 21:17:33','admin','admin',0,''),
  (7,1,'','image/jpeg','bg03.jpg','bg03.jpg','108654',1200,800,'','2017-06-06 16:28:43','2017-06-08 21:17:51','admin','admin',0,''),
  (8,1,'','image/jpeg','bg04.jpg','bg04.jpg','75970',1200,800,'','2017-06-06 16:30:27','2017-06-08 21:18:05','admin','admin',0,''),
  (9,1,'','image/jpeg','bg05.jpg','bg05.jpg','79588',1200,800,'','2017-06-06 16:30:35','2017-06-08 21:18:21','admin','admin',0,''),
  (10,1,'','image/jpeg','bg06.jpg','bg06.jpg','98920',1200,800,'','2017-06-06 16:47:02','2017-06-08 21:18:35','admin','admin',0,''),
  (12,1,'','image/jpeg','bg10.jpg','bg10.jpg','111919',1200,800,'','2017-06-06 23:39:55','2017-06-09 15:45:45','admin','admin',0,'beschreibung'),
  (13,0,'','image/svg+xml','logo.svg','logo.svg','5152',0,0,'REDAXO-Logo','2017-06-07 00:33:32','2017-06-09 13:17:32','admin','admin',0,''),
  (14,2,'','image/jpeg','screenshot_struktur.jpg','screenshot_struktur.jpg','89422',1416,780,'Screenshot Struktur','2017-06-08 14:22:44','2017-06-10 22:41:18','admin','admin',0,'Screenshot Struktur der Fullpage-Demo'),
  (15,2,'','image/jpeg','screenshot_metainfo_cat.jpg','screenshot_metainfo_cat.jpg','84015',1416,780,'Screenshot Metainfos Kategorie','2017-06-08 14:23:05','2017-06-10 22:40:57','admin','admin',0,'Screenshot Metainfos Kategorie'),
  (16,2,'','image/jpeg','screenshot_frontend.jpg','screenshot_frontend.jpg','88360',1416,780,'Screenshot Frontend','2017-06-08 15:08:03','2017-06-08 21:16:30','admin','admin',0,'Screenshot Frontend'),
  (17,2,'','image/jpeg','screenshot_addon_settings.jpg','screenshot_addon_settings.jpg','54545',1260,740,'Screenshot Addon-Einstellungen','2017-06-08 23:37:07','2017-06-10 22:40:29','admin','admin',0,'Screenshot Addon-Einstellungen'),
  (18,0,'','application/msword','word-testdatei.doc','word-testdatei.doc','22016',0,0,'Eine Word-Testdatei','2017-06-09 13:09:47','2017-06-09 13:17:05','admin','admin',0,''),
  (19,0,'','application/pdf','pdf-testdatei.pdf','pdf-testdatei.pdf','14419',0,0,'Eine PDF-Testdatei','2017-06-09 13:10:04','2017-06-09 13:17:21','admin','admin',0,''),
  (20,2,'','image/jpeg','screenshot_module.jpg','screenshot_module.jpg','65707',1416,780,'Screenshot Module','2017-06-09 13:33:47','2017-06-10 22:40:16','admin','admin',0,'');
/*!40000 ALTER TABLE `rex_media` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_category`;
CREATE TABLE `rex_media_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `attributes` text,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media_category` WRITE;
/*!40000 ALTER TABLE `rex_media_category` DISABLE KEYS */;
INSERT INTO `rex_media_category` VALUES 
  (1,'Hintergrundbilder',0,'|','2017-06-06 16:25:27','2017-06-06 16:25:27','admin','admin','',0),
  (2,'Screenshots',0,'|','2017-06-06 16:25:33','2017-06-06 16:25:33','admin','admin','',0);
/*!40000 ALTER TABLE `rex_media_category` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_manager_type`;
CREATE TABLE `rex_media_manager_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media_manager_type` WRITE;
/*!40000 ALTER TABLE `rex_media_manager_type` DISABLE KEYS */;
INSERT INTO `rex_media_manager_type` VALUES 
  (1,1,'rex_mediapool_detail','Zur Darstellung von Bildern in der Detailansicht im Medienpool'),
  (2,1,'rex_mediapool_maximized','Zur Darstellung von Bildern im Medienpool wenn maximiert'),
  (3,1,'rex_mediapool_preview','Zur Darstellung der Vorschaubilder im Medienpool'),
  (4,1,'rex_mediabutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIA_BUTTON[]s'),
  (5,1,'rex_medialistbutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIALIST_BUTTON[]s'),
  (6,0,'content','300px * 200px'),
  (7,0,'full','full resolution');
/*!40000 ALTER TABLE `rex_media_manager_type` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_manager_type_effect`;
CREATE TABLE `rex_media_manager_type_effect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL,
  `effect` varchar(255) NOT NULL,
  `parameters` text NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media_manager_type_effect` WRITE;
/*!40000 ALTER TABLE `rex_media_manager_type_effect` DISABLE KEYS */;
INSERT INTO `rex_media_manager_type_effect` VALUES 
  (1,1,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"200\",\"rex_effect_resize_height\":\"200\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'0000-00-00 00:00:00','','0000-00-00 00:00:00',''),
  (2,2,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"600\",\"rex_effect_resize_height\":\"600\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'0000-00-00 00:00:00','','0000-00-00 00:00:00',''),
  (3,3,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"80\",\"rex_effect_resize_height\":\"80\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'0000-00-00 00:00:00','','0000-00-00 00:00:00',''),
  (4,4,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"246\",\"rex_effect_resize_height\":\"246\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'0000-00-00 00:00:00','','0000-00-00 00:00:00',''),
  (5,5,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"246\",\"rex_effect_resize_height\":\"246\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'0000-00-00 00:00:00','','0000-00-00 00:00:00',''),
  (6,6,'resize','{\"rex_effect_convert2img\":{\"rex_effect_convert2img_convert_to\":\"jpg\",\"rex_effect_convert2img_density\":\"100\"},\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"left\",\"rex_effect_crop_vpos\":\"top\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"\",\"rex_effect_filter_blur_type\":\"\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_filter_colorize\":{\"rex_effect_filter_colorize_filter_r\":\"\",\"rex_effect_filter_colorize_filter_g\":\"\",\"rex_effect_filter_colorize_filter_b\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"\",\"rex_effect_filter_sharpen_radius\":\"\",\"rex_effect_filter_sharpen_threshold\":\"\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"\",\"rex_effect_insert_image_padding_y\":\"\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"300\",\"rex_effect_resize_height\":\"200\",\"rex_effect_resize_style\":\"minimum\",\"rex_effect_resize_allow_enlarge\":\"enlarge\"},\"rex_effect_rotate\":{\"rex_effect_rotate_rotate\":\"0\"},\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2017-06-07 15:29:03','admin','2017-06-02 12:49:50','admin'),
  (7,6,'crop','{\"rex_effect_convert2img\":{\"rex_effect_convert2img_convert_to\":\"jpg\",\"rex_effect_convert2img_density\":\"100\"},\"rex_effect_crop\":{\"rex_effect_crop_width\":\"300\",\"rex_effect_crop_height\":\"200\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"\",\"rex_effect_filter_blur_type\":\"\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_filter_colorize\":{\"rex_effect_filter_colorize_filter_r\":\"\",\"rex_effect_filter_colorize_filter_g\":\"\",\"rex_effect_filter_colorize_filter_b\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"\",\"rex_effect_filter_sharpen_radius\":\"\",\"rex_effect_filter_sharpen_threshold\":\"\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"\",\"rex_effect_insert_image_padding_y\":\"\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"\",\"rex_effect_resize_height\":\"\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"enlarge\"},\"rex_effect_rotate\":{\"rex_effect_rotate_rotate\":\"0\"},\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',2,'2017-06-07 15:28:50','admin','2017-06-02 12:50:26','admin');
/*!40000 ALTER TABLE `rex_media_manager_type_effect` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_metainfo_field`;
CREATE TABLE `rex_metainfo_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `priority` int(10) unsigned NOT NULL,
  `attributes` text NOT NULL,
  `type_id` int(10) unsigned DEFAULT NULL,
  `default` varchar(255) NOT NULL,
  `params` text,
  `validate` text,
  `callback` text,
  `restrictions` text,
  `createuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_metainfo_field` WRITE;
/*!40000 ALTER TABLE `rex_metainfo_field` DISABLE KEYS */;
INSERT INTO `rex_metainfo_field` VALUES 
  (1,'Individueller Title-Tag','art_title',1,'',1,'','','','','','admebe','2017-05-20 23:13:56','admebe','2017-05-20 23:13:56'),
  (2,'Meta-Tag Keywords','art_keywords',2,'',1,'','','','','','admebe','2017-05-20 23:14:16','admebe','2017-05-20 23:14:16'),
  (3,'Meta-Tag Beschreibung','art_description',3,'',2,'','','','','','admebe','2017-05-20 23:14:40','admin','2017-05-24 12:46:04'),
  (4,'translate:online_from','art_online_from',4,'',10,'','','','','','admebe','2017-05-20 23:15:13','admebe','2017-05-20 23:15:13'),
  (5,'translate:online_to','art_online_to',5,'',10,'','','','','','admebe','2017-05-20 23:15:35','admebe','2017-05-20 23:15:35'),
  (6,'Hintergrundbild','art_bgimage',6,'',6,'','','','','','admin','2017-05-29 12:39:34','admin','2017-05-29 12:39:34'),
  (7,'Hintergrundfarbe','art_bgcolor',7,'class=\"form-control colorpicker\"',1,'','','','','','admin','2017-05-29 12:40:01','admin','2017-05-29 12:41:50'),
  (8,'Hintergrundbild','cat_bgimage',1,'',6,'','','','','','admin','2017-05-29 12:56:24','admin','2017-05-29 12:56:24'),
  (9,'Hintergrundfarbe','cat_bgcolor',2,'class=\"form-control colorpicker\"',1,'','','','','','admin','2017-05-29 12:56:58','admin','2017-05-29 12:56:58'),
  (10,'Höhe automatisch an den Inhalt anpassen (nicht fullpage)','cat_autoheight',3,'',5,'','','','','','admin','2017-05-30 12:10:57','admin','2017-06-08 15:35:14'),
  (11,'Im Menü ausblenden','cat_nomenu',4,'',5,'','','','','','admin','2017-06-06 14:28:08','admin','2017-06-06 14:28:08'),
  (12,'Beschreibung','med_description',1,'',2,'','','','','','admin','2017-06-08 12:50:27','admin','2017-06-08 14:20:54');
/*!40000 ALTER TABLE `rex_metainfo_field` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_metainfo_type`;
CREATE TABLE `rex_metainfo_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `dbtype` varchar(255) NOT NULL,
  `dblength` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_metainfo_type` WRITE;
/*!40000 ALTER TABLE `rex_metainfo_type` DISABLE KEYS */;
INSERT INTO `rex_metainfo_type` VALUES 
  (1,'text','text',0),
  (2,'textarea','text',0),
  (3,'select','varchar',255),
  (4,'radio','varchar',255),
  (5,'checkbox','varchar',255),
  (6,'REX_MEDIA_WIDGET','varchar',255),
  (7,'REX_MEDIALIST_WIDGET','text',0),
  (8,'REX_LINK_WIDGET','varchar',255),
  (9,'REX_LINKLIST_WIDGET','text',0),
  (10,'date','text',0),
  (11,'datetime','text',0),
  (12,'legend','text',0),
  (13,'time','text',0);
/*!40000 ALTER TABLE `rex_metainfo_type` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_module`;
CREATE TABLE `rex_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `output` mediumtext NOT NULL,
  `input` mediumtext NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `attributes` text,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_module` WRITE;
/*!40000 ALTER TABLE `rex_module` DISABLE KEYS */;
INSERT INTO `rex_module` VALUES 
  (1,'01. Headline','<div class=\"row\">\r\n    <REX_VALUE[11]>REX_VALUE[10]</REX_VALUE[11]>\r\n</div>\r\n','<fieldset class=\"form-horizontal\">\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline\" type=\"text\" name=\"REX_INPUT_VALUE[10]\" value=\"REX_VALUE[10]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline-level\">Überschrift-Ebene</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'h1\'=>\'1. Ebene\',\r\n				\'h2\'=>\'2. Ebene\',\r\n				\'h3\'=>\'3. Ebene\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[11]\" id=\"headline-level\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[11]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n	\r\n</fieldset>\r\n','admin','admin','2017-05-30 12:04:12','2017-06-02 12:55:46','',0),
  (2,'02. Text mit Bild (1 - 3 Spalten)','<?php\r\n$grid_content1 = \'\';\r\n$grid_content2 = \'\';\r\n$grid_content3 = \'\';\r\n\r\nif (!function_exists(\'_url_convert\')){\r\n	function _url_convert($input) {\r\n		$pattern = \'@(http(s)?://)?(([a-zA-Z])([-\\w]+\\.)+([^\\s\\.]+[^\\s]*)+[^,.\\s])@\';\r\n		return $output = preg_replace($pattern, \'<a href=\"http$2://$3\">$0</a>\', $input);\r\n	}\r\n}\r\n\r\n// col1\r\nif (\"REX_MEDIA[1]\" != \'\') {\r\n	$media = rex_media::get(\"REX_MEDIA[1]\");\r\n	$mediadesc = str_replace(array(\"\\r\\n\", \"\\n\", \"\\r\"), \' \', $media->getValue(\'med_description\'));\r\n	$medialink = $media->getUrl();\r\n	$grid_content1 .= \'<a href=\"\' . $medialink . \'\" class=\"gallery\" rel=\"gallery-REX_SLICE_ID\" title=\"\' . $mediadesc . \'\">\';\r\n	$grid_content1 .= \'<img class=\"content\" src=\"index.php?rex_media_type=content&rex_media_file=REX_MEDIA[1]\" alt=\"\' . $mediadesc . \'\">\';\r\n	$grid_content1 .= \'</a>\';\r\n}\r\nif (\'REX_VALUE[id=1 isset=1]\') {\r\n	if (class_exists(\'markitup\')) {\r\n		$grid_content1 .= markitup::parseOutput(\'textile\', \'REX_VALUE[id=1 output=\"html\"]\');\r\n	} else {\r\n		$grid_content1 .= nl2br(_url_convert(\'REX_VALUE[id=1 output=\"html\"]\'));\r\n	}\r\n}\r\n\r\n// col2\r\nif (\"REX_MEDIA[2]\" != \'\') {\r\n	$media = rex_media::get(\"REX_MEDIA[2]\");\r\n	$mediadesc = str_replace(array(\"\\r\\n\", \"\\n\", \"\\r\"), \' \', $media->getValue(\'med_description\'));\r\n	$medialink = $media->getUrl();\r\n	$grid_content2 .= \'<a href=\"\' . $medialink . \'\" class=\"gallery\" rel=\"gallery-REX_SLICE_ID\" title=\"\' . $mediadesc . \'\">\';\r\n	$grid_content2 .= \'<img class=\"content\" src=\"index.php?rex_media_type=content&rex_media_file=REX_MEDIA[2]\" alt=\"\' . $mediadesc . \'\">\';\r\n	$grid_content2 .= \'</a>\';\r\n}\r\nif (\'REX_VALUE[id=2 isset=1]\') {\r\n	if (class_exists(\'markitup\')) {\r\n		$grid_content2 .= markitup::parseOutput(\'textile\', \'REX_VALUE[id=2 output=\"html\"]\');\r\n	} else {\r\n		$grid_content2 .= nl2br(_url_convert(\'REX_VALUE[id=2 output=\"html\"]\'));\r\n	}\r\n}\r\n\r\n// col3\r\nif (\"REX_MEDIA[3]\" != \'\') {\r\n	$media = rex_media::get(\"REX_MEDIA[3]\");\r\n	$mediadesc = str_replace(array(\"\\r\\n\", \"\\n\", \"\\r\"), \' \', $media->getValue(\'med_description\'));\r\n	$medialink = $media->getUrl();\r\n	$grid_content3 .= \'<a href=\"\' . $medialink . \'\" class=\"gallery\" rel=\"gallery-REX_SLICE_ID\" title=\"\' . $mediadesc . \'\">\';\r\n	$grid_content3 .= \'<img class=\"content\" src=\"index.php?rex_media_type=content&rex_media_file=REX_MEDIA[3]\" alt=\"\' . $mediadesc . \'\">\';\r\n	$grid_content3 .= \'</a>\';\r\n}\r\nif (\'REX_VALUE[id=3 isset=1]\') {\r\n	if (class_exists(\'markitup\')) {	\r\n		$grid_content3 .= markitup::parseOutput(\'textile\', \'REX_VALUE[id=3 output=\"html\"]\');\r\n	} else {\r\n		$grid_content3 .= nl2br(_url_convert(\'REX_VALUE[id=3 output=\"html\"]\'));\r\n	}\r\n}\r\n\r\nif (\"REX_VALUE[10]\" != \'\') {\r\n	echo \'<div class=\"row\"><REX_VALUE[11]>REX_VALUE[10]</REX_VALUE[11]></div>\' . \"\\n\";\r\n}\r\nif ($grid_content1 <> \'\' or $grid_content2 <> \'\' or $grid_content3 <> \'\')\r\n{\r\n	echo \'<div class=\"row pictext\">\' . \"\\n\";\r\n\r\n	// 2cols\r\n	if (\"REX_VALUE[9]\" == \'2\')  {\r\n		echo \'<div class=\"col-sm-6\">\' . \"\\n\";\r\n		echo $grid_content1 . \"\\n\";\r\n		echo \'</div>\' . \"\\n\";\r\n		echo \'<div class=\"col-sm-6\">\' . \"\\n\";\r\n		echo $grid_content2 . \"\\n\";\r\n		echo \'</div>\' . \"\\n\";\r\n	// 3cols\r\n	} elseif (\"REX_VALUE[9]\" == \'3\') {\r\n		echo \'<div class=\"col-sm-4\">\' . \"\\n\";\r\n		echo $grid_content1 . \"\\n\";\r\n		echo \'</div>\' . \"\\n\";\r\n		echo \'<div class=\"col-sm-4\">\' . \"\\n\";\r\n		echo $grid_content2 . \"\\n\";\r\n		echo \'</div>\' . \"\\n\";\r\n		echo \'<div class=\"col-sm-4\">\' . \"\\n\";\r\n		echo $grid_content3 . \"\\n\";\r\n		echo \'</div>\' . \"\\n\";\r\n	// 1col\r\n	} else {\r\n		echo $grid_content1 . \"\\n\";\r\n	}\r\n\r\n	echo \'</div>\' . \"\\n\";\r\n}\r\n?>','<!-- *******************************************************\r\nTEXT UND BILD IN SPALTEN\r\n******************************************************** -->\r\n\r\n<script type=\"text/javascript\">\r\njQuery(function($){\r\n	$(document).ready(function(){\r\n\r\n		$(\'select#choices\').change(function() {\r\n			$(\'.off\').hide();\r\n\r\n			for(var i = 1; i <= parseInt($(this).val()); i++) {\r\n				$(\'#col\' + i).show();\r\n			}\r\n		});\r\n\r\n		$(\'select#choices\').change();\r\n\r\n	})\r\n});\r\n</script>\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"choices\">Spalten</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'1\'=>\'volle Breite\',\r\n				\'2\'=>\'zwei Spalten\',\r\n				\'3\'=>\'drei Spalten\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[9]\" id=\"choices\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[9]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline\" type=\"text\" name=\"REX_INPUT_VALUE[10]\" value=\"REX_VALUE[10]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline-level\">Überschrift-Ebene</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'h1\'=>\'1. Ebene\',\r\n				\'h2\'=>\'2. Ebene\',\r\n				\'h3\'=>\'3. Ebene\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[11]\" id=\"headline-level\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[11]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n</fieldset>\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>1. Spalte</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\">Bild</label>\r\n        <div class=\"col-sm-10\">\r\n            REX_MEDIA[id=\"1\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"markitup_textile_1\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control markitupEditor-textile_full\" id=\"markitup_textile_1\" name=\"REX_INPUT_VALUE[1]\">REX_VALUE[1]</textarea>\r\n        </div>\r\n    </div>\r\n</fieldset>\r\n\r\n\r\n\r\n<fieldset class=\"form-horizontal off\" id=\"col2\">\r\n    <legend>2. Spalte</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\">Bild</label>\r\n        <div class=\"col-sm-10\">\r\n            REX_MEDIA[id=\"2\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"markitup_textile_2\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control markitupEditor-textile_full\" id=\"markitup_textile_2\" name=\"REX_INPUT_VALUE[2]\">REX_VALUE[2]</textarea>\r\n        </div>\r\n    </div>\r\n</fieldset>\r\n\r\n\r\n<fieldset class=\"form-horizontal off\" id=\"col3\">\r\n    <legend>3. Spalte</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\">Bild</label>\r\n        <div class=\"col-sm-10\">\r\n            REX_MEDIA[id=\"3\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"markitup_textile_3\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control markitupEditor-full\" id=\"markitup_textile_3\" name=\"REX_INPUT_VALUE[3]\">REX_VALUE[3]</textarea>\r\n        </div>\r\n    </div>\r\n</fieldset>\r\n\r\n','admin','admin','2017-05-30 12:04:26','2017-06-09 11:32:31','',0),
  (3,'03. Bild volle Größe','<?php\r\n$content = \'\';\r\n\r\n// col1\r\nif (\"REX_MEDIA[1]\" != \'\') {\r\n    $media = rex_media::get(\"REX_MEDIA[1]\");\r\n    $mediatitle = str_replace(array(\"\\r\\n\", \"\\n\", \"\\r\"), \' \', $media->getValue(\'title\'));\r\n    if (rex::isBackend()) {\r\n        $content .= \'<img class=\"full\" src=\"index.php?rex_media_type=rex_mediapool_detail&rex_media_file=REX_MEDIA[1]\" alt=\"\' . $mediatitle . \'\" title=\"\' . $mediatitle . \'\">\';\r\n    } else {\r\n        $content .= \'<img class=\"full\" src=\"index.php?rex_media_type=full&rex_media_file=REX_MEDIA[1]\" alt=\"\' . $mediatitle . \'\" title=\"\' . $mediatitle . \'\">\';\r\n    }\r\n}\r\n\r\necho \'<div class=\"row\">\';\r\necho $content;\r\necho \'</div>\' . \"\\n\";\r\n?>','<fieldset class=\"form-horizontal\">\r\n    <legend>1. Spalte</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\">Bild</label>\r\n        <div class=\"col-sm-10\">\r\n            REX_MEDIA[id=\"1\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>\r\n\r\n','admin','admin','2017-05-30 12:04:38','2017-06-07 08:03:47','',0),
  (4,'04. Bildergalerie','<?php\r\n$content = \'\';\r\n\r\nif (\"REX_MEDIALIST[1]\" != \'\') {\r\n	\r\n	$imagelist = explode(\',\', \"REX_MEDIALIST[1]\");\r\n	\r\n	$content .= \'<div class=\"row gallery-wrap\">\' . \"\\n\";\r\n	\r\n	foreach ($imagelist as $file) {\r\n		$media = rex_media::get($file);\r\n	\r\n		if ($media) {\r\n\r\n			$mediatitle = $media->getValue(\'title\');\r\n			$mediadesc = str_replace(array(\"\\r\\n\", \"\\n\", \"\\r\"), \' \', $media->getValue(\'med_description\'));\r\n			$medialink = $media->getUrl();\r\n\r\n			$content .= \'<div class=\"col-sm-4 gallery-item\">\' . \"\\n\";\r\n			$content .= \'<a href=\"\' . $medialink . \'\" class=\"gallery\" rel=\"gallery-REX_SLICE_ID\" title=\"\' . $mediadesc . \' \">\';\r\n			$content .= \'<img src=\"index.php?rex_media_type=content&rex_media_file=\' . $file . \'\" alt=\"\' . $mediatitle . \'\">\' . \"\\n\";\r\n			$content .= \'</a>\';\r\n			$content .= \'</div>\' . \"\\n\";\r\n		}\r\n	}\r\n	\r\n	$content .= \'</div>\' . \"\\n\";\r\n	\r\n}\r\n\r\necho $content;\r\n?>','<fieldset class=\"form-horizontal\">\r\n    <legend>Galerie</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Bilder</label>\r\n		<div class=\"col-sm-10\">\r\n            REX_MEDIALIST[id=\"1\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>','admin','admin','2017-05-30 12:04:51','2017-06-08 13:00:08','',0),
  (5,'20. Scrolldown-Arrow','<a class=\"arrowdown\" href=\"#\"><span></span></a>\r\n','<strong>Keine Eingabe erforderlich!</strong>','admin','admin','2017-05-30 12:05:02','2017-06-08 13:27:06','',0),
  (6,'30. Download','<?php\r\nif (\"REX_VALUE[2]\" != \'\') {\r\n	echo \'<div class=\"row\"><REX_VALUE[3]>REX_VALUE[2]</REX_VALUE[3]></div>\' . \"\\n\";\r\n}\r\n\r\nif (\"REX_MEDIALIST[1]\" != \'\') {\r\n	echo \'<div class=\"row pictext\"><div class=\"col-sm-12\">\' . \"\\n\";\r\n\r\n	// Find out file size\r\n	if (!function_exists(\'datei_groesse\')) {\r\n		function datei_groesse($URL) {\r\n\r\n			$groesse = filesize($URL);\r\n			if($groesse<1000) {\r\n				return number_format($groesse, 0, \",\", \".\").\" Bytes\";\r\n			}\r\n			elseif($groesse<1000000) {\r\n				return number_format($groesse/1024, 0, \",\", \".\").\" kB\";\r\n			} else {\r\n				return number_format($groesse/1048576, 0, \",\", \".\").\" MB\";\r\n			}\r\n		}\r\n	}\r\n\r\n	// Find out icon\r\n	if (!function_exists(\'parse_icon\')) {\r\n		function parse_icon($ext) {\r\n			switch (strtolower($ext)) {\r\n				case \'doc\': return \'<i class=\"fa fa-file-word-o\"></i>\';\r\n				case \'pdf\': return \'<i class=\"fa fa-file-pdf-o\"></i>\';\r\n				case \'zip\': return \'<i class=\"fa fa-archive-pdf-o\"></i>\';\r\n				// please add your own settings, e.g. with icons of Font-Awesome\r\n				default:\r\n					return \'\';\r\n			}\r\n		}\r\n	}\r\n\r\n	$arr = explode(\",\",\"REX_MEDIALIST[1]\");\r\n	foreach ($arr as $value) {\r\n\r\n		$extension = substr(strrchr($value, \'.\'), 1);\r\n		$parsed_icon = parse_icon($extension);\r\n		$media = rex_media::get($value);\r\n		$file_desc = $media->getValue(\'med_description\');\r\n\r\n		echo \'<p><a href=\"\'.rex_getUrl(8, $this->clang, array (\'file\' => $value) ).\'\">\'.$parsed_icon;\r\n\r\n		// Description as linktext, if there is one. Otherwise filename\r\n		if ($file_desc != \"\") {\r\n			echo $file_desc;\r\n		} else {\r\n			echo $value;\r\n		}\r\n\r\n		echo \' (\'.datei_groesse(rex_path::media($value)).\')</a></p>\'.\"\\n\";\r\n\r\n	}\r\n\r\n	echo \'</div></div>\'.\"\\n\";\r\n}\r\n?>','<fieldset class=\"form-horizontal\">\r\n    <legend>Downloads</legend>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline\" type=\"text\" name=\"REX_INPUT_VALUE[2]\" value=\"REX_VALUE[2]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline-level\">Überschrift-Ebene</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'h2\'=>\'2. Ebene\',\r\n				\'h3\'=>\'3. Ebene\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[3]\" id=\"headline-level\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[3]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Dateien zum Download</label>\r\n		<div class=\"col-sm-10\">\r\n            REX_MEDIALIST[id=\"1\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>\r\n','admin','admin','2017-05-30 12:05:12','2017-06-09 13:18:59','',0);
/*!40000 ALTER TABLE `rex_module` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_module_action`;
CREATE TABLE `rex_module_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned NOT NULL,
  `action_id` int(10) unsigned NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_template`;
CREATE TABLE `rex_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `active` tinyint(1) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_template` WRITE;
/*!40000 ALTER TABLE `rex_template` DISABLE KEYS */;
INSERT INTO `rex_template` VALUES 
  (1,'01. Standard','REX_TEMPLATE[2]\r\nREX_TEMPLATE[3]\r\n\r\n<?php\r\n$_mainnav = \'\';\r\n$_content = \'\';\r\n\r\n$rootCategories = rex_category::getRootCategories(true);\r\n\r\nif (!empty($rootCategories)) {\r\n	\r\n	$_navtooltip = rex_addon::get(\'demo_fullpage\')->getConfig(\'shownavigationtooltip\');\r\n	$_use_subcats = rex_addon::get(\'demo_fullpage\')->getConfig(\'usesubcategories\');\r\n	\r\n	$_mainnav = \'	<nav>\' . \"\\n\";\r\n	$_mainnav .= \'	<button class=\"c-hamburger c-hamburger--htx\"><span>toggle menu</span></button>\' . \"\\n\";\r\n	$_mainnav .= \'	<ul class=\"mainnav\">\' . \"\\n\";\r\n	$_content = \'\';\r\n\r\n	foreach ($rootCategories as $cat) {\r\n		if ($cat->isOnline(true)) {\r\n			$href = rex_string::normalize(htmlspecialchars($cat->getName()));\r\n			$name = htmlspecialchars($cat->getName());\r\n			\r\n			// Main navigation\r\n			if ($cat->getValue(\'cat_nomenu\') <> \'|true|\') {\r\n				$_mainnav .= \'		<li data-menuanchor=\"\' . $href . \'\"><a href=\"#\' . $href . \'\">\' . $name . \'</a></li>\' . \"\\n\";\r\n			}\r\n\r\n			// Section tooltip\r\n			if ($_navtooltip) {\r\n				$tooltip = \' data-tooltip=\"\' . $name . \'\"\';\r\n			} else {\r\n				$tooltip = \'\';\r\n			}\r\n			\r\n			// Section background-color and background-image\r\n			$_style = array();\r\n			if ($cat->getValue(\'cat_bgcolor\')) {\r\n				$_style[\'bgcolor\'] = \'background-color:\' . $cat->getValue(\'cat_bgcolor\') . \';\';\r\n			}\r\n			if ($cat->getValue(\'cat_bgimage\')) {\r\n				$_style[\'bgimage\'] = \'background-image:url(\' . rex_url::media($cat->getValue(\'cat_bgimage\')) . \');\';\r\n			}\r\n			$style = \' style=\"\' . implode(\' \', $_style) . \'\"\';\r\n			\r\n			// Section class, autoheight ?\r\n			$_class = array();\r\n			$_class[] = \'section\';\r\n			if ($cat->getValue(\'cat_autoheight\') == \'|true|\') {\r\n				$_class[] = \'fp-auto-height\';\r\n			}\r\n			$class = implode(\' \', $_class);\r\n			\r\n			// Section\r\n			$_content .= \'	<section class=\"\' . $class . \'\" id=\"section\' . $cat->getId() . \'\" data-anchor=\"\' . $href . \'\"\' . $tooltip . $style . \'>\' . \"\\n\";\r\n\r\n			$_pagecontent = \'\';\r\n			// Content from categories\r\n			if ($_use_subcats) {\r\n				if (!empty($_categories = $cat->getChildren(true))) {\r\n					if (count($_categories) > 1) {\r\n						foreach ($_categories as $_cat) {\r\n							$_art = new rex_article_content($_cat->getId());\r\n							$href = rex_string::normalize(htmlspecialchars($_art->getValue(\'name\')));\r\n							$_style = array();\r\n							if ($_art->getValue(\'art_bgcolor\')) {\r\n								$_style[\'bgcolor\'] = \'background-color:\' . $_art->getValue(\'art_bgcolor\') . \';\';\r\n							}\r\n							if ($_art->getValue(\'art_bgimage\')) {\r\n								$_style[\'bgimage\'] = \'background-image:url(\' . rex_url::media($_art->getValue(\'art_bgimage\')) . \');\';\r\n							}\r\n							$style = \' style=\"\' . implode(\' \', $_style) . \'\"\';							\r\n							$_pagecontent .= \'		<div class=\"slide\" id=\"slide\' . $_art->getValue(\'id\') . \'\" data-anchor=\"\' . $href . \'\"\' . $style . \'>\' . \"\\n\";\r\n							$_pagecontent .= \'		<div class=\"container clearfix\">\' . \"\\n\";\r\n							$_pagecontent .= $_art->getArticle();\r\n							$_pagecontent .= \'		</div>\' . \"\\n\";\r\n							$_pagecontent .= \'		</div>\' . \"\\n\";\r\n						}\r\n					} else {\r\n						foreach ($_categories as $_cat) {\r\n							$_art = new rex_article_content($_cat->getId());\r\n							$_pagecontent .= \'		<div class=\"container clearfix\">\' . \"\\n\";\r\n							$_pagecontent .= $_art->getArticle();\r\n							$_pagecontent .= \'		</div>\' . \"\\n\";\r\n						}\r\n					}\r\n				}\r\n			// Content from articles\r\n			} else {\r\n				if (!empty($_articles = $cat->getArticles(true))) {\r\n					if (count($_articles) > 1) {\r\n						foreach ($_articles as $_art) {\r\n							$_art = new rex_article_content($_art->getId());\r\n							$href = rex_string::normalize(htmlspecialchars($_art->getValue(\'name\')));\r\n							$_style = array();\r\n							if ($_art->getValue(\'art_bgcolor\')) {\r\n								$_style[\'bgcolor\'] = \'background-color:\' . $_art->getValue(\'art_bgcolor\') . \';\';\r\n							}\r\n							if ($_art->getValue(\'art_bgimage\')) {\r\n								$_style[\'bgimage\'] = \'background-image:url(\' . rex_url::media($_art->getValue(\'art_bgimage\')) . \');\';\r\n							}\r\n							$style = \' style=\"\' . implode(\' \', $_style) . \'\"\';\r\n							$_pagecontent .= \'		<div class=\"slide\" id=\"slide\' . $_art->getValue(\'id\') . \'\" data-anchor=\"\' . $href . \'\"\' . $style . \'>\' . \"\\n\";\r\n							$_pagecontent .= \'		<div class=\"container clearfix\">\' . \"\\n\";\r\n							$_pagecontent .= $_art->getArticle();\r\n							$_pagecontent .= \'		</div>\' . \"\\n\";\r\n							$_pagecontent .= \'		</div>\' . \"\\n\";\r\n						}\r\n					} else {\r\n						foreach ($_articles as $_art) {\r\n							$_art = new rex_article_content($_art->getId());\r\n							$_pagecontent .= \'		<div class=\"container clearfix\">\' . \"\\n\";\r\n							$_pagecontent .= $_art->getArticle();\r\n							$_pagecontent .= \'		</div>\' . \"\\n\";\r\n						}\r\n					}\r\n				}\r\n			}\r\n			\r\n			$_content .= $_pagecontent;\r\n			\r\n			$_content .= \'	</section>\' . \"\\n\\n\";\r\n		}\r\n	}\r\n	\r\n	$_mainnav .= \'	</ul>\' . \"\\n\";\r\n	$_mainnav .= \'	</nav>\' . \"\\n\";\r\n\r\n}\r\n?>\r\n\r\n<div class=\"pagewrapper\">\r\n\r\n<div class=\"pagelogo\"><img src=\"<?php echo rex_url::base(\'assets/addons/demo_fullpage/\' . $fullpagedemo[\'theme\'] . \'/img/logo.svg\'); ?>\" alt=\"<?php echo rex::getServerName(); ?>\" title=\"<?php echo rex::getServerName(); ?>\"></div>\r\n\r\n<div class=\"fullpage\">\r\n\r\n<?php echo $_mainnav; ?>\r\n\r\n<?php echo $_content; ?>\r\n\r\n</div>\r\n\r\n</div>\r\n\r\nREX_TEMPLATE[4]',0,'admin','admin','2017-06-08 13:32:37','2017-06-08 13:32:37','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (2,'10. PHP Header','<?php\r\n// Error report should only be active during development. Deavtivate (0) on a live website\r\n// error_reporting(0);\r\nerror_reporting(E_ALL);\r\n\r\n// Is User not logged in?\r\nif (!rex_backend_login::hasSession()) {\r\n	// Is current article offline?\r\n	if ($this->getValue(\'status\') == 0) {\r\n		// redirect to 404 page\r\n		header(\'HTTP/1.1 301 Moved Permanently\');\r\n		header(\'Location: \' . rex_getUrl(rex_article::getNotFoundArticleId(), rex_clang::getCurrentId()));\r\n		die();\r\n	}\r\n}\r\n\r\n// set charset to utf8\r\nheader(\'Content-Type: text/html; charset=utf-8\');\r\n\r\n// setLocale is a language meta field, set your individual locale informations per language\r\nsetlocale(LC_ALL, rex_clang::getCurrent()->getValue(\'clang_setlocale\'));\r\n\r\n// Use article title as title-Tag, unless a custom title-tag is set\r\nif ($this->getValue(\'art_title\') != \'\') {\r\n	$title = htmlspecialchars($this->getValue(\'art_title\'));\r\n} else {\r\n	$title = htmlspecialchars($this->getValue(\'name\'));\r\n}\r\n\r\n// Keywords and description\r\n// If current article does not have keywords and description, take them from start article\r\nif ($this->getValue(\'art_keywords\') != \'\') {\r\n	$keywords = htmlspecialchars($this->getValue(\'art_keywords\'));\r\n} else {\r\n	$home = new rex_article_content(rex_article::getSiteStartArticleId());\r\n	$keywords = htmlspecialchars($home->getValue(\'art_keywords\'));\r\n}\r\n\r\nif ($this->getValue(\'art_description\') != \'\') {\r\n	$description = htmlspecialchars($this->getValue(\'art_description\'));\r\n} else {\r\n	$home = new rex_article_content(rex_article::getSiteStartArticleId());\r\n	$description = htmlspecialchars($home->getValue(\'art_description\'));\r\n}\r\n\r\n// Theme aus Addon-Einstellungen (addon demo_fullpage)\r\n$fullpagedemo[\'theme\'] = rex_addon::get(\'demo_fullpage\')->getConfig(\'theme\');\r\nif ($fullpagedemo[\'theme\'] == \'\') {\r\n	$fullpagedemo[\'theme\'] = \'theme\';\r\n}\r\n?><!DOCTYPE html>',0,'admin','admin','2017-05-30 23:13:05','2017-05-30 23:13:05','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (3,'11. HTML-Header','<html lang=\"<?php echo rex_clang::getCurrent()->getCode(); ?>\">\r\n<head>\r\n\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n\r\n	<title><?php echo $title; ?></title>\r\n	<meta name=\"keywords\" content=\"<?php echo $keywords; ?>\">\r\n	<meta name=\"description\" content=\"<?php echo $description; ?>\">\r\n\r\n	<link rel=\"stylesheet\" href=\"<?php echo rex_url::base(\'assets/addons/demo_fullpage/\' . $fullpagedemo[\'theme\'] . \'/css/bootstrap.min.css\'); ?>\">\r\n	<link rel=\"stylesheet\" href=\"<?php echo rex_url::base(\'assets/addons/demo_fullpage/\' . $fullpagedemo[\'theme\'] . \'/css/fullPage.css\'); ?>\">\r\n	<link rel=\"stylesheet\" href=\"<?php echo rex_url::base(\'assets/addons/demo_fullpage/\' . $fullpagedemo[\'theme\'] . \'/css/swipebox.min.css\'); ?>\">\r\n	<link rel=\"stylesheet\" href=\"<?php echo rex_url::base(\'assets/addons/demo_fullpage/\' . $fullpagedemo[\'theme\'] . \'/css/font-awesome.min.css\'); ?>\">\r\n	<link rel=\"stylesheet\" href=\"<?php echo rex_url::base(\'assets/addons/demo_fullpage/\' . $fullpagedemo[\'theme\'] . \'/css/theme.css\'); ?>\">\r\n\r\n	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->\r\n	<!--[if lt IE 9]>\r\n		<script src=\"<?php echo rex_url::base(\'assets/addons/demo_fullpage/\' . $fullpagedemo[\'theme\'] . \'/js/html5shiv_respond.js\'); ?>\"></script>\r\n	<![endif]-->\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n<div class=\"loader\">Loading...</div>',0,'admin','admin','2017-06-09 13:07:08','2017-06-09 13:07:08','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (4,'20. Footer','<!-- Javascripts -->\r\n<script>\r\nvar fps_options = {\r\n<?php if (rex_addon::get(\'demo_fullpage\')->getConfig(\'showscrollbar\')) { ?>\r\n	scrollBar: true,\r\n<?php } ?>\r\n	scrollingSpeed: <?php echo rex_addon::get(\'demo_fullpage\')->getConfig(\'scrollingspeed\'); ?>,\r\n<?php if (rex_addon::get(\'demo_fullpage\')->getConfig(\'autoscrolling\')) { ?>\r\n	autoScrolling: true,\r\n	fitToSection: true,\r\n<?php } ?>\r\n<?php if (rex_addon::get(\'demo_fullpage\')->getConfig(\'shownavigation\')) { ?>\r\n	navigation: true,\r\n	navigationPosition: \'<?php echo rex_addon::get(\'demo_fullpage\')->getConfig(\'navigationposition\'); ?>\',\r\n<?php } ?>\r\n<?php if (rex_addon::get(\'demo_fullpage\')->getConfig(\'showslidearrows\')) { ?>\r\n	controlArrows: true,\r\n<?php } ?>\r\n<?php if (rex_addon::get(\'demo_fullpage\')->getConfig(\'showslidenavigation\')) { ?>	\r\n	slidesNavigation: true,\r\n	slidesNavPosition: \'<?php echo rex_addon::get(\'demo_fullpage\')->getConfig(\'slidenavigationposition\'); ?>\',\r\n<?php } ?>\r\n};\r\n</script>\r\n\r\n<script src=\"<?php echo rex_url::base(\'assets/addons/demo_fullpage/\' . $fullpagedemo[\'theme\'] . \'/js/jquery.min.js\') ?>\"></script>\r\n<script src=\"<?php echo rex_url::base(\'assets/addons/demo_fullpage/\' . $fullpagedemo[\'theme\'] . \'/js/fullPage.min.js\') ?>\"></script>\r\n<script src=\"<?php echo rex_url::base(\'assets/addons/demo_fullpage/\' . $fullpagedemo[\'theme\'] . \'/js/bootstrap.min.js\') ?>\"></script>\r\n<script src=\"<?php echo rex_url::base(\'assets/addons/demo_fullpage/\' . $fullpagedemo[\'theme\'] . \'/js/jquery.swipebox.min.js\') ?>\"></script>\r\n<script src=\"<?php echo rex_url::base(\'assets/addons/demo_fullpage/\' . $fullpagedemo[\'theme\'] . \'/js/theme.js\') ?>\"></script>\r\n\r\n<div style=\"display:none;\">REDAXO 5 really rocks!</div>\r\n\r\n</body>\r\n</html>',0,'admin','admin','2017-06-08 15:19:52','2017-06-08 15:19:52','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (5,'99. Download','<?php\r\n$file_name = strtolower(preg_replace(\"/[^a-zA-Z0-9.\\-\\$\\+]/\",\"_\",rex_request(\'file\', \'string\')));\r\n$file_type = \"application/octetstream\";\r\n$file_path = rex_path::media($file_name);\r\n\r\nif ($file_name != \"\" && $fp = @fopen(\"$file_path\", \"r\"))\r\n{\r\n\r\nheader(\"Expires: Mon, 01 Jan 2000 01:01:01 GMT\"); // Date in the past\r\nheader(\"Last-Modified: \" . gmdate(\"D, d M Y H:i:s\") . \" GMT\");// always modified\r\nheader(\"Cache-Control: no-store, no-cache, must-revalidate\");// HTTP/1.1\r\nheader(\"Cache-Control: post-check=0, pre-check=0\", false);\r\nheader(\"Cache-Control: private\");\r\nheader(\"Pragma: no-cache\");\r\nheader(\"Content-Type: $file_type; name=\\\"$file_name\\\"\");\r\nheader(\"Content-Disposition: attachment; filename=\\\"$file_name\\\"\");\r\n\r\nrex_response::cleanOutputBuffers();\r\nfpassthru ($fp);\r\nfclose($fp);\r\nexit;\r\n\r\n}else\r\n{\r\n\r\necho \"<div class=warning>Download failed</div>\";\r\n\r\n}\r\n?>',1,'admin','admin','2017-06-09 01:12:39','2017-06-09 01:12:39','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0);
/*!40000 ALTER TABLE `rex_template` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_user_role`;
CREATE TABLE `rex_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `perms` text NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_yform_email_template`;
CREATE TABLE `rex_yform_email_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `mail_from` varchar(255) NOT NULL DEFAULT '',
  `mail_from_name` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `body_html` text NOT NULL,
  `attachments` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_yform_field`;
CREATE TABLE `rex_yform_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) NOT NULL,
  `prio` int(11) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `list_hidden` tinyint(1) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `name` text NOT NULL,
  `label` text NOT NULL,
  `not_required` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_yform_history`;
CREATE TABLE `rex_yform_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) NOT NULL,
  `dataset_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dataset` (`table_name`,`dataset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_yform_history_field`;
CREATE TABLE `rex_yform_history_field` (
  `history_id` int(11) NOT NULL,
  `field` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`history_id`,`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_yform_table`;
CREATE TABLE `rex_yform_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `list_amount` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `list_sortfield` varchar(255) NOT NULL DEFAULT 'id',
  `list_sortorder` enum('ASC','DESC') NOT NULL DEFAULT 'ASC',
  `prio` int(11) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `export` tinyint(1) NOT NULL,
  `import` tinyint(1) NOT NULL,
  `mass_deletion` tinyint(1) NOT NULL,
  `history` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_name` (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS = 1;
