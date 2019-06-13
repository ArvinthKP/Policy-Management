package com.pack.service;

import java.util.List;

import com.pack.form.Policy;

public interface PolicyService {
	public void addPolicy(Policy p);
	public void updatePolicy(Policy p);
	public List<Policy> listPolicy(); 
	public Policy getPolicyById(Integer cid);
	public void removePolicy( Integer cid);	
	public List<Policy> listUserPolicy(Integer uid);
	public List<Policy> listUserBoughtPolicy(Integer uid);
	
	
	
}
