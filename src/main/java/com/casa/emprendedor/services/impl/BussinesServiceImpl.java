package com.casa.emprendedor.services.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.casa.emprendedor.models.Bussines;
import com.casa.emprendedor.repositories.BussinesRepository;
import com.casa.emprendedor.services.BussinesService;

@Service
public class BussinesServiceImpl implements BussinesService {
	@Autowired
	private BussinesRepository bRepo;
	
	@Override
	public List<Bussines> allBussines(){
		return bRepo.findAll();
	}
	
	@Override
	public Bussines createBussines(Bussines bussines) {
		return bRepo.saveAndFlush(bussines);
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
	
	@Override
	public List<Bussines> findByName(String name){
		   
	      return bRepo.findByNameContaining(name);
		}


}
