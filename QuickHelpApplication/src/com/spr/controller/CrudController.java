package com.spr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spr.dto.Services;
import com.spr.service.LoginService;
import com.spr.service.VendorService;

@Controller
public class CrudController {
	@Autowired
	private LoginService loginservice;
	
	@Autowired
	private VendorService vendorService;
	
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
	@RequestMapping(value="/showMap/{id}",method=RequestMethod.GET)
	public ModelAndView addMap(@PathVariable  int id) {
		System.out.println("delete//"+id);
		ModelAndView mv = new ModelAndView();
		System.out.println("showmap////////");
		Services services = vendorService.showMap(id);
		System.out.println("showmap////////");
		mv.addObject(services);
		mv.setViewName("testmap1");
		return mv;
		
	}

	
}
