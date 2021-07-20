package com.l2jfrozen.gameserver.handler.itemhandlers;

import java.util.Calendar;

import com.l2jfrozen.Config;
import com.l2jfrozen.gameserver.handler.IItemHandler;
import com.l2jfrozen.gameserver.model.actor.instance.L2ItemInstance;
import com.l2jfrozen.gameserver.model.actor.instance.L2PcInstance;
import com.l2jfrozen.gameserver.model.actor.instance.L2PlayableInstance;
import com.l2jfrozen.gameserver.network.serverpackets.EtcStatusUpdate;

/**
 * 
 * @author Computer Sarada
 *
 */
public class VipCoin implements IItemHandler
{
	 private static final int ITEM_IDS[] = { Config.VIP_COIN_ID1,  Config.VIP_COIN_ID2, Config.VIP_COIN_ID3};
	
	@Override
	public void useItem(final L2PlayableInstance playable, final L2ItemInstance item)
	{
		if (!(playable instanceof L2PcInstance))
			return;

		L2PcInstance activeChar = (L2PcInstance)playable;

		int itemId = item.getItemId();

		if (itemId == Config.VIP_COIN_ID1)
		{
			if (activeChar.isInOlympiadMode())
			{
				activeChar.sendMessage("This item cannot be used on Olympiad Games.");
				return;
			}
			if (activeChar.destroyItem("Consume", item.getObjectId(), 1, null, false))
			{
				if (activeChar.isVip())
				{
					long daysleft = (activeChar.getVipEndTime() - Calendar.getInstance().getTimeInMillis()) / 86400000L;
					activeChar.setEndTime("vip", (int)(daysleft + Config.VIP_DAYS_ID1));
					activeChar.sendMessage("Congratulations, You just received another " + Config.VIP_DAYS_ID1 + " day of VIP.");
				}
				else
				{
					activeChar.setVip(true);
					activeChar.setEndTime("vip", Config.VIP_DAYS_ID1);
					activeChar.sendMessage("Congrats, you just became VIP per " + Config.VIP_DAYS_ID1 + " day.");
				}

				if (Config.ALLOW_VIP_NCOLOR && activeChar.isVip())
					activeChar.getAppearance().setNameColor(Config.VIP_NCOLOR);

				if (Config.ALLOW_VIP_TCOLOR && activeChar.isVip()) 
					activeChar.getAppearance().setTitleColor(Config.VIP_TCOLOR);

				activeChar.broadcastUserInfo();
				activeChar.sendPacket(new EtcStatusUpdate(activeChar));
			}
		}
		
		else if (itemId == Config.VIP_COIN_ID2)
		{
			if (activeChar.isInOlympiadMode())
			{
				activeChar.sendMessage("This item cannot be used on Olympiad Games.");
				return;
			}
			if (activeChar.destroyItem("Consume", item.getObjectId(), 1, null, false))
			{
				if (activeChar.isVip())
				{
					long daysleft = (activeChar.getVipEndTime() - Calendar.getInstance().getTimeInMillis()) / 86400000L;
					activeChar.setEndTime("vip", (int)(daysleft + Config.VIP_DAYS_ID2));
					activeChar.sendMessage("Congratulations, You just received another " + Config.VIP_DAYS_ID2 + " day of VIP.");
				}
				else
				{
					activeChar.setVip(true);
					activeChar.setEndTime("vip", Config.VIP_DAYS_ID2);
					activeChar.sendMessage("Congrats, you just became VIP per " + Config.VIP_DAYS_ID2 + " day.");
				}

				if (Config.ALLOW_VIP_NCOLOR && activeChar.isVip())
					activeChar.getAppearance().setNameColor(Config.VIP_NCOLOR);

				if (Config.ALLOW_VIP_TCOLOR && activeChar.isVip()) 
					activeChar.getAppearance().setTitleColor(Config.VIP_TCOLOR);

				activeChar.broadcastUserInfo();
				activeChar.sendPacket(new EtcStatusUpdate(activeChar));
			}
		}
		
		else if (itemId == Config.VIP_COIN_ID3)
		{
			if (activeChar.isInOlympiadMode())
			{
				activeChar.sendMessage("This item cannot be used on Olympiad Games.");
				return;
			}
			if (activeChar.destroyItem("Consume", item.getObjectId(), 1, null, false))
			{
				if (activeChar.isVip())
				{
					long daysleft = (activeChar.getVipEndTime() - Calendar.getInstance().getTimeInMillis()) / 86400000L;
					activeChar.setEndTime("vip", (int)(daysleft + Config.VIP_DAYS_ID3));
					activeChar.sendMessage("Congratulations, You just received another " + Config.VIP_DAYS_ID3 + " day of VIP.");
				}
				else
				{
					activeChar.setVip(true);
					activeChar.setEndTime("vip", Config.VIP_DAYS_ID3);
					activeChar.sendMessage("Congrats, you just became VIP per " + Config.VIP_DAYS_ID3 + " day.");
				}

				if (Config.ALLOW_VIP_NCOLOR && activeChar.isVip())
					activeChar.getAppearance().setNameColor(Config.VIP_NCOLOR);

				if (Config.ALLOW_VIP_TCOLOR && activeChar.isVip()) 
					activeChar.getAppearance().setTitleColor(Config.VIP_TCOLOR);

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