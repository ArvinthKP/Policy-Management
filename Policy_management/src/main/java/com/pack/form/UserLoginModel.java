package com.pack.form;

public class UserLoginModel {

	private int userId;
	private String userPassword;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public UserLoginModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserLoginModel(int userId, String userPassword) {
		super();
		this.userId = userId;
		this.userPassword = userPassword;
	}
	
	
}
