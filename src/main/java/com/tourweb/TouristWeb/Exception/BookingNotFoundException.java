package com.tourweb.TouristWeb.Exception;



public class BookingNotFoundException extends RuntimeException{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public BookingNotFoundException (String message) {
		super(message);
	}
	public BookingNotFoundException(String message,Throwable cause) {
		super(message,cause);
	}

}

