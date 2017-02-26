package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import dao.ParamastDao;
import entity.Paramaster;

public class ParamastServiceImpl implements ParamastService {

	@Autowired
	private ParamastDao paramastDao;

	@Override
	public List<Paramaster> getSchoolFromParamast() {
		// TODO Auto-generated method stub
		return paramastDao.getSchoolFromParamast();
	}

	@Override
	public List<Paramaster> getFromParamast(String TYPE) {
		// TODO Auto-generated method stub
		return paramastDao.getFromParamast(TYPE);
	}
	
}
