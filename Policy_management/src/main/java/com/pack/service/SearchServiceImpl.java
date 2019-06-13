package com.pack.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.pack.dao.SearchDao;
import com.pack.form.Search;

@Service
public class SearchServiceImpl implements SearchService, SearchDao {

	private SearchDao searchDao;

	public void setSearchDao(SearchDao searchDao) {
		this.searchDao = searchDao;
	}

	@Transactional
	public List<Search> searchListPolicy(Integer policyId, String policyName, String companyName, String policyType,
			Integer numOfYears) {
		System.out.print("in search serv");	
		List l=searchDao.searchListPolicy(policyId, policyName, companyName, policyType, numOfYears);
		return l;
	}

	@Transactional
	public List<Search> searchCompanyName(String companyName) {
		System.out.print("inside company service");
		List l=searchDao.searchCompanyName(companyName);
		return l;
	}

	@Transactional
	public List<Search> searchNumOfYears(Integer numOfYears) {
		List l=searchDao.searchNumOfYears(numOfYears);
		return l;
	}

	@Transactional
	public List<Search> searchPolicyId(Integer policyId) {
		System.out.print("id service");
		List l=searchDao.searchPolicyId(policyId);
		return l;
	}

	@Transactional
	public List<Search> searchPolicyName(String policyName) {
		List l=searchDao.searchPolicyName(policyName);
		return l;
	}

	@Transactional
	public List<Search> searchPolicyType(String policyType) {
		List l=searchDao.searchPolicyType(policyType);
		return l;
	}
	
	
}
