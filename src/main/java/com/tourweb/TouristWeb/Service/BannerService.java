package com.tourweb.TouristWeb.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tourweb.TouristWeb.Model.Banner;
import com.tourweb.TouristWeb.Model.Booking;
import com.tourweb.TouristWeb.Repository.BannerRepo;
import com.tourweb.TouristWeb.Service.Interface.BannerServiceImpl;

@Service
public class BannerService implements BannerServiceImpl {
	
	@Autowired 
	private BannerRepo bannerRepo;	
	
	@Override
	public Banner saveBanner(Banner banner) {
		return bannerRepo.save(banner);
	}

	@Override
	public List<Banner> getBanner() {
		// TODO Auto-generated method stub
		return bannerRepo.findAll();
	}

	//@Override
	public boolean deletebanner(Integer id) {
	    Optional<Banner> bannerOptional = bannerRepo.findById(id);
	    if (bannerOptional.isPresent()) {
	    	bannerRepo.deleteById(id);  // Delete banner by ID
	        return true;
	    }
	    return false;
	}

}
