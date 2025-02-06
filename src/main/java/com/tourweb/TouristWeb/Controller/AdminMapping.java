package com.tourweb.TouristWeb.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itextpdf.text.pdf.PdfStructTreeController.returnType;

@Controller
@RequestMapping("/auth")
public class AdminMapping {
	
	@GetMapping("/packageType")
	public String packageType() {
		return "Admin/packageType";
	}

	@GetMapping("/addPackageType")
	public String addPackageType() {
		return "Admin/AddPackage";
	}
	
	@GetMapping("/managePackage")
	public String managePackage() {
		return "Package/m";
	}
	
	@GetMapping("/viewAddPackage")
	public String viewAddPackage() {
		return "Admin/viewAddPackage";
	}
	
	@GetMapping("/editAddPackage")
	public String editAddPackage() {
		return "Admin/editPackageDetails";
	}
	
	@GetMapping("/notification")
	public String getNotification() {
		return "Admin/Notification";
	}
	
	@GetMapping("/bookingView")
	public String getbookingView() {
		return "Package/booking";
	}
		
		@GetMapping("/bookingAdd")
		public String getbookingAdd() {
			return "Admin/AddBooking";
}
		
		@GetMapping("/editBooking")
		public String editBooking() {
			return "Admin/editbooking";
		}
		
		@GetMapping("/viewBooking")
		public String viewBooking() {
			return "Admin/viewbooking";
		}
		
		@GetMapping("/manageBooking")
		public String getManageBooking() {
			return "Package/booking";
		}
		
		@GetMapping("/manageGallery")
		public String getmanageGallery() {
			return "Admin/manage_gallery";
		}
		
		@GetMapping("/bannerManagement")
		public String getBanner() {
			return "Admin/Banner";
		}
}