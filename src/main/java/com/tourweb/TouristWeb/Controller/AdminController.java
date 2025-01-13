package com.tourweb.TouristWeb.Controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

@Controller
@RequestMapping("/auth") // This will handle all URLs starting with /auth for admin-related pages
public class AdminController {

    @Autowired
    private AuthenticationManager authenticationManager;

    // Handle GET request for the login page
    @GetMapping("/login")
    public String login() {
        return "Admin/login"; // Return the JSP page for the login form
    }

    // Handle POST request for the login form submission
    @PostMapping("/login")
    public String loginSubmit(@RequestParam("username") String username, 
                              @RequestParam("password") String password, 
                              HttpSession session, 
                              Model model) {
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
            return "redirect:/TouristWebsite/auth/dashboard";
        } catch (Exception e) {
            // If authentication fails, redirect back to the login page with an error
            model.addAttribute("error", "Invalid username or password");
            return "Admin/login";
        }
    }

    // Handle GET request for the dashboard
    @GetMapping("/dashboard")
    public String dashboard() {
        return "Admin/dashboard"; // Return the dashboard view
    }

    // Handle GET request for logging out
    @GetMapping("/logout")
    public String logout() {
        return "redirect:/TouristWebsite/auth/login?logout=true"; // Redirect to login page after logout
    }
}
