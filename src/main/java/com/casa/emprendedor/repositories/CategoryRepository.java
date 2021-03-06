package com.casa.emprendedor.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.casa.emprendedor.models.Bussines;
import com.casa.emprendedor.models.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long>{
	
	List<Category> findAll();
	
	List<Category> findByBussinesNotContains(Bussines bussines);
	
	List<Category> findByBussinesContains(Bussines bussines);
	
	
	

}
