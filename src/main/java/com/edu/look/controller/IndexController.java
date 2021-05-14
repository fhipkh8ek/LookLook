package com.edu.look.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.look.pojo.Coach;
import com.edu.look.pojo.DriverSchool;
import com.edu.look.pojo.Topic;
import com.edu.look.service.ICoachService;
import com.edu.look.service.IDriverSchoolService;
import com.edu.look.service.ITopicService;

@Controller
@RequestMapping("index")
public class IndexController {

	@Autowired
	ITopicService topicservice;
	
	@Autowired
	IDriverSchoolService driverschoolservice;
	
	@Autowired
	ICoachService coachservice;
	
	@RequestMapping(value="index.htm",method=RequestMethod.GET)
	public String index(HttpServletRequest req){
		List<Topic> topic;
		List<DriverSchool> driverschool;
		List<Coach> coach;
		List<Coach> coachlist;
		
		driverschool = driverschoolservice.getDriverschool();
		coach = coachservice.getCoach();
		coachlist = coachservice.getascCoach();
		topic = topicservice.getLiulanTopic();
		
		req.setAttribute("driverschool", driverschool);
		req.setAttribute("coach", coach);
		req.setAttribute("coachlist", coachlist);
		req.setAttribute("topic", topic);
		
		return "forward:/index.jsp";
	}
}
