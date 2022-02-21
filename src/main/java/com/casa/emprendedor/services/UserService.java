package com.casa.emprendedor.services;

import com.casa.emprendedor.models.User;

public interface UserService {

	User saveWithUserRole(User user);

	void saveUserWithAdminRole(User user);
	
	User findByUsername(String username);	

}
