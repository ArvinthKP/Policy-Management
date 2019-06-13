package com.pack.form;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="Policy")
public class Policy {
	@Id
	@Column(name="ID")
private Integer id;
	@NotEmpty
	@Column(name="NAME")
	@Size(min=2,max=30)
private String name;
	@NotEmpty
private String type;
@Column(name="Years")
@NotNull @Min(2) 
private Integer years;
@NotEmpty
private String company;
@NotNull 
private Double initial_deposit;
@NotEmpty
private String user_type;
@NotNull 
private Double term_amount;
@NotNull 
private Float interest;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public Integer getYears() {
	return years;
}
public void setYears(Integer years) {
	this.years = years;
}
public String getCompany() {
	return company;
}
public void setCompany(String company) {
	this.company = company;
}
public Double getInitial_deposit() {
	return initial_deposit;
}
public void setInitial_deposit(Double initial_deposit) {
	this.initial_deposit = initial_deposit;
}
public String getUser_type() {
	return user_type;
}
public void setUser_type(String user_type) {
	this.user_type = user_type;
}
public Double getTerm_amount() {
	return term_amount;
}
public void setTerm_amount(Double term_amount) {
	this.term_amount = term_amount;
}
public Float getInterest() {
	return interest;
}
public void setInterest(Float interest) {
	this.interest = interest;
}
public Policy(Integer id, String name, String type, Integer years, String company, Double initial_deposit,
		String user_type, Double term_amount, Float interest) {
	super();
	this.id = id;
	this.name = name;
	this.type = type;
	this.years = years;
	this.company = company;
	this.initial_deposit = initial_deposit;
	this.user_type = user_type;
	this.term_amount = term_amount;
	this.interest = interest;
}
public Policy() {
	super();
	// TODO Auto-generated constructor stub
}



}
