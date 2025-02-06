package com.tourweb.TouristWeb.Config;

import com.tourweb.TouristWeb.Model.Role;
import com.tourweb.TouristWeb.Model.User;
import com.tourweb.TouristWeb.Repository.RoleRepository;
import com.tourweb.TouristWeb.Repository.UserRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class InitialDataConfig {

    @Bean
    CommandLineRunner initDatabase(UserRepository userRepository, 
                                    RoleRepository roleRepository, 
                                    PasswordEncoder passwordEncoder) {
        return args -> {
            // Check if the admin user already exists
            if (userRepository.findByUsername("admin") == null) {
                // Create a new user
                User adminUser = new User();
                adminUser.setUsername("admin");
                adminUser.setPassword(passwordEncoder.encode("password")); // Encrypt password
                adminUser.setEnabled(true); // Ensure the user is enabled

                // Save the user to the database
                userRepository.save(adminUser);

                // Create an admin role
                Role adminRole = new Role();
                adminRole.setRoleName("ROLE_ADMIN");
                adminRole.setUser(adminUser);

                // Save the role to the database
                roleRepository.save(adminRole);

                System.out.println("Admin user with role created!");
            } else {
                System.out.println("Admin user already exists.");
            }
        };
    }
}  