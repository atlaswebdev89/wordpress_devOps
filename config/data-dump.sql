-- MySQL dump 10.19  Distrib 10.3.31-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wordpress
-- ------------------------------------------------------
-- Server version	10.3.31-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Автор комментария','wapuu@wordpress.example','https://wordpress.org/','','2021-11-01 20:03:31','2021-11-01 17:03:31','Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://dev-site.atl','yes'),(2,'home','http://dev-site.atl','yes'),(3,'blogname','Cakes','yes'),(4,'blogdescription','Ещё один сайт на WordPress','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','atlas@mail.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','0','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','d.m.Y','yes'),(24,'time_format','H:i','yes'),(25,'links_updated_date_format','d.m.Y H:i','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(29,'rewrite_rules','','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:0:{}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','3','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','fluida','yes'),(41,'stylesheet','fluida','yes'),(42,'comment_registration','0','yes'),(43,'html_type','text/html','yes'),(44,'use_trackback','0','yes'),(45,'default_role','subscriber','yes'),(46,'db_version','49752','yes'),(47,'uploads_use_yearmonth_folders','1','yes'),(48,'upload_path','','yes'),(49,'blog_public','0','yes'),(50,'default_link_category','2','yes'),(51,'show_on_front','posts','yes'),(52,'tag_base','','yes'),(53,'show_avatars','1','yes'),(54,'avatar_rating','G','yes'),(55,'upload_url_path','','yes'),(56,'thumbnail_size_w','150','yes'),(57,'thumbnail_size_h','150','yes'),(58,'thumbnail_crop','1','yes'),(59,'medium_size_w','300','yes'),(60,'medium_size_h','300','yes'),(61,'avatar_default','mystery','yes'),(62,'large_size_w','1024','yes'),(63,'large_size_h','1024','yes'),(64,'image_default_link_type','none','yes'),(65,'image_default_size','','yes'),(66,'image_default_align','','yes'),(67,'close_comments_for_old_posts','0','yes'),(68,'close_comments_days_old','14','yes'),(69,'thread_comments','1','yes'),(70,'thread_comments_depth','5','yes'),(71,'page_comments','0','yes'),(72,'comments_per_page','50','yes'),(73,'default_comments_page','newest','yes'),(74,'comment_order','asc','yes'),(75,'sticky_posts','a:0:{}','yes'),(76,'widget_categories','a:0:{}','yes'),(77,'widget_text','a:0:{}','yes'),(78,'widget_rss','a:0:{}','yes'),(79,'uninstall_plugins','a:0:{}','no'),(80,'timezone_string','','yes'),(81,'page_for_posts','0','yes'),(82,'page_on_front','0','yes'),(83,'default_post_format','0','yes'),(84,'link_manager_enabled','0','yes'),(85,'finished_splitting_shared_terms','1','yes'),(86,'site_icon','0','yes'),(87,'medium_large_size_w','768','yes'),(88,'medium_large_size_h','0','yes'),(89,'wp_page_for_privacy_policy','3','yes'),(90,'show_comments_cookies_opt_in','1','yes'),(91,'admin_email_lifespan','1651338210','yes'),(92,'disallowed_keys','','no'),(93,'comment_previously_approved','1','yes'),(94,'auto_plugin_theme_update_emails','a:0:{}','no'),(95,'auto_update_core_dev','enabled','yes'),(96,'auto_update_core_minor','enabled','yes'),(97,'auto_update_core_major','enabled','yes'),(98,'wp_force_deactivated_plugins','a:0:{}','yes'),(99,'initial_db_version','49752','yes'),(100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(101,'fresh_site','1','yes'),(102,'WPLANG','ru_RU','yes'),(103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes'),(104,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:18:\"footer-widget-area\";a:0:{}s:26:\"content-widget-area-before\";a:0:{}s:25:\"content-widget-area-after\";a:0:{}s:18:\"widget-area-header\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(105,'cron','a:8:{i:1635786238;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1635786239;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1635786240;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1635786245;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1635786248;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1635786305;a:1:{s:28:\"wp_update_comment_type_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1635872639;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),(106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(115,'nonce_key','epgo86}]A?AY8.;fKBI>cl{%@:U,c!eV)_lhMO:|6Oi4JX[h}BN@OJxiJ^.0ct=x','no'),(116,'nonce_salt','*Vk[;1,4%A-xt9BtjKE5-/PN>#-4uql*gQ:PYTKj._MphG +X?0mGwG@8Cg^N{Ih','no'),(117,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(118,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(119,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(120,'auth_key','.E4PbUU36l&>g]7K t}*?53!(s8zjFoiZiLBj7G&4Dtz*n_ig&EF]c6|A(s.?<y>','no'),(121,'auth_salt','9sRyyZ|atK)PJS{SL%?wx}#i8uT,<%0j&Tq3t_i`=#0t5yj392N8=Ps[nU|vFsq=','no'),(122,'logged_in_key','Fp_KABN%?rIRRAXM$YSB K P$6nm|@b/@^P6 v*[l=V`s/8alfDwI:or;[i#o(Y]','no'),(123,'logged_in_salt','RBCCn>qPx7t?nw^BOW2Q*(L:}4noX!v[10_1fM^weQaVvgPP#v1A?:fu;|kU27}J','no'),(124,'can_compress_scripts','0','no'),(125,'theme_mods_twentytwentyone','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635786307;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes'),(126,'current_theme','Fluida','yes'),(127,'theme_mods_fluida','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"socials\";i:3;}s:18:\"custom_css_post_id\";i:-1;}','yes'),(128,'theme_switched','','yes'),(129,'fluida_migrated','1.35','yes'),(130,'fluida_settings','a:172:{s:9:\"fluida_db\";s:3:\"0.9\";s:17:\"fluida_sitelayout\";s:4:\"3cSs\";s:16:\"fluida_sitewidth\";i:1920;s:18:\"fluida_layoutalign\";i:2;s:21:\"fluida_primarysidebar\";i:320;s:23:\"fluida_secondarysidebar\";i:320;s:21:\"fluida_magazinelayout\";i:2;s:18:\"fluida_landingpage\";i:1;s:15:\"fluida_lplayout\";i:1;s:14:\"fluida_lpposts\";i:1;s:19:\"fluida_lpposts_more\";s:10:\"More Posts\";s:15:\"fluida_lpslider\";i:1;s:20:\"fluida_lpsliderimage\";s:79:\"http://dev-site.atl/wp-content/themes/fluida/resources/images/slider/static.jpg\";s:24:\"fluida_lpslidershortcode\";s:0:\"\";s:20:\"fluida_lpslidertitle\";s:5:\"Cakes\";s:19:\"fluida_lpslidertext\";s:39:\"Ещё один сайт на WordPress\";s:23:\"fluida_lpslidercta1text\";s:0:\"\";s:23:\"fluida_lpslidercta1link\";s:0:\"\";s:23:\"fluida_lpslidercta2text\";s:0:\"\";s:23:\"fluida_lpslidercta2link\";s:0:\"\";s:24:\"fluida_lpblockmaintitle1\";s:0:\"\";s:23:\"fluida_lpblockmaindesc1\";s:0:\"\";s:23:\"fluida_lpblockscontent1\";i:1;s:21:\"fluida_lpblocksclick1\";i:0;s:24:\"fluida_lpblocksreadmore1\";s:0:\"\";s:18:\"fluida_lpblockone1\";i:2;s:22:\"fluida_lpblockoneicon1\";s:14:\"screen-desktop\";s:18:\"fluida_lpblocktwo1\";i:0;s:22:\"fluida_lpblocktwoicon1\";s:6:\"layers\";s:20:\"fluida_lpblockthree1\";i:0;s:24:\"fluida_lpblockthreeicon1\";s:6:\"folder\";s:19:\"fluida_lpblockfour1\";i:0;s:23:\"fluida_lpblockfouricon1\";s:9:\"megaphone\";s:23:\"fluida_lpboxmainttitle1\";s:0:\"\";s:21:\"fluida_lpboxmaindesc1\";s:0:\"\";s:16:\"fluida_lpboxcat1\";s:0:\"\";s:18:\"fluida_lpboxcount1\";i:6;s:16:\"fluida_lpboxrow1\";i:3;s:19:\"fluida_lpboxheight1\";i:250;s:19:\"fluida_lpboxlayout1\";i:2;s:20:\"fluida_lpboxmargins1\";i:2;s:22:\"fluida_lpboxanimation1\";i:2;s:21:\"fluida_lpboxreadmore1\";s:9:\"Read More\";s:19:\"fluida_lpboxlength1\";i:25;s:23:\"fluida_lpboxmainttitle2\";s:0:\"\";s:21:\"fluida_lpboxmaindesc2\";s:0:\"\";s:16:\"fluida_lpboxcat2\";s:0:\"\";s:18:\"fluida_lpboxcount2\";i:8;s:16:\"fluida_lpboxrow2\";i:4;s:19:\"fluida_lpboxheight2\";i:400;s:19:\"fluida_lpboxlayout2\";i:1;s:20:\"fluida_lpboxmargins2\";i:1;s:22:\"fluida_lpboxanimation2\";i:1;s:21:\"fluida_lpboxreadmore2\";s:9:\"Read More\";s:19:\"fluida_lpboxlength2\";i:25;s:16:\"fluida_lptextone\";i:2;s:16:\"fluida_lptexttwo\";i:0;s:18:\"fluida_lptextthree\";i:0;s:17:\"fluida_lptextfour\";i:0;s:17:\"fluida_menuheight\";i:100;s:16:\"fluida_menustyle\";i:1;s:17:\"fluida_menulayout\";i:1;s:19:\"fluida_headerheight\";i:250;s:23:\"fluida_headerresponsive\";i:1;s:18:\"fluida_titleaccent\";i:1;s:17:\"fluida_logoupload\";s:0:\"\";s:17:\"fluida_siteheader\";s:4:\"both\";s:18:\"fluida_sitetagline\";s:0:\"\";s:24:\"fluida_headerwidgetwidth\";s:3:\"33%\";s:24:\"fluida_headerwidgetalign\";s:5:\"right\";s:15:\"fluida_fgeneral\";s:15:\"Open Sans/gfont\";s:21:\"fluida_fgeneralgoogle\";s:0:\"\";s:19:\"fluida_fgeneralsize\";s:4:\"16px\";s:21:\"fluida_fgeneralweight\";s:3:\"300\";s:17:\"fluida_fsitetitle\";s:29:\"Open Sans Condensed:300/gfont\";s:23:\"fluida_fsitetitlegoogle\";s:0:\"\";s:21:\"fluida_fsitetitlesize\";s:4:\"150%\";s:23:\"fluida_fsitetitleweight\";s:3:\"300\";s:12:\"fluida_fmenu\";s:29:\"Open Sans Condensed:300/gfont\";s:18:\"fluida_fmenugoogle\";s:0:\"\";s:16:\"fluida_fmenusize\";s:4:\"105%\";s:18:\"fluida_fmenuweight\";s:3:\"300\";s:14:\"fluida_fwtitle\";s:15:\"Open Sans/gfont\";s:20:\"fluida_fwtitlegoogle\";s:0:\"\";s:18:\"fluida_fwtitlesize\";s:4:\"100%\";s:20:\"fluida_fwtitleweight\";s:3:\"700\";s:16:\"fluida_fwcontent\";s:15:\"Open Sans/gfont\";s:22:\"fluida_fwcontentgoogle\";s:0:\"\";s:20:\"fluida_fwcontentsize\";s:4:\"100%\";s:22:\"fluida_fwcontentweight\";s:3:\"300\";s:14:\"fluida_ftitles\";s:15:\"Open Sans/gfont\";s:20:\"fluida_ftitlesgoogle\";s:0:\"\";s:18:\"fluida_ftitlessize\";s:4:\"250%\";s:20:\"fluida_ftitlesweight\";s:3:\"300\";s:16:\"fluida_fheadings\";s:29:\"Open Sans Condensed:300/gfont\";s:22:\"fluida_fheadingsgoogle\";s:0:\"\";s:20:\"fluida_fheadingssize\";s:4:\"130%\";s:22:\"fluida_fheadingsweight\";s:3:\"300\";s:17:\"fluida_lineheight\";d:1.8;s:16:\"fluida_textalign\";s:7:\"inherit\";s:21:\"fluida_paragraphspace\";d:1;s:16:\"fluida_parindent\";d:0;s:21:\"fluida_sitebackground\";s:7:\"#F3F3F3\";s:15:\"fluida_sitetext\";s:4:\"#555\";s:19:\"fluida_headingstext\";s:4:\"#333\";s:24:\"fluida_contentbackground\";s:4:\"#fff\";s:25:\"fluida_contentbackground2\";s:0:\"\";s:21:\"fluida_menubackground\";s:4:\"#fff\";s:23:\"fluida_footerbackground\";s:7:\"#222226\";s:17:\"fluida_footertext\";s:4:\"#AAA\";s:15:\"fluida_menutext\";s:7:\"#0085b2\";s:18:\"fluida_submenutext\";s:4:\"#555\";s:17:\"fluida_lpblocksbg\";s:0:\"\";s:16:\"fluida_lpboxesbg\";s:0:\"\";s:16:\"fluida_lptextsbg\";s:4:\"#FFF\";s:14:\"fluida_accent1\";s:7:\"#0085b2\";s:14:\"fluida_accent2\";s:7:\"#f42b00\";s:18:\"fluida_breadcrumbs\";i:1;s:17:\"fluida_pagination\";i:1;s:20:\"fluida_contenttitles\";i:1;s:12:\"fluida_totop\";s:19:\"fluida-totop-normal\";s:13:\"fluida_tables\";s:21:\"fluida-stripped-table\";s:20:\"fluida_normalizetags\";i:1;s:16:\"fluida_copyright\";s:16:\"&copy;2021 Cakes\";s:20:\"fluida_elementborder\";i:0;s:20:\"fluida_elementshadow\";i:1;s:26:\"fluida_elementborderradius\";i:0;s:23:\"fluida_articleanimation\";s:4:\"fade\";s:20:\"fluida_searchboxmain\";i:1;s:22:\"fluida_searchboxfooter\";i:0;s:23:\"fluida_contentmargintop\";i:20;s:21:\"fluida_contentpadding\";i:0;s:21:\"fluida_elementpadding\";i:10;s:17:\"fluida_footercols\";i:3;s:18:\"fluida_footeralign\";i:0;s:18:\"fluida_image_style\";s:16:\"fluida-image-one\";s:20:\"fluida_caption_style\";s:18:\"fluida-caption-two\";s:18:\"fluida_meta_author\";i:1;s:16:\"fluida_meta_date\";i:1;s:16:\"fluida_meta_time\";i:0;s:20:\"fluida_meta_category\";i:1;s:15:\"fluida_meta_tag\";i:1;s:19:\"fluida_meta_comment\";i:1;s:16:\"fluida_comlabels\";i:1;s:14:\"fluida_comdate\";i:2;s:16:\"fluida_comclosed\";i:1;s:19:\"fluida_comformwidth\";i:650;s:18:\"fluida_excerpthome\";s:7:\"excerpt\";s:20:\"fluida_excerptsticky\";s:4:\"full\";s:21:\"fluida_excerptarchive\";s:7:\"excerpt\";s:20:\"fluida_excerptlength\";i:50;s:18:\"fluida_excerptdots\";s:9:\" &hellip;\";s:18:\"fluida_excerptcont\";s:16:\"Continue reading\";s:12:\"fluida_fpost\";i:1;s:12:\"fluida_fauto\";i:0;s:14:\"fluida_fheight\";i:200;s:18:\"fluida_fresponsive\";i:1;s:13:\"fluida_falign\";s:13:\"center center\";s:14:\"fluida_fheader\";i:1;s:21:\"fluida_socials_header\";i:1;s:21:\"fluida_socials_footer\";i:0;s:27:\"fluida_socials_left_sidebar\";i:0;s:28:\"fluida_socials_right_sidebar\";i:0;s:16:\"fluida_postboxes\";s:0:\"\";s:16:\"fluida_pagesmenu\";i:1;s:14:\"fluida_masonry\";i:1;s:12:\"fluida_defer\";i:1;s:14:\"fluida_fitvids\";i:1;s:17:\"fluida_autoscroll\";i:1;s:19:\"fluida_headerlimits\";i:1;s:18:\"fluida_mobileonios\";i:0;s:19:\"fluida_editorstyles\";i:1;}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,6,'_menu_item_type','custom'),(4,5,'_menu_item_type','custom'),(5,6,'_menu_item_menu_item_parent','0'),(6,5,'_menu_item_menu_item_parent','0'),(7,5,'_menu_item_object_id','5'),(8,6,'_menu_item_object_id','6'),(9,5,'_menu_item_object','custom'),(10,6,'_menu_item_object','custom'),(11,5,'_menu_item_target','_blank'),(12,6,'_menu_item_target','_blank'),(13,5,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(14,5,'_menu_item_xfn',''),(15,6,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(16,5,'_menu_item_url','http://www.facebook.com/profile'),(17,6,'_menu_item_xfn',''),(18,6,'_menu_item_url','http://www.facebook.com/profile'),(19,7,'_menu_item_type','custom'),(20,8,'_menu_item_type','custom'),(21,8,'_menu_item_menu_item_parent','0'),(22,7,'_menu_item_menu_item_parent','0'),(23,7,'_menu_item_object_id','7'),(24,8,'_menu_item_object_id','8'),(25,8,'_menu_item_object','custom'),(26,7,'_menu_item_object','custom'),(27,8,'_menu_item_target','_blank'),(28,7,'_menu_item_target','_blank'),(29,7,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(30,8,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(31,8,'_menu_item_xfn',''),(32,7,'_menu_item_xfn',''),(33,8,'_menu_item_url','http://www.twitter.com/profile'),(34,7,'_menu_item_url','http://www.twitter.com/profile'),(35,9,'_menu_item_type','custom'),(36,10,'_menu_item_type','custom'),(37,10,'_menu_item_menu_item_parent','0'),(38,9,'_menu_item_menu_item_parent','0'),(39,10,'_menu_item_object_id','10'),(40,9,'_menu_item_object_id','9'),(41,10,'_menu_item_object','custom'),(42,9,'_menu_item_object','custom'),(43,10,'_menu_item_target','_blank'),(44,9,'_menu_item_target','_blank'),(45,10,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(46,9,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(47,10,'_menu_item_xfn',''),(48,9,'_menu_item_xfn',''),(49,10,'_menu_item_url','https://profiles.wordpress.org/profile/'),(50,9,'_menu_item_url','https://profiles.wordpress.org/profile/'),(51,12,'_menu_item_type','custom'),(52,11,'_menu_item_type','custom'),(53,12,'_menu_item_menu_item_parent','0'),(54,11,'_menu_item_menu_item_parent','0'),(55,12,'_menu_item_object_id','12'),(56,11,'_menu_item_object_id','11'),(57,12,'_menu_item_object','custom'),(58,11,'_menu_item_object','custom'),(59,11,'_menu_item_target',''),(60,12,'_menu_item_target',''),(61,11,'_menu_item_classes','a:1:{i:0;s:6:\"custom\";}'),(62,12,'_menu_item_classes','a:1:{i:0;s:6:\"custom\";}'),(63,11,'_menu_item_xfn',''),(64,11,'_menu_item_url','#'),(65,12,'_menu_item_xfn',''),(66,12,'_menu_item_url','#');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-11-01 20:03:31','2021-11-01 17:03:31','<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->','Привет, мир!','','publish','open','open','','%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80','','','2021-11-01 20:03:31','2021-11-01 17:03:31','',0,'http://dev-site.atl/?p=1',0,'post','',1),(2,1,'2021-11-01 20:03:31','2021-11-01 17:03:31','<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://dev-site.atl/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->','Пример страницы','','publish','closed','open','','sample-page','','','2021-11-01 20:03:31','2021-11-01 17:03:31','',0,'http://dev-site.atl/?page_id=2',0,'page','',0),(3,1,'2021-11-01 20:03:31','2021-11-01 17:03:31','<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://dev-site.atl.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->','Политика конфиденциальности','','draft','closed','open','','privacy-policy','','','2021-11-01 20:03:31','2021-11-01 17:03:31','',0,'http://dev-site.atl/?page_id=3',0,'page','',0),(4,1,'2021-11-01 20:04:08','0000-00-00 00:00:00','','Черновик','','auto-draft','open','open','','','','','2021-11-01 20:04:08','0000-00-00 00:00:00','',0,'http://dev-site.atl/?p=4',0,'post','',0),(5,1,'2021-11-01 20:05:08','2021-11-01 17:05:08','','Facebook','','publish','closed','closed','','facebook','','','2021-11-01 20:05:08','2021-11-01 17:05:08','',0,'http://dev-site.atl/?p=5',0,'nav_menu_item','',0),(6,1,'2021-11-01 20:05:08','2021-11-01 17:05:08','','Facebook','','publish','closed','closed','','facebook','','','2021-11-01 20:05:08','2021-11-01 17:05:08','',0,'http://dev-site.atl/?p=6',0,'nav_menu_item','',0),(7,1,'2021-11-01 20:05:08','2021-11-01 17:05:08','','Twitter','','publish','closed','closed','','twitter','','','2021-11-01 20:05:08','2021-11-01 17:05:08','',0,'http://dev-site.atl/?p=7',2,'nav_menu_item','',0),(8,1,'2021-11-01 20:05:08','2021-11-01 17:05:08','','Twitter','','publish','closed','closed','','twitter-2','','','2021-11-01 20:05:08','2021-11-01 17:05:08','',0,'http://dev-site.atl/?p=8',2,'nav_menu_item','',0),(9,1,'2021-11-01 20:05:08','2021-11-01 17:05:08','','WordPress','','publish','closed','closed','','wordpress','','','2021-11-01 20:05:08','2021-11-01 17:05:08','',0,'http://dev-site.atl/?p=9',3,'nav_menu_item','',0),(10,1,'2021-11-01 20:05:08','2021-11-01 17:05:08','','WordPress','','publish','closed','closed','','wordpress','','','2021-11-01 20:05:08','2021-11-01 17:05:08','',0,'http://dev-site.atl/?p=10',3,'nav_menu_item','',0),(11,1,'2021-11-01 20:05:08','2021-11-01 17:05:08','','Custom Social','','publish','closed','closed','','custom-social','','','2021-11-01 20:05:08','2021-11-01 17:05:08','',0,'http://dev-site.atl/?p=11',4,'nav_menu_item','',0),(12,1,'2021-11-01 20:05:08','2021-11-01 17:05:08','','Custom Social','','publish','closed','closed','','custom-social','','','2021-11-01 20:05:08','2021-11-01 17:05:08','',0,'http://dev-site.atl/?p=12',4,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(5,2,0),(6,3,0),(7,2,0),(8,3,0),(9,2,0),(10,3,0),(11,2,0),(12,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,3,'nav_menu','',0,4),(3,2,'nav_menu','',0,4);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Без рубрики','%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8',0),(2,'Socials Menu','socials-menu',0),(3,'Socials Menu','socials-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','atlas'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','0'),(16,1,'session_tokens','a:1:{s:64:\"3ff3db41fb56ab4d024cca33cba9d9716b07a34e8af79534662c932fccde6fe2\";a:4:{s:10:\"expiration\";i:1635959044;s:2:\"ip\";s:14:\"192.168.100.30\";s:2:\"ua\";s:143:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 YaBrowser/21.9.1.600 (beta) Yowser/2.5 Safari/537.36\";s:5:\"login\";i:1635786244;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','4'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:13:\"192.168.100.0\";}'),(19,1,'meta-box-order_dashboard','a:4:{s:6:\"normal\";s:41:\"dashboard_site_health,dashboard_right_now\";s:4:\"side\";s:40:\"dashboard_quick_press,dashboard_activity\";s:7:\"column3\";s:17:\"dashboard_primary\";s:7:\"column4\";s:0:\"\";}'),(20,1,'closedpostboxes_dashboard','a:0:{}'),(21,1,'metaboxhidden_dashboard','a:1:{i:0;s:17:\"dashboard_primary\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'atlas','$P$Bn.r6t.xfIMEA7HsUF6IIxGpCN3YF9.','atlas','atlas@mail.com','http://dev-site.atl','2021-11-01 17:03:31','',0,'atlas');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-01 20:06:42
