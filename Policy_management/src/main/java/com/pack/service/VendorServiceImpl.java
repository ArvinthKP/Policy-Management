package com.pack.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.pack.dao.VendorDao;
import com.pack.form.Vendor;
import com.pack.form.VendorLoginModel;

@Service
public class VendorServiceImpl implements VendorService{

	
	private VendorDao vendorDao;
	
	@Autowired(required=true)
	@Qualifier(value="vendorDao")
	public void setVendorDao(VendorDao vendorDao) {
		this.vendorDao = vendorDao;
	}

	@Transactional
	public int VendorLogin(VendorLoginModel vendorLoginModel) {
		
		int result;
		result =vendorDao.VendorLogin(vendorLoginModel);
		return result;
	}

	@Transactional
	public void addAdmin(Vendor vendor) {
		
		vendorDao.addAdmin(vendor);
		
	}

	
}
