package com.tourweb.TouristWeb.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tourweb.TouristWeb.Model.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
	
	Role findByRoleName(String roleName);
}
