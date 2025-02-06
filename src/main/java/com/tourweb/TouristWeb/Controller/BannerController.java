package com.tourweb.TouristWeb.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tourweb.TouristWeb.Model.Banner;

import com.tourweb.TouristWeb.Service.BannerService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;



@Controller
@RequestMapping("/auth")
public class BannerController {
	
	@Autowired
	private BannerService bannerService ;

	 @PostMapping("/saveBanner")
	    public ResponseEntity<Banner> uploadPhoto(@RequestBody Banner banner) {
	        Banner savedPhoto = bannerService.saveBanner(banner);
	        return ResponseEntity.ok(savedPhoto);
	    }
	 
	 @GetMapping("/getbanner")
	 public ResponseEntity<List<Banner>> getBanner() {
	 	return  ResponseEntity.ok(bannerService.getBanner());
	 }
	 
	 @PostMapping("/getBannerBy/{id}")
	 @ResponseBody
	 public ResponseEntity<String> deleteBanner(@PathVariable("id") Integer id) {
	     boolean deleted = bannerService.deletebanner(id);
	     if (deleted) {
	         return ResponseEntity.status(HttpStatus.OK).body("Data Deleted Successfully");
	     } else {
	         return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Image not found or delete failed");
	     }
	 }

}
