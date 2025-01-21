package com.tourweb.TouristWeb.Repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.tourweb.TouristWeb.Model.Booking;

public interface BookingRepo extends JpaRepository<Booking, Long>{

	//List<Booking> getAllBooking = null;
	
	
	List<Booking> findByModOffBooking(String modOffBooking);

	@Query("select p from Booking p where p.customer_Name like :key")
	List<Booking> searchByCustomer_Name(@Param("key") String customer_Name);
	
	
	
	@Query("SELECT b FROM Booking b WHERE " +
		       "LOWER(b.customer_Name) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
		       "LOWER(b.email) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
		       "LOWER(b.address) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
		      // "LOWER(b.address) LIKE LOWER(CONCAT('%', :keyword, '%')) OR "+
		       "LOWER(b.mobile_Number) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
		       "LOWER(b.destination) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
		       "FUNCTION('DATE_FORMAT', b.start_Date, '%Y-%m-%d') LIKE :keyword OR " +
		       "FUNCTION('DATE_FORMAT', b.end_Date, '%Y-%m-%d') LIKE :keyword")
		List<Booking> globalSearch(@Param("keyword") String keyword);

}

