-- 
-- Table structure for table `weapon`
-- 

DROP TABLE IF EXISTS `custom_weapon`;
CREATE TABLE `custom_weapon` (
  `item_id` decimal(11,0) NOT NULL default '0',
  `name` varchar(70) default NULL,
  `bodypart` varchar(15) default NULL,
  `crystallizable` varchar(5) default NULL,
  `weight` decimal(4,0) default NULL,
  `soulshots` decimal(2,0) default NULL,
  `spiritshots` decimal(1,0) default NULL,
  `crystal_type` ENUM("none","d","c","b","a","s") NOT NULL default 'none',
  `p_dam` decimal(5,0) default NULL,
  `rnd_dam` decimal(2,0) default NULL,
  `weaponType` varchar(8) default NULL,
  `critical` decimal(2,0) default NULL,
  `hit_modify` decimal(6,5) default NULL,
  `avoid_modify` decimal(2,0) default NULL,
  `shield_def` decimal(3,0) default NULL,
  `shield_def_rate` decimal(2,0) default NULL,
  `atk_speed` decimal(3,0) default NULL,
  `mp_consume` decimal(2,0) default NULL,
  `m_dam` decimal(3,0) default NULL,
  `duration` decimal(3,0) default NULL,
  `price` decimal(11,0) default NULL,
  `crystal_count` int(4) default NULL,
  `sellable` varchar(5) default NULL,
  `dropable` varchar(5) default NULL,
  `destroyable` varchar(5) default NULL,
  `tradeable` varchar(5) default NULL,
  `item_skill_id` decimal(11,0) NOT NULL default '0',
  `item_skill_lvl` decimal(11,0) NOT NULL default '0',
  `enchant4_skill_id` decimal(11,0) NOT NULL default '0',
  `enchant4_skill_lvl` decimal(11,0) NOT NULL default '0',
  `onCast_skill_id` decimal(11,0) NOT NULL default '0',
  `onCast_skill_lvl` decimal(11,0) NOT NULL default '0',
  `onCast_skill_chance` decimal(11,0) NOT NULL default '0',
  `onCrit_skill_id` decimal(11,0) NOT NULL default '0',
  `onCrit_skill_lvl` decimal(11,0) NOT NULL default '0',
  `onCrit_skill_chance` decimal(11,0) NOT NULL default '0',
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `weapon`
-- 
-- ----------------------------
-- Records of Dark Knight
-- ----------------------------
INSERT INTO `custom_weapon` VALUES ('9782', 'SHIELD DK', 'lhand', 'true', '1', '0', '0', 's', '0', '0', 'none', '0', '0.00000', '-8', '290', '20', '0', '0', '0', '-1', '3760000', '188', 'true', 'true', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
-- ----------------------------
-- Records of Dynasty
-- ----------------------------
INSERT INTO `custom_weapon` VALUES ('9948', 'Dynasty Shield', 'lhand', 'true', '0', '0', '0', 's', '0', '0', 'none', '0', '0.00000', '0', '0', '0', '0', '0', '0', '-1', '48800000', '2440', 'true', 'true', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
-- ----------------------------
-- Records of Vesper
-- ----------------------------
INSERT INTO `custom_weapon` VALUES ('9331', 'Vesper Shield', 'lhand', 'true', '1130', '0', '0', 's', '0', '0', 'none', '0', '0.00000', '-8', '371', '20', '0', '0', '0', '-1', '12250000', '578', 'true', 'true', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('9347', 'Vesper Shield', 'lhand', 'true', '1130', '0', '0', 's', '0', '0', 'none', '0', '0.00000', '-8', '371', '20', '0', '0', '0', '-1', '12250000', '578', 'true', 'true', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
-- ----------------------------
-- Records of Epic
-- ----------------------------
INSERT INTO `custom_weapon` VALUES ('19100', 'Cruzarion Dual Dragon Slayer', 'lrhand', 'true', '2600', '1', '1', 's', '281', '0', 'dual', '0', '-1.00000', '0', '0', '0', '0', '0', '0', '-1', '97600000', '4880', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19101', 'Cruzarion Dual Gods Blade', 'lrhand', 'true', '2600', '1', '1', 's', '281', '0', 'dual', '0', '-1.00000', '0', '0', '0', '0', '0', '0', '-1', '97600000', '4880', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19102', 'Cruzarion Dual Infinity Crushers ', 'lrhand', 'true', '2600', '1', '1', 's', '281', '0', 'dual', '0', '-1.00000', '0', '0', '0', '0', '0', '0', '-1', '97600000', '4880', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19103', 'Cruzarion Dual Infinity Scepter', 'lrhand', 'true', '2600', '1', '1', 's', '281', '0', 'dual', '0', '-1.00000', '0', '0', '0', '0', '0', '0', '-1', '97600000', '4880', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19104', 'Cruzarion Dual Heavens Divider ', 'lrhand', 'true', '2600', '1', '1', 's', '281', '0', 'dual', '0', '-1.00000', '0', '0', '0', '0', '0', '0', '-1', '97600000', '4880', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19105', 'Dusk Shield Unique', 'lhand', 'true', '0', '0', '0', 's', '0', '0', 'none', '0', '0.00000', '0', '0', '0', '0', '0', '0', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19106', 'Dusk Sword Unique', 'rhand', 'true', '1670', '3', '3', 's', '170', '0', 'sword', '0', '-1.00000', '0', '0', '0', '0', '0', '0', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19107', 'Dusk Staff Unique', 'rhand', 'true', '1670', '3', '3', 's', '170', '0', 'sword', '0', '-1.00000', '0', '0', '0', '0', '0', '0', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19108', 'Cruzarion Dual Infinity Cleavers', 'lrhand', 'true', '2600', '1', '1', 's', '281', '0', 'dual', '0', '-1.00000', '0', '0', '0', '0', '0', '0', '-1', '97600000', '4880', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19109', 'Bow of Scion', 'lrhand', 'true', '1650', '1', '1', 's', '581', '0', 'bow', '0', '-1.00000', '0', '0', '0', '300', '0', '0', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19110', 'Bow of Scion Epic/Cheap Shot', 'lrhand', 'true', '1650', '1', '1', 's', '581', '5', 'bow', '12', '-3.00000', '0', '0', '0', '300', '11', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19111', 'Bow of Scion  Epic/Focus', 'lrhand', 'true', '1650', '1', '1', 's', '581', '5', 'bow', '12', '-3.00000', '0', '0', '0', '300', '11', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3567', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19112', 'Bow of Scion  Epic/Crt. Slow', 'lrhand', 'true', '1650', '1', '1', 's', '581', '5', 'bow', '12', '-3.00000', '0', '0', '0', '300', '11', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19113', 'Dual Gods Blade Focus', 'lrhand', 'true', '2600', '2', '2', 's', '281', '10', 'dual', '8', '0.00000', '0', '0', '0', '379', '0', '132', '-1', '97600000', '4880', 'true', 'false', 'true', 'true', '3567', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19114', 'Dual Gods Blade Crt.Dmage', 'lrhand', 'true', '2600', '2', '2', 's', '281', '10', 'dual', '8', '-1.00000', '0', '0', '0', '379', '0', '132', '-1', '97600000', '4880', 'true', 'false', 'true', 'true', '3572', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19115', 'Dual Gods Blade Haste', 'lrhand', 'true', '2600', '2', '2', 's', '281', '10', 'dual', '8', '-3.00000', '0', '0', '0', '379', '0', '132', '-1', '97600000', '4880', 'true', 'false', 'true', 'true', '3037', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19117', 'Glint Eye', 'rhand', 'true', '970', '1', '1', 's', '318', '0', 'dagger', '0', '-1.00000', '0', '0', '0', '0', '0', '0', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19118', 'Glint Eye  Epic/Focus', 'rhand', 'true', '970', '1', '1', 's', '318', '5', 'dagger', '12', '-3.00000', '0', '0', '0', '293', '11', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3567', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19119', 'Glint Eye  Epic/Might Mortal', 'rhand', 'true', '970', '1', '1', 's', '318', '5', 'dagger', '12', '-3.00000', '0', '0', '0', '433', '0', '99', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3035', '6', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19120', 'Glint Eye  Epic/Haste', 'rhand', 'true', '970', '1', '1', 's', '318', '5', 'dagger', '12', '-3.00000', '0', '0', '0', '433', '0', '68', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19121', 'Pariah Shield', 'lhand', 'true', '1170', '0', '0', 's', '0', '0', 'none', '0', '0.00000', '-8', '290', '20', '0', '0', '0', '-1', '3760000', '188', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19123', 'Zariche Demonic Sword', 'lrhand', 'true', '1380', '1', '1', 's', '342', '10', 'bigsword', '8', '0.00000', '0', '0', '0', '325', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3567', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19124', 'Dusk Sword Unique Acumen', 'rhand', 'true', '1670', '3', '3', 's', '170', '20', 'sword', '4', '4.00000', '0', '0', '0', '379', '0', '143', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3047', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19125', 'Dusk Sword Unique Focus', 'rhand', 'true', '1670', '3', '3', 's', '170', '10', 'sword', '8', '0.00000', '0', '0', '0', '379', '0', '143', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3565', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19126', 'Dusk Sword Unique Haste', 'rhand', 'true', '1670', '3', '3', 's', '170', '5', 'sword', '12', '-3.00000', '0', '0', '0', '293', '9', '107', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3037', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19127', 'Dusk Staff Unique Acumen', 'rhand', 'true', '1670', '3', '3', 's', '170', '20', 'blunt', '4', '4.00000', '0', '0', '0', '379', '0', '143', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3047', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19128', 'Dusk Staff Unique Magic Hold', 'rhand', 'true', '1670', '3', '3', 's', '170', '10', 'blunt', '8', '0.00000', '0', '0', '0', '379', '0', '143', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '3577', '1', '30', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19129', 'Dusk Staff Unique Wild Magic', 'rhand', 'true', '1670', '3', '3', 's', '170', '5', 'blunt', '12', '-3.00000', '0', '0', '0', '293', '9', '107', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '5164', '1', '15', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19130', 'Wakizashi Sword', 'rhand', 'true', '1380', '1', '1', 's', '342', '10', 'bigsword', '8', '0.00000', '0', '0', '0', '325', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3567', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19132', 'Sword of Templar', 'rhand', 'true', '1350', '1', '1', 's', '281', '0', 'sword', '0', '-1.00000', '0', '0', '0', '0', '0', '0', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19133', 'Sword of Templar  Epic/Focus', 'rhand', 'true', '1350', '1', '1', 's', '281', '10', 'sword', '8', '0.00000', '0', '0', '0', '379', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3567', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19134', 'Sword of Templar  Epic/Haste', 'rhand', 'true', '1350', '1', '1', 's', '281', '10', 'sword', '8', '0.00000', '0', '0', '0', '379', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3037', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19135', 'Sword of Templar  Epic/Crt. Stun', 'rhand', 'true', '1350', '1', '1', 's', '281', '5', 'sword', '4', '4.00000', '0', '0', '0', '325', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '3070', '1', '20');
INSERT INTO `custom_weapon` VALUES ('19153', 'Dual sword of Templar', 'lrhand', 'true', '2600', '1', '1', 's', '281', '0', 'dual', '0', '-1.00000', '0', '0', '0', '0', '0', '0', '-1', '97600000', '4880', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19161', 'Ares Fists Epic', 'lrhand', 'true', '1420', '1', '1', 's', '374', '5', 'dualfist', '4', '4.75000', '0', '0', '0', '325', '0', '152', '-1', '8680000', '1464', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19162', 'Ares Fists Epic/Crt. Damage', 'lrhand', 'true', '1420', '1', '1', 's', '374', '5', 'dualfist', '4', '4.75000', '0', '0', '0', '325', '0', '152', '-1', '8680000', '1464', 'true', 'false', 'true', 'true', '3572', '1', '3565', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19163', 'Ares Fists Epic/Haste', 'lrhand', 'true', '1420', '1', '1', 's', '374', '5', 'dualfist', '4', '4.75000', '0', '0', '0', '325', '0', '152', '-1', '8680000', '1464', 'true', 'false', 'true', 'true', '3037', '4', '3565', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19164', 'Ares Fists Epic/Health', 'lrhand', 'true', '1420', '1', '1', 's', '374', '5', 'dualfist', '4', '4.75000', '0', '0', '0', '325', '0', '152', '-1', '8680000', '1464', 'true', 'false', 'true', 'true', '3013', '1', '3565', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19600', 'Great Sword of Scion', 'lrhand', 'true', '1380', '1', '1', 's', '342', '10', 'bigsword', '8', '0.00000', '0', '0', '0', '325', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3601', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19601', 'Great Sword of Scion - Haste', 'lrhand', 'true', '1380', '1', '1', 's', '342', '10', 'bigsword', '8', '0.00000', '0', '0', '0', '325', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3601', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19602', 'Great Sword of Scion - Health', 'lrhand', 'true', '1380', '1', '1', 's', '342', '10', 'bigsword', '8', '0.00000', '0', '0', '0', '325', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3013', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19603', 'Great Sword of Scion - Focus', 'lrhand', 'true', '1380', '1', '1', 's', '342', '10', 'bigsword', '8', '0.00000', '0', '0', '0', '325', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3567', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19606', 'Evil Stormstriker', 'rhand', 'true', '1570', '1', '1', 's', '281', '20', 'blunt', '4', '4.00000', '0', '0', '0', '379', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3568', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19607', 'Evil Stormstriker - Haste', 'rhand', 'true', '1570', '1', '1', 's', '281', '20', 'blunt', '4', '4.00000', '0', '0', '0', '379', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3068', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19608', 'Evil Stormstriker - Health', 'rhand', 'true', '1570', '1', '1', 's', '281', '20', 'blunt', '4', '4.00000', '0', '0', '0', '379', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3013', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19609', 'Evil Stormstriker - Focus', 'rhand', 'true', '1570', '1', '1', 's', '281', '20', 'blunt', '4', '4.00000', '0', '0', '0', '379', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3567', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19610', 'Demonic Eye', 'lrhand', 'true', '1800', '1', '1', 's', '281', '10', 'pole', '8', '-3.00000', '0', '0', '0', '325', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19611', 'Demonic Eye - Haste', 'lrhand', 'true', '1800', '1', '1', 's', '281', '10', 'pole', '8', '-3.00000', '0', '0', '0', '325', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3068', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19612', 'Demonic Eye - Health', 'lrhand', 'true', '1800', '1', '1', 's', '281', '10', 'pole', '8', '-3.00000', '0', '0', '0', '325', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3013', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19613', 'Demonic Eye - Focus', 'lrhand', 'true', '1800', '1', '1', 's', '281', '10', 'pole', '8', '-3.00000', '0', '0', '0', '325', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3567', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19614', 'Demonic Eye - Crt Stun', 'lrhand', 'true', '1800', '1', '1', 's', '281', '10', 'pole', '8', '-3.00000', '0', '0', '0', '325', '0', '132', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '3070', '1', '20');
INSERT INTO `custom_weapon` VALUES ('19615', 'Evil Separator of Darkness', 'rhand', 'true', '1670', '3', '3', 's', '170', '0', 'sword', '0', '-1.00000', '0', '0', '0', '0', '0', '0', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19616', 'Evil Separator of Darkness Acumen', 'rhand', 'true', '1670', '3', '3', 's', '170', '20', 'blunt', '4', '4.00000', '0', '0', '0', '379', '0', '143', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3047', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19617', 'Evil Separator of Darkness Magic Hold', 'rhand', 'true', '1670', '3', '3', 's', '170', '10', 'blunt', '8', '0.00000', '0', '0', '0', '379', '0', '143', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '3577', '1', '30', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19618', 'Evil Separator of Darkness Wild Magic', 'rhand', 'true', '1670', '3', '3', 's', '170', '5', 'blunt', '12', '-3.00000', '0', '0', '0', '293', '9', '107', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '5164', '1', '15', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19619', 'Soul Fusion of Lightness', 'rhand', 'true', '1670', '3', '3', 's', '170', '0', 'sword', '0', '-1.00000', '0', '0', '0', '0', '0', '0', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19620', 'Soul Fusion of Lightness Acumen', 'rhand', 'true', '1670', '3', '3', 's', '170', '20', 'blunt', '4', '4.00000', '0', '0', '0', '379', '0', '143', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3047', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19621', 'Soul Fusion of Lightness Magic Hold', 'rhand', 'true', '1670', '3', '3', 's', '170', '10', 'blunt', '8', '0.00000', '0', '0', '0', '379', '0', '143', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '3577', '1', '30', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19622', 'Soul Fusion of Lightness Wild Magic', 'rhand', 'true', '1670', '3', '3', 's', '170', '5', 'blunt', '12', '-3.00000', '0', '0', '0', '293', '9', '107', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '0', '0', '0', '0', '5164', '1', '15', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19555', 'Dual Gods Blade Focus', 'lrhand', 'true', '2600', '2', '2', 's', '281', '10', 'dual', '8', '0.00000', '0', '0', '0', '379', '0', '132', '-1', '97600000', '4880', 'true', 'false', 'true', 'true', '3567', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19556', 'Dual Gods Blade Crt.Dmage', 'lrhand', 'true', '2600', '2', '2', 's', '281', '10', 'dual', '8', '-1.00000', '0', '0', '0', '379', '0', '132', '-1', '97600000', '4880', 'true', 'false', 'true', 'true', '3572', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19557', 'Dual Gods Blade Haste', 'lrhand', 'true', '2600', '2', '2', 's', '281', '10', 'dual', '8', '-3.00000', '0', '0', '0', '379', '0', '132', '-1', '97600000', '4880', 'true', 'false', 'true', 'true', '3037', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `custom_weapon` VALUES ('19604', 'Glint Eye  Epic/Crt.Damage', 'rhand', 'true', '970', '1', '1', 's', '318', '5', 'dagger', '12', '-3.00000', '0', '0', '0', '433', '0', '99', '-1', '48800000', '2440', 'true', 'false', 'true', 'true', '3572', '1', '0', '0', '0', '0', '0', '0', '0', '0');
