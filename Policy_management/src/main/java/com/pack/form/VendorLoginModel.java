package com.pack.form;

public class VendorLoginModel {

	
	private int vendorId;
	private String vendorPassword;
	
	
	
	
	public VendorLoginModel(int vendorId, String vendorPassword) {
		super();
		this.vendorId = vendorId;
		this.vendorPassword = vendorPassword;
	}
	public int getVendorId() {
		return vendorId;
	}
	public void setVendorId(int vendorId) {
		this.vendorId = vendorId;
	}
	public String getVendorPassword() {
		return vendorPassword;
	}
	public void setVendorPassword(String vendorPassword) {
		this.vendorPassword = vendorPassword;
	}
	
	
	
}
