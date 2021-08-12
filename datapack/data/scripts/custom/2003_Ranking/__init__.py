import sys
from com.l2jfrozen.gameserver.model.actor.instance import L2PcInstance
from java.util import Iterator
from com.l2jfrozen.gameserver.datatables import SkillTable
from com.l2jfrozen.util.database import L2DatabaseFactory
from com.l2jfrozen.gameserver.model.actor.appearance import PcAppearance
from com.l2jfrozen.gameserver.model.quest import State
from com.l2jfrozen.gameserver.model.actor.appearance import PcAppearance
from com.l2jfrozen.gameserver.model.quest import QuestState
from com.l2jfrozen.gameserver.model.quest.jython import QuestJython as JQuest

qn = "2003_Ranking"

NPC=[13]
PriceID = 15003
PriceCount = 5
QuestId     = 2003
QuestName   = "Ranking"
QuestDesc   = "custom"
InitialHtml = "1.htm"

print "                            * Ranking                                    [ Ok ]"

class Quest (JQuest) :

	def __init__(self,id,name,descr): JQuest.__init__(self,id,name,descr)

	def onTalk (self,npc,player):
		return InitialHtml

	def onEvent(self,event,st):
		htmltext = event
		price = st.getQuestItemsCount(PriceID)
		
		# - - - - - - - - -
		# +  PvP Ranking  +
		# - - - - - - - - -
		if event == "1" and price >= PriceCount :
			st.takeItems(PriceID,PriceCount)
			total_asesinados = 0
			htmltext_ini = "<html><head><center><title>Perseu</title></head><body><img src=\"l2font-e.replay_logo-e\" width=255 height=60><br><img src=\"L2UI_CH3.onscrmsg_pattern01_2\" width=300 height=32><table width=200><tr><td><font color =\"0066CC\">Rank</td><td><center><font color =\"0066CC\">Name</color></center></td><td><center><font color =\"0066CC\">PvP's</color></center></td></tr><tr></tr>"
			htmltext_info =""			
			color = 1
			pos = 0
			con = L2DatabaseFactory.getInstance().getConnection()
			pks = con.prepareStatement("SELECT char_name,pvpkills FROM characters WHERE pvpkills>0 and accesslevel=0 order by pvpkills desc limit 10")
			rs = pks.executeQuery()
			while (rs.next()) :
				char_name = rs.getString("char_name")
				char_pkkills = rs.getString("pvpkills")
				total_asesinados = total_asesinados + int(char_pkkills)
				pos = pos + 1
				posstr = str(pos)
				if color == 1:
					color_text = "<font color =\"FFFFFF\">"
					color = 2
					htmltext_info = htmltext_info + "<tr><td><center><font color =\"LEVEL\">" + posstr + "</td><td><center>" + color_text + char_name +"</center></td><td><center>" + char_pkkills + "</center></td></tr>"
				elif color == 2:
					color_text = "<font color =\"FFFFFF\">"
					color = 1
					htmltext_info = htmltext_info + "<tr><td><center><font color =\"FFFF00\">" + posstr + "</td><td><center>" + color_text + char_name +"</center></td><td><center>" + char_pkkills + "</center></td></tr>"
			htmltext_end = "</table><center><br><font color=\"0066CC\">" + "Total:</font> " + str(total_asesinados) + "<font color=\"FFFFFF\"> PvP's</font><img src=\"L2UI_CH3.onscrmsg_pattern01_1\" width=300 height=32></center></body></html>"
			htmltext_pklist = htmltext_ini + htmltext_info + htmltext_end
			con.close()
			return htmltext_pklist
		elif event == "1" and price < PriceCount :
			htmltext = "<html><body><center><title>Perseu</title><br><br><img src=\"l2font-e.replay_logo-e\" width=255 height=60><br><br><img src=\"L2UI_CH3.onscrmsg_pattern01_2\" width=300 height=32><br><br>Sorry!<br><br>You do not have the necessary items.<br><br><img src=\"L2UI_CH3.onscrmsg_pattern01_1\" width=300 height=32><font color=\"222222\">by Smallz</center></body></html>"
			return htmltext
		
		# - - - - - - - - -
		# +  PK Ranking   +
		# - - - - - - - - -
		if event == "2" and price >= PriceCount :
			st.takeItems(PriceID,PriceCount)
			total_asesinados = 0
			htmltext_ini = "<html><head><center><title>Perseu</title></head><body><img src=\"l2font-e.replay_logo-e\" width=255 height=60><br><img src=\"L2UI_CH3.onscrmsg_pattern01_2\" width=300 height=32><table width=200><tr><td><font color =\"0066CC\">Rank</td><td><center><font color =\"0066CC\">Name</color></center></td><td><center><font color =\"0066CC\">PK's</color></center></td></tr><tr></tr>"
			htmltext_info =""			
			color = 1
			pos = 0
			con = L2DatabaseFactory.getInstance().getConnection()
			pks = con.prepareStatement("SELECT char_name,pkkills FROM characters WHERE pkkills>0 and accesslevel=0 order by pkkills desc limit 10")
			rs = pks.executeQuery()
			while (rs.next()) :
				char_name = rs.getString("char_name")
				char_pkkills = rs.getString("pkkills")
				total_asesinados = total_asesinados + int(char_pkkills)
				pos = pos + 1
				posstr = str(pos)
				if color == 1:
					color_text = "<font color =\"FFFFFF\">"
					color = 2
					htmltext_info = htmltext_info + "<tr><td><center><font color =\"FFFF00\">" + posstr + "</td><td><center>" + color_text + char_name +"</center></td><td><center>" + char_pkkills + "</center></td></tr>"
				elif color == 2:
					color_text = "<font color =\"FFFFFF\">"
					color = 1
					htmltext_info = htmltext_info + "<tr><td><center><font color =\"FFFF00\">" + posstr + "</td><td><center>" + color_text + char_name +"</center></td><td><center>" + char_pkkills + "</center></td></tr>"
			htmltext_end = "</table><center><br><font color=\"0066CC\">" + "Total:</font> " + str(total_asesinados) + "<font color=\"FFFFFF\"> PK's</font><img src=\"L2UI_CH3.onscrmsg_pattern01_1\" width=300 height=32></center></body></html>"
			htmltext_pklist = htmltext_ini + htmltext_info + htmltext_end
			con.close()
			return htmltext_pklist
		elif event == "2" and price < PriceCount :
			htmltext = "<html><body><center><title>Perseu</title><br><br><img src=\"l2font-e.replay_logo-e\" width=255 height=60><br><br><img src=\"L2UI_CH3.onscrmsg_pattern01_2\" width=300 height=32><br><br>Sorry!<br><br>You do not have the necessary items.<br><br><img src=\"L2UI_CH3.onscrmsg_pattern01_1\" width=300 height=32><font color=\"222222\">by Smallz</center></body></html>"
			return htmltext

		# - - - - - - - -
		 # + SperoCoin Points +
	     # - - - - - - - -				
		if event == "3" and price >= PriceCount :
			st.takeItems(PriceID,PriceCount)
			htmltext_ini = "<html><head><center><title>Perseu</title></head><body><img src=\"l2font-e.replay_logo-e\" width=255 height=60><br><img src=\"L2UI_CH3.onscrmsg_pattern01_2\" width=300 height=32><table width=200><tr><td><font color =\"0066CC\">Rank</td><td><center><font color =\"0066CC\">Name</color></center></td><td><center><font color =\"0066CC\">SperoCoin Points</color></center></td></tr><tr></tr>"
			htmltext_info =""			
			color = 1
			pos = 0
			con = L2DatabaseFactory.getInstance().getConnection()
			pks = con.prepareStatement("SELECT char_name,pc_point FROM characters WHERE pc_point>0 and accesslevel=0 order by pc_point desc limit 10")
			rs = pks.executeQuery()
			while (rs.next()) :
				char_name = rs.getString("char_name")
				char_pc_point = rs.getString("pc_point")
				pos = pos + 1
				posstr = str(pos)
				if color == 1:
					color_text = "<font color =\"FFFFFF\">"
					color = 2
					htmltext_info = htmltext_info + "<tr><td><center><font color =\"FFFF00\">" + posstr + "</td><td><center>" + color_text + char_name +"</center></td><td><center>" + char_pc_point + "</center></td></tr>"
				elif color == 2:
					color_text = "<font color =\"FFFFFF\">"
					color = 1
					htmltext_info = htmltext_info + "<tr><td><center><font color =\"FFFF00\">" + posstr + "</td><td><center>" + color_text + char_name +"</center></td><td><center>" + char_pc_point + "</center></td></tr>"
			htmltext_end = "</table><center><br><img src=\"L2UI_CH3.onscrmsg_pattern01_1\" width=300 height=32><font color=\"222222\">by Smallz</center></body></html>"
			htmltext_pklist = htmltext_ini + htmltext_info + htmltext_end
			con.close()
			return htmltext_pklist
		elif event == "3" and price < PriceCount :
			htmltext = "<html><body><center><title>Perseu</title><br><br><img src=\"l2font-e.replay_logo-e\" width=255 height=60><br><br><img src=\"L2UI_CH3.onscrmsg_pattern01_2\" width=300 height=32><br><br>Sorry!<br><br>You do not have the necessary items.<br><br><img src=\"L2UI_CH3.onscrmsg_pattern01_1\" width=300 height=32><font color=\"222222\">by Smallz</center></body></html>"
			return htmltext
			return htmltext

		# - - - - - - - - - - -
		# + Glittering Medal +
		# - - - - - - - - - - -
		if event == "4" and price >= PriceCount :
			st.takeItems(PriceID,PriceCount)
			total_cantidad = 0
			htmltext_ini = "<html><head><center><title>Perseu</title></head><body><img src=\"l2font-e.replay_logo-e\" width=255 height=60><br><img src=\"L2UI_CH3.onscrmsg_pattern01_2\" width=300 height=32><table width=200><tr><td><font color =\"0066CC\">Rank</td><td><center><font color =\"0066CC\">Name</color></center></td><td><center><font color =\"0066CC\">SperoCoin</color></center></td></tr><tr></tr>"
			htmltext_info =""			
			color = 1
			pos = 0
			con = L2DatabaseFactory.getInstance().getConnection()
			pks = con.prepareStatement("SELECT count,owner_id FROM items WHERE item_id=15003 order by count desc limit 10")
			rs = pks.executeQuery()
			while (rs.next()) :
				cantidad = rs.getString("count")
				pj_id = rs.getString("owner_id")
				total_cantidad = total_cantidad + long(cantidad)
				pos = pos + 1
				posstr = str(pos)
				charname = con.prepareStatement("SELECT char_name FROM characters WHERE obj_Id=" + pj_id)
				rs2 = charname.executeQuery()
				while (rs2.next()) :
					char_name = rs2.getString("char_name")
				if color == 1:
					color_text = "<font color =\"FFFFFF\">"
					color = 2
					htmltext_info = htmltext_info + "<tr><td><center><font color =\"FFFF00\">" + posstr + "</td><td><center>" + color_text + char_name +"</center></td><td><center>" + cantidad + "</center></td></tr>"
				elif color == 2:
					color_text = "<font color =\"FFFFFF\">"
					color = 1
					htmltext_info = htmltext_info + "<tr><td><center><font color =\"FFFF00\">" + posstr + "</td><td><center>" + color_text + char_name +"</center></td><td><center>" + cantidad + "</center></td></tr>"
			htmltext_end = "</table><center><br><font color=\"0066CC\">" + "Total:</font> " + str(total_cantidad) + "<font color=\"FFFFFF\"> SperoCoin</font><img src=\"L2UI_CH3.onscrmsg_pattern01_1\" width=300 height=32></center></body></html>"
			htmltext_pklist = htmltext_ini + htmltext_info + htmltext_end
			con.close()
			return htmltext_pklist
		elif event == "4" and price < PriceCount :
			htmltext = "<html><body><center><title>Perseu</title><br><br><img src=\"l2font-e.replay_logo-e\" width=255 height=60><br><br><img src=\"L2UI_CH3.onscrmsg_pattern01_2\" width=300 height=32><br><br>Sorry!<br><br>You do not have the necessary items.<br><br><img src=\"L2UI_CH3.onscrmsg_pattern01_1\" width=300 height=32><font color=\"222222\">by Smallz</center></body></html>"
			return htmltext
			
		# - - - - -
		# + Clan +
		# - - - - -	
		if event == "5" and price >= PriceCount :
			st.takeItems(PriceID,PriceCount)
			htmltext_ini = "<html><head><center><title>Perseu</title></head><body><img src=\"l2font-e.replay_logo-e\" width=255 height=60><br><img src=\"L2UI_CH3.onscrmsg_pattern01_2\" width=300 height=32><table width=230><tr><td><font color =\"0066CC\">Rank</td><td><center><font color =\"0066CC\">Level</color></center></td><td><center><font color =\"0066CC\">Name</color></center></td><td><center><font color =\"0066CC\">Reputation</color></center></td></tr><tr></tr>"
			htmltext_info =""
			color = 1
			pos = 0
			con = L2DatabaseFactory.getInstance().getConnection()
			clan = con.prepareStatement("SELECT clan_name,clan_level,reputation_score FROM clan_data WHERE clan_level>0 order by reputation_score desc limit 10")
			rs = clan.executeQuery()
			while (rs.next()) :
				clan_name = rs.getString("clan_name")
				clan_level = rs.getString("clan_level")
				clan_score = rs.getString("reputation_score")
				pos = pos + 1
				posstr = str(pos)
				if color == 1:
					color_text = "<font color =\"FFFFFF\">"
					color = 2
					htmltext_info = htmltext_info + "<tr><td><center><font color =\"FFFF00\">" + posstr + "</center></td><td><center>" + color_text + clan_level +"</center></td><td><center>" + clan_name + "</center></td><td><center>" + clan_score + "</center></td></tr>"
				elif color == 2:
					color_text = "<font color =\"FFFFFF\">"
					color = 1
					htmltext_info = htmltext_info + "<tr><td><center><font color =\"FFFF00\">" + posstr + "</center></td><td><center>" + color_text + clan_level +"</center></td><td><center>" + clan_name + "</center></td><td><center>" + clan_score + "</center></td></tr>"
			htmltext_end = "</table><center><br><img src=\"L2UI_CH3.onscrmsg_pattern01_1\" width=300 height=32><font color=\"222222\">by Smallz</center></body></html>"
			htmltext_pklist = htmltext_ini + htmltext_info + htmltext_end
			con.close()
			return htmltext_pklist
		elif event == "5" and price < PriceCount :
			htmltext = "<html><body><center><title>Perseu</title><br><br><img src=\"l2font-e.replay_logo-e\" width=255 height=60><br><br><img src=\"L2UI_CH3.onscrmsg_pattern01_2\" width=300 height=32><br><br>Sorry!<br><br>You do not have the necessary items.<br><br><img src=\"L2UI_CH3.onscrmsg_pattern01_1\" width=300 height=32><font color=\"222222\">by Smallz</center></body></html>"
			return htmltext
            
		 # - - - - - - - -
		 # + Online Time +
	     # - - - - - - - -				
		if event == "6" and price >= PriceCount :
			st.takeItems(PriceID,PriceCount)
			htmltext_ini = "<html><head><center><title>Perseu</title></head><body><img src=\"l2font-e.replay_logo-e\" width=255 height=60><br><img src=\"L2UI_CH3.onscrmsg_pattern01_2\" width=300 height=32><table width=200><tr><td><font color =\"0066CC\">Rank</td><td><center><font color =\"0066CC\">Name</color></center></td><td><center><font color =\"0066CC\">Online</color></center></td></tr><tr></tr>"
			htmltext_info =""			
			color = 1
			pos = 0
			con = L2DatabaseFactory.getInstance().getConnection()
			pks = con.prepareStatement("SELECT char_name,onlinetime FROM characters WHERE onlinetime>0 and accesslevel=0 order by onlinetime desc limit 10")
			rs = pks.executeQuery()
			while (rs.next()) :
				char_name = rs.getString("char_name")
				char_onlinetime = rs.getString("onlinetime")
				pos = pos + 1
				posstr = str(pos)
				if color == 1:
					color_text = "<font color =\"FFFFFF\">"
					color = 2
					htmltext_info = htmltext_info + "<tr><td><center><font color =\"FFFF00\">" + posstr + "</td><td><center>" + color_text + char_name +"</center></td><td><center>" + char_onlinetime + "</center></td></tr>"
				elif color == 2:
					color_text = "<font color =\"FFFFFF\">"
					color = 1
					htmltext_info = htmltext_info + "<tr><td><center><font color =\"FFFF00\">" + posstr + "</td><td><center>" + color_text + char_name +"</center></td><td><center>" + char_onlinetime + "</center></td></tr>"
			htmltext_end = "</table><center><br><img src=\"L2UI_CH3.onscrmsg_pattern01_1\" width=300 height=32><font color=\"222222\">by Smallz</center></body></html>"
			htmltext_pklist = htmltext_ini + htmltext_info + htmltext_end
			con.close()
			return htmltext_pklist
		elif event == "6" and price < PriceCount :
			htmltext = "<html><body><center><title>Perseu</title><br><br><img src=\"l2font-e.replay_logo-e\" width=255 height=60><br><br><img src=\"L2UI_CH3.onscrmsg_pattern01_2\" width=300 height=32><br><br>Sorry!<br><br>You do not have the necessary items.<br><br><img src=\"L2UI_CH3.onscrmsg_pattern01_1\" width=300 height=32><font color=\"222222\">by Smallz</center></body></html>"
			return htmltext

QUEST       = Quest(QuestId,str(QuestId) + "_" + QuestName,QuestDesc)
CREATED=State('Start',QUEST)
STARTED=State('Started',QUEST)
COMPLETED=State('Completed',QUEST)

QUEST.setInitialState(CREATED)

for npcId in NPC:
 QUEST.addStartNpc(npcId)
 QUEST.addTalkId(npcId)