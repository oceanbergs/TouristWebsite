package com.tourweb.TouristWeb.Controller;



import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.tourweb.TouristWeb.Model.Booking;
import com.tourweb.TouristWeb.Service.BookingService;

@RestController
//@RequestMapping("/auth")
public class BookingController {
	
	@Autowired
	private BookingService service;
	
	
	@PostMapping("/save")
	public ResponseEntity<Booking> creteBookink(@RequestBody Booking booking) {
		Booking saveBooking = service.saveBooking(booking);
		return new ResponseEntity<Booking>(saveBooking, HttpStatus.CREATED);
		
	}
	
	
	// API to get all package details
    @GetMapping("/booking")
    public ResponseEntity<List<Booking>> getAllBooking() {
       List<Booking> allBooking = service.getAllBooking();
        return ResponseEntity.status(HttpStatus.OK).body(allBooking);
    }
    
    
 // excel 
 	@GetMapping("/excel")
 	public void generateExcel(HttpServletResponse response) throws Exception {
 		
 		response.setContentType("application/octet-stream");
 		String headerKey="Content-Disposition";
 		String headerValue="attachement; filename=Booking-Details.xls";
 		
 		response.setHeader(headerKey, headerValue);
 		
 		service.exportExcel(response);
 		
 	}
 	
 	
 	@GetMapping("/search/{keyword}")
	public ResponseEntity<List<Booking>> searchByName(@PathVariable("keyword") String keyword) {
		List<Booking> result = service.searchBooking(keyword);
		return new ResponseEntity<List<Booking>>(result, HttpStatus.OK);
	}
 	
 	@GetMapping("/globalSearch")
    public ResponseEntity<List<Booking>> globalSearch(
            @RequestParam String keyword
           ) {
        List<Booking> bookings = service.globalSearchh(keyword);
        return ResponseEntity.ok(bookings);
    }

}

