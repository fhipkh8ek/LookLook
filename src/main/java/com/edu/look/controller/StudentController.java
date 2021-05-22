package com.edu.look.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.util.FileUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.edu.look.pojo.Student;
import com.edu.look.pojo.ValidatePic;
import com.edu.look.service.IStudentService;
import com.edu.look.service.IValidateCodeService;
import com.edu.look.util.MailUtil;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@Autowired
	IStudentService studentservice;
	IValidateCodeService validateCodeService;
	
	//student login
	@RequestMapping(value="/studentlogin.htm",method=RequestMethod.POST)
	public String studentlogin(String username,String password,HttpSession session){
		Student stu;
		System.out.println("�û���¼");
		if(studentservice.studentlogin(username, password)!=null){
			stu = studentservice.studentlogin(username, password);
			System.out.println("ture"+studentservice.studentlogin(username, password));
			session.setAttribute("stu", stu);
			return "forward:/index.jsp";
		}else{
			
			System.out.println("false"+studentservice.studentlogin(username, password));
			
			return "forward:/login/login.htm";
		}
		
	}
	
	//student register
	@RequestMapping(value="/register.htm",method=RequestMethod.POST)
	public String studentregister(String radom,String verification,String sname,String spassword,String email,String sex,HttpServletRequest req){
		System.out.println("----------radom-------------");
		System.out.println("-"+radom+"-");
		System.out.println("----------radom-------------");
		System.out.println("----------verification-------------");
		System.out.println("-"+verification+"-");
		System.out.println("----------verification-------------");
		if(radom.equals(verification)){
			System.out.println("��֤����ȷ");
			if(studentservice.studentregister(sname, spassword, email, sex)){
				System.out.println("ע��ɹ�");
				MailUtil.sendEmail(email, "ѧԱ"+sname+"ע��ɹ�������������"+spassword+",���ڿ��Ե�½ѧϰ�ˣ�����", "ע��ɹ�");
				return "forward:/login.jsp";
				
			}else{
				req.setAttribute("message", "ע��ʧ�ܣ�");
				return "forward:/register.jsp";
			}
		}else{
			req.setAttribute("message", "ע��ʧ�ܣ���֤�벻��ȷ��");
			return "forward:/register.jsp";
		}
	}
	
	//student register
	@ResponseBody
	@RequestMapping(value="/radom.htm",method=RequestMethod.POST)
	public int radom(String email){
		int random =(int) (100000 + Math.random()*1000000);
		MailUtil.sendEmail(email, "��ǰ��֤��Ϊ:"+random+";30������Ч���뼰ʱע�ᣡ", "��֤��");
		System.out.println(random);
		return random;
	}
	
	//personal center <-- head
	@RequestMapping(value="/getoneperson.htm",method=RequestMethod.GET)
	public String getontperson(String sid,HttpServletRequest req){
		List<Student> student = new ArrayList<Student>();
		student = studentservice.getontperson(sid);
		req.setAttribute("student", student);
		return "personal";	
	}
	
	//personal center
		@RequestMapping(value="/getonestudent.htm",method=RequestMethod.GET)
		public String getontstudent(String sid,HttpServletRequest req){
			List<Student> student = new ArrayList<Student>();
			student = studentservice.getontperson(sid);
			req.setAttribute("student", student);
			return "updateperson";	
		}
	
	//personal center
	@RequestMapping(value="/exit.htm",method=RequestMethod.GET)
	public String exit(HttpSession session){
		session.invalidate();
		return "forward:/login.jsp";	
	}

	
	
	//update person
	@RequestMapping(value="/update.htm",method=RequestMethod.POST)
	public String update(String photo,String sid,String sname,String sage,String saddress,String shome,String sphone,String semail,String slon,String slat,String s1,MultipartFile file,HttpServletRequest request){
		
        String path = request.getSession().getServletContext().getRealPath("/photo");  
        String sphoto = file.getOriginalFilename();  
        if(sphoto==""){
        	sphoto = photo;
        }else{
        	sphoto = "../photo/" + sphoto;
	        System.out.println("fileName>>"+sphoto); 
	        File dir = new File(path, sphoto);  
	        System.out.println("dir.exists()>>"+dir.exists());  
	        if(!dir.exists()){  
	            dir.mkdirs();  
	        }  
	        System.out.println("dir.exists()>>"+dir.exists());  
	//      MultipartFile�Դ��Ľ�������  
	        try {
				file.transferTo(dir);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
        }
      
		studentservice.update(sid, sname, sage, saddress, shome, sphone, semail, slon, slat,s1,sphoto);
		return getontstudent(sid,request);	
	}
}
