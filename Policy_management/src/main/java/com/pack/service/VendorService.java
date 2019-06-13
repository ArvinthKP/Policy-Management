package com.pack.service;

import com.pack.form.Vendor;
import com.pack.form.VendorLoginModel;

public interface VendorService {
	public int VendorLogin(VendorLoginModel vendorLoginModel);
	
	public void addAdmin(Vendor vendor);
}
