package com.edu.look.service;

import java.util.List;

import com.edu.look.pojo.DriverSchool;

public interface IDriverSchoolService {

	public List<DriverSchool> getAlldriverschool();
	public List<DriverSchool> getOnedriverschool(String did);
	
	public List<DriverSchool> getDriverschool();
	
	public int countdriverschool();//统计总条数
	public List<DriverSchool> fristdriverschool();//首页
	public List<DriverSchool> paginationdriverschool(int frist,int pagesize);//分页
}
