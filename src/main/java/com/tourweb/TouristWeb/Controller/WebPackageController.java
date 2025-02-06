package com.tourweb.TouristWeb.Controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tourweb.TouristWeb.Model.AddPackageType;
import com.tourweb.TouristWeb.Model.AllExclude;
import com.tourweb.TouristWeb.Model.AllInclude;
import com.tourweb.TouristWeb.Model.Enquiry;
import com.tourweb.TouristWeb.Model.Gallery;
import com.tourweb.TouristWeb.Model.Iternary;
import com.tourweb.TouristWeb.Model.PackageDetails;
import com.tourweb.TouristWeb.Repository.EnquiryRepo;
import com.tourweb.TouristWeb.Repository.GalleryRepo;
import com.tourweb.TouristWeb.Repository.IternaryRepo;
import com.tourweb.TouristWeb.Repository.PackageDetailsRepo;
import com.tourweb.TouristWeb.Service.PackageDetailsService;
import com.tourweb.TouristWeb.Service.packageTypeService;

@Controller
public class WebPackageController {
	
	@Autowired
	private packageTypeService packageTypeService;
	
	@Autowired
    private PackageDetailsService packageDetailsService ;
	
	@Autowired
	private PackageDetailsRepo packageDetailsRepo;
	
	@Autowired
	private EnquiryRepo enquiryRepo;
	
	@Autowired
	private IternaryRepo iternaryRepo;
	
	@Autowired
	private GalleryRepo galleryRepo;
	
	@GetMapping("/getByNation")
	@ResponseBody
    public ResponseEntity<List<AddPackageType>> getPackageTypesByNation() {
        List<AddPackageType> packageTypes = packageTypeService.findByNation("India");
        if (!packageTypes.isEmpty()) {
            return ResponseEntity.ok(packageTypes);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
        }
    }
	
	
	@GetMapping("/FindPacakgeDetailsByPackageType")
	 public ResponseEntity<?> getPackageDetailsByType(@RequestParam String packageType) {
        List<PackageDetails> details = packageDetailsRepo.findByPackageType(packageType);
        if (details.isEmpty()) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(details);
    }

	
//	@GetMapping("/getpackagetype/{packageType}")
//    public ResponseEntity<List<PackageDetails>> getPackageDetailsByPackageType(@PathVariable String packageType) {
//        List<PackageDetails> packageDetails = packageDetailsService.findbypackageType(packageType);
//        
//        if (packageDetails.isEmpty()) {
//            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null); // Return 404 if no data found
//        }
//        
//        return ResponseEntity.ok(packageDetails); // Return 200 OK with data
//    }
	
	  @GetMapping("/getpackagetype")
	    public ResponseEntity<List<PackageDetails>> getPackageDetails() {
	        try {
	            List<PackageDetails> packages = packageDetailsRepo.findAll();

	            if (packages.isEmpty()) {
	                return ResponseEntity.status(HttpStatus.NO_CONTENT).body(packages);
	            }

	            return ResponseEntity.ok(packages);

	        } catch (Exception e) {
	            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
	                                 .body(null);
	        }
	    }
	
	  
	  @PostMapping("/saveEnquiry")
	  public ResponseEntity<String> saveEnquiry(@RequestBody Enquiry enquiry) {
	      enquiryRepo.save(enquiry);
	      return ResponseEntity.status(HttpStatus.OK).body("Enquiry Successfully Saved!");
	  }

	  
//	  @GetMapping("/getiternarybyPackageId/{packageId}")
//	    public ResponseEntity<List<Iternary>> getIternaryByPackageId(@PathVariable Long packageId) {
//	        // Fetch itineraries using the service layer
//	        List<Iternary> iternaryList = iternaryRepo.findIternaryByPackageId(packageId);
//
//	        // Check if the list is empty
//	        if (iternaryList.isEmpty()) {
//	            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null); // Return 404 if no data found
//	        }
//
//	        // Return the itineraries with a 200 OK status
//	        return ResponseEntity.ok(iternaryList);
//	    }
	
	  
	  @GetMapping("/getAllItinerary/{packageId}")
	    public ResponseEntity<List<Iternary>> getItineraryByPackageId(@PathVariable Long packageId) {
	        List<Iternary> itineraries = packageDetailsService.getItineraryByPackageId(packageId);
	        return ResponseEntity.ok(itineraries);
	    }
	  
	  @GetMapping("/packagetype/{packageType}")
		public ResponseEntity<?> getPackageDetailsByPackageType(@PathVariable("packageType") String packageType) {
		    // Fetch the package details using the service method
		    List<PackageDetails> packageDetails = packageDetailsService.findbypackageType(packageType);

		    // Check if the package details list is empty and return an appropriate response
		    if (packageDetails == null || packageDetails.isEmpty()) {
		        return ResponseEntity.status(HttpStatus.NOT_FOUND)
		                             .body("No packages found for the specified package type: " + packageType);
		    }

		    // Return the list of package details with an OK status
		    return ResponseEntity.ok(packageDetails);
		}
	  
	 
	  @GetMapping("/getAllincludes/{packageId}")
	    public ResponseEntity<List<AllInclude>> getIncludes(@PathVariable Long packageId) {
		  List<AllInclude> includes = packageDetailsService.getIncludesByPackageId(packageId);
	        return ResponseEntity.ok(includes);
	    }

	    @GetMapping("/getAllexcludes/{packageId}")
	    public ResponseEntity<List<AllExclude>> getExcludes(@PathVariable Long packageId) {
	        List<AllExclude> excludes = packageDetailsService.getExcludesByPackageId(packageId);
	        
	        return ResponseEntity.ok(excludes);
	    }
	    
	    @GetMapping("/getbyPackage/{packageId}")
	    public ResponseEntity<List<Gallery>> getGalleryByPackage(@PathVariable Long packageId) {
	        List<Gallery> galleries = galleryRepo.findByPackageDetailsId(packageId);
	        
	        if (galleries.isEmpty()) {
	            return new ResponseEntity<>(HttpStatus.NO_CONTENT); // Return 204 if no images found
	        }
	        
	        return new ResponseEntity<>(galleries, HttpStatus.OK); // Return 200 with gallery data
	    }
		
}
