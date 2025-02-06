package com.tourweb.TouristWeb.Service.Interface;


import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;


import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tourweb.TouristWeb.Exception.BookingNotFoundException;
import com.tourweb.TouristWeb.Model.Booking;
import com.tourweb.TouristWeb.Repository.BookingRepo;
import com.tourweb.TouristWeb.Service.BookingService;


@Service
public class BookingServiceImpl implements BookingService{
	@Autowired
	private BookingRepo repo;

	@Override
	public Booking saveBooking(Booking booking) {
		//booking.setStatus(BookingStatus.PENDING);
		
				Booking booked = repo.save(booking);
		
		return booked;
	}
	
	
	@Override
	public Booking updateBooking(Booking booking, Long id) {
		Booking post = repo.findById(id).orElseThrow(()-> 
                      new BookingNotFoundException("Booking with  '"+id+"' Not Exist"));
		
		post.setCustomer_Name(booking.getCustomer_Name());
		post.setDestination(booking.getDestination());
		post.setEmail(booking.getEmail());
		post.setAddress(booking.getAddress());
		post.setMobile_Number(booking.getMobile_Number());
		post.setSpecial_Request(booking.getSpecial_Request());
		post.setStart_Date(booking.getStart_Date());
		post.setEnd_Date(booking.getEnd_Date());
		
		return post;
	}

	@Override
	public List<Booking> getAllBooking() {
		
		return repo.findAll();
	}

	@Override
	public void deleteBooking(Long id) {
		repo.deleteById(id);
		
	}

	@Override
	public Booking getBookingById(Long id) {
		Booking bookingId = repo.findById(id).orElseThrow(()->new BookingNotFoundException(
				"Booking with  '"+id+"' Not Exist"));
		return bookingId;
	}

	
//	 @Override
//	    public void exportExcel(HttpServletResponse response) throws IOException {
//	        List<Booking> bookings = repo.findAll(); // Fetch all bookings or apply a filter
//
//	        // Create a new workbook and a sheet
//	        Workbook workbook = new XSSFWorkbook();
//	        Sheet sheet = workbook.createSheet("Bookings");
//
//	        // Create a header row
//	        Row headerRow = sheet.createRow(0);
//	        String[] headers = {"ID", "Customer Name", "Email", "Address", "Mobile Number", "Destination", "Special Request", "Status", "Start Date", "End Date"};
//	        for (int i = 0; i < headers.length; i++) {
//	            Cell cell = headerRow.createCell(i);
//	            cell.setCellValue(headers[i]);
//	        }
//
//	        // Create data rows
//	        int rowNum = 1;
//	        for (Booking booking : bookings) {
//	            Row row = sheet.createRow(rowNum++);
//	            row.createCell(0).setCellValue(booking.getId());
//	            row.createCell(1).setCellValue(booking.getCustomer_Name());
//	            row.createCell(2).setCellValue(booking.getEmail());
//	            row.createCell(3).setCellValue(booking.getAddress());
//	            row.createCell(4).setCellValue(booking.getMobile_Number());
//	            row.createCell(5).setCellValue(booking.getDestination());
//	            row.createCell(6).setCellValue(booking.getSpecial_Request());
//	            row.createCell(7).setCellValue(booking.isStatus() ? "Active" : "Inactive");
//	            row.createCell(8).setCellValue(booking.getStart_Date());
//	            row.createCell(9).setCellValue(booking.getEnd_Date());
//	        }
//
//	        // Write the workbook to the response output stream
//	        workbook.write(response.getOutputStream());
//	        workbook.close();
//	    }
	
	 
	@Override
	public void exportExcel(HttpServletResponse response) {
	    try (Workbook workbook = new XSSFWorkbook(); // Create an Excel workbook
	         ServletOutputStream outputStream = response.getOutputStream()) {

	        Sheet sheet = workbook.createSheet("Booking Details");

	        // Create header row
	        Row header = sheet.createRow(0);
	        header.createCell(0).setCellValue("ID");
	        header.createCell(1).setCellValue("Customer Name");
	        header.createCell(2).setCellValue("Email");
	        header.createCell(3).setCellValue("Address");
	        header.createCell(4).setCellValue("Mobile Number");
	        header.createCell(5).setCellValue("Destination");
	        header.createCell(6).setCellValue("Special Request");
	        header.createCell(7).setCellValue("Start Date");
	        header.createCell(8).setCellValue("End Date");
	       // header.createCell(9).setCellValue("Status");

	        // Fetch data from the repository
	        List<Booking> bookings = repo.findAll(); 

	        // Add data rows
	        int rowCount = 1;
	        for (Booking booking : bookings) {
	            Row row = sheet.createRow(rowCount++);
	            row.createCell(0).setCellValue(booking.getId());
	            row.createCell(1).setCellValue(booking.getCustomer_Name());
	            row.createCell(2).setCellValue(booking.getEmail());
	            row.createCell(3).setCellValue(booking.getAddress());
	            row.createCell(4).setCellValue(booking.getMobile_Number());
	            row.createCell(5).setCellValue(booking.getDestination());
	            row.createCell(6).setCellValue(booking.getSpecial_Request());
	            row.createCell(7).setCellValue(booking.getStart_Date().toString());
	            row.createCell(8).setCellValue(booking.getEnd_Date().toString());
	           // row.createCell(9).setCellValue(booking.getStatus());
	        }

	        // Write the Excel file to the output stream
	        workbook.write(outputStream);

	    } catch (IOException e) {
	        throw new RuntimeException("Error writing Excel file.", e);
	    }
	}



	@Override
	public List<Booking> searchBooking(String keyword) {
		
		List<Booking> search = repo.searchByCustomer_Name(keyword);
		return search;
	}
	
	@Override
	public List<Booking> globalSearchh(String keyword) {
		
		return repo.globalSearch(keyword);
	}
	
	@Override
	public List<Booking> searBymodOffBooking(String modOffBooking) {
		
		return repo.findByModOffBooking(modOffBooking);
	}


	 @Override
	    public Optional<Booking> findById(Long id) {
	        return repo.findById(id);
	    }
	 
	
//	@Override
//    public List<Booking> getBookingsByDateRange(String startDate, String endDate) {
//        return repo.findByStart_DateBetween(startDate, endDate);
//    }

	 
	 @Override
	    public Booking updateBookingDetails(Long id, Booking booking) {
	        // Check if the booking with the provided ID exists
	        if (repo.existsById(id)) {
	            // Set the ID of the booking to the provided ID, in case it wasn't set
	            booking.setId(id);
	            
	            // Save and return the updated booking
	            return repo.save(booking);
	        } else {
	            return null; // Booking not found
	        }
	    }
	
}

