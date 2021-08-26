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
		"getinfo"
	};

	@Override
	public boolean useVoicedCommand(String command, L2PcInstance activeChar, String target)
	{
		if(command.equalsIgnoreCase("getinfo"))
		{
			SperoCoin getinfo = new SperoCoin();
			getinfo.getInfo(null);
			
			getinfo.nhm.setHtml(getinfo.replyMSG.toString());
			activeChar.sendPacket(getinfo.nhm);
		}
		return true;
	}

	@Override
	public String[] getVoicedCommandList()
	{
		return _voicedCommands;
	}
}