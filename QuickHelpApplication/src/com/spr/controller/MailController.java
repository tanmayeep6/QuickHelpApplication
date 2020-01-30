package com.spr.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spr.service.MailService;
import com.spr.dao.*;

@Controller
public class MailController {
	
	@Autowired
	private mailDao mailDao;
	
	@Autowired
	private MailService mailservice;
	
	
	@RequestMapping(value="/forgot",method=RequestMethod.GET)
	public String forgotPasswordAction()
	{
    	return "ForgotPass";
	}
	
	
	@RequestMapping(value="/forgot-action",method=RequestMethod.POST)
	public ModelAndView addStudentAction(ModelAndView ref,@RequestParam("email") String email,HttpServletRequest req)
	{
		boolean validemail=mailDao.isMailExist(email);
		
		
		try {
		 if(validemail)
		{
			String pass=mailDao.getPassword(email);
			mailservice.sendMail(email, pass);
			ref.addObject("emailsuccess", "Reset link sent.. check your Mail..");
			ref.setViewName("ForgotPassChange");
		}
		else
			{
			ref.addObject("emailinvalid", "Email Doesnt Exist");	
			ref.setViewName("ForgotPass");
			}
		
			
		} catch (Exception e) {
			ref.addObject("serveError", "Server Error");
			ref.setViewName("ForgotPass");
		}
		return ref;
		
	}
	
	

}
