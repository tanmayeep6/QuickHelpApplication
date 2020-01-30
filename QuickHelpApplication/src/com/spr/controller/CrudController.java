package com.spr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spr.service.LoginService;

@Controller
public class CrudController {
	@Autowired
	private LoginService loginservice;
	
	@RequestMapping(value="/admDelete/{email}",method=RequestMethod.GET)
	public ModelAndView admstdDelete(@PathVariable  String email) {
		System.out.println("delete//"+email);
		ModelAndView mv = new ModelAndView();
		System.out.println("delete////////");
		boolean check = loginservice.userDelete(email);
		
		if (check) {
			//mv.setViewName("HomepageAdmin");
			System.out.println("deleted...");
			mv.setViewName("HomepageAdmin");
		} 
		else {
			System.out.println("not deleted");
		}
		return mv;
		
	}
	
}
