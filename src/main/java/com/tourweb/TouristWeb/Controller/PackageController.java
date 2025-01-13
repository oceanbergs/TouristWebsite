package com.tourweb.TouristWeb.Controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.io.File;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tourweb.TouristWeb.Model.AddPackageType;
import com.tourweb.TouristWeb.Model.AllInclude;
import com.tourweb.TouristWeb.Model.Enquiry;
import com.tourweb.TouristWeb.Model.Iternary;

import com.tourweb.TouristWeb.Model.Location;
import com.tourweb.TouristWeb.Model.PackageDetails;
import com.tourweb.TouristWeb.Model.SightseeingEntry;
import com.tourweb.TouristWeb.Repository.EnquiryRepo;
import com.tourweb.TouristWeb.Repository.IternaryRepo;
import com.tourweb.TouristWeb.Service.PackageDetailsService;
import com.tourweb.TouristWeb.Service.packageTypeService;



@Controller
@RequestMapping("/auth")
public class PackageController {
	
	
	private static final Logger log = LoggerFactory.getLogger(PackageController.class);
	
	@Autowired
	private packageTypeService packageTypeService;
	
	@Autowired
	private PackageDetailsService packageDetailsService;
	
	@Autowired
	private IternaryRepo iternaryRepo;
	
	@Autowired
	private EnquiryRepo enquiryRepo;
	
	@PostMapping("/savePackageType")
	public ResponseEntity<String> saveBatchDetails(@RequestBody AddPackageType addPackageType){
		packageTypeService.savepackageType(addPackageType);
		return ResponseEntity.status(HttpStatus.OK).body("Data Saved SucessFully !!!");
	}
	
	@GetMapping("/getAllPackageTypeData")
	@ResponseBody
    public ResponseEntity<List<AddPackageType>>  getAllData() {
		return ResponseEntity.status(HttpStatus.OK).body(packageTypeService.findAll());
       
    }
	
	 @PostMapping("/deletePackageType/{packageTypeId}")
	    public ResponseEntity<String> deletePackageType(@PathVariable("packageTypeId") Integer packageTypeId) {
	        boolean deleted = packageTypeService.deletePackageType(packageTypeId);
	        if (deleted) {
	            return ResponseEntity.status(HttpStatus.OK).body("Data Deleted Successfully");
	        } else {
	            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Package type not found or delete failed");
	        }
	    }
	 
	 
	 
	 @PostMapping("/addPackageDetails")
		public ResponseEntity<String> addCourse(@RequestBody PackageDetails packageDetails) {
			PackageDetails details = packageDetailsService.saveThePackageDetails(packageDetails);
			return new ResponseEntity<>("Package Details Created SucessFully !!! ", HttpStatus.CREATED);
		}

	 
	
	 
		private String saveFile(byte[] imageData, String fileNamePrefix) {
	        String uploadDirectory = "C:\\Users\\AKANKSHA\\Downloads\\TouristWeb\\TouristWeb\\TouristWeb\\src\\main\\webapp\\UploadFile";
	        String fileName = fileNamePrefix + "_" + System.currentTimeMillis() + ".jpg";
	        String filePath = uploadDirectory + fileName;

	        try (OutputStream outputStream = new FileOutputStream(filePath)) {
	            outputStream.write(imageData);
	            return filePath;
	        } catch (IOException e) {
	            e.printStackTrace();
	            return null;
	        }
	    }
	    
	    
	    //fetch Package Type for DropDown
	    
//	    @GetMapping("/getPackageTypes")	
//	    @ResponseBody
//	    public ResponseEntity<List<AddPackageType>> getPackageTypes(){
//	    	return ResponseEntity.status(HttpStatus.OK).body(packageTypeService.findAll());
//	    }
	    
	    @GetMapping("/getAllPackageTypeData1")
	    @ResponseBody
	    public ResponseEntity<List<String>> getAllPackageTypes() {
	        List<AddPackageType> packageTypes = packageTypeService.findAll();
	        List<String> packageTypeNames = packageTypes.stream()
	            .map(AddPackageType::getPackageType)
	            .collect(Collectors.toList());
	        return ResponseEntity.ok(packageTypeNames);
	    }
	    
	    @GetMapping("/getAllNotification")
		@ResponseBody
	    public ResponseEntity<List<Enquiry>>  getAllEnquiryData() {
			return ResponseEntity.status(HttpStatus.OK).body(enquiryRepo.findAll());
	       
	    }
	   
	    @GetMapping("/searchNotification")
	    public ResponseEntity<List<Enquiry>> searchEnquiriesByDateRange(
	            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate fromDate,
	            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate toDate) {
	        
	        List<Enquiry> enquiries = enquiryRepo.searchEnquiriesByDateRange(fromDate, toDate);
	        
	        if (enquiries.isEmpty()) {
	            return ResponseEntity.noContent().build();
	        }
	        
	        return ResponseEntity.ok(enquiries);
	    }
	    
}
