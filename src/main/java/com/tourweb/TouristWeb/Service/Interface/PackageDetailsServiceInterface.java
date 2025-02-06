package com.tourweb.TouristWeb.Service.Interface;

import java.util.List;
import java.util.Optional;

import com.tourweb.TouristWeb.Model.AllExclude;
import com.tourweb.TouristWeb.Model.AllInclude;
import com.tourweb.TouristWeb.Model.Iternary;
import com.tourweb.TouristWeb.Model.Location;
import com.tourweb.TouristWeb.Model.PackageDetails;


public interface PackageDetailsServiceInterface {
	
	List<PackageDetails> getAllPackages();
	//findByPackageId
	Optional<PackageDetails> findById(Long id);
	//delete Package Dettails By PackageId
	public boolean deletePackageDetails(Long id);
	//edit package Details 
	public boolean editPackageDetails(Long id,PackageDetails packageDetails);
	
	List<PackageDetails> findAll();

	String UpdatePackage(PackageDetails packageDetails, AllInclude allInclude, List<Location> locations, List<Iternary> iternaries);
	
	PackageDetails updatePackageDetails(Long id, PackageDetails packageDetails);
	
	
	 List<Iternary> getItineraryByPackageId(Long packageId);
	 
	 List<AllInclude> getIncludesByPackageId(Long packageId);
	 
	 List<AllExclude> getExcludesByPackageId(Long packageId);


}
