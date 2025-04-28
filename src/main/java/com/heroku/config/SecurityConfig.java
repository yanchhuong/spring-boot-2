package com.heroku.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		http
				.authorizeRequests()
					.antMatchers("/css/**", "/js/**", "/img/**").permitAll() // allow static
					.antMatchers("/publishing/**/**").permitAll() // allow publishing
					.antMatchers("/admin/**").permitAll() // Allow public URLs
					.antMatchers("/hello").permitAll() // Allow public URLs
					.antMatchers("/home").permitAll() // Allow public URLs
					.antMatchers("/api/v1/**").permitAll() // Allow public URLs
					.antMatchers("/sample/**").permitAll() // for sample test data
				//.antMatchers("/admin/**").hasRole("ADMIN") // Secure admin URLs
					.anyRequest().authenticated() // This should always be last
				.and()
					.formLogin()
					.loginPage("/login").permitAll()
				.and()
					.logout().permitAll()
				.and()
					.sessionManagement()
						.maximumSessions(1) // Allow only one active session per user
						.expiredUrl("/login?expired=true"); // Redirect if the session expires
	         	;
		return http.build();
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	// Include this if you haven't already
	@Bean
	public AuthenticationManager authenticationManager(AuthenticationConfiguration authConfig) throws Exception {
		return authConfig.getAuthenticationManager();
	}

}