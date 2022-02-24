package com.casa.emprendedor.controllers;


import java.security.Principal;
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
import com.casa.emprendedor.models.Comment;
import com.casa.emprendedor.models.User;
import com.casa.emprendedor.services.BussinesService;
import com.casa.emprendedor.services.CategoryServices;
import com.casa.emprendedor.services.CommentService;
import com.casa.emprendedor.services.UserService;
import com.casa.emprendedor.validator.UserValidator;

@Controller
public class MainController {
	
	@Autowired
	private CommentService commentService;
	
	@Autowired
	private BussinesService businessService;
	
	@Autowired
	private CategoryServices categoryService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private UserValidator validator;
	
	//Mostrar página principal.
	@GetMapping(value ={"/dashboard", "/"})
	public String index(@ModelAttribute("comment")Comment comment,Model model) {
		
		//Modelo para mostrar todos los negocios:
		List<Bussines> businesses = businessService.allBussines();
		model.addAttribute("businesses", businesses);
		
		//Modelo a aplicar en la lista dropdown, muestra todas las categorías disponibles:
		List<Category> categories = categoryService.findAll();
		model.addAttribute("categories", categories);
		return "dashboard";
	}
	
	//Metodo para enviar y guardar comentario en la base de datos.
	@PostMapping("/sendcomment")
	public String postComment(@Valid @ModelAttribute("comment")Comment comment,BindingResult result) {
		if(result.hasErrors()) {
			return "dashboard";
		}
		commentService.createComment(comment);
		return "redirect:/dashboard";
	}
	
	//Mostrar negocios en base a la categoría seleccionada.
	@GetMapping("/dashboard/{id}")
	public String getBusinessesByCategories(@PathVariable("id")Long id,Model model,@ModelAttribute("comment")Comment comment) {
		//Encontrar categoria por id y luego conseguir todos los negocios que pertenecen a esa categoría.
		Category category = categoryService.findCategory(id);
		List<Bussines> businesses = category.getBussines();
		model.addAttribute("businesses",businesses);
		
		List<Category> categories = categoryService.findAll();
		model.addAttribute("categories", categories);
		
		return "dashboard";
	} 
	
	@GetMapping("/registration")
	public String registerForm(@ModelAttribute("user")User user) {
		return "registrationPage";
	}
	
	@PostMapping("/registration")
	public String registration(@Valid @ModelAttribute("user")User user,
			BindingResult result, Model model,
			@ModelAttribute("comment")Comment comment) {
		validator.validate(user, result);
		if(result.hasErrors()) {
			return "redirect:/dashboard";
		}
		userService.saveUserWithAdminRole(user);
		return "redirect:/admin";
	}
	
	
    @GetMapping("/login")
    public String login(@RequestParam(value="error", required=false) String error,
    		@RequestParam(value="logout", required=false) String logout, 
    		Model model,@ModelAttribute("comment")Comment comment,Principal principal) {
        if(error != null) {
            model.addAttribute("errorMessage", "Credenciales inválidas, vuelva a ingresarlas.");
        }
        if(logout != null) {
            model.addAttribute("logoutMessage", "Cierre de sesión exitoso.");
            return "redirect:/dashboard";
        }
    	return "loginPage";       
    }
				    			
	@GetMapping("/dashboard/business/")
	public String search(@RequestParam(value="name")String name,Model model,@ModelAttribute("comment")Comment comment) {
		
		List<Bussines> businesses = businessService.findByName(name);
		model.addAttribute("businesses",businesses);
		return "dashboard";
	}
	
	@GetMapping("/admin")
	public String adminHome(Principal principal, Model model,
			@ModelAttribute("user")User user,
			@ModelAttribute("category")Category category,
			@ModelAttribute("bussines")Bussines bussines) {
		String username = principal.getName();
		User actualUser = userService.findByUsername(username);
		model.addAttribute("actualUser", actualUser);
		return "adminPage";
	}
	
	@GetMapping("/information")
	public String information() {
		return "information";
	}
	
}
