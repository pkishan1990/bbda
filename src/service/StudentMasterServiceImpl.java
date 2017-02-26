package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.StudentMasterDao;
import entity.Studentmaster;

@Service
public class StudentMasterServiceImpl implements StudentMasterService{

	@Autowired
	private StudentMasterDao studentMasterDao;

	@Override
	public Studentmaster getLastStudentId() {
		// TODO Auto-generated method stub
		return studentMasterDao.getLastStudentId();
	}

	@Override
	public void registerNewStudent(Studentmaster studentmaster) {
		// TODO Auto-generated method stub
		try{
			if(studentmaster.getEnglish().length() <=0){
				studentmaster.setEnglish("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setEnglish("0");
		}
		try{
			if(studentmaster.getSanskrit().length() <=0){
				studentmaster.setSanskrit("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setSanskrit("0");
		}
		try{
			if(studentmaster.getSocialscience().length() <=0){
				studentmaster.setSocialscience("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setSocialscience("0");
		}
		try{
			if(studentmaster.getScience().length() <=0){
				studentmaster.setScience("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setScience("0");
		}
		try{
			if(studentmaster.getMaths().length() <=0){
				studentmaster.setMaths("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setMaths("0");
		}
		try{
			if(studentmaster.getGujarati().length() <=0){
				studentmaster.setGujarati("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setGujarati("0");
		}
		try{
			if(studentmaster.getHindi().length() <=0){
				studentmaster.setHindi("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setHindi("0");
		}
		try{
			if(studentmaster.getComputer().length() <=0){
				studentmaster.setComputer("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setComputer("0");
		}
		studentMasterDao.registerNewStudent(studentmaster);
	}

	@Override
	public Studentmaster getStudentInfo(String studentId) {
		// TODO Auto-generated method stub
		return studentMasterDao.getStudentInfo(studentId);
	}

	@Override
	public List<Studentmaster> searchStudents(String batch, String standard,
			String school, String board, String medium) {
		// TODO Auto-generated method stub
		return studentMasterDao.searchStudents(batch,  standard, school,board,medium);
	}

	@Override
	public void updateRecord(Studentmaster studentmaster) {
		// TODO Auto-generated method stub
	
		try{
			if(studentmaster.getEnglish().length() <=0){
				studentmaster.setEnglish("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setEnglish("0");
		}
		try{
			if(studentmaster.getSanskrit().length() <=0){
				studentmaster.setSanskrit("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setSanskrit("0");
		}
		try{
			if(studentmaster.getSocialscience().length() <=0){
				studentmaster.setSocialscience("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setSocialscience("0");
		}
		try{
			if(studentmaster.getScience().length() <=0){
				studentmaster.setScience("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setScience("0");
		}
		try{
			if(studentmaster.getMaths().length() <=0){
				studentmaster.setMaths("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setMaths("0");
		}
		try{
			if(studentmaster.getGujarati().length() <=0){
				studentmaster.setGujarati("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setGujarati("0");
		}
		try{
			if(studentmaster.getHindi().length() <=0){
				studentmaster.setHindi("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setHindi("0");
		}
		try{
			if(studentmaster.getComputer().length() <=0){
				studentmaster.setComputer("0");
			} 
		}catch(NullPointerException nullPointerException){
			studentmaster.setComputer("0");
		}
		System.out.println("reached dao impl");
		studentMasterDao.updateRecord(studentmaster);
	}

	@Override
	public List<Object[]> getUpcomingBirthdays() {
		// TODO Auto-generated method stub
		return studentMasterDao.getUpcomingBirthdays();
	}

	@Override
	public Object generateId(String standard, String medium,
			String board) {
		// TODO Auto-generated method stub
		return  studentMasterDao.generateId(standard,medium,board);
	}

	@Override
	public List<Object[]> getStudentsCount(String medium) {
		// TODO Auto-generated method stub
		return studentMasterDao.getStudentsCount(medium);
	}

	@Override
	public List<Object[]> searchThisData(String data) {
		// TODO Auto-generated method stub
		return studentMasterDao.searchThisData(data) ;
	}

	@Override
	public List<Studentmaster> getListofActiveStudents() {
		// TODO Auto-generated method stub
		return studentMasterDao.getListofActiveStudents();
	}

	@Override
	public String getNextId() {
		// TODO Auto-generated method stub
		return studentMasterDao.getNextId();
	}
}
