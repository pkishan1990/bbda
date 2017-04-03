package dao;

import java.util.List;

import entity.Bloodbankmaster;
import entity.Donor;
import entity.Inventory;

public interface BloodBankDao {

	List<Bloodbankmaster> getListofBloodBanks();

	List<Donor> getListofDonors();

	List<Donor> searchInDonors(String searchStr);

	List<Bloodbankmaster> searchInBloodBanks(String searchStr);

	Bloodbankmaster getBloodBank(String username);

	List<Inventory> getInventory(String code);

}
