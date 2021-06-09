package com.edu.look.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.edu.look.pojo.Student;

public interface IStudentDao {

	public Student studentlogin(@Param("sname")String sname,@Param("spassword")String spassword);
	public boolean studentregister(@Param("sname")String sname,@Param("spassword")String spassword,@Param("email")String email,@Param("sex")String sex);
	public boolean update(@Param("sid")String sid,@Param("sname")String sname,@Param("sage")String sage,@Param("saddress")String saddress,@Param("shome")String shome,@Param("sphone")String sphone,@Param("semail")String semail,@Param("slon")String slon,@Param("slat")String slat,@Param("s1")String s1,@Param("sphoto")String sphoto);
	
	public List<Student> getontperson(String sid);
	
	public int getStudentNum(@Param("sname")String sname);
}
