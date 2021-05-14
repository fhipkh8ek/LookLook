package com.edu.look.service;

import java.util.List;

import com.edu.look.pojo.Topic;

public interface ITopicService {

	public List<Topic> getAllTopic();//所有话题
	public List<Topic> getOneTopic(String tid);
		
	public List<Topic> getGonggaoTopic();//社区公告
	public String gonggaocount();
	public List<Topic> getRentieTopic();//热帖榜
	public String retiecount();
	public List<Topic> getFenxiangTopic();//分享会
	public String fenxiangcount();
	public List<Topic> getWendaTopic();//问答榜
	public String wendacount();
	public List<Topic> getYuanwangTopic();//愿望墙
	public String yuanwangcount();
	public List<Topic> getXuecheTopic();//学车趣事
	public String xuechecount();
	
	public List<Topic> getJinriTopic();//今日
	
	public List<Topic> getLiulanTopic();//浏览量
	
	public boolean addTopic(String sid,String tname,String tcontent,String tphoto,String ttime,String ttype);

	public boolean dianzanTopic(String tid);//点赞
	public boolean lookTopic(String tid);//浏览+1
	
}
