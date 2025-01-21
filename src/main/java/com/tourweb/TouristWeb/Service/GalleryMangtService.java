package com.tourweb.TouristWeb.Service;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public interface GalleryMangtService {
	
	
	// Upload image
    public void uploadImage(MultipartFile file) throws IOException ;
    //public String downloadImage(Long imageId) throws Exception;
    public byte[] downloadImageAsBytes(Long imageId) throws Exception ;
	
	public void deleteImage(Long imageId) throws Exception;
}
