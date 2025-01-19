package com.tourweb.TouristWeb.Model;



import java.time.LocalDateTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;


@Entity
@Table(name = " manage_booking")

public class Booking {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private Long id; 
	private String customer_Name;
	private String email;
	private String address;
	private String mobile_Number;
	private String destination;
	private String special_Request;
	private String modOffBooking;
	//@Enumerated(EnumType.STRING)
	
	@Column(updatable = false)
	private boolean status;
	
	private Date  start_Date;
	@CreationTimestamp
    private LocalDateTime createdOn;
	
	public Booking() {
		
	}

	

	public Booking(Long id, String customer_Name, String email, String address, String mobile_Number,
			String destination, String special_Request, String modOffBooking, boolean status, Date start_Date,
			LocalDateTime createdOn) {
		super();
		this.id = id;
		this.customer_Name = customer_Name;
		this.email = email;
		this.address = address;
		this.mobile_Number = mobile_Number;
		this.destination = destination;
		this.special_Request = special_Request;
		this.modOffBooking = modOffBooking;
		this.status = status;
		this.start_Date = start_Date;
		this.createdOn = createdOn;
	}



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCustomer_Name() {
		return customer_Name;
	}

	public void setCustomer_Name(String customer_Name) {
		this.customer_Name = customer_Name;
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

	public String getMobile_Number() {
		return mobile_Number;
	}

	public void setMobile_Number(String mobile_Number) {
		this.mobile_Number = mobile_Number;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getSpecial_Request() {
		return special_Request;
	}

	public void setSpecial_Request(String special_Request) {
		this.special_Request = special_Request;
	}

	public String getModOffBooking() {
		return modOffBooking;
	}

	public void setModOffBooking(String modOffBooking) {
		this.modOffBooking = modOffBooking;
	}

	

	public boolean isStatus() {
		return status;
	}



	public void setStatus(boolean status) {
		this.status = status;
	}



	public Date getStart_Date() {
		return start_Date;
	}

	public void setStart_Date(Date start_Date) {
		this.start_Date = start_Date;
	}

	public LocalDateTime getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(LocalDateTime createdOn) {
		this.createdOn = createdOn;
	}

	
}

