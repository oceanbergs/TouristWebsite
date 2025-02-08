package com.tourweb.TouristWeb.Config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    private final DataSource dataSource;
    private final PasswordEncoder passwordEncoder;

    public SecurityConfig(DataSource dataSource, PasswordEncoder passwordEncoder) {
        this.dataSource = dataSource;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication()
            .dataSource(dataSource)
            .usersByUsernameQuery("SELECT username, password, enabled FROM user WHERE username = ?")
            .authoritiesByUsernameQuery(
                "SELECT u.username, r.role_name FROM user u JOIN roles r ON u.id = r.user_id WHERE u.username = ?")
            .passwordEncoder(passwordEncoder);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .csrf().disable() // Disable CSRF for simplicity (enable properly in production)
            .authorizeRequests()
                //.antMatchers("/").permitAll() // Allow unrestricted access
                .antMatchers("/auth/**").authenticated() // Restrict access to authenticated users
                .anyRequest().permitAll() // Optional: apply other rules
            .and()
            .formLogin()
                .loginPage("/auth/login") // Custom login page
                .loginProcessingUrl("/auth/loginn") // URL for login POST requests
                .defaultSuccessUrl("/auth/dashboard", true) // Redirect after successful login
                .failureUrl("/auth/login?error=true") // Redirect on failed login
                .permitAll()
            .and()
            .logout()
                .logoutUrl("/logout") // URL for logout
                .logoutSuccessUrl("/auth/login?logout=true") // Redirect after logout
                .invalidateHttpSession(true)
                .clearAuthentication(true)
                .deleteCookies("JSESSIONID") // Clear session cookies
                .permitAll();
    }

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}  