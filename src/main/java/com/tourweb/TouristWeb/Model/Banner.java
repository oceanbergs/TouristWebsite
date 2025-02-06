package com.tourweb.TouristWeb.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Banner {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private int id;
	@Column(length = 1000000) 
	private String banner;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBanner() {
		return banner;
	}
	public void setBanner(String banner) {
		this.banner = banner;
	}
	
	
	

}
