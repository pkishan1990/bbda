package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.itextpdf.text.pdf.PdfStructTreeController.returnType;

import entity.Batchmaster;
import filter.MultiTenantConnectionProviderImpl;
@Repository
public class BatchMasterDaoImpl extends HibernateDaoSupport implements BatchMasterDao {

	@Autowired
	private SessionFactory sessionFactory;
	@SuppressWarnings("unchecked")
	@Override
	public void createBatch(Batchmaster batchmaster) {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		session.save(batchmaster);
		tx.commit();
		session.close();
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Batchmaster> getAllBatches() {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		List<entity.Batchmaster> ls =   session.createQuery("From Batchmaster ").list();
		tx.commit();
		session.close();
		return ls;
		
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> getNoOfStudentsInBatch() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		List<Object[]> ls =   session.createQuery("select count(*) as numbs, batch from Studentmaster where recstatus = '5' group by batch").list();
		tx.commit();
		session.close();
		return ls;
	}
	@SuppressWarnings("unchecked")
	@Override
	public Batchmaster getBatch(String recordId) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Batchmaster ls =   (Batchmaster) session.createQuery("From Batchmaster where recordid = '"+recordId+"' ").list().get(0);
		tx.commit();
		session.close();
		return ls;
		
	}
	@Override
	public String getLastBatchCode() {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<entity.Batchmaster> ls =   session.createQuery("From Batchmaster order by batchcode desc").list();
		tx.commit();
		session.close();
		
		try {
			ls.get(0).getBatchcode().toString();
		} catch (NullPointerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			ls.get(0).setBatchcode("0");
		}catch (IndexOutOfBoundsException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "0";
		}
		
		return ls.get(0).getBatchcode();
	}

}
