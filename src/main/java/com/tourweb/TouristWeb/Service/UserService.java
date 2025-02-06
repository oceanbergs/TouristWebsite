//package com.tourweb.TouristWeb.Service;
//
//import com.tourweb.TouristWeb.Model.User;
//import com.tourweb.TouristWeb.Repository.UserRepository;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.stereotype.Service;
//
//@Service
//public class UserService {
//
//    private final UserRepository userRepository;
//    private final PasswordEncoder passwordEncoder;
//
//    public UserService(UserRepository userRepository) {
//        this.userRepository = userRepository;
//        this.passwordEncoder = new BCryptPasswordEncoder();  // Instantiate the encoder
//    }
//
//    public User registerUser(User user) {
//        String encodedPassword = passwordEncoder.encode(user.getPassword()); // Encrypt the password
//        user.setPassword(encodedPassword);  // Set the encrypted password
//        return userRepository.save(user);   // Save user in database
//    }
//
//    public User getUserByUsername(String username) {
//        return userRepository.findByUsername(username).orElse(null);
//    }
//}
