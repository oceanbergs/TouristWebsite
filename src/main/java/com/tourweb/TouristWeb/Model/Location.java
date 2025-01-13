package com.tourweb.TouristWeb.Model;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

// Entity annotation to map this class to a database table
@Entity
@Table(name = "location")
public class Location {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String locationName; // City or Landmark

    // Many-to-One relationship with PackageDetails
    @ManyToOne
    @JsonIgnore
    @JoinColumn(name = "package_id", nullable = false)
    private PackageDetails packageDetails;

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLocationName() {
        return locationName;
    }

    public void setLocationName(String locationName) {
        this.locationName = locationName;
    }

	public PackageDetails getPackageDetails() {
		return packageDetails;
	}

	public void setPackageDetails(PackageDetails packageDetails) {
		this.packageDetails = packageDetails;
	}

    
}
