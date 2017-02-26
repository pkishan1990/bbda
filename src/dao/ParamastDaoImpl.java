package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import entity.Paramaster;
import filter.MultiTenantConnectionProviderImpl;

@Repository
public class ParamastDaoImpl extends HibernateDaoSupport implements ParamastDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<Paramaster> getSchoolFromParamast() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		String HSQL = "From Paramaster  where type = 'SCHOOL' order by trim(to_number(code)) ";
		session.createQuery(HSQL).list();
		List<Paramaster> ls =(List<Paramaster>)session.createQuery(HSQL).list();
		session.close();
		return ls;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Paramaster> getFromParamast(String TYPE) {
		// TODO Auto-generated method stub
//		Session session = this.sessionFactory.openSession();
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions()
				.tenantIdentifier(impl.APPLICATION_USER).openSession();
		String HSQL = "From Paramaster  where type = '"+TYPE+"' ";
		session.createQuery(HSQL).list();
		List<Paramaster> ls =(List<Paramaster>)session.createQuery(HSQL).list();
		session.close();
		return ls;
	}
	

}
