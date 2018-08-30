package controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.shopcar;
import searchInfo.SearchInfo;
import service.product_service;
import service.shopcar_service;
import utils.jsonInfo;

@Controller
public class shopcar_controller {

	@Autowired
	product_service pservice;
	@Autowired
	shopcar_service carservice;
	
	//购物车提交结算
	@RequestMapping("aaaa")
	public @ResponseBody jsonInfo aaaa(@RequestBody ArrayList<shopcar> cars) {
		System.out.println(cars.size());
		return new jsonInfo(1, "");
	}
	
	//各页面页面跳转购物车
	@RequestMapping("shopcar")
	public void  shopcar(int id,ModelMap m) {
		m.put("carlist",carservice.shopcar(id));
	}
	
	//详情页点击添加购物车
	@RequestMapping("info_shopcar")
	public @ResponseBody String info_shopcar(int product_id, int count, int user_id) {
		carservice.insert(product_id, count, user_id);
		String result = "success!";
		return result;
	}

}
