package com.l2jfrozen.gameserver.handler.voicedcommandhandlers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.l2jfrozen.gameserver.network.serverpackets.NpcHtmlMessage;
import com.l2jfrozen.util.database.L2DatabaseFactory;

import javolution.text.TextBuilder;

/**
* @author Kennedy Batista (MasterL2ColdBlood)
*
*/
public class GetTop
{
public Connection con = null;
public String name = "Nao Registrado";
public int pkKills = 00;
public ResultSet rs = null;
public PreparedStatement statement = null;
protected static final String[] SQL_CMD =
{
"SELECT char_name, pkkills FROM characters ORDER BY pkkills DESC",
"SELECT char_name, pvpkills FROM characters ORDER BY pvpkills DESC"
};
int queryLimit = 1;
int position = 1;
public NpcHtmlMessage nhm = new NpcHtmlMessage(5);
public TextBuilder replyMSG = new TextBuilder("");
public void getTop() {


replyMSG.append("<html><title>TOP PVP e PK </title><body>");
replyMSG.append("<font color=\"FFFF00\"><center>Top 10 PK:</center></font>");
replyMSG.append("<table width=\"220\" cellpadding='2' cellspacing='2'>");
try {

con = L2DatabaseFactory.getInstance().getConnection(false);
statement = con.prepareStatement(SQL_CMD[0]);
rs = statement.executeQuery();
while(rs.next() && queryLimit < 11)
{
replyMSG.append("<tr><td>"+position+"º</td>");
replyMSG.append("<td><font color=\"FFFF00\">"+rs.getString("char_name")+" </font></td><td>"+rs.getInt("pkkills")+"</td></tr>");
queryLimit++;
position++;
}
rs.close();
statement.close();
con.close();

}

catch (Exception e) { e.printStackTrace();}

replyMSG.append("</table>");
replyMSG.append("<font color=\"FFFF00\"><center>Top 10 PVP:</center></font>");
replyMSG.append("<table width=\"220\" cellpadding='2' cellspacing='2'>");
queryLimit = 1;
position = 1;
try {

con = L2DatabaseFactory.getInstance().getConnection(false);
statement = con.prepareStatement(SQL_CMD[1]);
rs = statement.executeQuery();
while(rs.next() && queryLimit < 11)
{
replyMSG.append("<tr><td>"+position+"º</td>");
replyMSG.append("<td><font color=\"FFFF00\">"+rs.getString("char_name")+" </font></td><td>"+rs.getInt("pvpkills")+"</td></tr>");
replyMSG.append("---------------------------------");
queryLimit++;
position++;
}
rs.close();
statement.close();
con.close();

}
catch (Exception e) { e.printStackTrace();}

replyMSG.append("</table>");
replyMSG.append("</body></html>");

}


}