package com.tourweb.TouristWeb.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "Gallery_Mangt")
public class GalleryMangt {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String type;
    
    @Lob
   @Column(columnDefinition = "LONGTEXT")
    
    //@Column(length = 1000000) 
    private String imageData;  // Store image as Base64 encoded string

public GalleryMangt() {
	// TODO Auto-generated constructor stub
}

public GalleryMangt(Long id, String name, String type, String imageData) {
	super();
	this.id = id;
	this.name = name;
	this.type = type;
	this.imageData = imageData;
}

public Long getId() {
	return id;
}

public void setId(Long id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getType() {
	return type;
}

public void setType(String type) {
	this.type = type;
}

public String getImageData() {
	return imageData;
}

public void setImageData(String imageData) {
	this.imageData = imageData;
}



}
