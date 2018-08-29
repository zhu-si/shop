package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import searchInfo.SearchInfo;
import service.product_service;
import service.type_service;

@Controller
public class index_controller {
	
	@Autowired
	product_service pservice;
	@Autowired
	type_service tservice;
	
	@RequestMapping("index")
	public void index(ModelMap m) {
		m.put("plist",pservice.index(new SearchInfo("",false)));
		m.put("tlist",tservice.def(new SearchInfo(",",false)));
	}
	
}
