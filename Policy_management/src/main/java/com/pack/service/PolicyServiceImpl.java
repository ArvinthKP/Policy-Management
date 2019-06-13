package com.pack.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pack.dao.PolicyDao;
import com.pack.form.Policy;

@Service
public class PolicyServiceImpl implements PolicyService{
	private PolicyDao policyDao;

	public void setPolicyDao(PolicyDao policyDao) {
		this.policyDao = policyDao;
	}

private static Logger log=Logger.getLogger(PolicyServiceImpl.class);

@Transactional
	public void addPolicy(Policy p) {
		log.info("inside service add Policy");
		policyDao.addPolicy(p);
		
	}

@Transactional
	public void updatePolicy(Policy p) {
		log.info("inside service update Policy");
		policyDao.updatePolicy(p);
		
	}

@Transactional
	public List<Policy> listPolicy() {
		List<Policy> l=policyDao.listPolicy();
		return l;
	}

@Transactional
	public Policy getPolicyById(Integer cid) {
	Policy p=policyDao. getPolicyById(cid);
		return p;
	}

@Transactional
	public void removePolicy(Integer cid) {
		log.info("inside service delete Policy");
		policyDao.removePolicy(cid);
		
	}

@Transactional
public List<Policy> listUserPolicy(Integer uid) {
	List<Policy> l=policyDao.listUserPolicy(uid);
	return l;
}

@Transactional
public List<Policy> listUserBoughtPolicy(Integer uid) {
	List<Policy> l=policyDao.listUserBoughtPolicy(uid);
	return l;
}



}
