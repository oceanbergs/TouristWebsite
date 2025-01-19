package com.tourweb.TouristWeb.Service;


import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.tourweb.TouristWeb.Model.Booking;

public interface BookingService {
	
	//save booking
	public Booking saveBooking(Booking booking);
	
	//all booking
	
	List<Booking> getAllBooking();
	
	void deleteBooking(Long id);
	
	Booking getBookingById(Long id);
	
	Booking updateBooking(Booking booking, Long id);
	
	//export
	public void exportExcel(HttpServletResponse response) throws Exception;
	//search
	List<Booking> searchBooking(String keyword);
	
	List<Booking> globalSearchh(String keyword);
	//modeofBooking d
	
	 
	
	
	
	
	

}


