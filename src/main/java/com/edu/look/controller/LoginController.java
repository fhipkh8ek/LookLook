package com.edu.look.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.look.pojo.ValidatePic;
import com.edu.look.service.IStudentService;
import com.edu.look.service.IValidateCodeService;

@Controller
@RequestMapping("login")
public class LoginController {
	
	@Autowired
	IValidateCodeService validateCodeService;
	
	@RequestMapping(value="/login.htm",method=RequestMethod.GET)
	public String index(HttpServletRequest req){
		ValidatePic validatePic = validateCodeService.getValidatePic();
		System.out.println(validatePic.getId());
		req.setAttribute("validatePic", validatePic);
		req.setAttribute("validateCodeService", validateCodeService);
		return "forward:/login.jsp";
	}
	
	//validateCode
	@ResponseBody
	@RequestMapping(value="/validateCode.htm",method=RequestMethod.POST)
	public ValidatePic validateCode(HttpServletRequest req){
		ValidatePic validatePic = validateCodeService.getValidatePic();
		System.out.println("自己刷新界面"+validatePic.getId());
		req.setAttribute("validatePic", validatePic);
		return validatePic;
	}
}
