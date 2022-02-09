package com.casa.emprendedor.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.casa.emprendedor.models.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role,Long>{
	Role findByName(String name);
    List<Role> findAll();
}
