package com.pack.dao;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.pack.form.PolicyPayment;
import com.pack.form.User;
import com.pack.form.UserLoginModel;

@Repository
public class UserDaoImpl implements UserDao {

	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public int UserLogin(UserLoginModel userLoginModel) {
		// TODO Auto-generated method stub
		
		User user=null;
		try 
		{
		Query query=sessionFactory.getCurrentSession().createQuery("from User u where u.userId=:id");
		query.setParameter("id", userLoginModel.getUserId());
		user=(User)query.uniqueResult();
		}
		catch (Exception e) {
			System.out.println(e);
			return 2;
		}
		System.out.println(user.getPassword());
		System.out.println(userLoginModel.getUserPassword());
		if(user.getPassword().equals(userLoginModel.getUserPassword())) 
		{
			return 1;
		}
		else
		{
			return 0;
		}
		
	}

	@Override
	public void addUser(User user) {

		sessionFactory.getCurrentSession().save(user);	
		
	}

	@Override
	public void addPayment(PolicyPayment pp) {
		sessionFactory.getCurrentSession().save(pp);
		
	}

	@Override
	public PolicyPayment fetchPayment(Integer uid, Integer cid) {
		
		Query q= sessionFactory.getCurrentSession().createQuery("from PolicyPayment p where p.uid=:uid and p.pid=:cid");
		q.setParameter("cid", cid);
		q.setParameter("uid",uid);
		PolicyPayment p = (PolicyPayment)q.uniqueResult();
		
		return p;
	}

	@Override
	public User fetchUser(int userid) {
		Query query=sessionFactory.getCurrentSession().createQuery("from User u where u.userId=:userid");
		query.setParameter("userid", userid);
		User user=(User)query.uniqueResult();
		return user;
	}

}
