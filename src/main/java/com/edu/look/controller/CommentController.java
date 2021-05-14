package com.edu.look.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.look.service.ICommentService;

@Controller
@RequestMapping("comment")
public class CommentController {

	@Autowired
	ICommentService commentservice;
	
	@RequestMapping(value="addcomment",method=RequestMethod.POST)
	public String addComment(String tid, String sid, String comment,HttpServletRequest req){
		if(sid.isEmpty()){
			req.setAttribute("flag", "false");
			return "forward:/login.jsp";
		}else{
			SimpleDateFormat dateFormater = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			Date date=new Date();
			String comtime = dateFormater.format(date);
			commentservice.addComment(tid, sid, comment, comtime);
			return "forward:/topic/gettopic.htm";
		}
	}
	
	
}
