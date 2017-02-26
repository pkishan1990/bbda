package service;

import java.util.List;

import entity.Batchmaster;

public interface BatchMasterService {

	String getLastBatchCode();

	void createBatch(Batchmaster batchmaster);

	List<Batchmaster> getAllBatches();

}
