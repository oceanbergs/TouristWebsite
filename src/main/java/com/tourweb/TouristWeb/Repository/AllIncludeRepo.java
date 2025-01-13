package com.tourweb.TouristWeb.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tourweb.TouristWeb.Model.AllInclude;

@Repository
public interface AllIncludeRepo extends JpaRepository<AllInclude, Long> {

}
