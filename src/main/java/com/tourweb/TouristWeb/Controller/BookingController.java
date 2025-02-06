package com.tourweb.TouristWeb.Controller;



import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.tourweb.TouristWeb.Model.Booking;
import com.tourweb.TouristWeb.Model.PackageDetails;
import com.tourweb.TouristWeb.Service.BookingService;
import com.tourweb.TouristWeb.Service.PackageDetailsService;

@RestController
@RequestMapping("/auth")
public class BookingController {
	
	@Autowired
	private BookingService service;
	
	@Autowired
	private PackageDetailsService packageDetailsService;
	
	
	@PostMapping("/saveBooking")
	public ResponseEntity<Booking> creteBookink(@RequestBody Booking booking) {
		Booking saveBooking = service.saveBooking(booking);
		return new ResponseEntity<Booking>(saveBooking, HttpStatus.CREATED);
		
	}
	
	
	// API to get all package details
    @GetMapping("/getBookingDetails")
    public ResponseEntity<List<Booking>> getAllBooking() {
       List<Booking> allBooking = service.getAllBooking();
        return ResponseEntity.status(HttpStatus.OK).body(allBooking);
    }
    
    
//    @GetMapping("/searchByDateRange")
//    public List<Booking> searchBookingsByDateRange(
//            @RequestParam("startDate") String startDate,
//            @RequestParam("endDate") String endDate) {
//        
//        return service.getBookingsByDateRange(startDate, endDate);
//    }

    
 // excel 
    @GetMapping("/excel")
    public void generateExcel(HttpServletResponse response) {
        try {
            response.setContentType("application/vnd.ms-excel");
            String headerKey = "Content-Disposition";
            String headerValue = "attachment; filename=Booking-Details.xls";

            response.setHeader(headerKey, headerValue);

            // Call service to generate Excel
            service.exportExcel(response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Error while generating Excel file.", e);
        }
    }

 	
 	
 	@GetMapping("/search/name/{keyword}")
	public ResponseEntity<List<Booking>> searchByName(@PathVariable("keyword") String keyword) {
		List<Booking> result = service.searchBooking(keyword);
		return new ResponseEntity<List<Booking>>(result, HttpStatus.OK);
	}
 	
 	@GetMapping("/globalSearch")
 	public ResponseEntity<List<Booking>> globalSearch(@RequestParam String keyword) {
 	    List<Booking> bookings = service.globalSearchh(keyword);
 	    return ResponseEntity.ok(bookings);
 	}

 	
 	@GetMapping("/search/mode/{modOffBooking}")
	public ResponseEntity<List<Booking>> searchModeofBooking(@PathVariable("modOffBooking") String modOffBooking) {
		List<Booking> result = service.searBymodOffBooking(modOffBooking);
		return new ResponseEntity<List<Booking>>(result, HttpStatus.OK);
	}
 	
 	@GetMapping("/getBookingDetails/{id}")
    public ResponseEntity<Booking> getBookingById(@PathVariable Long id) {
        Optional<Booking> booking = service.findById(id);

        if (booking.isPresent()) {
            return ResponseEntity.ok(booking.get());
        } else {
            return ResponseEntity.notFound().build();
        }
    }
 	
 	@PutMapping("/updateBookingDetails/{id}")
    public ResponseEntity<Booking> updateBookingDetails(@PathVariable("id") Long id, @RequestBody Booking booking) {
        Booking updatedBooking = service.updateBookingDetails(id, booking);
        
        if (updatedBooking != null) {
            return ResponseEntity.ok(updatedBooking); // Success response with the updated booking
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null); // Booking not found
        }
    }


 	


	
 	
}

