package dao;

import java.util.List;

import entity.Feesmaster;

public interface FeesMasterDao {

	public void insertFeesMasterDetails(Feesmaster feesmaster);

	public Object getPaidAmount(String id);

	public List<Feesmaster> getAllTransactions();

	public List<Feesmaster> getAllInstallments(String studentId);

	public Feesmaster getTransaction(String transId);

	public List<Object[]> getFeesReport(String batch, String school,
			String standard, String medium, String board);

}
