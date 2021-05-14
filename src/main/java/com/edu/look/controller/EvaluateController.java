package com.edu.look.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.look.service.IEvaluateService;

@Controller
@RequestMapping("/evaluate")
public class EvaluateController {

	@Autowired
	IEvaluateService evaluateservice;
	
	
	@RequestMapping(value="/addcontent.htm",method=RequestMethod.POST)
	public String addcontent(String cid,String sid,String econtent,HttpServletRequest req){
		
		if(sid.isEmpty()){
			req.setAttribute("flag", "false");
			return "forward:/login.jsp";
		}else{
			SimpleDateFormat dateFormater = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			Date date=new Date();
			String etime = dateFormater.format(date);
			evaluateservice.addcontent(cid, sid, econtent, etime);
			req.setAttribute("cid", cid);
			return "forward:/coach/getonecoach.htm";
		}
		
	}
	
	
	
}
