package com.tourweb.TouristWeb.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tourweb.TouristWeb.Model.Gallery;

@Repository
public interface GalleryRepo  extends JpaRepository<Gallery, Long>{

	List<Gallery> findByPackageDetailsId(Long packageId);

}
