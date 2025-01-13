package com.tourweb.TouristWeb.Service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.tourweb.TouristWeb.Controller.PackageController;
import com.tourweb.TouristWeb.Model.AddPackageType;
import com.tourweb.TouristWeb.Model.AllInclude;
import com.tourweb.TouristWeb.Model.Iternary;
import com.tourweb.TouristWeb.Model.Location;
import com.tourweb.TouristWeb.Model.PackageDetails;
import com.tourweb.TouristWeb.Model.SightseeingEntry;
import com.tourweb.TouristWeb.Repository.AddPackageTypeRepository;
import com.tourweb.TouristWeb.Repository.AllIncludeRepo;
import com.tourweb.TouristWeb.Repository.IternaryRepo;
import com.tourweb.TouristWeb.Repository.LocationRepo;
import com.tourweb.TouristWeb.Repository.PackageDetailsRepo;
import com.tourweb.TouristWeb.Repository.SightseeingEntryRepo;
import com.tourweb.TouristWeb.Service.Interface.packageTypeServiceInterface;

@Service
public class packageTypeService implements packageTypeServiceInterface {
	
	private static final Logger log = LoggerFactory.getLogger(packageTypeService.class);

	@Autowired
	private AddPackageTypeRepository typeRepository;

	@Autowired
	private PackageDetailsRepo packageDetailsRepo;

	@Autowired
	private LocationRepo locationRepo;

	@Autowired
	private AllIncludeRepo allIncludeRepo;

	@Autowired
	private IternaryRepo iternaryRepo;

	@Autowired
	private SightseeingEntryRepo sightseeingEntryRepo;

	@Override
	public void savepackageType(AddPackageType addPackageType) {
		typeRepository.save(addPackageType);
	}

	@Override
	public List<AddPackageType> findAll() {
		return typeRepository.findAll();
	}

	@Override
	public boolean deletePackageType(Integer packageTypeId) {
		if (typeRepository.existsById(packageTypeId)) {
			typeRepository.deleteById(packageTypeId);
			return true;
		}
		return false;
	}

	// web

	@Override
	public List<AddPackageType> findByNation(String nation) {
		return typeRepository.findByNation(nation);
	}

	@Override
	public String savePackage(PackageDetails packageDetails, AllInclude allInclude, List<Location> locationList,
			List<Iternary> iternaryList, List<SightseeingEntry> sightseeingEntries) {

		try {
// Save PackageDetails and AllInclude first to maintain the order of saving (PackageDetails is parent)
			packageDetailsRepo.save(packageDetails);
			allIncludeRepo.save(allInclude);

// Save Locations associated with the PackageDetails
			locationRepo.saveAll(locationList);

 //Save Itineraries and their associated Sightseeing Entries
			iternaryRepo.saveAll(iternaryList);

 //Save Sightseeing Entries
			sightseeingEntryRepo.saveAll(sightseeingEntries);

			return "Package saved successfully!";
		} catch (Exception e) {
			e.printStackTrace();
			return "Failed to save package: " + e.getMessage();
		}
	}
	
//	 @Override
//	    public PackageDetails savePackage(PackageDetails packageDetails) {
//	        // Handle AllInclude Relationship
//		 if (packageDetails.getAllInclude() != null) {
//		        packageDetails.getAllInclude().setPackageDetails(packageDetails);
//		    }
//
//	        // Handle Locations Relationship
//	        if (packageDetails.getLocations() != null) {
//	            for (Location location : packageDetails.getLocations()) {
//	                location.setPackageDetails(packageDetails);
//	            }
//	        }
//
//	        // Handle Iternary and Nested Sightseeing Relationships
//	        if (packageDetails.getIternary() != null) {
//	            for (Iternary iternary : packageDetails.getIternary()) {
//	                iternary.setPackageDetails(packageDetails);
//
//	                if (iternary.getSightseeingDay() != null) {
//	                    for (SightseeingEntry sightseeing : iternary.getSightseeingDay()) {
//	                        sightseeing.setIternary(iternary);
//	                    }
//	                }
//	            }
//	        }
//
//	        return packageDetailsRepo.save(packageDetails);
//	    }
	
//	@Transactional
//	public PackageDetails savePackageDetails(
//	        PackageDetails packageDetails,
//	        AllInclude allInclude,
//	        MultipartFile packageImage,
//	        List<Location> locations,
//	        List<Iternary> iternaries) {
//
//	    // Save PackageDetails
//	    packageDetailsRepo.save(packageDetails);
//
//	    // Handle the package image (if present)
//	    if (packageImage != null && !packageImage.isEmpty()) {
//	        try {
//	            String imagePath = savePackageImage(packageImage);
//	            packageDetails.setPackageImagePath(imagePath);
//	        } catch (IOException e) {
//	            // Log the error and handle properly
//	            log.error("Failed to save package image: {}", e.getMessage(), e);
//	            throw new RuntimeException("Failed to store image file");
//	        }
//	    }
//
//	    // Save AllInclude data and link it to PackageDetails
//	    allInclude.setPackageDetails(packageDetails);
//	    allIncludeRepo.save(allInclude);
//
//	    // Save locations associated with the package
//	    for (Location location : locations) {
//	        location.setPackageDetails(packageDetails);
//	        locationRepo.save(location);
//	    }
//
//	    // Save itinerary details and sightseeing entries
//	    for (Iternary iternary : iternaries) {
//	        iternary.setPackageDetails(packageDetails);
//	        iternaryRepo.save(iternary);
//
//	        // Save sightseeing entries for each day of the itinerary
//	        for (SightseeingEntry entry : iternary.getSightseeingDay()) {
//	            entry.setIternary(iternary);
//	            sightseeingEntryRepo.save(entry);
//	        }
//	    }
//
//	    return packageDetails;
//	}

	// Method to save the package image (you can modify this to save it on disk or a cloud service)
	private String savePackageImage(MultipartFile packageImage) throws IOException {
	    // You may want to use a configurable directory path here
	    String uploadDirectory =  "C:\\Users\\AKANKSHA\\Downloads\\TouristWeb\\TouristWeb\\TouristWeb\\src\\main\\webapp\\UploadFile"; // Modify for deployment
	    String fileName = System.currentTimeMillis() + "_" + packageImage.getOriginalFilename();
	    packageImage.transferTo(new java.io.File(uploadDirectory + fileName));
	    return fileName;
	}

	
	}