package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import entity.Feesmaster;
import filter.MultiTenantConnectionProviderImpl;


@Repository
public class FeesMasterDaoImpl extends HibernateDaoSupport implements FeesMasterDao {

	@Autowired
	private SessionFactory sessionFactory;

	
	@SuppressWarnings("unchecked")
	@Override
	public void insertFeesMasterDetails(Feesmaster feesmaster) {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		session.save(feesmaster);
		tx.commit();
		session.close();
	}


	@SuppressWarnings("unused")
	@Override
	public Object getPaidAmount(String id) {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions()
				.tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		Object object = session.createQuery("select sum(amount) from Feesmaster where studentid = '"+id+"'").list().get(0);
		tx.commit();
		session.close();
		return object;
	}


	@Override
	public List<Feesmaster> getAllTransactions() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<entity.Feesmaster> ls =   session.createQuery("From Feesmaster where amount !='0'").list();
		tx.commit();
		session.close();
		return ls;
	}


	@Override
	public List<Feesmaster> getAllInstallments(String studentId) {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions()
				.tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<entity.Feesmaster> ls =   session.createQuery("From Feesmaster where studentid = '"+studentId+"' and amount !='0'").list();
		tx.commit();
		session.close();
		return ls;
	}


	@Override
	public Feesmaster getTransaction(String transId) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<entity.Feesmaster> ls =   session.createQuery("From Feesmaster where transId ='"+transId+"'").list();
		tx.commit();
		session.close();
		return ls.get(0);
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> getFeesReport(String batch, String school,
			String standard, String medium, String board) {
		// TODO Auto-generated method stub
		
		String where = "";
		// only batch
		if (!batch.equals("") && school.equals("") && standard.equals("")
				&& board.equals("") && medium.equals("")) {
			where = "where TRIM(batch) = '" + batch.trim() + "'";
		}
		// only school
		else if (batch.equals("") && !school.equals("") && standard.equals("")
				&& board.equals("") && medium.equals("")) {
			where = "where TRIM(schoolname) = '" + school.trim() + "'";
		}
		// only standard
		else if (batch.equals("") && school.equals("") && !standard.equals("")
				&& board.equals("") && medium.equals("")) {
			where = "where TRIM(standard) = '" + standard.trim() + "'";
		}
		// only board
		else if (batch.equals("") && school.equals("") && !board.equals("")
				&& standard.equals("") && medium.equals("")) {
			where = "where TRIM(board) = '" + board.trim() + "'";
		}
		// only medium
		else if (batch.equals("") && school.equals("") && board.equals("")
				&& standard.equals("") && !medium.equals("")) {
			where = "where TRIM(medium) = '" + board.trim() + "'";
		}

		// school and batch
		else if (!batch.equals("") && !school.equals("") && standard.equals("")
				&& board.equals("") && medium.equals("")) {
			where = "where TRIM(batch) = '" + batch.trim()
					+ "' and TRIM(schoolname) = '" + school.trim() + "'";
		}
		// standard and batch
		else if (!batch.equals("") && school.equals("") && !standard.equals("")
				&& board.equals("") && medium.equals("")) {
			where = "where TRIM(standard) = '" + standard.trim()
					+ "' and TRIM(batch) = '" + batch.trim() + "'";
		}
		// standard and school
		else if (batch.equals("") && !school.equals("") && !standard.equals("")
				&& board.equals("") && medium.equals("")) {
			where = "where TRIM(standard) = '" + standard.trim()
					+ "' and TRIM(schoolname) = '" + school.trim() + "'";
		}
		// standard and board
		else if (batch.equals("") && school.equals("") && !standard.equals("")
				&& !board.equals("") && medium.equals("")) {
			where = "where TRIM(standard) = '" + standard.trim()
					+ "' and TRIM(board) = '" + board.trim() + "'";
		}
		// standard and medium
		else if (batch.equals("") && school.equals("") && !standard.equals("")
				&& board.equals("") && !medium.equals("")) {
			where = "where TRIM(standard) = '" + standard.trim()
					+ "' and TRIM(medium) = '" + medium.trim() + "'";
		}
		// school and board
		else if (batch.equals("") && !school.equals("") && standard.equals("")
				&& !board.equals("") && medium.equals("")) {
			where = "where TRIM(board) = '" + board.trim()
					+ "' and TRIM(schoolname) = '" + school.trim() + "'";
		}
		// school and medium
		else if (batch.equals("") && !school.equals("") && standard.equals("")
				&& board.equals("") && !medium.equals("")) {
			where = "where TRIM(medium) = '" + medium.trim()
					+ "' and TRIM(schoolname) = '" + school.trim() + "'";
		}
		// batch and board
		else if (!batch.equals("") && school.equals("") && standard.equals("")
				&& !board.equals("") && medium.equals("")) {
			where = "where TRIM(batch) = '" + batch.trim()
					+ "' and TRIM(board) = '" + board.trim() + "'";
		}
		// batch and medium
		else if (!batch.equals("") && school.equals("") && standard.equals("")
				&& board.equals("") && !medium.equals("")) {
			where = "where TRIM(batch) = '" + batch.trim()
					+ "' and TRIM(medium) = '" + medium.trim() + "'";
		}
		// medium and board
		else if (batch.equals("") && school.equals("") && standard.equals("")
				&& !board.equals("") && !medium.equals("")) {
			where = "where TRIM(medium) = '" + medium.trim()
					+ "' and TRIM(board) = '" + board.trim() + "'";
		}

		// batch and standard and school
		else if (!batch.equals("") && !school.equals("")
				&& !standard.equals("") && board.equals("")
				&& medium.equals("")) {
			where = "where  TRIM(batch) = '" + batch.trim()
					+ "' and  TRIM(standard) = '" + standard.trim()
					+ "' and TRIM(schoolname) = '" + school.trim() + "'";
		}
		// batch and standard and medium
		else if (!batch.equals("") && school.equals("") && !standard.equals("")
				&& board.equals("") && !medium.equals("")) {
			where = "where  TRIM(batch) = '" + batch.trim()
					+ "' and  TRIM(standard) = '" + standard.trim()
					+ "' and TRIM(medium) = '" + medium.trim() + "'";
		}
		// batch and standard and board
		else if (!batch.equals("") && school.equals("") && !standard.equals("")
				&& !board.equals("") && medium.equals("")) {
			where = "where  TRIM(batch) = '" + batch.trim()
					+ "' and  TRIM(standard) = '" + standard.trim()
					+ "' and TRIM(board) = '" + board.trim() + "'";
		}
		// batch and school and medium
		else if (!batch.equals("") && !school.equals("") && standard.equals("")
				&& board.equals("") && !medium.equals("")) {
			where = "where  TRIM(batch) = '" + batch.trim()
					+ "' and  TRIM(medium) = '" + medium.trim()
					+ "' and TRIM(schoolname) = '" + school.trim() + "'";
		}
		// batch and school and board
		else if (!batch.equals("") && !school.equals("") && standard.equals("")
				&& !board.equals("") && medium.equals("")) {
			where = "where  TRIM(batch) = '" + batch.trim()
					+ "' and  TRIM(board) = '" + board.trim()
					+ "' and TRIM(schoolname) = '" + school.trim() + "'";
		}
		// batch and medium and board
		else if (!batch.equals("") && school.equals("") && standard.equals("")
				&& !board.equals("") && !medium.equals("")) {
			where = "where  TRIM(batch) = '" + batch.trim()
					+ "' and  TRIM(medium) = '" + medium.trim()
					+ "' and TRIM(board) = '" + board.trim() + "'";
		}
		// Standard and school and medium
		else if (batch.equals("") && !school.equals("") && !standard.equals("")
				&& board.equals("") && !medium.equals("")) {
			where = "where  TRIM(medium) = '" + medium.trim()
					+ "' and  TRIM(standard) = '" + standard.trim()
					+ "' and TRIM(schoolname) = '" + school.trim() + "'";
		}
		// standard and medium and board
		else if (batch.equals("") && school.equals("") && !standard.equals("")
				&& !board.equals("") && !medium.equals("")) {
			where = "where  TRIM(board) = '" + board.trim()
					+ "' and  TRIM(standard) = '" + standard.trim()
					+ "' and TRIM(medium) = '" + medium.trim() + "'";
		}

		// school and medium and board
		else if (batch.equals("") && !school.equals("") && standard.equals("")
				&& !board.equals("") && !medium.equals("")) {
			where = "where  TRIM(medium) = '" + medium.trim()
					+ "' and  TRIM(board) = '" + board.trim()
					+ "' and TRIM(schoolname) = '" + school.trim() + "'";
		}

		
		
		
		String query ="select sm.fullname , sm.contactnumber1,sm.contactnumber2, SUM(f.amount), sm.TOTALFEES," +
				" nvl(nvl( sm.TOTALFEES,0) - nvl(SUM(f.amount),0)  ,0 ) remaining" +
				" from studentmaster sm " +
				"left join feesmaster f on  sm.id = f.studentid " +
				" " + where +" "+
				" group by sm.fullname , sm.contactnumber1,sm.contactnumber2, sm.TOTALFEES" +
				" ORDER BY SM.FULLNAME";
		
		
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		if (where.length() > 2) {
			where = where + "and";
		}
		
		List<Object[]> ls = session.createSQLQuery(query).list();
		tx.commit();
		session.close();
		System.out.println("returned records: " + ls.size());
		return ls;
	}
}
