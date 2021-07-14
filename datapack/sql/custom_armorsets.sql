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