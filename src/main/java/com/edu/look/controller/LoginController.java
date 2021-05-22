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
	
	@RequestMapping(value="/login.htm")
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
	public ValidatePic refreshValidateCode(HttpServletRequest req){
		ValidatePic validatePic = validateCodeService.getValidatePic();
		return validatePic;
	}
	
	@ResponseBody
	@RequestMapping(value="/validateImage.htm",method=RequestMethod.POST)
	public int ValidateImageCode(String pic,String code,HttpServletRequest req){
		int codeMatch = validateCodeService.checkValidateCode(pic, code)?1:0;
		System.out.println("ÑéÖ¤Âë"+codeMatch);
		return codeMatch;
	}
}
