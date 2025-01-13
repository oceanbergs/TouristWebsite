package com.tourweb.TouristWeb.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.tourweb.TouristWeb.Model.AllInclude;
import com.tourweb.TouristWeb.Model.Iternary;
import com.tourweb.TouristWeb.Model.Location;
import com.tourweb.TouristWeb.Model.PackageDetails;
import com.tourweb.TouristWeb.Service.PackageDetailsService;

@Controller
@RequestMapping("/auth")
public class PackageDetailsController {
	
     @Autowired
     private PackageDetailsService packageDetailsService;

     
    //find packae by packageId
     @GetMapping("/getPackageDetails/{id}")
     @ResponseBody
     public ResponseEntity<PackageDetails> getPackageDetailsById(@PathVariable Long id) {
         Optional<PackageDetails> packageDetails = packageDetailsService.findById(id);

         if (packageDetails.isPresent()) {
             PackageDetails details = packageDetails.get();

             if (details.getPackageImage() == null) {
                 details.setPackageImage(""); // Fallback to empty string if null
             }

             return ResponseEntity.ok(details);
         } else {
             return ResponseEntity.notFound().build();
         }
     }




 	 
     @PostMapping("/deletepackageDetails/{id}")
     @ResponseBody
     public ResponseEntity<String> deleteBatch(@PathVariable("id") Long id) {
         boolean deleted = packageDetailsService.deletePackageDetails(id);
         if (deleted) {
             return ResponseEntity.status(HttpStatus.OK).body("Data Deleted Successfully");
         } else {
             return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Package not found or delete failed");
         }
     }

 	
     @PutMapping("/updatePackageDetails/{id}")
     public ResponseEntity<?> updatePackageDetails(@PathVariable Long id, @RequestBody PackageDetails packageDetails) {
         System.out.println("Received PUT request for ID: " + id);

         PackageDetails updatedPackage = packageDetailsService.updatePackageDetails(id, packageDetails);

         if (updatedPackage == null) {
             System.out.println("No package found with ID: " + id);
             return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Package not found with ID: " + id);
         }

         System.out.println("Package updated successfully: " + updatedPackage);
         return ResponseEntity.ok(updatedPackage);
     }
     
     
//     @GetMapping("/getpackagetype/{packageType}")
//     public ResponseEntity<List<PackageDetails>> getPackageDetailsByPackageType(@PathVariable String packageType) {
//         List<PackageDetails> packageDetails = packageDetailsService.findbypackageType(packageType);
//         
//         if (packageDetails.isEmpty()) {
//             return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null); // Return 404 if no data found
//         }
//         
//         return ResponseEntity.ok(packageDetails); // Return 200 OK with data
//     }
 	
// 	@GetMapping("/getAllPackageDetails")
// 	@ResponseBody
// 	public List<PackageDetails> getAllPackageDetails() {
// 	    List<PackageDetails> data = packageDetailsService.findAll();
// 	    data.forEach(s -> {
// 	        byte[] packageImageData = s.getPackageImage();
// 	        if (packageImageData != null) {
// 	            String encodedPhoto = Base64.getEncoder().encodeToString(packageImageData);
// 	            s.setImagePreview(encodedPhoto);
// 	        }
// 	    });
// 	    return data;
// 	}
// 	
 	
 	

}
