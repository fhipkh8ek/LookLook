package com.edu.look.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.edu.look.pojo.DriverSchool;

public interface IDriverSchoolDao {

	public List<DriverSchool> getAlldriverschool();
	public List<DriverSchool> getOnedriverschool(String did);
	
	public List<DriverSchool> getDriverschool();
	
	public int countdriverschool();//统计总条数
	public List<DriverSchool> fristdriverschool();//首页
	public List<DriverSchool> paginationdriverschool(@Param("frist")int frist,@Param("pagesize")int pagesize);//分页
	public List<DriverSchool> blurGet(@Param("dname")String dname);
}
