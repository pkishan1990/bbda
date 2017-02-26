package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BatchMasterDao;
import entity.Batchmaster;

@Service
public class BatchMasterServiceImpl implements BatchMasterService {

@Autowired
private BatchMasterDao batchMasterDao;
	
	@Override
	public String getLastBatchCode() {
		// TODO Auto-generated method stub
		return batchMasterDao.getLastBatchCode();
	}

	@Override
	public void createBatch(Batchmaster batchmaster) {
		// TODO Auto-generated method stub
		 batchMasterDao.createBatch(batchmaster);	
	}

	@Override
	public List<Batchmaster> getAllBatches() {
		// TODO Auto-generated method stub
		return batchMasterDao.getAllBatches();
	}

}
