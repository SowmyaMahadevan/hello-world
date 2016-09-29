/*
Navicat MySQL Data Transfer

Source Server         : cms31.ama.uk.com
Source Server Version : 50544
Source Host           : cms31.exetercs.com:33065
Source Database       : ama_cms

Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001

Date: 2016-09-29 15:02:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_dn_controller
-- ----------------------------
DROP TABLE IF EXISTS `t_dn_controller`;
CREATE TABLE `t_dn_controller` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_url_match` varchar(255) NOT NULL,
  `f_site_name` varchar(255) NOT NULL,
  `f_version` varchar(255) NOT NULL DEFAULT 'cms-0.9.40-alpha',
  `f_db_server` varchar(255) DEFAULT 'localhost',
  `f_pg_server` varchar(255) DEFAULT NULL,
  `f_ck_dns` int(11) DEFAULT NULL,
  `f_ck_web` int(11) DEFAULT NULL,
  `f_ck_pag` int(11) DEFAULT NULL,
  `f_comment` varchar(255) DEFAULT NULL,
  `f_comment_system` varchar(255) DEFAULT NULL,
  `f_page` varchar(255) NOT NULL DEFAULT 'index.php',
  `f_omit` int(1) NOT NULL,
  `f_order` int(11) NOT NULL,
  `f_timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `f_removed` int(1) NOT NULL,
  `f_dns_pointing` varchar(255) DEFAULT NULL,
  `f_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `f_clicks` bigint(20) NOT NULL,
  `f_clicks_hour` int(11) NOT NULL,
  `f_clicks_day` int(11) NOT NULL,
  `f_clicks_week` int(11) NOT NULL,
  `f_clicks_month` int(11) NOT NULL,
  `f_clicks_year` int(11) NOT NULL,
  `f_redirect` varchar(255) DEFAULT NULL,
  `f_fg_absolute_version` int(1) DEFAULT NULL,
  `f_fg_ModPagespeed` int(1) DEFAULT NULL,
  `f_fg_ModPagespeedFilters` varchar(255) DEFAULT NULL,
  `f_click_timestamp` timestamp NULL DEFAULT NULL,
  `f_click_web_server` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`f_id`),
  KEY `f_url_match` (`f_url_match`),
  KEY `f_omit` (`f_url_match`,`f_omit`,`f_removed`)
) ENGINE=MyISAM AUTO_INCREMENT=5612 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_dn_controller
-- ----------------------------
INSERT INTO `t_dn_controller` VALUES ('5301', 'api.qa.springer.dev.cms.kriyadocs.com', 'qa.springer', 'cms-0.9.40-alpha-qa', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-05-03 07:17:53', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('5232', 'api.abstracts.kriyadocs.com', 'bmj_abstracts_01', 'cms-kriya-bmj-abs-0.1', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '0000-00-00 00:00:00', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('5241', 'api.qa.elife.dev.cms.kriyadocs.com', 'qa.elife', 'cms-0.9.40-alpha-qa', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 09:13:02', '0', null, '0', '3990', '3990', '3990', '3990', '3990', '3990', null, null, null, null, '2016-09-29 09:13:02', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5251', 'qa.microbiosoc.dev.cms.kriyadocs.com', 'qa.microbio', 'cms-0.9.40-alpha-qa', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 09:24:11', '0', null, '0', '170971', '170971', '170971', '170971', '170971', '170971', null, null, null, null, '2016-09-29 09:24:11', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5261', 'api.qa.microbiosoc.dev.cms.kriyadocs.com', 'qa.microbio', 'cms-0.9.40-alpha-qa', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-24 11:50:00', '0', null, '0', '399', '399', '399', '399', '399', '399', null, null, null, null, '2016-09-24 11:50:00', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5271', 'qa.bir.dev.cms.kriyadocs.com', 'qa.bir', 'cms-0.9.40-alpha-qa', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-22 11:10:09', '0', null, '0', '4414', '4414', '4414', '4414', '4414', '4414', null, null, null, null, '2016-09-22 11:10:09', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5281', 'api.qa.bir.dev.cms.kriyadocs.com', 'qa.bir', 'cms-0.9.40-alpha-qa', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-05-03 07:17:55', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('5291', 'qa.springer.dev.cms.kriyadocs.com', 'qa.springer', 'cms-0.9.40-alpha-qa', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-21 11:46:57', '0', null, '0', '449', '449', '449', '449', '449', '449', null, null, null, null, '2016-09-21 11:46:57', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('4189', 'www.exetercs.com', 'exeter_editorial', 'cms-0.9.39-alpha', 'localhost', 'pag2.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 03:27:21', '0', null, '0', '267', '267', '267', '267', '267', '267', null, null, null, null, '2016-09-29 03:27:21', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5311', 'qa.rcs.dev.cms.kriyadocs.com', 'qa.rcs', 'cms-0.9.40-alpha-qa', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-21 12:01:12', '0', null, '0', '3320', '3320', '3320', '3320', '3320', '3320', null, null, null, null, '2016-09-21 12:01:12', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5321', 'api.qa.rcs.dev.cms.kriyadocs.com', 'qa.rcs', 'cms-0.9.40-alpha-qa', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-05-03 07:17:57', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('5331', 'qa.bep.dev.cms.kriyadocs.com', 'qa.bep', 'cms-0.9.40-alpha-qa', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-21 12:04:55', '0', null, '0', '192', '192', '192', '192', '192', '192', null, null, null, null, '2016-09-21 12:04:55', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5341', 'api.qa.bir.dev.cms.kriyadocs.com', 'qa.bep', 'cms-0.9.40-alpha-qa', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-05-03 07:17:58', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('5351', 'qa.bmj.dev.cms.kriyadocs.com', 'qa.bmj', 'cms-kriya-bmj-abs-0.1', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-21 11:29:03', '0', null, '0', '601', '601', '601', '601', '601', '601', null, null, null, null, '2016-09-21 11:29:03', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5361', 'api.qa.bmj.dev.cms.kriyadocs.com', 'qa.bmj', 'cms-kriya-bmj-abs-0.1', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-05-09 05:18:16', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('4309', 'dev.crc.cms.ama.uk.com', 'exetercs_02', 'cms-0.9.39-alpha', 'localhost', null, null, null, null, null, null, 'index.php', '0', '0', '2014-10-18 16:38:20', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('5362', 'api.concussion.kriyadocs.com', 'bmj_abstracts_01', 'cms-kriya-bmj-abs-0.1', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '0000-00-00 00:00:00', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('5372', 'bmj.kriyadocs.com', 'bmj_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-28 14:37:05', '0', null, '0', '99408', '99408', '99408', '99408', '99408', '99408', null, null, null, null, '2016-09-28 14:37:05', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5382', 'api.bmj.kriyadocs.com', 'bmj_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-22 07:08:56', '0', null, '0', '178', '178', '178', '178', '178', '178', null, null, null, null, '2016-09-22 07:08:56', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5392', 'studentbmj.kriyadocs.com', 'student_bmj_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-06-02 06:37:32', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('5402', 'api.studentbmj.kriyadocs.com', 'student_bmj_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-06-02 06:37:29', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('4389', 'bmj.exetercs.com', 'exetercs_04', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-19 07:05:49', '0', null, '0', '119', '119', '119', '119', '119', '119', null, null, null, null, '2016-09-19 07:05:49', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4399', 'sensepub.exetercs.com', 'exetercs_02', 'cms-0.9.39-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, '', '', 'index.php', '0', '0', '2016-08-07 06:22:28', '0', '', '0', '14', '14', '14', '14', '14', '14', '', null, null, '', '2016-08-07 06:22:28', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5412', 'elife.kriyadocs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 08:58:21', '0', null, '0', '5205', '5205', '5205', '5205', '5205', '5205', null, null, null, null, '2016-09-29 08:58:21', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5422', 'cabi.kriyadocs.com', 'cabi_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 05:34:14', '0', null, '0', '2523', '2523', '2523', '2523', '2523', '2523', null, null, null, null, '2016-09-29 05:34:14', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5432', 'api.cabi.kriyadocs.com', 'cabi_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com', null, null, null, null, null, 'index.php', '0', '0', '2016-06-20 04:34:13', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('5442', 'frontiers.kriyadocs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com', null, null, null, null, null, 'index.php', '0', '0', '2016-09-03 09:28:18', '0', null, '0', '104', '104', '104', '104', '104', '104', null, null, null, null, '2016-09-03 09:28:18', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5452', 'dev.slm.cms.kriyadocs.com', 'exetercs_08', 'cms-0.9.40-alpha', 'localhost', null, null, null, null, null, null, 'index.php', '0', '0', '2016-09-09 11:33:14', '0', null, '0', '345', '345', '345', '345', '345', '345', null, null, null, null, '2016-09-09 11:33:14', 'cms32');
INSERT INTO `t_dn_controller` VALUES ('4509', 'dev.04.exetercs.com', 'exetercs_04', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, '', '', 'index.php', '0', '0', '2016-04-27 06:11:43', '1', '', '0', '0', '0', '0', '0', '0', '0', '', null, null, '', null, null);
INSERT INTO `t_dn_controller` VALUES ('4519', 'pari.07.exetercs.com ', 'exetercs_07', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, '', '', 'index.php', '0', '0', '2016-04-27 06:11:46', '1', '', '0', '0', '0', '0', '0', '0', '0', '', null, null, '', null, null);
INSERT INTO `t_dn_controller` VALUES ('4549', 'api.exetercs.com', 'exetercs_04', 'cms-0.9.40-alpha', 'localhost', '', null, null, null, '', '', 'index.php', '0', '0', '2016-09-23 11:41:11', '0', '', '0', '60', '60', '60', '60', '60', '60', '', null, null, '', '2016-09-23 11:41:11', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4569', 'www.tandf.exetercs.com', 'bir_bjrcr', 'cms-0.9.39-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, '', '', 'index.php', '0', '0', '2015-03-19 09:34:01', '0', '', '0', '0', '0', '0', '0', '0', '0', '', null, null, '', null, null);
INSERT INTO `t_dn_controller` VALUES ('4619', 'scrivener.exetercs.com', 'exetercs_04', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-26 05:05:21', '0', null, '0', '85', '85', '85', '85', '85', '85', null, null, null, null, '2016-09-26 05:05:21', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4649', 'websetter.exetercs.com', 'westerman', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, '', '', 'index.php', '0', '0', '2016-04-27 06:12:32', '1', '', '0', '0', '0', '0', '0', '0', '0', '', null, null, '', null, null);
INSERT INTO `t_dn_controller` VALUES ('4659', 'bep.exetercs.com', 'exetercs_04', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-24 10:49:24', '0', null, '0', '10', '10', '10', '10', '10', '10', null, null, null, null, '2016-09-24 10:49:24', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4669', 'bir.prod.exetercs.com', 'exetercs_04', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-08-29 09:01:33', '0', null, '0', '8', '8', '8', '8', '8', '8', null, null, null, null, '2016-08-29 09:01:33', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4679', 'dev.06.exetercs.com', 'exetercs_06', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-04-27 06:12:48', '1', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('4689', 'api.dev.05.exetercs.com', 'exetercs_05', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-04-27 06:14:49', '1', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('4699', 'submissions.exetercs.com', 'exetercs_07', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-04-27 06:12:57', '1', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('4709', 'rcs.exetercs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2015-11-26 13:27:28', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('4729', 'frontiers.exetercs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-09 07:23:34', '0', null, '0', '4255', '4255', '4255', '4255', '4255', '4255', null, null, null, null, '2016-09-09 07:23:34', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4739', 'dev.07.exetercs.com', 'exetercs_07', 'cms-kriya-0.2-dev', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, '', '', 'index.php', '0', '0', '2016-09-22 07:15:27', '0', '', '0', '7426', '7426', '7426', '7426', '7426', '7426', '', null, null, '', '2016-09-22 07:15:27', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5462', 'elsevier.kriyadocs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-08-09 04:00:30', '0', null, '0', '4216', '4216', '4216', '4216', '4216', '4216', null, null, null, null, '2016-08-09 04:00:30', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5472', 'api.elsevier.kriyadocs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-08-06 13:23:39', '0', null, '0', '5944', '5944', '5944', '5944', '5944', '5944', null, null, null, null, '2016-08-06 13:23:39', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4779', 'dev.pari.07.web60.exetercs.com', 'exetercs_07', 'cms-0.9.40-alpha', 'localhost', null, null, null, null, null, null, 'index.php', '0', '0', '2016-04-27 06:13:06', '1', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('4769', 'dev.08.exetercs.com', 'exetercs_08', 'cms-kriya-0.2-test', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-08-25 10:21:26', '0', null, '0', '105', '105', '105', '105', '105', '105', null, null, null, null, '2016-08-25 10:21:26', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4799', 'qa.elife.dev.cms.kriyadocs.com', 'qa.elife', 'cms-0.9.40-alpha-qa', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 09:27:52', '0', null, '0', '409276', '409276', '409276', '409276', '409276', '409276', null, null, null, null, '2016-09-29 09:27:52', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('4809', 'wit.exetercs.com', 'exetercs_06', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2015-08-14 05:31:30', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('4819', 'dev.09.exetercs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 09:09:06', '0', null, '0', '24133', '24133', '24133', '24133', '24133', '24133', null, null, null, null, '2016-09-29 09:09:06', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4839', 'oslo.exetercs.com', 'exetercs_04', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-21 05:43:45', '0', null, '0', '75', '75', '75', '75', '75', '75', null, null, null, null, '2016-09-21 05:43:45', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4859', 'dev.pari.09.cms.exetercs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', '', null, null, null, '', '', 'index.php', '0', '0', '2016-03-10 07:49:54', '0', '', '0', '109', '109', '109', '109', '109', '109', '', null, null, '', '2016-03-10 07:49:54', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('4829', 'dev.pari.07.cms.exetercs.com', 'exetercs_07', 'cms-0.9.40-alpha', 'localhost', null, null, null, null, null, null, 'index.php', '0', '0', '2015-09-23 16:40:00', '0', null, '0', '2', '2', '2', '2', '2', '2', null, null, null, null, '2015-09-23 16:38:14', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('4862', 'api.dev.07.exetercs.com', 'exetercs_07', 'cms-kriya-0.2-dev', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-22 04:35:27', '0', null, '0', '258', '258', '258', '258', '258', '258', null, null, null, null, '2016-09-22 04:35:27', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4872', 'api.dev.09.exetercs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 09:11:48', '0', null, '0', '13372', '13372', '13372', '13372', '13372', '13372', null, null, null, null, '2016-09-29 09:11:48', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4882', 'kriya.exetercs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-17 11:07:59', '0', null, '0', '191', '191', '191', '191', '191', '191', null, null, null, null, '2016-09-17 11:07:59', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4892', 'elife.exetercs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 09:30:06', '0', null, '0', '4310126', '4310126', '4310126', '4310126', '4310126', '4310126', null, null, null, null, '2016-09-29 09:30:06', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4902', 'test.cms.exetercs.com', 'exetercs_10', 'cms-0.9.40-beta', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-04-27 06:13:30', '1', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('4912', 'dove.exetercs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '0000-00-00 00:00:00', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('4922', 'www.tandf.kriyadocs.com', 'bir_bjrcr', 'cms-0.9.39-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, '2015-11-04 - SLM  -- Added by SLM as a test', null, 'index.php', '0', '0', '2016-04-27 06:13:53', '1', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('4932', 'qa.kriyadocs.com', 'exetercs_08', 'cms-kriya-0.2-test', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 04:38:06', '0', null, '0', '17059', '17059', '17059', '17059', '17059', '17059', null, null, null, null, '2016-09-29 04:38:06', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4942', 'elife.cms.exetercs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', null, null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 07:41:24', '0', null, '0', '7298156', '7298156', '7298156', '7298156', '7298156', '7298156', null, null, null, null, '2016-09-29 07:41:24', 'cms33');
INSERT INTO `t_dn_controller` VALUES ('4952', 'www.kriyadocs.com', '', '', null, null, null, null, null, null, null, 'index.php', '0', '0', '2016-09-28 17:55:25', '0', null, '0', '106', '106', '106', '106', '106', '106', 'http://www.exeterpremedia.com/kriya', null, null, null, '2016-09-28 17:55:25', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4972', 'scrivenerpub.exetercs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-28 12:56:46', '0', null, '0', '50258', '50258', '50258', '50258', '50258', '50258', null, null, null, null, '2016-09-28 12:56:46', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4982', 'kriyadocs.com', '', '', '', '', null, null, null, '', '', 'index.php', '0', '0', '2016-09-29 08:31:12', '0', '', '0', '3456', '3456', '3456', '3456', '3456', '3456', 'http://www.exeterpremedia.com/kriya', null, null, '', '2016-09-29 08:31:12', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('4992', 'bir.kriyadocs.com', 'bir_bjrcr_live', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 09:27:46', '0', null, '0', '35048', '35048', '35048', '35048', '35048', '35048', null, null, null, null, '2016-09-29 09:27:46', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5002', 'bir.exetercs.com', 'bir_bjrcr_live', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 09:06:20', '0', null, '0', '141611', '141611', '141611', '141611', '141611', '141611', null, null, null, null, '2016-09-29 09:06:20', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5012', 'api.bir.bjrcr.exetercs.com', 'bir_bjrcr_live', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-26 10:02:19', '0', null, '0', '14', '14', '14', '14', '14', '14', null, null, null, null, '2016-09-26 10:02:19', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5022', 'springerpub.exetercs.com', 'springer_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 09:29:04', '0', null, '0', '8804', '8804', '8804', '8804', '8804', '8804', null, null, null, null, '2016-09-29 09:29:04', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5032', 'api.springerpub.exetercs.com', 'springer_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-24 07:30:28', '0', null, '0', '6', '6', '6', '6', '6', '6', null, null, null, null, '2016-09-24 07:30:28', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5072', 'api.dev.08.exetercs.com', 'exetercs_08', 'cms-kriya-0.2-test', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, '', '', 'index.php', '0', '0', '2016-01-12 05:58:42', '0', '', '0', '0', '0', '0', '0', '0', '0', '', null, null, '', '0000-00-00 00:00:00', '');
INSERT INTO `t_dn_controller` VALUES ('5042', 'test.springerpub.exetercs.com', 'springer_test', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2015-12-18 11:06:05', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('5051', 'dev.kriya.02.cms.exetercs.com', 'kriya_02', 'cms-0.9.41-alpha', 'localhost', null, null, null, null, null, null, 'index.php', '0', '0', '2016-09-01 04:14:53', '1', null, '0', '1298', '1298', '1298', '1298', '1298', '1298', null, null, null, null, '2016-04-25 16:58:04', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5052', 'microbiosoc.kriyadocs.com', 'microbio_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 09:30:17', '0', null, '0', '5560773', '5560773', '5560773', '5560773', '5560773', '5560773', null, null, null, null, '2016-09-29 09:30:17', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5062', 'api.elife.exetercs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 09:21:47', '0', null, '0', '372411', '372411', '372411', '372411', '372411', '372411', null, null, null, null, '2016-09-29 09:21:47', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5082', 'api.bir.exetercs.com', 'bir_bjrcr_live', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-27 13:32:28', '0', null, '0', '589', '589', '589', '589', '589', '589', null, null, null, null, '2016-09-27 13:32:28', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5102', 'dev.kriya.01.cms.exetercs.com', 'kriya_01', 'cms-kriya-0.2', 'localhost', null, null, null, null, null, null, 'index.php', '0', '0', '2016-05-21 10:44:00', '1', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('5112', 'dev.01.cms.kriyadocs.com', 'kriya_dev', 'cms-kriya-1.0-dev', 'localhost', null, null, null, null, null, null, 'index.php', '0', '0', '2016-05-21 10:43:56', '1', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('5122', 'api.microbiosoc.kriyadocs.com', 'microbio_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 09:29:20', '0', null, '0', '91946', '91946', '91946', '91946', '91946', '91946', null, null, null, null, '2016-09-29 09:29:20', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5132', 'abstracts.kriyadocs.com', 'bmj_abstracts_01', 'cms-kriya-bmj-abs-0.1', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-23 13:33:47', '0', null, '0', '77711', '77711', '77711', '77711', '77711', '77711', null, null, null, null, '2016-09-23 13:33:47', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5142', 'rcs.kriyadocs.com', 'rcs_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-20 12:05:12', '0', null, '0', '2828', '2828', '2828', '2828', '2828', '2828', null, null, null, null, '2016-09-20 12:05:12', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5152', 'api.rcs.kriyadocs.com', 'rcs_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-04-04 05:25:23', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('5162', 'sensepub.kriyadocs.com', 'sense_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-20 07:15:36', '0', null, '0', '855', '855', '855', '855', '855', '855', null, null, null, null, '2016-09-20 07:15:36', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5172', 'api.sensepub.kriyadocs.com', 'sense_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-20 07:08:59', '0', null, '0', '1', '1', '1', '1', '1', '1', null, null, null, null, '2016-09-20 07:08:59', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5182', 'concussion.kriyadocs.com', 'bmj_abstracts_01', 'cms-kriya-bmj-abs-0.1', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-28 11:52:49', '0', null, '0', '27772', '27772', '27772', '27772', '27772', '27772', null, null, null, null, '2016-09-28 11:52:49', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5191', 'dev.elife.cms.exetercs.com', 'kriya_dev', 'cms-kriya-1.0-dev', 'localhost', null, null, null, null, null, 'cms-kriya-1.0-dev', 'index.php', '0', '0', '2016-09-28 15:50:42', '0', null, '0', '4632', '4632', '4632', '4632', '4632', '4632', null, null, null, null, '2016-09-28 15:50:42', 'cms32');
INSERT INTO `t_dn_controller` VALUES ('5192', 'demo.kriyadocs.com', 'demo_elife_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-04-11 16:22:52', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('5202', 'api.demo.kriyadocs.com', 'demo_elife_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-27 10:04:45', '0', null, '0', '17', '17', '17', '17', '17', '17', null, null, null, null, '2016-09-27 10:04:45', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5212', 'bep.kriyadocs.com', 'bep_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-20 07:08:27', '0', null, '0', '310', '310', '310', '310', '310', '310', null, null, null, null, '2016-09-20 07:08:27', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5222', 'api.bep.kriyadocs.com', 'bep_01', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-04-20 13:57:21', '0', null, '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `t_dn_controller` VALUES ('5481', 'microbiosoc.cms.exetercs.com', 'microbio_01', 'cms-0.9.40-alpha', 'localhost', null, null, null, null, null, null, 'index.php', '0', '0', '2016-09-24 08:27:11', '0', null, '0', '28075', '28075', '28075', '28075', '28075', '28075', null, null, null, null, '2016-09-24 08:27:11', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5491', 'frontiers.cms.exetercs.com', 'exetercs_09', 'cms-0.9.40-alpha', 'localhost', null, null, null, null, null, null, 'index.php', '0', '0', '2016-08-24 15:17:38', '0', null, '0', '618', '618', '618', '618', '618', '618', null, null, null, null, '2016-08-24 15:17:38', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5501', 'test.microbiosoc.kriyadocs.com', '', '', null, null, null, null, null, null, null, 'index.php', '0', '0', '2016-08-09 13:57:36', '0', null, '0', '1', '1', '1', '1', '1', '1', 'microbiosoc.cms31.exetercs.com', null, null, null, '2016-08-09 13:57:36', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5533', '182.74.58.54', 'kriya_dev', 'cms-0.9.40-alpha', 'localhost', null, null, null, null, null, null, 'index.php', '0', '0', '2016-09-01 19:20:43', '0', null, '0', '2222', '2222', '2222', '2222', '2222', '2222', null, null, null, null, '2016-09-01 19:20:43', 'cms32');
INSERT INTO `t_dn_controller` VALUES ('5542', 'dev.kriya.02.kriyadocs.com', 'kriya_02', 'cms-0.9.40-alpha', 'localhost', null, null, null, null, null, null, 'index.php', '0', '0', '2016-09-01 04:58:55', '0', null, '0', '75', '75', '75', '75', '75', '75', null, null, null, null, '2016-09-01 04:58:55', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5551', 'qatest.elife.cms.kriyadocs.com', 'exetercs_09', 'cms-0.9.40-alpha-qa', 'localhost', null, null, null, null, null, null, 'index.php', '0', '0', '2016-09-04 11:25:24', '0', null, '0', '479', '479', '479', '479', '479', '479', null, null, null, null, '2016-09-04 11:25:24', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5561', 'stg-elife.cms.exetercs.com', 'stg-elife', 'cms-0.9.40-alpha-stg', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 09:29:44', '0', null, '0', '2831056', '2831056', '2831056', '2831056', '2831056', '2831056', null, null, null, null, '2016-09-29 09:29:44', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5563', 'dev.cms.kriyadocs.com', 'exetercs_02', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-19 07:08:45', '0', null, '0', '142', '142', '142', '142', '142', '142', null, null, null, null, '2016-09-19 07:08:45', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5572', 'api.qa.exeter_09.cms.exetercs.com', 'exetercs_09', 'cms-0.9.40-alpha-qa', 'localhost', null, null, null, null, null, null, 'index.php', '0', '0', '2016-09-14 18:29:11', '0', null, '0', '73', '73', '73', '73', '73', '73', null, null, null, null, '2016-09-14 18:29:11', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5581', 'stg-microbio.cms.exetercs.com', 'stg-microbio', 'cms-0.9.40-alpha-stg', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 09:29:28', '0', null, '0', '2814948', '2814948', '2814948', '2814948', '2814948', '2814948', null, null, null, null, '2016-09-29 09:29:28', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5591', 'infinitas.kriyadocs.com', 'infinitas', 'cms-0.9.40-alpha', 'localhost', 'pag4.ama.uk.com', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 09:30:17', '0', null, '0', '18514', '18514', '18514', '18514', '18514', '18514', null, null, null, null, '2016-09-29 09:30:17', 'cms31');
INSERT INTO `t_dn_controller` VALUES ('5601', 'rcgp.cms.kriyadocs.com', 'rcgp', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 07:57:30', '0', null, '0', '39', '39', '39', '39', '39', '39', null, null, null, null, '2016-09-29 07:57:30', 'cms30');
INSERT INTO `t_dn_controller` VALUES ('5611', 'rcgp.kriyadocs.com', 'rcgp', 'cms-0.9.40-alpha', 'localhost', 'pag3.ama.uk.com:8099', null, null, null, null, null, 'index.php', '0', '0', '2016-09-29 08:03:49', '0', null, '0', '27', '27', '27', '27', '27', '27', null, null, null, null, '2016-09-29 08:03:49', 'cms31');
SET FOREIGN_KEY_CHECKS=1;
