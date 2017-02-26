package dao;

import java.util.List;

import entity.Studentmaster;

public interface StudentMasterDao {

	public	Studentmaster getLastStudentId();

	public void registerNewStudent(Studentmaster studentmaster);

	public Studentmaster getStudentInfo(String studentId);

	public List<Studentmaster> searchStudents(String batch, String standard, String school,String board, String medium);

	public void updateRecord(Studentmaster studentmaster);

	public List<Object[]> getUpcomingBirthdays();

	public Object generateId(String standard, String medium, String board);

	public List<Object[]> getStudentsCount(String medium);

	public List<Object[]> searchThisData(String data);

	public List<Studentmaster> getListofActiveStudents();

	public String getNextId();

}
