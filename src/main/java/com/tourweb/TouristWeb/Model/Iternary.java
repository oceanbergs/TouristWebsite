package com.tourweb.TouristWeb.Model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Iternary {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	@Column(name = "iternary_id")
	private long id;
	private String day;
	private String destination;

	// Checkbox options for meals/stay
	private boolean dinner;
	private boolean breakfast;
	private boolean hiTea;
	private boolean nightStay;
	private boolean lunch;

	@OneToMany(mappedBy = "iternary", cascade = CascadeType.ALL)
	private List<SightseeingEntry> sightseeingEntrie;

	@ManyToOne
	@JsonIgnore
	@JoinColumn(name = "package_id")
	private PackageDetails packageDetails;

	public List<SightseeingEntry> getSightseeingEntrie() {
		return sightseeingEntrie;
	}

	public void setSightseeingEntrie(List<SightseeingEntry> sightseeingEntrie) {
		this.sightseeingEntrie = sightseeingEntrie;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public boolean isDinner() {
		return dinner;
	}

	public void setDinner(boolean dinner) {
		this.dinner = dinner;
	}

	public boolean isBreakfast() {
		return breakfast;
	}

	public void setBreakfast(boolean breakfast) {
		this.breakfast = breakfast;
	}

	public boolean isHiTea() {
		return hiTea;
	}

	public void setHiTea(boolean hiTea) {
		this.hiTea = hiTea;
	}

	public boolean isNightStay() {
		return nightStay;
	}

	public void setNightStay(boolean nightStay) {
		this.nightStay = nightStay;
	}

	public boolean isLunch() {
		return lunch;
	}

	public void setLunch(boolean lunch) {
		this.lunch = lunch;
	}

	public PackageDetails getPackageDetails() {
		return packageDetails;
	}

	public void setPackageDetails(PackageDetails packageDetails) {
		this.packageDetails = packageDetails;
	}

}
