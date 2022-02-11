package com.casa.emprendedor.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.casa.emprendedor.models.Bussines;
import com.casa.emprendedor.services.BussinesService;
import com.casa.emprendedor.services.CategoryServices;

@RestController
@RequestMapping("/api")
public class BussinesApi {
	
	@Autowired
	private BussinesService bService;
	
	@Autowired
	private CategoryServices cService;
	
	@GetMapping("/bussines")
	public String newBussines(@ModelAttribute("bussines") Bussines bussines) {
		return "newBussines";
	}
	
	@PostMapping("/newbussines")
	public String newBussines(@Valid @ModelAttribute("bussines")Bussines bussines, BindingResult result, Model model) {
		if(result.hasErrors()) {
			return "/bussines";
		}else {
			bService.createBussines(bussines);
			return "redirect:/bussines";
		}
	}
	

}
