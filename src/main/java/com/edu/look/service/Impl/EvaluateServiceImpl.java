package com.edu.look.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.look.dao.IEvaluateDao;
import com.edu.look.pojo.Evaluate;
import com.edu.look.service.IEvaluateService;

@Service
@Transactional
public class EvaluateServiceImpl implements IEvaluateService {
	
	@Autowired
	IEvaluateDao evaluatedao;

	@Override
	public boolean addcontent(String cid, String sid, String econtent, String etime) {
		// TODO Auto-generated method stub
		if(evaluatedao.addcontent(cid, sid, econtent, etime)){
			return true;
		}else{
			return false;
		}
		
	}

	@Override
	public List<Evaluate> getAllcontent(String cid) {
		// TODO Auto-generated method stub
		return evaluatedao.getAllcontent(cid);
	}

	

}
