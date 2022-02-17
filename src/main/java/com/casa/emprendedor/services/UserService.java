package com.casa.emprendedor.services;

import com.casa.emprendedor.models.User;

public interface UserService {

	User findByUsername(String username);

	User saveWithUserRole(User user);

	void saveUserWithAdminRole(User user);

	User findByEmail(String email);
	

}
