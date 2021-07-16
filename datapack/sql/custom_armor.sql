DROP TABLE IF EXISTS `custom_armor`;
CREATE TABLE `custom_armor` (
  `item_id` int(11) NOT NULL default '0',
  `name` varchar(70) default NULL,
  `bodypart` varchar(15) NOT NULL default '',
  `crystallizable` varchar(5) NOT NULL default '',
  `armor_type` varchar(5) NOT NULL default '',
  `weight` int(5) NOT NULL default '0',
  `crystal_type` ENUM("none","d","c","b","a","s") NOT NULL default 'none', 
  `avoid_modify` int(1) NOT NULL default '0',
  `duration` int(3) NOT NULL default '0',
  `p_def` int(3) NOT NULL default '0',
  `m_def` int(2) NOT NULL default '0',
  `mp_bonus` int(3) NOT NULL default '0',
  `price` int(11) NOT NULL default '0',
  `crystal_count` int(4) default NULL,
  `sellable` varchar(5) default NULL,
  `dropable` varchar(5) default NULL,
  `destroyable` varchar(5) default NULL,
  `tradeable` varchar(5) default NULL,
  `item_skill_id` decimal(11,0) NOT NULL default '0',
  `item_skill_lvl` decimal(11,0) NOT NULL default '0',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of Titanium Armor
-- ----------------------------
INSERT INTO `custom_armor` VALUES ('9860', 'Titanium Helm', 'head', 'true', 'none', '1110', 's', '0', '-1', '55', '0', '0', '3580000', '179', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('9861', 'Titanium Plate Armor', 'fullarmor', 'true', 'none', '1110', 's', '0', '-1', '55', '0', '0', '3580000', '179', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('9862', 'Titanium Gauntlet - Heavy Armor', 'gloves', 'true', 'none', '1110', 's', '0', '-1', '55', '0', '0', '3580000', '179', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('9863', 'Titanium Solleret - Heavy Armor', 'feet', 'true', 'none', '1110', 's', '0', '-1', '55', '0', '0', '3580000', '179', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('9864', 'Titanium Solleret - Heavy Armor', 'fullarmor', 'true', 'none', '1110', 's', '0', '-1', '55', '0', '0', '3580000', '179', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('9865', 'Titanium Brigandine', 'gloves', 'true', 'none', '1110', 's', '0', '-1', '55', '0', '0', '3580000', '179', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('9866', 'Titanium Leather Gloves - Light Armor', 'feet', 'true', 'none', '1110', 's', '0', '-1', '55', '0', '0', '3580000', '179', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('9867', 'Titanium Doublet - FullArmor Robe', 'fullarmor', 'true', 'none', '1110', 's', '0', '-1', '55', '0', '0', '3580000', '179', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('9868', 'Titanium Silk Gloves - Robe', 'gloves', 'true', 'none', '1110', 's', '0', '-1', '55', '0', '0', '3580000', '179', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('9869', 'Titanium Sandals - Robe', 'feet', 'true', 'none', '1110', 's', '0', '-1', '55', '0', '0', '3580000', '179', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('9870', 'Titanium Helm - Light', 'head', 'true', 'none', '1110', 's', '0', '-1', '55', '0', '0', '3580000', '179', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('9880', 'Titanium Helm - Robe', 'head', 'true', 'none', '1110', 's', '0', '-1', '55', '0', '0', '3580000', '179', 'true', 'true', 'true', 'true', '0', '0');
-- ----------------------------
-- Records of Dark Knight
-- ----------------------------
INSERT INTO `custom_armor` VALUES ('25812', 'Dark Knight Helmet', 'head', 'true', 'heavy', '1000', 's', '0', '-1', '75', '0', '0', '5370000', '0', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('25800', 'Dark Knight Breastplate', 'chest', 'true', 'heavy', '1000', 's', '0', '-1', '250', '0', '0', '14300000', '0', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('25801', 'Dark Knight Gaiters', 'legs', 'true', 'heavy', '1000', 's', '0', '-1', '150', '0', '0', '8960000', '0', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('25802', 'Dark Knight Gauntlets', 'gloves', 'true', 'heavy', '1000', 's', '0', '-1', '75', '0', '0', '3580000', '0', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('25803', 'Dark Knight Boots', 'feet', 'true', 'heavy', '1000', 's', '0', '-1', '75', '0', '0', '3580000', '0', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('25813', 'Dark Knight Leather Helmet', 'head', 'true', 'light', '1000', 's', '0', '-1', '75', '0', '0', '5370000', '0', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('25804', 'Dark Knight Leather Armor', 'chest', 'true', 'light', '1000', 's', '0', '-1', '200', '0', '0', '14300000', '0', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('25805', 'Dark Knight Leather Pants', 'legs', 'true', 'light', '1000', 's', '0', '-1', '125', '0', '0', '8960000', '0', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('25806', 'Dark Knight Leather Gloves', 'gloves', 'true', 'light', '1000', 's', '0', '-1', '75', '0', '0', '3580000', '0', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('25807', 'Dark Knight Leather Boots', 'feet', 'true', 'light', '1000', 's', '0', '-1', '75', '0', '0', '3580000', '0', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('25814', 'Dark Knight Circlet', 'head', 'true', 'magic', '1000', 's', '0', '-1', '75', '0', '0', '5370000', '0', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('25808', 'Dark Knight Robe', 'chest', 'true', 'magic', '1000', 's', '0', '-1', '180', '0', '257', '14300000', '0', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('25809', 'Dark Knight Stockings', 'legs', 'true', 'magic', '1000', 's', '0', '-1', '100', '0', '0', '8960000', '0', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('25810', 'Dark Knight Gloves', 'gloves', 'true', 'magic', '1000', 's', '0', '-1', '75', '0', '0', '3580000', '0', 'true', 'true', 'true', 'true', '0', '0');
INSERT INTO `custom_armor` VALUES ('25811', 'Dark Knight Robe Boots', 'feet', 'true', 'magic', '1000', 's', '0', '-1', '75', '0', '0', '3580000', '0', 'true', 'true', 'true', 'true', '0', '0');
-- ----------------------------
-- Records of Dynasty
-- ----------------------------
INSERT INTO `custom_armor` VALUES ('9933', 'Dynasty Armor Plate', 'chest', 'false', 'heavy', 0, 's', 0, -1, 219, 0, 0, 0, 0, 'true', 'false', 'false', 'true', 0, 0);
INSERT INTO `custom_armor` VALUES ('9934', 'Dynasty Armor Gaiters', 'legs', 'false', 'heavy', 0, 's', 0, -1, 137, 0, 0, 0, 0, 'true', 'false', 'false', 'true', 0, 0);
INSERT INTO `custom_armor` VALUES ('9935', 'Dynasty Armor Helm', 'head', 'false', 'none', 0, 's', 0, -1, 89, 0, 0, 0, 0, 'true', 'false', 'false', 'true', 0, 0);
INSERT INTO `custom_armor` VALUES ('9936', 'Dynasty Armor Gloves', 'gloves', 'false', 'none', 0, 's', 0, -1, 59, 0, 0, 0, 0, 'true', 'false', 'false', 'true', 0, 0);
INSERT INTO `custom_armor` VALUES ('9937', 'Dynasty Armor Boots', 'feet', 'false', 'none', 0, 's', 0, -1, 59, 0, 0, 0, 0, 'true', 'false', 'false', 'true', 0, 0);
INSERT INTO `custom_armor` VALUES ('9938', 'Dynasty Armor Leather', 'chest', 'false', 'light', 0, 's', 0, -1, 219, 0, 0, 0, 0, 'true', 'false', 'false', 'true', 0, 0);
INSERT INTO `custom_armor` VALUES ('9939', 'Dynasty Armor Leather Pants', 'legs', 'false', 'light', 0, 's', 0, -1, 137, 0, 0, 0, 0, 'true', 'false', 'false', 'true', 0, 0);
INSERT INTO `custom_armor` VALUES ('9940', 'Dynasty Armor Leather Helm', 'head', 'false', 'none', 0, 's', 0, -1, 89, 0, 0, 0, 0, 'true', 'false', 'false', 'true', 0, 0);
INSERT INTO `custom_armor` VALUES ('9941', 'Dynasty Armor Leather Gloves', 'gloves', 'false', 'none', 0, 's', 0, -1, 59, 0, 0, 0, 0, 'true', 'false', 'false', 'true', 0, 0);
INSERT INTO `custom_armor` VALUES ('9942', 'Dynasty Armor Leather Shoes', 'feet', 'false', 'none', 0, 's', 0, -1, 59, 0, 0, 0, 0, 'true', 'false', 'false', 'true', 0, 0);
INSERT INTO `custom_armor` VALUES ('9943', 'Dynasty Armor Robe', 'chest', 'false', 'magic', 0, 's', 0, -1, 219, 0, 257, 0, 0, 'true', 'false', 'false', 'true', 0, 0);
INSERT INTO `custom_armor` VALUES ('9944', 'Dynasty Armor Pants', 'legs', 'false', 'magic', 0, 's', 0, -1, 137, 0, 0, 0, 0, 'true', 'false', 'false', 'true', 0, 0);
INSERT INTO `custom_armor` VALUES ('9945', 'Dynasty Armor Cap', 'head', 'false', 'none', 0, 's', 0, -1, 89, 0, 0, 0, 0, 'true', 'false', 'false', 'true', 0, 0);
INSERT INTO `custom_armor` VALUES ('9946', 'Dynasty Armor Mittens', 'gloves', 'false', 'none', 0, 's', 0, -1, 59, 0, 0, 0, 0, 'true', 'false', 'false', 'true', 0, 0);
INSERT INTO `custom_armor` VALUES ('9947', 'Dynasty Armor Slippers', 'feet', 'false', 'none', 0, 's', 0, -1, 59, 0, 0, 0, 0, 'true', 'false', 'false', 'true', 0, 0);