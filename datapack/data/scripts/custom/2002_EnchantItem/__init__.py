import sys
from com.l2jfrozen import Config
from com.l2jfrozen.gameserver.model.quest import State
from com.l2jfrozen.gameserver.model.quest import QuestState
from com.l2jfrozen.gameserver.model.quest.jython import QuestJython as JQuest

qn = "2002_EnchantItem"

print "                                                                               "
print "                            * Enchant Item                               [ Ok ]"
print "                                                                               "


QuestId     = 2002
QuestName   = "EnchantItem"
QuestDesc   = "custom"

ENCHANT_CHECK     = 1
AMOUNT_OF_ENCHANT     = 6
ITEM_ID     = 57
ITEM_AMOUNT     = 50000000
NPC_ID = 2

weapons = ['Sword','Blunt','Dagger','Bow','Pole','Etc','Fist','Dual Sword','Dual Fist','Big Sword','Big Blunt','Ancient','Crossbow','Rapier','Dual Dagger']
armors = ['Light','Heavy','Magic','Shield','Sigil']
jewels = ['None']
acceptableItemTypes = weapons+armors+jewels

class Quest (JQuest) :

  def __init__(self,id,name,descr): JQuest.__init__(self,id,name,descr)

  def onEvent (self,event,st) :
    if event == "choose_item" :
      htmltext = ""
      for Item in st.getPlayer().getInventory().getItems():
        # given an item instance, get the item template to check what type it is
        itemType = Item.getItem().getItemType().toString()
        itemGrade = Item.getItem().getCrystalType()
        if itemType in acceptableItemTypes and itemGrade > 0 :
          htmltext += "<a action=\"bypass -h Quest 2002_EnchantItem enchantItem_" + str(Item.getObjectId()) +"\">" "<font color=0066CC>"+ Item.getItem().getName() + "<font color=FFFF00> +" + str(Item.getEnchantLevel()) +"</font></a>"
      if htmltext == "":
        htmltext = "You have no enchantable items equiped or in your inventory."
      htmltext = "<html><body><center><title>Atlas</title><br><br>* Your item must be +0<br>Please select the item to be enchanted.<br><img src=\"L2UI_CH3.onscrmsg_pattern01_2\" width=300 height=32><br>" + htmltext + "<img src=\"L2UI_CH3.onscrmsg_pattern01_1\" width=300 height=32><font color=222222>by Smallz</font></body></html>"
    elif event.startswith("enchantItem_"):
      # get the object id out of the event string
      objId = int(event.replace("enchantItem_", ""))
      # to avoid exploitation, check if the stored objectId still corresponds to an existing item
      Item = st.getPlayer().getInventory().getItemByObjectId(objId )
      if Item :
        itemType = Item.getItem().getItemType().toString()
        itemEnchant = Item.getEnchantLevel()
        if st.getQuestItemsCount(ITEM_ID) >= ITEM_AMOUNT :
           if (itemType in weapons and itemEnchant >= ENCHANT_CHECK) or (itemType in armors and itemEnchant >= ENCHANT_CHECK) or (itemType in jewels and itemEnchant >= ENCHANT_CHECK) :
              htmltext = "NoZero.htm"
           else :
             Item.setEnchantLevel(itemEnchant+AMOUNT_OF_ENCHANT)
             st.takeItems(ITEM_ID, ITEM_AMOUNT)
             htmltext = "Enchanted.htm"
        else :
          htmltext = "NoItems.htm"
      else :
        htmltext = "Error.htm"
    return htmltext

  def onTalk (self,npc,player):
    htmltext = "<html><body>You are either not on a quest that involves this NPC, or you don't meet this NPC's minimum quest requirements.</body></html>"
    st = player.getQuestState(qn)
    if not st : return htmltext
    if npc.getNpcId() == NPC_ID :
       htmltext = "Start.htm"
    return htmltext

QUEST       = Quest(QuestId,str(QuestId) + "_" + QuestName,QuestDesc)

QUEST.addStartNpc(NPC_ID)
QUEST.addTalkId(NPC_ID)