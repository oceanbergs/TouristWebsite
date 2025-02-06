package com.tourweb.TouristWeb.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tourweb.TouristWeb.Model.PackageDetails;
import com.tourweb.TouristWeb.Service.PackageDetailsService;

@RestController
@RequestMapping("/auth")
public class PackageControllerRest {
	
	
	 @Autowired
	    private PackageDetailsService packageDetailsService;

	    // API to get all package details
	    @GetMapping("/getAllPackages")
	    public ResponseEntity<List<PackageDetails>> getAllPackages() {
	        List<PackageDetails> packages = packageDetailsService.getAllPackages();
	        return ResponseEntity.status(HttpStatus.OK).body(packages);
	    }
	    
	    @GetMapping("/getAllPackageName")
	    public ResponseEntity<List<PackageDetails>> getAllPackageName() {
	        List<PackageDetails> packages = packageDetailsService.getBasicPackageDetails();
	        return ResponseEntity.status(HttpStatus.OK).body(packages);
	    }

}
