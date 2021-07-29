/*
 * This program is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program. If not, see <http://www.gnu.org/licenses/>.
 */
package com.l2jfrozen.gameserver.handler.admincommandhandlers;

import com.l2jfrozen.gameserver.datatables.SkillTable;
import com.l2jfrozen.gameserver.datatables.sql.ClanTable;
import com.l2jfrozen.gameserver.handler.IAdminCommandHandler;
import com.l2jfrozen.gameserver.model.L2Clan;
import com.l2jfrozen.gameserver.model.L2Skill;
import com.l2jfrozen.gameserver.model.actor.instance.L2PcInstance;

/**
 * @author Bluur
 *
 */
public class AdminClanFullByName implements IAdminCommandHandler
{
    private static final String[] commands = {"admin_clanfull"};
        
    private static final int reputation = 30000000;
    private static final byte level = 8;
    
    //id skills
    private static final int[] clanSkills =
    {
        370,
        371,
        372,
        373,
        374,
        375,
        376,
        377,
        378,
        379,
        380,
        381,
        382,
        383,
        384,
        385,
        386,
        387,
        388,
        389,
        390,
        391
    };
    
    @Override
    public boolean useAdminCommand(String command, L2PcInstance activeChar)
    {
        if (command.startsWith("admin_clanfull"))                                    
            makeClan(command, activeChar);
        
        return true;
    }
    
    private void makeClan(String command, L2PcInstance activeChar)
    {
        try
        {
            String clanName = command.substring(15);
            L2Clan clan = ClanTable.getInstance().getClanByName(clanName);
            
            if (clan == null)
            {
                activeChar.sendMessage("Clan does not exist or name is incorrect!");
                return;
            }
        
            for (int s : clanSkills)
            {
                L2Skill clanSkill = SkillTable.getInstance().getInfo(s, SkillTable.getInstance().getMaxLevel(s, 3));
                clan.addNewSkill(clanSkill);
            }
            
            clan.setReputationScore(reputation, true);
            clan.changeLevel(level);
            clan.updateClanInDB();
            
            activeChar.sendMessage("The Clan " + clan.getName() +" just gained all skills");
        }
        catch (IndexOutOfBoundsException e)
        {
        	activeChar.sendMessage("Incorrect name, try again");
        }
    }

    @Override
    public String[] getAdminCommandList()
    {    
        return commands;
    }
} 