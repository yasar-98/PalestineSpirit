package com.goodguide.palestinespirit.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.goodguide.palestinespirit.models.City;

@Repository
public interface citrepo extends CrudRepository<City, Long> {

	List<City> findAll();
	
}
