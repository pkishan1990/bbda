package dao;

import java.util.List;

import entity.Batchmaster;

public interface BatchMasterDao {

	void createBatch(Batchmaster batchmaster);

	public List<Batchmaster> getAllBatches();

	public List<Object[]> getNoOfStudentsInBatch();

	public Batchmaster getBatch(String recordId);

	String getLastBatchCode();

}
