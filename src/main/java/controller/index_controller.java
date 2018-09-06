package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.type;
import searchInfo.SearchInfo;
import service.product_service;
import service.type_service;
import utils.jsonInfo;

@Controller
public class index_controller {
	
	@Autowired
	product_service pservice;
	@Autowired
	type_service tservice;
	
	@RequestMapping("index")
	public void index(ModelMap m) {
		m.put("plist",pservice.select(new SearchInfo("",false)));
		m.put("tlist",tservice.def(new SearchInfo(",",false)));
	}
	
	@RequestMapping("pt")
	public @ResponseBody jsonInfo sear(String name,ModelMap m) {
		System.out.println(name);
			List<type> list = tservice.sear(name);
			System.out.println(list.get(0).getId());
			
			String ids = "";
			for(int i=0;i<list.size();i++){
			ids+=list.get(i).getId()+",";
			}
			ids = ids.substring(0,ids.length()-1);
			System.out.println(ids);
			m.put("typelist",pservice.getByType(new SearchInfo("where type_id in ("+ids+")",false)));
			
			return new jsonInfo(1,"");
		}
		
	}

