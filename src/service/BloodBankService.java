package service;

import java.util.List;

import entity.Batchmaster;
import entity.Bloodbankmaster;
import entity.Donor;
import entity.Studentmaster;

public interface BloodBankService {

	List<Bloodbankmaster> getListofBloodBanks();

	List<Donor> getListofDonors();

	List<Donor> searchInDonors(String searchStr);

	
}
