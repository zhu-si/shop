package serviceImpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.order_dao;
import entity.orders;
import entity.orders_details;
import entity.orders_status;
import service.order_service;
@Service
public class order_serviceImpl implements order_service{
	
	@Autowired
	order_dao rdao;

	public List<orders> def() {
		return rdao.def();
	}

	public void insert(orders r) {
		rdao.insert(r);
	}
	
	public List<orders> getId(int id) {
		return rdao.getId(id);
	}

	public List<orders> getById() {
		return rdao.getById();
	}

	public orders code(String code) {
		return rdao.code(code);
	}

	public void add(orders_details od) {
		rdao.add(od);
	}

	public void addStatus(orders_status os) {
		rdao.addStatus(os);
	}
	
}
