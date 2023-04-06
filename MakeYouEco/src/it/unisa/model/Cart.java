package it.unisa.model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Cart {

	private List<ProductBean> products;
	private List<Integer> quantity;
	private float totalPrice;
	
	public Cart() {
		products = new ArrayList<ProductBean>();
		quantity = new ArrayList<Integer>();
	}
	
	public void addProduct(ProductBean product) {
		products.add(product);
		quantity.add(1);
		setTotalPrice(totalPrice + product.getPrice());
	}
	
	public void deleteProduct(ProductBean product) {
		int i = 0;
		for(ProductBean prod : products) {
			if(prod.getCode() == product.getCode()) {
				products.remove(prod);
				quantity.remove(i);
				setTotalPrice(totalPrice - product.getPrice());
				break;
			}
			i++;
		}
 	}
	
	
	public List<ProductBean> getProducts() {
		return products;
	}
	
	public List<Integer> getQuantity() {
		return quantity;
	}
	
	
	public float getTotalPrice() {
		return totalPrice;
	}
	
	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
}
