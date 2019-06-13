package com.pack.form;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="Vendor")
public class Vendor {
	
	@Id
	private int vendorId;
	
	@NotEmpty
	@Size(min=2,max=30)
	private String firstName;
	
	@NotEmpty
	@Size(min=2,max=30)
	private String lastName;
	
	@NotNull @Min(18) @Max(56)
	private Integer age;
	
	@NotEmpty
	private String gender;
	
	@NotEmpty
	private String contactNo;
	
	@NotEmpty
	private String password;
	
	@NotEmpty
	@Email
	private String email;
	
	
	
	public Vendor() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	public Vendor(int vendorId, String password) {
		super();
		this.vendorId = vendorId;
		this.password = password;
	}
	
	
	


	public Vendor(int vendorId, String firstName, String lastName, Integer age, String gender, String contactNo,
			String password, String email) {
		super();
		this.vendorId = vendorId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.gender = gender;
		this.contactNo = contactNo;
		this.password = password;
		this.email = email;
	}




	public int getVendorId() {
		return vendorId;
	}
	public void setVendorId(int vendorId) {
		this.vendorId = vendorId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}




	public void setLastName(String lastName) {
		this.lastName = lastName;
	}




	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	
	
	
	
	
	

}
