package com.pack.form;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="customer",schema="bank1")
public class Customer {

	@Id
	@Column
	private Integer id;
	
	@NotEmpty
	@Size(min=2,max=30)

	private String name;
	
	@Size(min=2,max=30)
	@Column(name="address")
	private String address;
	
	@NotNull @Min(18) @Max(100)
	private Integer age;
	
	
	@NotNull
	private Double salery;
	
	public Customer() {
		// TODO Auto-generated constructor stub
	}
	
	
	public Customer(Integer id, String name, String address, Integer age, Double salery) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.age = age;
		this.salery = salery;
	}

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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public Double getSalery() {
		return salery;
	}
	public void setSalery(Double salery) {
		this.salery = salery;
	}
	
	
	
	

}
