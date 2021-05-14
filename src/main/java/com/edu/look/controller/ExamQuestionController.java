package com.edu.look.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.look.pojo.ExamQuestion;
import com.edu.look.service.IExamQuestionService;

@Controller
@RequestMapping("/exam")
public class ExamQuestionController {
	
	@Autowired
	IExamQuestionService examService;
	
	@RequestMapping(value="/getexamquestion.htm",method=RequestMethod.GET)
	public String getExamQuestion(HttpServletRequest req,String iid){
		ExamQuestion exam = examService.getExamQuestion(iid);
		System.out.println(exam);
		req.setAttribute("exam", exam);
		return "forward:/exam.jsp";
	}
}
