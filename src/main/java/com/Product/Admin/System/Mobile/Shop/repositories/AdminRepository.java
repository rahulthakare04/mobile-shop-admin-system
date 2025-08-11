package com.Product.Admin.System.Mobile.Shop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Product.Admin.System.Mobile.Shop.entities.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer> {
	

    boolean existsByUsernameAndPassword(String username, String password);

	Admin findByUsernameAndPassword(String username, String password);

}
