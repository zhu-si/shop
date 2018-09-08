package controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mysql.fabric.xmlrpc.base.Data;

import entity.shopcar;
import entity.orders;
import entity.orders_details;
import entity.orders_status;
import entity.product;
import entity.user;
import searchInfo.SearchInfo;
import service.address_service;
import service.order_service;
import service.orders_details_service;
import service.product_service;
import service.shopcar_service;
import service.user_service;
import utils.jsonInfo;

@Controller
public class shopcar_controller {
	
	@Autowired
	address_service adservice;
	@Autowired
	order_service rservice;
	@Autowired
	product_service pservice;
	@Autowired
	shopcar_service carservice;
	@Autowired
	orders_details_service odservice;
	@Autowired
	user_service uservice;

	// 各页面页面跳转购物车
	@RequestMapping("shopcar")
	public void shopcar(int id, HttpServletRequest req, ModelMap m) {
		m.put("carlist", carservice.shopcar(id));
	}
	
	// 详情页点击添加购物车
	@RequestMapping("info_shopcar")
	public @ResponseBody Integer info_shopcar(int product_id, int count, int user_id) {
		carservice.insert(product_id, count, user_id);
		return 1;
	}
	
	//点击改变数据库购物车count
	@RequestMapping("countUp")
	public @ResponseBody String countUp(int id,int count) {
		carservice.countUp(id, count);
		String result = "shopCarId:"+id+" "+"productCount:"+count;
		return result;
	}
	
	//购物车跳转支付页
	@RequestMapping("pay")
	public String pay(String ids,Double allamount,HttpSession session,ModelMap m) {
		session.setAttribute("ids", ids);
		user u=(user) session.getAttribute("user");
		if(u == null) {
			return "login";
		}else {
			m.put("address",adservice.getByUser_id(u.getId()));
			m.put("allamount", allamount);
			m.put("name",adservice.getByUser_id(u.getId()).get(0).getName());
			m.put("phone",adservice.getByUser_id(u.getId()).get(0).getTel());
			List<shopcar> ptList=carservice.select(new SearchInfo("where s.id in ("+ids+")",false));
			m.put("paylist",ptList);
			return "pay";
		}
	}
	
	//订单支付
	@RequestMapping("aaaa")
	public @ResponseBody jsonInfo pay(String ids,orders r,int address_id,HttpSession session) {
		orders_status os = new orders_status();
		user u=(user) session.getAttribute("user");
		r.setUser_id(u.getId());
		Date d = new Date();
		String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(d);
		String code = d.getTime()+""+u.getId();
		double amount=0;
		double nowamount=0;
		String[] idses = ids.split(",");
		ArrayList<Integer> idd = new ArrayList<Integer>();
		for (String string : idses) {
			idd.add(Integer.valueOf(string));
		}
		for(int i=0;i<idd.size();i++) {
			int id =idd.get(i);
			shopcar car = new shopcar();
			car = carservice.select(new SearchInfo("where s.id= "+id,false)).get(0);
			double price = car.getPrice();
			double nowprice = car.getNowprice();
			double count = car.getCount();
			nowamount=nowamount+nowprice*count;
			amount=amount+price*count;
		}
		r.setDate(date);
		r.setCode(code);
		r.setAmount(amount);
		r.setNowamount(nowamount);
		rservice.insert(r);    //订单表
		int orders_id = rservice.select(new SearchInfo("where orders.id=(select MAX(id) from orders)",false)).get(0).getId();
		List<shopcar> list = carservice.select(new SearchInfo("where s.id in ("+ids+")",false));		
		for(int i=0;i<list.size();i++) {
			orders_details od = new orders_details();
			amount=list.get(i).getPrice();
			nowamount=list.get(i).getNowprice();
			int product_id=list.get(i).getProduct_id();
			int count=list.get(i).getCount();
			od.setOrders_id(orders_id);
			od.setProduct_id(product_id);
			od.setCount(count);
			od.setPrice(amount);
			od.setNowprice(nowamount);
			od.setComments("无");
			odservice.add(od);  //订单详情表
		}
		os.setOrders_id(orders_id);
		os.setDate(date);
		os.setDest_status(1);
		os.setInfo(code);
		os.setAmount(r.getNowamount());
		os.setComments("无");
		rservice.addStatus(os);		//订单状态表
		//用户消费金额累加
		user us = new user();
		double uamount = u.getAmount();
		double uaamount = 0;
		uaamount = uamount + r.getNowamount();
		us.setAmount(uaamount);
		us.setId(u.getId());
		uservice.updateamount(us);
		carservice.deletes(ids);
		return new jsonInfo(1,"购买成功！");
	}
	
	//购物车删除商品
	@RequestMapping("del")
	public @ResponseBody jsonInfo del(int id) {
		carservice.del(id);
		return new jsonInfo(1,"删除成功！");
	}
	
}


//String[] idses = ids.split(",");
//ArrayList<Integer> idd = new ArrayList<Integer>();
//for (String string : idses) {
//	idd.add(Integer.valueOf(string));
//}
		
//		String[] idses = ids.split(",");
//		//ids = "4,5,6";
//		//[4,5,6]
//		ArrayList<Integer> idd = new ArrayList<Integer>();
//		for (String string : idses) {
//			idd.add(Integer.valueOf(string));
//		}
//		double allamount=0;
//		double amount=0;
//		String email = "";
//		String tel = "";
//
//		int orders_id = rservice.code(a).getId();
//		od.setOrders_id(orders_id);
//		for (int i = 0; i < idd.size(); i++) {
//			int id = idd.get(i);
//			int product_id = carservice.getById(id).getProduct_id();
//			int count = carservice.getById(id).getCount();
//			double price = pservice.getById(product_id).getPrice();
//			double nowprice = pservice.getById(product_id).getNowprice();
//			
//			double nowprice1=carservice.payid(id).get(i).getNowprice();
//			double price1=carservice.payid(id).get(i).getPrice();
//			email = carservice.payid(id).get(i).getEmail();
//			tel = carservice.payid(id).get(i).getTel();
//			int count1=carservice.payid(id).get(i).getCount();
//			amount = amount+price1*count1;
//			allamount=allamount+nowprice1*count1;
//			
//			r.setNowamount(allamount);
//			od.setComments("111111");
//			od.setNowprice(nowprice);
//			od.setPrice(price);
//			od.setCount(count);
//			od.setProduct_id(product_id);
//			rservice.add(od);		//订单详情表
//		}
//		r.setAddress_id(address_id);
//		
//		
//		
//		os.setOrders_id(orders_id);
//		os.setDate(df.format(new Date()));
//		os.setDest_status(6);
//		os.setInfo("未发货");
//		os.setNum(0);
//		os.setAmount(allamount);
//		os.setComments("11221111");
//		rservice.addStatus(os);
//		for (int i = 0; i < idd.size(); i++) {
//			int id = idd.get(i);
//			carservice.delete(id);
//		}
//		
//		String result = "success!";
//		return result;

