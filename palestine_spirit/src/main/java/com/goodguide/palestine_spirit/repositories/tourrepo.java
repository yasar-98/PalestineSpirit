package com.goodguide.palestine_spirit.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.goodguide.palestine_spirit.models.Tour;

public interface tourrepo extends CrudRepository<Tour, Long> {
	List<Tour> findAll();
	

}
