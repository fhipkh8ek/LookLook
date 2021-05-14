package com.edu.look.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.look.dao.IStudentDao;
import com.edu.look.pojo.Student;
import com.edu.look.service.IStudentService;

@Service
@Transactional
public class StudentServiceImpl implements IStudentService {

	@Autowired
	IStudentDao studentdao;
	
	@Override
	public Student studentlogin(String sname, String spassword) {
		// TODO Auto-generated method stub
		return studentdao.studentlogin(sname, spassword);
	}

	@Override
	public boolean studentregister(String sname, String spassword, String email, String sex) {
		// TODO Auto-generated method stub
		if(studentdao.studentregister(sname, spassword, email, sex)){
			return true;
		}else{
			return false;
		}
		
	}

	@Override
	public boolean update(String sid, String sname, String sage, String saddress, String shome, String sphone,
			String semail, String slon, String slat,String s1,String sphoto) {
		// TODO Auto-generated method stub
		return studentdao.update(sid, sname, sage, saddress, shome, sphone, semail, slon, slat, s1, sphoto);
	}

	@Override
	public List<Student> getontperson(String sid) {
		// TODO Auto-generated method stub
		return studentdao.getontperson(sid);
	}

}
