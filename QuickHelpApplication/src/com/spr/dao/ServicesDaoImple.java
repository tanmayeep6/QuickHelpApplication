package com.spr.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.spr.dto.Services;

@Repository
public class ServicesDaoImple implements ServicesDao{

	@Autowired
	private JdbcTemplate jdbctemplate;
	
	@Override
	public boolean addServices(Services services) {
		System.out.println("Adding.............");
		try {
			String city = "Kharghar";
			double lat=19.031357;
			double longi=73.059854;
			System.out.println(lat+" Adding.....cfgvhbjnkm........"+longi);
			String sql = "insert into Vendorservice(service_name,service_description ,service_contact ,service_address ,latitude,longitude,city,service_type) values(?,?,?,?,?,?,?,?);";
			System.out.println(sql);
			int a=jdbctemplate.update(sql, new Object[] { 
					services.getServiceName(),
					services.getServiceDiscription(),
					services.getContact(),
					services.getAddress(),
					lat,
					longi,
					city,
					services.getVendorServiceType()
			});
			System.out.println(a+"inserted into services");
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
