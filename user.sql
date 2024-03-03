/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 04/03/2024 01:17:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (139, 'g', NULL, NULL);
INSERT INTO `user` VALUES (140, 'dg', NULL, NULL);
INSERT INTO `user` VALUES (141, 'as', NULL, NULL);
INSERT INTO `user` VALUES (142, 'fads', NULL, NULL);
INSERT INTO `user` VALUES (143, 'f', NULL, NULL);
INSERT INTO `user` VALUES (144, 'sd', NULL, NULL);
INSERT INTO `user` VALUES (145, 'asdf', NULL, NULL);
INSERT INTO `user` VALUES (146, 'a', NULL, NULL);
INSERT INTO `user` VALUES (147, 'f', NULL, NULL);
INSERT INTO `user` VALUES (148, 'as', NULL, NULL);
INSERT INTO `user` VALUES (149, 'f', NULL, NULL);
INSERT INTO `user` VALUES (150, 'sdssds', 'null', 1231123);
INSERT INTO `user` VALUES (151, 'ff', NULL, NULL);
INSERT INTO `user` VALUES (152, 'sd', NULL, NULL);
INSERT INTO `user` VALUES (153, 'f', NULL, NULL);
INSERT INTO `user` VALUES (154, 'f', NULL, NULL);
INSERT INTO `user` VALUES (155, 'a', NULL, NULL);
INSERT INTO `user` VALUES (156, 'f', NULL, NULL);
INSERT INTO `user` VALUES (157, 'asd', NULL, NULL);
INSERT INTO `user` VALUES (158, 'f', NULL, NULL);
INSERT INTO `user` VALUES (159, 'asd', NULL, NULL);
INSERT INTO `user` VALUES (160, NULL, NULL, NULL);
INSERT INTO `user` VALUES (161, '撒旦乏', 'sdf1', 123);

SET FOREIGN_KEY_CHECKS = 1;
