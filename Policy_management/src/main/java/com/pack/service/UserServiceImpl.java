package com.pack.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.pack.dao.UserDao;
import com.pack.form.PolicyPayment;
import com.pack.form.User;
import com.pack.form.UserLoginModel;

@Service
public class UserServiceImpl implements UserService {

	private UserDao userDao;
	
	
	@Autowired(required=true)
	@Qualifier(value="userDao")
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Transactional
	public int UserLogin(UserLoginModel userLoginModel) {
		int result;
		result =userDao.UserLogin(userLoginModel);
		return result;
	}

	@Transactional
	public void addUser(User user) {

		userDao.addUser(user);
		
	}

	@Transactional
	public void addPayment(PolicyPayment pp) {
		userDao.addPayment(pp);
		
	}

	@Transactional
	public PolicyPayment fetchPayment(Integer uid, Integer cid) {
		PolicyPayment pp = userDao.fetchPayment(uid,cid);
		return pp;
	}

	@Transactional
	public User fetchUser(int userid) {
		return userDao.fetchUser(userid);
	}

}
