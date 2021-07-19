--
-- Table structure for table `npc`
-- 
DROP TABLE IF EXISTS `custom_npc`;
CREATE TABLE `custom_npc`(
  `id` decimal(11,0) NOT NULL default '0',
  `idTemplate` int(11) NOT NULL default '0',
  `name` varchar(200) default NULL,
  `serverSideName` int(1) default '0',
  `title` varchar(45) default '',
  `serverSideTitle` int(1) default '0',
  `class` varchar(200) default NULL,
  `collision_radius` decimal(5,2) default NULL,
  `collision_height` decimal(5,2) default NULL,
  `level` decimal(2,0) default NULL,
  `sex` varchar(6) default NULL,
  `type` varchar(20) default NULL,
  `attackrange` int(11) default NULL,
  `hp` decimal(8,0) default NULL,
  `mp` decimal(5,0) default NULL,
  `hpreg` decimal(8,2) default NULL,
  `mpreg` decimal(5,2) default NULL,
  `str` decimal(7,0) default NULL,
  `con` decimal(7,0) default NULL,
  `dex` decimal(7,0) default NULL,
  `int` decimal(7,0) default NULL,
  `wit` decimal(7,0) default NULL,
  `men` decimal(7,0) default NULL,
  `exp` decimal(9,0) default NULL,
  `sp` decimal(8,0) default NULL,
  `patk` decimal(5,0) default NULL,
  `pdef` decimal(5,0) default NULL,
  `matk` decimal(5,0) default NULL,
  `mdef` decimal(5,0) default NULL,
  `atkspd` decimal(3,0) default NULL,
  `aggro` decimal(6,0) default NULL,
  `matkspd` decimal(4,0) default NULL,
  `rhand` decimal(4,0) default NULL,
  `lhand` decimal(4,0) default NULL,
  `armor` decimal(1,0) default NULL,
  `walkspd` decimal(3,0) default NULL,
  `runspd` decimal(3,0) default NULL,
  `faction_id` varchar(40) default NULL,
  `faction_range` decimal(4,0) default NULL,
  `isUndead` int(11) default 0,
  `absorb_level` decimal(2,0) default 0,
  `absorb_type` enum('FULL_PARTY','LAST_HIT','PARTY_ONE_RANDOM') DEFAULT 'LAST_HIT' NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;
--
--Roy the Cat
-- 
INSERT ignore INTO custom_npc
values
('31228', '31228', 'Roy the Cat', '1', 'Classes Trader', '1', 'Monster.cat_the_cat', '9.00', '16.00', '70', 'male', 'L2ClassMaster', '40', '3862', '1493', '11.85', '2.78', '40', '43', '30', '21', '20', '10', '490', '10', '1335', '470', '780', '382', '278', '0', '333', '0', '0', '0', '88', '132', null, '0', '0', '0', 'LAST_HIT');
--
-- NPCs By Smallz - AIO
-- 
INSERT INTO `custom_npc` VALUES ('4', '4', 'Athena', '0', 'All in One', '0', 'Monster3.Elite_Mage', '8.00', '21.00', '73', 'male', 'L2Merchant', '40', '388245', '1312', '847.28', '9.81', '60', '57', '73', '76', '70', '80', '5168419', '839126', '3759', '1507', '1349', '669', '230', '0', '3819', '8687', '0', '0', '64', '275', '', '0', '1', '0', 'LAST_HIT');
INSERT INTO `skill_learn` VALUES ('4', '0');
INSERT INTO `skill_learn` VALUES ('4', '1');
INSERT INTO `skill_learn` VALUES ('4', '2');
INSERT INTO `skill_learn` VALUES ('4', '3');
INSERT INTO `skill_learn` VALUES ('4', '4');
INSERT INTO `skill_learn` VALUES ('4', '5');
INSERT INTO `skill_learn` VALUES ('4', '6');
INSERT INTO `skill_learn` VALUES ('4', '7');
INSERT INTO `skill_learn` VALUES ('4', '8');
INSERT INTO `skill_learn` VALUES ('4', '9');
INSERT INTO `skill_learn` VALUES ('4', '10');
INSERT INTO `skill_learn` VALUES ('4', '11');
INSERT INTO `skill_learn` VALUES ('4', '12');
INSERT INTO `skill_learn` VALUES ('4', '13');
INSERT INTO `skill_learn` VALUES ('4', '14');
INSERT INTO `skill_learn` VALUES ('4', '15');
INSERT INTO `skill_learn` VALUES ('4', '16');
INSERT INTO `skill_learn` VALUES ('4', '17');
INSERT INTO `skill_learn` VALUES ('4', '18');
INSERT INTO `skill_learn` VALUES ('4', '19');
INSERT INTO `skill_learn` VALUES ('4', '20');
INSERT INTO `skill_learn` VALUES ('4', '21');
INSERT INTO `skill_learn` VALUES ('4', '22');
INSERT INTO `skill_learn` VALUES ('4', '23');
INSERT INTO `skill_learn` VALUES ('4', '24');
INSERT INTO `skill_learn` VALUES ('4', '25');
INSERT INTO `skill_learn` VALUES ('4', '26');
INSERT INTO `skill_learn` VALUES ('4', '27');
INSERT INTO `skill_learn` VALUES ('4', '28');
INSERT INTO `skill_learn` VALUES ('4', '29');
INSERT INTO `skill_learn` VALUES ('4', '30');
INSERT INTO `skill_learn` VALUES ('4', '31');
INSERT INTO `skill_learn` VALUES ('4', '32');
INSERT INTO `skill_learn` VALUES ('4', '33');
INSERT INTO `skill_learn` VALUES ('4', '34');
INSERT INTO `skill_learn` VALUES ('4', '35');
INSERT INTO `skill_learn` VALUES ('4', '36');
INSERT INTO `skill_learn` VALUES ('4', '37');
INSERT INTO `skill_learn` VALUES ('4', '38');
INSERT INTO `skill_learn` VALUES ('4', '39');
INSERT INTO `skill_learn` VALUES ('4', '40');
INSERT INTO `skill_learn` VALUES ('4', '41');
INSERT INTO `skill_learn` VALUES ('4', '42');
INSERT INTO `skill_learn` VALUES ('4', '43');
INSERT INTO `skill_learn` VALUES ('4', '44');
INSERT INTO `skill_learn` VALUES ('4', '45');
INSERT INTO `skill_learn` VALUES ('4', '46');
INSERT INTO `skill_learn` VALUES ('4', '47');
INSERT INTO `skill_learn` VALUES ('4', '48');
INSERT INTO `skill_learn` VALUES ('4', '49');
INSERT INTO `skill_learn` VALUES ('4', '50');
INSERT INTO `skill_learn` VALUES ('4', '51');
INSERT INTO `skill_learn` VALUES ('4', '52');
INSERT INTO `skill_learn` VALUES ('4', '53');
INSERT INTO `skill_learn` VALUES ('4', '54');
INSERT INTO `skill_learn` VALUES ('4', '55');
INSERT INTO `skill_learn` VALUES ('4', '56');
INSERT INTO `skill_learn` VALUES ('4', '57');
INSERT INTO `skill_learn` VALUES ('4', '58');
INSERT INTO `skill_learn` VALUES ('4', '59');
INSERT INTO `skill_learn` VALUES ('4', '60');
INSERT INTO `skill_learn` VALUES ('4', '61');
INSERT INTO `skill_learn` VALUES ('4', '62');
INSERT INTO `skill_learn` VALUES ('4', '63');
INSERT INTO `skill_learn` VALUES ('4', '64');
INSERT INTO `skill_learn` VALUES ('4', '65');
INSERT INTO `skill_learn` VALUES ('4', '66');
INSERT INTO `skill_learn` VALUES ('4', '67');
INSERT INTO `skill_learn` VALUES ('4', '68');
INSERT INTO `skill_learn` VALUES ('4', '69');
INSERT INTO `skill_learn` VALUES ('4', '70');
INSERT INTO `skill_learn` VALUES ('4', '71');
INSERT INTO `skill_learn` VALUES ('4', '72');
INSERT INTO `skill_learn` VALUES ('4', '73');
INSERT INTO `skill_learn` VALUES ('4', '74');
INSERT INTO `skill_learn` VALUES ('4', '75');
INSERT INTO `skill_learn` VALUES ('4', '76');
INSERT INTO `skill_learn` VALUES ('4', '77');
INSERT INTO `skill_learn` VALUES ('4', '78');
INSERT INTO `skill_learn` VALUES ('4', '79');
INSERT INTO `skill_learn` VALUES ('4', '80');
INSERT INTO `skill_learn` VALUES ('4', '81');
INSERT INTO `skill_learn` VALUES ('4', '82');
INSERT INTO `skill_learn` VALUES ('4', '83');
INSERT INTO `skill_learn` VALUES ('4', '84');
INSERT INTO `skill_learn` VALUES ('4', '85');
INSERT INTO `skill_learn` VALUES ('4', '86');
INSERT INTO `skill_learn` VALUES ('4', '87');
INSERT INTO `skill_learn` VALUES ('4', '88');
INSERT INTO `skill_learn` VALUES ('4', '89');
INSERT INTO `skill_learn` VALUES ('4', '90');
INSERT INTO `skill_learn` VALUES ('4', '91');
INSERT INTO `skill_learn` VALUES ('4', '92');
INSERT INTO `skill_learn` VALUES ('4', '93');
INSERT INTO `skill_learn` VALUES ('4', '94');
INSERT INTO `skill_learn` VALUES ('4', '95');
INSERT INTO `skill_learn` VALUES ('4', '96');
INSERT INTO `skill_learn` VALUES ('4', '97');
INSERT INTO `skill_learn` VALUES ('4', '98');
INSERT INTO `skill_learn` VALUES ('4', '99');
INSERT INTO `skill_learn` VALUES ('4', '100');
INSERT INTO `skill_learn` VALUES ('4', '101');
INSERT INTO `skill_learn` VALUES ('4', '102');
INSERT INTO `skill_learn` VALUES ('4', '103');
INSERT INTO `skill_learn` VALUES ('4', '104');
INSERT INTO `skill_learn` VALUES ('4', '105');
INSERT INTO `skill_learn` VALUES ('4', '106');
INSERT INTO `skill_learn` VALUES ('4', '107');
INSERT INTO `skill_learn` VALUES ('4', '108');
INSERT INTO `skill_learn` VALUES ('4', '109');
INSERT INTO `skill_learn` VALUES ('4', '110');
INSERT INTO `skill_learn` VALUES ('4', '111');
INSERT INTO `skill_learn` VALUES ('4', '112');
INSERT INTO `skill_learn` VALUES ('4', '113');
INSERT INTO `skill_learn` VALUES ('4', '114');
INSERT INTO `skill_learn` VALUES ('4', '115');
INSERT INTO `skill_learn` VALUES ('4', '116');
INSERT INTO `skill_learn` VALUES ('4', '117');
INSERT INTO `skill_learn` VALUES ('4', '118');
--
-- NPCs By Smallz - Announcer
-- 
INSERT INTO `custom_npc` VALUES ('3', '3', 'Thalia', '0', 'Announcer', '0', 'NPC2.a_child_people_Fhuman', '10.00', '15.00', '70', 'female', 'L2NpcWalker', '40', '3862', '1493', '11.85', '2.78', '40', '43', '30', '21', '20', '10', '0', '0', '1314', '470', '780', '382', '278', '0', '333', '0', '0', '0', '88', '132', '', '0', '0', '0', 'LAST_HIT');
--
-- NPCs By Smallz - Buffer
-- 
INSERT INTO `custom_npc` VALUES ('1', '1', 'Eros', '0', 'Buffer', '0', 'Monster3.Death_Blader_Raid', '15.00', '32.50', '72', 'male', 'L2Npc', '40', '1825269', '3274', '688.51', '9.81', '60', '57', '73', '76', '70', '80', '4362668', '764172', '13026', '3933', '26791', '1597', '278', '0', '3819', '0', '0', '0', '162', '291', '', '0', '1', '0', 'LAST_HIT');
--
-- NPCs By Smallz - Clan Manager
-- 
INSERT INTO `custom_npc` VALUES ('16', '16', 'Hera', '0', 'Clan Manager', '0', 'NPC.a_hardins_pupil_FHuman', '8.00', '23.00', '70', 'female', 'L2Npc', '40', '3862', '1493', '11.85', '2.78', '40', '43', '30', '21', '20', '10', '0', '0', '1314', '470', '780', '382', '278', '0', '333', '0', '0', '0', '55', '132', '', '0', '1', '0', 'LAST_HIT');
--
-- NPCs By Smallz - Class Master
-- 
INSERT INTO `custom_npc` VALUES ('8', '8', 'Aquiles', '0', 'Class Master', '0', 'NPC2.a_child_people_Mhuman', '10.00', '12.00', '70', 'male', 'L2ClassMaster', '40', '3862', '1493', '11.85', '2.78', '40', '43', '30', '21', '20', '10', '490', '10', '1335', '470', '780', '382', '278', '0', '333', '0', '0', '0', '88', '132', '', '0', '0', '0', 'LAST_HIT');
--
-- NPCs By Smallz - Enchant Item
-- 
INSERT INTO `custom_npc` VALUES ('2', '2', 'Atlas', '0', 'Enchant Item', '0', 'NPC.a_temple_master_Mhuman', '8.00', '24.00', '70', 'etc', 'L2Npc', '40', '3862', '1493', '11.85', '2.78', '40', '43', '30', '21', '20', '10', '0', '0', '1314', '470', '780', '382', '278', '0', '333', '0', '0', '0', '55', '132', '', '0', '1', '0', 'LAST_HIT');
--
-- NPCs By Smallz - Event Buffer
-- 
INSERT INTO `custom_npc` VALUES ('17', '17', 'Apolo', '0', 'Event Buffer', '0', 'Monster3.Death_Blader_Raid', '15.00', '32.50', '72', 'male', 'L2Npc', '40', '1825269', '3274', '688.51', '9.81', '60', '57', '73', '76', '70', '80', '4362668', '764172', '13026', '3933', '26791', '1597', '278', '0', '3819', '0', '0', '0', '162', '291', '', '0', '1', '0', 'LAST_HIT');
--
-- NPCs By Smallz - Event's
-- 
INSERT INTO `custom_npc` VALUES ('10', '10', 'Event Flag', '0', 'Team vs Team', '0', 'NpcEV.azit_contest_pile_winner', '63.50', '97.50', '99', 'male', 'L2Npc', '40', '400000', '9999', '13.43', '3.09', '40', '43', '30', '21', '20', '10', '0', '0', '9000', '5000', '6000', '6000', '300', '0', '333', '0', '0', '0', '88', '132', '', '0', '0', '0', 'LAST_HIT');
INSERT INTO `custom_npc` VALUES ('11', '11', 'Event Flag', '0', 'Capture the Flag', '0', 'NpcEV.azit_contest_pile_winner~', '63.50', '97.50', '99', 'male', 'L2Npc', '40', '400000', '9999', '13.43', '3.09', '40', '43', '30', '21', '20', '10', '0', '0', '9000', '5000', '6000', '6000', '300', '0', '333', '0', '0', '0', '88', '132', '', '0', '0', '0', 'LAST_HIT');
INSERT INTO `custom_npc` VALUES ('12', '12', 'Event Flag', '0', 'Death Match', '0', 'NpcEV.azit_contest_pile_winner~', '63.50', '97.50', '99', 'male', 'L2Npc', '40', '400000', '9999', '13.43', '3.09', '40', '43', '30', '21', '20', '10', '0', '0', '9000', '5000', '6000', '6000', '300', '0', '333', '0', '0', '0', '88', '132', '', '0', '0', '0', 'LAST_HIT');
--
-- NPCs By Smallz - Global Gatekeeper
-- 
INSERT INTO custom_npc VALUES ('5', '5', 'Hyperion', '0', 'Global Gatekeeper', '0', 'Monster2.ketra_orc_chieftain_20_bi', '17.00', '46.20', '80', 'male', 'L2Teleporter', '40', '300327', '1524', '368.11', '9.81', '60', '57', '73', '76', '70', '80', '3775961', '557272', '2423', '1731', '477', '768', '230', '0', '3819', '6719', '0', '0', '38', '307', '', '0', '0', '0', 'LAST_HIT');
INSERT INTO `teleport` VALUES ('Dark Elven Village', '50001', '9745', '15606', '-4574', '15000', '0');
INSERT INTO `teleport` VALUES ('Dwarven Village', '50002', '115113', '-178212', '-901', '15000', '0');
INSERT INTO `teleport` VALUES ('Elven Village', '50003', '46934', '51467', '-2977', '15000', '0');
INSERT INTO `teleport` VALUES ('Orc Village', '50004', '-44836', '-112352', '-239', '15000', '0');
INSERT INTO `teleport` VALUES ('Talking Island', '50005', '-84318', '244579', '-3730', '15000', '0');
INSERT INTO `teleport` VALUES ('Town Of Dion', '50006', '15670', '142983', '-2705', '15000', '0');
INSERT INTO `teleport` VALUES ('Floran Village', '50007', '17838', '170274', '-3508', '15000', '0');
INSERT INTO `teleport` VALUES ('Town Of Giran', '50008', '83400', '147943', '-3404', '15000', '0');
INSERT INTO `teleport` VALUES ('Gludin Village', '50009', '-80826', '149775', '-3043', '15000', '0');
INSERT INTO `teleport` VALUES ('Town Of Gludio', '50010', '-12672', '122776', '-3116', '15000', '0');
INSERT INTO `teleport` VALUES ('Hunters Village', '50011', '117110', '76883', '-2695', '15000', '0');
INSERT INTO `teleport` VALUES ('Town Of Aden [NE]', '50012', '159439', '21104', '-3684', '15000', '0');
INSERT INTO `teleport` VALUES ('Town Of Aden [SW]', '50013', '140434', '26222', '-2530', '15000', '0');
INSERT INTO `teleport` VALUES ('Town Of Aden', '50014', '147450', '26741', '-2204', '15000', '0');
INSERT INTO `teleport` VALUES ('Town Of Oren', '50015', '82956', '53162', '-1495', '15000', '0');
INSERT INTO `teleport` VALUES ('Town Of Heine', '50016', '107092', '219693', '-3446', '15000', '0');
INSERT INTO `teleport` VALUES ('The Garden Of Eva', '50017', '84543', '235022', '-3756', '15000', '0');
INSERT INTO `teleport` VALUES ('Cemetery', '50018', '172136', '20325', '-3326', '15000', '0');
INSERT INTO `teleport` VALUES ('The Giants Cave', '50019', '174528', '52683', '-4369', '15000', '0');
INSERT INTO `teleport` VALUES ('The Forest Of Mirrors', '50020', '150477', '85907', '-2753', '15000', '0');
INSERT INTO `teleport` VALUES ('Anghel Waterfall', '50021', '169026', '85272', '-2092', '15000', '0');
INSERT INTO `teleport` VALUES ('Dragon Valley Cave', '50022', '131355', '114451', '-3718', '15000', '0');
INSERT INTO `teleport` VALUES ('Lair End', '50023', '154623', '121134', '-3809', '15000', '0');
INSERT INTO `teleport` VALUES ('Lair Of Antharas', '50024', '173826', '115333', '-7708', '15000', '0');
INSERT INTO `teleport` VALUES ('Cruma Tower Entrance', '50025', '17192', '114178', '-3439', '15000', '0');
INSERT INTO `teleport` VALUES ('Cruma Tower 1nd Floor', '50026', '17724', '114004', '-11672', '15000', '0');
INSERT INTO `teleport` VALUES ('Cruma Tower 2nd floor', '50027', '17730', '108301', '-9057', '15000', '0');
INSERT INTO `teleport` VALUES ('Cruma Tower 3nd floor', '50028', '17719', '115430', '-6582', '15000', '0');
INSERT INTO `teleport` VALUES ('Cruma Tower Core Room', '50029', '17692', '112284', '-6250', '15000', '0');
INSERT INTO `teleport` VALUES ('Altar Of Rites', '50030', '-45563', '73216', '-3575', '15000', '0');
INSERT INTO `teleport` VALUES ('School Of Dark Arts', '50031', '-47129', '59678', '-3336', '15000', '0');
INSERT INTO `teleport` VALUES ('South Border', '50032', '-61146', '99591', '-3744', '15000', '0');
INSERT INTO `teleport` VALUES ('Swamp', '50033', '-14162', '44879', '-3592', '15000', '0');
INSERT INTO `teleport` VALUES ('Temple Of shillien', '50034', '23965', '10989', '-3723', '15000', '0');
INSERT INTO `teleport` VALUES ('Undine Waterfall', '50035', '-10972', '57808', '-3717', '15000', '0');
INSERT INTO `teleport` VALUES ('Waterfall (in)', '50036', '-5162', '55702', '-3483', '15000', '0');
INSERT INTO `teleport` VALUES ('Abandoned Coal Mines [East]', '50037', '155535', '-173560', '2495', '15000', '0');
INSERT INTO `teleport` VALUES ('Abandoned Coal Mines [North]', '50038', '152375', '-179887', '2495', '15000', '0');
INSERT INTO `teleport` VALUES ('Abandoned Coal Mines [West]', '50039', '139783', '-177260', '-1539', '15000', '0');
INSERT INTO `teleport` VALUES ('Cave Of Trials', '50040', '9954', '-112487', '-2470', '15000', '0');
INSERT INTO `teleport` VALUES ('Frozen waterfall', '50041', '9621', '-139945', '-1353', '15000', '0');
INSERT INTO `teleport` VALUES ('Mithril Mines', '50042', '179039', '-184080', '-319', '15000', '0');
INSERT INTO `teleport` VALUES ('South Coast', '50043', '-37955', '-100767', '-3774', '15000', '0');
INSERT INTO `teleport` VALUES ('The Northeast Coast', '50044', '169008', '-208272', '-3504', '15000', '0');
INSERT INTO `teleport` VALUES ('Antaras Circle', '50045', '40246', '58785', '-3634', '15000', '0');
INSERT INTO `teleport` VALUES ('Elven Fortress', '50046', '29205', '74948', '-3775', '15000', '0');
INSERT INTO `teleport` VALUES ('Iris Lake', '50047', '51746', '71559', '-3427', '15000', '0');
INSERT INTO `teleport` VALUES ('Shadow Of the Mother tree', '50048', '47932', '39729', '-3466', '15000', '0');
INSERT INTO `teleport` VALUES ('Death Path', '50049', '70000', '126636', '-3804', '15000', '0');
INSERT INTO `teleport` VALUES ('Dragon Valley [Entrance]', '50050', '72317', '117736', '-3672', '15000', '0');
INSERT INTO `teleport` VALUES ('Dragon Valley [Inside]', '50051', '84959', '110701', '-3209', '15000', '0');
INSERT INTO `teleport` VALUES ('Execution Grounds', '50052', '51055', '141959', '-2869', '15000', '0');
INSERT INTO `teleport` VALUES ('Giran Harbor', '50053', '47114', '187152', '-3485', '15000', '0');
INSERT INTO `teleport` VALUES ('The Partisan Hideway', '50054', '46897', '111567', '-2069', '15000', '0');
INSERT INTO `teleport` VALUES ('Abandoned Camp', '50055', '-56742', '140569', '-2625', '15000', '0');
INSERT INTO `teleport` VALUES ('Gludin Arena', '50056', '-88839', '142382', '-3646', '15000', '0');
INSERT INTO `teleport` VALUES ('Cliffside Estate', '50057', '-94841', '147430', '-2675', '15000', '0');
INSERT INTO `teleport` VALUES ('Fellmere Lake', '50058', '-66931', '120296', '-3651', '15000', '0');
INSERT INTO `teleport` VALUES ('Forgotten Temple', '50059', '-53838', '179285', '-4640', '15000', '0');
INSERT INTO `teleport` VALUES ('Gludin Harbor', '50060', '-89199', '149962', '-3586', '15000', '0');
INSERT INTO `teleport` VALUES ('Maphris Thumb', '50061', '-37689', '193124', '-2208', '15000', '0');
INSERT INTO `teleport` VALUES ('Orc Barracks', '50062', '-90562', '108182', '-3546', '15000', '0');
INSERT INTO `teleport` VALUES ('Windy Hill', '50063', '-84313', '87057', '-3457', '15000', '0');
INSERT INTO `teleport` VALUES ('Northern Neutral Zone', '50064', '-10853', '75689', '-3596', '15000', '0');
INSERT INTO `teleport` VALUES ('Ruins Of Agony', '50065', '-56235', '106668', '-3773', '15000', '0');
INSERT INTO `teleport` VALUES ('Ruins Of Despair', '50066', '-20043', '137688', '-3896', '15000', '0');
INSERT INTO `teleport` VALUES ('Ivory Tower', '50067', '85332', '16186', '-3673', '15000', '0');
INSERT INTO `teleport` VALUES ('Northern Waterfall', '50068', '70833', '6426', '-3639', '15000', '0');
INSERT INTO `teleport` VALUES ('Enchanted Valley', '50069', '124113', '59232', '-4587', '15000', '0');
INSERT INTO `teleport` VALUES ('Sea Of Spores', '50070', '62425', '30856', '-3779', '15000', '0');
INSERT INTO `teleport` VALUES ('Sea Of Spores [Centre]', '50071', '54216', '23826', '-5380', '15000', '0');
INSERT INTO `teleport` VALUES ('Tower Of Insolence', '50072', '121685', '15749', '-3852', '15000', '0');
INSERT INTO `teleport` VALUES ('Cedrics Training Hall', '50073', '-73145', '256520', '-3126', '15000', '0');
INSERT INTO `teleport` VALUES ('Einhovants School Of Magic', '50074', '-88406', '249168', '-3576', '15000', '0');
INSERT INTO `teleport` VALUES ('Elven Ruins', '50075', '48736', '248463', '-6162', '15000', '0');
INSERT INTO `teleport` VALUES ('Northern Coast', '50076', '-101294', '212553', '-3093', '15000', '0');
INSERT INTO `teleport` VALUES ('Obelisk Of Victory', '50077', '-99746', '237538', '-3572', '15000', '0');
INSERT INTO `teleport` VALUES ('Talking Island Harbor', '50078', '-96041', '261133', '-3483', '15000', '0');
INSERT INTO `teleport` VALUES ('Ants Nest', '50079', '-26111', '173692', '-4152', '15000', '0');
INSERT INTO `teleport` VALUES ('South Entrance Of Wastlands', '50080', '-17949', '205272', '-3670', '15000', '0');
INSERT INTO `teleport` VALUES ('Wastelands', '50081', '-20893', '186060', '-4108', '15000', '0');
INSERT INTO `teleport` VALUES ('Border Outpost', '50082', '109699', '-7908', '-2902', '15000', '0');
INSERT INTO `teleport` VALUES ('Blazing Swamp', '50083', '145835', '-10995', '-4424', '15000', '0');
INSERT INTO `teleport` VALUES ('The End Thus For', '50084', '125439', '-31083', '-3862', '15000', '0');
INSERT INTO `teleport` VALUES ('Aden Castle Cross', '50085', '147967', '4005', '4599', '15000', '0');
INSERT INTO `teleport` VALUES ('Anghel Waterfall (Top Perch)', '50086', '174354', '90771', '1838', '15000', '0');
INSERT INTO `teleport` VALUES ('Dwarven Tower', '50087', '106545', '-175091', '1300', '15000', '0');
INSERT INTO `teleport` VALUES ('Partisan Fall', '50088', '49552', '116839', '-2131', '15000', '0');
INSERT INTO `teleport` VALUES ('Devastated Castle', '50089', '178283', '-15739', '-2262', '15000', '0');
INSERT INTO `teleport` VALUES ('Bandits Stronghold', '50090', '82662', '-15977', '-1893', '15000', '0');
INSERT INTO `teleport` VALUES ('Coliseum', '50091', '147451', '46728', '-3410', '15000', '0');
INSERT INTO `teleport` VALUES ('Innadril Castle', '50092', '116207', '244184', '-1084', '15000', '0');
INSERT INTO `teleport` VALUES ('Alligator Island', '50093', '100887', '172943', '-3724', '15000', '0');
INSERT INTO `teleport` VALUES ('Pirates Tunnel', '50094', '41602', '199340', '-4636', '15000', '0');
INSERT INTO `teleport` VALUES ('Devils Isle', '50095', '42006', '208234', '-3756', '15000', '0');
INSERT INTO `teleport` VALUES ('Field Of Silence', '50096', '84904', '182410', '-3670', '15000', '0');
INSERT INTO `teleport` VALUES ('Field Of Whispers', '50097', '86519', '211911', '-3764', '15000', '0');
INSERT INTO `teleport` VALUES ('Town Of Goddard', '50098', '147591', '-56359', '-2807', '15000', '0');
INSERT INTO `teleport` VALUES ('Town Of Rune', '50099', '45843', '-47929', '-823', '15000', '0');
INSERT INTO `teleport` VALUES ('Varka Silenos Outpost', '50100', '125893', '-40901', '-3776', '15000', '0');
INSERT INTO `teleport` VALUES ('Canyon 2', '50101', '193752', '-46075', '-2954', '15000', '0');
INSERT INTO `teleport` VALUES ('Walls Of Argos', '50102', '184380', '-62690', '-3000', '15000', '0');
INSERT INTO `teleport` VALUES ('Swamp Of Screams', '50103', '91317', '-57174', '-2991', '15000', '0');
INSERT INTO `teleport` VALUES ('Beast Farm', '50104', '52816', '-81617', '-2751', '15000', '0');
INSERT INTO `teleport` VALUES ('Valley Of Saints', '50105', '64352', '-71206', '-3714', '15000', '0');
INSERT INTO `teleport` VALUES ('Ketra Orc Outpost', '50106', '130512', '-72326', '-3538', '15000', '0');
INSERT INTO `teleport` VALUES ('Lakes', '50107', '144621', '-105540', '-3682', '15000', '0');
INSERT INTO `teleport` VALUES ('Forge Of The Gods', '50108', '170193', '-116256', '-2084', '15000', '0');
INSERT INTO `teleport` VALUES ('Cave 2', '50109', '190403', '-108821', '-3314', '15000', '0');
INSERT INTO `teleport` VALUES ('Hot Springs Guild House', '50110', '141213', '-122118', '-1961', '15000', '0');
INSERT INTO `teleport` VALUES ('Temple Of Pilgrims', '50111', '168618', '-86602', '-3021', '15000', '0');
INSERT INTO `teleport` VALUES ('Imperial Graveyard', '50112', '187120', '-75490', '-2848', '15000', '0');
INSERT INTO `teleport` VALUES ('Coliseum Ruins', '50113', '-20800', '20906', '-3051', '15000', '0');
INSERT INTO `teleport` VALUES ('Hot Springs Region', '50114', '154482', '-126560', '-2311', '15000', '0');
INSERT INTO `teleport` VALUES ('Lair Of Valakas Crystal', '50115', '190188', '-106425', '-810', '15000', '0');
INSERT INTO `teleport` VALUES ('Forest Of The Dead', '50116', '63379', '-48912', '-3164', '15000', '0');
INSERT INTO `teleport` VALUES ('Rune Harbor', '50117', '38030', '-38074', '-3668', '15000', '0');
INSERT INTO `teleport` VALUES ('TOI - 1st Floor', '50118', '115168', '16022', '-5100', '15000', '0');
INSERT INTO `teleport` VALUES ('TOI - 2nd Floor', '50119', '114649', '18587', '-3609', '15000', '0');
INSERT INTO `teleport` VALUES ('TOI - 3rd Floor', '50120', '117918', '16039', '-2127', '15000', '0');
INSERT INTO `teleport` VALUES ('TOI - 4th Floor', '50121', '114622', '12946', '-645', '15000', '0');
INSERT INTO `teleport` VALUES ('TOI - 5th Floor', '50122', '112209', '16078', '928', '15000', '0');
INSERT INTO `teleport` VALUES ('TOI - 6th Floor', '50123', '112376', '16099', '1947', '15000', '0');
INSERT INTO `teleport` VALUES ('TOI - 7th Floor', '50124', '115091', '12165', '2957', '15000', '0');
INSERT INTO `teleport` VALUES ('TOI - 8th Floor', '50125', '111063', '16118', '3967', '15000', '0');
INSERT INTO `teleport` VALUES ('TOI - 9th Floor', '50126', '117147', '18415', '4977', '15000', '0');
INSERT INTO `teleport` VALUES ('TOI - 10th Floor', '50127', '118374', '15973', '5987', '15000', '0');
INSERT INTO `teleport` VALUES ('TOI - 11th Floor', '50128', '112716', '14150', '6997', '15000', '0');
INSERT INTO `teleport` VALUES ('TOI - 12th Floor', '50129', '114809', '18711', '7996', '15000', '0');
INSERT INTO `teleport` VALUES ('TOI - 13th Floor', '50130', '115178', '16989', '9007', '15000', '0');
INSERT INTO `teleport` VALUES ('TOI - 14th Floor Outside Door', '50131', '112714', '14111', '10077', '15000', '0');
INSERT INTO `teleport` VALUES ('TOI - 14th Floor Inside On RoOf', '50132', '113098', '14532', '10077', '15000', '0');
INSERT INTO `teleport` VALUES ('The Forbidden Gateway', '50133', '185395', '20359', '-3270', '15000', '0');
INSERT INTO `teleport` VALUES ('Cat Heretics Entrance', '50134', '-53174', '-250275', '-7911', '15000', '0');
INSERT INTO `teleport` VALUES ('Cat Branded Entrance', '50135', '46217', '170290', '-4983', '15000', '0');
INSERT INTO `teleport` VALUES ('Cat Apostate Entrance', '50136', '-20230', '-250780', '-8168', '15000', '0');
INSERT INTO `teleport` VALUES ('Cat Witch Entrance', '50137', '140404', '79678', '-5431', '15000', '0');
INSERT INTO `teleport` VALUES ('Cat DarkOmen Entrance', '50138', '-19500', '13508', '-4905', '15000', '0');
INSERT INTO `teleport` VALUES ('Cat Forbidden Path Entrance', '50139', '12521', '-248481', '-9585', '15000', '0');
INSERT INTO `teleport` VALUES ('Necro Sacrifice Entrance', '50140', '-41570', '209785', '-5089', '15000', '0');
INSERT INTO `teleport` VALUES ('Necro Pilgrims Entrance', '50141', '45251', '123890', '-5415', '15000', '0');
INSERT INTO `teleport` VALUES ('Necro Worshippers Entrance', '50142', '111273', '174015', '-5417', '15000', '0');
INSERT INTO `teleport` VALUES ('Necro Patriots Entrance', '50143', '-21726', '77385', '-5177', '15000', '0');
INSERT INTO `teleport` VALUES ('Necro Ascetics Entrance', '50144', '-52254', '79103', '-4743', '15000', '0');
INSERT INTO `teleport` VALUES ('Necro Martyrs Entrance', '50145', '118308', '132800', '-4833', '15000', '0');
INSERT INTO `teleport` VALUES ('Necro Saints Entrance', '50146', '83000', '209213', '-5443', '15000', '0');
INSERT INTO `teleport` VALUES ('Necro Disciples Entrance', '50147', '172251', '-17605', '-4903', '15000', '0');
INSERT INTO `teleport` VALUES ('Town Of Schuttgart', '50148', '87386', '-143246', '-1293', '15000', '0');
INSERT INTO `teleport` VALUES ('Schuttgart Castle', '50149', '77394', '-147197', '-476', '15000', '0');
INSERT INTO `teleport` VALUES ('Rune Castle', '50150', '21216', '-49081', '-1301', '15000', '0');
INSERT INTO `teleport` VALUES ('Monastery Of Silence', '50151', '123743', '-75032', '-2902', '15000', '0');
INSERT INTO `teleport` VALUES ('Crypts Of Disgrace', '50152', '56095', '-118952', '-3290', '15000', '0');
INSERT INTO `teleport` VALUES ('Den Of Evil', '50153', '76860', '-125169', '-3414', '15000', '0');
INSERT INTO `teleport` VALUES ('Frost Lake', '50154', '108090', '-120925', '-3628', '15000', '0');
INSERT INTO `teleport` VALUES ('The Ice Queens Castle', '50155', '109060', '-128655', '-3084', '15000', '0');
INSERT INTO `teleport` VALUES ('Ice Merchant Cabin', '50156', '113487', '-109888', '-865', '15000', '0');
INSERT INTO `teleport` VALUES ('Valley Of The Lords', '50157', '23006', '-126115', '-870', '15000', '0');
INSERT INTO `teleport` VALUES ('Pavel Ruins', '50158', '88275', '-125690', '-3815', '15000', '0');
INSERT INTO `teleport` VALUES ('Plunderous Plains', '50159', '113900', '-154175', '-1488', '15000', '0');
INSERT INTO `teleport` VALUES ('Stakato Nest', '50160', '89880', '-44515', '-2135', '15000', '0');
INSERT INTO `teleport` VALUES ('Wild Beast Reserve', '50161', '57849', '-93182', '-1360', '15000', '0');
INSERT INTO `teleport` VALUES ('Graverobber Hideout', '50162', '48336', '-107734', '-1577', '15000', '0');
INSERT INTO `teleport` VALUES ('Carons Dungeon', '50163', '69762', '-111260', '-1807', '15000', '0');
INSERT INTO `teleport` VALUES ('Race Track', '50164', '152610', '-126325', '-2230', '15000', '0');
INSERT INTO `teleport` VALUES ('Windtail Waterfall', '50165', '40825', '-90317', '-3095', '15000', '0');
INSERT INTO `teleport` VALUES ('Archaic Laboratory', '50166', '87475', '-109835', '-3330', '15000', '0');
INSERT INTO `teleport` VALUES ('Fortress Of The Dead', '50167', '58000', '-30767', '380', '15000', '0');
INSERT INTO `teleport` VALUES ('Rainbow Springs Chateau', '50168', '141377', '-123793', '-1906', '15000', '0');
INSERT INTO `teleport` VALUES ('Sky Wagon Relic', '50169', '117715', '-141750', '-2700', '15000', '0');
INSERT INTO `teleport` VALUES ('Brigand Stronghold', '50170', '124585', '-16024', '-1180', '15000', '0');
INSERT INTO `teleport` VALUES ('Lost Nest', '50171', '26174', '-17134', '-2747', '15000', '0');
INSERT INTO `teleport` VALUES ('Primeval Plains', '50172', '8264', '-14431', '-3696', '15000', '0');
INSERT INTO `teleport` VALUES ('Primeval Isle Wharf', '50173', '10468', '-24569', '-3650', '15000', '0');
INSERT INTO `teleport` VALUES ('Research Facility', '50174', '6229', '-2924', '-2965', '15000', '0');
INSERT INTO `teleport` VALUES ('Town of Gludio', '77701', '-12672', '122776', '-3116', '1000', '0');
INSERT INTO `teleport` VALUES ('Dion', '77702', '15670', '142983', '-2705', '1', '0');
INSERT INTO `teleport` VALUES ('Town of Giran', '77703', '83400', '147943', '-3404', '1', '0');
INSERT INTO `teleport` VALUES ('Oren Town', '77704', '82956', '53162', '-1495', '1', '0');
INSERT INTO `teleport` VALUES ('Hunter Village', '77705', '116819', '76994', '-2714', '1', '0');
INSERT INTO `teleport` VALUES ('Aden Town', '77706', '146331', '25762', '-2018', '1', '0');
INSERT INTO `teleport` VALUES ('Goddard', '77707', '147928', '-55273', '-2734', '1', '0');
INSERT INTO `teleport` VALUES ('Rune', '77708', '43799', '-47727', '-798', '1', '0');
INSERT INTO `teleport` VALUES ('Schuttgart', '77709', '87386', '-143246', '-1293', '1', '0');
INSERT INTO `teleport` VALUES ('Heine', '77710', '111409', '219364', '-3545', '1', '0');
INSERT INTO `teleport` VALUES ('Giran Harbor', '77711', '47942', '186764', '-3485', '1', '0');
INSERT INTO `teleport` VALUES ('Orc village', '77712', '-44836', '-112524', '-235', '1', '0');
INSERT INTO `teleport` VALUES ('Dwarven village', '77713', '115113', '-178212', '-901', '1', '0');
INSERT INTO `teleport` VALUES ('TI', '77714', '-84318', '244579', '-3730', '1', '0');
INSERT INTO `teleport` VALUES ('Elven Village', '77715', '46934', '51467', '-2977', '1', '0');
INSERT INTO `teleport` VALUES ('Dark Elven Village', '77716', '9745', '15606', '-4574', '1', '0');
INSERT INTO `teleport` VALUES ('Town of Gludio', '77717', '-12672', '122776', '-3116', '1000', '0');
INSERT INTO `teleport` VALUES ('Dion', '77718', '15670', '142983', '-2705', '1000', '0');
INSERT INTO `teleport` VALUES ('Town of Giran', '77719', '83400', '147943', '-3404', '1000', '0');
INSERT INTO `teleport` VALUES ('Oren Town', '77720', '82956', '53162', '-1495', '1000', '0');
INSERT INTO `teleport` VALUES ('Hunter Village', '77721', '116819', '76994', '-2714', '1000', '0');
INSERT INTO `teleport` VALUES ('Aden Town', '77722', '146331', '25762', '-2018', '1000', '0');
INSERT INTO `teleport` VALUES ('Goddard', '77723', '147928', '-55273', '-2734', '1000', '0');
INSERT INTO `teleport` VALUES ('Rune', '77724', '43799', '-47727', '-798', '1000', '0');
INSERT INTO `teleport` VALUES ('Schuttgart', '77725', '87386', '-143246', '-1293', '1000', '0');
INSERT INTO `teleport` VALUES ('Heine', '77726', '111409', '219364', '-3545', '1000', '0');
INSERT INTO `teleport` VALUES ('Giran Harbor', '77727', '47942', '186764', '-3485', '1000', '0');
INSERT INTO `teleport` VALUES ('Orc village', '77728', '-44836', '-112524', '-235', '1000', '0');
INSERT INTO `teleport` VALUES ('Dwarven village', '77729', '115113', '-178212', '-901', '1000', '0');
INSERT INTO `teleport` VALUES ('TI', '77730', '-84318', '244579', '-3730', '1000', '0');
INSERT INTO `teleport` VALUES ('Elven Village', '77731', '46934', '51467', '-2977', '1000', '0');
INSERT INTO `teleport` VALUES ('Dark Elven Village', '77732', '9745', '15606', '-4574', '1000', '0');
INSERT INTO `teleport` VALUES ('Necropolis of Sacrifice', '77733', '-41127', '205913', '-3358', '1', '0');
INSERT INTO `teleport` VALUES ('Heretics Catacomb', '77734', '39271', '144261', '-3653', '1', '0');
INSERT INTO `teleport` VALUES ('Pilgrims Necropolis', '77735', '45583', '126972', '-3685', '1', '0');
INSERT INTO `teleport` VALUES ('Catacomb of the Branded', '77736', '43131', '170643', '-3252', '1', '0');
INSERT INTO `teleport` VALUES ('Worshipers Necropolis', '77737', '107506', '174339', '-3711', '1', '0');
INSERT INTO `teleport` VALUES ('Catacomb of the Apostate', '77738', '73972', '78721', '-3423', '1', '0');
INSERT INTO `teleport` VALUES ('Martyrs Necropolis', '77739', '114581', '132478', '-3102', '1', '0');
INSERT INTO `teleport` VALUES ('Catacomb of the Witch', '77740', '136692', '80000', '-3701', '1', '0');
INSERT INTO `teleport` VALUES ('Ascetics Necropolis', '77741', '-55355', '78787', '-3012', '1', '0');
INSERT INTO `teleport` VALUES ('Disciples Necropolis', '77742', '168586', '-17930', '-3172', '1', '0');
INSERT INTO `teleport` VALUES ('Saints Necropolis', '77743', '79376', '208901', '-3710', '1', '0');
INSERT INTO `teleport` VALUES ('Catacomb of the Dark Omens', '77744', '-22571', '13826', '-3173', '1', '0');
INSERT INTO `teleport` VALUES ('Catacomb of the Forbidden Path', '77745', '110849', '84230', '-4839', '1', '0');
INSERT INTO `teleport` VALUES ('Necropolis of Sacrifice', '77746', '-41127', '205913', '-3358', '1000', '0');
INSERT INTO `teleport` VALUES ('Heretics Catacomb', '77747', '39271', '144261', '-3653', '1000', '0');
INSERT INTO `teleport` VALUES ('Pilgrims Necropolis', '77748', '45583', '126972', '-3685', '1000', '0');
INSERT INTO `teleport` VALUES ('Catacomb of the Branded', '77749', '43131', '170643', '-3252', '1000', '0');
INSERT INTO `teleport` VALUES ('Worshipers Necropolis', '77750', '107506', '174339', '-3711', '1000', '0');
INSERT INTO `teleport` VALUES ('Catacomb of the Apostate', '77751', '73972', '78721', '-3423', '1000', '0');
INSERT INTO `teleport` VALUES ('Martyrs Necropolis', '77752', '114581', '132478', '-3102', '1000', '0');
INSERT INTO `teleport` VALUES ('Catacomb of the Witch', '77753', '136692', '80000', '-3701', '1000', '0');
INSERT INTO `teleport` VALUES ('Ascetics Necropolis', '77754', '-55355', '78787', '-3012', '1000', '0');
INSERT INTO `teleport` VALUES ('Disciples Necropolis', '77755', '168586', '-17930', '-3172', '1000', '0');
INSERT INTO `teleport` VALUES ('Saints Necropolis', '77756', '79376', '208901', '-3710', '1000', '0');
INSERT INTO `teleport` VALUES ('Catacomb of the Dark Omens', '77757', '-22571', '13826', '-3173', '1000', '0');
INSERT INTO `teleport` VALUES ('Catacomb of the Forbidden Path', '77758', '110849', '84230', '-4839', '1000', '0');
INSERT INTO `teleport` VALUES ('Execution Grounds', '77759', '50568', '152408', '-2656', '10000', '0');
INSERT INTO `teleport` VALUES ('Partisans Hideaway', '77760', '50081', '116859', '-2176', '10000', '0');
INSERT INTO `teleport` VALUES ('Cruma Marshlands', '77761', '5106', '126916', '-3664', '10000', '0');
INSERT INTO `teleport` VALUES ('Cruma Tower', '77762', '17225', '114173', '-3440', '10000', '0');
INSERT INTO `teleport` VALUES ('Mandragora Farm', '77763', '38291', '148029', '-3696', '10000', '0');
INSERT INTO `teleport` VALUES ('Town of Dion', '77764', '16856', '144673', '-3000', '10000', '0');
INSERT INTO `teleport` VALUES ('Floran Village', '77765', '17308', '170368', '-3495', '10000', '0');
INSERT INTO `teleport` VALUES ('Dion Castle', '77766', '22310', '155917', '-2952', '10000', '0');
INSERT INTO `teleport` VALUES ('Tanor Canyon', '77767', '59170', '164817', '-2856', '10000', '0');
INSERT INTO `teleport` VALUES ('Bee Hive', '77768', '22944', '182122', '-2640', '10000', '0');
INSERT INTO `teleport` VALUES ('Dion Hills', '77769', '29928', '151415', '2392', '10000', '0');
INSERT INTO `teleport` VALUES ('Floran Agricultural Area', '77770', '10610', '156322', '-2472', '10000', '0');
INSERT INTO `teleport` VALUES ('Plains of Dion', '77771', '630', '179184', '-3720', '10000', '0');
INSERT INTO `teleport` VALUES ('Fortress of Resistance', '77772', '43962', '108861', '-2032', '10000', '0');
INSERT INTO `teleport` VALUES ('Hardins Academy', '77773', '105918', '109759', '-3170', '10000', '0');
INSERT INTO `teleport` VALUES ('Dragon Valley', '77774', '79745', '115299', '-3720', '10000', '0');
INSERT INTO `teleport` VALUES ('Antharas Lair ', '77775', '131557', '114509', '-3712', '10000', '0');
INSERT INTO `teleport` VALUES ('Antharas Nest', '77776', '177160', '114922', '-7704', '10000', '0');
INSERT INTO `teleport` VALUES ('Death Pass', '77777', '67933', '117045', '-3544', '10000', '0');
INSERT INTO `teleport` VALUES ('Pirate Tunnel', '77778', '41528', '198358', '-4648', '10000', '0');
INSERT INTO `teleport` VALUES ('Devils Isle', '77779', '43408', '206881', '-3752', '10000', '0');
INSERT INTO `teleport` VALUES ('Giran Harbor', '77780', '47938', '186864', '-3420', '10000', '0');
INSERT INTO `teleport` VALUES ('Giran Castle Town', '77781', '83475', '147966', '-3404', '10000', '0');
INSERT INTO `teleport` VALUES ('Giran Arena', '77782', '73579', '142709', '-3768', '10000', '0');
INSERT INTO `teleport` VALUES ('Giran Castle', '77783', '112077', '144869', '-2824', '10000', '0');
INSERT INTO `teleport` VALUES ('Brekas Stronghold', '77784', '85546', '131328', '-3672', '10000', '0');
INSERT INTO `teleport` VALUES ('Gorgon Flower Garden', '77785', '113553', '134813', '-3540', '10000', '0');
INSERT INTO `teleport` VALUES ('Ruins of Despair', '77786', '-19120', '136816', '-3762', '10000', '0');
INSERT INTO `teleport` VALUES ('Ruins of Agony', '77787', '-42628', '119766', '-3528', '10000', '0');
INSERT INTO `teleport` VALUES ('Wasteland', '77788', '-22726', '190368', '-4304', '10000', '0');
INSERT INTO `teleport` VALUES ('The Ant Nest', '77789', '-9959', '176184', '-4160', '10000', '0');
INSERT INTO `teleport` VALUES ('Gludin Village', '77790', '-80684', '149770', '-3043', '10000', '0');
INSERT INTO `teleport` VALUES ('Gludin Harbor', '77791', '-91101', '150344', '-3624', '10000', '0');
INSERT INTO `teleport` VALUES ('Town of Gludio', '77792', '-12787', '122779', '-3114', '10000', '0');
INSERT INTO `teleport` VALUES ('Abandoned Camp ', '77793', '-49853', '147089', '-2784', '10000', '0');
INSERT INTO `teleport` VALUES ('Orc Barracks', '77794', '-89763', '105359', '-3576', '10000', '0');
INSERT INTO `teleport` VALUES ('Forgotten Temple', '77795', '-53001', '191425', '-3568', '10000', '0');
INSERT INTO `teleport` VALUES ('Fellmere Lake', '77796', '-57798', '127629', '-2928', '10000', '0');
INSERT INTO `teleport` VALUES ('Cruma Tower Entrance', '77968', '17192', '114178', '-3439', '10000', '0');
INSERT INTO `teleport` VALUES ('Cruma Tower 1st Floor', '77969', '17724', '114004', '-11672', '10000', '0');
INSERT INTO `teleport` VALUES ('Cruma Tower 2nd Floor', '77970', '17730', '108301', '-9057', '10000', '0');
INSERT INTO `teleport` VALUES ('Cruma Tower 3rd Floor', '77971', '11719', '115430', '-6582', '10000', '0');
INSERT INTO `teleport` VALUES ('Ivory Tower (Lobby)', '77972', '85332', '16186', '-3673', '10000', '0');
INSERT INTO `teleport` VALUES ('Ivory Tower (Shopping)', '77973', '85532', '16192', '-4273', '10000', '0');
INSERT INTO `teleport` VALUES ('Ivory Tower (1st Floor)', '77974', '85532', '16186', '-2803', '10000', '0');
INSERT INTO `teleport` VALUES ('Ivory Tower (2nd Floor)', '77975', '85532', '16186', '-2287', '10000', '0');
INSERT INTO `teleport` VALUES ('Ivory Tower (3rd Floor)', '77976', '85532', '16186', '-1770', '10000', '0');
INSERT INTO `teleport` VALUES ('Ivory Tower (4th Floor)', '77977', '85532', '16186', '-1254', '10000', '0');
INSERT INTO `teleport` VALUES ('Northern Waterfall', '77978', '70833', '6426', '-3639', '10000', '0');
INSERT INTO `teleport` VALUES ('ToI Entrance', '77979', '121685', '15749', '-3852', '10000', '0');
INSERT INTO `teleport` VALUES ('ToI 2 Floor', '77980', '114665', '12697', '-3609', '10000', '0');
INSERT INTO `teleport` VALUES ('ToI 3 Floor', '77981', '111249', '16031', '-2127', '10000', '0');
INSERT INTO `teleport` VALUES ('ToI 4 Floor', '77982', '114605', '19371', '-645', '10000', '0');
INSERT INTO `teleport` VALUES ('ToI 5 Floor', '77983', '117996', '16103', '843', '10000', '0');
INSERT INTO `teleport` VALUES ('ToI 6 Floor', '77984', '114743', '19707', '1947', '10000', '0');
INSERT INTO `teleport` VALUES ('ToI 7 Floor', '77985', '114552', '12354', '2957', '10000', '0');
INSERT INTO `teleport` VALUES ('ToI 8 Floor', '77986', '110963', '16147', '3967', '10000', '0');
INSERT INTO `teleport` VALUES ('ToI 9 Floor', '77987', '117356', '18462', '4977', '10000', '0');
INSERT INTO `teleport` VALUES ('ToI 10 Floor', '77988', '118250', '15858', '5897', '10000', '0');
INSERT INTO `teleport` VALUES ('ToI 11 Floor', '77989', '115824', '17242', '6760', '10000', '0');
INSERT INTO `teleport` VALUES ('ToI 12 Floor', '77990', '113288', '14692', '7997', '10000', '0');
INSERT INTO `teleport` VALUES ('ToI 13 Floor', '77991', '115322', '16756', '9007', '10000', '0');
INSERT INTO `teleport` VALUES ('ToI 14 Floor', '77992', '112787', '14158', '10077', '10000', '0');
INSERT INTO `teleport` VALUES ('ToI Baiums Lair', '77993', '113099', '14500', '10077', '10000', '0');
INSERT INTO `teleport` VALUES ('Gludin Arena', '77797', '-87328', '142266', '-3640', '10000', '0');
INSERT INTO `teleport` VALUES ('Gludio Castle', '77798', '-18341', '113946', '-1268', '10000', '0');
INSERT INTO `teleport` VALUES ('Windy Hill', '77799', '-88539', '83389', '-2864', '10000', '0');
INSERT INTO `teleport` VALUES ('Red Rock Ridge', '77800', '-44829', '188171', '-3256', '10000', '0');
INSERT INTO `teleport` VALUES ('Langk Lizardmen Dwellings', '77801', '-44763', '203497', '-3592', '10000', '0');
INSERT INTO `teleport` VALUES ('Maille Lizardmen Barracks', '77802', '-25283', '106820', '-3416', '10000', '0');
INSERT INTO `teleport` VALUES ('Talking Island', '77803', '-84141', '244623', '-3729', '10000', '0');
INSERT INTO `teleport` VALUES ('Talking Island Village', '77804', '-84141', '244623', '-3729', '10000', '0');
INSERT INTO `teleport` VALUES ('Cedrics Training Hall', '77805', '-72674', '256819', '-3112', '10000', '0');
INSERT INTO `teleport` VALUES ('Einhovants School of Magic', '77806', '-89041', '248907', '-3568', '10000', '0');
INSERT INTO `teleport` VALUES ('Obelisk of Victory', '77807', '-99586', '237637', '-3568', '10000', '0');
INSERT INTO `teleport` VALUES ('Elven Ruins', '77808', '-112367', '234703', '-3688', '10000', '0');
INSERT INTO `teleport` VALUES ('Talking Island Harbor', '77809', '-96811', '259153', '-3616', '10000', '0');
INSERT INTO `teleport` VALUES ('Talking Island, Western Territory', '77810', '-104344', '226217', '-3616', '10000', '0');
INSERT INTO `teleport` VALUES ('Talking Island, Eastern Territory', '77811', '-95336', '240478', '-3264', '10000', '0');
INSERT INTO `teleport` VALUES ('Fellmere Harvesting Grounds', '77812', '-63736', '101522', '-3552', '10000', '0');
INSERT INTO `teleport` VALUES ('Windmill Hill', '77813', '-72417', '173629', '-3648', '10000', '0');
INSERT INTO `teleport` VALUES ('Ruins of Agony Bend', '77814', '-50174', '129303', '-2912', '10000', '0');
INSERT INTO `teleport` VALUES ('Evil Hunting Grounds', '77815', '-6989', '109503', '-3040', '10000', '0');
INSERT INTO `teleport` VALUES ('Entrance to the Ruins of Despair', '77816', '-36652', '135591', '-3160', '10000', '0');
INSERT INTO `teleport` VALUES ('Windawood Manor', '77817', '-24794', '156502', '-2880', '10000', '0');
INSERT INTO `teleport` VALUES ('Ol Mahum Checkpoint', '77818', '-6661', '201880', '-3632', '10000', '0');
INSERT INTO `teleport` VALUES ('Ant Incubator', '77819', '-26489', '195307', '-3928', '10000', '0');
INSERT INTO `teleport` VALUES ('Singing Waterfall', '77820', '-111728', '244330', '-3448', '10000', '0');
INSERT INTO `teleport` VALUES ('The Neutral Zone', '77821', '-10612', '75881', '-3592', '10000', '0');
INSERT INTO `teleport` VALUES ('Elven Forest', '77822', '21362', '51122', '-3688', '10000', '0');
INSERT INTO `teleport` VALUES ('Shadow of the Mother Tree', '77823', '50953', '42105', '-3480', '10000', '0');
INSERT INTO `teleport` VALUES ('Elven Village', '77824', '46951', '51550', '-2976', '10000', '0');
INSERT INTO `teleport` VALUES ('Elven Fortress', '77825', '29294', '74968', '-3776', '10000', '0');
INSERT INTO `teleport` VALUES ('Iris Lake', '77826', '51469', '82600', '-3312', '10000', '0');
INSERT INTO `teleport` VALUES ('The Dark Forest', '77827', '-22224', '14168', '-3232', '10000', '0');
INSERT INTO `teleport` VALUES ('The Shilen Temple', '77828', '25934', '11037', '-3720', '10000', '0');
INSERT INTO `teleport` VALUES ('Dark Elf Village', '77829', '9709', '15566', '-4500', '10000', '0');
INSERT INTO `teleport` VALUES ('School of Dark Arts', '77830', '-47543', '58478', '-3336', '10000', '0');
INSERT INTO `teleport` VALUES ('Swampland', '77831', '-19048', '48198', '-3616', '10000', '0');
INSERT INTO `teleport` VALUES ('Altar of Rites', '77832', '-44566', '77508', '-3736', '10000', '0');
INSERT INTO `teleport` VALUES ('Sea of Spores', '77833', '64328', '26803', '-3768', '10000', '0');
INSERT INTO `teleport` VALUES ('Bandit Stronghold', '77834', '87091', '-20354', '-2072', '10000', '0');
INSERT INTO `teleport` VALUES ('Ivory Tower', '77835', '85391', '16228', '-3640', '10000', '0');
INSERT INTO `teleport` VALUES ('Town of Oren', '77836', '82971', '53207', '-1470', '10000', '0');
INSERT INTO `teleport` VALUES ('Oren Castle', '77837', '78189', '36936', '-2560', '10000', '0');
INSERT INTO `teleport` VALUES ('Plains of the Lizardmen', '77838', '87252', '85514', '-3103', '10000', '0');
INSERT INTO `teleport` VALUES ('Skyshadow Meadow', '77839', '89914', '46276', '-3616', '10000', '0');
INSERT INTO `teleport` VALUES ('Shilens Garden', '77840', '23863', '11068', '-3720', '10000', '0');
INSERT INTO `teleport` VALUES ('Black Rock Hill', '77841', '-29466', '66678', '-3496', '10000', '0');
INSERT INTO `teleport` VALUES ('Spider Nest', '77842', '-61095', '75104', '-3383', '10000', '0');
INSERT INTO `teleport` VALUES ('Timak Outpost ', '77843', '67097', '68815', '-3648', '10000', '0');
INSERT INTO `teleport` VALUES ('Ivory Tower Crater', '77844', '85391', '16228', '-3640', '10000', '0');
INSERT INTO `teleport` VALUES ('Forest of Evil', '77845', '93218', '16969', '-3904', '10000', '0');
INSERT INTO `teleport` VALUES ('Outlaw Forest', '77846', '91539', '-12204', '-2440', '10000', '0');
INSERT INTO `teleport` VALUES ('Misty Mountains', '77847', '61740', '94946', '-1488', '10000', '0');
INSERT INTO `teleport` VALUES ('Starlight Waterfall', '77848', '58502', '53453', '-3624', '10000', '0');
INSERT INTO `teleport` VALUES ('Undine Waterfall', '77849', '-7233', '57006', '-3520', '10000', '0');
INSERT INTO `teleport` VALUES ('The Gods Falls', '77850', '70456', '6591', '-3632', '10000', '0');
INSERT INTO `teleport` VALUES ('Tower of Insolence', '77851', '114649', '11115', '-5100', '10000', '0');
INSERT INTO `teleport` VALUES ('Blazing Swamp', '77852', '159455', '-12931', '-2872', '10000', '0');
INSERT INTO `teleport` VALUES ('Devastated Castle', '77853', '178358', '-14192', '-2256', '10000', '0');
INSERT INTO `teleport` VALUES ('The Forbidden Gateway', '77854', '185319', '20218', '-3264', '10000', '0');
INSERT INTO `teleport` VALUES ('The Giants Cave', '77855', '181737', '46469', '-4276', '10000', '0');
INSERT INTO `teleport` VALUES ('The Enchanted Valley', '77856', '124904', '61992', '-3973', '10000', '0');
INSERT INTO `teleport` VALUES ('The Cemetery', '77857', '167047', '20304', '-3328', '10000', '0');
INSERT INTO `teleport` VALUES ('The Forest of Mirrors', '77858', '142065', '81300', '-3000', '10000', '0');
INSERT INTO `teleport` VALUES ('Anghel Waterfall', '77859', '166304', '91741', '-3168', '10000', '0');
INSERT INTO `teleport` VALUES ('Town of Aden', '77860', '146783', '25808', '-2000', '10000', '0');
INSERT INTO `teleport` VALUES ('Hunters Village', '77861', '117088', '76931', '-2670', '10000', '0');
INSERT INTO `teleport` VALUES ('Eastern Border Outpost', '77862', '158141', '-24543', '-1288', '10000', '0');
INSERT INTO `teleport` VALUES ('Coliseum', '77863', '146440', '46723', '-3400', '10000', '0');
INSERT INTO `teleport` VALUES ('Narsell Lake', '77864', '146440', '46723', '-3400', '10000', '0');
INSERT INTO `teleport` VALUES ('Aden Castle', '77865', '147461', '9898', '-592', '10000', '0');
INSERT INTO `teleport` VALUES ('Ancient Battleground', '77866', '106517', '-2871', '-3454', '10000', '0');
INSERT INTO `teleport` VALUES ('Forsaken Plains ', '77867', '167285', '37109', '-4008', '10000', '0');
INSERT INTO `teleport` VALUES ('Silent Valley', '77868', '170838', '55776', '-5280', '10000', '0');
INSERT INTO `teleport` VALUES ('Hunters Valley', '77869', '114306', '86573', '-3112', '10000', '0');
INSERT INTO `teleport` VALUES ('Plains of Glory', '77870', '135580', '19467', '-3424', '10000', '0');
INSERT INTO `teleport` VALUES ('Fields of Massacre', '77871', '183543', '-14974', '-2768', '10000', '0');
INSERT INTO `teleport` VALUES ('War-Torn Plains', '77872', '156898', '11217', '-4032', '10000', '0');
INSERT INTO `teleport` VALUES ('Western Border Outpost', '77873', '112405', '-16607', '-1864', '10000', '0');
INSERT INTO `teleport` VALUES ('Field of Silence', '77874', '91088', '182384', '-3192', '10000', '0');
INSERT INTO `teleport` VALUES ('Field of Whispers', '77875', '74592', '207656', '-3032', '10000', '0');
INSERT INTO `teleport` VALUES ('Garden of Eva', '77876', '84413', '234334', '-3656', '10000', '0');
INSERT INTO `teleport` VALUES ('Alligator Island', '77877', '115583', '192261', '-3488', '10000', '0');
INSERT INTO `teleport` VALUES ('Heine', '77878', '111455', '219400', '-3546', '10000', '0');
INSERT INTO `teleport` VALUES ('Innadril Castle', '77879', '115988', '246899', '-976', '10000', '0');
INSERT INTO `teleport` VALUES ('Alligator Beach', '77880', '116267', '201177', '-3432', '10000', '0');
INSERT INTO `teleport` VALUES ('Dion Arena', '77881', '12443', '183467', '-3560', '10000', '0');
INSERT INTO `teleport` VALUES ('The Paagrio Temple', '77882', '-55699', '-114967', '2528', '10000', '0');
INSERT INTO `teleport` VALUES ('Orc Village', '77883', '-45158', '-112583', '-236', '10000', '0');
INSERT INTO `teleport` VALUES ('The Immortal Plateau', '77884', '-8830', '-119289', '424', '10000', '0');
INSERT INTO `teleport` VALUES ('Cave of Trials', '77885', '9340', '-112509', '-2536', '10000', '0');
INSERT INTO `teleport` VALUES ('Frozen Waterfalls', '77886', '11810', '-139730', '-1872', '10000', '0');
INSERT INTO `teleport` VALUES ('Valley of Heroes', '77887', '-39347', '-107274', '-2072', '10000', '0');
INSERT INTO `teleport` VALUES ('Immortal Plateau, Northern Region', '77888', '-9465', '-134046', '-2228', '10000', '0');
INSERT INTO `teleport` VALUES ('Immortal Plateau, Southern Region', '77889', '-4190', '-80040', '-2696', '10000', '0');
INSERT INTO `teleport` VALUES ('Strip Mine', '77890', '106561', '-173949', '-400', '10000', '0');
INSERT INTO `teleport` VALUES ('Dwarven Village', '77891', '115120', '-178224', '-917', '10000', '0');
INSERT INTO `teleport` VALUES ('Spine Mountains', '77892', '147493', '-200840', '192', '10000', '0');
INSERT INTO `teleport` VALUES ('Abandoned Coal Mines', '77893', '139714', '-177456', '-1536', '10000', '0');
INSERT INTO `teleport` VALUES ('Mithril Mines', '77894', '171946', '-173352', '3440', '10000', '0');
INSERT INTO `teleport` VALUES ('Frozen Valley', '77895', '112971', '-174924', '-608', '10000', '0');
INSERT INTO `teleport` VALUES ('Western Mining Zone', '77896', '128527', '-204036', '-3408', '10000', '0');
INSERT INTO `teleport` VALUES ('Eastern Mining Zone', '77897', '175836', '-205837', '-3384', '10000', '0');
INSERT INTO `teleport` VALUES ('Mining Zone Passage', '77898', '113826', '-171150', '-160', '10000', '0');
INSERT INTO `teleport` VALUES ('Plunderous Plains', '77899', '115298', '-160886', '-1296', '10000', '0');
INSERT INTO `teleport` VALUES ('Frozen Labyrinth', '77900', '123037', '-118112', '-2576', '10000', '0');
INSERT INTO `teleport` VALUES ('The Ice Queens Castle', '77901', '102728', '-126242', '-2840', '10000', '0');
INSERT INTO `teleport` VALUES ('Pavel Ruins', '77902', '91129', '-123951', '-4128', '10000', '0');
INSERT INTO `teleport` VALUES ('Carons Dungeon', '77903', '76021', '-110477', '-1704', '10000', '0');
INSERT INTO `teleport` VALUES ('Den of Evil', '77904', '68693', '-110438', '-1946', '10000', '0');
INSERT INTO `teleport` VALUES ('Crypts of Disgrace', '77905', '47692', '-115745', '-3744', '10000', '0');
INSERT INTO `teleport` VALUES ('Valley of the Lords', '77906', '32173', '-122954', '-792', '10000', '0');
INSERT INTO `teleport` VALUES ('Schuttgart Castle', '77907', '77630', '-150885', '368', '10000', '0');
INSERT INTO `teleport` VALUES ('Town of Schuttgart', '77908', '88249', '-142713', '-1336', '10000', '0');
INSERT INTO `teleport` VALUES ('Archaic Laboratory', '77909', '90418', '-107317', '-3328', '10000', '0');
INSERT INTO `teleport` VALUES ('Frost Lake', '77910', '108251', '-120886', '-3744', '10000', '0');
INSERT INTO `teleport` VALUES ('Sky Wagon Relic', '77911', '121618', '-141554', '-1496', '10000', '0');
INSERT INTO `teleport` VALUES ('Necropolis of Sacrifice', '77912', '-41184', '206752', '-3357', '10000', '0');
INSERT INTO `teleport` VALUES ('Necropolis of Devotion', '77913', '-56064', '78720', '-3011', '10000', '0');
INSERT INTO `teleport` VALUES ('The Patriots Necropolis', '77914', '-25472', '77728', '-3446', '10000', '0');
INSERT INTO `teleport` VALUES ('Catacomb of Dark Omens', '77915', '-22480', '13872', '-3174', '10000', '0');
INSERT INTO `teleport` VALUES ('Catacomb of the Branded', '77916', '43200', '170688', '-3251', '10000', '0');
INSERT INTO `teleport` VALUES ('Catacomb of the Heretic', '77917', '39232', '143568', '-3651', '10000', '0');
INSERT INTO `teleport` VALUES ('The Pilgrims Necropolis', '77918', '45600', '126944', '-3686', '10000', '0');
INSERT INTO `teleport` VALUES ('The Saints Necropolis', '77919', '79296', '209584', '-3709', '10000', '0');
INSERT INTO `teleport` VALUES ('Necropolis of Worship', '77920', '107514', '174329', '-3704', '10000', '0');
INSERT INTO `teleport` VALUES ('Necropolis of Martyrdom', '77921', '114496', '132416', '-3101', '10000', '0');
INSERT INTO `teleport` VALUES ('Catacomb of the Apostate', '77922', '74672', '78032', '-3398', '10000', '0');
INSERT INTO `teleport` VALUES ('Catacomb of the Forbidden Path', '77923', '110912', '84912', '-4816', '10000', '0');
INSERT INTO `teleport` VALUES ('Catacomb of the Witch', '77924', '136672', '79328', '-3702', '10000', '0');
INSERT INTO `teleport` VALUES ('The Disciples Necropolis', '77925', '168560', '-17968', '-3174', '10000', '0');
INSERT INTO `teleport` VALUES ('Oracle of Dawn', '77926', '-79184', '111952', '-4897', '10000', '0');
INSERT INTO `teleport` VALUES ('Oracle of Dusk', '77927', '-80208', '87120', '-5153', '10000', '0');
INSERT INTO `teleport` VALUES ('Olympiad Stadium', '77928', '-21453', '-21058', '-3024', '10000', '0');
INSERT INTO `teleport` VALUES ('Town  of Goddard', '77929', '148024', '-55281', '-2728', '10000', '0');
INSERT INTO `teleport` VALUES ('Goddard Castle', '77930', '147450', '-47331', '-496', '10000', '0');
INSERT INTO `teleport` VALUES ('Garden of Beasts', '77931', '132997', '-60608', '-2960', '10000', '0');
INSERT INTO `teleport` VALUES ('Hot Springs', '77932', '151778', '-106829', '-2888', '10000', '0');
INSERT INTO `teleport` VALUES ('Rainbow Springs Chateau', '77933', '139997', '-124860', '-1896', '10000', '0');
INSERT INTO `teleport` VALUES ('Forge of the Gods', '77934', '168902', '-116703', '-2417', '10000', '0');
INSERT INTO `teleport` VALUES ('Hall of Flames', '77935', '189964', '-116820', '-1624', '10000', '0');
INSERT INTO `teleport` VALUES ('Valakas Lair', '77936', '215378', '-116635', '-1608', '10000', '0');
INSERT INTO `teleport` VALUES ('Ketra Orc Outpost', '77937', '146990', '-67128', '-3640', '10000', '0');
INSERT INTO `teleport` VALUES ('Ketra Orc Village', '77938', '149548', '-82014', '-5592', '10000', '0');
INSERT INTO `teleport` VALUES ('Imperial Tomb', '77939', '186699', '-75915', '-2826', '10000', '0');
INSERT INTO `teleport` VALUES ('Pilgrims Temple', '77940', '168982', '-86455', '-3007', '10000', '0');
INSERT INTO `teleport` VALUES ('Wall of Argos', '77941', '165054', '-47861', '-3560', '10000', '0');
INSERT INTO `teleport` VALUES ('Shrine of Loyalty', '77942', '190112', '-61776', '-2944', '10000', '0');
INSERT INTO `teleport` VALUES ('Varka Silenos Barracks', '77943', '125740', '-40864', '-3736', '10000', '0');
INSERT INTO `teleport` VALUES ('Varka Silenos Village', '77944', '108155', '-53670', '-2472', '10000', '0');
INSERT INTO `teleport` VALUES ('Four Sepulchers', '77945', '178127', '-84435', '-7215', '10000', '0');
INSERT INTO `teleport` VALUES ('Devils Pass', '77946', '102621', '-60798', '-2144', '10000', '0');
INSERT INTO `teleport` VALUES ('The Last Imperial Tomb', '77947', '174141', '-88685', '-5112', '10000', '0');
INSERT INTO `teleport` VALUES ('Rune Township', '77948', '43835', '-47749', '-792', '10000', '0');
INSERT INTO `teleport` VALUES ('Rune Castle', '77949', '14659', '-49230', '-160', '10000', '0');
INSERT INTO `teleport` VALUES ('Rune Harbor', '77950', '36839', '-38435', '-3640', '10000', '0');
INSERT INTO `teleport` VALUES ('Windtail Waterfall', '77951', '40723', '-94881', '-2096', '10000', '0');
INSERT INTO `teleport` VALUES ('Beast Farm', '77952', '43805', '-88010', '-2780', '10000', '0');
INSERT INTO `teleport` VALUES ('Wild Beast Reserve', '77953', '55133', '-93217', '-1360', '10000', '0');
INSERT INTO `teleport` VALUES ('Valley of Saints', '77954', '79981', '-82301', '-3680', '10000', '0');
INSERT INTO `teleport` VALUES ('Forest of the Dead', '77955', '52107', '-54328', '-3158', '10000', '0');
INSERT INTO `teleport` VALUES ('Cursed Village', '77956', '57670', '-41672', '-3154', '10000', '0');
INSERT INTO `teleport` VALUES ('Fortress of the Dead', '77957', '57966', '-28378', '584', '10000', '0');
INSERT INTO `teleport` VALUES ('Swamp of Screams', '77958', '69340', '-50203', '-3314', '10000', '0');
INSERT INTO `teleport` VALUES ('Monastery of Silence', '77959', '125480', '-75834', '-2945', '10000', '0');
INSERT INTO `teleport` VALUES ('The Pagan Temple', '77960', '35630', '-49748', '-760', '10000', '0');
INSERT INTO `teleport` VALUES ('Stakato Nest', '77961', '90134', '-45130', '-2168', '10000', '0');
INSERT INTO `teleport` VALUES ('Tour Boat Dock', '77962', '111418', '225960', '-3624', '10000', '0');
INSERT INTO `teleport` VALUES ('Ice Merchant Cabin', '77963', '113750', '-109163', '-832', '10000', '0');
INSERT INTO `teleport` VALUES ('Brigand Stronghold', '77964', '126272', '-159336', '-1232', '10000', '0');
INSERT INTO `teleport` VALUES ('Primeval Isle', '77965', '8480', '-14624', '-3693', '10000', '0');
INSERT INTO `teleport` VALUES ('Primeval Isle Wharf', '77966', '10448', '-24960', '-3664', '10000', '0');
INSERT INTO `teleport` VALUES ('Anachrons Den', '77967', '26240', '-7840', '-1972', '10000', '0');
INSERT INTO `teleport` VALUES ('Devastated Castle Throne', '50193', '178372', '-17626', '-2193', '15000', '0');
INSERT INTO `teleport` VALUES ('Bandit Stronghold', '50194', '82662', '-15977', '-1888', '15000', '0');
INSERT INTO `teleport` VALUES ('Hot Springs Arena', '50195', '152180', '-126093', '-2277', '15000', '0');
INSERT INTO `teleport` VALUES ('Four Sepulchers', '50196', '178293', '-83983', '-7204', '15000', '0');
INSERT INTO `teleport` VALUES ('Valley of Saints Grave', '50197', '80471', '-84022', '-3641', '15000', '0');
INSERT INTO `teleport` VALUES ('Valley of Saints Tomb', '50198', '91840', '-86269', '-2698', '15000', '0');
INSERT INTO `teleport` VALUES ('Garden of Eva (1st Floor)', '50206', '80301', '245596', '-8823', '15000', '0');
INSERT INTO `teleport` VALUES ('Garden of Eva (2nd Floor)', '50207', '80629', '246420', '-9326', '15000', '0');
INSERT INTO `teleport` VALUES ('Garden of Eva (3rd Floor)', '50208', '87778', '252520', '-9847', '15000', '0');
INSERT INTO `teleport` VALUES ('Garden of Eva (4th Floor)', '50209', '82717', '255604', '-10359', '15000', '0');
INSERT INTO `teleport` VALUES ('Garden of Eva (5th Floor)', '50210', '82158', '252376', '-10587', '15000', '0');
INSERT INTO `teleport` VALUES ('Giran Arena', '50211', '73890', '142656', '-3773', '15000', '0');
INSERT INTO `teleport` VALUES ('Queen Ant', '50218', '-21584', '180455', '-5834', '15000', '0');
INSERT INTO `teleport` VALUES ('Core', '50215', '17719', '110386', '-6655', '15000', '0');
INSERT INTO `teleport` VALUES ('Orfen', '50217', '55976', '17559', '-5512', '15000', '0');
INSERT INTO `teleport` VALUES ('Zaken', '55555', '55099', '219128', '-3225', '15000', '0');
INSERT INTO `teleport` VALUES ('Benom', '50214', '11882', '-49216', '-3003', '15000', '0');
INSERT INTO `teleport` VALUES ('Baium', '50213', '115213', '16623', '10085', '15000', '0');
INSERT INTO `teleport` VALUES ('Antharas', '50212', '179061', '114922', '-7708', '15000', '0');
INSERT INTO `teleport` VALUES ('Frintezza', '50216', '174253', '-86366', '-5108', '15000', '0');
INSERT INTO `teleport` VALUES ('Valakas', '50219', '208884', '-113705', '-251', '15000', '0');
--
-- NPCs By Smallz - Grand Olympiad Manager
-- 
INSERT INTO `npc_to_pc_polymorph` VALUES ('1', '31688', 'Grand Olympiad Manager', null, '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '6611', '6377', '6375', '6373', '6374', '6376', '6842', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
--
-- NPCs By Smallz - Symbol Maker
-- 
INSERT INTO `custom_npc` VALUES ('7', '7', 'Erato', '0', 'Symbol Maker', '0', 'NPC.a_traderC_Mhuman', '8.00', '23.00', '70', 'male', 'L2SymbolMaker', '40', '3862', '1493', '11.85', '2.78', '40', '43', '30', '21', '20', '10', '0', '0', '1314', '470', '780', '382', '278', '0', '333', '0', '0', '0', '55', '132', '', '0', '1', '0', 'LAST_HIT');
--
-- NPCs By Smallz - Top 10
-- 
INSERT INTO `custom_npc` VALUES ('13', '13', 'Alecto', '0', 'Top 10', '0', 'Monster3.Kight_of_Dawn', '8.00', '24.00', '70', 'male', 'L2Npc', '40', '3862', '1493', '11.85', '2.78', '40', '43', '30', '21', '20', '10', '0', '0', '1314', '470', '780', '382', '278', '0', '333', '6364', '6377', '0', '55', '132', '', '0', '1', '0', 'LAST_HIT');
--
-- NPCs By Smallz - Warehouse
-- 
INSERT INTO `custom_npc` VALUES ('6', '6', 'Deimos', '0', 'Warehouse', '0', 'NPC.a_temple_teacher_Mhuman', '8.00', '23.00', '70', 'male', 'L2Warehouse', '40', '3862', '1493', '11.85', '2.78', '40', '43', '30', '21', '20', '10', '0', '0', '1314', '470', '780', '382', '278', '0', '333', '0', '0', '0', '55', '132', '', '0', '1', '0', 'LAST_HIT');
--
-- NPCs By Smallz - Wedding
-- 
INSERT INTO `custom_npc` VALUES ('9', '9', 'Doris', '0', 'Wedding', '0', 'Monster3.Elite_Mage', '6.50', '21.96', '70', 'male', 'L2WeddingManager', '40', '3862', '1493', '11.85', '2.78', '40', '43', '30', '21', '20', '10', '0', '0', '1314', '470', '780', '382', '278', '0', '333', '8687', '0', '0', '88', '132', '', '0', '0', '0', 'LAST_HIT');
