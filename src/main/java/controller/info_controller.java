package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import searchInfo.SearchInfo;
import service.product_service;
import service.type_service;

@Controller
public class info_controller {
	
	@Autowired
	product_service pservice;
	@Autowired
	type_service tservice;
	
	@RequestMapping("product_info")
	public void index(int id,ModelMap m) {
		m.put("plist",pservice.getById(id));
	}
	
	@RequestMapping("product_type")
	public void search(int id,ModelMap m) {
		m.put("typelist",pservice.getByType_id(id));
		
	}
	
}
