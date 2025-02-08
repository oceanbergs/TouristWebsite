package com.tourweb.TouristWeb.Service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tourweb.TouristWeb.Model.AllExclude;
import com.tourweb.TouristWeb.Model.AllInclude;
import com.tourweb.TouristWeb.Model.Iternary;
import com.tourweb.TouristWeb.Model.Location;
import com.tourweb.TouristWeb.Model.PackageDetails;
import com.tourweb.TouristWeb.Model.SightseeingEntry;
import com.tourweb.TouristWeb.Repository.AllExcludeRepo;
import com.tourweb.TouristWeb.Repository.AllIncludeRepo;
import com.tourweb.TouristWeb.Repository.IternaryRepo;
import com.tourweb.TouristWeb.Repository.PackageDetailsRepo;
import com.tourweb.TouristWeb.Service.Interface.PackageDetailsServiceInterface;

@Service
public class PackageDetailsService  implements PackageDetailsServiceInterface{
	
	
	@Autowired
	private PackageDetailsRepo packageDetailsRepo;
	
	@Autowired 
	private IternaryRepo iternaryRepo;
	
	@Autowired
	private AllIncludeRepo allIncludeRepo ;
	
	@Autowired
	private AllExcludeRepo allExcludeRepo;

	// Get all packages
   
	@Override
	 public List<PackageDetails> getAllPackages() {
        return packageDetailsRepo.findAll();
    }

	//get Package Details By packageId
	 @Override
	    public Optional<PackageDetails> findById(Long id) {
	        return packageDetailsRepo.findById(id);
	    }

	 @Override
	 public boolean deletePackageDetails(Long id) {
	     if(packageDetailsRepo.existsById(id)) {
	         packageDetailsRepo.deleteById(id);
	         return true;  // Return true if deletion is successful
	     }
	     return false;  // Return false if the package doesn't exist
	 }


	@Override
	public boolean editPackageDetails(Long id, PackageDetails packageDetails) {
		if(packageDetailsRepo.existsById(id)) {
			packageDetails.setId(id);
			packageDetailsRepo.save(packageDetails);
			return true;
		}
		return false;
	}
	
	@Override
	public List<PackageDetails> findAll() {
	    return packageDetailsRepo.findAll();
	}
	
	@Override
	public String UpdatePackage(PackageDetails packageDetails, AllInclude allInclude, List<Location> locations, List<Iternary> iternaries) {
	   // packageDetails.setAllInclude(allInclude);
	    packageDetails.setLocations(locations);
	    packageDetails.setIternary(iternaries);

	    packageDetailsRepo.save(packageDetails);
	    
	    if (packageDetails.getId() != null) {
	        return "Package details updated successfully!";
	    } else {
	        return "Package details saved successfully!";
	    }
	}

	public PackageDetails saveThePackageDetails(PackageDetails packageDetails) {
	    // Ensure packageDetails is set in Locations
	    if (packageDetails.getLocations() != null) {
	        packageDetails.getLocations().forEach(location -> location.setPackageDetails(packageDetails));
	    }
	    
	 // Ensure packageDetails is set in Gallery
	    if (packageDetails.getGallery() != null) {
	        packageDetails.getGallery().forEach(gallery -> gallery.setPackageDetails(packageDetails));
	    }


	    // Ensure packageDetails is set in AllInclude
	    if (packageDetails.getAllIncludes() != null) {
	        packageDetails.getAllIncludes().forEach(include -> include.setPackageDetails(packageDetails));
	    }

	    // Ensure packageDetails is set in AllExcludes
	    if (packageDetails.getAllExcludes() != null) {
	        packageDetails.getAllExcludes().forEach(exclude -> exclude.setPackageDetails(packageDetails));
	    }

	    // Ensure packageDetails and SightseeingEntrie references are set in Iternary
	    if (packageDetails.getIternary() != null) {
	        packageDetails.getIternary().forEach(itinerary -> {
	            itinerary.setPackageDetails(packageDetails);

	            // Set Iternary reference in SightseeingEntrie
	            if (itinerary.getSightseeingEntrie() != null) {
	                itinerary.getSightseeingEntrie().forEach(sightseeing -> sightseeing.setIternary(itinerary));
	            }
	        });
	    }

	    // Save the complete package details
	    return packageDetailsRepo.save(packageDetails);
	}


	
	
	@Override
	@Transactional
	public PackageDetails updatePackageDetails(Long id, PackageDetails packageDetails) {
	    System.out.println("Fetching package details with ID: " + id);
	    Optional<PackageDetails> optionalDetails = packageDetailsRepo.findById(id);

	    if (optionalDetails.isPresent()) {
	        System.out.println("Package not found with ID: " + id);
	        return null;
	    }

	    PackageDetails existingPackageDetails = optionalDetails.get();
	    System.out.println("Existing Package Details: " + existingPackageDetails);

	    // Update fields
	    existingPackageDetails.setPackageName(packageDetails.getPackageName());
	    existingPackageDetails.setDuration(packageDetails.getDuration());
	    existingPackageDetails.setPrice(packageDetails.getPrice());
	    existingPackageDetails.setPackageType(packageDetails.getPackageType());
	    existingPackageDetails.setPackageImage(packageDetails.getPackageImage());

	    // Ensure packageDetails is set in Locations
	
	    if (packageDetails.getLocations() != null) {
	        existingPackageDetails.getLocations().clear();
	        for (Location location : packageDetails.getLocations()) {
	            location.setPackageDetails(existingPackageDetails); // Set parent reference
	            existingPackageDetails.getLocations().add(location);
	        }
	    }

	    // Ensure packageDetails is set in Gallery
	    if (packageDetails.getGallery() != null) {
	        existingPackageDetails.getGallery().clear();
	        packageDetails.getGallery().forEach(gallery -> {
	            gallery.setPackageDetails(existingPackageDetails);
	            existingPackageDetails.getGallery().add(gallery);
	        });
	    }

	    if (packageDetails.getAllIncludes() != null) {
	        existingPackageDetails.getAllIncludes().clear();
	        for (AllInclude include : packageDetails.getAllIncludes()) {
	            include.setPackageDetails(existingPackageDetails); // Set parent reference
	            existingPackageDetails.getAllIncludes().add(include);
	        }
	    }

	    // Update AllExcludes
	    if (packageDetails.getAllExcludes() != null) {
	        existingPackageDetails.getAllExcludes().clear();
	        for (AllExclude exclude : packageDetails.getAllExcludes()) {
	            exclude.setPackageDetails(existingPackageDetails); // Set parent reference
	            existingPackageDetails.getAllExcludes().add(exclude);
	        }
	    }

	    // Ensure packageDetails and SightseeingEntrie references are set in Iternary
	    if (packageDetails.getIternary() != null) {
	        existingPackageDetails.getIternary().clear();
	        for (Iternary itinerary : packageDetails.getIternary()) {
	            itinerary.setPackageDetails(existingPackageDetails); // Set parent reference

	            if (itinerary.getSightseeingEntrie() != null) {
	                for (SightseeingEntry sightseeing : itinerary.getSightseeingEntrie()) {
	                    sightseeing.setIternary(itinerary); // Set itinerary reference
	                }
	            }

	            existingPackageDetails.getIternary().add(itinerary);
	        }
	    }

	    // Save the updated package details
	    PackageDetails updatedPackage = packageDetailsRepo.save(existingPackageDetails);
	    System.out.println("Updated Package Details Saved: " + updatedPackage);

	    return updatedPackage;
	}

//        // Save updated details
//        PackageDetails updatedPackage = packageDetailsRepo.save(existingPackageDetails);
//        System.out.println("Updated Package Details Saved: " + updatedPackage);
//
//        return updatedPackage;
//    }

	
	public List<PackageDetails> findbypackageType(String packageType) {
    return packageDetailsRepo.findByPackageType(packageType);
}

	
	public List<PackageDetails> getBasicPackageDetails() {
	    return packageDetailsRepo.findBasicPackageDetails();
	}
	
	
	 @Override
	    public List<Iternary> getItineraryByPackageId(Long packageId) {
	        return iternaryRepo.findByPackageDetails_Id(packageId);
	    }

	 @Override
	    public List<AllInclude> getIncludesByPackageId(Long packageId) {
	        return allIncludeRepo.findByPackageDetails_Id(packageId);
	    }
	 
	 @Override
	    public List<AllExclude> getExcludesByPackageId(Long packageId) {
	        return allExcludeRepo.findByPackageDetails_Id(packageId);
	    }
}
