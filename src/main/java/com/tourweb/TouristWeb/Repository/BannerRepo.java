package com.tourweb.TouristWeb.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tourweb.TouristWeb.Model.Banner;

@Repository
public interface BannerRepo extends JpaRepository<Banner,Integer >{

}
