package com.pack.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.pack.form.Search;

@Repository
public class SearchDaoImpl implements SearchDao {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Search> searchListPolicy(Integer policyId, String policyName, String companyName, String policyType,
			Integer numOfYears) {
		System.out.print("in search dao");
		Query q=sessionFactory.getCurrentSession().createQuery("from Policy p where p.id=:id and p.name=:name and p.company=:company and p.type=:type and p.years=:years");
		q.setParameter("id", policyId);
		q.setParameter("name",policyName);
		q.setParameter("company",companyName);
		q.setParameter("type",policyType);
		q.setParameter("years",numOfYears);
		System.out.print("befr list");
		List l=q.list();
		System.out.print("aftr lst");
		return l;
		
	}

	@Override
	public List<Search> searchCompanyName(String companyName) {
		System.out.print("Inside company dao");
		Query q=sessionFactory.getCurrentSession().createQuery("from Policy p where p.company=:company");
	
		q.setParameter("company",companyName);
	
		System.out.print("befr list");
		List l=q.list();
		System.out.print("aftr lst");
		return l;
	}

	@Override
	public List<Search> searchNumOfYears(Integer numOfYears) {
		Query q=sessionFactory.getCurrentSession().createQuery("from Policy p where p.years=:years");
		
		q.setParameter("years",numOfYears);
		System.out.print("befr list");
		List l=q.list();
		System.out.print("aftr lst");
		return l;
	}

	@Override
	public List<Search> searchPolicyId(Integer policyId) {
		System.out.print("dao id");
		Query q=sessionFactory.getCurrentSession().createQuery("from Policy p where p.id=:id");
		q.setParameter("id", policyId);
		System.out.print("befr list");
		List l=q.list();
		System.out.print("aftr lst");
		return l;
	}

	@Override
	public List<Search> searchPolicyName(String policyName) {
		Query q=sessionFactory.getCurrentSession().createQuery("from Policy p where p.name=:name");
		
		q.setParameter("name",policyName);

		System.out.print("befr list");
		List l=q.list();
		System.out.print("aftr lst");
		return l;
	}

	@Override
	public List<Search> searchPolicyType(String policyType) {
		Query q=sessionFactory.getCurrentSession().createQuery("from Policy p where p.type=:type");
	
		q.setParameter("type",policyType);
		
		System.out.print("befr list");
		List l=q.list();
		System.out.print("aftr lst");
		return l;
	}
	
	
}
