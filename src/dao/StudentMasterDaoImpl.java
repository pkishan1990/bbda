package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import entity.Studentmaster;
import filter.MultiTenantConnectionProviderImpl;

@Repository
public class StudentMasterDaoImpl extends HibernateDaoSupport implements
		StudentMasterDao {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public Studentmaster getLastStudentId() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		return null;
	}

	@Override
	public void registerNewStudent(Studentmaster studentmaster) {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions()
				.tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
//		@SuppressWarnings("unchecked")
//		List<entity.Studentmaster> ls = session.createQuery(
//				"From Studentmaster order by recordid DESC LIMIT 1").list();
//		try {
//			studentmaster.setRecordid(ls.get(0).getRecordid() + 1);
//		} catch (IndexOutOfBoundsException ae) {
//			studentmaster.setRecordid(1);
//		}
		session.save(studentmaster);
		tx.commit();
		session.close();
	}

	@SuppressWarnings("unchecked")
	@Override
	public Studentmaster getStudentInfo(String studentId) {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		List<Studentmaster> ls = session.createQuery(
				"From Studentmaster where studentid = " + studentId.trim() + " ").list();
		tx.commit();
		session.close();
		try {
			return ls.get(0);
		} catch (IndexOutOfBoundsException ie) {

			Studentmaster t = new Studentmaster();
			System.out.println("in catch :" + t.getStudentid());
			return t;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Studentmaster> searchStudents(String batch, String standard,
			String school, String board, String medium) {

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

		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		if (where.length() > 2) {
			where = where + "and";
		}
		String HSQL = "from Studentmaster " + where
				+ "  recstatus='5' order by id";
		List<Studentmaster> ls = session.createQuery(HSQL).list();
		tx.commit();
		session.close();
		System.out.println("returned records: " + ls.size());
		return ls;
	}

	@Override
	public void updateRecord(Studentmaster studentmaster) {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		session.update(studentmaster);
		tx.commit();
		session.close();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> getUpcomingBirthdays() {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		System.out.println("getting birthdays");
		String HSQL = "select fullname,dob,standard,medium,studentid from studentmaster " +
				"where (to_date(to_char(dob, 'MMDD'), 'MMDD')) " +
				"between to_date(to_char(current_date - interval '2 Days','MMDD'),'MMDD') " +
				"and to_date(to_char(current_date+ interval '7 Days', 'MMDD'),'MMDD' ) order by dob ";
		List<Object[]> ls = session.createSQLQuery(HSQL).list();
		tx.commit();
		session.close();

		return ls;
	}

	@Override
	public Object generateId(String standard, String medium, String board) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		System.out.println("getting birthdays");
		String HSQL = "SELECT  trim(SUBSTR(trim('"
				+ standard
				+ "'),0,2)) || upper(trim(SUBSTR(trim('"
				+ medium
				+ "'),0,1))) || UPPER(trim(SUBSTR(trim('"
				+ board
				+ "'),0,1)))"
				+ " || trim(to_char(NVL(MAX(TO_NUMBER(SUBSTR(ID,(LENGTH(ID)-2),4))),0)+1,'000')) as ID from studentmaster "
				+ "WHERE upper(trim(BOARD)) = upper(trim('" + board
				+ "')) and upper(trim(medium)) = upper(trim('" + medium
				+ "')) and trim(STANDARD) = trim('" + standard + "')";
		Object ls = session.createSQLQuery(HSQL).list().get(0);
		tx.commit();
		session.close();
		System.out.println(ls.toString() + ": Generated Id");
		return ls;
	}

	@Override
	public List<Object[]> getStudentsCount(String medium) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		System.out.println("getting birthdays");
		String HSQL = "select standard,count(medium) from Studentmaster "
				+ "where medium='" + medium.trim()
				+ "' and standard in ('10','9','8','7','6','5','11','12')"
				+ " group by standard order by to_number(standard)";
		List<Object[]> ls = session.createSQLQuery(HSQL).list();
		tx.commit();
		session.close();

		return ls;
	}

	@Override
	public List<Object[]> searchThisData(String data) {
		// TODO Auto-generated method stub

		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		Transaction tx = session.beginTransaction();
		System.out.println("getting result");
		String HSQL = "select studentid,fullname,standard,schoolname,medium,board from studentmaster where  upper(fullname) like '%"+data.toUpperCase()+"%'";
		List<Object[]> ls = session.createSQLQuery(HSQL).list();
		tx.commit();
		session.close();
		System.out.println(ls.size()+" data found");
		return ls;
	}

	@Override
	public List<Studentmaster> getListofActiveStudents() {
		// TODO Auto-generated method stub
		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
		
		Transaction tx = session.beginTransaction();
		String HSQL = "from Studentmaster   ";
		List<Studentmaster> ls = session.createQuery(HSQL).list();
		tx.commit();
		session.close();
		System.out.println(ls.size()+" data found");
		return ls;
	}

	@Override
	public String getNextId() {
		// TODO Auto-generated method stub
//		MultiTenantConnectionProviderImpl impl = new MultiTenantConnectionProviderImpl();
//		Session session = this.sessionFactory.withOptions().tenantIdentifier(impl.APPLICATION_USER).openSession();
//		Transaction tx = session.beginTransaction();
//		List<Studentmaster> ls = session.createQuery(
//				"select * From Studentmaster order by CAST(id as numeric)  DESC LIMIT 1")
//				.list();
//		tx.commit();
//		session.close();
//		try {
//			return ls.get(0);
//		} catch (IndexOutOfBoundsException ie) {
//
//			Studentmaster t = new Studentmaster();
//			t.setId("0");
//			System.out.println("in catch :" + t.getId());
//			return t;
//		}

		return null;
	}

}
