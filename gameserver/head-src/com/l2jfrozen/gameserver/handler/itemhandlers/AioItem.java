package com.l2jfrozen.gameserver.handler.itemhandlers;
import java.util.Calendar;
import java.util.StringTokenizer;

import com.l2jfrozen.Config;
import com.l2jfrozen.gameserver.handler.IItemHandler;
import com.l2jfrozen.gameserver.model.L2Character;
import com.l2jfrozen.gameserver.model.actor.instance.L2ItemInstance;
import com.l2jfrozen.gameserver.model.actor.instance.L2PcInstance;
import com.l2jfrozen.gameserver.model.actor.instance.L2PlayableInstance;
import com.l2jfrozen.gameserver.network.serverpackets.EtcStatusUpdate;
/**
 * 
 * @author Computer Sarada
 *
 */
public class AioItem implements IItemHandler
{
	 private static final int ITEM_IDS[] = { Config.AIO_ITEM,  Config.AIO_ITEM2, Config.AIO_ITEM3};
	
	@Override
	public void useItem(final L2PlayableInstance playable, final L2ItemInstance item)
	{
		if (!(playable instanceof L2PcInstance))
			return;

		L2PcInstance activeChar = (L2PcInstance)playable;

		int itemId = item.getItemId();

		if (itemId == Config.AIO_ITEM)
		{
			if (activeChar.isInOlympiadMode())
			{
				activeChar.sendMessage("This item cannot be used on Olympiad Games.");
				return;
			}
			else if (!activeChar.isInsideZone(L2Character.ZONE_PEACE)){
				activeChar.sendMessage("You can only use this item in peace zone..");
				return;
			}
			if (activeChar.destroyItem("Consume", item.getObjectId(), 1, null, false))
			{
				if (activeChar.isAio())
				{
					long daysleft = (activeChar.getAioEndTime() - Calendar.getInstance().getTimeInMillis()) / 86400000L;
					activeChar.setEndTime("aio", (int)(daysleft + Config.AIO_DIAS));
					activeChar.sendMessage("Congratulations, You just received another " + Config.AIO_DIAS + " day of AIO.");
				}
				else
				{
					activeChar.setAio(true);
					activeChar.setEndTime("aio", Config.AIO_DIAS);
					activeChar.sendMessage("Congrats, you just became AIO per " + Config.AIO_DIAS + " day.");
				}

				if (Config.ALLOW_AIO_NCOLOR && activeChar.isAio())
					activeChar.getAppearance().setNameColor(Config.AIO_NCOLOR);

				if (Config.ALLOW_AIO_TCOLOR && activeChar.isAio()) 
				activeChar.getAppearance().setTitleColor(Config.AIO_TCOLOR);
				activeChar.getStat().addExp(activeChar.getStat().getExpForLevel(81));
				activeChar.rewardAioSkills();
				activeChar.setName("[AIO]-" + activeChar.getName());
				if (Config.ALLOW_AIO_ITEM)
				{
				StringTokenizer st = new StringTokenizer((Config.AIO_ITEMID), ",");
				while (st.hasMoreElements())
				{
				int item_id = Integer.parseInt(st.nextToken());
				activeChar.getInventory().addItem("", item_id, 1, activeChar, null);
				activeChar.getInventory().equipItem(activeChar.getInventory().getItemByItemId(item_id));
				}
				}
				activeChar.broadcastUserInfo();
				activeChar.sendPacket(new EtcStatusUpdate(activeChar));
			}
			}
		
		else	if (itemId == Config.AIO_ITEM2)
			{
			if (activeChar.isInOlympiadMode())
			{
				activeChar.sendMessage("This item cannot be used on Olympiad Games.");
				return;
			}
			else if (!activeChar.isInsideZone(L2Character.ZONE_PEACE)){
				activeChar.sendMessage("You can only use this item in peace zone..");
				return;
			}
			if (activeChar.destroyItem("Consume", item.getObjectId(), 1, null, false))
			{
				if (activeChar.isAio())
				{
					long daysleft = (activeChar.getAioEndTime() - Calendar.getInstance().getTimeInMillis()) / 86400000L;
					activeChar.setEndTime("aio", (int)(daysleft + Config.AIO_DIAS2));
					activeChar.sendMessage("Congratulations, You just received another " + Config.AIO_DIAS2 + " day of AIO.");
				}
				else
				{
					activeChar.setAio(true);
					activeChar.setEndTime("aio", Config.AIO_DIAS2);
					activeChar.sendMessage("Congrats, you just became AIO per " + Config.AIO_DIAS2 + " day.");
				}

				if (Config.ALLOW_AIO_NCOLOR && activeChar.isAio())
					activeChar.getAppearance().setNameColor(Config.AIO_NCOLOR);

				if (Config.ALLOW_AIO_TCOLOR && activeChar.isAio()) 
				activeChar.getAppearance().setTitleColor(Config.AIO_TCOLOR);
				activeChar.getStat().addExp(activeChar.getStat().getExpForLevel(81));
				activeChar.rewardAioSkills();
				activeChar.setName("[AIO]-" + activeChar.getName());
				if (Config.ALLOW_AIO_ITEM)
				{
				StringTokenizer st = new StringTokenizer((Config.AIO_ITEMID), ",");
				while (st.hasMoreElements())
				{
				int item_id = Integer.parseInt(st.nextToken());
				activeChar.getInventory().addItem("", item_id, 1, activeChar, null);
				activeChar.getInventory().equipItem(activeChar.getInventory().getItemByItemId(item_id));
				}
				}
				activeChar.broadcastUserInfo();
				activeChar.sendPacket(new EtcStatusUpdate(activeChar));
				}
				}
		
			else if (itemId == Config.AIO_ITEM3)
			{
			if (activeChar.isInOlympiadMode())
			{
				activeChar.sendMessage("This item cannot be used on Olympiad Games.");
				return;
			}
			else if (!activeChar.isInsideZone(L2Character.ZONE_PEACE)){
				activeChar.sendMessage("You can only use this item in peace zone..");
				return;
			}
			if (activeChar.destroyItem("Consume", item.getObjectId(), 1, null, false))
			{
				if (activeChar.isAio())
				{
					long daysleft = (activeChar.getAioEndTime() - Calendar.getInstance().getTimeInMillis()) / 86400000L;
					activeChar.setEndTime("aio", (int)(daysleft + Config.AIO_DIAS3));
					activeChar.sendMessage("Congratulations, You just received another " + Config.AIO_DIAS3 + " day of AIO.");
				}
				else
				{
					activeChar.setAio(true);
					activeChar.setEndTime("aio", Config.AIO_DIAS3);
					activeChar.sendMessage("Congrats, you just became AIO per " + Config.AIO_DIAS3 + " day.");
				}

				if (Config.ALLOW_AIO_NCOLOR && activeChar.isAio())
					activeChar.getAppearance().setNameColor(Config.AIO_NCOLOR);

				if (Config.ALLOW_AIO_TCOLOR && activeChar.isAio()) 
				activeChar.getAppearance().setTitleColor(Config.AIO_TCOLOR);
				activeChar.getStat().addExp(activeChar.getStat().getExpForLevel(81));
				activeChar.rewardAioSkills();
				activeChar.setName("[AIO]-" + activeChar.getName());
				if (Config.ALLOW_AIO_ITEM)
				{
				StringTokenizer st = new StringTokenizer((Config.AIO_ITEMID), ",");
				while (st.hasMoreElements())
				{
				int item_id = Integer.parseInt(st.nextToken());
				activeChar.getInventory().addItem("", item_id, 1, activeChar, null);
				activeChar.getInventory().equipItem(activeChar.getInventory().getItemByItemId(item_id));
				}
				}
				activeChar.broadcastUserInfo();
				activeChar.sendPacket(new EtcStatusUpdate(activeChar));
			}
		}
	}
	@Override
	public int[] getItemIds()
	 {
			 return ITEM_IDS;
	 }
	 }