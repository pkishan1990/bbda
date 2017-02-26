package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.FeesMasterDao;
import entity.Feesmaster;

@Service
public class FeesMasterServiceImpl implements FeesMasterService {

	@Autowired
	private FeesMasterDao feesMasterDao;

	@Override
	public void insertFeesMasterDetails(Feesmaster feesmaster) {
		// TODO Auto-generated method stub
		feesMasterDao.insertFeesMasterDetails(feesmaster);
	}

	@Override
	public Object getPaidAmount(String id) {
		// TODO Auto-generated method stub
		return feesMasterDao.getPaidAmount(id);
	}

	@Override
	public List<Feesmaster> getAllTransactions() {
		// TODO Auto-generated method stub
		return feesMasterDao.getAllTransactions();
	}

	@Override
	public List<Feesmaster> getAllInstallments(String studentId) {
		// TODO Auto-generated method stub
		return feesMasterDao.getAllInstallments(studentId);
	}

	@Override
	public Feesmaster getTransaction(String transId) {
		// TODO Auto-generated method stub
		return feesMasterDao.getTransaction(transId);
	}

	@Override
	public List<Object[]> getFeesReport(String batch, String school,
			String standard, String medium, String board) {
		// TODO Auto-generated method stub
		return feesMasterDao.getFeesReport(batch,school,standard,medium,board);
	}

	
}
