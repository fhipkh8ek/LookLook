package com.edu.look.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.look.dao.ICoachDao;
import com.edu.look.pojo.Coach;
import com.edu.look.pojo.DriverSchool;
import com.edu.look.service.ICoachService;

@Service
@Transactional
public class CoachServiceImpl implements ICoachService {

	@Autowired
	ICoachDao coachdao;
	
	public List<Coach> getAllCoach() {
		// TODO Auto-generated method stub
		return coachdao.getAllCoach();
	}

	public List<Coach> getNameCoach(String cid) {
		// TODO Auto-generated method stub
		return coachdao.getNameCoach(cid);
	}

	@Override
	public List<Coach> getByDriverSchoolCoach(String did) {
		// TODO Auto-generated method stub
		return coachdao.getByDriverSchoolCoach(did);
	}

	@Override
	public List<Coach> getCoach() {
		// TODO Auto-generated method stub
		return coachdao.getCoach();
	}

	@Override
	public List<Coach> getascCoach() {
		// TODO Auto-generated method stub
		return coachdao.getascCoach();
	}

	@Override
	public int countcoach() {
		// TODO Auto-generated method stub
		return coachdao.countcoach();
	}

	@Override
	public List<Coach> fristcoach() {
		// TODO Auto-generated method stub
		return coachdao.fristcoach();
	}

	@Override
	public List<Coach> paginationcoach(int pagenumber, int pagesize) {
		// TODO Auto-generated method stub
		return coachdao.paginationcoach(pagenumber, pagesize);
	}

	

}
