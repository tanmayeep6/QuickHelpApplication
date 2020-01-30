package com.spr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spr.dao.LoginDao;
import com.spr.dto.Login;

@Service
public class LoginServiceImple implements LoginService{
	@Autowired
	private LoginDao Dao;
	@Override
	public Login validateUser(Login login) {
		
		 return Dao.validateUser(login) ;
		 
	}
	@Override
	public boolean changePasword(Login login) {
		// TODO Auto-generated method stub
		return Dao.changePasword(login);
	}
	@Override
	public boolean userDelete(String email) {
		
		return Dao.deleteUser(email);
	}

}
