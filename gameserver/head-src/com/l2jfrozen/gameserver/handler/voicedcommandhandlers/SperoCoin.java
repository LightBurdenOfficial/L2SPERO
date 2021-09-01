package com.l2jfrozen.gameserver.handler.voicedcommandhandlers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import org.apache.log4j.Logger;

import javolution.text.TextBuilder;

import com.l2jfrozen.Config;
import com.l2jfrozen.gameserver.network.serverpackets.NpcHtmlMessage;
import com.l2jfrozen.gameserver.model.L2Character;
import com.l2jfrozen.gameserver.model.actor.instance.L2PcInstance;
import com.l2jfrozen.gameserver.thread.ThreadPoolManager;

import com.l2jfrozen.sperocoin.SperocoindApi;
import com.l2jfrozen.sperocoin.SperocoindApiFactory;
import com.l2jfrozen.sperocoin.core.SperocoindConnector4JException;
import com.l2jfrozen.sperocoin.response.BlockchainInfo;
import com.l2jfrozen.sperocoin.response.NetworkInfo;

import com.l2jfrozen.util.random.Rnd;
import com.l2jfrozen.util.database.L2DatabaseFactory;

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
				replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_1\"  width=300 height=32></center><br>");
				replyMSG.append("<br><br>");
				replyMSG.append("<font color=\"FFFF00\"><center>L2SPERO WALLET</center></font><br><br>");
				replyMSG.append("<font color=\"FFFF00\"><center>SPERO node information on this server</center></font><br>");
				replyMSG.append("<font color=\"FFFF00\"><center>Chain: </font>" + getblockchaininfo.getChain() + "</center><br>");
				replyMSG.append("<font color=\"FFFF00\"><center>Blocks: </font>" + getblockchaininfo.getBlocks() + "</center><br>");
				replyMSG.append("<font color=\"FFFF00\"><center>Connections: </font>" + getnetworkinfo.getConnections() + "</center><br>");
				replyMSG.append("<br><br>");
				replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_2\"  width=300 height=32></center><br>");
				replyMSG.append("<br><br>");
				replyMSG.append("</body></html>");
				
		}catch (Exception e) {
			e.printStackTrace();
			LOGGER.info("GETINFO - Error!");
		}
	}
	
	
	public void getNewAddress(String[] args, L2PcInstance activeChar) throws SperocoindConnector4JException
	{
		Connection con = null;
		try {
			con = L2DatabaseFactory.getInstance().getConnection(false);
			PreparedStatement statement = con.prepareStatement("SELECT account_name, obj_Id, char_name, speroAddress_dep, speroAddress_with FROM characters WHERE obj_Id = ?");
			statement.setInt(1, activeChar.getObjectId());
			ResultSet resultQuery = statement.executeQuery();
			
			resultQuery.next();
			
			String nameActiveChar = activeChar.getName();
			String speroAddress_dep = resultQuery.getString("speroAddress_dep");
			
			if(nameActiveChar != null) {
				if(speroAddress_dep == null)
				{
					String getnewaddress = api.getnewaddress(nameActiveChar);
					PreparedStatement insertAddress = con.prepareStatement("UPDATE characters SET speroAddress_dep=? WHERE obj_Id = ?");
					insertAddress.setString(1, getnewaddress);
					insertAddress.setInt(2, activeChar.getObjectId());
					int resultQueryInsert = insertAddress.executeUpdate();
					
					replyMSG.append("<html><title>SPEROCOIN WALLET</title><body>");
					replyMSG.append("<br><br>");
					replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_1\"  width=300 height=32></center><br>");
					replyMSG.append("<br><br>");
					replyMSG.append("<center>New SPERO address created!</center><br>");
					replyMSG.append("<center>" + getnewaddress + "</center><br>");
					replyMSG.append("<center>Your new address and wallet data are</center><br>");
					replyMSG.append("<center>available with the .spero_wallet command</center>");
					replyMSG.append("<br><br>");
					replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_2\"  width=300 height=32></center><br>");
					replyMSG.append("<br><br>");
					replyMSG.append("</body></html>");
				} else {
					replyMSG.append("<html><title>SPEROCOIN WALLET</title><body>");
					replyMSG.append("<br><br>");
					replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_1\"  width=300 height=32></center><br>");
					replyMSG.append("<br><br>");
					replyMSG.append("<center>You already have an address created!</center><br>");
					replyMSG.append("<center>Check your SPERO address by</center><br>");
					replyMSG.append("<center>sending the command .spero_wallet</center>");
					replyMSG.append("<br><br>");
					replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_2\"  width=300 height=32></center><br>");
					replyMSG.append("<br><br>");
					replyMSG.append("</body></html>");
				}
			} else {
				LOGGER.info("Error generating and entering address! Null username.");
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			LOGGER.info("GETNEWADDRESS - Error generating and entering address!");
		}
	}
	
	public void getWallet(String[] args, L2PcInstance activeChar) throws SperocoindConnector4JException
	{
		
		Connection con = null;
		
		try {
			NumberFormat formatter = new DecimalFormat("#0.00000000");
			con = L2DatabaseFactory.getInstance().getConnection(false);
			
			PreparedStatement statementDB = con.prepareStatement("SELECT *, SUM(tot_amt) AS TOTALBALANCE FROM walletnotify AS w INNER JOIN characters AS c ON w.address = c.speroAddress_dep WHERE c.obj_Id = ? AND w.confirmations >= 10");
			statementDB.setInt(1, activeChar.getObjectId());
			ResultSet resultQueryDB = statementDB.executeQuery();
			
			PreparedStatement statementwallet = con.prepareStatement("SELECT speroAddress_dep FROM characters WHERE obj_Id = ?");
			statementwallet.setInt(1, activeChar.getObjectId());
			ResultSet resultQueryWallet = statementwallet.executeQuery();
			
			String nameActiveChar = activeChar.getName();

				if(resultQueryWallet.next()) {
					String speroAddress_dep = resultQueryWallet.getString("speroAddress_dep");
					
					if(speroAddress_dep == null) {
						replyMSG.append("<html><title>SPEROCOIN WALLET</title><body>");
						replyMSG.append("<br><br>");
						replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_1\"  width=300 height=32></center><br>");
						replyMSG.append("<font color=\"FFFF00\"><center>You don't have wallet data yet, please generate</font></center><br>");
						replyMSG.append("<font color=\"FFFF00\"><center>new address with the command .spero_getnewaddress</font></center><br>");
						replyMSG.append("<br><br>");
						replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_2\"  width=300 height=32></center><br>");
						replyMSG.append("<br><br>");
						replyMSG.append("</body></html>");
					} else {
						if(resultQueryDB.next()) {
							Double speroBalance = resultQueryDB.getDouble("TOTALBALANCE");
							String speroWalletAddress = resultQueryDB.getString("address");
							
							if(speroWalletAddress != null) {
								replyMSG.append("<html><title>SPEROCOIN WALLET</title><body>");
								replyMSG.append("<br><br>");
								replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_1\"  width=300 height=32></center><br>");
								replyMSG.append("<br><br>");
								replyMSG.append("<font color=\"FFFF00\"><center>L2SPERO WALLET</center></font><br><br>");
								replyMSG.append("<font color=\"FFFF00\"><center>WALLET INFORMATION</center></font><br>");
								replyMSG.append("<font color=\"FFFF00\"><center>Name: </font>" + nameActiveChar + "</center><br>");
								replyMSG.append("<font color=\"FFFF00\"><center>Deposit Address: </font>" + speroAddress_dep + "</center><br>");
								replyMSG.append("<font color=\"FFFF00\"><center>Balance: </font>" + formatter.format(speroBalance) + "</center><br>");
								replyMSG.append("<br><br>");
								replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_2\"  width=300 height=32></center><br>");
								replyMSG.append("<br><br>");
								replyMSG.append("</body></html>");
							} else {
								replyMSG.append("<html><title>SPEROCOIN WALLET</title><body>");
								replyMSG.append("<br><br>");
								replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_1\"  width=300 height=32></center><br>");
								replyMSG.append("<br><br>");
								replyMSG.append("<font color=\"FFFF00\"><center>L2SPERO WALLET</center></font><br><br>");
								replyMSG.append("<font color=\"FFFF00\"><center>WALLET INFORMATION</center></font><br>");
								replyMSG.append("<font color=\"FFFF00\"><center>Name: </font>" + nameActiveChar + "</center><br>");
								replyMSG.append("<font color=\"FFFF00\"><center>Deposit Address: </font>" + speroAddress_dep + "</center><br>");
								replyMSG.append("<font color=\"FFFF00\"><center>Balance: </font>No Balance</center><br>");
								replyMSG.append("<br><br>");
								replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_2\"  width=300 height=32></center><br>");
								replyMSG.append("<br><br>");
								replyMSG.append("</body></html>");
							}
						}else {
							LOGGER.info("NO RESULTS IN QUERY resultQueryDB");
						}
					}
				} else {
					LOGGER.info("NO RESULTS IN QUERY resultQueryWallet");
				}

		}catch (Exception e) {
			e.printStackTrace();
			LOGGER.info("GETWALLET - Error!");
		}
	}
	
	public class Deposits {
	    private String txId;
	    private Double tot_amt;
	    public Deposits(String txId, Double tot_amt){
	        this.txId = txId;
	        this.tot_amt = tot_amt;
	    }
	    public String txId() {
	        return txId;
	    }
	    public void setTxId(String txId) {
	        this.txId = txId;
	    }
	    
	    public double getTotAmt() {
	        return tot_amt;
	    }
	    public void setTotAmt(Double tot_amt) {
	        this.tot_amt = tot_amt;
	    }
 	}
	
	public ArrayList<Deposits> getDeposits(Connection connection, L2PcInstance activeChar, int orderId) throws SperocoindConnector4JException
	{
	    ArrayList<Deposits> depositsList = new ArrayList<Deposits>();
	    Connection con = null;
	    try
	    {
	    	NumberFormat formatter = new DecimalFormat("#0.00000000");
	    	con = L2DatabaseFactory.getInstance().getConnection(false);
	    	PreparedStatement statementListDeposits = con.prepareStatement("SELECT txid,tot_amt FROM walletnotify AS w INNER JOIN characters AS c ON w.address = c.speroAddress_dep WHERE c.obj_Id = ? LIMIT 5");
	    	statementListDeposits.setInt(1, activeChar.getObjectId());
			ResultSet resultQueryListDeposits = statementListDeposits.executeQuery();
		
		            replyMSG.append("<html><title>SPEROCOIN WALLET</title><body>");
					replyMSG.append("<br><br>");
					replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_1\"  width=300 height=32></center><br>");
					replyMSG.append("<br><br>");
					replyMSG.append("<font color=\"FFFF00\"><center>L2SPERO WALLET</center></font><br><br>");
					replyMSG.append("<font color=\"FFFF00\"><center>TRANSACTIONS LIST</center></font><br>");
					replyMSG.append("<font color=\"FFFF00\"><center>Deposits</font></center><br>");
					replyMSG.append("<center>"
						+ "<table width=300>"
						+ "<tbody>"
						+ "<tr>"
						+ "<font color=\"FF33FF\"><td>TXID</td><td>AMOUNT</td></font>"
						+ "</tr>");
					while(resultQueryListDeposits.next()) {
						String txId = resultQueryListDeposits.getString(1);
					    Double tot_amt = resultQueryListDeposits.getDouble(2);
					    String substringTxID = txId.substring(0, 25);
					            
						replyMSG.append("<tr><td>" + substringTxID + "</td>"
						+ "<td>" + formatter.format(tot_amt) + "</td>"
						+"</tr>");
					}
						replyMSG.append("</tbody>"
						+ "</table>"
						+ "</center>");
					replyMSG.append("<br><br>");
					replyMSG.append("<center><img src=\"L2UI_CH3.onscrmsg_pattern01_2\"  width=300 height=32></center><br>");
					replyMSG.append("<br><br>");
					replyMSG.append("</body></html>");
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	    return depositsList;
	}
	
}