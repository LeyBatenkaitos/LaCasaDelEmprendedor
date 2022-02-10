package com.casa.emprendedor.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.casa.emprendedor.models.Role;
import com.casa.emprendedor.models.User;
import com.casa.emprendedor.services.impl.UserServiceImpl;

@Service
public class UserDetailsServiceImplementation implements UserDetailsService {
    
	@Autowired
	UserServiceImpl userServiceImpl;
	
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userServiceImpl.findByUsername(username);
        if(user == null) {
            throw new UsernameNotFoundException("User not found");
        }
        
        return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), getAuthorities(user));
    }
    private List<GrantedAuthority> getAuthorities(User user){
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
    	Role role = user.getRole();
        GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(role.getName());
        authorities.add(grantedAuthority);
        return authorities;
    }
}