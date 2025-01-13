package com.tourweb.TouristWeb.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class SightseeingEntry {
	
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	    private String location;
	    private String day;
	    
	    @ManyToOne
	    @JsonIgnore
	    @JoinColumn(name = "iternary_id")
	    private Iternary iternary;
	    
	    
	    

	

	
		public Iternary getIternary() {
			return iternary;
		}

		public void setIternary(Iternary iternary) {
			this.iternary = iternary;
		}

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getLocation() {
			return location;
		}

		public void setLocation(String location) {
			this.location = location;
		}

		public String getDay() {
			return day;
		}

		public void setDay(String day) {
			this.day = day;
		}

		

	    
	    
}
