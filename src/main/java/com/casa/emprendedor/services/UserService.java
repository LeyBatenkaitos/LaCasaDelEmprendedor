package com.casa.emprendedor.services;

import com.casa.emprendedor.models.User;

public interface UserService {
	
	User registerUser(User user);

	User findByUsername(String username);

	void saveWithUserRole(User user);

	void saveUserWithAdminRole(User user);
	

}
