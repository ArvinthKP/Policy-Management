
package com.pack.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.pack.form.Policy;
import com.pack.service.PolicyServiceImpl;

@Repository
public class PolicyDaoImpl implements PolicyDao{
	private SessionFactory sessionFactory;
	

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private static Logger log=Logger.getLogger(PolicyServiceImpl.class);
	
	
	@Override
	public void addPolicy(Policy p) {
		log.info("inside dao add policy");
		sessionFactory.getCurrentSession().save(p);
		
	}

	@Override
	public void updatePolicy(Policy p) {
		log.info("inside dao update customer");
		sessionFactory.getCurrentSession().update(p);	
		
	}

	@Override
	public List<Policy> listPolicy() {
		Query q=sessionFactory.getCurrentSession().createQuery("from Policy");
		List l=q.list();
		return l;	}

	@Override
	public Policy getPolicyById(Integer cid) {
		Query q=sessionFactory.getCurrentSession().createQuery("from Policy p where p.id=:id");
		q.setParameter("id", cid);
		Policy p=(Policy)q.uniqueResult();
		return p;
	}

	@Override
	public void removePolicy(Integer cid) {
		Policy p=(Policy)sessionFactory.getCurrentSession().get(Policy.class, cid);
		if(p!=null)
		{
			sessionFactory.getCurrentSession().delete(p);
		}
		
	}


	public List<Policy> listUserPolicy(Integer uid) {
		System.out.println("control entered here");
		Session session = sessionFactory.getCurrentSession();
	//	Transaction tx = session.beginTransaction();
		//SQLQuery query = session.createSQLQuery("select * from policy where id not in (select pid from policypayment where uid= :uid)");
		//query.setParameter("uid", uid);
		//List l= query.list();
		//System.out.println("list->"+l);
//		Query q=sessionFactory.getCurrentSession().createQuery("from Policy as po where po.id not in ( from PolicyPayment p where p.uid=:uid)  ");
//		
//		
//		List l=null; 
//		l=q.list();
		//Query q=sessionFactory.getCurrentSession().createSQLQuery("select * from policy where id not in (select pid from policypayment where uid=2346865)");
		//q.setParameter(1, uid);
		List l=null; 
		Query q=sessionFactory.getCurrentSession().createQuery("from Policy as po where po.id not in ( select p.pid from PolicyPayment p where p.uid=:uid)  ");
		q.setParameter("uid", uid);
		l=q.list();
		System.out.println(uid);
		System.out.println("list->"+l);
		return l;
	}

	@Override
	public List<Policy> listUserBoughtPolicy(Integer uid) {
		Session session = sessionFactory.getCurrentSession();
		List l=null; 
		Query q=sessionFactory.getCurrentSession().createQuery("from Policy as po where po.id  in ( select p.pid from PolicyPayment p where p.uid=:uid)  ");
		q.setParameter("uid", uid);
		l=q.list();
		System.out.println(uid);
		System.out.println("list->"+l);
		return l;
	}

	

}
