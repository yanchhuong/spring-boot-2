package com.heroku.service.impl;

import com.heroku.dao.UsersInfmDao;
import com.heroku.model.UserInfmBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UsersInfmDao userRepository;

    @Override
    public UserDetails loadUserByUsername(String usernameOrPhone) throws UsernameNotFoundException {
        // Try to find the user by email first
        UserInfmBean user = userRepository.findByEmail(usernameOrPhone);

        if (user == null) {
            // If not found, try to find by phone number
            user = userRepository.findByTel(usernameOrPhone);
        }

        if (user == null) {
            throw new UsernameNotFoundException("User not found with email/phone: " + usernameOrPhone);
        }

        // Create Spring Security UserDetails using  the password
        org.springframework.security.core.userdetails.User userDetails = new org.springframework.security.core.userdetails.User(
                user.getTel(), user.getUserPw(), new ArrayList<>());

        // Store the custom User object in the SecurityContextHolder
        Authentication authentication = new UsernamePasswordAuthenticationToken(userDetails, user.getUserPw(), userDetails.getAuthorities());
        SecurityContextHolder.getContext().setAuthentication(authentication);

        return userDetails;
    }
}
