package com.spr.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import org.springframework.stereotype.Repository;

import com.spr.dto.Search;
import com.spr.dto.Services;
import com.spr.dto.Vendor;

@Repository
public class SearchDaoImple implements SearchDao{
	@Autowired
	private JdbcTemplate jdbctemplate;
	
	
	public void setJdbctemplate(JdbcTemplate jdbctemplate) {
		this.jdbctemplate = jdbctemplate;
	}
	@Override
	public List<Services> searchServices(Search search) {
		System.out.println("getAlllll");
		 String sql = "SELECT * FROM vendorservice where city=? and service_type=?";
		 System.out.println(sql);
		    List<Services> services1 = jdbctemplate.query(sql, new Object[]{search.getCity(),search.getServiceType()}, new RowMapper<Services>() {
		    
		        @Override
		        public Services mapRow(ResultSet rs, int rowNum) throws SQLException {
		        	System.out.println("serDao1");
		        	Services services=new Services();
		        	services.setServiceName(rs.getString("service_name"));
					 services.setServiceDiscription(rs.getString("service_description"));
					 services.setContact(rs.getString("service_contact"));
					 services.setAddress(rs.getString("service_address"));
					 services.setLongitude(rs.getLong("latitude"));
					 services.setLongitude(rs.getLong("longitude"));
					 services.setCity(rs.getString("city"));
					 services.setVendorServiceType(rs.getString("service_type"));
					System.out.println(services + "LO-------------------" );
					System.out.println("serDao2");
					return services;
		        }
		 
		    });
		    System.out.println("serDao1");
		    return services1;
	}
}
