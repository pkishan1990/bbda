<<<<<<< HEAD
package dao;

import java.util.List;

import entity.Bloodbankmaster;
import entity.Donor;

public interface BloodBankDao {

	List<Bloodbankmaster> getListofBloodBanks();

	List<Donor> getListofDonors();

	List<Donor> searchInDonors(String searchStr);

	List<Bloodbankmaster> searchInBloodBanks(String searchStr);

}
=======
package dao;

import java.util.List;

import entity.Bloodbankmaster;
import entity.Donor;

public interface BloodBankDao {

	List<Bloodbankmaster> getListofBloodBanks();

	List<Donor> getListofDonors();

	List<Donor> searchInDonors(String searchStr);

	List<Bloodbankmaster> searchInBloodBanks(String searchStr);

}
>>>>>>> branch 'master' of https://github.com/pkishan1990/bbda.git
