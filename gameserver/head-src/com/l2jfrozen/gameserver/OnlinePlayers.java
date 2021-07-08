package com.l2jfrozen.gameserver;

import com.l2jfrozen.Config;
import com.l2jfrozen.gameserver.model.L2World;
import com.l2jfrozen.gameserver.thread.ThreadPoolManager;
import com.l2jfrozen.gameserver.model.entity.Announcements;
import com.l2jfrozen.gameserver.OnlinePlayers;

public class OnlinePlayers
{
	private static OnlinePlayers _instance;

class AnnounceOnline implements Runnable
{
	public void run()
	{
		int PLAYERS_ONLINE = L2World.getInstance().getAllPlayers().size() + Config.PLAYERS_ONLINE_TRICK;
		Announcements.getInstance().announceToAll("Online Players: " + PLAYERS_ONLINE);
		if (Config.ONLINE_PLAYERS_ANNOUNCE_INTERVAL > 0)
			ThreadPoolManager.getInstance().scheduleGeneral(new AnnounceOnline(), Config.ONLINE_PLAYERS_ANNOUNCE_INTERVAL);
	}
}

public static OnlinePlayers getInstance()
{
	if (_instance == null)
		_instance = new OnlinePlayers();
	return _instance;
}

private OnlinePlayers()
{
	if (Config.ONLINE_PLAYERS_ANNOUNCE_INTERVAL > 0)
		ThreadPoolManager.getInstance().scheduleGeneral(new AnnounceOnline(), Config.ONLINE_PLAYERS_ANNOUNCE_INTERVAL);
}
}