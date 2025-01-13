package com.tourweb.TouristWeb.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tourweb.TouristWeb.Model.AddPackageType;

@Repository
public interface AddPackageTypeRepository extends JpaRepository<AddPackageType, Integer> {

	List<AddPackageType> findByNation(String nation);
	
}
