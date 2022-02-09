package com.casa.emprendedor.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.casa.emprendedor.models.User;
import com.casa.emprendedor.services.UserService;

@RestController
public class Api {
	@Autowired
	private UserService userService;
	
	@PostMapping(value="/register", consumes = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<User> register(@RequestBody User user) {
		return new ResponseEntity<>(userService.registerUser(user), HttpStatus.OK);
	}
	
	@GetMapping(value="/user", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<User> show(@RequestBody String username){
		return new ResponseEntity<>(userService.findByUsername(username), HttpStatus.OK);
	}
	
	
}
