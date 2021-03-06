package com.pack.dao;

import com.pack.form.PolicyPayment;
import com.pack.form.User;
import com.pack.form.UserLoginModel;

public interface UserDao {
	public int UserLogin(UserLoginModel userLoginModel);
	
	public void addUser(User user);

	public void addPayment(PolicyPayment pp);

	public PolicyPayment fetchPayment(Integer uid, Integer cid);
	
	public User fetchUser(int userid);
}
