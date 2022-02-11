package com.casa.emprendedor.services.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.casa.emprendedor.models.Bussines;
import com.casa.emprendedor.models.Category;
import com.casa.emprendedor.repositories.BussinesRepository;
import com.casa.emprendedor.services.BussinesService;

@Service
public class BussinesServiceImpl implements BussinesService {
	@Autowired
	private BussinesRepository bRepo;
	
	@Override
	public Bussines createBussines(Bussines bussines) {
		return bRepo.save(bussines);
	}
	
	@Override
	public List<Bussines> findAllBussinesNoCategory (Category category){
		return bRepo.findByCategoryNotContains(category);
	}
	
	@Override
	public Bussines findBussines(Long id) {
		Optional<Bussines> optionalBussines = bRepo.findById(id);
		if(optionalBussines.isPresent()) {
			return optionalBussines.get();
		}else {
			return null;
		}
	}

}
