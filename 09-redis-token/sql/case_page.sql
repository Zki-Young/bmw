

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
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '机器人1号', '2', '18698291131', '2017-04-15 00:00:00');
INSERT INTO `user_info` VALUES ('2', '机器人2号', '1', '18698291132', '2017-04-10 00:00:00');
INSERT INTO `user_info` VALUES ('3', '机器人3号', '2', '18698291133', '2017-07-03 00:00:00');
INSERT INTO `user_info` VALUES ('4', '机器人4号', '1', '18698291134', '2017-02-03 00:00:00');
INSERT INTO `user_info` VALUES ('5', '机器人5号', '2', '18698291135', '2017-07-22 00:00:00');
INSERT INTO `user_info` VALUES ('6', '机器人6号', '1', '18698291136', '2017-11-24 00:00:00');
INSERT INTO `user_info` VALUES ('7', '机器人7号', '2', '18698291137', '2018-03-23 00:00:00');
INSERT INTO `user_info` VALUES ('8', '机器人8号', '1', '18698291138', '2017-03-23 00:00:00');
INSERT INTO `user_info` VALUES ('9', '机器人9号', '2', '18698291139', '2017-08-24 00:00:00');
INSERT INTO `user_info` VALUES ('10', '机器人10号', '1', '18698291140', '2017-12-15 00:00:00');
INSERT INTO `user_info` VALUES ('11', '机器人11号', '2', '18698291141', '2018-03-30 00:00:00');
INSERT INTO `user_info` VALUES ('12', '机器人12号', '1', '18698291142', '2017-02-21 00:00:00');
INSERT INTO `user_info` VALUES ('13', '机器人13号', '2', '18698291143', '2017-03-09 00:00:00');
INSERT INTO `user_info` VALUES ('14', '机器人14号', '1', '18698291144', '2017-07-03 00:00:00');
INSERT INTO `user_info` VALUES ('15', '机器人15号', '2', '18698291145', '2017-05-09 00:00:00');
INSERT INTO `user_info` VALUES ('16', '机器人16号', '1', '18698291146', '2017-04-03 00:00:00');
INSERT INTO `user_info` VALUES ('17', '机器人17号', '2', '18698291147', '2017-03-18 00:00:00');
INSERT INTO `user_info` VALUES ('18', '机器人18号', '1', '18698291148', '2017-04-16 00:00:00');
INSERT INTO `user_info` VALUES ('19', '机器人19号', '2', '18698291149', '2017-10-27 00:00:00');
INSERT INTO `user_info` VALUES ('20', '机器人20号', '1', '18698291150', '2017-01-12 00:00:00');
INSERT INTO `user_info` VALUES ('21', '机器人21号', '2', '18698291151', '2017-11-25 00:00:00');
INSERT INTO `user_info` VALUES ('22', '机器人22号', '1', '18698291152', '2018-03-17 00:00:00');
INSERT INTO `user_info` VALUES ('23', '机器人23号', '2', '18698291153', '2017-02-20 00:00:00');
INSERT INTO `user_info` VALUES ('24', '机器人24号', '1', '18698291154', '2017-04-06 00:00:00');
INSERT INTO `user_info` VALUES ('25', '机器人25号', '2', '18698291155', '2017-11-25 00:00:00');
INSERT INTO `user_info` VALUES ('26', '机器人26号', '1', '18698291156', '2017-07-05 00:00:00');
INSERT INTO `user_info` VALUES ('27', '机器人27号', '2', '18698291157', '2018-06-11 00:00:00');
INSERT INTO `user_info` VALUES ('28', '机器人28号', '1', '18698291158', '2017-11-22 00:00:00');
INSERT INTO `user_info` VALUES ('29', '机器人29号', '2', '18698291159', '2017-02-18 00:00:00');
