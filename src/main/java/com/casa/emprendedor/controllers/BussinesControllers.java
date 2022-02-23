package com.casa.emprendedor.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.casa.emprendedor.models.Bussines;
import com.casa.emprendedor.models.Category;
import com.casa.emprendedor.services.BussinesService;
import com.casa.emprendedor.services.CategoryServices;

@Controller
public class BussinesControllers {

	@Autowired
	BussinesService bService;
	
	@Autowired
	CategoryServices cService;
	
	@GetMapping("/bussines")
	public String newBussines(@ModelAttribute("bussines") Bussines bussines) {
		return "createBussines";
	}
		
	@PostMapping("/newbussines")
	public String newBussines(@Valid @ModelAttribute("bussines")Bussines bussines, BindingResult result, Model model) {
		if(result.hasErrors()) {
			return "/bussines";
		}else {
			bService.createBussines(bussines);
			return "redirect:/admin";
		}
	}
		
	@GetMapping("/bussines/{id}")
	public String showBussines(@PathVariable("id")long id, Model model) {
		Bussines bussines = bService.findBussines(id);
		model.addAttribute("businesses", bussines);
		List<Category> category = cService.findAllCategoryNoBussines(bussines);
		model.addAttribute("categories", category);
		return "bussines";
	}
	
	@PostMapping("/bussines/{id}")
	public String showBussines(@PathVariable("id") Long id, @RequestParam(value="categories") Long idCategory) {
	Bussines bussines = bService.findBussines(id);
	Category category = cService.findCategory(idCategory);
	bussines.setCategory(category);
	bService.createBussines(bussines);
	return "redirect:/bussines/"+ id;
	}

	
	
	
	
	
}
