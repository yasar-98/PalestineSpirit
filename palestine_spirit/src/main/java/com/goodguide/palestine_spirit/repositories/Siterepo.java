package com.goodguide.palestine_spirit.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.goodguide.palestine_spirit.models.Site;
@Repository
public interface Siterepo extends CrudRepository<Site, Long> {
	List<Site> findAll();
}
