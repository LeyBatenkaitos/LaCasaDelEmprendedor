package com.casa.emprendedor.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.casa.emprendedor.models.Role;

@Repository
public interface RoleRepository extends CrudRepository<Role,Long>{

}
