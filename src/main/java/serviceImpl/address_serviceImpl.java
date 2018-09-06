package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.address_dao;
import entity.address;
import service.address_service;

@Service
public class address_serviceImpl implements address_service{
	
	@Autowired
	address_dao adddao;
	
	public List<address> getByUser_id(int id) {
		return adddao.getByUser_id(id);
	}

	public void insert(address add) {
		adddao.insert(add);
	}
	
}
