package serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.login_dao;
import entity.user;
import service.login_service;

@Service
public class login_serviceImpl implements login_service{
	
	@Autowired
	login_dao ldao;

	public user login(user u) {
		return ldao.login(u);
	}
	
	public user getEmail(String email) {
		return ldao.getEmail(email);
	}
	
	public void insert(user u) {
		ldao.insert(u);
	}

	

}
