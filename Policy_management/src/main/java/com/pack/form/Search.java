package com.pack.form;

public class Search {

	
	private Integer policyId;
	public void setPolicyId(Integer policyId) {
		this.policyId = policyId;
	}
	public Integer getPolicyId() {
		return policyId;
	}
	public Search(Integer policyId, String policyType, Integer numOfYears, String companyName, String policyName) {
		super();
		this.policyId = policyId;
		this.policyType = policyType;
		this.numOfYears = numOfYears;
		this.companyName = companyName;
		this.policyName = policyName;
	}
	private String policyType;
	private Integer 	numOfYears;
	private String 	companyName;
	private String 	policyName;
	
	public String getPolicyType() {
		return policyType;
	}
	public void setPolicyType(String policyType) {
		this.policyType = policyType;
	}
	public Integer getNumOfYears() {
		return numOfYears;
	}
	public void setNumOfYears(Integer numOfYears) {
		this.numOfYears = numOfYears;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getPolicyName() {
		return policyName;
	}
	public void setPolicyName(String policyName) {
		this.policyName = policyName;
	}
	public Search() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
