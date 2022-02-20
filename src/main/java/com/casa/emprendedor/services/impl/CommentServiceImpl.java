package com.casa.emprendedor.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.casa.emprendedor.models.Comment;
import com.casa.emprendedor.repositories.CommentRepository;
import com.casa.emprendedor.services.CommentService;

@Service
public class CommentServiceImpl implements CommentService{
	
	@Autowired
	CommentRepository commentRepo;
	
	@Override
	public Comment createComment(Comment comment) {
		return commentRepo.save(comment);
	}

}
