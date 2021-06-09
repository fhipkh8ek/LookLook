package com.edu.look.service;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.edu.look.pojo.Student;

public interface IStudentService {

	public Student studentlogin(String sname,String spassword);
	public boolean studentregister(String sname,String spassword,String email,String sex);
	public boolean update(String sid,String sname,String sage,String saddress,String shome,String sphone,String semail,String slon,String slat,String s1,String sphoto);
	public List<Student> getontperson(String sid);
	
	public int getStudentNum(String sname);
}
