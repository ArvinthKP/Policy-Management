package com.pack.dao;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.pack.form.Vendor;
import com.pack.form.VendorLoginModel;

@Repository
public class VendorDaoImpl implements VendorDao {

	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	@Override
	public int VendorLogin(VendorLoginModel vendorLoginModel) {
		Vendor vendor=null;
		try 
		{
		Query query=sessionFactory.getCurrentSession().createQuery("from Vendor v where v.vendorId=:id");
		query.setParameter("id", vendorLoginModel.getVendorId());
		vendor=(Vendor)query.uniqueResult();
		}
		catch (Exception e) {
			System.out.println(e);
			return 2;
		}
		System.out.println(vendor.getPassword());
		System.out.println(vendorLoginModel.getVendorPassword());
		if(vendor.getPassword().equals(vendorLoginModel.getVendorPassword())) 
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}


	@Override
	public void addAdmin(Vendor vendor) {
		
		sessionFactory.getCurrentSession().save(vendor);
	}

}
