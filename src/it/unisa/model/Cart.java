package it.unisa.model;

import java.util.ArrayList;
import java.util.List;

public class Cart {

	private List<ProductBean> products;
	
	public Cart() {
		products = new ArrayList<ProductBean>();
	}
	
	public void addProduct(ProductBean product) {
		
		if(this.isContain(product)) {
			ProductBean bean = this.getProduct(product.getCode());
			bean.setCartQuantity(bean.getCartQuantity()+1);
		}
		else {
			products.add(product);
		}
	} 
	
	public void deleteProduct(ProductBean product) {
		ProductBean bean = this.getProduct(product.getCode());
			if(bean.getCartQuantity()<2) {
				products.remove(bean);
			}
			else {
				bean.setCartQuantity(bean.getCartQuantity()-1);
			}
 	}
	
	public boolean isContain(ProductBean bean) {
		
		for(int i=0;i<products.size();i++) {
			if(products.get(i).getCode()==bean.getCode()) 
				return true;
		}
		return false;
	}
	
	public ProductBean getProduct(int id) {
		for(int i=0;i<products.size();i++) {
			if(products.get(i).getCode()==id)
				return products.get(i);
		}
		return null;
	}
	
	public List<ProductBean> getProducts() {
		return  products;
	}
}
