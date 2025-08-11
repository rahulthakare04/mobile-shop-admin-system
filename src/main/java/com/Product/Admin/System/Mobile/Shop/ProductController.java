package com.Product.Admin.System.Mobile.Shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.Product.Admin.System.Mobile.Shop.entities.Product;
import com.Product.Admin.System.Mobile.Shop.services.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping(path = "/dashboard")
	public String home() {
		return "home.jsp";
	}
	
	
	@GetMapping(path = "/productsadd")
	public String addProductForm() {
		return "addProductForm.jsp";
	}
	
	@PostMapping(path = "/addNewProduct")
	public String addNewProduct(Product product) {
		boolean status= productService.addNewProduct(product);
		if(status)
			return "productAdded.jsp";
		else
			return "productAddFail.jsp";
	}
	
	@GetMapping(path = "/viewProducts")
	public String viewAllProducts(Model m) {
		List<Product> products=productService.getAllProducts();
		m.addAttribute("products", products);		
		return "allProduct.jsp";
	}
	
	@GetMapping(path = "/searchProducts")
	public String serchProduct() {
		return "searchProduct.jsp";
	}
	
	@PostMapping(path = "/serchByBrand")
	public String searchByBrand(String brand,Model m) {
		List<Product> products=productService.searchByBrand(brand);
		m.addAttribute("products", products);		
		
		return "productsByBrand.jsp";
	}
	
	@PostMapping(path = "/searchByPrice")
	public String findByPriceBetween(double minPrice,double maxPrice,Model m) {
		List<Product> products=productService.findByPriceBetween(minPrice,maxPrice);
		m.addAttribute("products", products);
		m.addAttribute("maxPrice", maxPrice);
		m.addAttribute("minPrice", minPrice);


		if(!products.isEmpty()) {
			return "ProductsByPriceBetween.jsp";
		}
		else {
			return "NoProductsByPriceBetween.jsp";
		}
		
	}
	
	@GetMapping(path = "/low-stockProducts")
	public String lowStockProducts(Model m) {
		List<Product> products=productService.lowStockProducts();
		m.addAttribute("products", products);		
		
		return  "LoswStockProducts.jsp";
	}
	
	@GetMapping(path = "/deleteProduct")
	public String deleteProductForm() {
		return "deleteProductForm.jsp";
	}
	
	@PostMapping(path = "/productDelete")
	public String deleteProduct(int prodid,Model m) {
		String page=productService.deleteProduct(prodid);
		m.addAttribute("prodid", prodid);
		
		return page;
	}
	@GetMapping(path = "/updateProducts")
	public String updateProducts() {
		return "updateProducts.jsp";
	}
	
	@PostMapping(path = "/updatePrice")
	public String updatePrice(int prodid,float price,Model m) {
		String page=productService.updatePriceById(prodid,price);
		m.addAttribute("prodid", prodid);
		return page;
	}
	
	@PostMapping(path = "/updateStock")
	public String updateStockById(int prodid,int stock_quantity,Model m) {
		String page=productService.updateStockById(prodid,stock_quantity);
		m.addAttribute("prodid", prodid);
		return page;
	}
}
