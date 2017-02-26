package service;

import java.util.List;

import entity.Feesmaster;

public interface FeesMasterService {

	public void insertFeesMasterDetails(Feesmaster feesmaster);

	public Object getPaidAmount(String id);

	public java.util.List<Feesmaster> getAllTransactions();

	public List<Feesmaster> getAllInstallments(String studentId);

	public Feesmaster getTransaction(String transId);

	public List<Object[]> getFeesReport(String batch, String school,
			String standard, String medium, String board);

	

}
