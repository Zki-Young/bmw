

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;


-- ----------------------------
-- Table structure for user_info_bak
-- ----------------------------
DROP TABLE IF EXISTS `user_info_bak`;
CREATE TABLE `user_info_bak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名字',
  `sex` int(1) DEFAULT NULL COMMENT '性别：1男 2女',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_info_bak
-- ----------------------------
INSERT INTO `user_info_bak` VALUES ('1', '机器人1号', '2', '18698291131', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('2', '机器人2号', '1', '18698291132', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('3', '机器人3号', '2', '18698291133', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('4', '机器人4号', '1', '18698291134', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('5', '机器人5号', '2', '18698291135', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('6', '机器人6号', '1', '18698291136', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('7', '机器人7号', '2', '18698291137', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('8', '机器人8号', '1', '18698291138', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('9', '机器人9号', '2', '18698291139', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('10', '机器人10号', '1', '18698291140', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('11', '机器人11号', '2', '18698291141', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('12', '机器人12号', '1', '18698291142', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('13', '机器人13号', '2', '18698291143', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('14', '机器人14号', '1', '18698291144', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('15', '机器人15号', '2', '18698291145', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('16', '机器人16号', '1', '18698291146', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('17', '机器人17号', '2', '18698291147', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('18', '机器人18号', '1', '18698291148', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('19', '机器人19号', '2', '18698291149', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('20', '机器人20号', '1', '18698291150', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('21', '机器人21号', '2', '18698291151', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('22', '机器人22号', '1', '18698291152', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('23', '机器人23号', '2', '18698291153', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('24', '机器人24号', '1', '18698291154', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('25', '机器人25号', '2', '18698291155', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('26', '机器人26号', '1', '18698291156', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('27', '机器人27号', '2', '18698291157', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('28', '机器人28号', '1', '18698291158', '2020-12-21 00:00:00');
INSERT INTO `user_info_bak` VALUES ('29', '机器人29号', '2', '18698291159', '2020-12-21 00:00:00');
