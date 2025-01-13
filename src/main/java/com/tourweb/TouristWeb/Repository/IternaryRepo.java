package com.tourweb.TouristWeb.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.tourweb.TouristWeb.Model.Iternary;

@Repository
public interface IternaryRepo extends JpaRepository<Iternary,Long> {

	 @Query("SELECT i FROM Iternary i WHERE i.packageDetails.id = :packageId")
	    List<Iternary> findIternaryByPackageId(@Param("packageId") Long packageId);
}
