package com.pack.service;

import java.util.List;

import com.pack.form.Search;

public interface SearchService {
	public List<Search> searchListPolicy(Integer policyId, String policyName, String companyName, String policyType,
			Integer numOfYears);

	public List<Search> searchCompanyName(String companyName);

	public List<Search> searchNumOfYears(Integer numOfYears);

	public List<Search> searchPolicyId(Integer policyId);

	public List<Search> searchPolicyName(String policyName);

	public List<Search> searchPolicyType(String policyType);


}
