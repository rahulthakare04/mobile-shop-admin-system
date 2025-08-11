package com.Product.Admin.System.Mobile.Shop.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Product.Admin.System.Mobile.Shop.entities.Admin;
import com.Product.Admin.System.Mobile.Shop.repositories.AdminRepository;

@Service
public class AdminServices {
	
	@Autowired
	private AdminRepository adminRepository;

	public Admin checkSUserandPass(String username, String password) {
		Admin admin=adminRepository.findByUsernameAndPassword(username, password);
		
		return admin;
	}

	public Admin createNewAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return adminRepository.save(admin);
	}
	

}
