package com.spr.service;

import com.spr.dto.Login;

public interface LoginService {
	 Login validateUser(Login login);
	 boolean changePasword(Login login);
	 boolean userDelete(String email);
	
}
