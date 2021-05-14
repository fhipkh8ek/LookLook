package com.edu.look.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.edu.look.pojo.Topic;

public interface ITopicDao {

	public List<Topic> getAllTopic();//���л���
	public List<Topic> getOneTopic(@Param("tid")String tid);//���廰��
	
	public List<Topic> getGonggaoTopic();//��������
	public String gonggaocount();
	public List<Topic> getRentieTopic();//������
	public String retiecount();
	public List<Topic> getFenxiangTopic();//�����
	public String fenxiangcount();
	public List<Topic> getWendaTopic();//�ʴ��
	public String wendacount();
	public List<Topic> getYuanwangTopic();//Ը��ǽ
	public String yuanwangcount();
	public List<Topic> getXuecheTopic();//ѧ��Ȥ��
	public String xuechecount();
	
	public List<Topic> getJinriTopic();//����
	
	public List<Topic> getLiulanTopic();//�����
	public boolean addTopic(@Param("sid")String sid,@Param("tname")String tname,@Param("tcontent")String tcontent,@Param("tphoto")String tphoto,@Param("ttime")String ttime,@Param("ttype")String ttype);
	
	public boolean dianzanTopic(String tid);//����+1
	public boolean lookTopic(String tid);//���+1
	
}
