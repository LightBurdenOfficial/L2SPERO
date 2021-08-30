package com.l2jfrozen.gameserver.handler.voicedcommandhandlers;

/**
* @author Francis Santana (SperoCoin Team)
*
*/

import com.l2jfrozen.gameserver.handler.IVoicedCommandHandler;
import com.l2jfrozen.gameserver.model.actor.instance.L2PcInstance;

public class SperoCoinCommands implements IVoicedCommandHandler
{
	private static String[] _voicedCommands =
	{
		"spero_getinfo",
		"spero_getnewaddress",
		"spero_wallet"
	};

	@Override
	public boolean useVoicedCommand(String command, L2PcInstance activeChar, String target)
	{
		if(command.equalsIgnoreCase("spero_getinfo"))
		{
			SperoCoin getinfo = new SperoCoin();
			getinfo.getInfo(null);
			
			getinfo.nhm.setHtml(getinfo.replyMSG.toString());
			activeChar.sendPacket(getinfo.nhm);
		}
		
		if(command.equalsIgnoreCase("spero_getnewaddress"))
		{
			SperoCoin getnewaddress = new SperoCoin();
			getnewaddress.getNewAddress(null, activeChar);
			
			getnewaddress.nhm.setHtml(getnewaddress.replyMSG.toString());
			activeChar.sendPacket(getnewaddress.nhm);
		}
		
		if(command.equalsIgnoreCase("spero_wallet"))
		{
			SperoCoin getwallet = new SperoCoin();
			getwallet.getWallet(null, activeChar);
			
			getwallet.nhm.setHtml(getwallet.replyMSG.toString());
			activeChar.sendPacket(getwallet.nhm);
		}
		
		return true;
	}

	@Override
	public String[] getVoicedCommandList()
	{
		return _voicedCommands;
	}
}