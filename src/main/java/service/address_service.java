package service;

import java.util.List;

import entity.address;

public interface address_service {
	
	public List<address> getByUser_id(int id);
	
	public void insert(address add);
}
