package com.edu.look.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.edu.look.pojo.Evaluate;

public interface IEvaluateService {

	public boolean addcontent(String cid,String sid,String econtent,String etime);
	public List<Evaluate> getAllcontent(String cid);
}
