package com.casa.emprendedor.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.casa.emprendedor.models.Category;
import com.casa.emprendedor.services.CategoryServices;

@Controller
public class CategoryController {
	@Autowired
	CategoryServices cService;
	
	@GetMapping("/category")
	public String newCategory(@ModelAttribute("category")Category category) {
		return "newCategory";
	}
	
	@PostMapping("/newcategory")
	public String newCategory(@Valid @ModelAttribute("category") Category category, BindingResult result, Model model) {
		if(result.hasErrors()) {
			return"/category";
		}else {
			cService.createCategory(category);
			return "redirect:/category";
		}
		
	}

}
