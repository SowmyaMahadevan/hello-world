/*
Navicat MySQL Data Transfer

Source Server         : cms31.ama.uk.com
Source Server Version : 50544
Source Host           : cms31.exetercs.com:33065
Source Database       : exetercs_09

Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001

Date: 2016-09-29 12:09:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for __t_access_group
-- ----------------------------
DROP TABLE IF EXISTS `__t_access_group`;
CREATE TABLE `__t_access_group` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_group_name` varchar(255) DEFAULT NULL,
  `f_condition` text,
  `f_removed` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_audit
-- ----------------------------
DROP TABLE IF EXISTS `__t_audit`;
CREATE TABLE `__t_audit` (
  `f_audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_audit_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `f_audit_ip` varchar(50) NOT NULL DEFAULT '',
  `f_audit_browser` text NOT NULL,
  `f_audit_user` varchar(50) NOT NULL DEFAULT '',
  `f_audit_user_id` varchar(50) DEFAULT NULL,
  `f_audit_type` varchar(50) NOT NULL DEFAULT '',
  `f_audit_page` varchar(100) NOT NULL DEFAULT '',
  `f_audit_comment` text NOT NULL,
  `f_audit_fields_entry_old_db` text,
  `f_audit_fields_entry_new_db` text,
  `f_audit_fields_entry_old_screen` text,
  `f_audit_fields_entry_new_screen` text,
  `f_audit_array_POST` text NOT NULL,
  `f_audit_array_GET` tinytext NOT NULL,
  `f_audit_array_SESSION` text NOT NULL,
  `f_audit_access_level` varchar(255) NOT NULL DEFAULT '',
  `f_audit_field_name` varchar(255) DEFAULT NULL,
  `f_php_session_id` varchar(255) DEFAULT NULL,
  `f_audit_session_id` varchar(50) DEFAULT NULL,
  `f_compressed` int(1) DEFAULT NULL,
  `f_referrer` varchar(0) DEFAULT NULL,
  PRIMARY KEY (`f_audit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39329173 DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 5120 kB; InnoDB free: 5120 kB; InnoDB free: 512';

-- ----------------------------
-- Table structure for __t_audit_user
-- ----------------------------
DROP TABLE IF EXISTS `__t_audit_user`;
CREATE TABLE `__t_audit_user` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `f_ip` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `f_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_user_id` int(11) DEFAULT NULL,
  `f_access_level` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `f_cms_version` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_session_id` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `f_page` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `f_array_POST` text COLLATE utf8_unicode_ci NOT NULL,
  `f_array_GET` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `f_browser` text CHARACTER SET latin1 NOT NULL,
  `f_referrer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `f_comment_1` text CHARACTER SET latin1,
  `f_comment_2` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=241993 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='InnoDB free: 5120 kB; InnoDB free: 5120 kB; InnoDB free: 512';

-- ----------------------------
-- Table structure for __t_canonical_link
-- ----------------------------
DROP TABLE IF EXISTS `__t_canonical_link`;
CREATE TABLE `__t_canonical_link` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_url_pattern` varchar(255) NOT NULL,
  `f_canonical_link` varchar(255) NOT NULL,
  `f_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_removed` int(11) NOT NULL,
  `f_order` int(11) NOT NULL DEFAULT '10',
  `f_commment` varchar(1024) NOT NULL,
  `f_tick` int(11) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for __t_changes
-- ----------------------------
DROP TABLE IF EXISTS `__t_changes`;
CREATE TABLE `__t_changes` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_fieldname` varchar(255) DEFAULT NULL,
  `f_pk` int(11) DEFAULT NULL,
  `f_old_value_db` text,
  `f_new_value_db` text,
  `f_old_value_screen` text,
  `f_new_value_screen` text,
  `f_user` varchar(255) DEFAULT NULL,
  `f_timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `f_user_id` varchar(255) DEFAULT NULL,
  `f_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`),
  KEY `f_fieldname` (`f_fieldname`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=84720673 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_cms_fields
-- ----------------------------
DROP TABLE IF EXISTS `__t_cms_fields`;
CREATE TABLE `__t_cms_fields` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT 'New Field',
  `f_type` varchar(255) DEFAULT NULL,
  `f_datasource` varchar(255) DEFAULT NULL,
  `f_parameters` text,
  `f_section_id` int(11) DEFAULT NULL,
  `f_sort_order` int(11) DEFAULT NULL,
  `f_on_retrieve` text,
  `f_on_update` text,
  `f_visible` int(11) DEFAULT '1',
  `f_removed` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=997022 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_cms_pages
-- ----------------------------
DROP TABLE IF EXISTS `__t_cms_pages`;
CREATE TABLE `__t_cms_pages` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_sort_order` int(11) DEFAULT NULL,
  `f_page_title` varchar(255) DEFAULT NULL,
  `f_show_in_nav` int(11) DEFAULT NULL,
  `f_access_level` int(11) NOT NULL DEFAULT '0',
  `f_big_icon` varchar(255) DEFAULT NULL,
  `f_small_icon` varchar(255) DEFAULT NULL,
  `f_side_section` int(11) DEFAULT NULL,
  `f_parent_page` int(11) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9911 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_cms_sections
-- ----------------------------
DROP TABLE IF EXISTS `__t_cms_sections`;
CREATE TABLE `__t_cms_sections` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_section_name` varchar(255) DEFAULT NULL,
  `f_page_id` int(11) DEFAULT NULL,
  `f_section_type` varchar(100) DEFAULT NULL,
  `f_sort_order` int(11) DEFAULT NULL,
  `f_visible_to` int(11) DEFAULT NULL,
  `f_hide_where_locked` varchar(255) DEFAULT NULL,
  `f_hide_where_unlocked` varchar(255) DEFAULT NULL,
  `f_not_collapsable` int(11) DEFAULT NULL,
  `f_no_header` int(11) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99106 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_emails
-- ----------------------------
DROP TABLE IF EXISTS `__t_emails`;
CREATE TABLE `__t_emails` (
  `f_id` int(11) NOT NULL DEFAULT '0',
  `f_sent` int(11) DEFAULT NULL,
  `f_to` text,
  `f_bcc` text,
  `f_from` text,
  `f_subject` text,
  `f_body` text,
  `f_altbody` text,
  `f_html` int(11) DEFAULT NULL,
  `f_log` varchar(255) DEFAULT NULL,
  `f_sent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_entities
-- ----------------------------
DROP TABLE IF EXISTS `__t_entities`;
CREATE TABLE `__t_entities` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_entity` varchar(255) DEFAULT NULL,
  `f_unicode_hex` varchar(255) DEFAULT NULL,
  `f_unicode` varchar(10) DEFAULT NULL,
  `f_ascii_quiv` varchar(255) DEFAULT NULL,
  `f_ascii_index_sort` int(11) NOT NULL,
  `f_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2875 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for __t_fields
-- ----------------------------
DROP TABLE IF EXISTS `__t_fields`;
CREATE TABLE `__t_fields` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) CHARACTER SET latin1 DEFAULT 'New Field',
  `f_type` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_datasource` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_parameters` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f_section_id` int(11) DEFAULT NULL,
  `f_sort_order` int(11) DEFAULT NULL,
  `f_on_retrieve` text CHARACTER SET latin1,
  `f_on_update` text CHARACTER SET latin1,
  `f_visible` int(11) DEFAULT '1',
  `f_hide_if` text CHARACTER SET latin1,
  `f_disable_if` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_comment` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  `f_iso` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_lang_id` int(11) DEFAULT NULL,
  `f_skip_translate` int(11) DEFAULT NULL,
  `f_timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_nicedit_template` int(1) DEFAULT NULL,
  `f_searchable` int(1) DEFAULT NULL,
  `f_wrap_type` varchar(20) CHARACTER SET latin1 DEFAULT 'div',
  `f_cache_if` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_cache_md5` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `f_supress_id` int(11) DEFAULT NULL,
  `f_supress_comment` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64783 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for __t_globals
-- ----------------------------
DROP TABLE IF EXISTS `__t_globals`;
CREATE TABLE `__t_globals` (
  `f_id` int(11) NOT NULL DEFAULT '0',
  `f_site_name` varchar(255) DEFAULT NULL,
  `f_homepage` varchar(255) DEFAULT NULL,
  `f_site_navigation_menu_width` varchar(255) DEFAULT NULL,
  `f_error_page_filenotfound` varchar(255) DEFAULT NULL,
  `f_error_page_accessdenied` varchar(255) DEFAULT NULL,
  `f_error_page_temporarilyoffline` varchar(255) DEFAULT NULL,
  `f_error_page_login` varchar(255) DEFAULT NULL,
  `f_online` int(11) DEFAULT NULL,
  `f_show_debug_info` int(11) DEFAULT NULL,
  `f_allow_hashcode_logins_upto` int(11) DEFAULT NULL,
  `f_ip_based_authentication` int(11) DEFAULT NULL,
  `f_login_page` int(11) DEFAULT NULL,
  `f_login_redirect` int(1) NOT NULL DEFAULT '0',
  `f_login_script_pre` varchar(50) DEFAULT NULL,
  `f_login_script_post` varchar(50) DEFAULT NULL,
  `f_login_always_to_page` varchar(255) DEFAULT NULL,
  `f_logout_page` varchar(50) DEFAULT NULL,
  `f_logout_script` varchar(50) DEFAULT NULL,
  `f_logout_always_to_page` varchar(255) DEFAULT NULL,
  `f_host_based_authentication` int(11) DEFAULT NULL,
  `f_footer_html` text,
  `f_entity_mapping` int(11) DEFAULT NULL,
  `f_css_styles` text,
  `f_skip_restore_session` int(11) NOT NULL DEFAULT '0',
  `f_lang_auto_translate` int(11) DEFAULT NULL,
  `f_lang_default` char(2) DEFAULT NULL,
  `f_charset` varchar(255) DEFAULT NULL,
  `f_header_html` text,
  `f_header_layout_id` int(11) DEFAULT NULL,
  `f_footer_layout_id` int(11) DEFAULT NULL,
  `f_nicedit` int(11) DEFAULT NULL,
  `f_status_bar` tinyint(1) DEFAULT NULL,
  `f_error_log_ama` int(1) DEFAULT NULL,
  `f_live_version` int(11) DEFAULT NULL,
  `f_debug_version` int(11) DEFAULT NULL,
  `f_ssl` int(11) DEFAULT NULL,
  `f_prototype` int(11) DEFAULT NULL,
  `f_colourpicker` int(11) DEFAULT NULL,
  `f_cache_semi` int(11) DEFAULT NULL,
  `f_s3_sitename` varchar(50) DEFAULT NULL,
  `f_image_source` varchar(255) DEFAULT NULL,
  `f_cache_on_s3` int(11) DEFAULT NULL,
  `f_no_disc_cache` int(1) DEFAULT NULL,
  `f_favicon` varchar(255) DEFAULT NULL,
  `f_nicedit_track_changes` int(1) DEFAULT NULL,
  `f_hide_sys_id` int(11) DEFAULT NULL,
  `f_hide_sys_time` int(11) DEFAULT NULL,
  `f_hide_proof_error` int(1) DEFAULT NULL,
  `f_layout_grid` varchar(50) DEFAULT 'grid_960',
  `f_page_class` varchar(255) DEFAULT NULL,
  `f_page_style` varchar(255) DEFAULT NULL,
  `f_hide_onerror_js` int(1) DEFAULT NULL,
  `f_slow_log_threshold_field` varchar(255) DEFAULT NULL,
  `f_slow_log_threshold_section` varchar(255) DEFAULT NULL,
  `f_slow_log_threshold_page` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_groups
-- ----------------------------
DROP TABLE IF EXISTS `__t_groups`;
CREATE TABLE `__t_groups` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `f_access_level` int(11) DEFAULT NULL,
  `f_home_page` varchar(255) DEFAULT NULL,
  `f_stylesheet` varchar(255) NOT NULL,
  `f_removed` int(1) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for __t_ip_control
-- ----------------------------
DROP TABLE IF EXISTS `__t_ip_control`;
CREATE TABLE `__t_ip_control` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_ip_mask` varchar(255) DEFAULT NULL,
  `f_static_host` varchar(255) DEFAULT NULL,
  `f_type` varchar(255) DEFAULT NULL,
  `f_role` varchar(255) DEFAULT NULL,
  `f_comment` text,
  `f_removed` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=270 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_jrnlinfo
-- ----------------------------
DROP TABLE IF EXISTS `__t_jrnlinfo`;
CREATE TABLE `__t_jrnlinfo` (
  `seqID` int(11) NOT NULL AUTO_INCREMENT,
  `JournalTitle` varchar(1000) NOT NULL,
  `MedAbbr` varchar(255) NOT NULL,
  `ISSNPrint` varchar(15) DEFAULT NULL,
  `ISSNOnline` varchar(15) DEFAULT NULL,
  `IsoAbbr` varchar(255) DEFAULT NULL,
  `NlmId` varchar(30) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT 'Parivalavan M',
  `updatedOnTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`seqID`)
) ENGINE=InnoDB AUTO_INCREMENT=27359 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for __t_keys
-- ----------------------------
DROP TABLE IF EXISTS `__t_keys`;
CREATE TABLE `__t_keys` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_hashcode` varchar(255) DEFAULT NULL,
  `f_article_id` varchar(255) DEFAULT NULL,
  `f_reviewer` varchar(255) DEFAULT NULL,
  `f_current_step` varchar(255) DEFAULT NULL,
  `f_completed_step` varchar(255) DEFAULT NULL,
  `f_user_id` varchar(50) DEFAULT NULL,
  `f_last_login` datetime DEFAULT NULL,
  `f_ticks` int(11) NOT NULL,
  `f_live` int(1) DEFAULT NULL,
  `f_query` text,
  `f_date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_proof_type_id` int(11) DEFAULT NULL,
  `f_email_date_sent` timestamp NULL DEFAULT NULL,
  `f_due_date` timestamp NULL DEFAULT NULL,
  `f_date_landed` timestamp NULL DEFAULT NULL,
  `f_signed_off_by` varchar(255) DEFAULT NULL,
  `f_email_address` varchar(255) DEFAULT NULL,
  `f_email_sent` text,
  `f_date_finished` timestamp NULL DEFAULT NULL,
  `f_removed` int(1) DEFAULT NULL,
  `f_user_agent` longtext,
  PRIMARY KEY (`f_id`),
  UNIQUE KEY `hashcode` (`f_hashcode`)
) ENGINE=MyISAM AUTO_INCREMENT=440383 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_lang_auto_translate
-- ----------------------------
DROP TABLE IF EXISTS `__t_lang_auto_translate`;
CREATE TABLE `__t_lang_auto_translate` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_eng` varchar(255) DEFAULT NULL,
  `f_lang_from` char(2) DEFAULT NULL,
  `f_lang_to` char(2) DEFAULT NULL,
  `f_translation_url` varchar(255) DEFAULT NULL,
  `f_translation_string` text,
  `f_translated_text` text,
  `f_translation_responce` int(11) DEFAULT NULL,
  `f_translated_override` text,
  `f_comment` text,
  `f_removed` int(1) NOT NULL,
  `f_timestamp_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43856 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for __t_layout
-- ----------------------------
DROP TABLE IF EXISTS `__t_layout`;
CREATE TABLE `__t_layout` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_page_id` int(11) DEFAULT NULL,
  `f_children` text,
  `f_type` varchar(255) DEFAULT NULL,
  `f_grid` tinyint(4) DEFAULT NULL,
  `f_push` tinyint(4) DEFAULT NULL,
  `f_prefix` tinyint(4) DEFAULT NULL,
  `f_alpha` tinyint(1) DEFAULT NULL,
  `f_omega` tinyint(1) DEFAULT NULL,
  `f_suffix` tinyint(1) DEFAULT NULL,
  `f_class_override` varchar(255) DEFAULT NULL,
  `f_style` varchar(255) DEFAULT NULL,
  `f_id_section` varchar(255) DEFAULT NULL,
  `f_removed` int(1) NOT NULL,
  `f_comment` varchar(255) DEFAULT NULL,
  `t_timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_global` int(1) DEFAULT NULL,
  PRIMARY KEY (`f_id`),
  UNIQUE KEY `ID` (`f_id`) USING BTREE,
  KEY `f_id` (`f_id`,`f_removed`)
) ENGINE=MyISAM AUTO_INCREMENT=16450 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_lu_mappings
-- ----------------------------
DROP TABLE IF EXISTS `__t_lu_mappings`;
CREATE TABLE `__t_lu_mappings` (
  `f_id` int(11) NOT NULL DEFAULT '0',
  `f_lu_mapping` text,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_navigation
-- ----------------------------
DROP TABLE IF EXISTS `__t_navigation`;
CREATE TABLE `__t_navigation` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_children` text,
  `f_page_id` int(11) DEFAULT NULL,
  `f_link_url` text,
  `f_link_text` text,
  `f_class_override` varchar(255) DEFAULT NULL,
  `f_desc` varchar(255) DEFAULT NULL,
  `f_toplevel` varchar(11) DEFAULT NULL,
  `f_userlevel` varchar(11) DEFAULT NULL,
  `f_removed` int(1) DEFAULT NULL,
  `f_hide_if` varchar(255) DEFAULT NULL,
  `f_template_folder` int(11) DEFAULT NULL,
  `f_misc_folder` int(11) DEFAULT NULL,
  `f_template_page` int(11) DEFAULT NULL,
  `f_ignore_link` int(11) DEFAULT NULL,
  `f_link_for_sitemap` int(11) DEFAULT '1',
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1916 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_pages
-- ----------------------------
DROP TABLE IF EXISTS `__t_pages`;
CREATE TABLE `__t_pages` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_page_url_friendly` varchar(255) DEFAULT NULL,
  `f_sort_order` int(11) DEFAULT NULL,
  `f_page_title` varchar(255) DEFAULT NULL,
  `f_show_in_nav` int(11) DEFAULT NULL,
  `f_access_level` int(11) NOT NULL DEFAULT '0',
  `f_group_access_level` int(11) DEFAULT NULL,
  `f_big_icon` varchar(255) DEFAULT NULL,
  `f_small_icon` varchar(255) DEFAULT NULL,
  `f_side_section` int(11) DEFAULT NULL,
  `f_parent_page` int(11) DEFAULT NULL,
  `f_page_form` int(11) DEFAULT NULL,
  `f_page_submit_button` int(11) DEFAULT NULL,
  `f_right_section` int(11) DEFAULT NULL,
  `f_comment` varchar(255) DEFAULT NULL,
  `f_use_lu_map` int(11) DEFAULT NULL,
  `f_page_submit_button_hide_if` varchar(255) DEFAULT NULL,
  `f_get_content_from` int(11) DEFAULT NULL,
  `f_pages` int(11) DEFAULT NULL,
  `f_removed` int(11) NOT NULL,
  `f_show_nav` int(1) DEFAULT NULL,
  `f_show_header` int(1) DEFAULT NULL,
  `f_page_header` int(1) DEFAULT NULL,
  `f_padding_top` varchar(255) DEFAULT NULL,
  `f_padding_left` varchar(255) DEFAULT NULL,
  `f_padding_right` varchar(255) DEFAULT NULL,
  `f_padding_bottom` varchar(255) DEFAULT NULL,
  `f_layout_id` int(11) DEFAULT NULL,
  `t_timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_preload_script_widget` varchar(255) DEFAULT NULL,
  `f_page_pixel_width` int(11) DEFAULT NULL,
  `f_page_left_menu_width` int(11) DEFAULT NULL,
  `f_page_right_menu_width` int(11) DEFAULT NULL,
  `f_body_background_colour` varchar(255) DEFAULT NULL,
  `f_page_layout` int(11) DEFAULT NULL,
  `f_show_body` int(1) DEFAULT NULL,
  `f_show_footer` int(1) DEFAULT NULL,
  `f_grid_container` int(11) DEFAULT NULL,
  `f_grid_left_alpha` int(1) DEFAULT NULL,
  `f_grid_left_omega` int(1) DEFAULT NULL,
  `f_grid_middle_alpha` int(1) DEFAULT NULL,
  `f_grid_middle_omega` int(1) DEFAULT NULL,
  `f_grid_right_alpha` int(1) DEFAULT NULL,
  `f_grid_right_omega` int(1) DEFAULT NULL,
  `f_access_deny_if` varchar(255) DEFAULT NULL,
  `f_meta_keywords` mediumtext CHARACTER SET utf8,
  `f_meta_description` mediumtext CHARACTER SET utf8,
  `f_show_name_in_title` int(1) DEFAULT NULL,
  `f_duplicated_page` int(1) NOT NULL,
  `f_passed_page` int(1) NOT NULL,
  `f_locked_page` int(1) NOT NULL,
  `f_created_by` varchar(255) DEFAULT NULL,
  `f_page_url_referral` text,
  `f_passed_page_ama` int(1) NOT NULL,
  `f_cache_page_fg_body` int(1) DEFAULT NULL,
  `f_cache_page_fg_html` int(1) DEFAULT NULL,
  `f_cache_page` mediumtext,
  `f_site_map` int(1) NOT NULL,
  `f_title_override_field` varchar(255) DEFAULT NULL,
  `f_tags` varchar(255) DEFAULT NULL,
  `f_nicedit_article_page` int(11) DEFAULT NULL,
  `f_page_id_override` varchar(255) DEFAULT NULL,
  `f_page_class` varchar(255) DEFAULT NULL,
  `f_page_style` varchar(255) DEFAULT NULL,
  `f_cache_level` int(11) DEFAULT NULL,
  `f_slow_log_threshold` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`),
  KEY `page_url_friendly` (`f_removed`,`f_page_url_friendly`)
) ENGINE=MyISAM AUTO_INCREMENT=1970 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_redirect
-- ----------------------------
DROP TABLE IF EXISTS `__t_redirect`;
CREATE TABLE `__t_redirect` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_old_link` varchar(255) NOT NULL,
  `f_new_link` varchar(255) NOT NULL,
  `f_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_removed` int(11) DEFAULT NULL,
  `f_order` int(11) NOT NULL DEFAULT '10',
  `f_commment` varchar(1024) NOT NULL,
  `f_tick` int(11) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for __t_resource
-- ----------------------------
DROP TABLE IF EXISTS `__t_resource`;
CREATE TABLE `__t_resource` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_filename` varchar(255) DEFAULT NULL,
  `f_filename_parent` varchar(255) DEFAULT NULL,
  `f_path` varchar(255) DEFAULT NULL,
  `f_page` varchar(255) DEFAULT NULL,
  `f_type` varchar(255) DEFAULT NULL,
  `f_extention` varchar(255) DEFAULT NULL,
  `f_user` varchar(255) DEFAULT NULL,
  `f_timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_removed` int(11) DEFAULT NULL,
  `f_user_id` int(11) DEFAULT NULL,
  `f_caption` varchar(255) DEFAULT NULL,
  `f_order` int(11) DEFAULT NULL,
  `f_width` int(11) DEFAULT NULL,
  `f_height` int(11) DEFAULT NULL,
  `f_global` int(11) DEFAULT NULL,
  `f_id_vfs` int(11) DEFAULT NULL,
  `f_access_level` int(11) DEFAULT NULL,
  `f_condition` varchar(255) DEFAULT NULL,
  `f_browser_uploader` varchar(100) DEFAULT NULL,
  `f_alt` varchar(255) DEFAULT NULL,
  `f_subpage_id` int(11) DEFAULT NULL,
  `f_size` int(11) DEFAULT NULL,
  `f_expires` int(11) DEFAULT NULL,
  `f_etag` varchar(32) DEFAULT NULL,
  `f_etag_parent` varchar(50) DEFAULT NULL,
  `f_month` int(11) DEFAULT NULL,
  `f_year` int(11) DEFAULT NULL,
  `f_thumbnail
f_cache_to_server
f_hidden_video
f_thumbnail` varchar(255) DEFAULT NULL,
  `f_cache_to_server` int(1) DEFAULT NULL,
  `f_hidden_video` int(1) DEFAULT NULL,
  `f_no_disc_cache` int(1) DEFAULT NULL,
  `f_image_control` varchar(255) DEFAULT NULL,
  `f_no_views` int(11) NOT NULL,
  `f_time_uploaded` timestamp NULL DEFAULT NULL,
  `f_comment` text,
  `f_primary_extension` varchar(255) DEFAULT NULL,
  `f_primary_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2681703 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for __t_schemas
-- ----------------------------
DROP TABLE IF EXISTS `__t_schemas`;
CREATE TABLE `__t_schemas` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `f_schema` mediumtext,
  `f_comment` varchar(255) DEFAULT NULL,
  `f_version` varchar(255) DEFAULT NULL,
  `f_timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_removed` int(11) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for __t_scripts
-- ----------------------------
DROP TABLE IF EXISTS `__t_scripts`;
CREATE TABLE `__t_scripts` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_php_script` mediumtext,
  `f_friendly_name` varchar(255) NOT NULL,
  `f_date_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `f_version` varchar(255) DEFAULT NULL,
  `f_comment` varchar(255) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=743 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_search
-- ----------------------------
DROP TABLE IF EXISTS `__t_search`;
CREATE TABLE `__t_search` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_page` int(11) DEFAULT NULL,
  `f_section` int(11) DEFAULT NULL,
  `f_field` int(11) DEFAULT NULL,
  `f_content` mediumtext,
  `f_cleaned_content` mediumtext,
  `f_page_access_level` int(255) NOT NULL DEFAULT '0',
  `f_section_access_level` int(11) NOT NULL DEFAULT '0',
  `f_removed` int(1) DEFAULT NULL,
  `f_page_url` varchar(255) DEFAULT NULL,
  `f_blog_id` int(11) DEFAULT NULL,
  `f_event_id` int(11) DEFAULT NULL,
  `f_article_id` int(11) DEFAULT NULL,
  `f_ijmr_id` int(11) DEFAULT NULL,
  `f_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`),
  KEY `Index` (`f_field`,`f_section`,`f_page`,`f_page_url`,`f_removed`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=208986 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for __t_search_and_replace
-- ----------------------------
DROP TABLE IF EXISTS `__t_search_and_replace`;
CREATE TABLE `__t_search_and_replace` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_function` varchar(255) DEFAULT NULL,
  `f_var_1` text NOT NULL,
  `f_var_2` text,
  `f_order` int(11) DEFAULT NULL,
  `f_type` varchar(255) NOT NULL,
  `f_comment` varchar(255) DEFAULT NULL,
  `f_date_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `f_removed` int(11) DEFAULT NULL,
  `f_widget_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=832 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_sections
-- ----------------------------
DROP TABLE IF EXISTS `__t_sections`;
CREATE TABLE `__t_sections` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_section_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_section_type` varchar(100) CHARACTER SET latin1 DEFAULT 'text-pane',
  `f_sort_order` int(11) DEFAULT NULL,
  `f_visible_to` int(11) NOT NULL,
  `f_hide_where_locked` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_hide_where_unlocked` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_not_collapsable` int(11) DEFAULT NULL,
  `f_no_header` int(11) DEFAULT NULL,
  `f_hide_if` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_lock_if` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_multipart_form` int(11) DEFAULT NULL,
  `f_comment` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_removed` int(1) NOT NULL,
  `f_hidden` int(11) DEFAULT NULL,
  `f_column` int(11) DEFAULT NULL,
  `f_timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_action` varchar(255) DEFAULT NULL,
  `f_ajax_call` int(11) DEFAULT NULL,
  `f_ajax_hide_onload` int(11) DEFAULT NULL,
  `f_ajax_hide_oncollapse` int(11) DEFAULT NULL,
  `f_ajax_destroy_oncollapse` int(11) DEFAULT NULL,
  `f_class_section` varchar(100) DEFAULT NULL,
  `f_class_sectionbody` varchar(100) DEFAULT NULL,
  `f_style_sectionbody` varchar(100) DEFAULT NULL,
  `f_header_font_colour` varchar(11) DEFAULT NULL,
  `f_section_font_colour` varchar(11) DEFAULT NULL,
  `f_div_id_override` varchar(100) DEFAULT NULL,
  `f_cache_level` int(11) DEFAULT NULL,
  `f_cache` mediumtext,
  `f_cache_if` varchar(255) DEFAULT NULL,
  `f_cache_md5` varchar(255) DEFAULT NULL,
  `f_cache_timestamp` datetime DEFAULT NULL,
  `f_slow_log_threshold` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13130 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for __t_side_tabs
-- ----------------------------
DROP TABLE IF EXISTS `__t_side_tabs`;
CREATE TABLE `__t_side_tabs` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_tab_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `f_tab_colour` varchar(20) DEFAULT NULL,
  `f_section_id` varchar(255) DEFAULT NULL,
  `f_tab_font_colour` varchar(20) DEFAULT NULL,
  `f_pos_y` varchar(20) DEFAULT NULL,
  `f_div_height` int(11) DEFAULT NULL,
  `f_group_id` varchar(20) DEFAULT NULL,
  `f_tab_border_width` varchar(20) DEFAULT NULL,
  `f_access_level` int(11) DEFAULT NULL,
  `f_comment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `f_header` text,
  `f_text` text,
  `f_feedback_form` varchar(255) DEFAULT NULL,
  `f_feedback_comments` text,
  `f_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_order` int(11) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  `f_form_colour` varchar(255) DEFAULT NULL,
  `f_page_id` int(11) DEFAULT NULL,
  `f_layout_id` int(11) DEFAULT NULL,
  `f_override_class` varchar(255) DEFAULT NULL,
  `f_expand` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1216 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_strings
-- ----------------------------
DROP TABLE IF EXISTS `__t_strings`;
CREATE TABLE `__t_strings` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_key` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_0` text CHARACTER SET latin1,
  `f_1` text CHARACTER SET latin1,
  `f_2` text CHARACTER SET latin1,
  `f_3` text CHARACTER SET latin1,
  `f_4` text CHARACTER SET latin1,
  `f_5` text CHARACTER SET latin1,
  `f_6` text CHARACTER SET latin1,
  `f_7` text,
  `f_8` text CHARACTER SET latin1,
  `f_9` text CHARACTER SET latin1,
  `f_10` text,
  `f_removed` int(1) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32532 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for __t_templates
-- ----------------------------
DROP TABLE IF EXISTS `__t_templates`;
CREATE TABLE `__t_templates` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_template` mediumblob,
  `f_friendly_name` varchar(255) DEFAULT NULL,
  `f_script` longtext,
  `f_version` text,
  `f_workflow` text,
  `f_use_sgml_fn` text,
  `f_comment` varchar(255) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  `f_date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5262 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `__t_user_groups`;
CREATE TABLE `__t_user_groups` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `f_access_level` int(11) DEFAULT NULL,
  `f_home_page` varchar(255) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  `f_user_role` varchar(255) DEFAULT NULL,
  `f_eps_buttons` text,
  `f_eps_panels` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_users
-- ----------------------------
DROP TABLE IF EXISTS `__t_users`;
CREATE TABLE `__t_users` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_username` varchar(50) DEFAULT NULL,
  `f_password` varchar(50) DEFAULT NULL,
  `f_userlevel` tinyint(4) DEFAULT NULL,
  `f_group_id` int(11) DEFAULT NULL,
  `f_locked` tinyint(1) DEFAULT NULL,
  `f_hashcode` varchar(255) DEFAULT NULL,
  `f_email` varchar(100) DEFAULT NULL,
  `f_last_login` datetime DEFAULT NULL,
  `f_ticks` int(11) NOT NULL,
  `f_date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `f_removed` tinyint(1) NOT NULL,
  `f_short_name` varchar(255) DEFAULT NULL,
  `f_display_name` varchar(255) DEFAULT NULL,
  `f_first_name` varchar(50) DEFAULT NULL,
  `f_last_name` varchar(50) DEFAULT NULL,
  `f_address1` varchar(100) DEFAULT NULL,
  `f_address2` varchar(100) DEFAULT NULL,
  `f_town` varchar(100) DEFAULT NULL,
  `f_county` varchar(50) DEFAULT NULL,
  `f_postcode` varchar(20) DEFAULT NULL,
  `f_phone` varchar(50) DEFAULT NULL,
  `f_fax` varchar(255) DEFAULT NULL,
  `f_notes` text,
  `f_customer_id` int(11) DEFAULT NULL,
  `f_user_role` int(11) DEFAULT NULL,
  `f_start_node` int(11) DEFAULT NULL,
  `f_apiKey` varchar(32) NOT NULL,
  `f_user_role_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`),
  UNIQUE KEY `hashcode` (`f_hashcode`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=16823 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for __t_vfs
-- ----------------------------
DROP TABLE IF EXISTS `__t_vfs`;
CREATE TABLE `__t_vfs` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_file` longblob,
  `f_comment` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_require_naming` int(11) DEFAULT NULL,
  `f_access_level` int(11) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  `f_mime_type` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_page_load` varchar(255) CHARACTER SET latin1 DEFAULT '0',
  `f_order` int(11) DEFAULT NULL,
  `f_link_only` int(1) DEFAULT '1',
  `f_expires` int(11) DEFAULT NULL,
  `f_footer` int(11) DEFAULT NULL,
  `f_media` varchar(20) CHARACTER SET latin1 DEFAULT 'all',
  `f_rtl` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `f_condition` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_dowheresub` int(1) DEFAULT NULL,
  `f_etag` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `f_compress` int(11) DEFAULT NULL,
  `f_name_grouping` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11613 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for e_editingruleset
-- ----------------------------
DROP TABLE IF EXISTS `e_editingruleset`;
CREATE TABLE `e_editingruleset` (
  `rowID` int(11) NOT NULL AUTO_INCREMENT,
  `findWhat` text NOT NULL,
  `replaceWith` varchar(255) DEFAULT NULL,
  `ignoreCase` tinyint(1) NOT NULL,
  `stylesToAffect` text,
  `functionName` varchar(255) DEFAULT '',
  `queryToBeAdded` varchar(1000) DEFAULT NULL,
  `updatedVersionRowID` int(11) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedOn` datetime DEFAULT '0000-00-00 00:00:00',
  `comment` varchar(1000) DEFAULT NULL,
  `jrnlNames` varchar(1000) DEFAULT NULL,
  `ruleGroup` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowID`)
) ENGINE=MyISAM AUTO_INCREMENT=1013 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for e_funder_names
-- ----------------------------
DROP TABLE IF EXISTS `e_funder_names`;
CREATE TABLE `e_funder_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doi` varchar(255) DEFAULT NULL,
  `prefLabel` text,
  `prefLabel_ascii` text,
  `altLabel` text,
  `altLabel_ascii` text,
  `abbrev` varchar(255) DEFAULT NULL,
  `xmlSnippet` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14311 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for e_packages
-- ----------------------------
DROP TABLE IF EXISTS `e_packages`;
CREATE TABLE `e_packages` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_job_number` varchar(45) DEFAULT NULL,
  `f_status` longtext,
  `f_last_update` timestamp NULL DEFAULT NULL,
  `f_log` longtext,
  `f_finished` timestamp NULL DEFAULT NULL,
  `f_fid` varchar(45) DEFAULT NULL COMMENT 'CMS id',
  `f_package_name` varchar(45) DEFAULT NULL,
  `f_opt` longtext,
  `f_start_at` timestamp NULL DEFAULT NULL,
  `f_finish_at` timestamp NULL DEFAULT NULL,
  `f_cms_version` varchar(45) DEFAULT NULL,
  `f_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70733 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for e_querybank
-- ----------------------------
DROP TABLE IF EXISTS `e_querybank`;
CREATE TABLE `e_querybank` (
  `f_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `f_queryhtml` text,
  `f_classnames` text,
  `f_removed` varchar(45) DEFAULT NULL,
  `f_project` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1543 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for e_validation
-- ----------------------------
DROP TABLE IF EXISTS `e_validation`;
CREATE TABLE `e_validation` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_rule` blob NOT NULL,
  `f_stage` varchar(255) NOT NULL,
  `f_comment` varchar(255) DEFAULT NULL,
  `f_removed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jrnlabbr
-- ----------------------------
DROP TABLE IF EXISTS `jrnlabbr`;
CREATE TABLE `jrnlabbr` (
  `jrnlAbbrText` varchar(255) NOT NULL,
  PRIMARY KEY (`jrnlAbbrText`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jrnlinfo
-- ----------------------------
DROP TABLE IF EXISTS `jrnlinfo`;
CREATE TABLE `jrnlinfo` (
  `seqID` int(11) NOT NULL AUTO_INCREMENT,
  `JournalTitle` varchar(1000) NOT NULL,
  `MedAbbr` varchar(255) NOT NULL,
  `ISSNPrint` varchar(15) DEFAULT NULL,
  `ISSNOnline` varchar(15) DEFAULT NULL,
  `IsoAbbr` varchar(255) DEFAULT NULL,
  `NlmId` varchar(30) DEFAULT NULL,
  `printInfo` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT 'Parivalavan M',
  `updatedOnTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`seqID`)
) ENGINE=InnoDB AUTO_INCREMENT=27413 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for publisherinfo
-- ----------------------------
DROP TABLE IF EXISTS `publisherinfo`;
CREATE TABLE `publisherinfo` (
  `pubID` int(11) NOT NULL AUTO_INCREMENT,
  `publisherName` varchar(255) NOT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pubID`,`publisherName`)
) ENGINE=MyISAM AUTO_INCREMENT=1653 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for querybankset
-- ----------------------------
DROP TABLE IF EXISTS `querybankset`;
CREATE TABLE `querybankset` (
  `rowID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queryList` text NOT NULL,
  `htmlForUser` text,
  `htmlForAuthor` text,
  `functionName` text,
  `instructionToUser` text,
  `instructionToAuthor` text,
  `typeofquery` text,
  `displayQuery` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rowID`)
) ENGINE=MyISAM AUTO_INCREMENT=1181 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_articles
-- ----------------------------
DROP TABLE IF EXISTS `t_articles`;
CREATE TABLE `t_articles` (
  `f_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `f_children` mediumtext,
  `f_element` varchar(255) NOT NULL DEFAULT 'div',
  `f_attribute` text,
  `f_text` longtext,
  `f_node_type_id` int(11) DEFAULT NULL,
  `f_content` longtext NOT NULL,
  `f_content_preprocess` longtext NOT NULL,
  `f_import_schema` text NOT NULL,
  `f_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `f_hide_if` varchar(255) DEFAULT NULL,
  `f_removed` int(11) NOT NULL,
  `f_created_timestamp` timestamp NULL DEFAULT NULL,
  `f_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`),
  KEY `f_children-f_remove` (`f_children`(255),`f_removed`) USING BTREE,
  KEY `f_children` (`f_children`(255)) USING BTREE,
  KEY `f_attribute` (`f_attribute`(255)) USING BTREE,
  KEY `f_text` (`f_text`(255)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96752 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_articles_audit
-- ----------------------------
DROP TABLE IF EXISTS `t_articles_audit`;
CREATE TABLE `t_articles_audit` (
  `f_audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_audit_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `f_audit_ip` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `f_audit_browser` text CHARACTER SET latin1 NOT NULL,
  `f_audit_user` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `f_audit_user_id` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `f_audit_type` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `f_audit_page` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `f_audit_comment` mediumtext CHARACTER SET latin1 NOT NULL,
  `f_audit_fields_entry_old_db` mediumtext CHARACTER SET latin1,
  `f_audit_fields_entry_new_db` mediumtext CHARACTER SET latin1,
  `f_audit_fields_entry_old_screen` mediumtext CHARACTER SET latin1,
  `f_audit_fields_entry_new_screen` mediumtext CHARACTER SET latin1,
  `f_audit_array_POST` mediumtext CHARACTER SET latin1 NOT NULL,
  `f_audit_array_GET` tinytext CHARACTER SET latin1 NOT NULL,
  `f_audit_array_SESSION` text CHARACTER SET latin1 NOT NULL,
  `f_audit_access_level` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `f_audit_field_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_php_session_id` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `f_audit_session_id` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `f_compressed` int(1) DEFAULT NULL,
  `f_referrer` varchar(0) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`f_audit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8081783 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 5120 kB; InnoDB free: 5120 kB; InnoDB free: 512';

-- ----------------------------
-- Table structure for t_articles_import_schemas
-- ----------------------------
DROP TABLE IF EXISTS `t_articles_import_schemas`;
CREATE TABLE `t_articles_import_schemas` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `f_schema` mediumtext,
  `f_removed` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_articles_layout
-- ----------------------------
DROP TABLE IF EXISTS `t_articles_layout`;
CREATE TABLE `t_articles_layout` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `f_template_html` longtext,
  `f_removed` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_articles_lu
-- ----------------------------
DROP TABLE IF EXISTS `t_articles_lu`;
CREATE TABLE `t_articles_lu` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_type` varchar(255) DEFAULT NULL,
  `f_sub_type` varchar(255) DEFAULT NULL,
  `f_customer_id` int(11) DEFAULT NULL,
  `f_user_level` int(11) DEFAULT NULL,
  `f_class` varchar(255) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  `f_default_html` text,
  `f_project_wrap_class` varchar(255) DEFAULT NULL,
  `f_add_group_dropdown` int(11) NOT NULL DEFAULT '1',
  `f_type_image_with_children` varchar(255) DEFAULT NULL,
  `f_type_image` varchar(255) DEFAULT NULL,
  `f_recursive` int(11) NOT NULL DEFAULT '1',
  `f_template_layout_id` int(11) NOT NULL DEFAULT '9',
  `f_view_children_button` int(11) NOT NULL DEFAULT '1',
  `f_default_child_type` int(11) DEFAULT NULL,
  `f_hide_from_listing` int(11) DEFAULT NULL,
  `f_panel_class` text,
  `f_panel_heading` text,
  `f_panel_body` text,
  `f_marker_class` text,
  `f_content_append_to` varchar(255) DEFAULT NULL,
  `f_marker_text_dom` varchar(255) DEFAULT NULL,
  `xxf_project_row` int(11) DEFAULT NULL,
  `f_article_resource_folder` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=770 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_articles_versions
-- ----------------------------
DROP TABLE IF EXISTS `t_articles_versions`;
CREATE TABLE `t_articles_versions` (
  `f_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `f_node_copied_from` varchar(100) DEFAULT NULL,
  `f_children` mediumtext,
  `f_element` varchar(255) NOT NULL DEFAULT 'div',
  `f_attribute` text,
  `f_text` longtext,
  `f_node_type_id` int(11) DEFAULT NULL,
  `f_content` longtext NOT NULL,
  `f_content_preprocess` longtext NOT NULL,
  `f_import_schema` text NOT NULL,
  `f_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `f_hide_if` varchar(255) DEFAULT NULL,
  `f_removed` int(11) NOT NULL,
  `f_created_timestamp` timestamp NULL DEFAULT NULL,
  `f_comment` varchar(255) DEFAULT NULL,
  `f_from_stage` varchar(255) DEFAULT NULL,
  `f_to_stage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`),
  KEY `f_children-f_remove` (`f_children`(255),`f_removed`) USING BTREE,
  KEY `f_children` (`f_children`(255)) USING BTREE,
  KEY `f_node_copied_from` (`f_node_copied_from`)
) ENGINE=InnoDB AUTO_INCREMENT=311382 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_customers
-- ----------------------------
DROP TABLE IF EXISTS `t_customers`;
CREATE TABLE `t_customers` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `f_display_name` varchar(255) DEFAULT NULL,
  `f_start_node` int(11) DEFAULT NULL,
  `Xf_company_stylesheet` varchar(255) DEFAULT NULL,
  `Xf_company_js` varchar(255) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  `f_tagging_menu` int(11) NOT NULL DEFAULT '1159',
  `f_schema` text,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=303 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_gallery_directives
-- ----------------------------
DROP TABLE IF EXISTS `t_gallery_directives`;
CREATE TABLE `t_gallery_directives` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_friendly_name` varchar(255) DEFAULT NULL,
  `f_directive_name` varchar(100) DEFAULT NULL,
  `f_directive` text,
  `f_ignore_quality_sample` int(11) DEFAULT NULL,
  `f_display_suffix` varchar(255) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  `Xf_html` text,
  `Xf_button_icon` varchar(255) DEFAULT NULL,
  `Xf_button_text` varchar(255) DEFAULT NULL,
  `Xf_hide_filter_buttons` int(11) DEFAULT NULL,
  `Xf_order` int(11) DEFAULT '99',
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_gallery_edit_buttons
-- ----------------------------
DROP TABLE IF EXISTS `t_gallery_edit_buttons`;
CREATE TABLE `t_gallery_edit_buttons` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `f_html` text,
  `f_button_icon` varchar(255) DEFAULT NULL,
  `f_button_text` varchar(255) DEFAULT NULL,
  `f_hide_filter_buttons` int(11) DEFAULT NULL,
  `f_directive_id` int(11) DEFAULT NULL,
  `f_order` int(11) DEFAULT '99',
  `f_removed` int(11) DEFAULT NULL,
  `Xf_directive_name` varchar(100) DEFAULT NULL,
  `Xf_directive` text,
  `Xf_ignore_quality_sample` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_globals
-- ----------------------------
DROP TABLE IF EXISTS `t_globals`;
CREATE TABLE `t_globals` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `f_content` text,
  `f_removed` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for t_node_type_article
-- ----------------------------
DROP TABLE IF EXISTS `t_node_type_article`;
CREATE TABLE `t_node_type_article` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_node_id` int(11) DEFAULT NULL,
  `f_api_Desc` varchar(255) DEFAULT NULL,
  `f_api_State` varchar(255) DEFAULT NULL,
  `f_api_ClientOrderNumber` int(11) DEFAULT NULL,
  `f_api_StartDate` timestamp NULL DEFAULT NULL,
  `f_api_DueDate` timestamp NULL DEFAULT NULL,
  `f_api_CompletedDate` timestamp NULL DEFAULT NULL,
  `f_api_SignedOffBy` varchar(255) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  `f_node_id_customer` int(11) DEFAULT NULL,
  `f_node_id_group` int(11) DEFAULT NULL,
  `f_node_id_publication` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5360 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_node_type_customers
-- ----------------------------
DROP TABLE IF EXISTS `t_node_type_customers`;
CREATE TABLE `t_node_type_customers` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_node_id` int(11) DEFAULT NULL,
  `f_api_Name` varchar(255) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_node_type_group
-- ----------------------------
DROP TABLE IF EXISTS `t_node_type_group`;
CREATE TABLE `t_node_type_group` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_node_id` int(11) DEFAULT NULL,
  `f_api_Desc` varchar(255) DEFAULT NULL,
  `f_api_State` varchar(255) DEFAULT NULL,
  `f_api_ClientOrderNumber` int(11) DEFAULT NULL,
  `f_api_StartDate` timestamp NULL DEFAULT NULL,
  `f_api_DueDate` timestamp NULL DEFAULT NULL,
  `f_api_CompletedDate` timestamp NULL DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  `f_node_id_customer` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_node_type_publication
-- ----------------------------
DROP TABLE IF EXISTS `t_node_type_publication`;
CREATE TABLE `t_node_type_publication` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_node_id` int(11) DEFAULT NULL,
  `f_api_Desc` varchar(255) DEFAULT NULL,
  `f_api_State` varchar(255) DEFAULT NULL,
  `f_api_ClientOrderNumber` int(11) DEFAULT NULL,
  `f_api_StartDate` timestamp NULL DEFAULT NULL,
  `f_api_DueDate` timestamp NULL DEFAULT NULL,
  `f_api_CompletedDate` timestamp NULL DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  `f_node_id_customer` int(11) DEFAULT NULL,
  `f_node_id_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=290 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_proof_review_audit
-- ----------------------------
DROP TABLE IF EXISTS `t_proof_review_audit`;
CREATE TABLE `t_proof_review_audit` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_article_id` int(11) DEFAULT NULL,
  `f_stage` int(11) DEFAULT NULL,
  `f_key_used` varchar(255) DEFAULT NULL,
  `f_proof_review_id` int(11) DEFAULT NULL,
  `f_timestamp` timestamp NULL DEFAULT NULL,
  `f_ip` varchar(255) DEFAULT NULL,
  `f_browser` text,
  `f_user` varchar(255) DEFAULT NULL,
  `f_user_id` int(11) DEFAULT NULL,
  `f_comment` text,
  `f_access_level` int(11) DEFAULT NULL,
  `f_session_id` varchar(255) DEFAULT NULL,
  `f_referrer` varchar(255) DEFAULT NULL,
  `f_stage_id` int(11) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  `f_proof_review_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=252500 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_proof_review_type_lu
-- ----------------------------
DROP TABLE IF EXISTS `t_proof_review_type_lu`;
CREATE TABLE `t_proof_review_type_lu` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  `f_user_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_proof_reviews
-- ----------------------------
DROP TABLE IF EXISTS `t_proof_reviews`;
CREATE TABLE `t_proof_reviews` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_proof_type_id` int(11) DEFAULT NULL,
  `f_article_id` int(11) DEFAULT NULL,
  `f_key_id` int(11) DEFAULT NULL,
  `xxf_key` varchar(255) DEFAULT NULL,
  `f_stage_audit` varchar(255) DEFAULT NULL,
  `f_email_date_sent` timestamp NULL DEFAULT NULL,
  `f_article_date_landed` timestamp NULL DEFAULT NULL,
  `f_article_date_finished` timestamp NULL DEFAULT NULL,
  `f_article_signed_off_by` varchar(255) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  `f_email` varchar(255) DEFAULT NULL,
  `f_email_sent` text,
  `f_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=370 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_proof_steps
-- ----------------------------
DROP TABLE IF EXISTS `t_proof_steps`;
CREATE TABLE `t_proof_steps` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `f_comment` varchar(255) DEFAULT NULL,
  `f_html` longtext,
  `xxf_order` int(11) DEFAULT NULL,
  `f_left_panel_show` int(11) NOT NULL DEFAULT '1',
  `f_right_panel_show` int(11) NOT NULL,
  `f_toggle_buttons_show` int(11) NOT NULL DEFAULT '1',
  `f_removed` int(11) NOT NULL,
  `f_class` varchar(255) DEFAULT NULL,
  `f_docready_js` longblob,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=380 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_proof_steps_lu
-- ----------------------------
DROP TABLE IF EXISTS `t_proof_steps_lu`;
CREATE TABLE `t_proof_steps_lu` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_group` varchar(255) DEFAULT NULL,
  `f_step_id` int(11) DEFAULT NULL,
  `f_order` int(11) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  `f_step_name_override` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=300 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_proofs
-- ----------------------------
DROP TABLE IF EXISTS `t_proofs`;
CREATE TABLE `t_proofs` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_job_number` varchar(255) DEFAULT NULL,
  `f_job_id` int(11) DEFAULT NULL,
  `f_saved_as` varchar(255) DEFAULT NULL,
  `f_review` varchar(255) DEFAULT NULL,
  `f_user_id` int(11) DEFAULT NULL,
  `f_timestamp` timestamp NULL DEFAULT NULL,
  `f_article_id` int(11) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=413443 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_querybank
-- ----------------------------
DROP TABLE IF EXISTS `t_querybank`;
CREATE TABLE `t_querybank` (
  `f_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `f_queryhtml` text,
  `f_classnames` text,
  `f_removed` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_resource_type_inc
-- ----------------------------
DROP TABLE IF EXISTS `t_resource_type_inc`;
CREATE TABLE `t_resource_type_inc` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `f_path` varchar(255) DEFAULT NULL,
  `f_order` int(11) DEFAULT NULL,
  `f_removed` int(11) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for uk_us_spelling
-- ----------------------------
DROP TABLE IF EXISTS `uk_us_spelling`;
CREATE TABLE `uk_us_spelling` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `usSpelling` varchar(100) NOT NULL,
  `ukSpelling` varchar(100) NOT NULL,
  `inUse` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1633 DEFAULT CHARSET=utf8;
DROP TRIGGER IF EXISTS `jrnlinfo_copy`;
DELIMITER ;;
CREATE TRIGGER `jrnlinfo_copy` BEFORE UPDATE ON `__t_jrnlinfo` FOR EACH ROW SET NEW.updatedOnTime = NOW()
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `pubinfo`;
DELIMITER ;;
CREATE TRIGGER `pubinfo` BEFORE UPDATE ON `publisherinfo` FOR EACH ROW SET NEW.updatedOn = NOW()
;;
DELIMITER ;
SET FOREIGN_KEY_CHECKS=1;
