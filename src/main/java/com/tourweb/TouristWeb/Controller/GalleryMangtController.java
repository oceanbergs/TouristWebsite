package com.tourweb.TouristWeb.Controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.tourweb.TouristWeb.Service.GalleryMangtService;

@RestController
//@RequestMapping("/file")
public class GalleryMangtController {
	
	 @Autowired
	    private GalleryMangtService imageService;

	 @PostMapping("/upload")
	    public ResponseEntity<String> uploadImage(@RequestParam("file") MultipartFile file) {
	        try {
	            imageService.uploadImage(file);
	            return ResponseEntity.ok("Image uploaded successfully!");
	        } catch (IOException e) {
	            return ResponseEntity.status(500).body("Failed to upload image: " + e.getMessage());
	        }
	    }
	 
		/*
		 * // Download image
		 * 
		 * @GetMapping("/download/{imageId}") public ResponseEntity<String>
		 * downloadImage(@PathVariable Long imageId) { try { String imageData =
		 * imageService.downloadImage(imageId); return ResponseEntity.ok(imageData); }
		 * catch (Exception e) { return
		 * ResponseEntity.status(404).body("Image not found: " + e.getMessage()); } }
		 */
	    
	    
	 // Delete image API
	    @DeleteMapping("/delete/{imageId}")
	    public ResponseEntity<String> deleteImage(@PathVariable Long imageId) {
	        try {
	            imageService.deleteImage(imageId); // Call service to delete the image
	            return ResponseEntity.ok("Image deleted successfully!");
	        } catch (Exception e) {
	            return ResponseEntity.status(404).body("Image not found: " + e.getMessage());
	        }
	    }
	    
	   
		// Download image as file (e.g., JPEG)

		@GetMapping("/download-file/{imageId}")
		public ResponseEntity<ByteArrayResource> downloadImageAsFile(@PathVariable Long imageId) {
			try {
				byte[] imageBytes = imageService.downloadImageAsBytes(imageId);
				ByteArrayResource resource = new ByteArrayResource(imageBytes);
				return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).contentLength(imageBytes.length)
						.body(resource);
			} catch (Exception e) {
				return ResponseEntity.status(404).body(null);
			}
		}

	}