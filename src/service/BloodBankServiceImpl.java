package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BloodBankDao;
import entity.Bloodbankmaster;
import entity.Donor;
import entity.Inventory;

@Service
public class BloodBankServiceImpl implements BloodBankService {

@Autowired
private BloodBankDao bloodBankDao;

@Override
public List<Bloodbankmaster> getListofBloodBanks() {
	// TODO Auto-generated method stub
	return bloodBankDao.getListofBloodBanks();
}
@Override
public List<Donor> getListofDonors() {
	// TODO Auto-generated method stub
	return bloodBankDao.getListofDonors();
}
@Override
public List<Donor> searchInDonors(String searchDonor) {
	// TODO Auto-generated method stub
	return bloodBankDao.searchInDonors(searchDonor);
}
@Override
public List<Bloodbankmaster> searchInBloodBanks(String searchStr) {
	// TODO Auto-generated method stub
	return bloodBankDao.searchInBloodBanks(searchStr);
}
@Override
public Bloodbankmaster getBloodBank(String username) {
	// TODO Auto-generated method stub
	return bloodBankDao.getBloodBank(username);
}
@Override
public List<Inventory> getInventory(String code) {
	// TODO Auto-generated method stub
	return bloodBankDao.getInventory(code);
}
	
	
}
