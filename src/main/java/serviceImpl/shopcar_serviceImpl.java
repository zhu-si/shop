package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.shopcar_dao;
import entity.shopcar;
import service.shopcar_service;

@Service
public class shopcar_serviceImpl implements shopcar_service{
	
	@Autowired
	shopcar_dao cardao;

	public List<shopcar> shopcar(int id) {
		return cardao.shopcar(id);
	}
	
	public void insert(int product_id,int count,int user_id) {
		cardao.insert(product_id,count,user_id);
	}

	public void update(shopcar car) {
		cardao.update(car);
	}

	public void delete(int id) {
		cardao.delete(id);
	}

	public shopcar getById(int id) {
		return cardao.getById(id);
	}

	
}
