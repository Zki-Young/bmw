-- ----------------------------
-- Table structure for seckill_order
-- ----------------------------
DROP TABLE IF EXISTS `seckill_order`;
CREATE TABLE `seckill_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `product_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `product_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `INX_PID_UID` (`user_id`,`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1549 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of seckill_order
-- ----------------------------

-- ----------------------------
-- Table structure for seckill_products
-- ----------------------------
DROP TABLE IF EXISTS `seckill_products`;
CREATE TABLE `seckill_products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `count` int(11) DEFAULT NULL COMMENT '商品总库存数量',
  `saled` int(11) DEFAULT NULL COMMENT '已售数量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `is_deleted` int(1) DEFAULT NULL COMMENT '是否删除：0否 1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of seckill_products
-- ----------------------------
INSERT INTO `seckill_products` VALUES ('1', '工银1000-11.11优惠券', '100', '0', '2020-08-27 11:32:59', '0');

-- ----------------------------
-- Table structure for seckill_user
-- ----------------------------
DROP TABLE IF EXISTS `seckill_user`;
CREATE TABLE `seckill_user` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `phone` varchar(30) DEFAULT NULL COMMENT '用户手机号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除：0否 1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of seckill_user
-- ----------------------------
INSERT INTO `seckill_user` VALUES ('1', '测试用户1', '18602832211', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('2', '测试用户2', '18602832212', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('3', '测试用户3', '18602832213', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('4', '测试用户4', '18602832214', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('5', '测试用户5', '18602832215', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('6', '测试用户6', '18602832216', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('7', '测试用户7', '18602832217', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('8', '测试用户8', '18602832218', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('9', '测试用户9', '18602832219', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('10', '测试用户10', '18602832220', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('11', '测试用户11', '18602832221', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('12', '测试用户12', '18602832222', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('13', '测试用户13', '18602832223', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('14', '测试用户14', '18602832224', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('15', '测试用户15', '18602832225', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('16', '测试用户16', '18602832226', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('17', '测试用户17', '18602832227', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('18', '测试用户18', '18602832228', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('19', '测试用户19', '18602832229', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('20', '测试用户20', '18602832230', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('21', '测试用户21', '18602832231', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('22', '测试用户22', '18602832232', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('23', '测试用户23', '18602832233', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('24', '测试用户24', '18602832234', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('25', '测试用户25', '18602832235', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('26', '测试用户26', '18602832236', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('27', '测试用户27', '18602832237', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('28', '测试用户28', '18602832238', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('29', '测试用户29', '18602832239', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('30', '测试用户30', '18602832240', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('31', '测试用户31', '18602832241', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('32', '测试用户32', '18602832242', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('33', '测试用户33', '18602832243', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('34', '测试用户34', '18602832244', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('35', '测试用户35', '18602832245', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('36', '测试用户36', '18602832246', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('37', '测试用户37', '18602832247', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('38', '测试用户38', '18602832248', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('39', '测试用户39', '18602832249', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('40', '测试用户40', '18602832250', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('41', '测试用户41', '18602832251', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('42', '测试用户42', '18602832252', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('43', '测试用户43', '18602832253', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('44', '测试用户44', '18602832254', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('45', '测试用户45', '18602832255', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('46', '测试用户46', '18602832256', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('47', '测试用户47', '18602832257', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('48', '测试用户48', '18602832258', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('49', '测试用户49', '18602832259', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('50', '测试用户50', '18602832260', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('51', '测试用户51', '18602832261', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('52', '测试用户52', '18602832262', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('53', '测试用户53', '18602832263', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('54', '测试用户54', '18602832264', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('55', '测试用户55', '18602832265', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('56', '测试用户56', '18602832266', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('57', '测试用户57', '18602832267', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('58', '测试用户58', '18602832268', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('59', '测试用户59', '18602832269', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('60', '测试用户60', '18602832270', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('61', '测试用户61', '18602832271', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('62', '测试用户62', '18602832272', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('63', '测试用户63', '18602832273', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('64', '测试用户64', '18602832274', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('65', '测试用户65', '18602832275', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('66', '测试用户66', '18602832276', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('67', '测试用户67', '18602832277', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('68', '测试用户68', '18602832278', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('69', '测试用户69', '18602832279', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('70', '测试用户70', '18602832280', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('71', '测试用户71', '18602832281', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('72', '测试用户72', '18602832282', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('73', '测试用户73', '18602832283', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('74', '测试用户74', '18602832284', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('75', '测试用户75', '18602832285', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('76', '测试用户76', '18602832286', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('77', '测试用户77', '18602832287', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('78', '测试用户78', '18602832288', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('79', '测试用户79', '18602832289', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('80', '测试用户80', '18602832290', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('81', '测试用户81', '18602832291', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('82', '测试用户82', '18602832292', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('83', '测试用户83', '18602832293', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('84', '测试用户84', '18602832294', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('85', '测试用户85', '18602832295', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('86', '测试用户86', '18602832296', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('87', '测试用户87', '18602832297', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('88', '测试用户88', '18602832298', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('89', '测试用户89', '18602832299', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('90', '测试用户90', '18602832300', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('91', '测试用户91', '18602832301', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('92', '测试用户92', '18602832302', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('93', '测试用户93', '18602832303', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('94', '测试用户94', '18602832304', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('95', '测试用户95', '18602832305', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('96', '测试用户96', '18602832306', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('97', '测试用户97', '18602832307', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('98', '测试用户98', '18602832308', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('99', '测试用户99', '18602832309', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('100', '测试用户100', '18602832310', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('101', '测试用户101', '18602832311', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('102', '测试用户102', '18602832312', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('103', '测试用户103', '18602832313', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('104', '测试用户104', '18602832314', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('105', '测试用户105', '18602832315', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('106', '测试用户106', '18602832316', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('107', '测试用户107', '18602832317', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('108', '测试用户108', '18602832318', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('109', '测试用户109', '18602832319', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('110', '测试用户110', '18602832320', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('111', '测试用户111', '18602832321', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('112', '测试用户112', '18602832322', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('113', '测试用户113', '18602832323', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('114', '测试用户114', '18602832324', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('115', '测试用户115', '18602832325', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('116', '测试用户116', '18602832326', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('117', '测试用户117', '18602832327', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('118', '测试用户118', '18602832328', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('119', '测试用户119', '18602832329', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('120', '测试用户120', '18602832330', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('121', '测试用户121', '18602832331', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('122', '测试用户122', '18602832332', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('123', '测试用户123', '18602832333', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('124', '测试用户124', '18602832334', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('125', '测试用户125', '18602832335', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('126', '测试用户126', '18602832336', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('127', '测试用户127', '18602832337', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('128', '测试用户128', '18602832338', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('129', '测试用户129', '18602832339', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('130', '测试用户130', '18602832340', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('131', '测试用户131', '18602832341', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('132', '测试用户132', '18602832342', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('133', '测试用户133', '18602832343', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('134', '测试用户134', '18602832344', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('135', '测试用户135', '18602832345', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('136', '测试用户136', '18602832346', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('137', '测试用户137', '18602832347', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('138', '测试用户138', '18602832348', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('139', '测试用户139', '18602832349', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('140', '测试用户140', '18602832350', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('141', '测试用户141', '18602832351', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('142', '测试用户142', '18602832352', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('143', '测试用户143', '18602832353', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('144', '测试用户144', '18602832354', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('145', '测试用户145', '18602832355', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('146', '测试用户146', '18602832356', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('147', '测试用户147', '18602832357', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('148', '测试用户148', '18602832358', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('149', '测试用户149', '18602832359', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('150', '测试用户150', '18602832360', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('151', '测试用户151', '18602832361', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('152', '测试用户152', '18602832362', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('153', '测试用户153', '18602832363', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('154', '测试用户154', '18602832364', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('155', '测试用户155', '18602832365', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('156', '测试用户156', '18602832366', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('157', '测试用户157', '18602832367', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('158', '测试用户158', '18602832368', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('159', '测试用户159', '18602832369', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('160', '测试用户160', '18602832370', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('161', '测试用户161', '18602832371', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('162', '测试用户162', '18602832372', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('163', '测试用户163', '18602832373', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('164', '测试用户164', '18602832374', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('165', '测试用户165', '18602832375', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('166', '测试用户166', '18602832376', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('167', '测试用户167', '18602832377', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('168', '测试用户168', '18602832378', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('169', '测试用户169', '18602832379', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('170', '测试用户170', '18602832380', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('171', '测试用户171', '18602832381', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('172', '测试用户172', '18602832382', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('173', '测试用户173', '18602832383', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('174', '测试用户174', '18602832384', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('175', '测试用户175', '18602832385', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('176', '测试用户176', '18602832386', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('177', '测试用户177', '18602832387', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('178', '测试用户178', '18602832388', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('179', '测试用户179', '18602832389', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('180', '测试用户180', '18602832390', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('181', '测试用户181', '18602832391', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('182', '测试用户182', '18602832392', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('183', '测试用户183', '18602832393', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('184', '测试用户184', '18602832394', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('185', '测试用户185', '18602832395', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('186', '测试用户186', '18602832396', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('187', '测试用户187', '18602832397', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('188', '测试用户188', '18602832398', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('189', '测试用户189', '18602832399', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('190', '测试用户190', '18602832400', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('191', '测试用户191', '18602832401', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('192', '测试用户192', '18602832402', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('193', '测试用户193', '18602832403', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('194', '测试用户194', '18602832404', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('195', '测试用户195', '18602832405', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('196', '测试用户196', '18602832406', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('197', '测试用户197', '18602832407', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('198', '测试用户198', '18602832408', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('199', '测试用户199', '18602832409', '2020-08-27 11:40:52', '0');
INSERT INTO `seckill_user` VALUES ('200', '测试用户200', '18602832410', '2020-08-27 11:40:52', '0');
