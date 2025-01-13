package com.tourweb.TouristWeb.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class AddPackageType {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	private int packageTypeId;
	private String packageType;
	private String nation;
	
	public int getPackageTypeId() {
		return packageTypeId;
	}
	public void setPackageTypeId(int packageTypeId) {
		this.packageTypeId = packageTypeId;
	}
	public String getPackageType() {
		return packageType;
	}
	public void setPackageType(String packageType) {
		this.packageType = packageType;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	
}
