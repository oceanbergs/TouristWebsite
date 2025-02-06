package com.tourweb.TouristWeb.Repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.tourweb.TouristWeb.Model.PackageDetails;

@Repository
public interface PackageDetailsRepo extends JpaRepository<PackageDetails, Long> {

	List<PackageDetails> findByPackageType(String packageType);


	@Query("SELECT p.id AS id, p.packageName AS packageName FROM PackageDetails p")
	List<PackageDetails> findBasicPackageDetails();

	 
}
