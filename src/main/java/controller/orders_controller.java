package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.orders;
import service.order_service;

@Controller
public class orders_controller {
	
	@Autowired
	order_service rservice;
	
	@RequestMapping("orders")
	public String index(int id,ModelMap m) {
		List<orders> list = rservice.getId(id);
		m.put("orlist",list);
		m.put("olist",rservice.getById());
		
		return "orders_details";
	}
	
//	@RequestMapping("product_type")
//	public void search(int id,ModelMap m) {
//		m.put("typelist",pservice.getByType_id(id));
//		
//	}
	
}
