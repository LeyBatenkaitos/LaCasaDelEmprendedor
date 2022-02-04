package com.casa.emprendedor.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.casa.emprendedor.models.User;

@Repository
public interface UserRepository extends CrudRepository<User,Long> {

}
