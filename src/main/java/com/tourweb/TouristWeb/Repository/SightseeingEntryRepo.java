package com.tourweb.TouristWeb.Repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tourweb.TouristWeb.Model.SightseeingEntry;

@Repository
public interface SightseeingEntryRepo extends JpaRepository<SightseeingEntry, Long>{

}
