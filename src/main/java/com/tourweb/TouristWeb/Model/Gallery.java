package com.tourweb.TouristWeb.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Gallery {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	private Long id;
	@Column(length = 1000000) 
	private String gallery;
	
	
	@ManyToOne
	@JsonIgnore
	@JoinColumn(name = "package_id")
	private PackageDetails packageDetails;


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getGallery() {
		return gallery;
	}


	public void setGallery(String gallery) {
		this.gallery = gallery;
	}


	public PackageDetails getPackageDetails() {
		return packageDetails;
	}


	public void setPackageDetails(PackageDetails packageDetails) {
		this.packageDetails = packageDetails;
	}
	
	

}
