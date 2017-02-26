package dao;

import java.util.List;

import entity.Paramaster;

public interface ParamastDao {

public List<Paramaster> getSchoolFromParamast();

public List<Paramaster> getFromParamast(String TYPE);

}
