package com.casa.emprendedor.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.casa.emprendedor.models.Category;
import com.casa.emprendedor.services.CategoryServices;

@RestController
@RequestMapping("/api")
public class CategoryApi {
	
	@Autowired
	private CategoryServices cService;
	
	@GetMapping(value = "/newcategory", produces = MediaType.APPLICATION_JSON_VALUE)
	 public List<Category> index() {
	     return cService.allCategories();
	 }

	@PostMapping(value = "/newcategory", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public Category createCategory(@RequestBody Category category) {
		return cService.createCategory(category);	
	}

}
