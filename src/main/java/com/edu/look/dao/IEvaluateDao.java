package com.edu.look.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.edu.look.pojo.Evaluate;

public interface IEvaluateDao {
	
	public boolean addcontent(@Param("cid")String cid,@Param("sid")String sid,@Param("econtent")String econtent,@Param("etime")String etime);
	public List<Evaluate> getAllcontent(@Param("cid")String cid);

}
