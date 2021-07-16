-- 
-- Table structure for table `armorsets`
-- 

DROP TABLE IF EXISTS custom_armorsets;
CREATE TABLE custom_armorsets (
 id int(3) NOT NULL auto_increment,
 chest decimal(11,0) NOT NULL default '0',
 legs decimal(11,0) NOT NULL default '0',
 head decimal(11,0) NOT NULL default '0',
 gloves decimal(11,0) NOT NULL default '0',
 feet decimal(11,0) NOT NULL default '0',
 skill_id decimal(11,0) NOT NULL default '0',
 shield decimal(11,0) NOT NULL default '0',
 shield_skill_id decimal(11,0) NOT NULL default '0',
 enchant6skill decimal(11,0) NOT NULL default '0',
 PRIMARY KEY (id,chest)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
-- ----------------------------
-- Records of Dark Knight
-- ----------------------------
INSERT INTO `custom_armorsets` VALUES ('150', '25800', '25801', '25812', '25802', '25803', '8300', '1', '1', '3623');
INSERT INTO `custom_armorsets` VALUES ('151', '25804', '25805', '25813', '25806', '25807', '8302', '1', '1', '3624');
INSERT INTO `custom_armorsets` VALUES ('104', '25808', '25809', '25814', '25810', '25811', '8303', '1', '1', '3625');
-- ----------------------------
-- Records of Dynasty
-- ----------------------------
INSERT INTO `custom_armorsets` VALUES ('100', '9933', '9934', '9935', '9936', '9937', '6300', '9948', '6301', '3623');
INSERT INTO `custom_armorsets` VALUES ('101', '9938', '9939', '9940', '9941', '9942', '6302', '1', '6301', '3624');
INSERT INTO `custom_armorsets` VALUES ('102', '9943', '9944', '9945', '9946', '9947', '6303', '9948', '6301', '3625');
-- ----------------------------
-- Records of Vesper
-- ----------------------------
INSERT INTO `custom_armorsets` VALUES ('55', '9317', '9318', '9316', '9319', '9320', '504', '9331', '505', '512');
INSERT INTO `custom_armorsets` VALUES ('56', '9322', '9323', '9321', '9324', '9325', '506', '0', '0', '513');
INSERT INTO `custom_armorsets` VALUES ('57', '9327', '9328', '9326', '9329', '9330', '507', '0', '0', '514');
INSERT INTO `custom_armorsets` VALUES ('58', '9333', '9334', '9332', '9335', '9336', '508', '9347', '509', '512');
INSERT INTO `custom_armorsets` VALUES ('59', '9338', '9339', '9337', '9340', '9341', '510', '0', '0', '513');
INSERT INTO `custom_armorsets` VALUES ('60', '9343', '9344', '9342', '9345', '9346', '511', '0', '0', '514');