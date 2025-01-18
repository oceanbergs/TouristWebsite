package com.tourweb.TouristWeb.Model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;



@Entity
public class PackageDetails {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String packageName;
    
    private String duration;
    private double price;
    private String packageType;
    @Column(length = 1000000) 
	private String packageImage;
   private String imagePreview;
//    
//    private String packageImagePath;
    
    @OneToMany(mappedBy = "packageDetails",cascade = CascadeType.ALL)
    private List<Location> locations;

    @OneToMany(mappedBy = "packageDetails",cascade = CascadeType.ALL)
    private List<AllInclude> allIncludes;
    
    @OneToMany(mappedBy = "packageDetails", cascade = CascadeType.ALL)
    private List<Iternary> iternary;
    
    @OneToMany(mappedBy = "packageDetails", cascade = CascadeType.ALL)
    private List<AllExclude> allExcludes;
    
    @OneToMany(mappedBy="packageDetails",cascade = CascadeType.ALL)
    private List<Gallery> gallery;
   
    

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getPackageType() {
		return packageType;
	}

	public void setPackageType(String packageType) {
		this.packageType = packageType;
	}



	

	public String getPackageImage() {
		return packageImage;
	}

	public void setPackageImage(String packageImage) {
		this.packageImage = packageImage;
	}



	public List<Location> getLocations() {
		return locations;
	}

	public void setLocations(List<Location> locations) {
		this.locations = locations;
	}

	
	

	public List<AllInclude> getAllIncludes() {
		return allIncludes;
	}

	public void setAllIncludes(List<AllInclude> allIncludes) {
		this.allIncludes = allIncludes;
	}

	public List<AllExclude> getAllExcludes() {
		return allExcludes;
	}

	public void setAllExcludes(List<AllExclude> allExcludes) {
		this.allExcludes = allExcludes;
	}

	public List<Iternary> getIternary() {
		return iternary;
	}

	public void setIternary(List<Iternary> iternary) {
		this.iternary = iternary;
	}

	public String getImagePreview() {
		return imagePreview;
	}

	public void setImagePreview(String imagePreview) {
		this.imagePreview = imagePreview;
	}

	public List<Gallery> getGallery() {
		return gallery;
	}

	public void setGallery(List<Gallery> gallery) {
		this.gallery = gallery;
	}


	
    
}
