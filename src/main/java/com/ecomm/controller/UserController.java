package com.ecomm.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ecomm.dao.UserDAO;
import com.ecomm.entity.UserDetail;

@Controller
public class UserController {
	@Autowired
	UserDAO userDAO;
@RequestMapping("/login_success")
public  String successfulLogin(HttpSession session)
{
	String page="";
	
	SecurityContext sContext=SecurityContextHolder.getContext();
	Authentication authentication=sContext.getAuthentication();
	
	String username=authentication.getName();
	session.setAttribute(username, username);
	
	Collection<GrantedAuthority> roles=(Collection<GrantedAuthority>)authentication.getAuthorities();
	
	for(GrantedAuthority role:roles)
	{
		session.setAttribute("role", role.getAuthority());
		
		if(role.getAuthority().equals("ROLE_ADMIN"))
			page="AdminHome";
		
			else
			page="UserHome";
		
	}
	
	return page;
}

@RequestMapping("/login")
public String showLoginPage()
{
	return "Login";
}

@RequestMapping("/register")
public String showRegisterPage(Model m)
{
	UserDetail user=new UserDetail();
	m.addAttribute("user", user);
	return "Register";
}

@RequestMapping("/adminhome")
public String showAdminPage()
{
	return "AdminHome";
}

@RequestMapping("/userhome")
public String showUserPage()
{
	return "UserHome";
}

@RequestMapping(value="/registercustomer",method=RequestMethod.POST)
public String registerCustomer(@ModelAttribute("user")UserDetail user,Model m) {
	
	user.setRole("ROLE_USER");
	user.setEnabled(true);
	BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
	user.setPassword(encoder.encode(user.getPassword()));
	
	userDAO.registerUser(user);
	
	
	return "ConfirmRegistration";
}


}
