package dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import entity.Usermaster;
import filter.MultiTenantConnectionProviderImpl;

@SuppressWarnings({"static-access","unchecked"})
@Repository
public class UserMasterDaoImpl extends HibernateDaoSupport implements UserMasterDao {
	@Autowired
	private SessionFactory sessionFactory;

	
	@Override
	public List<Usermaster> getUser(String userId, String password) {
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		//session.createSQLQuery("SET search_path TO \"RRBPAY\"").executeUpdate(); Multi-Tenancy For Schema Pass RRBPAY
		String HSQL = "From Usermaster where trim(UPPER(username))=trim(UPPER('"+userId+"')) AND trim(password)=trim('"+password+"')";
		session.createQuery(HSQL).list();
		List<Usermaster> ls = (List<Usermaster>)session.createQuery(HSQL).list();
		session.close();
		System.out.println("ls size "+ls.size());
		return ls;
	}

	@Override
	public String getPassword(String userid) {
		
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		String HSQL = "From Usermaster where trim(UPPER(userid))=trim(UPPER('"+userid+"'))";
		session.createQuery(HSQL).list();
		Usermaster user= (Usermaster) session.createQuery(HSQL).list().get(0);
		session.close();
		return user.getPassword();
	}

	
	@Override
	public void saveNewPassword(String userid, String password,Date date, String time,String Id,String Ip,String Role) {
		
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		Usermaster passwordUpdate =	 (Usermaster) session.createQuery("From Usermaster where trim(upper(userid)) = '"+userid.toUpperCase()+"'").list().get(0);
		passwordUpdate.setPassword(password);
		
	
		session.update(passwordUpdate);
		tx.commit();
		session.close();
		
	}

	
	@Override
	public void insertUserMaster(Usermaster usermaster) {
		
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		session.save(usermaster);
		tx.commit();
		session.close();
		
	}

	
	@Override
	public List<Usermaster> ListRecStatus5() {
		
		String HSQL = "From Usermaster where trim(recstatus)='5'";
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		List<Usermaster> ls = session.createQuery(HSQL).list();
		session.close();
		return ls;
	}

	
	@Override
	public Usermaster getUserMaster(String userId,String password){
		
		String HSQL = "From Usermaster where upper(trim(username))=upper('"+userId.trim()+"') "
				+ "and password='"+password.trim()+"'";
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		List<Usermaster> ls = session.createQuery(HSQL).list();
		session.close();
		Usermaster usermaster = new Usermaster();
		try{
			usermaster = ls.get(0);
		}catch(IndexOutOfBoundsException ie){
			usermaster.setFirstname(null);
		}
		return usermaster;  
	}

	
	@Override
	public void updateUserMaster(Usermaster usermaster) {
		
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		session.update(usermaster);
		tx.commit();
		session.close();
		
	}

	
	@Override
	public List<Usermaster> UserListRecStatus3() {
		
		String HSQL = "From Usermaster where trim(recstatus)='3'";
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		List<Usermaster> ls = session.createQuery(HSQL).list();
		session.close();
		return ls;
	}

	@Override
	public void updateRecordStatus(String userid, String string) {
		
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		Usermaster master = (Usermaster) session.get(Usermaster.class, userid);
		/*master.(string);*/
		//session.update(master);
		tx.commit();
		session.close();
	}

	
	@Override
	public List<Usermaster> UserListRecStatus1() {
		
		String HSQL = "From Usermaster where trim(recstatus)='1'";
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		List<Usermaster> ls = session.createQuery(HSQL).list();
		session.close();
		return ls;
	}

	@Override
	public String getActiveUsersName(String userId) {
		
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		String HSQl = "SELECT E.username FROM Usermaster E where trim(upper(userid)) =  trim(UPPER('" + userId.trim()+"')) and trim(recstatus)='5'" ;
		String empmstr = "";
		try{empmstr =(String) session.createQuery(HSQl).list().get(0);}catch(IndexOutOfBoundsException e){}
		session.close();
		return empmstr.toString().trim();
	}

	
	@Override
	public List<Usermaster> getExpiredPasswordList() {
		
		String HSQL = "from Usermaster u where u.pwdexpirydate <= now()";
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		List<Usermaster> ls = session.createQuery(HSQL).list();
		session.close();
		return ls;
	}

	
	@Override
	public List<String> getEmpCode() {
		
		List<String> ls = new ArrayList<String>();
		String HSQL = "select empcode From Usermaster";
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		ls = (List<String>) session.createQuery(HSQL).list();
		session.close();
		return ls;
	}

	
	@Override
	public void resetPasswordAndExpDate(String userId,Date date, String time,String Id,String Ip) {
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		String HSQL = "Update Usermaster set pwdexpirydate = now() + interval '6 months', trim(password) = '12345' , trim(recstatus)='5'" +
		", approverdate = to_date('"+simpleDateFormat.format(date)+"','dd/mm/yyyy'), trim(approvertime) = '"+time+"', trim(approverid) = '"+Id+"', trim(approverip) = '"+Ip+"'"+
				" where trim(userid) IN ("+userId+")";
		Query query = session.createQuery(HSQL);
		query.executeUpdate();
		tx.commit();
		session.close();
		
	}

	@Override
	public Integer get_UserMaster_Count(String recStatus) {
		// TODO Auto-generated method stub
		String HSQL = "Select count(*) from Usermaster where RecStatus = '"+ recStatus.trim() + "' ";
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions()
				.tenantIdentifier(impl.APPLICATION_USER).openSession();
		List<Object> ls = null;
		try {
			ls = session.createSQLQuery(HSQL).list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Exception while getting Employee Count for DashBoard");
		} finally {
			session.close();
		}
		Integer count = Integer.parseInt(ls.get(0).toString());
		return count;
	}
	@Override
	public void updateUserMasterName(String FullName,String empcode) {
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction transaction = session.beginTransaction();
		session.createSQLQuery("Update usermaster set username = upper('"+FullName+"') where empcode='"+empcode+"'").executeUpdate();
		transaction.commit();
		session.close();
	}
}
