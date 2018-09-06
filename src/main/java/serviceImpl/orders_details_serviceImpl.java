package serviceImpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.order_dao;
import dao.orders_details_dao;
import entity.orders;
import entity.orders_details;
import entity.orders_status;
import searchInfo.SearchInfo;
import service.orders_details_service;
@Service
public class orders_details_serviceImpl implements orders_details_service{
	
	@Autowired
	orders_details_dao oddao;

	public List<orders_details> select(SearchInfo info) {
		return oddao.select(info);
	}

	public void add(orders_details od) {
		oddao.add(od);
	}
}
