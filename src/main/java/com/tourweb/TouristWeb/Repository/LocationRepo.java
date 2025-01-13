package com.tourweb.TouristWeb.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tourweb.TouristWeb.Model.Location;

@Repository
public interface LocationRepo extends JpaRepository<Location, Long> {

}
