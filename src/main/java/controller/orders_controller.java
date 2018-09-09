package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.address;
import entity.orders;
import entity.user;
import service.address_service;
import service.order_service;
import utils.jsonInfo;

@Controller
public class orders_controller {
	
	@Autowired
	order_service rservice;
	@Autowired
	address_service addservice;
	
	@RequestMapping("orders")
	public String index(int id,ModelMap m) {
		List<orders> list = rservice.getId(id);
		m.put("orlist",list);
		m.put("olist",rservice.getById());
		return "orders";
	}
	
	@RequestMapping("insertaddress")
	public @ResponseBody jsonInfo insertaddress(address add,HttpSession session) {
		user u = (user) session.getAttribute("user");
		int user_id = u.getId();
		add.setUser_id(user_id);
		addservice.insert(add);
		return new jsonInfo(1,"Ìí¼Ó³É¹¦£¡");
	}
	
}
