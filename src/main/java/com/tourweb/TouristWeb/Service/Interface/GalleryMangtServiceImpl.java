package com.tourweb.TouristWeb.Service.Interface;

import java.io.IOException;
import java.util.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.tourweb.TouristWeb.Exception.MyFileNotFoundException;
import com.tourweb.TouristWeb.Model.GalleryMangt;
import com.tourweb.TouristWeb.Repository.GalleryMangtRepo;
import com.tourweb.TouristWeb.Service.GalleryMangtService;

@Service
public class GalleryMangtServiceImpl implements GalleryMangtService{

	@Autowired
	private GalleryMangtRepo galleryMangtRepo ;
	 //private final Path root = Paths.get("uploads");

	@Override
	
	public void uploadImage(MultipartFile file) throws IOException {
        // Get original file name and content type
        String name = file.getOriginalFilename();
        String type = file.getContentType();

        // Convert image to Base64 encoded string
        byte[] fileBytes = file.getBytes();
        String imageData = Base64.getEncoder().encodeToString(fileBytes);

        // Check if the Base64 string is too large (optional)
        if (imageData.length() > 1000000) {  // Set a reasonable limit (e.g., 1MB)
            throw new IOException("File is too large to be processed.");
        }

        // Create GalleryMangt object and set the properties
        GalleryMangt imageDataObj = new GalleryMangt();
        imageDataObj.setName(name);
        imageDataObj.setType(type);
        imageDataObj.setImageData(imageData);

        // Save the entity to the database
        try {
            galleryMangtRepo.save(imageDataObj);
        } catch (Exception e) {
            throw new IOException("Failed to upload image: " + e.getMessage(), e);
        }
    }
	
	
	/*
	 * // Download image public String downloadImage(Long imageId) throws Exception
	 * { GalleryMangt image = galleryMangtRepo.findById(imageId) .orElseThrow(() ->
	 * new MyFileNotFoundException("Image not found"));
	 * 
	 * return image.getImageData(); }
	 */
    
    
    
 // Delete image by ID
    @Override
    public void deleteImage(Long imageId) throws Exception {
    	    
            if (!galleryMangtRepo.existsById(imageId)) {
                throw new MyFileNotFoundException("Image not found");
            }

            // Delete image from the database
            galleryMangtRepo.deleteById(imageId);
        }
    
    
	
	  // Download image as raw byte array 
		public byte[] downloadImageAsBytes(Long imageId) throws Exception {
			GalleryMangt image = galleryMangtRepo.findById(imageId).orElseThrow(() ->
			                    new MyFileNotFoundException("Image not found"));

			return Base64.getDecoder().decode(image.getImageData());
		}

}
