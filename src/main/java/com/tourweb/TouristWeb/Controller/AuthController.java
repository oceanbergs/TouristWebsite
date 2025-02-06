package com.tourweb.TouristWeb.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class AuthController {

    @Autowired
    private AuthenticationManager authenticationManager;

    // This method handles the login POST request
    @RequestMapping(value = "auth/loginn", method = RequestMethod.POST)
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session) {
        try {
            // Authenticate the user with the provided username and password
            Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(username, password)
            );
            
            // If authentication is successful, set the authentication context
            SecurityContextHolder.getContext().setAuthentication(authentication);
            
            // Set a session attribute indicating a successful login
            session.setAttribute("loginSuccess", "Login successful");
            
            // Redirect to the dashboard after successful login
            return "redirect:auth/dashboard";
        } catch (Exception e) {
            // If authentication fails, redirect back to the login page with an error
            return "redirect:auth/login?error=true";
        }
    }

    // Optional: This method will be used to show the login page, if needed
    
}