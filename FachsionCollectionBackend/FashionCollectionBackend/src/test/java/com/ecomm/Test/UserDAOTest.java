package com.ecomm.Test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.UserDAO;
import com.ecomm.entity.UserDetail;

public class UserDAOTest {
	
	static UserDAO userDAO;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		userDAO=(UserDAO)context.getBean("userDAO");
	}
	 
	
	@Test
	public void registerUserTest()
	{
		UserDetail user=new UserDetail();
		user.setUsername("ramya");
		user.setPassword("ramya123");
		user.setCustomerName("ramya");
        user.setEnabled(true);
		user.setEmailid("ramya@gmail.com");
		user.setMobileNo("80105862683");
		user.setRole("ROLE_ADMIN");
		user.setAddress("bali");
	
		assertTrue("Problem in Adding ",userDAO.registerUser(user));
	}
	
	
	
}
