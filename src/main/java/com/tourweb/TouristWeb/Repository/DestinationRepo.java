package com.tourweb.TouristWeb.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tourweb.TouristWeb.Model.Destination;

@Repository
public interface DestinationRepo extends JpaRepository<Destination, Integer>{

}
