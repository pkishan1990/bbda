package service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UserMasterDao;
import entity.Usermaster;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	private UserMasterDao usermasterdao;
	public UserMasterDao getUserMaster() {
		return usermasterdao;
	}
	public void setUserMaster(UserMasterDao usermasterdao) {
		this.usermasterdao = usermasterdao;
	}

	@Override
	public List<Usermaster> getUser(String userId, String password) {

		return usermasterdao.getUser(userId,password);
	}
	@Override
	public String getPassword(String userid) {

		return usermasterdao.getPassword(userid);
	}
	@Override
	public void saveNewPassword(String userid, String password,Date date, String time,String Id,String Ip,String Role) {

		usermasterdao.saveNewPassword(userid, password, date, time, Id, Ip,Role);
	}
	@Override
	public void insertUserMaster(Usermaster usermaster) {

		usermasterdao.insertUserMaster(usermaster);
	}
	@Override
	public List<Usermaster> ListRecStatus5() {

		return usermasterdao.ListRecStatus5();
	}
	@Override
	public Usermaster getUserMaster(String userId, String password) {

		return usermasterdao.getUserMaster(userId,password);
	}
	@Override
	public void updateUserMaster(Usermaster usermaster) {

		usermasterdao.updateUserMaster(usermaster);
	}
	@Override
	public List<Usermaster> UserListRecStatus3() {

		return usermasterdao.UserListRecStatus3();
	}
	@Override
	public void updateRecordStatus(String userid, String string) {

		usermasterdao.updateRecordStatus(userid, string);
	}
	@Override
	public List<Usermaster> UserListRecStatus1() {

		return usermasterdao.UserListRecStatus1();
	}
	@Override
	public String getActiveUsersName(String userId) {

		return usermasterdao.getActiveUsersName(userId);
	}
	@Override
	public List<Usermaster> getExpiredPasswordList() {

		return usermasterdao.getExpiredPasswordList();
	}
	@Override
	public List<String> getEmpCode() {

		return usermasterdao.getEmpCode();
	}
	@Override
	public void resetPasswordAndExpDate(String userId,Date date, String time,String Id,String Ip) {

		usermasterdao.resetPasswordAndExpDate(userId, date, time, Id, Ip);
		
	}

	@Override
	public void updateUserMasterName(String FullName, String empcode) {
		// TODO Auto-generated method stub
		this.usermasterdao.updateUserMasterName(FullName,empcode);
	}
	
}
