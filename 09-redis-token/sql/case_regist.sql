
-- ----------------------------
-- Table structure for user_regist_info
-- ----------------------------
DROP TABLE IF EXISTS `user_regist_info`;
CREATE TABLE `user_regist_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `INX_PHONE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_regist_info
-- ----------------------------
