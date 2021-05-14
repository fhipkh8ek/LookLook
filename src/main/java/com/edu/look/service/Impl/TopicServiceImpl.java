package com.edu.look.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.look.dao.ITopicDao;
import com.edu.look.pojo.Topic;
import com.edu.look.service.ITopicService;

@Service
@Transactional
public class TopicServiceImpl implements ITopicService {

	@Autowired
	ITopicDao topicdao;
	
	@Override
	public List<Topic> getAllTopic() {
		
		return topicdao.getAllTopic();
	}

	@Override
	public List<Topic> getGonggaoTopic() {
		
		return topicdao.getGonggaoTopic();
	}

	@Override
	public List<Topic> getRentieTopic() {
		return topicdao.getRentieTopic();
	}

	@Override
	public List<Topic> getFenxiangTopic() {
		
		return topicdao.getFenxiangTopic();
	}

	@Override
	public List<Topic> getWendaTopic() {
		
		return topicdao.getWendaTopic();
	}

	@Override
	public List<Topic> getYuanwangTopic() {
		
		return topicdao.getYuanwangTopic();
	}

	@Override
	public List<Topic> getXuecheTopic() {
		
		return topicdao.getXuecheTopic();
	}

	@Override
	public List<Topic> getJinriTopic() {
		
		return topicdao.getJinriTopic();
	}

	@Override
	public List<Topic> getLiulanTopic() {
		
		return topicdao.getLiulanTopic();
	}

	@Override
	public boolean addTopic(String sid,String tname, String tcontent, String tphoto, String ttime, String ttype) {
		
		if(topicdao.addTopic(sid,tname, tcontent, tphoto, ttime, ttype)){
			return true;
		}else{
			return false;
		}
		
		
	}

	@Override
	public String gonggaocount() {
		
		return topicdao.gonggaocount();
	}

	@Override
	public String retiecount() {
		
		return topicdao.retiecount();
	}

	@Override
	public String fenxiangcount() {
		
		return topicdao.fenxiangcount();
	}

	@Override
	public String wendacount() {
		
		return topicdao.wendacount();
	}

	@Override
	public String yuanwangcount() {
		
		return topicdao.yuanwangcount();
	}

	@Override
	public String xuechecount() {
		
		return topicdao.xuechecount();
	}

	@Override
	public boolean dianzanTopic(String tid) {
		
		topicdao.dianzanTopic(tid);
		return true;
	}

	@Override
	public boolean lookTopic(String tid) {
		topicdao.lookTopic(tid);
		return true;
	}

	@Override
	public List<Topic> getOneTopic(String tid) {
		// TODO Auto-generated method stub
		return topicdao.getOneTopic(tid);
	}

}
