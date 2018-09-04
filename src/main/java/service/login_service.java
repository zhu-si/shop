package service;

import entity.user;

public interface login_service {
	
	public user login(user u);
	
	public user getEmail(String email);
	
	public void insert(user u);
}
