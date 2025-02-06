package com.tourweb.TouristWeb.Service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.tourweb.TouristWeb.Model.GalleryMangt;

public interface GalleryMangtService {
	
	
	// Upload image
//    public void uploadImage(MultipartFile file) throws IOException ;
//    //public String downloadImage(Long imageId) throws Exception;
//    public byte[] downloadImageAsBytes(Long imageId) throws Exception ;
//	
//	public void deleteImage(Long imageId) throws Exception;
	
	
	GalleryMangt savePhoto(GalleryMangt galleryMangt);
	
    List<GalleryMangt> getAllPhotos();
    
    public boolean deleteGallery(Long id);
}
