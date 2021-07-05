package com.goodguide.palestine_spirit.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.goodguide.palestine_spirit.models.Cit;
@Repository
public interface citrepo extends CrudRepository<Cit, Long> {

	List<Cit> findAll();
	
}
