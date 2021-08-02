package com.goodguide.palestinespirit.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.goodguide.palestinespirit.models.Review;

	
@Repository
public interface MessageRepository extends CrudRepository<Review, Long>{

}