package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.product_dao;
import entity.product;
import searchInfo.SearchInfo;
import service.product_service;

@Service
public class product_serviceImpl implements product_service{
	
	@Autowired
	product_dao pdao;
	
	public List<product> select(SearchInfo info) {
		return pdao.select();
	}

	public product getById(int id) {
		return pdao.getById(id);
	}

	public List<product> getByType_id(int id) {
		return pdao.getByType_id(id);
	}

}
