package com.spr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spr.dao.CustomerDao;
import com.spr.dao.VendorDao;
import com.spr.dto.Customer;
import com.spr.dto.Login;
import com.spr.dto.Vendor;
import com.spr.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginservice;
	
	@Autowired
	private CustomerDao customerservice;
	
	@Autowired
	private VendorDao vendorservice;
	
	@Autowired
	HttpSession session;
	
	public void setLoginservice(LoginService loginservice) {
		this.loginservice = loginservice;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView userLogin() {

		ModelAndView mv = new ModelAndView();
		try
		{
			if(session.getAttribute("slog").equals("1")){
				if(session.getAttribute("type").equals("A")){
				mv.setViewName("HomepageAdmin");
				}
				else if(session.getAttribute("type").equals("U")){
				mv.setViewName("Homepage");
				}
				else{
				mv.setViewName("HomepageVendor");
				}
			}
			else{
				mv.setViewName("Index");
				}
			}
		catch(NullPointerException e){
			mv.setViewName("Index");
			}
		return mv;
		}
	@RequestMapping(value = "/abc", method = RequestMethod.POST)
	public ModelAndView userLogin(@RequestParam("email") String email, @RequestParam("password") String password) {
		System.out.println("login////////");
		ModelAndView mv = new ModelAndView();
		System.out.println("log11");
		Login log = new Login();
		System.out.println("log12");
		log.setEmail(email);
		System.out.println("log13");
		log.setPassword(password);
		System.out.println("log14");

		mv.addObject("success", "Login Successful.");
		System.out.println("log2");
		Login log1 = loginservice.validateUser(log);
		System.out.println("log3");
		session.setAttribute("email", log1.getEmail());
		session.setAttribute("type", log1.getUserType());
		session.setAttribute("slog", "1");
		
			
			if(log1.getUserType().equals("A"))
				mv.setViewName("HomepageAdmin");
			
			else if(log1.getUserType().equals("U")) {
				
				Customer customer = new Customer();
				customer.setEmail(email);
				Customer customer1 = customerservice.getCustomerName(customer);
				session.setAttribute("customerName",customer1.getC_first_name() );
				mv.setViewName("Homepage");
			}
			else {
				System.out.println(" received................");
				Vendor vendor = new Vendor();
				vendor.setVemail(email);
				System.out.println("Before"+email);
				Vendor vendor1=vendorservice.getVendorName(vendor);
				session.setAttribute("vendorName",vendor1.getvFirstName());
				mv.setViewName("HomepageVendor");
			}
		try {
			
		} catch (Exception e) {

			mv.addObject("msg", "Invalid user id or password");
			mv.setViewName("Index");
		}
		return mv;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public ModelAndView userLogout() {
		
		ModelAndView mv = new ModelAndView();
		try {
		session.invalidate();
		mv.setViewName("Index");
		} catch (Exception e) {
		mv.setViewName("Index");
		}
	return mv;
	}
	
	
	@RequestMapping(value = "/changePass", method = RequestMethod.POST)
	public ModelAndView resetPassword( @RequestParam("email") String email,@RequestParam("password") String password) {
		
		ModelAndView mv = new ModelAndView();
		Login log = new Login();
		log.setEmail(email);
		log.setPassword(password);
		try
		{
			if(loginservice.changePasword(log)){
				mv.addObject("msg", "Password changed successful");
				mv.setViewName("Index");
			}
			else{
				mv.addObject("msg", "Password changed error");
				mv.setViewName("forgotPassword");
				}
			}
		catch(NullPointerException e){
			mv.setViewName("forgotPassword");
			}
		return mv;
	}
	
	
}
