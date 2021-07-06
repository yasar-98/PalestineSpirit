package com.goodguide.palestine_spirit.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.goodguide.palestine_spirit.models.Review;

@Repository
public interface MessageRepository extends CrudRepository<Review, Long>{

}