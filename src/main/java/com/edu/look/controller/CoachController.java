package com.edu.look.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.look.pojo.Coach;
import com.edu.look.pojo.DriverSchool;
import com.edu.look.pojo.Evaluate;
import com.edu.look.service.ICoachService;
import com.edu.look.service.IEvaluateService;
import com.edu.look.util.MailUtil;



@Controller
@RequestMapping("/coach")
public class CoachController {

	@Autowired
	ICoachService coachservice;
	
	@Autowired
	IEvaluateService evaluateservice;
	
	@RequestMapping(value="/allcoach.htm",method=RequestMethod.GET)
	public String AllCoach(HttpServletRequest req){
		List<Coach> coach;
		coach = coachservice.getAllCoach();
		req.setAttribute("coach", coach);
		
		return "teacherShow";
		
	}
	
	@RequestMapping(value="/getnamecoach.htm",method=RequestMethod.GET)
	public String getNameCoach(HttpServletRequest req,String cid){
		List<Coach> coachone;
		List<Evaluate> evaluate;
		
		coachone = coachservice.getNameCoach(cid);
		evaluate = evaluateservice.getAllcontent(cid);
		req.setAttribute("coach", coachone);
		req.setAttribute("evaluate", evaluate);
		return "teacherIntrodu";
		
	}
	@RequestMapping(value="/getonecoach.htm",method=RequestMethod.POST)
	public String getOneCoach(String cid,HttpServletRequest req){
		req.getAttribute(cid);
		return getNameCoach(req, cid);
	}
	
	@RequestMapping(value="/email.htm",method=RequestMethod.GET)
	public String email(String cphone,String sname,String sphone,HttpServletRequest req){
		//boolean falg = false;
		if(sname.isEmpty()){
			req.setAttribute("flag2", "false");
			return "forward:/login.jsp";
		}else{
			MailUtil.sendEmail(cphone, sname+"想报名咨询您，请您及时沟通"+sname+",其联系方式为"+sphone, "报名咨询");
			req.setAttribute("message", "已经通过通过邮箱联系该教练了");
			return "forward:/coach/allcoach.htm";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="countcoach.htm",method=RequestMethod.POST)
	public int countcoach(){
		
		return coachservice.countcoach();
	}
	
	@RequestMapping(value="fristcoach.htm",method=RequestMethod.GET)
	public String fristcoach(HttpServletRequest req){
		List<Coach> coach;
		coach = coachservice.fristcoach();
		req.setAttribute("coach", coach);
		
		
		return "teacherShow";
	}
	
	@ResponseBody
	@RequestMapping(value="paginationcoach.htm",method=RequestMethod.POST)
	public List<Coach> paginationcoach(int pagenumber,int pagesize){
		
		return coachservice.paginationcoach(pagenumber, pagesize);
	}
	
}
