package com.l2jfrozen.gameserver.handler.voicedcommandhandlers;

/**
* @author Kennedy Batista (MasterL2ColdBlood)
*
*/

import com.l2jfrozen.gameserver.handler.IVoicedCommandHandler;
import com.l2jfrozen.gameserver.model.actor.instance.L2PcInstance;
import com.l2jfrozen.gameserver.handler.voicedcommandhandlers.GetTop;

public class Top implements IVoicedCommandHandler
{

private static String[] _voicedCommands =
{
"top"
};




@Override
public boolean useVoicedCommand(String command, L2PcInstance activeChar, String target)
{


if(command.equalsIgnoreCase("top"))
{
GetTop top = new GetTop();
top.getTop();

top.nhm.setHtml(top.replyMSG.toString());
activeChar.sendPacket(top.nhm);


}
return true;
}

@Override
public String[] getVoicedCommandList()
{
return _voicedCommands;
}
}