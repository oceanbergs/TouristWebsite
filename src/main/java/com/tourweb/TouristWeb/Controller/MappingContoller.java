package com.tourweb.TouristWeb.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itextpdf.text.pdf.PdfStructTreeController.returnType;
import com.tourweb.TouristWeb.Model.Destination;
import com.tourweb.TouristWeb.Repository.DestinationRepo;



@Controller
public class MappingContoller {
	
	@Autowired
	private DestinationRepo destinationRepo;
	
	 @GetMapping("/")
	    public String homePage() {
	        return "index"; // Return the view name (index.html or JSP)
	    }
	 
	 
	 @GetMapping("/login")
	    public String LoginPage() {
	        return "index"; // Return the view name (index.html or JSP)
	    }
	
	@GetMapping("/destination")
	public ResponseEntity<List<Destination>> getAllDestinations() {
	    List<Destination> destinations = destinationRepo.findAll();
	    return ResponseEntity.ok(destinations);
	}
	
	@GetMapping("/packageDetails")
    public String packageDetails(@RequestParam("packageType") String packageType, Model model) {
        // Pass packageType to the view
        model.addAttribute("packageType", packageType);

        // Return the correct view path
        return "WebPackage/PackagePage"; 
    }
	
	
	 @GetMapping("/detailsOfPackage")
	    public String detailsOfPackage() {
	        return "WebPackage/PackagePage"; 
	    }
	
	
	@GetMapping("/delhiInformation")
	public String delhiInformation() {
		return "delhiInfo";
	}
	
	
	@GetMapping("/GetInternation")
	public String GetInternation() {
		return "WebPackage/International";
	}
	
	
	@GetMapping("/about")
	public String GetAboutPage() {
		return "about";
	}
	
	@GetMapping("/contact")
	public String GetContactDetails() {
		return "contact";
	}
	
	@GetMapping("/packages")
	public String getPackages() {
		return "package";
	}
	
	
	@GetMapping("/service")
	public String getservice() {
		return "service";
	}
	
	@GetMapping("/iternaryView")
	public String getiternaryView() {
		return "WebPackage/IternaryView";
	}
	
	
	
	
	
}
