package com.tourweb.TouristWeb.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class AllInclude {
	

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private boolean hotel;
    private boolean meals;
    private boolean transportation;
    private boolean flight;
    private boolean sightseeing;
    private boolean visa;
    private String note; // Path to uploaded note file

    @OneToOne
    @JsonIgnore
    @JoinColumn(name = "package_id")
    private PackageDetails packageDetails;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public boolean isHotel() {
		return hotel;
	}

	public void setHotel(boolean hotel) {
		this.hotel = hotel;
	}

	public boolean isMeals() {
		return meals;
	}

	public void setMeals(boolean meals) {
		this.meals = meals;
	}

	public boolean isTransportation() {
		return transportation;
	}

	public void setTransportation(boolean transportation) {
		this.transportation = transportation;
	}

	public boolean isFlight() {
		return flight;
	}

	public void setFlight(boolean flight) {
		this.flight = flight;
	}

	public boolean isSightseeing() {
		return sightseeing;
	}

	public void setSightseeing(boolean sightseeing) {
		this.sightseeing = sightseeing;
	}

	public boolean isVisa() {
		return visa;
	}

	public void setVisa(boolean visa) {
		this.visa = visa;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public PackageDetails getPackageDetails() {
		return packageDetails;
	}

	public void setPackageDetails(PackageDetails packageDetails) {
		this.packageDetails = packageDetails;
	}

    

}
