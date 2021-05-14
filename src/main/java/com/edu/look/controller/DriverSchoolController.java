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
import com.edu.look.service.ICoachService;
import com.edu.look.service.IDriverSchoolService;

@Controller
@RequestMapping("driverschool")
public class DriverSchoolController {

	@Autowired
	IDriverSchoolService driverschool;
	
	@Autowired
	ICoachService coachservice;
	
	@RequestMapping(value="getalldriverschool.htm",method=RequestMethod.GET)
	public String getAllDriverSchool(HttpServletRequest req){
		List<DriverSchool> driverschoollist;
		driverschoollist = driverschool.getAlldriverschool();
		req.setAttribute("driverschoollist", driverschoollist);
		return "getalldriverschool";
	}
	
	@RequestMapping(value="getonedriverschool.htm",method=RequestMethod.GET)
	public String getOneDriverSchool(String did,HttpServletRequest req){
		List<DriverSchool> onedriverschoollist;
		List<Coach> coachlist;
		coachlist=coachservice.getByDriverSchoolCoach(did);
		req.setAttribute("coachlist", coachlist);
		onedriverschoollist = driverschool.getOnedriverschool(did);
		req.setAttribute("onedriverschoollist", onedriverschoollist);
		return "getonedriverschool";
	}
	
	@ResponseBody
	@RequestMapping(value="countdriverschool.htm",method=RequestMethod.POST)
	public int countdriverschool(){
		
		return driverschool.countdriverschool();
	}
	
	@RequestMapping(value="fristdriverschool.htm",method=RequestMethod.GET)
	public String fristdriverschool(HttpServletRequest req){
		List<DriverSchool> driverschoollist;
		driverschoollist = driverschool.fristdriverschool();
		req.setAttribute("driverschoollist", driverschoollist);
		
		
		return "getalldriverschool";
	}
	
	@ResponseBody
	@RequestMapping(value="paginationdriverschool.htm",method=RequestMethod.POST)
	public List<DriverSchool> paginationdriverschool(int pagenumber,int pagesize){
		return driverschool.paginationdriverschool(pagenumber, pagesize);
	}
}
