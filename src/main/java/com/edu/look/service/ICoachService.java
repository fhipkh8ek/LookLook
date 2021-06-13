package com.edu.look.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.edu.look.pojo.Coach;
import com.edu.look.pojo.DriverSchool;


public interface ICoachService {

	public List<Coach> getAllCoach();
	public List<Coach> getNameCoach(String cid);
	public List<Coach> getByDriverSchoolCoach(String did);
	
	public List<Coach> getCoach();
	public List<Coach> getascCoach();
	
	public int countcoach();//统计总条数
	public List<Coach> fristcoach();//首页
	public List<Coach> paginationcoach(int pagenumber,int pagesize);//分页
	
	public List<Coach> getCoachByCondition(String sex,String region,int ageFrom,int ageTo,int beenDiverFrom,int beenDiverTo);
}
