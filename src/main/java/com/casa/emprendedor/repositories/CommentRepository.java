package com.casa.emprendedor.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.casa.emprendedor.models.Comment;

@Repository
public interface CommentRepository extends JpaRepository<Comment,Long>{
	

}
