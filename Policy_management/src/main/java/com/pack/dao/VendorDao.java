package com.pack.dao;

import com.pack.form.Vendor;
import com.pack.form.VendorLoginModel;

public interface VendorDao {
	public int VendorLogin(VendorLoginModel vendorLoginModel);
	
	public void addAdmin(Vendor vendor);
}
