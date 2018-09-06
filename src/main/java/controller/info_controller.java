package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.type;
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
	
	@RequestMapping("product_t")
	public String searchtype(int id,ModelMap m) {
		List<type> list = tservice.getByParentid(id);
		
		String ids = "";
		for(int i=0;i<list.size();i++){
		ids+=list.get(i).getId()+",";
		}
		ids = ids.substring(0,ids.length()-1);
		System.out.println(ids);
		m.put("typelist",pservice.getByType(new SearchInfo("where type_id in ("+ids+")",false)));
		return "product_type";
	}
}
