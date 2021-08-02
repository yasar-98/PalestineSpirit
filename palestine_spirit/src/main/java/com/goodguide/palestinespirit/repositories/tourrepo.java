package com.goodguide.palestinespirit.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.goodguide.palestinespirit.models.Tour;

public interface tourrepo extends CrudRepository<Tour, Long> {
	List<Tour> findAll();
	

}
