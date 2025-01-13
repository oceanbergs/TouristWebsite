package com.tourweb.TouristWeb.Repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.tourweb.TouristWeb.Model.Enquiry;

@Repository
public interface EnquiryRepo extends JpaRepository<Enquiry, Long> {
	
	@Query("SELECT e FROM Enquiry e WHERE e.date BETWEEN :fromDate AND :toDate")
    List<Enquiry> searchEnquiriesByDateRange(@Param("fromDate") LocalDate fromDate, 
                                             @Param("toDate") LocalDate toDate);

}
