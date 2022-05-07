-- MySQL dump 10.19  Distrib 10.3.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wordpress
-- ------------------------------------------------------
-- Server version	10.3.34-MariaDB-0+deb10u1

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
-- Table structure for table `wp_aryo_activity_log`
--

DROP TABLE IF EXISTS `wp_aryo_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_aryo_activity_log` (
  `histid` int(11) NOT NULL AUTO_INCREMENT,
  `user_caps` varchar(70) NOT NULL DEFAULT 'guest',
  `action` varchar(255) NOT NULL,
  `object_type` varchar(255) NOT NULL,
  `object_subtype` varchar(255) NOT NULL DEFAULT '',
  `object_name` varchar(255) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `hist_ip` varchar(55) NOT NULL DEFAULT '127.0.0.1',
  `hist_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`histid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_aryo_activity_log`
--

LOCK TABLES `wp_aryo_activity_log` WRITE;
/*!40000 ALTER TABLE `wp_aryo_activity_log` DISABLE KEYS */;
INSERT INTO `wp_aryo_activity_log` VALUES (1,'guest','activated','Plugins','','Activity Log',0,0,'127.0.0.1',1651952860),(2,'guest','installed','Plugins','3.0.0','YYDevelopment - Tag Manager - Header, Body And Footer',0,0,'127.0.0.1',1651952869),(3,'guest','activated','Plugins','','YYDevelopment - Tag Manager - Header, Body And Footer',0,0,'127.0.0.1',1651952870),(4,'guest','installed','Plugins','2.7.0','Black Studio TinyMCE Widget',0,0,'127.0.0.1',1651952876),(5,'guest','activated','Plugins','','Black Studio TinyMCE Widget',0,0,'127.0.0.1',1651952877),(6,'guest','installed','Plugins','1.10.1','Admin Menu Editor',0,0,'127.0.0.1',1651952884),(7,'guest','activated','Plugins','','Admin Menu Editor',0,0,'127.0.0.1',1651952886),(8,'guest','installed','Plugins','5.6.0','Advanced Editor Tools (previously TinyMCE Advanced)',0,0,'127.0.0.1',1651952897),(9,'guest','activated','Plugins','','Advanced Editor Tools (previously TinyMCE Advanced)',0,0,'127.0.0.1',1651952898),(10,'guest','installed','Plugins','1.0.1','Disable XML-RPC',0,0,'127.0.0.1',1651952903),(11,'guest','activated','Plugins','','Disable XML-RPC',0,0,'127.0.0.1',1651952904),(12,'guest','installed','Plugins','3.2.1','Simple Image Sizes',0,0,'127.0.0.1',1651952911),(13,'guest','activated','Plugins','','Simple Image Sizes',0,0,'127.0.0.1',1651952912),(14,'guest','installed','Plugins','2.0.6','Force Regenerate Thumbnails',0,0,'127.0.0.1',1651952917),(15,'guest','activated','Plugins','','Force Regenerate Thumbnails',0,0,'127.0.0.1',1651952919),(16,'guest','installed','Plugins','4.8.1','Markup (JSON-LD) structured in schema.org',0,0,'127.0.0.1',1651952925),(17,'guest','activated','Plugins','','Markup (JSON-LD) structured in schema.org',0,0,'127.0.0.1',1651952926),(18,'guest','installed','Plugins','3.2.11','ProfilePress',0,0,'127.0.0.1',1651952937),(19,'guest','activated','Plugins','','ProfilePress',0,0,'127.0.0.1',1651952939),(20,'guest','installed','Plugins','1.1.4','Robots.txt Editor',0,0,'127.0.0.1',1651952945),(21,'guest','activated','Plugins','','Robots.txt Editor',0,0,'127.0.0.1',1651952947),(22,'guest','installed','Plugins','2.1.0','User Login History',0,0,'127.0.0.1',1651952953),(23,'guest','activated','Plugins','','User Login History',0,0,'127.0.0.1',1651952955),(24,'guest','installed','Plugins','1.70','WP Htaccess Editor',0,0,'127.0.0.1',1651952964),(25,'guest','activated','Plugins','','WP Htaccess Editor',0,0,'127.0.0.1',1651952965),(26,'guest','installed','Plugins','2.25.1','Limit Login Attempts Reloaded',0,0,'127.0.0.1',1651952973),(27,'guest','activated','Plugins','','Limit Login Attempts Reloaded',0,0,'127.0.0.1',1651952975),(28,'guest','installed','Plugins','1.1.1','Simple CSS',0,0,'127.0.0.1',1651952980),(29,'guest','activated','Plugins','','Simple CSS',0,0,'127.0.0.1',1651952982),(30,'guest','installed','Plugins','5.5.6','Contact Form 7',0,0,'127.0.0.1',1651952988),(31,'guest','updated','Posts','wpcf7_contact_form','Contact form 1',4,0,'127.0.0.1',1651952990),(32,'guest','activated','Plugins','','Contact Form 7',0,0,'127.0.0.1',1651952990),(33,'guest','activated','Plugins','','Carbon Fields',0,0,'127.0.0.1',1651952995);
/*!40000 ALTER TABLE `wp_aryo_activity_log` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-05-07 19:44:58','2022-05-07 19:44:58','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_fa_user_logins`
--

DROP TABLE IF EXISTS `wp_fa_user_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_fa_user_logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_login` datetime NOT NULL,
  `time_logout` datetime DEFAULT NULL,
  `time_last_seen` datetime NOT NULL,
  `ip_address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_version` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operating_system` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_role` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `geo_response` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_super_admin` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_session_token_user_id` (`session_token`,`user_id`),
  KEY `idx_session_token` (`session_token`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_username` (`username`),
  KEY `idx_time_login` (`time_login`),
  KEY `idx_time_logout` (`time_logout`),
  KEY `idx_time_last_seen` (`time_last_seen`),
  KEY `idx_ip_address` (`ip_address`),
  KEY `idx_browser` (`browser`),
  KEY `idx_operating_system` (`operating_system`),
  KEY `idx_country_name` (`country_name`),
  KEY `idx_timezone` (`timezone`),
  KEY `idx_old_role` (`old_role`),
  KEY `idx_login_status` (`login_status`),
  KEY `idx_is_super_admin` (`is_super_admin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_fa_user_logins`
--

LOCK TABLES `wp_fa_user_logins` WRITE;
/*!40000 ALTER TABLE `wp_fa_user_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_fa_user_logins` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://dev-siter.atl','yes'),(2,'home','http://dev-siter.atl','yes'),(3,'blogname','New Site Wordpress','yes'),(4,'blogdescription','Just another WordPress site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','atlas@gmail.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:30:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:33:\"admin-menu-editor/menu-editor.php\";i:2;s:39:\"aryo-activity-log/aryo-activity-log.php\";i:3;s:59:\"black-studio-tinymce-widget/black-studio-tinymce-widget.php\";i:4;s:38:\"carbon-fields/carbon-fields-plugin.php\";i:5;s:33:\"classic-editor/classic-editor.php\";i:6;s:35:\"classic-widgets/classic-widgets.php\";i:7;s:36:\"contact-form-7/wp-contact-form-7.php\";i:8;s:27:\"cyr-and-lat/cyr-and-lat.php\";i:9;s:35:\"disable-xml-rpc/disable-xml-rpc.php\";i:10;s:25:\"duplicator/duplicator.php\";i:11;s:28:\"error-log-monitor/plugin.php\";i:12;s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";i:13;s:65:\"html-editor-syntax-highlighter/html-editor-syntax-highlighter.php\";i:14;s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";i:15;s:39:\"robots-txt-editor/robots-txt-editor.php\";i:16;s:25:\"simple-css/simple-css.php\";i:17;s:24:\"simple-history/index.php\";i:18;s:41:\"simple-image-sizes/simple_image_sizes.php\";i:19;s:40:\"tag-manager-header-body-footer/index.php\";i:20;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:21;s:41:\"user-login-history/user-login-history.php\";i:22;s:24:\"wordpress-seo/wp-seo.php\";i:23;s:41:\"wp-htaccess-editor/wp-htaccess-editor.php\";i:24;s:19:\"wp-smtp/wp-smtp.php\";i:25;s:31:\"wp-statistics/wp-statistics.php\";i:26;s:47:\"wp-structuring-markup/wp-structuring-markup.php\";i:27;s:27:\"wp-super-cache/wp-cache.php\";i:28;s:33:\"wp-user-avatar/wp-user-avatar.php\";i:29;s:47:\"wpvivid-backuprestore/wpvivid-backuprestore.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','twentytwentytwo','yes'),(41,'stylesheet','twentytwentytwo','yes'),(42,'comment_registration','0','yes'),(43,'html_type','text/html','yes'),(44,'use_trackback','0','yes'),(45,'default_role','subscriber','yes'),(46,'db_version','51917','yes'),(47,'uploads_use_yearmonth_folders','1','yes'),(48,'upload_path','','yes'),(49,'blog_public','1','yes'),(50,'default_link_category','2','yes'),(51,'show_on_front','posts','yes'),(52,'tag_base','','yes'),(53,'show_avatars','1','yes'),(54,'avatar_rating','G','yes'),(55,'upload_url_path','','yes'),(56,'thumbnail_size_w','150','yes'),(57,'thumbnail_size_h','150','yes'),(58,'thumbnail_crop','1','yes'),(59,'medium_size_w','300','yes'),(60,'medium_size_h','300','yes'),(61,'avatar_default','mystery','yes'),(62,'large_size_w','1024','yes'),(63,'large_size_h','1024','yes'),(64,'image_default_link_type','none','yes'),(65,'image_default_size','','yes'),(66,'image_default_align','','yes'),(67,'close_comments_for_old_posts','0','yes'),(68,'close_comments_days_old','14','yes'),(69,'thread_comments','1','yes'),(70,'thread_comments_depth','5','yes'),(71,'page_comments','0','yes'),(72,'comments_per_page','50','yes'),(73,'default_comments_page','newest','yes'),(74,'comment_order','asc','yes'),(75,'sticky_posts','a:0:{}','yes'),(76,'widget_categories','a:0:{}','yes'),(77,'widget_text','a:0:{}','yes'),(78,'widget_rss','a:0:{}','yes'),(79,'uninstall_plugins','a:4:{s:27:\"cyr-and-lat/cyr-and-lat.php\";a:2:{i:0;s:19:\"WCTLR_Admin_Notices\";i:1;s:9:\"uninstall\";}s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";s:39:\"aryo-activity-log/aryo-activity-log.php\";a:2:{i:0;s:15:\"AAL_Maintenance\";i:1;s:9:\"uninstall\";}s:39:\"robots-txt-editor/robots-txt-editor.php\";a:2:{i:0;s:25:\"RobotsTxt\\RobotsTxtPlugin\";i:1;s:9:\"uninstall\";}}','no'),(80,'timezone_string','','yes'),(81,'page_for_posts','0','yes'),(82,'page_on_front','0','yes'),(83,'default_post_format','0','yes'),(84,'link_manager_enabled','0','yes'),(85,'finished_splitting_shared_terms','1','yes'),(86,'site_icon','0','yes'),(87,'medium_large_size_w','768','yes'),(88,'medium_large_size_h','0','yes'),(89,'wp_page_for_privacy_policy','3','yes'),(90,'show_comments_cookies_opt_in','1','yes'),(91,'admin_email_lifespan','1667504698','yes'),(92,'disallowed_keys','','no'),(93,'comment_previously_approved','1','yes'),(94,'auto_plugin_theme_update_emails','a:0:{}','no'),(95,'auto_update_core_dev','enabled','yes'),(96,'auto_update_core_minor','enabled','yes'),(97,'auto_update_core_major','enabled','yes'),(98,'wp_force_deactivated_plugins','a:0:{}','yes'),(99,'initial_db_version','51917','yes'),(100,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:26:\"view_all_aryo_activity_log\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}','yes'),(101,'fresh_site','1','yes'),(102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes'),(103,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes'),(104,'cron','a:10:{i:1651952699;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1651952700;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1651952797;a:1:{s:29:\"simple_history/maybe_purge_db\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1651952820;a:1:{s:28:\"wp_statistics_add_visit_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1651952837;a:1:{s:29:\"wp_cache_add_site_cache_index\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1651952846;a:2:{s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1651952860;a:1:{s:31:\"aal/maintenance/clear_old_items\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1651953427;a:1:{s:11:\"wp_cache_gc\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1652039099;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),(105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'nonce_key','%8!*#j%{v@cxa++?JE#(W0exe}wTedF/$Emiu~S4){bm{O1G=,}H~C-s_exlomfN','no'),(115,'nonce_salt','Q.#dn{::<C2_W,az1%*P]0xTuK>pa+lI6Lby?_.B5eJ7?_sgfIq,9$N$mE)L,}OH','no'),(116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(119,'_transient_doing_cron','1651952967.2037999629974365234375','yes'),(123,'_site_transient_timeout_theme_roots','1651954506','no'),(124,'_site_transient_theme_roots','a:3:{s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no'),(125,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1651952989;s:7:\"checked\";a:3:{s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.5.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.1.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no'),(126,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1651952987;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}','no'),(128,'wpvivid_email_setting','a:3:{s:7:\"send_to\";a:0:{}s:6:\"always\";b:1;s:12:\"email_enable\";b:0;}','no'),(129,'wpvivid_compress_setting','a:7:{s:13:\"compress_type\";s:3:\"zip\";s:13:\"max_file_size\";i:200;s:11:\"no_compress\";b:1;s:13:\"use_temp_file\";i:1;s:13:\"use_temp_size\";i:16;s:17:\"exclude_file_size\";i:0;s:24:\"subpackage_plugin_upload\";b:0;}','no'),(130,'wpvivid_local_setting','a:2:{s:4:\"path\";s:14:\"wpvividbackups\";s:10:\"save_local\";i:1;}','no'),(131,'wpvivid_upload_setting','a:1:{s:15:\"remote_selected\";a:0:{}}','no'),(132,'wpvivid_common_setting','a:10:{s:18:\"max_execution_time\";i:900;s:17:\"log_save_location\";s:26:\"wpvividbackups/wpvivid_log\";s:16:\"max_backup_count\";i:3;s:14:\"show_admin_bar\";b:1;s:14:\"domain_include\";b:1;s:15:\"estimate_backup\";b:1;s:16:\"max_resume_count\";i:6;s:12:\"memory_limit\";s:4:\"256M\";s:20:\"restore_memory_limit\";s:4:\"256M\";s:12:\"migrate_size\";s:4:\"2048\";}','no'),(133,'wpvivid_init','init','no'),(134,'wpvivid_backup_list','a:0:{}','no'),(135,'wpvivid_remote_init','init','no'),(136,'wpvivid_do_activation_redirect','1','yes'),(147,'fs_active_plugins','O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:26:\"error-log-monitor/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.4.3\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1651952767;s:11:\"plugin_path\";s:28:\"error-log-monitor/plugin.php\";}}s:7:\"abspath\";s:14:\"/var/www/site/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:28:\"error-log-monitor/plugin.php\";s:8:\"sdk_path\";s:26:\"error-log-monitor/freemius\";s:7:\"version\";s:5:\"2.4.3\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1651952767;}}','yes'),(148,'fs_debug_mode','','yes'),(149,'fs_accounts','a:4:{s:21:\"id_slug_type_path_map\";a:1:{i:2379;a:3:{s:4:\"slug\";s:17:\"error-log-monitor\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:28:\"error-log-monitor/plugin.php\";}}s:11:\"plugin_data\";a:1:{s:17:\"error-log-monitor\";a:11:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:28:\"error-log-monitor/plugin.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1651952767;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.3\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"1.7.2\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;}}s:13:\"file_slug_map\";a:1:{s:28:\"error-log-monitor/plugin.php\";s:17:\"error-log-monitor\";}s:7:\"plugins\";a:1:{s:17:\"error-log-monitor\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:17:\"Error Log Monitor\";s:4:\"slug\";s:17:\"error-log-monitor\";s:12:\"premium_slug\";s:25:\"error-log-monitor-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:28:\"error-log-monitor/plugin.php\";s:7:\"version\";s:5:\"1.7.2\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_5b9b22d279f81369f3e39d6225e4c\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"2379\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:1;}}}','yes'),(156,'simple_history_db_version','5','yes'),(157,'simple_history_show_as_page','1','yes'),(158,'simple_history_show_on_dashboard','1','yes'),(159,'simple_history_enable_rss_feed','0','yes'),(160,'simple_history_rss_secret','vtqtuhdmcjqjtaymlfvw','yes'),(164,'wp_smtp_options','a:9:{s:4:\"from\";s:0:\"\";s:8:\"fromname\";s:0:\"\";s:4:\"host\";s:0:\"\";s:10:\"smtpsecure\";s:0:\"\";s:4:\"port\";s:0:\"\";s:8:\"smtpauth\";s:3:\"yes\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";}','yes'),(168,'wp_statistics','a:27:{s:9:\"robotlist\";s:1715:\"007ac9\n5bot\nA6-Indexer\nAbachoBOT\naccoona\nAcoiRobot\nAddThis.com\nADmantX\nAdsBot-Google\nadvbot\nAhrefsBot\naiHitBot\nalexa\nalphabot\nAltaVista\nAntivirusPro\nanyevent\nappie\nApplebot\narchive.org_bot\nAsk Jeeves\nASPSeek\nBaiduspider\nBenjojo\nBeetleBot\nbingbot\nBlekkobot\nblexbot\nBOT for JCE\nbubing\nButterfly\ncbot\nclamantivirus\ncliqzbot\nclumboot\ncoccoc\ncrawler\nCrocCrawler\ncrowsnest.tv\ndbot\ndl2bot\ndotbot\ndownloadbot\nduckduckgo\nDumbot\nEasouSpider\neStyle\nEveryoneSocialBot\nExabot\nezooms\nfacebook.com\nfacebookexternalhit\nFAST\nFeedfetcher-Google\nfeedzirra\nfindxbot\nFirfly\nFriendFeedBot\nfroogle\nGeonaBot\nGigabot\ngirafabot\ngimme60bot\nglbot\nGooglebot\nGroupHigh\nia_archiver\nIDBot\nInfoSeek\ninktomi\nIstellaBot\njetmon\nKraken\nLeikibot\nlinkapediabot\nlinkdexbot\nLinkpadBot\nLoadTimeBot\nlooksmart\nltx71\nLycos\nMail.RU_Bot\nMe.dium\nmeanpathbot\nmediabot\nmedialbot\nMediapartners-Google\nMJ12bot\nmsnbot\nMojeekBot\nmonobot\nmoreover\nMRBOT\nNationalDirectory\nNerdyBot\nNetcraftSurveyAgent\nniki-bot\nnutch\nOpenbot\nOrangeBot\nowler\np4Bot\nPaperLiBot\npageanalyzer\nPagesInventory\nPimonster\nporkbun\npr-cy\nproximic\npwbot\nr4bot\nrabaz\nRambler\nRankivabot\nrevip\nriddler\nrogerbot\nScooter\nScrubby\nscrapy.org\nSearchmetricsBot\nsees.co\nSemanticBot\nSemrushBot\nSeznamBot\nsfFeedReader\nshareaholic-bot\nsistrix\nSiteExplorer\nSlurp\nSocialradarbot\nSocialSearch\nSogou web spider\nSpade\nspbot\nSpiderLing\nSputnikBot\nSuperfeedr\nSurveyBot\nTechnoratiSnoop\nTECNOSEEK\nTeoma\ntrendictionbot\nTweetmemeBot\nTwiceler\nTwitterbot\nTwitturls\nu2bot\nuMBot-LN\nuni5download\nunrulymedia\nUptimeRobot\nURL_Spider_SQL\nVagabondo\nvBSEO\nWASALive-Bot\nWebAlta Crawler\nWebBug\nWebFindBot\nWebMasterAid\nWeSEE\nWotbox\nwsowner\nwsr-agent\nwww.galaxy.com\nx100bot\nXoviBot\nxzybot\nyandex\nYahoo\nYammybot\nYoudaoBot\nZyBorg\nZemlyaCrawl\";s:13:\"anonymize_ips\";b:0;s:5:\"geoip\";b:0;s:10:\"useronline\";b:1;s:6:\"visits\";b:1;s:8:\"visitors\";b:1;s:5:\"pages\";b:1;s:12:\"check_online\";i:120;s:8:\"menu_bar\";b:0;s:11:\"coefficient\";i:1;s:12:\"stats_report\";b:0;s:11:\"time_report\";s:5:\"daily\";s:11:\"send_report\";s:4:\"mail\";s:14:\"content_report\";s:0:\"\";s:12:\"update_geoip\";b:1;s:8:\"store_ua\";b:0;s:21:\"exclude_administrator\";b:1;s:18:\"disable_se_clearch\";b:1;s:16:\"disable_se_qwant\";b:1;s:16:\"disable_se_baidu\";b:1;s:14:\"disable_se_ask\";b:1;s:8:\"map_type\";s:6:\"jqvmap\";s:18:\"force_robot_update\";b:1;s:9:\"ip_method\";s:11:\"REMOTE_ADDR\";s:17:\"exclude_loginpage\";b:1;s:12:\"exclude_404s\";b:1;s:13:\"exclude_feeds\";b:1;}','yes'),(169,'wp_statistics_plugin_version','13.2.1','yes'),(170,'wp_statistics_disable_addons','yes','yes'),(171,'widget_wp_statistics_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(172,'wp_statistics_check_user_online','1651952941','yes'),(179,'yoast_migrations_free','a:1:{s:7:\"version\";s:4:\"18.8\";}','yes'),(180,'wpseo','a:56:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:13:\"first_install\";s:29:\"indexables_indexing_completed\";b:0;s:7:\"version\";s:4:\"18.8\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1651952846;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:0:\"\";s:8:\"home_url\";s:0:\"\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:36:\"dismiss_configuration_workout_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1651952846;}','yes'),(181,'wpseo_titles','a:106:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}','yes'),(182,'wpseo_social','a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";}','yes'),(183,'rewrite_rules','','yes'),(187,'activity_log_db_version','1.0','yes'),(191,'yydev_tagmanager_settings','####exclude_users####exclude_option####exclude_ids####google_analytics_id####yandex_metrika_id####wp_body_open####add_plugin_to_settings***####none####none################0####0','yes'),(192,'yydev_tag_manager__version','3.0.1','yes'),(196,'widget_black-studio-tinymce','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(200,'ws_menu_editor','a:28:{s:22:\"hide_advanced_settings\";b:1;s:16:\"show_extra_icons\";b:0;s:11:\"custom_menu\";N;s:19:\"custom_network_menu\";N;s:18:\"first_install_time\";i:1651952886;s:21:\"display_survey_notice\";b:1;s:17:\"plugin_db_version\";i:140;s:24:\"security_logging_enabled\";b:0;s:17:\"menu_config_scope\";s:6:\"global\";s:13:\"plugin_access\";s:14:\"manage_options\";s:15:\"allowed_user_id\";N;s:28:\"plugins_page_allowed_user_id\";N;s:27:\"show_deprecated_hide_button\";b:1;s:37:\"dashboard_hiding_confirmation_enabled\";b:1;s:21:\"submenu_icons_enabled\";s:9:\"if_custom\";s:22:\"force_custom_dashicons\";b:1;s:16:\"ui_colour_scheme\";s:7:\"classic\";s:13:\"visible_users\";a:0:{}s:23:\"show_plugin_menu_notice\";b:1;s:20:\"unused_item_position\";s:8:\"relative\";s:23:\"unused_item_permissions\";s:9:\"unchanged\";s:15:\"error_verbosity\";i:2;s:20:\"compress_custom_menu\";b:0;s:20:\"wpml_support_enabled\";b:1;s:24:\"bbpress_override_enabled\";b:0;s:20:\"deep_nesting_enabled\";N;s:24:\"was_nesting_ever_changed\";b:0;s:16:\"is_active_module\";a:1:{s:19:\"highlight-new-menus\";b:0;}}','yes'),(216,'wp-structuring-markup','a:1:{s:7:\"version\";s:5:\"4.8.1\";}','yes'),(220,'widget_wp_user_avatar_profile','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(221,'widget_pp_form','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(222,'widget_pp_tabbed_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(223,'widget_pp_user_panel_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(230,'fa_userloginhostory_version','2.1.0','yes'),(237,'_transient_timeout_llar_welcome_redirect','1651953005','no'),(238,'_transient_llar_welcome_redirect','1','no'),(239,'limit_login_activation_timestamp','1651952976','no'),(240,'limit_login_notice_enable_notify_timestamp','1649188176','no'),(247,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.5.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1651952990;s:7:\"version\";s:5:\"5.5.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,4,'_form','<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),(4,4,'_mail','a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:26:\"[_site_title] <wordpress@>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),(5,4,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:26:\"[_site_title] <wordpress@>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),(6,4,'_messages','a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),(7,4,'_additional_settings',''),(8,4,'_locale','en_US');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-05-07 19:44:58','2022-05-07 19:44:58','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2022-05-07 19:44:58','2022-05-07 19:44:58','',0,'http://dev-siter.atl/?p=1',0,'post','',1),(2,1,'2022-05-07 19:44:58','2022-05-07 19:44:58','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://dev-siter.atl/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2022-05-07 19:44:58','2022-05-07 19:44:58','',0,'http://dev-siter.atl/?page_id=2',0,'page','',0),(3,1,'2022-05-07 19:44:58','2022-05-07 19:44:58','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://dev-siter.atl.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2022-05-07 19:44:58','2022-05-07 19:44:58','',0,'http://dev-siter.atl/?page_id=3',0,'page','',0),(4,0,'2022-05-07 19:49:50','2022-05-07 19:49:50','<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2022-05-07 19:49:50','2022-05-07 19:49:50','',0,'http://dev-siter.atl/?post_type=wpcf7_contact_form&p=4',0,'wpcf7_contact_form','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_simple_history`
--

DROP TABLE IF EXISTS `wp_simple_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_simple_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `logger` varchar(30) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `occasionsID` varchar(32) DEFAULT NULL,
  `initiator` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `loggerdate` (`logger`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_simple_history`
--

LOCK TABLES `wp_simple_history` WRITE;
/*!40000 ALTER TABLE `wp_simple_history` DISABLE KEYS */;
INSERT INTO `wp_simple_history` VALUES (1,'2022-05-07 19:46:37','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','2e7b29d3974363e6f632a673a7b68900','wp_cli'),(2,'2022-05-07 19:46:37','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','eda8b167767204de94707f65499b9833','wp_cli'),(3,'2022-05-07 19:46:37','SimpleLogger','info','Because Simple History was only recently installed, this feed does not display many events yet. As long as the plugin remains activated you will soon see detailed information about page edits, plugin updates, users logging in, and much more.','2ad0ab965d6728820180feeaab627fcf','wp'),(4,'2022-05-07 19:46:37','SimpleLogger','info','Welcome to Simple History!\n\nThis is the main history feed. It will contain events that this plugin has logged.','0c4babaacbe315745cbb536eaa41278c','wp'),(5,'2022-05-07 19:46:43','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','17381db60de1746cf8f0d022fb2c1f70','wp_cli'),(6,'2022-05-07 19:46:43','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','5ed162dea3f2094cfa7e0d1dba4cbb0d','wp_cli'),(7,'2022-05-07 19:46:44','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','2e7b29d3974363e6f632a673a7b68900','wp_cli'),(8,'2022-05-07 19:46:44','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','eda8b167767204de94707f65499b9833','wp_cli'),(9,'2022-05-07 19:46:59','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','0c910f09b24181885e0eafafd4dc5a72','wp_cli'),(10,'2022-05-07 19:46:59','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','a0df55bd5af8491cb3774e9ad59bacc7','wp_cli'),(11,'2022-05-07 19:47:07','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','b046a5cb40367b1c8da77cea5b538ecd','wp_cli'),(12,'2022-05-07 19:47:07','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','c96c88bbcd2ea922d6339cb912ed4c7b','wp_cli'),(13,'2022-05-07 19:47:25','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','63548d2d79285c654ebbdae2b9b91a2b','wp_cli'),(14,'2022-05-07 19:47:26','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','931163ca46cfcd121c077e337c4be299','wp_cli'),(15,'2022-05-07 19:47:40','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','3119ab5b33869f55dc5e9c59c210d23f','wp_cli'),(16,'2022-05-07 19:47:40','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','404ad5a3a92ed363ed2c17b55044c853','wp_cli'),(17,'2022-05-07 19:47:50','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','a162c8eeaea4ae7d7a8bf296094cef8a','wp_cli'),(18,'2022-05-07 19:47:50','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','4ce9cf86c14bce355185210dab72297c','wp_cli'),(19,'2022-05-07 19:47:57','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','818c33964b09f01575c1ee58caf73d4d','wp_cli'),(20,'2022-05-07 19:47:57','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','153619813510002edb15f5e7d87f2c51','wp_cli'),(21,'2022-05-07 19:48:06','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','c84f8ccd10eef65a5f49f074c5620d8b','wp_cli'),(22,'2022-05-07 19:48:06','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','b4be9077cd332428570d0cf9e49a989b','wp_cli'),(23,'2022-05-07 19:48:18','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','155249e1f57db94b91d3b6e40385a372','wp_cli'),(24,'2022-05-07 19:48:18','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','338bc8ec71a5cdfb3865e428c0afeadb','wp_cli'),(25,'2022-05-07 19:48:24','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','240907cc43307ea608b1c2758b776a01','wp_cli'),(26,'2022-05-07 19:48:24','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','59f5b2eb756dd2dc3eb033e85195e01b','wp_cli'),(27,'2022-05-07 19:48:32','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','2743c801d58bb461a0193718f2d80029','wp_cli'),(28,'2022-05-07 19:48:32','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','10a46b2d3d7dc8f509c8ca4f96d8add3','wp_cli'),(29,'2022-05-07 19:48:39','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','a3e541e01bf0266c6ae6384a7c26d80f','wp_cli'),(30,'2022-05-07 19:48:39','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','3a24195ea501caa991dce7b95a757b1b','wp_cli'),(31,'2022-05-07 19:48:46','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','c71db160b631ab57aa0e10372cb1b490','wp_cli'),(32,'2022-05-07 19:48:46','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','4567c34bbf24186ee5033d4a86dfa65d','wp_cli'),(33,'2022-05-07 19:48:59','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','e7a5cfa4ae2ffcd044d84f9b07ec9f9f','wp_cli'),(34,'2022-05-07 19:48:59','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','5406c42b72ff8c071c25aea18ff36acd','wp_cli'),(35,'2022-05-07 19:49:07','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','d77b88ed4483df6d6854c3b797509b32','wp_cli'),(36,'2022-05-07 19:49:07','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','a1069782f0937d8bbbe0a478fc1605bc','wp_cli'),(37,'2022-05-07 19:49:15','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','8d3974bac3b1060ab13bb37613710fee','wp_cli'),(38,'2022-05-07 19:49:15','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','2df7fe1ecc50c2f55596946629f01bc0','wp_cli'),(39,'2022-05-07 19:49:25','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','69fb21edfb0fdadebc78c1b7e37957af','wp_cli'),(40,'2022-05-07 19:49:25','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','66183d4215dc5f8a3faa8c343c078b29','wp_cli'),(41,'2022-05-07 19:49:35','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','3e59806a27521d0d918ffcbe1504e51b','wp_cli'),(42,'2022-05-07 19:49:35','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','9141867e2d1493c560b647abdfbe1112','wp_cli'),(43,'2022-05-07 19:49:42','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','a2e46b689930795a98042f4025ff228e','wp_cli'),(44,'2022-05-07 19:49:42','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','93cb844777fa2ed9430347c999cf719b','wp_cli'),(45,'2022-05-07 19:49:49','SimplePluginLogger','info','Installed plugin \"{plugin_name}\"','49b8034a293554b3095427ebaf82b570','wp_cli'),(46,'2022-05-07 19:49:50','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','3f2640080b8962f69db8648d2866e0df','wp_cli'),(47,'2022-05-07 19:49:55','SimplePluginLogger','info','Activated plugin \"{plugin_name}\"','717d3ebc443ca136d2809c0d74aa5c62','wp_cli');
/*!40000 ALTER TABLE `wp_simple_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_simple_history_contexts`
--

DROP TABLE IF EXISTS `wp_simple_history_contexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_simple_history_contexts` (
  `context_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `history_id` bigint(20) unsigned NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`context_id`),
  KEY `history_id` (`history_id`),
  KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=444 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_simple_history_contexts`
--

LOCK TABLES `wp_simple_history_contexts` WRITE;
/*!40000 ALTER TABLE `wp_simple_history_contexts` DISABLE KEYS */;
INSERT INTO `wp_simple_history_contexts` VALUES (1,1,'plugin_name','Simple History'),(2,1,'plugin_description','Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.'),(3,1,'plugin_url','https://simple-history.com'),(4,1,'plugin_version','3.3.0'),(5,1,'plugin_author','Pär Thernström'),(6,1,'_message_key','plugin_installed'),(7,1,'_server_remote_addr','127.0.0.0'),(8,2,'plugin_name','Simple History'),(9,2,'plugin_description','Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.'),(10,2,'plugin_url','https://simple-history.com'),(11,2,'plugin_version','3.3.0'),(12,2,'plugin_author','Pär Thernström'),(13,2,'plugin_slug','simple-history'),(14,2,'plugin_title','<a href=\"https://simple-history.com/\">Simple History</a>'),(15,2,'_message_key','plugin_activated'),(16,2,'_server_remote_addr','127.0.0.0'),(17,3,'_server_remote_addr','127.0.0.0'),(18,4,'_server_remote_addr','127.0.0.0'),(19,5,'plugin_slug','wp-smtp'),(20,5,'plugin_name','WP SMTP'),(21,5,'plugin_version','1.2.5'),(22,5,'plugin_author','WPChill'),(23,5,'plugin_requires_wp',''),(24,5,'plugin_requires_php',''),(25,5,'plugin_install_source','web'),(26,5,'plugin_description','WP SMTP can help us to send emails via SMTP instead of the PHP mail() function and email logger built-in. <cite>By <a href=\"https://www.wpchill.com/\">WPChill</a>.</cite>'),(27,5,'plugin_url',''),(28,5,'_message_key','plugin_installed'),(29,5,'_server_remote_addr','127.0.0.0'),(30,6,'plugin_name','WP SMTP'),(31,6,'plugin_slug','wp-smtp'),(32,6,'plugin_title','WP SMTP'),(33,6,'plugin_description','WP SMTP can help us to send emails via SMTP instead of the PHP mail() function and email logger built-in. <cite>By <a href=\"https://www.wpchill.com/\">WPChill</a>.</cite>'),(34,6,'plugin_author','<a href=\"https://www.wpchill.com/\">WPChill</a>'),(35,6,'plugin_version','1.2.5'),(36,6,'plugin_url',''),(37,6,'_message_key','plugin_activated'),(38,6,'_server_remote_addr','127.0.0.0'),(39,7,'plugin_name','Simple History'),(40,7,'plugin_description','Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.'),(41,7,'plugin_url','https://simple-history.com'),(42,7,'plugin_version','3.3.0'),(43,7,'plugin_author','Pär Thernström'),(44,7,'_message_key','plugin_installed'),(45,7,'_server_remote_addr','127.0.0.0'),(46,8,'plugin_name','Simple History'),(47,8,'plugin_description','Plugin that logs various things that occur in WordPress and then presents those events in a very nice GUI.'),(48,8,'plugin_url','https://simple-history.com'),(49,8,'plugin_version','3.3.0'),(50,8,'plugin_author','Pär Thernström'),(51,8,'plugin_slug','simple-history'),(52,8,'plugin_title','<a href=\"https://simple-history.com/\">Simple History</a>'),(53,8,'_message_key','plugin_activated'),(54,8,'_server_remote_addr','127.0.0.0'),(55,9,'plugin_slug','wp-statistics'),(56,9,'plugin_name','WP Statistics'),(57,9,'plugin_version','13.2.1'),(58,9,'plugin_author','VeronaLabs'),(59,9,'plugin_requires_wp',''),(60,9,'plugin_requires_php',''),(61,9,'plugin_install_source','web'),(62,9,'plugin_description','This plugin gives you the complete information on your website&#8217;s visitors. <cite>By <a href=\"https://veronalabs.com/\">VeronaLabs</a>.</cite>'),(63,9,'plugin_url','https://wp-statistics.com/'),(64,9,'_message_key','plugin_installed'),(65,9,'_server_remote_addr','127.0.0.0'),(66,10,'plugin_name','WP Statistics'),(67,10,'plugin_slug','wp-statistics'),(68,10,'plugin_title','<a href=\"https://wp-statistics.com/\">WP Statistics</a>'),(69,10,'plugin_description','This plugin gives you the complete information on your website&#8217;s visitors. <cite>By <a href=\"https://veronalabs.com/\">VeronaLabs</a>.</cite>'),(70,10,'plugin_author','<a href=\"https://veronalabs.com/\">VeronaLabs</a>'),(71,10,'plugin_version','13.2.1'),(72,10,'plugin_url','https://wp-statistics.com/'),(73,10,'_message_key','plugin_activated'),(74,10,'_server_remote_addr','127.0.0.0'),(75,11,'plugin_slug','wp-super-cache'),(76,11,'plugin_name','WP Super Cache'),(77,11,'plugin_version','1.7.7'),(78,11,'plugin_author','Automattic'),(79,11,'plugin_requires_wp',''),(80,11,'plugin_requires_php',''),(81,11,'plugin_install_source','web'),(82,11,'plugin_description','Very fast caching plugin for WordPress. <cite>By <a href=\"https://automattic.com/\">Automattic</a>.</cite>'),(83,11,'plugin_url','https://wordpress.org/plugins/wp-super-cache/'),(84,11,'_message_key','plugin_installed'),(85,11,'_server_remote_addr','127.0.0.0'),(86,12,'plugin_name','WP Super Cache'),(87,12,'plugin_slug','wp-super-cache'),(88,12,'plugin_title','<a href=\"https://wordpress.org/plugins/wp-super-cache/\">WP Super Cache</a>'),(89,12,'plugin_description','Very fast caching plugin for WordPress. <cite>By <a href=\"https://automattic.com/\">Automattic</a>.</cite>'),(90,12,'plugin_author','<a href=\"https://automattic.com/\">Automattic</a>'),(91,12,'plugin_version','1.7.7'),(92,12,'plugin_url','https://wordpress.org/plugins/wp-super-cache/'),(93,12,'_message_key','plugin_activated'),(94,12,'_server_remote_addr','127.0.0.0'),(95,13,'plugin_slug','wordpress-seo'),(96,13,'plugin_name','Yoast SEO'),(97,13,'plugin_version','18.8'),(98,13,'plugin_author','Team Yoast'),(99,13,'plugin_requires_wp','5.8'),(100,13,'plugin_requires_php','5.6.20'),(101,13,'plugin_install_source','web'),(102,13,'plugin_description','The first true all-in-one SEO solution for WordPress, including on-page content analysis, XML sitemaps and much more. <cite>By <a href=\"https://yoa.st/1uk\">Team Yoast</a>.</cite>'),(103,13,'plugin_url','https://yoa.st/1uj'),(104,13,'_message_key','plugin_installed'),(105,13,'_server_remote_addr','127.0.0.0'),(106,14,'plugin_name','Yoast SEO'),(107,14,'plugin_slug','wordpress-seo'),(108,14,'plugin_title','<a href=\"https://yoa.st/1uj\">Yoast SEO</a>'),(109,14,'plugin_description','The first true all-in-one SEO solution for WordPress, including on-page content analysis, XML sitemaps and much more. <cite>By <a href=\"https://yoa.st/1uk\">Team Yoast</a>.</cite>'),(110,14,'plugin_author','<a href=\"https://yoa.st/1uk\">Team Yoast</a>'),(111,14,'plugin_version','18.8'),(112,14,'plugin_url','https://yoa.st/1uj'),(113,14,'_message_key','plugin_activated'),(114,14,'_server_remote_addr','127.0.0.0'),(115,15,'plugin_slug','aryo-activity-log'),(116,15,'plugin_name','Activity Log'),(117,15,'plugin_version','2.8.3'),(118,15,'plugin_author','Activity Log Team'),(119,15,'plugin_requires_wp',''),(120,15,'plugin_requires_php',''),(121,15,'plugin_install_source','web'),(122,15,'plugin_description','Get aware of any activities that are taking place on your dashboard! Imagine it like a black-box for your WordPress site. e.g. post was deleted, plugin was activated, user logged in or logged out &#8211; it&#8217;s all these for you to see. <cite>By <a href=\"https://activitylog.io/?utm_source=wp-plugins&#038;utm_campaign=author-uri&#038;utm_medium=wp-dash\">Activity Log Team</a>.</cite>'),(123,15,'plugin_url','https://activitylog.io/?utm_source=wp-plugins&#038;utm_campaign=plugin-uri&#038;utm_medium=wp-dash'),(124,15,'_message_key','plugin_installed'),(125,15,'_server_remote_addr','127.0.0.0'),(126,16,'plugin_name','Activity Log'),(127,16,'plugin_slug','aryo-activity-log'),(128,16,'plugin_title','<a href=\"https://activitylog.io/?utm_source=wp-plugins&#038;utm_campaign=plugin-uri&#038;utm_medium=wp-dash\">Activity Log</a>'),(129,16,'plugin_description','Get aware of any activities that are taking place on your dashboard! Imagine it like a black-box for your WordPress site. e.g. post was deleted, plugin was activated, user logged in or logged out &#8211; it&#8217;s all these for you to see. <cite>By <a href=\"https://activitylog.io/?utm_source=wp-plugins&#038;utm_campaign=author-uri&#038;utm_medium=wp-dash\">Activity Log Team</a>.</cite>'),(130,16,'plugin_author','<a href=\"https://activitylog.io/?utm_source=wp-plugins&#038;utm_campaign=author-uri&#038;utm_medium=wp-dash\">Activity Log Team</a>'),(131,16,'plugin_version','2.8.3'),(132,16,'plugin_url','https://activitylog.io/?utm_source=wp-plugins&#038;utm_campaign=plugin-uri&#038;utm_medium=wp-dash'),(133,16,'_message_key','plugin_activated'),(134,16,'_server_remote_addr','127.0.0.0'),(135,17,'plugin_slug','tag-manager-header-body-footer'),(136,17,'plugin_name','YYDevelopment - Tag Manager - Header, Body And Footer'),(137,17,'plugin_version','3.0.0'),(138,17,'plugin_author','YYDevelopment'),(139,17,'plugin_requires_wp',''),(140,17,'plugin_requires_php',''),(141,17,'plugin_install_source','web'),(142,17,'plugin_description','Simple plugin that allow you add head, body and footer codes for google tag manager, analytics &amp; facebook pixel codes. <cite>By <a href=\"https://www.yydevelopment.com/\">YYDevelopment</a>.</cite>'),(143,17,'plugin_url','https://www.yydevelopment.com/yydevelopment-wordpress-plugins/'),(144,17,'_message_key','plugin_installed'),(145,17,'_server_remote_addr','127.0.0.0'),(146,18,'plugin_name','YYDevelopment - Tag Manager - Header, Body And Footer'),(147,18,'plugin_slug','tag-manager-header-body-footer'),(148,18,'plugin_title','<a href=\"https://www.yydevelopment.com/yydevelopment-wordpress-plugins/\">YYDevelopment - Tag Manager - Header, Body And Footer</a>'),(149,18,'plugin_description','Simple plugin that allow you add head, body and footer codes for google tag manager, analytics &amp; facebook pixel codes. <cite>By <a href=\"https://www.yydevelopment.com/\">YYDevelopment</a>.</cite>'),(150,18,'plugin_author','<a href=\"https://www.yydevelopment.com/\">YYDevelopment</a>'),(151,18,'plugin_version','3.0.0'),(152,18,'plugin_url','https://www.yydevelopment.com/yydevelopment-wordpress-plugins/'),(153,18,'_message_key','plugin_activated'),(154,18,'_server_remote_addr','127.0.0.0'),(155,19,'plugin_slug','black-studio-tinymce-widget'),(156,19,'plugin_name','Black Studio TinyMCE Widget'),(157,19,'plugin_version','2.7.0'),(158,19,'plugin_author','Black Studio'),(159,19,'plugin_requires_wp','3.1'),(160,19,'plugin_requires_php',''),(161,19,'plugin_install_source','web'),(162,19,'plugin_description','Adds a new &#8220;Visual Editor&#8221; widget type based on the native WordPress TinyMCE editor. <cite>By <a href=\"https://www.blackstudio.it\">Black Studio</a>.</cite>'),(163,19,'plugin_url','https://wordpress.org/plugins/black-studio-tinymce-widget/'),(164,19,'_message_key','plugin_installed'),(165,19,'_server_remote_addr','127.0.0.0'),(166,20,'plugin_name','Black Studio TinyMCE Widget'),(167,20,'plugin_slug','black-studio-tinymce-widget'),(168,20,'plugin_title','<a href=\"https://wordpress.org/plugins/black-studio-tinymce-widget/\">Black Studio TinyMCE Widget</a>'),(169,20,'plugin_description','Adds a new &#8220;Visual Editor&#8221; widget type based on the native WordPress TinyMCE editor. <cite>By <a href=\"https://www.blackstudio.it\">Black Studio</a>.</cite>'),(170,20,'plugin_author','<a href=\"https://www.blackstudio.it\">Black Studio</a>'),(171,20,'plugin_version','2.7.0'),(172,20,'plugin_url','https://wordpress.org/plugins/black-studio-tinymce-widget/'),(173,20,'_message_key','plugin_activated'),(174,20,'_server_remote_addr','127.0.0.0'),(175,21,'plugin_slug','admin-menu-editor'),(176,21,'plugin_name','Admin Menu Editor'),(177,21,'plugin_version','1.10.1'),(178,21,'plugin_author','Janis Elsts'),(179,21,'plugin_requires_wp',''),(180,21,'plugin_requires_php',''),(181,21,'plugin_install_source','web'),(182,21,'plugin_description','Lets you directly edit the WordPress admin menu. You can re-order, hide or rename existing menus, add custom menus and more. <cite>By <a href=\"http://w-shadow.com/blog/\">Janis Elsts</a>.</cite>'),(183,21,'plugin_url','http://w-shadow.com/blog/2008/12/20/admin-menu-editor-for-wordpress/'),(184,21,'_message_key','plugin_installed'),(185,21,'_server_remote_addr','127.0.0.0'),(186,22,'plugin_name','Admin Menu Editor'),(187,22,'plugin_slug','admin-menu-editor'),(188,22,'plugin_title','<a href=\"http://w-shadow.com/blog/2008/12/20/admin-menu-editor-for-wordpress/\">Admin Menu Editor</a>'),(189,22,'plugin_description','Lets you directly edit the WordPress admin menu. You can re-order, hide or rename existing menus, add custom menus and more. <cite>By <a href=\"http://w-shadow.com/blog/\">Janis Elsts</a>.</cite>'),(190,22,'plugin_author','<a href=\"http://w-shadow.com/blog/\">Janis Elsts</a>'),(191,22,'plugin_version','1.10.1'),(192,22,'plugin_url','http://w-shadow.com/blog/2008/12/20/admin-menu-editor-for-wordpress/'),(193,22,'_message_key','plugin_activated'),(194,22,'_server_remote_addr','127.0.0.0'),(195,23,'plugin_slug','tinymce-advanced'),(196,23,'plugin_name','Advanced Editor Tools (previously TinyMCE Advanced)'),(197,23,'plugin_version','5.6.0'),(198,23,'plugin_author','Automattic'),(199,23,'plugin_requires_wp','5.6'),(200,23,'plugin_requires_php','5.6'),(201,23,'plugin_install_source','web'),(202,23,'plugin_description','Extends and enhances the block editor (Gutenberg) and the classic editor (TinyMCE). <cite>By <a href=\"https://automattic.com\">Automattic</a>.</cite>'),(203,23,'plugin_url','https://wordpress.org/plugins/tinymce-advanced/'),(204,23,'_message_key','plugin_installed'),(205,23,'_server_remote_addr','127.0.0.0'),(206,24,'plugin_name','Advanced Editor Tools (previously TinyMCE Advanced)'),(207,24,'plugin_slug','tinymce-advanced'),(208,24,'plugin_title','<a href=\"https://wordpress.org/plugins/tinymce-advanced/\">Advanced Editor Tools (previously TinyMCE Advanced)</a>'),(209,24,'plugin_description','Extends and enhances the block editor (Gutenberg) and the classic editor (TinyMCE). <cite>By <a href=\"https://automattic.com\">Automattic</a>.</cite>'),(210,24,'plugin_author','<a href=\"https://automattic.com\">Automattic</a>'),(211,24,'plugin_version','5.6.0'),(212,24,'plugin_url','https://wordpress.org/plugins/tinymce-advanced/'),(213,24,'_message_key','plugin_activated'),(214,24,'_server_remote_addr','127.0.0.0'),(215,25,'plugin_slug','disable-xml-rpc'),(216,25,'plugin_name','Disable XML-RPC'),(217,25,'plugin_version','1.0.1'),(218,25,'plugin_author','Philip Erb'),(219,25,'plugin_requires_wp',''),(220,25,'plugin_requires_php',''),(221,25,'plugin_install_source','web'),(222,25,'plugin_description','This plugin disables XML-RPC API in WordPress 3.5+, which is enabled by default. <cite>By <a href=\"http://www.philerb.com\">Philip Erb</a>.</cite>'),(223,25,'plugin_url','http://www.philerb.com/wp-plugins/'),(224,25,'_message_key','plugin_installed'),(225,25,'_server_remote_addr','127.0.0.0'),(226,26,'plugin_name','Disable XML-RPC'),(227,26,'plugin_slug','disable-xml-rpc'),(228,26,'plugin_title','<a href=\"http://www.philerb.com/wp-plugins/\">Disable XML-RPC</a>'),(229,26,'plugin_description','This plugin disables XML-RPC API in WordPress 3.5+, which is enabled by default. <cite>By <a href=\"http://www.philerb.com\">Philip Erb</a>.</cite>'),(230,26,'plugin_author','<a href=\"http://www.philerb.com\">Philip Erb</a>'),(231,26,'plugin_version','1.0.1'),(232,26,'plugin_url','http://www.philerb.com/wp-plugins/'),(233,26,'_message_key','plugin_activated'),(234,26,'_server_remote_addr','127.0.0.0'),(235,27,'plugin_slug','simple-image-sizes'),(236,27,'plugin_name','Simple Image Sizes'),(237,27,'plugin_version','3.2.1'),(238,27,'plugin_author','Rahe'),(239,27,'plugin_requires_wp',''),(240,27,'plugin_requires_php',''),(241,27,'plugin_install_source','web'),(242,27,'plugin_description','Add options in media setting page for images sizes <cite>By <a href=\"http://nicolas-juen.fr\">Rahe</a>.</cite>'),(243,27,'plugin_url','https://github.com/Rahe/simple-image-sizes'),(244,27,'_message_key','plugin_installed'),(245,27,'_server_remote_addr','127.0.0.0'),(246,28,'plugin_name','Simple Image Sizes'),(247,28,'plugin_slug','simple-image-sizes'),(248,28,'plugin_title','<a href=\"https://github.com/Rahe/simple-image-sizes\">Simple Image Sizes</a>'),(249,28,'plugin_description','Add options in media setting page for images sizes <cite>By <a href=\"http://nicolas-juen.fr\">Rahe</a>.</cite>'),(250,28,'plugin_author','<a href=\"http://nicolas-juen.fr\">Rahe</a>'),(251,28,'plugin_version','3.2.1'),(252,28,'plugin_url','https://github.com/Rahe/simple-image-sizes'),(253,28,'_message_key','plugin_activated'),(254,28,'_server_remote_addr','127.0.0.0'),(255,29,'plugin_slug','force-regenerate-thumbnails'),(256,29,'plugin_name','Force Regenerate Thumbnails'),(257,29,'plugin_version','2.0.6'),(258,29,'plugin_author','Pedro Elsner'),(259,29,'plugin_requires_wp',''),(260,29,'plugin_requires_php',''),(261,29,'plugin_install_source','web'),(262,29,'plugin_description','Delete and REALLY force the regenerate thumbnail. <cite>By <a href=\"http://www.pedroelsner.com/\">Pedro Elsner</a>.</cite>'),(263,29,'plugin_url','http://pedroelsner.com/2012/08/forcando-a-atualizacao-de-thumbnails-no-wordpress'),(264,29,'_message_key','plugin_installed'),(265,29,'_server_remote_addr','127.0.0.0'),(266,30,'plugin_name','Force Regenerate Thumbnails'),(267,30,'plugin_slug','force-regenerate-thumbnails'),(268,30,'plugin_title','<a href=\"http://pedroelsner.com/2012/08/forcando-a-atualizacao-de-thumbnails-no-wordpress\">Force Regenerate Thumbnails</a>'),(269,30,'plugin_description','Delete and REALLY force the regenerate thumbnail. <cite>By <a href=\"http://www.pedroelsner.com/\">Pedro Elsner</a>.</cite>'),(270,30,'plugin_author','<a href=\"http://www.pedroelsner.com/\">Pedro Elsner</a>'),(271,30,'plugin_version','2.0.6'),(272,30,'plugin_url','http://pedroelsner.com/2012/08/forcando-a-atualizacao-de-thumbnails-no-wordpress'),(273,30,'_message_key','plugin_activated'),(274,30,'_server_remote_addr','127.0.0.0'),(275,31,'plugin_slug','wp-structuring-markup'),(276,31,'plugin_name','Markup (JSON-LD) structured in schema.org'),(277,31,'plugin_version','4.8.1'),(278,31,'plugin_author','Kazuya Takami'),(279,31,'plugin_requires_wp',''),(280,31,'plugin_requires_php',''),(281,31,'plugin_install_source','web'),(282,31,'plugin_description','Allows you to include schema.org JSON-LD syntax markup on your website <cite>By <a href=\"https://www.terakoya.work/\">Kazuya Takami</a>.</cite>'),(283,31,'plugin_url','https://github.com/miiitaka/wp-structuring-markup'),(284,31,'_message_key','plugin_installed'),(285,31,'_server_remote_addr','127.0.0.0'),(286,32,'plugin_name','Markup (JSON-LD) structured in schema.org'),(287,32,'plugin_slug','wp-structuring-markup'),(288,32,'plugin_title','<a href=\"https://github.com/miiitaka/wp-structuring-markup\">Markup (JSON-LD) structured in schema.org</a>'),(289,32,'plugin_description','Allows you to include schema.org JSON-LD syntax markup on your website <cite>By <a href=\"https://www.terakoya.work/\">Kazuya Takami</a>.</cite>'),(290,32,'plugin_author','<a href=\"https://www.terakoya.work/\">Kazuya Takami</a>'),(291,32,'plugin_version','4.8.1'),(292,32,'plugin_url','https://github.com/miiitaka/wp-structuring-markup'),(293,32,'_message_key','plugin_activated'),(294,32,'_server_remote_addr','127.0.0.0'),(295,33,'plugin_slug','wp-user-avatar'),(296,33,'plugin_name','ProfilePress'),(297,33,'plugin_version','3.2.11'),(298,33,'plugin_author','ProfilePress Team'),(299,33,'plugin_requires_wp',''),(300,33,'plugin_requires_php',''),(301,33,'plugin_install_source','web'),(302,33,'plugin_description','The modern WordPress membership and user profile plugin. <cite>By <a href=\"https://profilepress.net\">ProfilePress Team</a>.</cite>'),(303,33,'plugin_url','https://profilepress.net'),(304,33,'_message_key','plugin_installed'),(305,33,'_server_remote_addr','127.0.0.0'),(306,34,'plugin_name','ProfilePress'),(307,34,'plugin_slug','wp-user-avatar'),(308,34,'plugin_title','<a href=\"https://profilepress.net\">ProfilePress</a>'),(309,34,'plugin_description','The modern WordPress membership and user profile plugin. <cite>By <a href=\"https://profilepress.net\">ProfilePress Team</a>.</cite>'),(310,34,'plugin_author','<a href=\"https://profilepress.net\">ProfilePress Team</a>'),(311,34,'plugin_version','3.2.11'),(312,34,'plugin_url','https://profilepress.net'),(313,34,'_message_key','plugin_activated'),(314,34,'_server_remote_addr','127.0.0.0'),(315,35,'plugin_slug','robots-txt-editor'),(316,35,'plugin_name','Robots.txt Editor'),(317,35,'plugin_version','1.1.4'),(318,35,'plugin_author','Processby'),(319,35,'plugin_requires_wp',''),(320,35,'plugin_requires_php',''),(321,35,'plugin_install_source','web'),(322,35,'plugin_description','Robots.txt for WordPress <cite>By <a href=\"https://processby.com\">Processby</a>.</cite>'),(323,35,'plugin_url',''),(324,35,'_message_key','plugin_installed'),(325,35,'_server_remote_addr','127.0.0.0'),(326,36,'plugin_name','Robots.txt Editor'),(327,36,'plugin_slug','robots-txt-editor'),(328,36,'plugin_title','Robots.txt Editor'),(329,36,'plugin_description','Robots.txt for WordPress <cite>By <a href=\"https://processby.com\">Processby</a>.</cite>'),(330,36,'plugin_author','<a href=\"https://processby.com\">Processby</a>'),(331,36,'plugin_version','1.1.4'),(332,36,'plugin_url',''),(333,36,'_message_key','plugin_activated'),(334,36,'_server_remote_addr','127.0.0.0'),(335,37,'plugin_slug','user-login-history'),(336,37,'plugin_name','User Login History'),(337,37,'plugin_version','2.1.0'),(338,37,'plugin_author','Er Faiyaz Alam'),(339,37,'plugin_requires_wp',''),(340,37,'plugin_requires_php',''),(341,37,'plugin_install_source','web'),(342,37,'plugin_description','Helps you to know your website&#8217;s visitors by tracking their login related information like login/logout time, country, browser and many more. <cite>By <a href=\"http://userloginhistory.com/\">Er Faiyaz Alam</a>.</cite>'),(343,37,'plugin_url','http://userloginhistory.com/home/'),(344,37,'_message_key','plugin_installed'),(345,37,'_server_remote_addr','127.0.0.0'),(346,38,'plugin_name','User Login History'),(347,38,'plugin_slug','user-login-history'),(348,38,'plugin_title','<a href=\"http://userloginhistory.com/home/\">User Login History</a>'),(349,38,'plugin_description','Helps you to know your website&#8217;s visitors by tracking their login related information like login/logout time, country, browser and many more. <cite>By <a href=\"http://userloginhistory.com/\">Er Faiyaz Alam</a>.</cite>'),(350,38,'plugin_author','<a href=\"http://userloginhistory.com/\">Er Faiyaz Alam</a>'),(351,38,'plugin_version','2.1.0'),(352,38,'plugin_url','http://userloginhistory.com/home/'),(353,38,'_message_key','plugin_activated'),(354,38,'_server_remote_addr','127.0.0.0'),(355,39,'plugin_slug','wp-htaccess-editor'),(356,39,'plugin_name','WP Htaccess Editor'),(357,39,'plugin_version','1.70'),(358,39,'plugin_author','WebFactory Ltd'),(359,39,'plugin_requires_wp','4.0'),(360,39,'plugin_requires_php','5.2'),(361,39,'plugin_install_source','web'),(362,39,'plugin_description','Safe and easy way to edit the .htaccess file directly from WP admin without using FTP. <cite>By <a href=\"https://www.webfactoryltd.com/\">WebFactory Ltd</a>.</cite>'),(363,39,'plugin_url','https://wphtaccess.com/'),(364,39,'_message_key','plugin_installed'),(365,39,'_server_remote_addr','127.0.0.0'),(366,40,'plugin_name','WP Htaccess Editor'),(367,40,'plugin_slug','wp-htaccess-editor'),(368,40,'plugin_title','<a href=\"https://wphtaccess.com/\">WP Htaccess Editor</a>'),(369,40,'plugin_description','Safe and easy way to edit the .htaccess file directly from WP admin without using FTP. <cite>By <a href=\"https://www.webfactoryltd.com/\">WebFactory Ltd</a>.</cite>'),(370,40,'plugin_author','<a href=\"https://www.webfactoryltd.com/\">WebFactory Ltd</a>'),(371,40,'plugin_version','1.70'),(372,40,'plugin_url','https://wphtaccess.com/'),(373,40,'_message_key','plugin_activated'),(374,40,'_server_remote_addr','127.0.0.0'),(375,41,'plugin_slug','limit-login-attempts-reloaded'),(376,41,'plugin_name','Limit Login Attempts Reloaded'),(377,41,'plugin_version','2.25.1'),(378,41,'plugin_author','Limit Login Attempts Reloaded'),(379,41,'plugin_requires_wp',''),(380,41,'plugin_requires_php',''),(381,41,'plugin_install_source','web'),(382,41,'plugin_description','Block excessive login attempts and protect your site against brute force attacks. Simple, yet powerful tools to improve site performance. <cite>By <a href=\"https://www.limitloginattempts.com/\">Limit Login Attempts Reloaded</a>.</cite>'),(383,41,'plugin_url',''),(384,41,'_message_key','plugin_installed'),(385,41,'_server_remote_addr','127.0.0.0'),(386,42,'plugin_name','Limit Login Attempts Reloaded'),(387,42,'plugin_slug','limit-login-attempts-reloaded'),(388,42,'plugin_title','Limit Login Attempts Reloaded'),(389,42,'plugin_description','Block excessive login attempts and protect your site against brute force attacks. Simple, yet powerful tools to improve site performance. <cite>By <a href=\"https://www.limitloginattempts.com/\">Limit Login Attempts Reloaded</a>.</cite>'),(390,42,'plugin_author','<a href=\"https://www.limitloginattempts.com/\">Limit Login Attempts Reloaded</a>'),(391,42,'plugin_version','2.25.1'),(392,42,'plugin_url',''),(393,42,'_message_key','plugin_activated'),(394,42,'_server_remote_addr','127.0.0.0'),(395,43,'plugin_slug','simple-css'),(396,43,'plugin_name','Simple CSS'),(397,43,'plugin_version','1.1.1'),(398,43,'plugin_author','Tom Usborne'),(399,43,'plugin_requires_wp',''),(400,43,'plugin_requires_php',''),(401,43,'plugin_install_source','web'),(402,43,'plugin_description','Simply add CSS to your WordPress site using an awesome CSS editor or the live Customizer. <cite>By <a href=\"https://tomusborne.com\">Tom Usborne</a>.</cite>'),(403,43,'plugin_url','https://generatepress.com'),(404,43,'_message_key','plugin_installed'),(405,43,'_server_remote_addr','127.0.0.0'),(406,44,'plugin_name','Simple CSS'),(407,44,'plugin_slug','simple-css'),(408,44,'plugin_title','<a href=\"https://generatepress.com\">Simple CSS</a>'),(409,44,'plugin_description','Simply add CSS to your WordPress site using an awesome CSS editor or the live Customizer. <cite>By <a href=\"https://tomusborne.com\">Tom Usborne</a>.</cite>'),(410,44,'plugin_author','<a href=\"https://tomusborne.com\">Tom Usborne</a>'),(411,44,'plugin_version','1.1.1'),(412,44,'plugin_url','https://generatepress.com'),(413,44,'_message_key','plugin_activated'),(414,44,'_server_remote_addr','127.0.0.0'),(415,45,'plugin_slug','contact-form-7'),(416,45,'plugin_name','Contact Form 7'),(417,45,'plugin_version','5.5.6'),(418,45,'plugin_author','Takayuki Miyoshi'),(419,45,'plugin_requires_wp',''),(420,45,'plugin_requires_php',''),(421,45,'plugin_install_source','web'),(422,45,'plugin_description','Just another contact form plugin. Simple but flexible. <cite>By <a href=\"https://ideasilo.wordpress.com/\">Takayuki Miyoshi</a>.</cite>'),(423,45,'plugin_url','https://contactform7.com/'),(424,45,'_message_key','plugin_installed'),(425,45,'_server_remote_addr','127.0.0.0'),(426,46,'plugin_name','Contact Form 7'),(427,46,'plugin_slug','contact-form-7'),(428,46,'plugin_title','<a href=\"https://contactform7.com/\">Contact Form 7</a>'),(429,46,'plugin_description','Just another contact form plugin. Simple but flexible. <cite>By <a href=\"https://ideasilo.wordpress.com/\">Takayuki Miyoshi</a>.</cite>'),(430,46,'plugin_author','<a href=\"https://ideasilo.wordpress.com/\">Takayuki Miyoshi</a>'),(431,46,'plugin_version','5.5.6'),(432,46,'plugin_url','https://contactform7.com/'),(433,46,'_message_key','plugin_activated'),(434,46,'_server_remote_addr','127.0.0.0'),(435,47,'plugin_name','Carbon Fields'),(436,47,'plugin_slug','carbon-fields'),(437,47,'plugin_title','<a href=\"http://carbonfields.net/\">Carbon Fields</a>'),(438,47,'plugin_description','WordPress developer-friendly custom fields for post types, taxonomy terms, users, comments, widgets, options, navigation menus and more. <cite>By <a href=\"https://htmlburger.com/\">htmlburger</a>.</cite>'),(439,47,'plugin_author','<a href=\"https://htmlburger.com/\">htmlburger</a>'),(440,47,'plugin_version','3.3.4'),(441,47,'plugin_url','http://carbonfields.net/'),(442,47,'_message_key','plugin_activated'),(443,47,'_server_remote_addr','127.0.0.0');
/*!40000 ALTER TABLE `wp_simple_history_contexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_statistics_exclusions`
--

DROP TABLE IF EXISTS `wp_statistics_exclusions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_statistics_exclusions` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `reason` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `date` (`date`),
  KEY `reason` (`reason`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_statistics_exclusions`
--

LOCK TABLES `wp_statistics_exclusions` WRITE;
/*!40000 ALTER TABLE `wp_statistics_exclusions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_statistics_exclusions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_statistics_historical`
--

DROP TABLE IF EXISTS `wp_statistics_historical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_statistics_historical` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `uri` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `page_id` (`page_id`),
  UNIQUE KEY `uri` (`uri`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_statistics_historical`
--

LOCK TABLES `wp_statistics_historical` WRITE;
/*!40000 ALTER TABLE `wp_statistics_historical` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_statistics_historical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_statistics_pages`
--

DROP TABLE IF EXISTS `wp_statistics_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_statistics_pages` (
  `page_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uri` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `date_2` (`date`,`uri`),
  KEY `url` (`uri`),
  KEY `date` (`date`),
  KEY `id` (`id`),
  KEY `uri` (`uri`,`count`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_statistics_pages`
--

LOCK TABLES `wp_statistics_pages` WRITE;
/*!40000 ALTER TABLE `wp_statistics_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_statistics_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_statistics_search`
--

DROP TABLE IF EXISTS `wp_statistics_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_statistics_search` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `last_counter` date NOT NULL,
  `engine` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `words` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `last_counter` (`last_counter`),
  KEY `engine` (`engine`),
  KEY `host` (`host`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_statistics_search`
--

LOCK TABLES `wp_statistics_search` WRITE;
/*!40000 ALTER TABLE `wp_statistics_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_statistics_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_statistics_useronline`
--

DROP TABLE IF EXISTS `wp_statistics_useronline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_statistics_useronline` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` int(11) DEFAULT NULL,
  `timestamp` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `referred` text CHARACTER SET utf8 NOT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(48) NOT NULL,
  `page_id` bigint(48) NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_statistics_useronline`
--

LOCK TABLES `wp_statistics_useronline` WRITE;
/*!40000 ALTER TABLE `wp_statistics_useronline` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_statistics_useronline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_statistics_visit`
--

DROP TABLE IF EXISTS `wp_statistics_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_statistics_visit` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `last_visit` datetime NOT NULL,
  `last_counter` date NOT NULL,
  `visit` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique_date` (`last_counter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_statistics_visit`
--

LOCK TABLES `wp_statistics_visit` WRITE;
/*!40000 ALTER TABLE `wp_statistics_visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_statistics_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_statistics_visitor`
--

DROP TABLE IF EXISTS `wp_statistics_visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_statistics_visitor` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `last_counter` date NOT NULL,
  `referred` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UAString` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(40) NOT NULL,
  `hits` int(11) DEFAULT NULL,
  `honeypot` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `date_ip_agent` (`last_counter`,`ip`,`agent`(50),`platform`(50),`version`(50)),
  KEY `agent` (`agent`),
  KEY `platform` (`platform`),
  KEY `version` (`version`),
  KEY `location` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_statistics_visitor`
--

LOCK TABLES `wp_statistics_visitor` WRITE;
/*!40000 ALTER TABLE `wp_statistics_visitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_statistics_visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_statistics_visitor_relationships`
--

DROP TABLE IF EXISTS `wp_statistics_visitor_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_statistics_visitor_relationships` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `visitor_id` bigint(20) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `visitor_id` (`visitor_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_statistics_visitor_relationships`
--

LOCK TABLES `wp_statistics_visitor_relationships` WRITE;
/*!40000 ALTER TABLE `wp_statistics_visitor_relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_statistics_visitor_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_structuring_markup`
--

DROP TABLE IF EXISTS `wp_structuring_markup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_structuring_markup` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `type` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `activate` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `output` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `register_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_structuring_markup`
--

LOCK TABLES `wp_structuring_markup` WRITE;
/*!40000 ALTER TABLE `wp_structuring_markup` DISABLE KEYS */;
INSERT INTO `wp_structuring_markup` VALUES (1,'article','','a:0:{}','a:0:{}','2022-05-07 19:48:46','2022-05-07 19:48:46'),(2,'blog_posting','','a:0:{}','a:0:{}','2022-05-07 19:48:46','2022-05-07 19:48:46'),(3,'breadcrumb','','a:0:{}','a:0:{}','2022-05-07 19:48:46','2022-05-07 19:48:46'),(4,'event','','a:0:{}','a:0:{}','2022-05-07 19:48:46','2022-05-07 19:48:46'),(5,'local_business','','a:0:{}','a:0:{}','2022-05-07 19:48:46','2022-05-07 19:48:46'),(6,'news_article','','a:0:{}','a:0:{}','2022-05-07 19:48:46','2022-05-07 19:48:46'),(7,'organization','','a:0:{}','a:0:{}','2022-05-07 19:48:46','2022-05-07 19:48:46'),(8,'person','','a:0:{}','a:0:{}','2022-05-07 19:48:46','2022-05-07 19:48:46'),(9,'site_navigation','','a:0:{}','a:0:{}','2022-05-07 19:48:46','2022-05-07 19:48:46'),(10,'video','','a:0:{}','a:0:{}','2022-05-07 19:48:46','2022-05-07 19:48:46'),(11,'website','','a:0:{}','a:0:{}','2022-05-07 19:48:46','2022-05-07 19:48:46');
/*!40000 ALTER TABLE `wp_structuring_markup` ENABLE KEYS */;
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
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','atlas'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1');
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
INSERT INTO `wp_users` VALUES (1,'atlas','$P$BEQs2yQBnlWXewbXuZRzVzdvKhSBm01','atlas','atlas@gmail.com','http://dev-siter.atl','2022-05-07 19:44:58','',0,'atlas');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpsmtp_logs`
--

DROP TABLE IF EXISTS `wp_wpsmtp_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpsmtp_logs` (
  `mail_id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `to` varchar(200) NOT NULL DEFAULT '0',
  `subject` varchar(200) NOT NULL DEFAULT '0',
  `message` text DEFAULT NULL,
  `headers` text DEFAULT NULL,
  `error` text DEFAULT NULL,
  PRIMARY KEY (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpsmtp_logs`
--

LOCK TABLES `wp_wpsmtp_logs` WRITE;
/*!40000 ALTER TABLE `wp_wpsmtp_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpsmtp_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpvivid_scan_result`
--

DROP TABLE IF EXISTS `wp_wpvivid_scan_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpvivid_scan_result` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_post` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpvivid_scan_result`
--

LOCK TABLES `wp_wpvivid_scan_result` WRITE;
/*!40000 ALTER TABLE `wp_wpvivid_scan_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpvivid_scan_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpvivid_unused_uploads_files`
--

DROP TABLE IF EXISTS `wp_wpvivid_unused_uploads_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpvivid_unused_uploads_files` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpvivid_unused_uploads_files`
--

LOCK TABLES `wp_wpvivid_unused_uploads_files` WRITE;
/*!40000 ALTER TABLE `wp_wpvivid_unused_uploads_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpvivid_unused_uploads_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable`
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable`
--

LOCK TABLES `wp_yoast_indexable` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable` VALUES (1,'http://dev-siter.atl/?author=0','30:cf08a22a6e95fa480850ad235349b993',0,'user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'https://0.gravatar.com/avatar/?s=500&d=mm&r=g',NULL,NULL,'gravatar-image',NULL,NULL,'https://0.gravatar.com/avatar/?s=500&d=mm&r=g',NULL,'gravatar-image',NULL,NULL,NULL,NULL,'2022-05-07 19:49:50','2022-05-07 16:49:50',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-05-07 19:49:50','2022-05-07 19:49:50'),(2,'http://dev-siter.atl/?post_type=wpcf7_contact_form&p=4','54:21bc519f20fb290b3d153f9e7b71c89b',4,'post','wpcf7_contact_form',0,0,NULL,NULL,'Contact form 1','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-05-07 19:49:50','2022-05-07 16:49:50',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-05-07 19:49:50','2022-05-07 19:49:50');
/*!40000 ALTER TABLE `wp_yoast_indexable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

LOCK TABLES `wp_yoast_indexable_hierarchy` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_migrations`
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_migrations`
--

LOCK TABLES `wp_yoast_migrations` WRITE;
/*!40000 ALTER TABLE `wp_yoast_migrations` DISABLE KEYS */;
INSERT INTO `wp_yoast_migrations` VALUES (1,'20171228151840'),(2,'20171228151841'),(3,'20190529075038'),(4,'20191011111109'),(5,'20200408101900'),(6,'20200420073606'),(7,'20200428123747'),(8,'20200428194858'),(9,'20200429105310'),(10,'20200430075614'),(11,'20200430150130'),(12,'20200507054848'),(13,'20200513133401'),(14,'20200609154515'),(15,'20200616130143'),(16,'20200617122511'),(17,'20200702141921'),(18,'20200728095334'),(19,'20201202144329'),(20,'20201216124002'),(21,'20201216141134'),(22,'20210817092415'),(23,'20211020091404');
/*!40000 ALTER TABLE `wp_yoast_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_primary_term`
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_primary_term`
--

LOCK TABLES `wp_yoast_primary_term` WRITE;
/*!40000 ALTER TABLE `wp_yoast_primary_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_primary_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `target_post_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yydev_tagmanager`
--

DROP TABLE IF EXISTS `wp_yydev_tagmanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yydev_tagmanager` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `tag_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yydev_tagmanager`
--

LOCK TABLES `wp_yydev_tagmanager` WRITE;
/*!40000 ALTER TABLE `wp_yydev_tagmanager` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yydev_tagmanager` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-07 22:49:56
