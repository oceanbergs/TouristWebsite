package com.tourweb.TouristWeb.Service.Interface;

import java.util.List;

import com.tourweb.TouristWeb.Model.Banner;



public interface BannerServiceImpl {
	
	Banner saveBanner(Banner banner);
	
	List<Banner> getBanner();
	
	//public boolean deletebanner(Integer id);
	

}
