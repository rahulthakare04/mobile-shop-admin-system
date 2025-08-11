package com.Product.Admin.System.Mobile.Shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Product.Admin.System.Mobile.Shop.entities.Admin;
import com.Product.Admin.System.Mobile.Shop.services.AdminServices;

import jakarta.servlet.http.HttpSession;


@Controller
public class AdminController {
	
	@Autowired
	private AdminServices adminServices;
	
	
	@GetMapping(path = "/")
	public String login() {
		return "login.html";
	}
	
	@PostMapping(path = "/dashboard")
	public String home( String username, String password,Model m) {
		Admin admin=adminServices.checkSUserandPass(username, password);
		
		if(admin!=null) {
		m.addAttribute("name", admin.getOwner_name());
		return "home.jsp";
		}
		else {
		return "fail.jsp";
		}
	}
	
	@GetMapping("/logout")
    public String logout() {
        return "login.html";
    }
	
	@PostMapping(path = "/signup")
	public String signup(Admin admin) {
		Admin admin2= adminServices.createNewAdmin(admin);
		if(admin2 != null)
			return "accountCreated.jsp";
		else
			return "accountCreateFail.jsp";
	}
}
