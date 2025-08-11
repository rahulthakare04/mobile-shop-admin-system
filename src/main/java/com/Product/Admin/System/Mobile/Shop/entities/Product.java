package com.Product.Admin.System.Mobile.Shop.entities;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "products")
public class Product {
	  	
		@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int prodid;

	    private String model_name;

	    private String brand;

	    private float price;

	    private int stock_quantity;

	    private String features;

	    private String warranty_period;

	    private Date created_at;

		public int getProdid() {
			return prodid;
		}

		public void setProdid(int prodid) {
			this.prodid = prodid;
		}

		public String getModel_name() {
			return model_name;
		}

		public void setModel_name(String model_name) {
			this.model_name = model_name;
		}

		public String getBrand() {
			return brand;
		}

		public void setBrand(String brand) {
			this.brand = brand;
		}

		public float getPrice() {
			return price;
		}

		public void setPrice(float price) {
			this.price = price;
		}

		public int getStock_quantity() {
			return stock_quantity;
		}

		public void setStock_quantity(int stock_quantity) {
			this.stock_quantity = stock_quantity;
		}

		public String getFeatures() {
			return features;
		}

		public void setFeatures(String features) {
			this.features = features;
		}

		public String getWarranty_period() {
			return warranty_period;
		}

		public void setWarranty_period(String warranty_period) {
			this.warranty_period = warranty_period;
		}

		public Date getCreated_at() {
			return created_at;
		}

		public void setCreated_at(Date created_at) {
			this.created_at = created_at;
		}
	    
	    


}
