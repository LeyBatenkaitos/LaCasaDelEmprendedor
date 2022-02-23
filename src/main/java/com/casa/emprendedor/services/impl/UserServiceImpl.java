package com.casa.emprendedor.services.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.casa.emprendedor.models.User;
import com.casa.emprendedor.repositories.RoleRepository;
import com.casa.emprendedor.repositories.UserRepository;
import com.casa.emprendedor.services.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	
	@Autowired
	private UserRepository userRepo;
	@Autowired
	private RoleRepository roleRepository;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
		
	@Override
    public User saveWithUserRole(User user) {
		String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
        user.setPassword(hashed);
        user.setRole(roleRepository.findByName("ROLE_USER"));
        return userRepo.save(user);
    }
 
	@Override
    public void saveUserWithAdminRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRole(roleRepository.findByName("ROLE_ADMIN"));
        userRepo.save(user);
    }

	@Override
	public User findByUsername(String username) {
		return userRepo.findByUsername(username);
	}    
    

}
