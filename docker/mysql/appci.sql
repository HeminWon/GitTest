/*
 Navicat Premium Data Transfer

 Source Server         : appci
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : 47.100.248.109:3306
 Source Schema         : appci

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 07/01/2019 10:02:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for huskar_app_component
-- ----------------------------
DROP TABLE IF EXISTS `huskar_app_component`;
CREATE TABLE `huskar_app_component` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态位 1-有效 其他无效',
  `uid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户id',
  `gmt_create` bigint(20) NOT NULL COMMENT '创建时间',
  `gmt_update` bigint(20) NOT NULL COMMENT '修改时间',
  `name` varchar(200) DEFAULT NULL COMMENT '组件名',
  `repo_addr` varchar(256) NOT NULL DEFAULT '' COMMENT '仓库地址',
  `branch` varchar(200) DEFAULT NULL COMMENT '分支名',
  `branch_desc` varchar(512) DEFAULT '' COMMENT '分支名描述',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-公版组件 2-定制组件',
  `spec` varchar(50) NOT NULL DEFAULT '' COMMENT '定制组件的spec',
  `platform` tinyint(4) DEFAULT NULL COMMENT '组件的平台 1-iOS 2-android',
  `emails` varchar(512) NOT NULL DEFAULT '' COMMENT '组件负责人邮件地址多个逗号隔开',
  `version` varchar(200) NOT NULL DEFAULT '' COMMENT '存的冗余，用来直接输出组件版本',
  `custom_version` varchar(200) NOT NULL DEFAULT '' COMMENT '定制组件原始版本',
  `build_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '最后一次构建状态：1-还没有构建过 2-正在构建 3-源码构建成功 4-源码构建失败 5-静态库构建成功 6-静态库失败 7-组件集成成功 8-组件集成失败',
  `group` varchar(255) NOT NULL DEFAULT '' COMMENT '组件所在模块，Android平台必填',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=794 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='app组件表';

-- ----------------------------
-- Table structure for huskar_app_component_build
-- ----------------------------
DROP TABLE IF EXISTS `huskar_app_component_build`;
CREATE TABLE `huskar_app_component_build` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态位 1-有效 0-无效',
  `uid` varchar(50) NOT NULL DEFAULT '' COMMENT '用户id',
  `gmt_create` bigint(20) NOT NULL COMMENT '创建时间',
  `gmt_update` bigint(20) NOT NULL COMMENT '修改时间',
  `component_id` bigint(20) DEFAULT NULL COMMENT '组件id',
  `version` varchar(255) DEFAULT NULL COMMENT '构建版本',
  `build_status` tinyint(4) DEFAULT '1' COMMENT '构建状态：1-还没有构建过 2-正在构建 3-源码构建成功 4-源码构建失败 5-静态库构建成功 6-静态库失败 7-组件集成成功 8-组件集成失败',
  `reason` text NOT NULL COMMENT '失败原因',
  `script_status` tinyint(4) DEFAULT '1' COMMENT '脚本的状态',
  `script_desc` text COMMENT '脚本状态解释',
  `job_id` bigint(20) DEFAULT NULL COMMENT 'jenkins id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4765 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='app组件构建历史';

-- ----------------------------
-- Table structure for huskar_app_info
-- ----------------------------
DROP TABLE IF EXISTS `huskar_app_info`;
CREATE TABLE `huskar_app_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态位 1-有效 其他无效',
  `gmt_create` bigint(20) NOT NULL COMMENT '创建时间',
  `gmt_update` bigint(20) NOT NULL COMMENT '修改时间',
  `platform` tinyint(4) DEFAULT NULL COMMENT '平台 1-iOS 2-android',
  `name` varchar(256) NOT NULL DEFAULT '' COMMENT 'APP名字',
  `repo_addr` varchar(256) NOT NULL DEFAULT '' COMMENT '仓库地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='App 列表';

-- ----------------------------
-- Table structure for huskar_app_project
-- ----------------------------
DROP TABLE IF EXISTS `huskar_app_project`;
CREATE TABLE `huskar_app_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态位 1-有效 0-无效',
  `uid` varchar(50) NOT NULL DEFAULT '' COMMENT '用户id',
  `gmt_create` bigint(20) NOT NULL COMMENT '创建时间',
  `gmt_update` bigint(20) NOT NULL COMMENT '修改时间',
  `name` varchar(50) DEFAULT NULL COMMENT '项目名称',
  `desc` varchar(50) DEFAULT NULL COMMENT '项目描述',
  `repo_addr` varchar(256) NOT NULL DEFAULT '' COMMENT '仓库地址',
  `branch` varchar(200) DEFAULT NULL COMMENT '项目分支',
  `depend_branch` varchar(255) DEFAULT NULL COMMENT '项目依赖分支',
  `advance_fields` text NOT NULL COMMENT '高级属性',
  `platform` tinyint(4) DEFAULT NULL COMMENT '项目的平台 1-iOS 2-android',
  `emails` varchar(1024) NOT NULL COMMENT '项目负责人邮件地址多个逗号隔开',
  `pm_role` varchar(1024) NOT NULL COMMENT '项目PM 人邮件地址多个逗号隔开',
  `build_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '构建状态：1-还没有构建过 2-正在构建 3-构建成功 4-构建失败',
  `archive_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '归档状态：1-未归档 2-已归档',
  `integrate_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '集成状态：1-还没有集成过 2-正在集成 3-集成成功 4-集成失败 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='app项目';

-- ----------------------------
-- Table structure for huskar_app_project_build
-- ----------------------------
DROP TABLE IF EXISTS `huskar_app_project_build`;
CREATE TABLE `huskar_app_project_build` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态位 1-有效 0-无效',
  `uid` varchar(50) NOT NULL DEFAULT '' COMMENT '用户id',
  `gmt_create` bigint(20) NOT NULL COMMENT '创建时间',
  `gmt_update` bigint(20) NOT NULL COMMENT '修改时间',
  `project_id` bigint(20) NOT NULL COMMENT '工程Id',
  `build_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '构建状态：0：初始状态 1-构建成功 2-构建失败 3-集成更改 4-集成失败',
  `script_status` tinyint(4) DEFAULT NULL COMMENT '脚本状态',
  `script_desc` text COMMENT '脚本状态描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=789 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='App项目构建表';

-- ----------------------------
-- Table structure for huskar_app_project_components
-- ----------------------------
DROP TABLE IF EXISTS `huskar_app_project_components`;
CREATE TABLE `huskar_app_project_components` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态位 1-有效 0-无效',
  `uid` varchar(50) NOT NULL DEFAULT '' COMMENT '用户id',
  `gmt_create` bigint(20) NOT NULL COMMENT '创建时间',
  `gmt_update` bigint(20) NOT NULL COMMENT '修改时间',
  `project_id` bigint(20) NOT NULL COMMENT '工程Id',
  `component_id` bigint(20) NOT NULL COMMENT '组件id',
  `type` tinyint(4) NOT NULL COMMENT '组件类型：1：新增开发组件  2：新增定制组件 3：新增正式组件 4：新增删除组件',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '组件名',
  `version` varchar(200) NOT NULL DEFAULT '' COMMENT '所选组件版本',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=794 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='项目组件关系';

SET FOREIGN_KEY_CHECKS = 1;
