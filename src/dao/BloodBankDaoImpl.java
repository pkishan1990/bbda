package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import entity.Bloodbankmaster;
import entity.Donor;
import entity.Inventory;
import filter.MultiTenantConnectionProviderImpl;
@Repository
public class BloodBankDaoImpl extends HibernateDaoSupport implements BloodBankDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Bloodbankmaster> getListofBloodBanks() {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		List<entity.Bloodbankmaster> ls =   session.createQuery("From Bloodbankmaster ").list();
		tx.commit();
		session.close();
		return ls;
		
		
	}
	
	@Override
	public List<Donor> getListofDonors() {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		List<entity.Donor> ls =   session.createQuery("From Donor").list();
		tx.commit();
		session.close();
		return ls;
		
		
	}
	@Override
	public List<Donor> searchInDonors(String searchStr) {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		List<entity.Donor> ls =   session.createQuery("From Donor where upper(firstname) like upper('%"+searchStr+"%') or upper(lastname) like upper('%"+searchStr+"%') ").list();
		tx.commit();
		session.close();
		
		System.out.println("search result found: "+ls.size());
		return ls;
		
		
	}

	@Override
	public List<Bloodbankmaster> searchInBloodBanks(String searchStr) {
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		List<Bloodbankmaster> ls =   session.createQuery("From Bloodbankmaster where upper(bloodbankname) like upper('%"+searchStr+"%')  ").list();
		tx.commit();
		session.close();
		
		System.out.println("search result found: "+ls.size());
		return ls;
	}

	@Override
	public Bloodbankmaster getBloodBank(String username) {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		List<Bloodbankmaster> ls =   session.createQuery("From Bloodbankmaster where upper(user_id) = upper("+username+")  ").list();
		tx.commit();
		session.close();
		
	
		return ls.get(0);
	}

	@Override
	public List<Inventory> getInventory(String code) {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		List<Inventory> ls =   session.createQuery("From Inventory where upper(bank_code) = upper("+code+")  ").list();
		tx.commit();
		session.close();
		
	
		return ls;
	}
	
}
