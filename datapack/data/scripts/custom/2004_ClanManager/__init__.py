import sys
from com.l2jfrozen.gameserver.model.actor.instance import L2PcInstance
from com.l2jfrozen.gameserver.model.actor.instance import L2NpcInstance
from java.util import Iterator
from com.l2jfrozen.util.database import L2DatabaseFactory
from com.l2jfrozen.gameserver.model.quest import State
from com.l2jfrozen.gameserver.model.quest import QuestState
from com.l2jfrozen.gameserver.model.quest.jython import QuestJython as JQuest

qn = "2004_ClanManager"

NPC=[16]
PriceIDClanLevel7= 15003
PriceCountClanLevel7= 100

PriceIDClanLevel8= 15003
PriceCountClanLevel8= 200

ReputationScoreCount1= 25000
PriceIDReputationScore1= 15003
PriceCountReputationScore1= 70

ReputationScoreCount2= 50000
PriceIDReputationScore2= 15003
PriceCountReputationScore2= 100

QuestId     = 2004
QuestName   = "ClanManager"
QuestDesc   = "custom"
InitialHtml = "Start.htm"

print "                                                                               "
print "                            * Clan Manager                               [ Ok ]"

class Quest (JQuest) :

	def __init__(self,id,name,descr): JQuest.__init__(self,id,name,descr)

	def onEvent(self,event,st):
               htmltext = "<html><head><body>I have nothing to say you</body></html>"
               count=st.getQuestItemsCount(PriceIDClanLevel7)
               if event == "ClanLevel7.htm" :
                   if st.getPlayer().isClanLeader() and st.getPlayer().getClan().getLevel()<7:
                       if st.getPlayer().isNoble() and count >= PriceCountClanLevel7:
                            htmltext=event
                            st.getPlayer().getClan().changeLevel(7)
                            st.playSound("ItemSound.quest_finish")
                            st.takeItems(PriceIDClanLevel7,PriceCountClanLevel7)
                       else :
                            htmltext="NoPoints.htm"
                            st.exitQuest(1)
                   else :
                       htmltext="NoPoints.htm"
                       st.exitQuest(1)
               if event == "ClanLevel8.htm" :
                   if st.getPlayer().isClanLeader() and st.getPlayer().getClan().getLevel()<8:
                       if st.getPlayer().isNoble() and count >= PriceCountClanLevel8:
                            htmltext=event
                            st.getPlayer().getClan().changeLevel(8)
                            st.playSound("ItemSound.quest_finish")
                            st.takeItems(PriceIDClanLevel8,PriceCountClanLevel8)
                       else :
                            htmltext="NoPoints.htm"
                            st.exitQuest(1)
                   else :
                       htmltext="NoPoints.htm"
                       st.exitQuest(1)					   
               elif event == "Reputation1.htm" :
                   if st.getPlayer().isClanLeader() and st.getPlayer().getClan().getLevel() >= 5 and st.getPlayer().getClan().getReputationScore() < ReputationScoreCount1 :
                       if st.getPlayer().isNoble() and count > PriceCountReputationScore1:
                            htmltext=event
                            st.getPlayer().getClan().setReputationScore(ReputationScoreCount1, 1);
                            st.playSound("ItemSound.quest_finish")
                            st.takeItems(PriceIDReputationScore1,PriceCountReputationScore1)
                       else :
                            htmltext="NoPoints.htm"
                            st.exitQuest(1)
                   else :
                       htmltext="NoPoints.htm"
                       st.exitQuest(1)
               elif event == "Reputation2.htm" :
                   if st.getPlayer().isClanLeader() and st.getPlayer().getClan().getLevel() >= 5 and st.getPlayer().getClan().getReputationScore() < ReputationScoreCount2 :
                       if st.getPlayer().isNoble() and count > PriceCountReputationScore2:
                            htmltext=event
                            st.getPlayer().getClan().setReputationScore(ReputationScoreCount2, 1);
                            st.playSound("ItemSound.quest_finish")
                            st.takeItems(PriceIDReputationScore2,PriceCountReputationScore2)
                       else :
                            htmltext="NoPoints.htm"
                            st.exitQuest(1)
                   else :
                       htmltext="NoPoints.htm"
                       st.exitQuest(1)					   
               return htmltext

	def onTalk (self,npc,player):
	   htmltext = "<html><head><body>I have nothing to say you</body></html>"
           st = player.getQuestState(qn)
           if not st : return htmltext
           npcId = npc.getNpcId()
           id = st.getState()
           if id == CREATED :
               htmltext="Start.htm"
           elif id == COMPLETED :
               htmltext = "<html><head><body>This quest have already been completed.</body></html>"
           else :
               st.exitQuest(1)
           return htmltext


QUEST = Quest(2004,qn,"custom")
CREATED     = State('Start', QUEST)
STARTING    = State('Starting', QUEST)
STARTED     = State('Started', QUEST)
COMPLETED   = State('Completed', QUEST)
QUEST.setInitialState(CREATED)

for npcId in NPC:
 QUEST.addStartNpc(npcId)
 QUEST.addTalkId(npcId)
