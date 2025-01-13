package com.tourweb.TouristWeb.Service.Interface;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.tourweb.TouristWeb.Model.AddPackageType;
import com.tourweb.TouristWeb.Model.AllInclude;
import com.tourweb.TouristWeb.Model.Iternary;
import com.tourweb.TouristWeb.Model.Location;
import com.tourweb.TouristWeb.Model.PackageDetails;
import com.tourweb.TouristWeb.Model.SightseeingEntry;

public interface packageTypeServiceInterface {
	
	public void savepackageType(AddPackageType addPackageType) ;
	
	public List<AddPackageType>findAll();
	
	boolean deletePackageType(Integer packageTypeId);
	
	
	
	//web
	
	List<AddPackageType> findByNation(String nation);
	
	//PackageDetails savePackageDetails(PackageDetails packageDetails);
	//addPackageDetails
//	
	String savePackage(PackageDetails packageDetails, AllInclude allInclude, List<Location> locationList, List<Iternary> iternaryList, List<SightseeingEntry> sightseeingEntries);

//	 PackageDetails savePackageDetails(
//	            PackageDetails packageDetails, 
//	            AllInclude allInclude, 
//	            MultipartFile packageImage, 
//	            List<Location> locations, 
//	            List<Iternary> iternaries
//	    );
}