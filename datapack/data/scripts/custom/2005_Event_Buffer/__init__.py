import sys
from com.l2jfrozen.gameserver.model.actor.instance import L2PcInstance
from java.util import Iterator
from com.l2jfrozen.gameserver.datatables import SkillTable
from com.l2jfrozen.util.database import L2DatabaseFactory
from com.l2jfrozen.gameserver.model.quest import State
from com.l2jfrozen.gameserver.model.quest import QuestState
from com.l2jfrozen.gameserver.model.quest.jython import QuestJython as JQuest

qn = "2005_Event_Buffer"

NPC=[17]
ADENA_ID=57
QuestId     = 2005
QuestName   = "Event_Buffer"
QuestDesc   = "custom"
InitialHtml = "1.htm"


print "                                                                               "
print "                            * Event Buffer                               [ Ok ]"
print "                                                                               "
print "==============================================================================="
print "                                                                               "

class Quest (JQuest) :

	def __init__(self,id,name,descr): JQuest.__init__(self,id,name,descr)


	def onEvent(self,event,st):
		htmltext = event
		count=st.getQuestItemsCount(ADENA_ID)
		if count < 0  or st.getPlayer().getLevel() < 1 :
			htmltext = "<html><head><body>Voce nao tem Adena,<br> Ou esta com level muito baixo. Tem que ter level 40 ou mais.</body></html>"
		else:
			st.takeItems(ADENA_ID,0)
			st.getPlayer().setTarget(st.getPlayer())
			
			if event == "1":
				st.takeItems(ADENA_ID,0)
				st.getPlayer().stopAllEffects()
				SkillTable.getInstance().getInfo(1035,4).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1040,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1036,2).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1389,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1243,6).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1045,6).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1068,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1086,2).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1077,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1242,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1240,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1268,4).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1204,2).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1363,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(271,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(275,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(274,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(272,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(264,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(267,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(269,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(268,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(304,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(349,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1323,1).getEffects(st.getPlayer(),st.getPlayer())
				return "1.htm"
				st.setState(COMPLETED)

			if event == "2": 
				st.takeItems(ADENA_ID,0)
				st.getPlayer().stopAllEffects()
				SkillTable.getInstance().getInfo(1035,4).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1040,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1036,2).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1243,6).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1045,6).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1068,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1388,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1062,2).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1086,2).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1077,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1242,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1240,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1268,4).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1087,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1204,2).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1363,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(271,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(275,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(274,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(272,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(264,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(267,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(266,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(269,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(268,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(304,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(349,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1323,1).getEffects(st.getPlayer(),st.getPlayer())
				return "1.htm"
				st.setState(COMPLETED)

			if event == "3":
				st.takeItems(ADENA_ID,0)
				st.getPlayer().stopAllEffects()
				SkillTable.getInstance().getInfo(1035,4).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1040,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1036,2).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1389,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1243,6).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1045,6).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1048,6).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1085,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1059,3).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1062,2).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1303,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1078,6).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1204,2).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1413,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(276,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(273,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(365,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(264,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(267,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(268,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(304,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(363,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(364,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(349,1).getEffects(st.getPlayer(),st.getPlayer())
				SkillTable.getInstance().getInfo(1323,1).getEffects(st.getPlayer(),st.getPlayer())
				return "1.htm"
				st.setState(COMPLETED)

			if event == "6":
				st.takeItems(ADENA_ID,0)
				return "1.htm"		
				st.setState(COMPLETED)

			#Wind Walk
			if event == "7":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4342,2).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Decrease Weight
			if event == "8":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4343,3).getEffects(st.getPlayer(),st.getPlayer())
				return "6.htm"		
				st.setState(COMPLETED)

			#Shield
			if event == "9":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4344,3).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Might
			if event == "10":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4345,3).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Mental Shield
			if event == "11":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4346,4).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Bless the Body
			if event == "12":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4347,6).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Bless the Soul
			if event == "13":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4348,6).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Magic Barrier
			if event == "14":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4349,2).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Resist Shock
			if event == "15":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4350,4).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Concentration
			if event == "16":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4351,6).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Berserker Spirit
			if event == "17":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4352,2).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Bless Shield
			if event == "18":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4353,6).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Vampiric Rage
			if event == "19":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4354,4).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Acumen
			if event == "20":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4355,3).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Empower
			if event == "21":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4356,3).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Haste
			if event == "22":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4357,2).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Guidance
			if event == "23":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4358,3).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Focus
			if event == "24":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4359,3).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			#Death Whisper
			if event == "25":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4360,3).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)

			if event == "26":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(271,1).getEffects(st.getPlayer(),st.getPlayer())
				return "4.htm"

			if event == "27":
				st.takeItems(ADENA_ID,0)	
				SkillTable.getInstance().getInfo(272,1).getEffects(st.getPlayer(),st.getPlayer())
				return "4.htm"

			if event == "28":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(273,1).getEffects(st.getPlayer(),st.getPlayer())
				return "4.htm"

			if event == "29":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(274,1).getEffects(st.getPlayer(),st.getPlayer())
				return "4.htm"

			if event == "30":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(275,1).getEffects(st.getPlayer(),st.getPlayer())
				return "4.htm"

			if event == "31":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(276,1).getEffects(st.getPlayer(),st.getPlayer())
				return "4.htm"

			if event == "32":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(277,1).getEffects(st.getPlayer(),st.getPlayer())
				return "4.htm"

			if event == "33":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(307,1).getEffects(st.getPlayer(),st.getPlayer())
				return "4.htm"

			if event == "34":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(309,1).getEffects(st.getPlayer(),st.getPlayer())
				return "4.htm"

			if event == "35":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(310,1).getEffects(st.getPlayer(),st.getPlayer())
				return "4.htm"

			if event == "36":
				st.takeItems(ADENA_ID,0)		
				SkillTable.getInstance().getInfo(311,1).getEffects(st.getPlayer(),st.getPlayer())
				return "4.htm"

			if event == "37":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(366,1).getEffects(st.getPlayer(),st.getPlayer())
				return "4.htm"

			if event == "38":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(365,1).getEffects(st.getPlayer(),st.getPlayer())
				return "4.htm"

			if event == "39":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(264,1).getEffects(st.getPlayer(),st.getPlayer())
				return "3.htm"

			if event == "40":
				st.takeItems(ADENA_ID,0)	
				SkillTable.getInstance().getInfo(265,1).getEffects(st.getPlayer(),st.getPlayer())
				return "3.htm"

			if event == "41":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(266,1).getEffects(st.getPlayer(),st.getPlayer())
				return "3.htm"

			if event == "42":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(267,1).getEffects(st.getPlayer(),st.getPlayer())
				return "3.htm"

			if event == "43":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(268,1).getEffects(st.getPlayer(),st.getPlayer())
				return "3.htm"

			if event == "44":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(269,1).getEffects(st.getPlayer(),st.getPlayer())
				return "3.htm"

			if event == "45":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(270,1).getEffects(st.getPlayer(),st.getPlayer())
				return "3.htm"

			if event == "46":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(304,1).getEffects(st.getPlayer(),st.getPlayer())
				return "3.htm"

			if event == "47":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(305,1).getEffects(st.getPlayer(),st.getPlayer())
				return "3.htm"

			if event == "48":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(306,1).getEffects(st.getPlayer(),st.getPlayer())
				return "3.htm"	

			if event == "49":
				st.takeItems(ADENA_ID,0)	
				SkillTable.getInstance().getInfo(308,1).getEffects(st.getPlayer(),st.getPlayer())
				return "3.htm"

			if event == "50":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(363,1).getEffects(st.getPlayer(),st.getPlayer())
				return "3.htm"

			if event == "51":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(364,1).getEffects(st.getPlayer(),st.getPlayer())
				return "3.htm"	

			if event == "52":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(349,1).getEffects(st.getPlayer(),st.getPlayer())
				return "3.htm"		
				st.setState(COMPLETED)
				
				
			#Chant of Battle
			if event == "53":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1007,3).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)
				
			#Chant of Shielding
			if event == "54":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1009,3).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)
				
			#Chant of Fire
			if event == "55":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1006,3).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)
				
			#Chant of Flame
			if event == "56":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1002,3).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)
				
			#Chant of life
			if event == "57":
				st.takeItems(ADENA_ID,0)
				st.getPlayer().useMagic(SkillTable.getInstance().getInfo(1229,18),False,False)
				return "5.htm"
				st.setState(COMPLETED)
				
			#Chant of Fury
			if event == "58":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1251,2).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)
				
			#Chant of Evasion
			if event == "59":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1252,3).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)
				
			#Chant of Rage
			if event == "60":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1253,3).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)
				
			#Chant of Revenge
			if event == "61":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1284,3).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)
				
			#Chant of Vampire
			if event == "62":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1310,4).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)
				
			#Chant of Eagle
			if event == "63":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1309,3).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)
				
			#Chant of Predator
			if event == "64":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1308,3).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)
			
			#Greater Might
			if event == "71":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1388,3).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"		
				st.setState(COMPLETED)
                        
                        #Noblesse Blessing
			if event == "70":
				st.takeItems(ADENA_ID,0)
				st.getPlayer().restoreCP()
				SkillTable.getInstance().getInfo(1323,1).getEffects(st.getPlayer(),st.getPlayer())
				return "1.htm"
				st.setState(COMPLETED)	
		        
                        #Invigor
			if event == "72":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1032,3).getEffects(st.getPlayer(),st.getPlayer())
				return "7.htm"
				st.setState(COMPLETED)		
                           
                        #Elemental Protection
			if event == "73":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1352,1).getEffects(st.getPlayer(),st.getPlayer())
				return "7.htm"
				st.setState(COMPLETED)	
                                              
                        #Divine Protection
			if event == "74":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1353,1).getEffects(st.getPlayer(),st.getPlayer())
				return "7.htm"
				st.setState(COMPLETED)	
                                                
                        #Arcane Protection
			if event == "75":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1354,1).getEffects(st.getPlayer(),st.getPlayer())
				return "7.htm"
				st.setState(COMPLETED)	
                                                
                        #Regeneration
			if event == "76":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1044,3).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"
				st.setState(COMPLETED)	
                                                
                        #Agility
			if event == "77":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1087,3).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"
				st.setState(COMPLETED)	
                                                
                        #Clarity
			if event == "78":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1397,3).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"
				st.setState(COMPLETED)	
                                                
                        #Advanced Block
			if event == "79":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1304,3).getEffects(st.getPlayer(),st.getPlayer())
				return "6.htm"
				st.setState(COMPLETED)	
                                                
                        #Kiss of Eva
			if event == "80":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1073,1).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"
				st.setState(COMPLETED)	
                                                
                        #Greater Shield
			if event == "81":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1389,3).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"
				st.setState(COMPLETED)	
                                               
                        #Wild Magic
			if event == "82":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1303,1).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"
				st.setState(COMPLETED)	
                                                
                        #Body of Avatar
			if event == "83":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1311,6).getEffects(st.getPlayer(),st.getPlayer())
				return "2.htm"
				st.setState(COMPLETED)	
                                                
                        #Resist Aqua
			if event == "84":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1182,3).getEffects(st.getPlayer(),st.getPlayer())
				return "7.htm"
				st.setState(COMPLETED)	
                                                
                        #Resist Fire
			if event == "85":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1191,3).getEffects(st.getPlayer(),st.getPlayer())
				return "7.htm"
				st.setState(COMPLETED)	
                                                
                        #Resist Wind
			if event == "86":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1189,3).getEffects(st.getPlayer(),st.getPlayer())
				return "7.htm"
				st.setState(COMPLETED)	
                                                
                        #Resist Poison
			if event == "87":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1033,3).getEffects(st.getPlayer(),st.getPlayer())
				return "7.htm"
				st.setState(COMPLETED)	
                                                
                        #Salvation
			if event == "88":
				st.takeItems(ADENA_ID,0)
				st.getPlayer().useMagic(SkillTable.getInstance().getInfo(1410,1),False,False)
				return "1.htm"
				st.setState(COMPLETED)
                                                
                        #Prophecy of Water
			if event == "89":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1355,1).getEffects(st.getPlayer(),st.getPlayer())
				return "6.htm"
				st.setState(COMPLETED)
                                                
                        #Prophecy of Fire
			if event == "90":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1356,1).getEffects(st.getPlayer(),st.getPlayer())
				return "6.htm"
				st.setState(COMPLETED)
                                                
                        #Prophecy of Wind
			if event == "91":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1357,1).getEffects(st.getPlayer(),st.getPlayer())
				return "6.htm"
				st.setState(COMPLETED)
                                                
                        #War Chant
			if event == "92":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1390,3).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)
                                                
                        #Earth Chant
			if event == "93":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1391,3).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)
                                                
                        #Blessing of Queen
			if event == "94":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4699,3).getEffects(st.getPlayer(),st.getPlayer())
				return "6.htm"
				st.setState(COMPLETED)
                                                
                        #Gift of Queen
			if event == "95":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4700,3).getEffects(st.getPlayer(),st.getPlayer())
				return "6.htm"
				st.setState(COMPLETED)
                                                
                        #Blessing of Seraphim
			if event == "96":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4702,3).getEffects(st.getPlayer(),st.getPlayer())
				return "6.htm"
				st.setState(COMPLETED)
                                                
                        #Gift of Seraphim
			if event == "97":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(4703,3).getEffects(st.getPlayer(),st.getPlayer())
				return "6.htm"
				st.setState(COMPLETED)
                        
                        #Chant of Spirit
			if event == "65":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1362,1).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)
				
			#Chant of Victory
			if event == "66":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1363,1).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)
				
			#chant of magnus
			if event == "67":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1413,1).getEffects(st.getPlayer(),st.getPlayer())
				return "5.htm"
				st.setState(COMPLETED)	
				
			#Cancel
			if event == "98": 
				st.getPlayer().stopAllEffects()
				return "1.htm"
				st.setState(COMPLETED)
				
			#Shadow Dance - - By Smallz
			if event == "100":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(366,1).getEffects(st.getPlayer(),st.getPlayer())
				return "4.htm"
				st.setState(COMPLETED)	
				
			#Holy Resistance - - By Smallz
			if event == "101":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1392,3).getEffects(st.getPlayer(),st.getPlayer())
				return "7.htm"
				st.setState(COMPLETED)	
				
			#Dark Resistance - - By Smallz
			if event == "102":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1393,3).getEffects(st.getPlayer(),st.getPlayer())
				return "7.htm"
				st.setState(COMPLETED)	
				
			#Resist Shock - - By Smallz
			if event == "103":
				st.takeItems(ADENA_ID,0)
				SkillTable.getInstance().getInfo(1259,1).getEffects(st.getPlayer(),st.getPlayer())
				return "7.htm"
				st.setState(COMPLETED)	

			#Restore All - - By Smallz
			if event == "69":
				st.takeItems(ADENA_ID,0)
				st.getPlayer().setCurrentCp(st.getPlayer().getMaxCp())
				st.getPlayer().setCurrentHp(st.getPlayer().getMaxHp())
				st.getPlayer().setCurrentMp(st.getPlayer().getMaxMp())
				return "1.htm"
				st.setState(State.COMPLETED)

				
			if htmltext != event:
				st.setState(COMPLETED)
				st.exitQuest(1)
		return htmltext


	def onTalk (self,npc,player):
	   st = player.getQuestState(qn)
	   htmltext = "<html><head><body>I have nothing to say to you</body></html>"
	   st.setState(STARTED)
	   return InitialHtml

QUEST       = Quest(QuestId,str(QuestId) + "_" + QuestName,QuestDesc)
CREATED=State('Start',QUEST)
STARTED=State('Started',QUEST)
COMPLETED=State('Completed',QUEST)

QUEST.setInitialState(CREATED)

for npcId in NPC:
 QUEST.addStartNpc(npcId)
 QUEST.addTalkId(npcId)