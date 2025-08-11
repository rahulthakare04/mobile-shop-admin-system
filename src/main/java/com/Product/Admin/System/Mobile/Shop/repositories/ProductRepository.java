package com.Product.Admin.System.Mobile.Shop.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.Product.Admin.System.Mobile.Shop.entities.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
		List<Product> findByBrand(String brand);
	    List<Product> findByPriceBetween(double minPrice, double maxPrice);

	    @Query(value = "SELECT * FROM products WHERE stock_quantity < :quantity", nativeQuery = true)
	    List<Product> findLowStockProducts(@Param("quantity") int quantity);
}
