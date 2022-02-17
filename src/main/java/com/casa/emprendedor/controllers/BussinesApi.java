package com.casa.emprendedor.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.casa.emprendedor.models.Bussines;
import com.casa.emprendedor.models.User;
import com.casa.emprendedor.services.BussinesService;

@RestController
@RequestMapping("/api")
public class BussinesApi {

	@Autowired
	private BussinesService bService;

	@GetMapping(value = "/jsonTest", produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> show() {
		System.out.println("PASANDO STRING");
		return new ResponseEntity<>("Hola mundo", HttpStatus.OK);
	}
	
	@GetMapping(value = "/newbussines", produces = MediaType.APPLICATION_JSON_VALUE)
	 public List<Bussines> index() {
	     return bService.allBussines();
	 }

	@PostMapping(value = "/newbussines", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public Bussines createBussines(@RequestBody Bussines bussines) {
		return bService.createBussines(bussines);	
	}
}
