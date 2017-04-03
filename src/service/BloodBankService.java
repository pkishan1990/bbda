package service;

import java.util.List;

import entity.Batchmaster;
import entity.Bloodbankmaster;
import entity.Donor;
import entity.Inventory;
import entity.Studentmaster;

public interface BloodBankService {

	List<Bloodbankmaster> getListofBloodBanks();
	
	List<Bloodbankmaster> searchInBloodBanks(String searchStr);

	List<Donor> getListofDonors();

	List<Donor> searchInDonors(String searchStr);

	Bloodbankmaster getBloodBank(String username);

	List<Inventory> getInventory(String code);

	
	
	
}
