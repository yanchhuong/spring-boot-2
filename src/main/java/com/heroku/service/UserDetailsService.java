package com.heroku.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public interface UserDetailsService {
    // Loads a user by their username (or other unique identifier)
    UserDetails loadUserByUsername(String username) throws UsernameNotFoundException;
}
