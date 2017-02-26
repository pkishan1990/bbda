package service;



import java.util.Date;
import java.util.List;
import entity.Usermaster;

public interface LoginService {
public List<Usermaster> getUser(String userId, String password);
public String getPassword(String userid);
public void saveNewPassword(String userid, String password,Date date, String time,String Id,String Ip,String Role);
public void insertUserMaster(Usermaster usermaster);
public  List<Usermaster> ListRecStatus5();
public Usermaster getUserMaster(String userId, String password);
public void updateUserMaster(Usermaster usermaster);
public List<Usermaster> UserListRecStatus3();
public void updateRecordStatus(String userid, String string);
public List<Usermaster> UserListRecStatus1();
public String getActiveUsersName(String userId);
public List<Usermaster> getExpiredPasswordList();
public List<String> getEmpCode();
public void resetPasswordAndExpDate(String string,Date date, String time,String Id,String Ip);
public void updateUserMasterName(String FullName,String empcode);
}
