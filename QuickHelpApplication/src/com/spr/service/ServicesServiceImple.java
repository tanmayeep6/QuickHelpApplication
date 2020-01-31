package com.spr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spr.dao.ServicesDao;
import com.spr.dto.Services;

@Service
public class ServicesServiceImple implements ServicesService {

	@Autowired
	private ServicesDao servicesDao;
	
	@Override
	public boolean addServices(Services services) {
		return servicesDao.addServices(services);
	}
	
}
