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

import com.casa.emprendedor.models.Bussines;
import com.casa.emprendedor.models.Category;
import com.casa.emprendedor.models.Comment;
import com.casa.emprendedor.services.BussinesService;
import com.casa.emprendedor.services.CategoryServices;
import com.casa.emprendedor.services.CommentService;

@Controller
public class MainController {
	
	@Autowired
	private CommentService commentService;
	
	@Autowired
	private BussinesService businessService;
	
	@Autowired
	private CategoryServices categoryService;
	//Mostrar página principal.
	@GetMapping("/dashboard")
	public String index(@ModelAttribute("comment")Comment comment,Model model) {
		
		//Modelo para mostrar todos los negocios:
		List<Bussines> businesses = businessService.allBussines();
		model.addAttribute("businesses", businesses);
		
		//Modelo a aplicar en la lista dropdown, muestra todas las categorías disponibles:
		List<Category> categories = categoryService.findAll();
		model.addAttribute("categories", categories);
		return "paginaPrincipal";
	}
	
	//Metodo para enviar y guardar comentario en la base de datos.
	@PostMapping("/sendcomment")
	public String postComment(@Valid @ModelAttribute("comment")Comment comment,BindingResult result) {
		if(result.hasErrors()) {
			return "paginaPrincipal";
		}
		commentService.createComment(comment);
		return "redirect:/dashboard";
	}
	
	//Mostrar negocios en base a la categoría seleccionada.
	@GetMapping("/dashboard/{id}")
	public String getBusinessesByCategories(@PathVariable("id")Long id,Model model) {
		//Encontrar categoria por id y luego conseguir todos los negocios que pertenecen a esa categoría.
		Category category = categoryService.findCategory(id);
		List<Bussines> businesess = category.getBussines();
		
		List<Category> categories = categoryService.findAll();
		model.addAttribute("categories", categories);
		
		model.addAttribute("businesses", businesess);
		return "paginaPrincipal";
	} 
	
	

}
