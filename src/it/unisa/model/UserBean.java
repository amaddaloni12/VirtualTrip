package it.unisa.model;

import java.io.Serializable;

public class UserBean implements Serializable {

	private static final long serialVersionUID = 1L;
	
	int id;
	String username;
	String password;
	String name;
	String surname;
	String telephone;
	String email;
	String address;
	String city;
	String cap;
	String role;
	
	public UserBean()
	{
		id = -1;
		username="";
		password="";
		name="";
		surname="";
		telephone="";
		email="";
		address="";
		city="";
		cap="";
		role="customer";
		
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}
	
	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCap() {
		return cap;
	}

	public void setCap(String cap) {
		this.cap = cap;
	}
	
	public void setRole(String role) {	
		this.role = role;
		
	}
	
	public String getRole() {	
		return role;
	}



	@Override
	public String toString() {
		return "UserBean [username=" + username + ", password=" + password + ", name=" + name + ", surname=" + surname
				+ "]";
	}


	
}
