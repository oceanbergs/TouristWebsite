package com.tourweb.TouristWeb.Service.Interface;



import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
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
		//post.setend(booking.getStart_Date());
		
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

	
	@Override
	public void exportExcel(HttpServletResponse response) throws Exception {
           List<Booking> booking= repo.findAll();
		
		HSSFWorkbook workbook = new HSSFWorkbook();
		HSSFSheet sheet = workbook.createSheet("User Details");
		HSSFRow row = sheet.createRow(0);
		row.createCell(0).setCellValue("ID");
		row.createCell(1).setCellValue("Customer_Name");
		row.createCell(2).setCellValue("Email");
		row.createCell(3).setCellValue("Destination");
		row.createCell(4).setCellValue("Address");
		row.createCell(5).setCellValue("Mobile_Number");
		row.createCell(6).setCellValue("ModOffBooking");
		row.createCell(7).setCellValue("Special_Request");
		row.createCell(7).setCellValue("Start_Date");
		int dataRowIndex=1;
		
		for(Booking book: booking) {
		HSSFRow dataRow = sheet.createRow(dataRowIndex);
		dataRow.createCell(0).setCellValue(book.getId());
		dataRow.createCell(1).setCellValue(book.getCustomer_Name());
		dataRow.createCell(2).setCellValue(book.getEmail());
		dataRow.createCell(3).setCellValue(book.getDestination());
		dataRow.createCell(4).setCellValue(book.getAddress());
		dataRow.createCell(5).setCellValue(book.getMobile_Number());
		dataRow.createCell(6).setCellValue(book.getModOffBooking());
		dataRow.createCell(7).setCellValue(book.getSpecial_Request());
		dataRow.createCell(7).setCellValue(book.getStart_Date());
		
		dataRowIndex ++;
		}
		ServletOutputStream outputStream = response.getOutputStream();
		workbook.write(outputStream);
		workbook.close();
		outputStream.close();
		
		
	}

	@Override
	public List<Booking> searchBooking(String keyword) {
		 //List<Booking> search = this.repo.searchBooking("%" + keyword + "%");
		List<Booking> search = repo.searchByCustomer_Name(keyword);
		return search;
	}
	
	@Override
	public List<Booking> globalSearchh(String keyword) {
		
		return repo.globalSearch(keyword);
	}
	
}

