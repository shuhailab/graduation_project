/*
 Navicat Premium Data Transfer

 Source Server         : mysql57
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost:3306
 Source Schema         : srms

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 27/05/2020 21:35:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apply_portrait_project
-- ----------------------------
DROP TABLE IF EXISTS `apply_portrait_project`;
CREATE TABLE `apply_portrait_project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `project_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project_manager` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `man_id` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `man_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `man_mail` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `participant` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `proxy` int(2) NULL DEFAULT NULL COMMENT '承担单位',
  `project_from` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目来源',
  `project_dept` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目部门',
  `project_rank` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目级别',
  `start_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开题日期',
  `end_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预计结题日期',
  `result` int(2) NULL DEFAULT NULL COMMENT '项目预期成果',
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `status` int(2) NULL DEFAULT 0 COMMENT '3未结题 1已结题 2提交结题待审核 ',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `man_id`(`man_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apply_portrait_project
-- ----------------------------
INSERT INTO `apply_portrait_project` VALUES (2, '', '邮件定时发送', '', '201652056', '', '', '', 1, '', '', '', '', '', 10, '', 2);
INSERT INTO `apply_portrait_project` VALUES (30, '', '电气自动化', '', '201652056', '', '', '', 1, '', '', '', '', '', 1, NULL, 2);
INSERT INTO `apply_portrait_project` VALUES (31, '', '流体动力学', '', '201652056', '', '', '', 1, '', '', '', '', '', 1, NULL, 2);

-- ----------------------------
-- Table structure for apply_transverse_project
-- ----------------------------
DROP TABLE IF EXISTS `apply_transverse_project`;
CREATE TABLE `apply_transverse_project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `project_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project_class` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `agency` int(2) NULL DEFAULT 1 COMMENT '承担单位',
  `manager` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `man_id` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `man_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `man_mail` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sign_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同签订日期',
  `start_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '甲方名称',
  `user_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '甲方地址',
  `user_manager` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '甲方负责人',
  `user_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_mail` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT 0 COMMENT '1已结题 2审核中 3被否决',
  `typeof` int(2) NULL DEFAULT 1 COMMENT '1横向项目 2校级课题',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `man_id`(`man_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apply_transverse_project
-- ----------------------------
INSERT INTO `apply_transverse_project` VALUES (1, '', '大话数据结构', '', 1, '', '201652056', '', '', '', '', '', '', '', '', '', '', NULL, 2, 2);
INSERT INTO `apply_transverse_project` VALUES (2, NULL, '大话组成原理', NULL, 1, NULL, '201652056', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1);
INSERT INTO `apply_transverse_project` VALUES (4, '', '大话计算机网络', '', 1, '', '201652056', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2);

-- ----------------------------
-- Table structure for finished_project
-- ----------------------------
DROP TABLE IF EXISTS `finished_project`;
CREATE TABLE `finished_project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pro_rank` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '项目级别',
  `project_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pro_dept` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '项目部门',
  `manager` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `funds` double(10, 0) NULL DEFAULT NULL COMMENT '获批经费',
  `start_end` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '项目起止年月',
  `pro_from` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '项目来源',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of finished_project
-- ----------------------------

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` int(2) NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES (1, '201698023', '123456', 0, '李红', 'lihong@gmail.com', '15289089090', '博学楼503');

-- ----------------------------
-- Table structure for office
-- ----------------------------
DROP TABLE IF EXISTS `office`;
CREATE TABLE `office`  (
  `id` char(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `phone` char(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `political_outlook` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `post` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of office
-- ----------------------------

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `title_cn` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title_en` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author_school` int(2) NULL DEFAULT 1,
  `authors` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keywords` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publication_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `journal` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `journal_id` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '刊号',
  `journal_rank` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '期刊等级',
  `paper_class` enum('学位论文','开题报告','标准研究论文','综述文章','快报','透视文章','焦点论文','技术性要点','短评','案例研究','书评','刊物、更正或更新','会议论文','数据论文','仪器与软件的说明书类论文','论述','信息类文章') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '学位论文' COMMENT '论文种类',
  `doi` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author_id` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 0 COMMENT '论文审核状态 1通过 2审核中  3被否决',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `author_id`(`author_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES (1, '核物理', 'hewuli', '吴良镛', 1, '伍子胥', '核物理', '2019-10-02', 'nature', '2323', '外文核心期刊', '学位论文', '22', '201652057', NULL, 0);
INSERT INTO `paper` VALUES (25, '无机化学', 'wujihuaxue', '无机化学aaa', 1, '无机化学', '无机化学', '2016-12-02', 'nature', '33', '核心期刊', '学位论文', '22', '201652057', NULL, 3);
INSERT INTO `paper` VALUES (27, '计算机', '', '陈子仪aaaa', 1, '', '', '2020-05-10', '', '', '', '学位论文', '', '201652057', NULL, 3);
INSERT INTO `paper` VALUES (31, '计算机视觉处理', 'Computer vision processing', '树海', 1, '树海', '计算机视觉', '2020-05-10', 'Communications of the ACM', '', '', '标准研究论文', '', '201652056', NULL, 1);
INSERT INTO `paper` VALUES (32, '机器学习', 'Machine Learing', '树海', 1, '树海', '机器学习', '2020-05-10', 'IEEE transactions on image processing', NULL, NULL, '数据论文', NULL, '201652056', NULL, 2);

-- ----------------------------
-- Table structure for paper_copy1
-- ----------------------------
DROP TABLE IF EXISTS `paper_copy1`;
CREATE TABLE `paper_copy1`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `title_cn` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title_en` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author_school` int(2) NULL DEFAULT 1,
  `authors` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keywords` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publication_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `journal` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `journal_id` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '刊号',
  `journal_rank` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '期刊等级',
  `paper_class` enum('学位论文','开题报告','标准研究论文','综述文章','快报','透视文章','焦点论文','技术性要点','短评','案例研究','书评','刊物、更正或更新','会议论文','数据论文','仪器与软件的说明书类论文','论述','信息类文章') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '学位论文' COMMENT '论文种类',
  `doi` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author_id` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 0 COMMENT '论文审核状态 1通过 2审核中  3被否决',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `author_id`(`author_id`) USING BTREE,
  CONSTRAINT `paper_copy1_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paper_copy1
-- ----------------------------

-- ----------------------------
-- Table structure for patent
-- ----------------------------
DROP TABLE IF EXISTS `patent`;
CREATE TABLE `patent`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patent_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专利号',
  `school` int(2) NULL DEFAULT 1,
  `patent_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `authors` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author_id` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者ID',
  `grant_date` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT 0 COMMENT '1审核通过 2申请审核 3被否决',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `author_id`(`author_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of patent
-- ----------------------------
INSERT INTO `patent` VALUES (1, '222', 1, '#', '##', '201652056', NULL, NULL, 2);
INSERT INTO `patent` VALUES (2, '222', 1, '专利专利专利', '222', '201652056', '', NULL, 1);
INSERT INTO `patent` VALUES (3, '11', 1, '专利名称', '11', '201652056', '', NULL, 1);
INSERT INTO `patent` VALUES (4, '', 1, '核技术民用的研究', '', '201652056', '', '', 3);
INSERT INTO `patent` VALUES (6, '', 1, '民用核技术的研究', '', '201652056', '', '', 3);

-- ----------------------------
-- Table structure for project_review
-- ----------------------------
DROP TABLE IF EXISTS `project_review`;
CREATE TABLE `project_review`  (
  `id` int(2) NOT NULL,
  `type` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_review
-- ----------------------------

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES (1, '技术方案');
INSERT INTO `result` VALUES (2, '技术模式');
INSERT INTO `result` VALUES (3, '新产品，新技术，新装备');
INSERT INTO `result` VALUES (4, '科学观测数据');
INSERT INTO `result` VALUES (5, '研究论文');
INSERT INTO `result` VALUES (6, '专著');
INSERT INTO `result` VALUES (7, '软件系统');
INSERT INTO `result` VALUES (8, '专利');
INSERT INTO `result` VALUES (9, '人才培养方案');

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES (1, '计算机科学技术学院');
INSERT INTO `school` VALUES (2, '物理与电子工程学院');
INSERT INTO `school` VALUES (3, '数学科学学院');
INSERT INTO `school` VALUES (4, '商学院');
INSERT INTO `school` VALUES (5, '材料科学学院');
INSERT INTO `school` VALUES (6, '电气工程学院');
INSERT INTO `school` VALUES (7, '自动化学院');
INSERT INTO `school` VALUES (8, '能源与动力学院');
INSERT INTO `school` VALUES (9, '科研处');

-- ----------------------------
-- Table structure for secretary
-- ----------------------------
DROP TABLE IF EXISTS `secretary`;
CREATE TABLE `secretary`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `teacher_id` char(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pwd` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` int(1) NOT NULL,
  `email` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone` char(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `school` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of secretary
-- ----------------------------
INSERT INTO `secretary` VALUES (1, '201652056', '123456', '李文亮', 1, 'liwenliang@gmail.com', '15278978990', '物理学院', '物理楼504');

-- ----------------------------
-- Table structure for sr_award
-- ----------------------------
DROP TABLE IF EXISTS `sr_award`;
CREATE TABLE `sr_award`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sr_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科研项目',
  `project_class` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目类别',
  `project_rank` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目级别',
  `award_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `authors` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `get_date` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '获奖日期',
  `agency` int(2) NULL DEFAULT NULL COMMENT '主要完成单位',
  `description` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT 0 COMMENT '1通过 2审核中 3被否决',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `author`(`author`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sr_award
-- ----------------------------
INSERT INTO `sr_award` VALUES (1, '一等奖一等奖', '创新创业', '国家一级', '', '最高级', '201652056', '', '', 1, NULL, 1);
INSERT INTO `sr_award` VALUES (7, 'ACM金牌中的白金', '竞赛', '', '', '', '201652056', '', '', 1, NULL, 1);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `teacher_id` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacher_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` tinyint(1) NULL DEFAULT NULL,
  `mail` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `education` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `research_direction` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '研究方向',
  `school` int(2) NULL DEFAULT NULL COMMENT '学院',
  `office_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '办公地址',
  `typeof` int(2) NOT NULL DEFAULT 0 COMMENT '0教师 1科研秘书 2管理员',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_teacher_id`(`teacher_id`) USING BTREE COMMENT '设置教师ID唯一性'
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '201652056', '123456', '树海', 1, 'shuhai@gmail.com', '15234545690', '博士', '教授', '机器学习', 1, '四号楼504', 0);
INSERT INTO `teacher` VALUES (5, '201652057', '123456', '李立三', 1, 'lilisan@gmail.com', '15278945689', '博士', '教授', '普适计算', 1, '四号楼501', 1);
INSERT INTO `teacher` VALUES (11, '201652058', '123456', '李子涵', 1, 'lizihan@gmail.com', '15245678965', '博士', '教授', '深度学习', 1, '四号楼500', 0);
INSERT INTO `teacher` VALUES (12, '201652059', '123456', '朱丽三', 1, 'lilisan@gmail.com', '15278945656', '博士', '工程师', '机器学习', 1, '四号楼503', 1);
INSERT INTO `teacher` VALUES (15, '201652060', '123456', '黄蓉', 1, 'huangrong@gmail.com', '15245678923', '博士', '副教授', '嵌入式系统', 1, '四号楼502', 2);

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author_id` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school` int(2) NULL DEFAULT 1 COMMENT '一作所属学院',
  `work_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` enum('专著','独著','合著') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '专著' COMMENT '论著类型',
  `publish_year` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `press` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ISBN` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT 0 COMMENT '1审核通过 2申请审核 3被否决',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `author_id`(`author_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of work
-- ----------------------------
INSERT INTO `work` VALUES (3, '树海', '201652056', 1, 'Service Computing: ﻿Concepts, Methods and Technology', '专著', '2020-05-01', '荷兰', 'Morgan Kaufmann Publishers Inc.', '33', 3);
INSERT INTO `work` VALUES (4, '树海', '201652056', 1, 'SmartShadow: Models and Methods for Pervasive Computing', '专著', '2020-05-01', '中国杭州', 'Springer Science and Zhejiang University Press Co., Ltd', '33', 2);
INSERT INTO `work` VALUES (5, '树海', '201652056', 1, 'Modern Computational Approaches to Traditional Chinese Medicine', '专著', '2020-05-01', '中国杭州', ' Elsevier Inc. and Zhejiang University Press Co., Ltd', '33', 1);

SET FOREIGN_KEY_CHECKS = 1;
