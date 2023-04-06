package it.unisa.model;

import java.io.Serializable;

public class ProductBean implements Serializable {

	private static final long serialVersionUID = 1L;
	
	int code;
	String name;
	String description;
	int price;
	float weight;
	String image;
	int quantity;
	int iva;

	public ProductBean() {
		code = -1;
		name = "";
		description = "";
		price = 0;
		weight = 0;
		image = "";
		quantity = 0;
		iva = 0;
	}
	
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public float getWeight() {
		return weight;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getIva() {
		return iva;
	}

	public void setIva(int iva) {
		this.iva = iva;
	}


	@Override
	public String toString() {
		return "ProductBean [code=" + code + ", name=" + name + ", description=" + description + ", price=" + price
				+ ", weight=" + weight + ", image=" + image + ", quantity=" + quantity + ", iva=" + iva + "]";
	}

}
