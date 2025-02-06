package com.tourweb.TouristWeb.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tourweb.TouristWeb.Model.AllExclude;

@Repository
public interface AllExcludeRepo extends JpaRepository<AllExclude, Long>  {
	List<AllExclude> findByPackageDetails_Id(Long packageId);

}
