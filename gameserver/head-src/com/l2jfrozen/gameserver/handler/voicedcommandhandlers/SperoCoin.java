package com.l2jfrozen.gameserver.handler.voicedcommandhandlers;


//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.util.Map;
import org.apache.log4j.Logger;

import javolution.text.TextBuilder;

import com.l2jfrozen.Config;
import com.l2jfrozen.gameserver.network.serverpackets.NpcHtmlMessage;
//import com.l2jfrozen.util.database.L2DatabaseFactory;
import com.l2jfrozen.sperocoin.SperocoindApi;
import com.l2jfrozen.sperocoin.SperocoindApiFactory;
import com.l2jfrozen.sperocoin.core.SperocoindConnector4JException;
import com.l2jfrozen.sperocoin.response.BlockchainInfo;
import com.l2jfrozen.sperocoin.response.NetworkInfo;
/**
* @author Francis Santana(SperoCoin Team)
*
*/

public class SperoCoin
{
	protected static final Logger LOGGER = Logger.getLogger(SperoCoin.class);
	public NpcHtmlMessage nhm = new NpcHtmlMessage(5);
	public TextBuilder replyMSG = new TextBuilder("");
	
		public String address = Config.RPC_IP;
		public int port = Config.RPC_PORT;
		public String protocol = "http";
		public String user = Config.RPC_USER;
		public String password = Config.RPC_PASS;
	
	SperocoindApi api = SperocoindApiFactory.createConnection(address, port, protocol, user, password);

	
	public void getInfo(String[] args) throws SperocoindConnector4JException
	{
		try {
			BlockchainInfo getblockchaininfo = api.getblockchaininfo();
			NetworkInfo getnetworkinfo = api.getnetworkinfo();
			
				replyMSG.append("<html><title>SPEROCOIN WALLET</title><body>");
				replyMSG.append("<br><br>");
				replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_2\"  width=300 height=32></center><br>");
				replyMSG.append("<br><br>");
				replyMSG.append("<font color=\"FFFF00\"><center>L2SPERO WALLET</center></font><br><br>");
				replyMSG.append("<font color=\"FFFF00\"><center>SPERO node information on this server</center></font><br>");
				replyMSG.append("<font color=\"FFFF00\"><center>Chain: </font>" + getblockchaininfo.getChain() + "</center><br>");
				replyMSG.append("<font color=\"FFFF00\"><center>Blocks: </font>" + getblockchaininfo.getBlocks() + "</center><br>");
				replyMSG.append("<font color=\"FFFF00\"><center>Connections: </font>" + getnetworkinfo.getConnections() + "</center><br>");
				replyMSG.append("<br><br>");
				replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_1\"  width=300 height=32></center><br>");
				replyMSG.append("<br><br>");
				replyMSG.append("</body></html>");
				
				//LOGGER.info("Data de compilacao: 26/08/2021 08:35");
				
		}catch (Exception e) {
			e.printStackTrace();
			//LOGGER.info("Erro! Data de compilacao: 26/08/2021 08:35");
		}
	}
}