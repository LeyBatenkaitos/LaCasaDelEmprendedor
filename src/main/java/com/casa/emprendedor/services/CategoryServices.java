package com.casa.emprendedor.services;

import java.util.List;

import com.casa.emprendedor.models.Bussines;
import com.casa.emprendedor.models.Category;

public interface CategoryServices {

	Category findCategory(Long id);
	
	List<Category> findAll();

	List<Category> allCategories();

	Category createCategory(Category category);

	List<Category> findAllCategoryNoBussines(Bussines bussines);

}
