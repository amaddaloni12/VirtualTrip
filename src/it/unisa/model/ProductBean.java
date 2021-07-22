package it.unisa.model;

import java.io.Serializable;

public class ProductBean implements Serializable {

	private static final long serialVersionUID = 1L;
	
	int code;
	String name;
	String description;
	int price;
	int quantity;
	String platform;
	String softhouse;
	
	int cartQuantity;

	public ProductBean() {
		code = -1;
		name = "";
		description = "";
		quantity = 0;
		platform = "";
		softhouse = "";
		cartQuantity = 1;
	}

	public int getCartQuantity() {
		return cartQuantity;
	}

	public void setCartQuantity(int cartQuantity) {
		this.cartQuantity = cartQuantity;
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

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public String getPlatform() {
		return platform;
	}

	public void setPlatform(String platform) {
		this.platform = platform;
	}

	public String getSofthouse() {
			return softhouse;
	}

	public void setSofthouse(String softhouse) {
			this.softhouse = softhouse;
	}

	@Override
	public String toString() {
		return name + " (" + code + "), " + price + " " + quantity + ". " + description;
	}

}
