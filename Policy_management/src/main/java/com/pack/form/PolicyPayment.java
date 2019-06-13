package com.pack.form;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class PolicyPayment {
	private Integer pid;
	private Integer uid;
	@Id
	private Integer payid;
	
	private Integer termToPay;
	private Integer termPaid;
	private Integer transactionId;
	private Integer receptnumber;
	
	public Integer getReceptnumber() {
		return receptnumber;
	}
	public void setReceptnumber(Integer receptnumber) {
		this.receptnumber = receptnumber;
	}
	public Integer getTermToPay() {
		return termToPay;
	}
	public void setTermToPay(Integer termToPay) {
		this.termToPay = termToPay;
	}
	public Integer getTermPaid() {
		return termPaid;
	}
	public void setTermPaid(Integer termPaid) {
		this.termPaid = termPaid;
	}
	public Integer getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(Integer transactionId) {
		this.transactionId = transactionId;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getPayid() {
		return payid;
	}
	public void setPayid(Integer payid) {
		this.payid = payid;
	}
	
	
	
}
