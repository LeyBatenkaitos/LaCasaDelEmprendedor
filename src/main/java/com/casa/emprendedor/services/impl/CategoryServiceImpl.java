package com.casa.emprendedor.services.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.casa.emprendedor.models.Bussines;
import com.casa.emprendedor.models.Category;
import com.casa.emprendedor.repositories.CategoryRepository;
import com.casa.emprendedor.services.CategoryServices;

@Service
public class CategoryServiceImpl implements CategoryServices{
	@Autowired
	private CategoryRepository cRepo;
	
	@Override
	public Category createProducto(Category category) {
		return cRepo.save(category);
	}
	
	@Override 
	public List<Category> findAllCategoryNoProduct(Bussines bussines){
		return cRepo.findByBussinesNotContains(bussines);	
	}
	
	@Override
	public Category findCategory(Long id) {
		Optional<Category> optionalCategory = cRepo.findById(id);
		if(optionalCategory.isPresent()) {
			return optionalCategory.get();
		}else {
			return null;
		}
	}
	
	@Override
	public List<Category> findAll(){
		return cRepo.findAll();
	}
	

}
