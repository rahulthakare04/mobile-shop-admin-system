package com.Product.Admin.System.Mobile.Shop.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Product.Admin.System.Mobile.Shop.entities.Product;
import com.Product.Admin.System.Mobile.Shop.repositories.ProductRepository;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepository productRepository;

	public boolean addNewProduct(Product product) {
		// TODO Auto-generated method stub
		Product product2=productRepository.save(product);
		if(product2 != null) {
			return true;
		}
		else {
			return false;
		}
		
	}

	public List<Product> getAllProducts() {
		// TODO Auto-generated method stub
		return productRepository.findAll();
	}

	public List<Product> searchByBrand(String brand) {
		// TODO Auto-generated method stub
		List<Product> products=productRepository.findByBrand(brand);
		return products;
		
	}

	public List<Product> findByPriceBetween(double minPrice, double maxPrice) {
		// TODO Auto-generated method stub
		return productRepository.findByPriceBetween(minPrice, maxPrice);
	}

	public List<Product> lowStockProducts() {
		// TODO Auto-generated method stub
		return productRepository.findLowStockProducts(5);
	}

	public String deleteProduct(int prodid) {
		// TODO Auto-generated method stub
		String page="";
		boolean status=productRepository.existsById(prodid);
		if(status) {
			productRepository.deleteById(prodid);
			page="productdeleted.jsp";
		}
		else {
			page="productNotFound.jsp";
		}
		return page;
	}

	public String updatePriceById(int prodid, float price) {
		// TODO Auto-generated method stub
		Product product=productRepository.findById(prodid).orElse(null);
		if(product !=null) {
			product.setPrice(price);
			productRepository.save(product);
			return "priceUpdated.jsp";
			
		}
		else {
			return "productNotFound.jsp";
		}
		
	}

	public String updateStockById(int prodid, int stock_quantity) {
		// TODO Auto-generated method stub
		Product product=productRepository.findById(prodid).orElse(null);
		if(product !=null) {
			product.setStock_quantity(stock_quantity);
			productRepository.save(product);
			return "stockUpdate.jsp";
			
		}
		else {
			return "productNotFound.jsp";
		}

	}
	
}
