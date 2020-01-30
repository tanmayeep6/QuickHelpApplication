package com.spr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.spr.dao.CustomerDao;
import com.spr.dto.Customer;

@Service
public class CustomerServiceImple implements CustomerService {

	@Autowired
	private CustomerDao Dao;
	@Override
	public boolean addCustomer(Customer customer) {
		
		return Dao.addCustomer(customer);
	}
	@Override
	public List<Customer> getAll() {
		System.out.println("Customer services..........");
		return Dao.getAll();
	}
	
}
