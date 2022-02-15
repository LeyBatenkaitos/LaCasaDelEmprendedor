package com.casa.emprendedor.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import com.casa.emprendedor.services.BussinesService;
import com.casa.emprendedor.services.CategoryServices;


@RestController
@RequestMapping("/api")
public class BussinesApi {

	@Autowired
	private BussinesService bService;

	@Autowired
	private CategoryServices cService;

	@GetMapping(value = "/jsonTest", produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> show() {
		System.out.println("PASANDO STRING");
		return new ResponseEntity<>("Hola mundo", HttpStatus.OK);
	}

}
