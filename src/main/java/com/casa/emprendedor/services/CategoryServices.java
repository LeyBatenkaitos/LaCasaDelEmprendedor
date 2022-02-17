package com.casa.emprendedor.services;

import java.util.List;

import com.casa.emprendedor.models.Bussines;
import com.casa.emprendedor.models.Category;

public interface CategoryServices {

	Category createProducto(Category category);

	List<Category> findAllCategoryNoProduct(Bussines bussines);

	Category findCategory(Long id);
	
	List<Category> findAll();

}
