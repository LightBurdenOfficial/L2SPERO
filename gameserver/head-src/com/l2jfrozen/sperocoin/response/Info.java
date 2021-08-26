/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.l2jfrozen.sperocoin.response;


/**
 *  @author Sebastian Dziak {@literal (sebastian.dziak@sulacosoft.com)}
 */
public class Info extends BaseResponse {

	private Double balance;
	private Double moneysupply;
	private long blocks;
	private long connections;
	private Double difficulty;
	private String errors;
	private long keypoololdest;
	private long keypoolsize;
	private Double paytxfee;
	private long protocolversion;
	private String proxy;
	private Double relayfee;
	private boolean testnet;
	private long timeoffset;
	private String version;
	private int walletversion;

	public Double getBalance() {
		return balance;
	}

	public void setBalance(Double balance) {
		this.balance = balance;
	}
	
	public Double getMoneySupply() {
		return moneysupply;
	}
	
	public void setMoneySupply(Double moneysupply) {
		this.moneysupply = moneysupply;
	}

	public long getBlocks() {
		return blocks;
	}

	public void setBlocks(long blocks) {
		this.blocks = blocks;
	}

	public long getConnections() {
		return connections;
	}

	public void setConnections(long connections) {
		this.connections = connections;
	}

	public Double getDifficulty() {
		return difficulty;
	}

	public void setDifficulty(Double difficulty) {
		this.difficulty = difficulty;
	}

	public String getErrors() {
		return errors;
	}

	public void setErrors(String errors) {
		this.errors = errors;
	}

	public long getKeypoololdest() {
		return keypoololdest;
	}

	public void setKeypoololdest(long keypoololdest) {
		this.keypoololdest = keypoololdest;
	}

	public long getKeypoolsize() {
		return keypoolsize;
	}

	public void setKeypoolsize(long keypoolsize) {
		this.keypoolsize = keypoolsize;
	}

	public Double getPaytxfee() {
		return paytxfee;
	}

	public void setPaytxfee(Double paytxfee) {
		this.paytxfee = paytxfee;
	}

	public long getProtocolversion() {
		return protocolversion;
	}

	public void setProtocolversion(long protocolversion) {
		this.protocolversion = protocolversion;
	}

	public String getProxy() {
		return proxy;
	}

	public void setProxy(String proxy) {
		this.proxy = proxy;
	}

	public Double getRelayfee() {
		return relayfee;
	}

	public void setRelayfee(Double relayfee) {
		this.relayfee = relayfee;
	}

	public boolean getTestnet() {
		return testnet;
	}

	public void setTestnet(boolean testnet) {
		this.testnet = testnet;
	}

	public long getTimeoffset() {
		return timeoffset;
	}

	public void setTimeoffset(long timeoffset) {
		this.timeoffset = timeoffset;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	public int getWalletversion() {
		return walletversion;
	}

	public void setWalletversion(int walletversion) {
		this.walletversion = walletversion;
	}

	@Override
	public String toString() {
		return "GetInfo [version=" + version + " , protocolversion=" + protocolversion + ", walletversion=" + walletversion + ", blocks=" + blocks + ", timeoffset="
			+ timeoffset + ", moneysupply=" + moneysupply + ", connections=" + connections + ", testnet=" + testnet + ", keypoololdest=" + keypoololdest + ", keypoolsize="
			+ keypoolsize + ", paytxfee=" + paytxfee + ", errors=" + errors + "]";
		/*return "GetInfo [balance=" + balance + ", blocks=" + blocks + ", connections=" + connections + ", difficulty="
				+ difficulty + ", errors=" + errors + ", keypoololdest=" + keypoololdest + ", keypoolsize="
				+ keypoolsize + ", paytxfee=" + paytxfee + ", protocolversion=" + protocolversion + ", proxy=" + proxy
				+ ", relayfee=" + relayfee + ", testnet=" + testnet + ", timeoffset=" + timeoffset + ", version="
				+ version + ", walletversion=" + walletversion + "]";*/
	}

}