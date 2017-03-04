package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BloodBankDao;
import entity.Bloodbankmaster;
import entity.Donor;

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
	
	
}
