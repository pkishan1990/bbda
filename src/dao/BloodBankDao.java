package dao;

import java.util.List;

import entity.Bloodbankmaster;
import entity.Donor;

public interface BloodBankDao {

	List<Bloodbankmaster> getListofBloodBanks();

	List<Donor> getListofDonors();

	List<Donor> searchInDonors(String searchStr);
	
	
}
