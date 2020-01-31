package com.spr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spr.dto.Search;
import com.spr.dto.Services;
import com.spr.service.SearchService;

@Controller
public class SearchController {

	@Autowired
	private SearchService searchService;
	

	public void setVendorService(SearchService searchService) {
		this.searchService = searchService;
	}

	@RequestMapping(value="/searchVendorD",method=RequestMethod.POST)
	public ModelAndView listCont(@RequestParam("serviceType") String service,@RequestParam("city") String area) {
		ModelAndView model=new ModelAndView();
		
		
		try {
			System.out.println("ser1");
			Search search=new Search();
			search.setServiceType(service);
			search.setCity(area);
			System.out.println("ser2");
			List<Services> list=searchService.searchServices(search);
			
			System.out.println("success");
			model.addObject("listContact", list);
			for (Services s : list) {
				System.out.println(s);
			}
		    model.setViewName("vendorSearchData");
		    System.out.println("success0");
			
		}catch(Exception e){
			System.out.println("Fail");
			model.setViewName("Index");
		}
		System.out.println("success0");
		return model;
	}
}