package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.user;
import service.login_service;

@Controller
public class login_controller {

	user entity;

	@Autowired
	login_service lservice;

	@RequestMapping("login")
	private String login(HttpServletRequest req) {
		String name = req.getParameter("email");
		String password = req.getParameter("password");
//		if(lservice.getByName(email).isEmpty()) {
//			return "login";
//		}
//		else {
			String email = lservice.getByName(name).get(0).getNike();
			String pass = lservice.getByName(email).get(0).getPassword();
			if (email.equals(email) && password.equals(pass)) {
				HttpSession session = req.getSession();
				session.setAttribute("email", email);
				session.setAttribute(password, password);
				session.setAttribute("id", lservice.getByName(email).get(0).getId());
				session.setAttribute("name", lservice.getByName(email).get(0).getName());
				session.setMaxInactiveInterval(5);
				return "index.jsp";
			} else {
				return "login.jsp";
			}
		}
//	}
}
