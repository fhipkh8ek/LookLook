package com.edu.look.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.edu.look.pojo.Topic;

public interface ITopicDao {

	public List<Topic> getAllTopic();//所有话题
	public List<Topic> getOneTopic(@Param("tid")String tid);//具体话题
	
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
	public boolean addTopic(@Param("sid")String sid,@Param("tname")String tname,@Param("tcontent")String tcontent,@Param("tphoto")String tphoto,@Param("ttime")String ttime,@Param("ttype")String ttype);
	
	public boolean dianzanTopic(String tid);//点赞+1
	public boolean lookTopic(String tid);//浏览+1
	
}
