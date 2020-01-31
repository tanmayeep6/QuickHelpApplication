package com.spr.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.spr.dto.Services;
import com.spr.dto.Vendor;

@Repository
public class VendorDaoImple implements VendorDao{
	@Autowired
	private JdbcTemplate jdbctemplate;
	
	
	public void setJdbctemplate(JdbcTemplate jdbctemplate) {
		this.jdbctemplate = jdbctemplate;
	}

	public VendorDaoImple() {
		super();
		// TODO Auto-generated constructor stub
	}

	  //InsertMethod
	@Override
	public Boolean insert(Vendor vendor) {
		System.out.println("Inserting.............");
		String flag="1";
		String type="V";
		
		//Login Table
		String sql= "insert into login values (?,?,?,?)";
		int a=jdbctemplate.update(sql, new Object[] { 
				
				vendor.getVemail(),
				vendor.getPassword(),
				type,
				flag
		});
		System.out.println(a+"inserted into login");
		Date date_in= new Date();
		System.out.println(date_in);
		sql= "insert into vendor (v_first_name ,v_last_name ,gender,contact,emai,join_date, v_area , occupation ,flag, authentication_key) values(?,?,?,?,?,?,?,?,?,?)";
		
		a=jdbctemplate.update(sql, new Object [] {
				
				
				vendor.getvFirstName(),
				vendor.getvLastName(),
				vendor.getVgender(),
				vendor.getVcontactNo(),
				vendor.getVemail(),
				date_in,
				vendor.getArea(),
				vendor.getOccupation(),
				flag,
				vendor.getPassword()
				
		});
		System.out.println(a+"inserted into vendor");
		
		return true;
	}

	/* Listing the customer*/
	@Override
	public List<Vendor> getAll() {
		System.out.println("getAlllll");
		 String sql = "SELECT v_first_name,v_last_name,emai,join_date,v_area FROM vendor";
		 System.out.println(sql);
		    List<Vendor> listV = jdbctemplate.query(sql, new RowMapper<Vendor>() {
		    
		        @Override
		        public Vendor mapRow(ResultSet rs, int rowNum) throws SQLException {
		        	Vendor aVendor = new Vendor();
		        	aVendor.setvFirstName(rs.getString("v_first_name"));
		        	aVendor.setvLastName(rs.getString("v_last_name"));
		        	aVendor.setVemail(rs.getString("emai"));
		        	aVendor.setDate(rs.getDate("join_date"));
		        	aVendor.setArea(rs.getString("v_area"));
		        	return aVendor;
		        }
		 
		    });
		 
		    return listV;
		
	}

	@Override
	public Vendor getVendorName(Vendor vendor) {
		
		System.out.println("getVendorcalled");
		 String sql = "SELECT v_first_name  FROM vendor where emai=? ";
		 System.out.println(sql);
		 Vendor vend=jdbctemplate.queryForObject(sql, new Object[]{vendor.getVemail() }, new RowMapper<Vendor>() {
		    	
				@Override
				public Vendor mapRow(ResultSet rs, int rowNum) throws SQLException {
					Vendor log = new Vendor();
					log.setvFirstName(rs.getString("v_first_name"));
					
					return log;
				}
			});
		    System.out.println(vend + "Log1111111");
			return vend;
	}

	@Override
	public Services showMap(int id) {
		System.out.println("showMapcalled");
		 String sql = "SELECT *  FROM vendorservice where service_id=? ";
		 System.out.println(sql);
		 Services services1=jdbctemplate.queryForObject(sql, new Object[]{id}, new RowMapper<Services>() {
				@Override
				public Services mapRow(ResultSet rs, int rowNum) throws SQLException {
					 System.out.println("inside1");
					 Services services=new Services();
					//log.setvFirstName(vFirstName);
					 services.setServiceName(rs.getString("service_name"));
					 services.setServiceDiscription("service_description");
					 services.setContact("service_contact");
					 services.setAddress("service_address");
					 services.setLongitude(Long.parseLong(rs.getString("latitude")));
					 services.setLongitude(Long.parseLong(rs.getString("longitude")));
					 services.setCity(rs.getString("city"));
					 System.out.println("inside2showmap");
					
					return services;
				}
			});
		    System.out.println(services1 + "Log1111111");
			return services1;
	}
	
}
