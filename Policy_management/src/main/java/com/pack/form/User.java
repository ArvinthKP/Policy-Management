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
@Table(name="User")
public class User {

	@Id
	private int userId;
	
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
	
	@NotEmpty
	private String dob;
	
	@NotEmpty
	private String address;
	
	@NotEmpty
	private String qualification;
	
	
	private Double salaryPerMonth;
	
	@NotEmpty
	private String panNo;
	
	@NotEmpty
	private String employerType;
	
	@NotEmpty
	private String employer;
	
	@NotEmpty
	private String hintQuestion;
	
	@NotEmpty
	private String hintAnswer;
	

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
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

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public Double getSalaryPerMonth() {
		return salaryPerMonth;
	}

	public void setSalaryPerMonth(Double salaryPerMonth) {
		this.salaryPerMonth = salaryPerMonth;
	}

	public String getPanNo() {
		return panNo;
	}

	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}

	public String getEmployerType() {
		return employerType;
	}

	public void setEmployerType(String employerType) {
		this.employerType = employerType;
	}

	public String getEmployer() {
		return employer;
	}

	public void setEmployer(String employer) {
		this.employer = employer;
	}

	public String getHintQuestion() {
		return hintQuestion;
	}

	public void setHintQuestion(String hintQuestion) {
		this.hintQuestion = hintQuestion;
	}

	public String getHintAnswer() {
		return hintAnswer;
	}

	public void setHintAnswer(String hintAnswer) {
		this.hintAnswer = hintAnswer;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(int userId, String password) {
		super();
		this.userId = userId;
		this.password = password;
	}

	public User(int userId, String firstName, String lastName, Integer age, String gender, String contactNo,
			String password, String email, String dob, String address, String qualification, Double salaryPerMonth,
			String panNo, String employerType, String employer, String hintQuestion, String hintAnswer) {
		super();
		this.userId = userId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.gender = gender;
		this.contactNo = contactNo;
		this.password = password;
		this.email = email;
		this.dob = dob;
		this.address = address;
		this.qualification = qualification;
		this.salaryPerMonth = salaryPerMonth;
		this.panNo = panNo;
		this.employerType = employerType;
		this.employer = employer;
		this.hintQuestion = hintQuestion;
		this.hintAnswer = hintAnswer;
	}
	
	
	
	
}
