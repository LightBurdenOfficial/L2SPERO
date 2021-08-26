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

import java.util.Arrays;

/**
 *  @author Sebastian Dziak {@literal (sebastian.dziak@sulacosoft.com)}
 */
public class ReceivedByAddress {

	private String[] txids;

	private String account;
	private String address;
	private Double amount;
	private int confirmations;

	public String[] getTxids() {
		return txids;
	}

	public void setTxids(String[] txids) {
		this.txids = txids;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Double getAmount() {
		return amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

	public int getConfirmations() {
		return confirmations;
	}

	public void setConfirmations(int confirmations) {
		this.confirmations = confirmations;
	}

	@Override
	public String toString() {
		return "ReceivedByAddress [txids=" + Arrays.toString(txids) + ", account=" + account + ", address=" + address
				+ ", amount=" + amount + ", confirmations=" + confirmations + "]";
	}

}
