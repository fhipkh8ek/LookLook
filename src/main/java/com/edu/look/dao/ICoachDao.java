package com.edu.look.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.edu.look.pojo.Coach;
import com.edu.look.pojo.DriverSchool;

public interface ICoachDao {

	public List<Coach> getAllCoach();
	public List<Coach> getNameCoach(@Param("cid")String cid);
	
	public List<Coach> getByDriverSchoolCoach(@Param("did")String did);
	
	public List<Coach> getCoach();
	public List<Coach> getascCoach();
	
	public int countcoach();//ͳ��������
	public List<Coach> fristcoach();//��ҳ
	public List<Coach> paginationcoach(@Param("pagenumber")int pagenumber,@Param("pagesize")int pagesize);//��ҳ
	
	public List<Coach> getCoachByCondition(@Param("sex")String sex,@Param("region")String region,@Param("ageFrom")int ageFrom,@Param("ageTo") int ageTo,@Param("beenDiverFrom")int beenDiverFrom,@Param("beenDiverTo")int beenDiverTo);
}
