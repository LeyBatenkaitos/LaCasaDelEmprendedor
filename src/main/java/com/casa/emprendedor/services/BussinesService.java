package com.casa.emprendedor.services;

import java.util.List;

import com.casa.emprendedor.models.Bussines;
import com.casa.emprendedor.models.Category;

public interface BussinesService {

	Bussines createBussines(Bussines bussines);


	Bussines findBussines(Long id);

}
