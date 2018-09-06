package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.user;
import service.login_service;
import utils.jsonInfo;

@Controller
public class login_controller {
	
	@Autowired
	login_service lservice;
	
	@RequestMapping("login_c/login")
	public String login(user u,String code,HttpSession session) {
		
		if(session.getAttribute("randomCode").toString().equalsIgnoreCase(code)) {
			user user=lservice.login(u);
			if(user!=null) {
				session.setMaxInactiveInterval(100000000);
				session.setAttribute("user", user);
				session.setAttribute("name", lservice.login(u).getEmail());
				session.setAttribute("id", lservice.login(u).getId());
				return "redirect:../index";
			}else {
				session.setAttribute("error", "�û����������");
			}
		}else {
			session.setAttribute("error", "��֤�����");
		}
		return "redirect:/login.jsp";
		
	}
	
	@RequestMapping("myregist")
	public @ResponseBody jsonInfo insert(user u) {
		if(lservice.getEmail(u.getEmail()) == null) {
			if(u.getPassword().equals(u.getPassword1())) {
				lservice.insert(u);
				return new jsonInfo(2, "ע��ɹ������¼...");
			}else {
				return new jsonInfo(1,"���벻һ�£�");
			}
		}else {
			return new jsonInfo(0, "���û��Ѵ��ڣ�");
		}
	}
	
	
	
//	@RequestMapping("login")
//	private String login(user email,HttpServletRequest req,ModelMap m) {
//		//String email = req.getParameter("email");
//		String password = req.getParameter("password");
////		if(lservice.getByName(email).isEmpty()) {
////			return "login";
////		}
////		else {
//		System.out.println(lservice.login(email).get(0).getEmail());
//			String name = lservice.login(email).get(0).getEmail();
//			String pass = lservice.login(email).get(0).getPassword();
//			if (name.equals(email) && password.equals(pass)) {
//				HttpSession session = req.getSession();
//				session.setAttribute("email", email);
//				session.setAttribute(password, password);
//				session.setMaxInactiveInterval(5);
//				return "index.jsp";
//			} else {
//				return "login.jsp";
//			}
//		}
////	}
}
