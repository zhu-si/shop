package controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.car;
import entity.orders;
import entity.orders_details;
import entity.orders_status;
import entity.user;
import service.order_service;
import service.product_service;
import service.shopcar_service;
import utils.jsonInfo;

@Controller
public class shopcar_controller {
	
	@Autowired
	order_service rservice;
	@Autowired
	product_service pservice;
	@Autowired
	shopcar_service carservice;

	//
	@RequestMapping("aaaa")
	public @ResponseBody jsonInfo aaaa(@RequestBody ArrayList<car> cars,orders o) {
		for (int i = 0; i < cars.size(); i++) {
//			int type_id = pservice.getById(cars.get(i).getProduct_id()).getType_id();
//			int price = (int) pservice.getById(cars.get(i).getProduct_id()).getPrice();	//原单价
//			int nowprice = (int) pservice.getById(cars.get(i).getProduct_id()).getNowprice();	//现单价
//			int count = cars.get(i).getCount();		//购物车中商品数量
//			int nowamount = cars.get(i).getCount()*nowprice;
//			int amount = price*count;		//原总金额
//			int product_id = cars.get(i).getProduct_id();
//			int user_id = cars.get(i).getUser_id();
//			//o.setAmount(amount);
//			//o.setNowamount(nowamount);
//			o.setAddress_id(0);
//			o.setUser_id(user_id);
//			o.setProduct_id(product_id);
//			o.setType_id(type_id);
//			carservice.delete(cars.get(i).getId());
		}
		return new jsonInfo(1, "");
	}

	// 各页面页面跳转购物车
	@RequestMapping("shopcar")
	public void shopcar(int id, HttpServletRequest req, ModelMap m) {
		m.put("carlist", carservice.shopcar(id));
	}
	
	// 详情页点击添加购物车
	@RequestMapping("info_shopcar")
	public @ResponseBody String info_shopcar(int product_id, int count, int user_id) {
		carservice.insert(product_id, count, user_id);
		String result = "success!";
		return result;
	}
	
	//点击改变数据库购物车count
	@RequestMapping("countUp")
	public @ResponseBody String countUp(int id,int count) {
		carservice.countUp(id, count);
		String result = "shopCarId:"+id+" "+"productCount:"+count;
		return result;
	}
	
	//购物车跳转支付
	@RequestMapping("pay")
	public void pay(String ids,ModelMap m,orders r,orders_details od,orders_status os,HttpSession session) {
		user u=(user) session.getAttribute("user");
		
		//生成时间和订单号
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String a=String.valueOf(new Date().getTime());
		r.setDate(df.format(new Date()));
		r.setCode(a);
		
		
		String[] idses = ids.split(",");
		//ids = "4,5,6";
		//[4,5,6]
		ArrayList<Integer> idd = new ArrayList<Integer>();
		for (String string : idses) {
			idd.add(Integer.valueOf(string));
		}
		ArrayList<orders> list = new ArrayList<orders>();
		double allamount=0;
		double amount=0;
		String email = "";
		String tel = "";
		for (int i = 0; i < idd.size(); i++) {
			int id = idd.get(i);
			int user_id = carservice.getById(id).getUser_id();
			int product_id = carservice.getById(id).getProduct_id();
			int count = carservice.getById(id).getCount();
			double price = pservice.getById(product_id).getPrice();
			double nowprice = pservice.getById(product_id).getNowprice();
			double nowamount = (nowprice * count);
			
			
			list.addAll(carservice.payid(id));
			double nowprice1=list.get(i).getNowprice();
			double price1=list.get(i).getPrice();
			email = list.get(i).getEmail();
			tel = list.get(i).getTel();
			int count1=list.get(i).getCount();
			amount = amount+price1*count1;
			allamount=allamount+nowprice1*count1;
			r.setAmount(amount);
			r.setNowamount(allamount);
		}
		r.setAddress_id(1);
		r.setUser_id(u.getId());
		rservice.insert(r);    //订单表
		
		m.put("tel",tel);
		m.put("email",email);
		m.put("allamount", allamount);
		m.put("paylist",list);
		
		//订单详情表
		for (int i = 0; i < idd.size(); i++) {
			int id = idd.get(i);
			int product_id = carservice.getById(id).getProduct_id();
			int count = carservice.getById(id).getCount();
			double price = pservice.getById(product_id).getPrice();
			double nowprice = pservice.getById(product_id).getNowprice();
			int orders_id = rservice.code(a).getId();
			od.setComments("111111");
			od.setNowprice(nowprice);
			od.setPrice(price);
			od.setCount(count);
			od.setProduct_id(product_id);
			od.setOrders_id(orders_id);
			rservice.add(od);
		}
		
		//订单状态表
		for (int i = 0; i < idd.size(); i++) {
			int id = idd.get(i);
			int product_id = carservice.getById(id).getProduct_id();
			int count = carservice.getById(id).getCount();
			double price = pservice.getById(product_id).getPrice();
			double nowprice = pservice.getById(product_id).getNowprice();
			int orders_id = rservice.code(a).getId();
			os.setOrders_id(orders_id);
			os.setDate(df.format(new Date()));
			os.setDest_status(6);
			os.setInfo("已发货");
			os.setNum(1);
			os.setAmount(allamount);
			os.setComments("11221111");
		}
		rservice.addStatus(os);
		carservice.delete();
		
	}
}
