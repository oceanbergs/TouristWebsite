package com.tourweb.TouristWeb.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tourweb.TouristWeb.Model.AllInclude;

@Repository
public interface AllIncludeRepo extends JpaRepository<AllInclude, Long> {
	List<AllInclude> findByPackageDetails_Id(Long packageId);

}
