/* This program is free software; you can redistribute it and / or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2, or (at your option)
* any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
* 02111-1307, USA.
*
* http://www.gnu.org/copyleft/gpl.html
*/
package com.l2jfrozen.gameserver.model.entity;
import java.util.concurrent.ScheduledFuture;
import java.util.logging.Logger;
import javolution.util.FastMap;
import com.l2jfrozen.Config;
import com.l2jfrozen.gameserver.model.actor.instance.L2PcInstance;
/**
*  
*/
	public class LeaveBuster implements Runnable
	{
		public static FastMap <L2PcInstance, ScheduledFuture <?>> _players = new FastMap<L2PcInstance, ScheduledFuture <?>> ();
    
		private static final Logger _log = Logger.getLogger(LeaveBuster.class.getName());
    
		private L2PcInstance _p = null;
    
		public LeaveBuster(L2PcInstance p)
		{
			_p = p;
		}
    
 @Override
 	public void run()
 	{
	 if (_p == null || _p.isOnline() == 0)
	 {
		 if (_p != null)
		 {
			 _players.get(_p) .cancel(true);
			 _players.remove(_p);
		 }
		 return;
	 }
	 
	 if (_p.isGM())
	 {
		 return;
	 }
        
	 if ((System.currentTimeMillis() - _p.getLastActionMillis()) / 1000/60 >= Config.LEAVEBURSTER_TIME_KICK)
	 {
		 _log.info("Leave Buster:" + _p.getName() + "was kicked out of game.");
		 _players.get(_p) .cancel(true);
		 _players.remove(_p);
		 _p.logout();
	 }
 	}
	}