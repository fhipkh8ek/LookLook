package com.edu.look.service;

import java.util.List;

import com.edu.look.pojo.Topic;

public interface ITopicService {

	public List<Topic> getAllTopic();//���л���
	public List<Topic> getOneTopic(String tid);
		
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
	
	public boolean addTopic(String sid,String tname,String tcontent,String tphoto,String ttime,String ttype);

	public boolean dianzanTopic(String tid);//����
	public boolean lookTopic(String tid);//���+1
	
}
